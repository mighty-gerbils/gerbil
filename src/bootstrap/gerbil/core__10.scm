(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g35596_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35597_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35598_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35601_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35602_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35603_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35604_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35605_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35606_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35607_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35608_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35609_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35610_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35611_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35612_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35613_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35622_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35627_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35628_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35629_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35646_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35647_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35648_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35649_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35652_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args29196_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args29196_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx29193_)
        (if (gx#identifier? _stx29193_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx29193_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2750929179_
             (lambda (_stx27511_ _match-stx27513_)
               (letrec ((_parse127515_
                         (lambda (_hd27862_)
                           (let* ((_g2788828030_
                                   (lambda (_g2788928026_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2788928026_)))
                                  (_g2788728041_
                                   (lambda (_g2788928034_)
                                     ((lambda ()
                                        (_parse-error27522_ _hd27862_)))))
                                  (_g2788628059_
                                   (lambda (_g2788928045_)
                                     ((lambda (_L28048_)
                                        (if (gx#stx-datum? _L28048_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L28048_)
                                                        '()))
                                            (_g2788728041_ _g2788928045_)))
                                      _g2788928045_)))
                                  (_g2788528075_
                                   (lambda (_g2788928063_)
                                     ((lambda (_L28066_)
                                        (if (if (gx#identifier? _L28066_)
                                                (not (gx#ellipsis? _L28066_))
                                                '#f)
                                            (cons 'var: (cons _L28066_ '()))
                                            (_g2788628059_ _g2788928063_)))
                                      _g2788928063_)))
                                  (_g2788428091_
                                   (lambda (_g2788928079_)
                                     ((lambda (_L28082_)
                                        (if (gx#underscore? _L28082_)
                                            (cons 'any: '())
                                            (_g2788528075_ _g2788928079_)))
                                      _g2788928079_)))
                                  (_g2788328123_
                                   (lambda (_g2788928095_)
                                     (if (gx#stx-pair? _g2788928095_)
                                         (let ((_e2801928098_
                                                (gx#syntax-e _g2788928095_)))
                                           (let ((_hd2802028102_
                                                  (##car _e2801928098_))
                                                 (_tl2802128105_
                                                  (##cdr _e2801928098_)))
                                             ((lambda (_L28108_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L28108_)
                                                    (_parse127515_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L28108_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd27862_)
                                                       (let ((_$e28119_
                                                              (gx#stx-source
                                                               _hd27862_)))
                                                         (if _$e28119_
                                                             _$e28119_
                                                             (gx#stx-source
                                                              _stx27511_))))))
                                                    (_g2788428091_
                                                     _g2788928095_)))
                                              _hd2802028102_)))
                                         (_g2788428091_ _g2788928095_))))
                                  (_g2788228177_
                                   (lambda (_g2788928127_)
                                     (if (gx#stx-pair? _g2788928127_)
                                         (let ((_e2800928130_
                                                (gx#syntax-e _g2788928127_)))
                                           (let ((_hd2801028134_
                                                  (##car _e2800928130_))
                                                 (_tl2801128137_
                                                  (##cdr _e2800928130_)))
                                             (if (gx#identifier?
                                                  _hd2801028134_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35596_|
                                                      _hd2801028134_)
                                                     (if (gx#stx-pair?
                                                          _tl2801128137_)
                                                         (let ((_e2801228140_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2801128137_)))
                   (let ((_hd2801328144_ (##car _e2801228140_))
                         (_tl2801428147_ (##cdr _e2801228140_)))
                     (if (gx#stx-pair? _tl2801428147_)
                         (let ((_e2801528150_ (gx#syntax-e _tl2801428147_)))
                           (let ((_hd2801628154_ (##car _e2801528150_))
                                 (_tl2801728157_ (##cdr _e2801528150_)))
                             (if (gx#stx-null? _tl2801728157_)
                                 ((lambda (_L28160_ _L28162_)
                                    (cons 'apply:
                                          (cons _L28162_
                                                (cons (_parse127515_ _L28160_)
                                                      '()))))
                                  _hd2801628154_
                                  _hd2801328144_)
                                 (_g2788328123_ _g2788928127_))))
                         (_g2788328123_ _g2788928127_))))
                 (_g2788328123_ _g2788928127_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2788328123_
                                                      _g2788928127_))
                                                 (_g2788328123_
                                                  _g2788928127_))))
                                         (_g2788328123_ _g2788928127_))))
                                  (_g2788128217_
                                   (lambda (_g2788928181_)
                                     (if (gx#stx-pair? _g2788928181_)
                                         (let ((_e2800128184_
                                                (gx#syntax-e _g2788928181_)))
                                           (let ((_hd2800228188_
                                                  (##car _e2800128184_))
                                                 (_tl2800328191_
                                                  (##cdr _e2800128184_)))
                                             (if (gx#identifier?
                                                  _hd2800228188_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35597_|
                                                      _hd2800228188_)
                                                     (if (gx#stx-pair?
                                                          _tl2800328191_)
                                                         (let ((_e2800428194_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2800328191_)))
                   (let ((_hd2800528198_ (##car _e2800428194_))
                         (_tl2800628201_ (##cdr _e2800428194_)))
                     (if (gx#stx-null? _tl2800628201_)
                         ((lambda (_L28204_) (_parse-qq27521_ _L28204_))
                          _hd2800528198_)
                         (_g2788228177_ _g2788928181_))))
                 (_g2788228177_ _g2788928181_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2788228177_
                                                      _g2788928181_))
                                                 (_g2788228177_
                                                  _g2788928181_))))
                                         (_g2788228177_ _g2788928181_))))
                                  (_g2788028257_
                                   (lambda (_g2788928221_)
                                     (if (gx#stx-pair? _g2788928221_)
                                         (let ((_e2799428224_
                                                (gx#syntax-e _g2788928221_)))
                                           (let ((_hd2799528228_
                                                  (##car _e2799428224_))
                                                 (_tl2799628231_
                                                  (##cdr _e2799428224_)))
                                             (if (gx#identifier?
                                                  _hd2799528228_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35598_|
                                                      _hd2799528228_)
                                                     (if (gx#stx-pair?
                                                          _tl2799628231_)
                                                         (let ((_e2799728234_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2799628231_)))
                   (let ((_hd2799828238_ (##car _e2799728234_))
                         (_tl2799928241_ (##cdr _e2799728234_)))
                     (if (gx#stx-null? _tl2799928241_)
                         ((lambda (_L28244_)
                            (cons 'datum: (cons (gx#stx-e _L28244_) '())))
                          _hd2799828238_)
                         (_g2788128217_ _g2788928221_))))
                 (_g2788128217_ _g2788928221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2788128217_
                                                      _g2788928221_))
                                                 (_g2788128217_
                                                  _g2788928221_))))
                                         (_g2788128217_ _g2788928221_))))
                                  (_g2787928307_
                                   (lambda (_g2788928261_)
                                     (if (gx#stx-pair? _g2788928261_)
                                         (let ((_e2798728264_
                                                (gx#syntax-e _g2788928261_)))
                                           (let ((_hd2798828268_
                                                  (##car _e2798728264_))
                                                 (_tl2798928271_
                                                  (##cdr _e2798728264_)))
                                             (if (gx#stx-pair? _tl2798928271_)
                                                 (let ((_e2799028274_
                                                        (gx#syntax-e
                                                         _tl2798928271_)))
                                                   (let ((_hd2799128278_
                                                          (##car _e2799028274_))
                                                         (_tl2799228281_
                                                          (##cdr _e2799028274_)))
                                                     (if (gx#stx-null?
                                                          _tl2799228281_)
                                                         ((lambda (_L28284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L28286_)
                    (if (if (gx#identifier? _L28286_)
                            (let ((_$e28299_
                                   (gx#free-identifier=?
                                    _L28286_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e28299_
                                  _$e28299_
                                  (let ((_$e28303_
                                         (gx#free-identifier=?
                                          _L28286_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e28303_
                                        _$e28303_
                                        (gx#free-identifier=?
                                         _L28286_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L28286_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L28284_ '()))))
                                    '()))
                        (_g2788028257_ _g2788928261_)))
                  _hd2799128278_
                  _hd2798828268_)
                 (_g2788028257_ _g2788928261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2788028257_
                                                  _g2788928261_))))
                                         (_g2788028257_ _g2788928261_))))
                                  (_g2787828337_
                                   (lambda (_g2788928311_)
                                     (if (gx#stx-pair? _g2788928311_)
                                         (let ((_e2798228314_
                                                (gx#syntax-e _g2788928311_)))
                                           (let ((_hd2798328318_
                                                  (##car _e2798228314_))
                                                 (_tl2798428321_
                                                  (##cdr _e2798228314_)))
                                             ((lambda (_L28324_ _L28326_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L28326_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28326_)
                        (cons (_parse-class-body27520_ _L28324_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2787928307_
                                                     _g2788928311_)))
                                              _tl2798428321_
                                              _hd2798328318_)))
                                         (_g2787928307_ _g2788928311_))))
                                  (_g2787728367_
                                   (lambda (_g2788928341_)
                                     (if (gx#stx-pair? _g2788928341_)
                                         (let ((_e2797728344_
                                                (gx#syntax-e _g2788928341_)))
                                           (let ((_hd2797828348_
                                                  (##car _e2797728344_))
                                                 (_tl2797928351_
                                                  (##cdr _e2797728344_)))
                                             ((lambda (_L28354_ _L28356_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L28356_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28356_)
                        (cons (_parse-vector27518_ _L28354_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2787828337_
                                                     _g2788928341_)))
                                              _tl2797928351_
                                              _hd2797828348_)))
                                         (_g2787828337_ _g2788928341_))))
                                  (_g2787628430_
                                   (lambda (_g2788928371_)
                                     (if (gx#stx-vector? _g2788928371_)
                                         (let ((_e2796528374_
                                                (vector->list
                                                 (gx#syntax-e _g2788928371_))))
                                           (if (gx#stx-pair/null?
                                                _e2796528374_)
                                               (if (fx>= (gx#stx-length
                                                          _e2796528374_)
                                                         '0)
                                                   (let ((_g35599_
                                                          (gx#syntax-split-splice
                                                           _e2796528374_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35600_
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g35599_)
                          (##vector-length _g35599_)
                          1)))
                 (if (not (##fx= _g35600_ 2))
                     (error "Context expects 2 values" _g35600_)))
               (let ((_target2796628378_ (##vector-ref _g35599_ 0))
                     (_tl2796828381_ (##vector-ref _g35599_ 1)))
                 (if (gx#stx-null? _tl2796828381_)
                     (letrec ((_loop2796928384_
                               (lambda (_hd2796728388_ _body2797328391_)
                                 (if (gx#stx-pair? _hd2796728388_)
                                     (let ((_e2797028394_
                                            (gx#syntax-e _hd2796728388_)))
                                       (let ((_lp-hd2797128398_
                                              (##car _e2797028394_))
                                             (_lp-tl2797228401_
                                              (##cdr _e2797028394_)))
                                         (_loop2796928384_
                                          _lp-tl2797228401_
                                          (cons _lp-hd2797128398_
                                                _body2797328391_))))
                                     (let ((_body2797428404_
                                            (reverse _body2797328391_)))
                                       ((lambda (_L28408_)
                                          (cons 'vector:
                                                (cons (_parse-vector27518_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2842128424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2842228427_)
                          (cons _g2842128424_ _g2842228427_))
                        '()
                        _L28408_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2797428404_))))))
                       (_loop2796928384_ _target2796628378_ '()))
                     (_g2787728367_ _g2788928371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2787728367_
                                                    _g2788928371_))
                                               (_g2787728367_ _g2788928371_)))
                                         (_g2787728367_ _g2788928371_))))
                                  (_g2787528458_
                                   (lambda (_g2788928434_)
                                     (if (gx#stx-pair? _g2788928434_)
                                         (let ((_e2796128437_
                                                (gx#syntax-e _g2788928434_)))
                                           (let ((_hd2796228441_
                                                  (##car _e2796128437_))
                                                 (_tl2796328444_
                                                  (##cdr _e2796128437_)))
                                             (if (gx#identifier?
                                                  _hd2796228441_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35601_|
                                                      _hd2796228441_)
                                                     ((lambda (_L28447_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector27518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28447_)
                            '())))
              _tl2796328444_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2787628430_
                                                      _g2788928434_))
                                                 (_g2787628430_
                                                  _g2788928434_))))
                                         (_g2787628430_ _g2788928434_))))
                                  (_g2787428486_
                                   (lambda (_g2788928462_)
                                     (if (gx#stx-pair? _g2788928462_)
                                         (let ((_e2795728465_
                                                (gx#syntax-e _g2788928462_)))
                                           (let ((_hd2795828469_
                                                  (##car _e2795728465_))
                                                 (_tl2795928472_
                                                  (##cdr _e2795728465_)))
                                             (if (gx#identifier?
                                                  _hd2795828469_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35602_|
                                                      _hd2795828469_)
                                                     ((lambda (_L28475_)
                                                        (cons 'values:
                                                              (cons (_parse-vector27518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28475_)
                            '())))
              _tl2795928472_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2787528458_
                                                      _g2788928462_))
                                                 (_g2787528458_
                                                  _g2788928462_))))
                                         (_g2787528458_ _g2788928462_))))
                                  (_g2787328526_
                                   (lambda (_g2788928490_)
                                     (if (gx#stx-pair? _g2788928490_)
                                         (let ((_e2795028493_
                                                (gx#syntax-e _g2788928490_)))
                                           (let ((_hd2795128497_
                                                  (##car _e2795028493_))
                                                 (_tl2795228500_
                                                  (##cdr _e2795028493_)))
                                             (if (gx#identifier?
                                                  _hd2795128497_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35603_|
                                                      _hd2795128497_)
                                                     (if (gx#stx-pair?
                                                          _tl2795228500_)
                                                         (let ((_e2795328503_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2795228500_)))
                   (let ((_hd2795428507_ (##car _e2795328503_))
                         (_tl2795528510_ (##cdr _e2795328503_)))
                     (if (gx#stx-null? _tl2795528510_)
                         ((lambda (_L28513_) (_parse127515_ _L28513_))
                          _hd2795428507_)
                         (_g2787428486_ _g2788928490_))))
                 (_g2787428486_ _g2788928490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2787428486_
                                                      _g2788928490_))
                                                 (_g2787428486_
                                                  _g2788928490_))))
                                         (_g2787428486_ _g2788928490_))))
                                  (_g2787228547_
                                   (lambda (_g2788928530_)
                                     (if (gx#stx-box? _g2788928530_)
                                         (let ((_e2794828533_
                                                (unbox (gx#syntax-e
                                                        _g2788928530_))))
                                           ((lambda (_L28537_)
                                              (cons 'box:
                                                    (cons (_parse127515_
                                                           _L28537_)
                                                          '())))
                                            _e2794828533_))
                                         (_g2787328526_ _g2788928530_))))
                                  (_g2787128587_
                                   (lambda (_g2788928551_)
                                     (if (gx#stx-pair? _g2788928551_)
                                         (let ((_e2794128554_
                                                (gx#syntax-e _g2788928551_)))
                                           (let ((_hd2794228558_
                                                  (##car _e2794128554_))
                                                 (_tl2794328561_
                                                  (##cdr _e2794128554_)))
                                             (if (gx#identifier?
                                                  _hd2794228558_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35604_|
                                                      _hd2794228558_)
                                                     (if (gx#stx-pair?
                                                          _tl2794328561_)
                                                         (let ((_e2794428564_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2794328561_)))
                   (let ((_hd2794528568_ (##car _e2794428564_))
                         (_tl2794628571_ (##cdr _e2794428564_)))
                     (if (gx#stx-null? _tl2794628571_)
                         ((lambda (_L28574_)
                            (cons 'box: (cons (_parse127515_ _L28574_) '())))
                          _hd2794528568_)
                         (_g2787228547_ _g2788928551_))))
                 (_g2787228547_ _g2788928551_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2787228547_
                                                      _g2788928551_))
                                                 (_g2787228547_
                                                  _g2788928551_))))
                                         (_g2787228547_ _g2788928551_))))
                                  (_g2787028615_
                                   (lambda (_g2788928591_)
                                     (if (gx#stx-pair? _g2788928591_)
                                         (let ((_e2793728594_
                                                (gx#syntax-e _g2788928591_)))
                                           (let ((_hd2793828598_
                                                  (##car _e2793728594_))
                                                 (_tl2793928601_
                                                  (##cdr _e2793728594_)))
                                             (if (gx#identifier?
                                                  _hd2793828598_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35605_|
                                                      _hd2793828598_)
                                                     ((lambda (_L28604_)
                                                        (_parse-list27517_
                                                         _L28604_))
                                                      _tl2793928601_)
                                                     (_g2787128587_
                                                      _g2788928591_))
                                                 (_g2787128587_
                                                  _g2788928591_))))
                                         (_g2787128587_ _g2788928591_))))
                                  (_g2786928671_
                                   (lambda (_g2788928619_)
                                     (if (gx#stx-pair? _g2788928619_)
                                         (let ((_e2792728622_
                                                (gx#syntax-e _g2788928619_)))
                                           (let ((_hd2792828626_
                                                  (##car _e2792728622_))
                                                 (_tl2792928629_
                                                  (##cdr _e2792728622_)))
                                             (if (gx#identifier?
                                                  _hd2792828626_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35606_|
                                                      _hd2792828626_)
                                                     (if (gx#stx-pair?
                                                          _tl2792928629_)
                                                         (let ((_e2793028632_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2792928629_)))
                   (let ((_hd2793128636_ (##car _e2793028632_))
                         (_tl2793228639_ (##cdr _e2793028632_)))
                     (if (gx#stx-pair? _tl2793228639_)
                         (let ((_e2793328642_ (gx#syntax-e _tl2793228639_)))
                           (let ((_hd2793428646_ (##car _e2793328642_))
                                 (_tl2793528649_ (##cdr _e2793328642_)))
                             ((lambda (_L28652_ _L28654_ _L28655_)
                                (if (gx#stx-null? _L28652_)
                                    (cons 'cons:
                                          (cons (_parse127515_ _L28655_)
                                                (cons (_parse127515_ _L28654_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse127515_ _L28655_)
                                                (cons (_parse127515_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L28654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L28652_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2793528649_
                              _hd2793428646_
                              _hd2793128636_)))
                         (_g2787028615_ _g2788928619_))))
                 (_g2787028615_ _g2788928619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2787028615_
                                                      _g2788928619_))
                                                 (_g2787028615_
                                                  _g2788928619_))))
                                         (_g2787028615_ _g2788928619_))))
                                  (_g2786828725_
                                   (lambda (_g2788928675_)
                                     (if (gx#stx-pair? _g2788928675_)
                                         (let ((_e2791528678_
                                                (gx#syntax-e _g2788928675_)))
                                           (let ((_hd2791628682_
                                                  (##car _e2791528678_))
                                                 (_tl2791728685_
                                                  (##cdr _e2791528678_)))
                                             (if (gx#identifier?
                                                  _hd2791628682_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35607_|
                                                      _hd2791628682_)
                                                     (if (gx#stx-pair?
                                                          _tl2791728685_)
                                                         (let ((_e2791828688_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2791728685_)))
                   (let ((_hd2791928692_ (##car _e2791828688_))
                         (_tl2792028695_ (##cdr _e2791828688_)))
                     (if (gx#stx-pair? _tl2792028695_)
                         (let ((_e2792128698_ (gx#syntax-e _tl2792028695_)))
                           (let ((_hd2792228702_ (##car _e2792128698_))
                                 (_tl2792328705_ (##cdr _e2792128698_)))
                             (if (gx#stx-null? _tl2792328705_)
                                 ((lambda (_L28708_ _L28710_)
                                    (cons 'cons:
                                          (cons (_parse127515_ _L28710_)
                                                (cons (_parse127515_ _L28708_)
                                                      '()))))
                                  _hd2792228702_
                                  _hd2791928692_)
                                 (_g2786928671_ _g2788928675_))))
                         (_g2786928671_ _g2788928675_))))
                 (_g2786928671_ _g2788928675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2786928671_
                                                      _g2788928675_))
                                                 (_g2786928671_
                                                  _g2788928675_))))
                                         (_g2786928671_ _g2788928675_))))
                                  (_g2786728765_
                                   (lambda (_g2788928729_)
                                     (if (gx#stx-pair? _g2788928729_)
                                         (let ((_e2790728732_
                                                (gx#syntax-e _g2788928729_)))
                                           (let ((_hd2790828736_
                                                  (##car _e2790728732_))
                                                 (_tl2790928739_
                                                  (##cdr _e2790728732_)))
                                             (if (gx#identifier?
                                                  _hd2790828736_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35608_|
                                                      _hd2790828736_)
                                                     (if (gx#stx-pair?
                                                          _tl2790928739_)
                                                         (let ((_e2791028742_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2790928739_)))
                   (let ((_hd2791128746_ (##car _e2791028742_))
                         (_tl2791228749_ (##cdr _e2791028742_)))
                     (if (gx#stx-null? _tl2791228749_)
                         ((lambda (_L28752_)
                            (cons 'not: (cons (_parse127515_ _L28752_) '())))
                          _hd2791128746_)
                         (_g2786828725_ _g2788928729_))))
                 (_g2786828725_ _g2788928729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2786828725_
                                                      _g2788928729_))
                                                 (_g2786828725_
                                                  _g2788928729_))))
                                         (_g2786828725_ _g2788928729_))))
                                  (_g2786628850_
                                   (lambda (_g2788928769_)
                                     (if (gx#stx-pair? _g2788928769_)
                                         (let ((_e2790328772_
                                                (gx#syntax-e _g2788928769_)))
                                           (let ((_hd2790428776_
                                                  (##car _e2790328772_))
                                                 (_tl2790528779_
                                                  (##cdr _e2790328772_)))
                                             (if (gx#identifier?
                                                  _hd2790428776_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35609_|
                                                      _hd2790428776_)
                                                     ((lambda (_L28782_)
                                                        (if (gx#stx-list?
                                                             _L28782_)
                                                            (let* ((_g2879428805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2879528801_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2879528801_)))
                           (_g2879328816_
                            (lambda (_g2879528809_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse127515_ _L28782_))))))
                           (_g2879228846_
                            (lambda (_g2879528820_)
                              (if (gx#stx-pair? _g2879528820_)
                                  (let ((_e2879728823_
                                         (gx#syntax-e _g2879528820_)))
                                    (let ((_hd2879828827_
                                           (##car _e2879728823_))
                                          (_tl2879928830_
                                           (##cdr _e2879728823_)))
                                      (if (gx#stx-null? _tl2879928830_)
                                          ((lambda (_L28833_)
                                             (_parse127515_ _L28833_))
                                           _hd2879828827_)
                                          (_g2879328816_ _g2879528820_))))
                                  (_g2879328816_ _g2879528820_)))))
                      (_g2879228846_ _L28782_))
                    (_g2786728765_ _g2788928769_)))
              _tl2790528779_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2786728765_
                                                      _g2788928769_))
                                                 (_g2786728765_
                                                  _g2788928769_))))
                                         (_g2786728765_ _g2788928769_))))
                                  (_g2786528935_
                                   (lambda (_g2788928854_)
                                     (if (gx#stx-pair? _g2788928854_)
                                         (let ((_e2789928857_
                                                (gx#syntax-e _g2788928854_)))
                                           (let ((_hd2790028861_
                                                  (##car _e2789928857_))
                                                 (_tl2790128864_
                                                  (##cdr _e2789928857_)))
                                             (if (gx#identifier?
                                                  _hd2790028861_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35610_|
                                                      _hd2790028861_)
                                                     ((lambda (_L28867_)
                                                        (if (gx#stx-list?
                                                             _L28867_)
                                                            (let* ((_g2887928890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2888028886_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2888028886_)))
                           (_g2887828901_
                            (lambda (_g2888028894_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse127515_ _L28867_))))))
                           (_g2887728931_
                            (lambda (_g2888028905_)
                              (if (gx#stx-pair? _g2888028905_)
                                  (let ((_e2888228908_
                                         (gx#syntax-e _g2888028905_)))
                                    (let ((_hd2888328912_
                                           (##car _e2888228908_))
                                          (_tl2888428915_
                                           (##cdr _e2888228908_)))
                                      (if (gx#stx-null? _tl2888428915_)
                                          ((lambda (_L28918_)
                                             (_parse127515_ _L28918_))
                                           _hd2888328912_)
                                          (_g2887828901_ _g2888028905_))))
                                  (_g2887828901_ _g2888028905_)))))
                      (_g2887728931_ _L28867_))
                    (_g2786628850_ _g2788928854_)))
              _tl2790128864_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2786628850_
                                                      _g2788928854_))
                                                 (_g2786628850_
                                                  _g2788928854_))))
                                         (_g2786628850_ _g2788928854_))))
                                  (_g2786429175_
                                   (lambda (_g2788928939_)
                                     (if (gx#stx-pair? _g2788928939_)
                                         (let ((_e2789228942_
                                                (gx#syntax-e _g2788928939_)))
                                           (let ((_hd2789328946_
                                                  (##car _e2789228942_))
                                                 (_tl2789428949_
                                                  (##cdr _e2789228942_)))
                                             (if (gx#identifier?
                                                  _hd2789328946_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35611_|
                                                      _hd2789328946_)
                                                     (if (gx#stx-pair?
                                                          _tl2789428949_)
                                                         (let ((_e2789528952_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2789428949_)))
                   (let ((_hd2789628956_ (##car _e2789528952_))
                         (_tl2789728959_ (##cdr _e2789528952_)))
                     ((lambda (_L28962_ _L28964_)
                        (let* ((_g2898129013_
                                (lambda (_g2898229009_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2898229009_)))
                               (_g2898029024_
                                (lambda (_g2898229017_)
                                  ((lambda ()
                                     (_parse-error27522_ _hd27862_)))))
                               (_g2897929092_
                                (lambda (_g2898229028_)
                                  (if (gx#stx-pair? _g2898229028_)
                                      (let ((_e2899629031_
                                             (gx#syntax-e _g2898229028_)))
                                        (let ((_hd2899729035_
                                               (##car _e2899629031_))
                                              (_tl2899829038_
                                               (##cdr _e2899629031_)))
                                          (if (gx#stx-datum? _hd2899729035_)
                                              (if (equal? (gx#stx-e
                                                           _hd2899729035_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2899829038_)
                                                      (let ((_e2899929041_
                                                             (gx#syntax-e
                                                              _tl2899829038_)))
                                                        (let ((_hd2900029045_
                                                               (##car _e2899929041_))
                                                              (_tl2900129048_
                                                               (##cdr _e2899929041_)))
                                                          (if (gx#stx-pair?
                                                               _tl2900129048_)
                                                              (let ((_e2900229051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2900129048_)))
                        (let ((_hd2900329055_ (##car _e2900229051_))
                              (_tl2900429058_ (##cdr _e2900229051_)))
                          (if (gx#identifier? _hd2900329055_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35612_|
                                   _hd2900329055_)
                                  (if (gx#stx-pair? _tl2900429058_)
                                      (let ((_e2900529061_
                                             (gx#syntax-e _tl2900429058_)))
                                        (let ((_hd2900629065_
                                               (##car _e2900529061_))
                                              (_tl2900729068_
                                               (##cdr _e2900529061_)))
                                          (if (gx#stx-null? _tl2900729068_)
                                              ((lambda (_L29071_ _L29073_)
                                                 (cons '?:
                                                       (cons _L28964_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L29073_
                                 (cons '=>:
                                       (cons (_parse127515_ _L29071_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2900629065_
                                               _hd2900029045_)
                                              (_g2898029024_ _g2898229028_))))
                                      (_g2898029024_ _g2898229028_))
                                  (_g2898029024_ _g2898229028_))
                              (_g2898029024_ _g2898229028_))))
                      (_g2898029024_ _g2898229028_))))
              (_g2898029024_ _g2898229028_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2898029024_
                                                   _g2898229028_))
                                              (_g2898029024_ _g2898229028_))))
                                      (_g2898029024_ _g2898229028_))))
                               (_g2897829132_
                                (lambda (_g2898229096_)
                                  (if (gx#stx-pair? _g2898229096_)
                                      (let ((_e2898829099_
                                             (gx#syntax-e _g2898229096_)))
                                        (let ((_hd2898929103_
                                               (##car _e2898829099_))
                                              (_tl2899029106_
                                               (##cdr _e2898829099_)))
                                          (if (gx#identifier? _hd2898929103_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35613_|
                                                   _hd2898929103_)
                                                  (if (gx#stx-pair?
                                                       _tl2899029106_)
                                                      (let ((_e2899129109_
                                                             (gx#syntax-e
                                                              _tl2899029106_)))
                                                        (let ((_hd2899229113_
                                                               (##car _e2899129109_))
                                                              (_tl2899329116_
                                                               (##cdr _e2899129109_)))
                                                          (if (gx#stx-null?
                                                               _tl2899329116_)
                                                              ((lambda (_L29119_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L28964_
                                     (cons '=>:
                                           (cons (_parse127515_ _L29119_)
                                                 '())))))
                       _hd2899229113_)
                      (_g2897929092_ _g2898229096_))))
              (_g2897929092_ _g2898229096_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2897929092_
                                                   _g2898229096_))
                                              (_g2897929092_ _g2898229096_))))
                                      (_g2897929092_ _g2898229096_))))
                               (_g2897729160_
                                (lambda (_g2898229136_)
                                  (if (gx#stx-pair? _g2898229136_)
                                      (let ((_e2898429139_
                                             (gx#syntax-e _g2898229136_)))
                                        (let ((_hd2898529143_
                                               (##car _e2898429139_))
                                              (_tl2898629146_
                                               (##cdr _e2898429139_)))
                                          (if (gx#stx-null? _tl2898629146_)
                                              ((lambda (_L29149_)
                                                 (cons '?:
                                                       (cons _L28964_
                                                             (cons (_parse127515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L29149_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2898529143_)
                                              (_g2897829132_ _g2898229136_))))
                                      (_g2897829132_ _g2898229136_))))
                               (_g2897629171_
                                (lambda (_g2898229164_)
                                  (if (gx#stx-null? _g2898229164_)
                                      ((lambda ()
                                         (cons '?: (cons _L28964_ '()))))
                                      (_g2897729160_ _g2898229164_)))))
                          (_g2897629171_ _L28962_)))
                      _tl2789728959_
                      _hd2789628956_)))
                 (_g2786528935_ _g2788928939_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2786528935_
                                                      _g2788928939_))
                                                 (_g2786528935_
                                                  _g2788928939_))))
                                         (_g2786528935_ _g2788928939_)))))
                             (_g2786429175_ _hd27862_))))
                        (_parse-list27517_
                         (lambda (_body27697_)
                           (let* ((_g2770327731_
                                   (lambda (_g2770427727_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2770427727_)))
                                  (_g2770227742_
                                   (lambda (_g2770427735_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body27697_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body27697_))
                                                (_parse127515_ _body27697_)
                                                (_parse-error27522_
                                                 _body27697_)))))))
                                  (_g2770127774_
                                   (lambda (_g2770427746_)
                                     (if (gx#stx-pair? _g2770427746_)
                                         (let ((_e2772327749_
                                                (gx#syntax-e _g2770427746_)))
                                           (let ((_hd2772427753_
                                                  (##car _e2772327749_))
                                                 (_tl2772527756_
                                                  (##cdr _e2772327749_)))
                                             ((lambda (_L27759_ _L27761_)
                                                (if (not (gx#ellipsis?
                                                          _L27761_))
                                                    (cons 'cons:
                                                          (cons (_parse127515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27761_)
                        (cons (_parse-list27517_ _L27759_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2770227742_
                                                     _g2770427746_)))
                                              _tl2772527756_
                                              _hd2772427753_)))
                                         (_g2770227742_ _g2770427746_))))
                                  (_g2770027818_
                                   (lambda (_g2770427778_)
                                     (if (gx#stx-pair? _g2770427778_)
                                         (let ((_e2771527781_
                                                (gx#syntax-e _g2770427778_)))
                                           (let ((_hd2771627785_
                                                  (##car _e2771527781_))
                                                 (_tl2771727788_
                                                  (##cdr _e2771527781_)))
                                             (if (gx#stx-pair? _tl2771727788_)
                                                 (let ((_e2771827791_
                                                        (gx#syntax-e
                                                         _tl2771727788_)))
                                                   (let ((_hd2771927795_
                                                          (##car _e2771827791_))
                                                         (_tl2772027798_
                                                          (##cdr _e2771827791_)))
                                                     ((lambda (_L27801_
                                                               _L27803_
                                                               _L27804_)
                                                        (if (gx#ellipsis?
                                                             _L27803_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse127515_ _L27804_)
                                (cons (_parse-list27517_ _L27801_) '())))
                    (_g2770127774_ _g2770427778_)))
              _tl2772027798_
              _hd2771927795_
              _hd2771627785_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2770127774_
                                                  _g2770427778_))))
                                         (_g2770127774_ _g2770427778_))))
                                  (_g2769927858_
                                   (lambda (_g2770427822_)
                                     (if (gx#stx-pair? _g2770427822_)
                                         (let ((_e2770627825_
                                                (gx#syntax-e _g2770427822_)))
                                           (let ((_hd2770727829_
                                                  (##car _e2770627825_))
                                                 (_tl2770827832_
                                                  (##cdr _e2770627825_)))
                                             (if (gx#stx-datum? _hd2770727829_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2770727829_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2770827832_)
                                                         (let ((_e2770927835_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2770827832_)))
                   (let ((_hd2771027839_ (##car _e2770927835_))
                         (_tl2771127842_ (##cdr _e2770927835_)))
                     (if (gx#stx-null? _tl2771127842_)
                         ((lambda (_L27845_) (_parse127515_ _L27845_))
                          _hd2771027839_)
                         (_g2770027818_ _g2770427822_))))
                 (_g2770027818_ _g2770427822_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2770027818_
                                                      _g2770427822_))
                                                 (_g2770027818_
                                                  _g2770427822_))))
                                         (_g2770027818_ _g2770427822_)))))
                             (_g2769927858_ _body27697_))))
                        (_parse-vector27518_
                         (lambda (_body27694_)
                           (if (_simple-vector?27519_ _body27694_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse127515_
                                            _body27694_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list27517_ _body27694_)
                                           '())))))
                        (_simple-vector?27519_
                         (lambda (_body27631_)
                           (let* ((_g2763527647_
                                   (lambda (_g2763627643_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2763627643_)))
                                  (_g2763427658_
                                   (lambda (_g2763627651_)
                                     ((lambda () (gx#stx-null? _body27631_)))))
                                  (_g2763327690_
                                   (lambda (_g2763627662_)
                                     (if (gx#stx-pair? _g2763627662_)
                                         (let ((_e2763927665_
                                                (gx#syntax-e _g2763627662_)))
                                           (let ((_hd2764027669_
                                                  (##car _e2763927665_))
                                                 (_tl2764127672_
                                                  (##cdr _e2763927665_)))
                                             ((lambda (_L27675_ _L27677_)
                                                (if (not (gx#ellipsis?
                                                          _L27677_))
                                                    (_simple-vector?27519_
                                                     _L27675_)
                                                    '#f))
                                              _tl2764127672_
                                              _hd2764027669_)))
                                         (_g2763427658_ _g2763627662_)))))
                             (_g2763327690_ _body27631_))))
                        (_parse-class-body27520_
                         (lambda (_body27540_)
                           (let _recur27543_ ((_rest27546_ _body27540_))
                             (let* ((_g2755027566_
                                     (lambda (_g2755127562_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2755127562_)))
                                    (_g2754927577_
                                     (lambda (_g2755127570_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest27546_)
                                              '()
                                              (_parse-error27522_
                                               _rest27546_))))))
                                    (_g2754827627_
                                     (lambda (_g2755127581_)
                                       (if (gx#stx-pair? _g2755127581_)
                                           (let ((_e2755527584_
                                                  (gx#syntax-e _g2755127581_)))
                                             (let ((_hd2755627588_
                                                    (##car _e2755527584_))
                                                   (_tl2755727591_
                                                    (##cdr _e2755527584_)))
                                               (if (gx#stx-pair?
                                                    _tl2755727591_)
                                                   (let ((_e2755827594_
                                                          (gx#syntax-e
                                                           _tl2755727591_)))
                                                     (let ((_hd2755927598_
                                                            (##car _e2755827594_))
                                                           (_tl2756027601_
                                                            (##cdr _e2755827594_)))
                                                       ((lambda (_L27604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27606_
                         _L27607_)
                  (if (gx#stx-keyword? _L27607_)
                      (cons* _L27607_
                             (_parse127515_ _L27606_)
                             (_recur27543_ _L27604_))
                      (_g2754927577_ _g2755127581_)))
                _tl2756027601_
                _hd2755927598_
                _hd2755627588_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2754927577_
                                                    _g2755127581_))))
                                           (_g2754927577_ _g2755127581_)))))
                               (_g2754827627_ _rest27546_)))))
                        (_parse-qq27521_
                         (lambda (_hd27527_)
                           (let ((_g2752927536_
                                  (lambda (_g2753027532_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2753027532_))))
                             (_g2752927536_ _hd27527_))))
                        (_parse-error27522_
                         (lambda (_hd27524_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx27513_
                                      (cons _match-stx27513_
                                            (cons _stx27511_
                                                  (cons _hd27524_ '())))
                                      (cons _stx27511_
                                            (cons _hd27524_ '())))))))
                 (_parse127515_ _stx27511_)))))
        (lambda _g35615_
          (let ((_g35614_ (length _g35615_)))
            (cond ((##fx= _g35614_ 1)
                   (apply (lambda (_stx29183_)
                            (let ((_match-stx29186_ '#f))
                              (_opt-lambda2750929179_
                               _stx29183_
                               _match-stx29186_)))
                          _g35615_))
                  ((##fx= _g35614_ 2) (apply _opt-lambda2750929179_ _g35615_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g35615_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx27495_)
        (call-with-escape
         (lambda (_E27499_)
           (with-exception-handler
            (let ((_E!27502_ (current-exception-handler)))
              (lambda (_e27505_)
                (if (gx#syntax-error? _e27505_)
                    (_E27499_ '#f)
                    (_E!27502_ _e27505_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx27495_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree26284_)
        (letrec ((_loop26287_
                  (lambda (_ptree26562_ _vars26564_ _K26565_)
                    (let* ((_g2657826679_
                            (lambda (_g2657926675_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2657926675_)))
                           (_g2657726690_
                            (lambda (_g2657926683_)
                              ((lambda () (_K26565_ _vars26564_)))))
                           (_g2657626737_
                            (lambda (_g2657926694_)
                              (if (gx#stx-pair? _g2657926694_)
                                  (let ((_e2666826697_
                                         (gx#syntax-e _g2657926694_)))
                                    (let ((_hd2666926701_
                                           (##car _e2666826697_))
                                          (_tl2667026704_
                                           (##cdr _e2666826697_)))
                                      (if (gx#stx-datum? _hd2666926701_)
                                          (if (equal? (gx#stx-e _hd2666926701_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2667026704_)
                                                  (let ((_e2667126707_
                                                         (gx#syntax-e
                                                          _tl2667026704_)))
                                                    (let ((_hd2667226711_
                                                           (##car _e2667126707_))
                                                          (_tl2667326714_
                                                           (##cdr _e2667126707_)))
                                                      (if (gx#stx-null?
                                                           _tl2667326714_)
                                                          ((lambda (_L26717_)
                                                             (if (find (lambda (_g2673126733_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2673126733_
                                  _L26717_))
                               _vars26564_)
                         (_K26565_ _vars26564_)
                         (_K26565_ (cons _L26717_ _vars26564_))))
                   _hd2667226711_)
                  (_g2657726690_ _g2657926694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2657726690_
                                                   _g2657926694_))
                                              (_g2657726690_ _g2657926694_))
                                          (_g2657726690_ _g2657926694_))))
                                  (_g2657726690_ _g2657926694_))))
                           (_g2657526791_
                            (lambda (_g2657926741_)
                              (if (gx#stx-pair? _g2657926741_)
                                  (let ((_e2665826744_
                                         (gx#syntax-e _g2657926741_)))
                                    (let ((_hd2665926748_
                                           (##car _e2665826744_))
                                          (_tl2666026751_
                                           (##cdr _e2665826744_)))
                                      (if (gx#stx-datum? _hd2665926748_)
                                          (if (equal? (gx#stx-e _hd2665926748_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2666026751_)
                                                  (let ((_e2666126754_
                                                         (gx#syntax-e
                                                          _tl2666026751_)))
                                                    (let ((_hd2666226758_
                                                           (##car _e2666126754_))
                                                          (_tl2666326761_
                                                           (##cdr _e2666126754_)))
                                                      (if (gx#stx-pair?
                                                           _tl2666326761_)
                                                          (let ((_e2666426764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2666326761_)))
                    (let ((_hd2666526768_ (##car _e2666426764_))
                          (_tl2666626771_ (##cdr _e2666426764_)))
                      (if (gx#stx-null? _tl2666626771_)
                          ((lambda (_L26774_ _L26776_)
                             (_loop26287_ _L26774_ _vars26564_ _K26565_))
                           _hd2666526768_
                           _hd2666226758_)
                          (_g2657626737_ _g2657926741_))))
                  (_g2657626737_ _g2657926741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2657626737_
                                                   _g2657926741_))
                                              (_g2657626737_ _g2657926741_))
                                          (_g2657626737_ _g2657926741_))))
                                  (_g2657626737_ _g2657926741_))))
                           (_g2657426843_
                            (lambda (_g2657926795_)
                              (if (gx#stx-pair? _g2657926795_)
                                  (let ((_e2664726798_
                                         (gx#syntax-e _g2657926795_)))
                                    (let ((_hd2664826802_
                                           (##car _e2664726798_))
                                          (_tl2664926805_
                                           (##cdr _e2664726798_)))
                                      (if (gx#stx-datum? _hd2664826802_)
                                          (if (equal? (gx#stx-e _hd2664826802_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2664926805_)
                                                  (let ((_e2665026808_
                                                         (gx#syntax-e
                                                          _tl2664926805_)))
                                                    (let ((_hd2665126812_
                                                           (##car _e2665026808_))
                                                          (_tl2665226815_
                                                           (##cdr _e2665026808_)))
                                                      (if (gx#stx-pair?
                                                           _tl2665226815_)
                                                          (let ((_e2665326818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2665226815_)))
                    (let ((_hd2665426822_ (##car _e2665326818_))
                          (_tl2665526825_ (##cdr _e2665326818_)))
                      (if (gx#stx-null? _tl2665526825_)
                          ((lambda (_L26828_)
                             (_loop-class-list26291_
                              _L26828_
                              _vars26564_
                              _K26565_))
                           _hd2665426822_)
                          (_g2657526791_ _g2657926795_))))
                  (_g2657526791_ _g2657926795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2657526791_
                                                   _g2657926795_))
                                              (_g2657526791_ _g2657926795_))
                                          (_g2657526791_ _g2657926795_))))
                                  (_g2657526791_ _g2657926795_))))
                           (_g2657326895_
                            (lambda (_g2657926847_)
                              (if (gx#stx-pair? _g2657926847_)
                                  (let ((_e2663726850_
                                         (gx#syntax-e _g2657926847_)))
                                    (let ((_hd2663826854_
                                           (##car _e2663726850_))
                                          (_tl2663926857_
                                           (##cdr _e2663726850_)))
                                      (if (gx#stx-datum? _hd2663826854_)
                                          (if (equal? (gx#stx-e _hd2663826854_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2663926857_)
                                                  (let ((_e2664026860_
                                                         (gx#syntax-e
                                                          _tl2663926857_)))
                                                    (let ((_hd2664126864_
                                                           (##car _e2664026860_))
                                                          (_tl2664226867_
                                                           (##cdr _e2664026860_)))
                                                      (if (gx#stx-pair?
                                                           _tl2664226867_)
                                                          (let ((_e2664326870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2664226867_)))
                    (let ((_hd2664426874_ (##car _e2664326870_))
                          (_tl2664526877_ (##cdr _e2664326870_)))
                      (if (gx#stx-null? _tl2664526877_)
                          ((lambda (_L26880_)
                             (_loop-vector26289_
                              _L26880_
                              _vars26564_
                              _K26565_))
                           _hd2664426874_)
                          (_g2657426843_ _g2657926847_))))
                  (_g2657426843_ _g2657926847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2657426843_
                                                   _g2657926847_))
                                              (_g2657426843_ _g2657926847_))
                                          (_g2657426843_ _g2657926847_))))
                                  (_g2657426843_ _g2657926847_))))
                           (_g2657226941_
                            (lambda (_g2657926899_)
                              (if (gx#stx-pair? _g2657926899_)
                                  (let ((_e2663026902_
                                         (gx#syntax-e _g2657926899_)))
                                    (let ((_hd2663126906_
                                           (##car _e2663026902_))
                                          (_tl2663226909_
                                           (##cdr _e2663026902_)))
                                      (if (gx#stx-pair? _tl2663226909_)
                                          (let ((_e2663326912_
                                                 (gx#syntax-e _tl2663226909_)))
                                            (let ((_hd2663426916_
                                                   (##car _e2663326912_))
                                                  (_tl2663526919_
                                                   (##cdr _e2663326912_)))
                                              (if (gx#stx-null? _tl2663526919_)
                                                  ((lambda (_L26922_ _L26924_)
                                                     (if (let ((_$e26937_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L26924_)))
                   (if _$e26937_ _$e26937_ (gx#stx-eq? 'vector: _L26924_)))
                 (_loop-vector26289_ _L26922_ _vars26564_ _K26565_)
                 (_g2657326895_ _g2657926899_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2663426916_
                                                   _hd2663126906_)
                                                  (_g2657326895_
                                                   _g2657926899_))))
                                          (_g2657326895_ _g2657926899_))))
                                  (_g2657326895_ _g2657926899_))))
                           (_g2657126981_
                            (lambda (_g2657926945_)
                              (if (gx#stx-pair? _g2657926945_)
                                  (let ((_e2662226948_
                                         (gx#syntax-e _g2657926945_)))
                                    (let ((_hd2662326952_
                                           (##car _e2662226948_))
                                          (_tl2662426955_
                                           (##cdr _e2662226948_)))
                                      (if (gx#stx-datum? _hd2662326952_)
                                          (if (equal? (gx#stx-e _hd2662326952_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2662426955_)
                                                  (let ((_e2662526958_
                                                         (gx#syntax-e
                                                          _tl2662426955_)))
                                                    (let ((_hd2662626962_
                                                           (##car _e2662526958_))
                                                          (_tl2662726965_
                                                           (##cdr _e2662526958_)))
                                                      (if (gx#stx-null?
                                                           _tl2662726965_)
                                                          ((lambda (_L26968_)
                                                             (_loop26287_
                                                              _L26968_
                                                              _vars26564_
                                                              _K26565_))
                                                           _hd2662626962_)
                                                          (_g2657226941_
                                                           _g2657926945_))))
                                                  (_g2657226941_
                                                   _g2657926945_))
                                              (_g2657226941_ _g2657926945_))
                                          (_g2657226941_ _g2657926945_))))
                                  (_g2657226941_ _g2657926945_))))
                           (_g2657027040_
                            (lambda (_g2657926985_)
                              (if (gx#stx-pair? _g2657926985_)
                                  (let ((_e2661226988_
                                         (gx#syntax-e _g2657926985_)))
                                    (let ((_hd2661326992_
                                           (##car _e2661226988_))
                                          (_tl2661426995_
                                           (##cdr _e2661226988_)))
                                      (if (gx#stx-datum? _hd2661326992_)
                                          (if (equal? (gx#stx-e _hd2661326992_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2661426995_)
                                                  (let ((_e2661526998_
                                                         (gx#syntax-e
                                                          _tl2661426995_)))
                                                    (let ((_hd2661627002_
                                                           (##car _e2661526998_))
                                                          (_tl2661727005_
                                                           (##cdr _e2661526998_)))
                                                      (if (gx#stx-pair?
                                                           _tl2661727005_)
                                                          (let ((_e2661827008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2661727005_)))
                    (let ((_hd2661927012_ (##car _e2661827008_))
                          (_tl2662027015_ (##cdr _e2661827008_)))
                      (if (gx#stx-null? _tl2662027015_)
                          ((lambda (_L27018_ _L27020_)
                             (_loop26287_
                              _L27020_
                              _vars26564_
                              (lambda (_g2703427036_)
                                (_loop26287_
                                 _L27018_
                                 _g2703427036_
                                 _K26565_))))
                           _hd2661927012_
                           _hd2661627002_)
                          (_g2657126981_ _g2657926985_))))
                  (_g2657126981_ _g2657926985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2657126981_
                                                   _g2657926985_))
                                              (_g2657126981_ _g2657926985_))
                                          (_g2657126981_ _g2657926985_))))
                                  (_g2657126981_ _g2657926985_))))
                           (_g2656927099_
                            (lambda (_g2657927044_)
                              (if (gx#stx-pair? _g2657927044_)
                                  (let ((_e2660127047_
                                         (gx#syntax-e _g2657927044_)))
                                    (let ((_hd2660227051_
                                           (##car _e2660127047_))
                                          (_tl2660327054_
                                           (##cdr _e2660127047_)))
                                      (if (gx#stx-datum? _hd2660227051_)
                                          (if (equal? (gx#stx-e _hd2660227051_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2660327054_)
                                                  (let ((_e2660427057_
                                                         (gx#syntax-e
                                                          _tl2660327054_)))
                                                    (let ((_hd2660527061_
                                                           (##car _e2660427057_))
                                                          (_tl2660627064_
                                                           (##cdr _e2660427057_)))
                                                      (if (gx#stx-pair?
                                                           _tl2660627064_)
                                                          (let ((_e2660727067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2660627064_)))
                    (let ((_hd2660827071_ (##car _e2660727067_))
                          (_tl2660927074_ (##cdr _e2660727067_)))
                      (if (gx#stx-null? _tl2660927074_)
                          ((lambda (_L27077_ _L27079_)
                             (_loop26287_
                              _L27079_
                              _vars26564_
                              (lambda (_g2709327095_)
                                (_loop26287_
                                 _L27077_
                                 _g2709327095_
                                 _K26565_))))
                           _hd2660827071_
                           _hd2660527061_)
                          (_g2657027040_ _g2657927044_))))
                  (_g2657027040_ _g2657927044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2657027040_
                                                   _g2657927044_))
                                              (_g2657027040_ _g2657927044_))
                                          (_g2657027040_ _g2657927044_))))
                                  (_g2657027040_ _g2657927044_))))
                           (_g2656827139_
                            (lambda (_g2657927103_)
                              (if (gx#stx-pair? _g2657927103_)
                                  (let ((_e2659327106_
                                         (gx#syntax-e _g2657927103_)))
                                    (let ((_hd2659427110_
                                           (##car _e2659327106_))
                                          (_tl2659527113_
                                           (##cdr _e2659327106_)))
                                      (if (gx#stx-datum? _hd2659427110_)
                                          (if (equal? (gx#stx-e _hd2659427110_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2659527113_)
                                                  (let ((_e2659627116_
                                                         (gx#syntax-e
                                                          _tl2659527113_)))
                                                    (let ((_hd2659727120_
                                                           (##car _e2659627116_))
                                                          (_tl2659827123_
                                                           (##cdr _e2659627116_)))
                                                      (if (gx#stx-null?
                                                           _tl2659827123_)
                                                          ((lambda (_L27126_)
                                                             (_loop26287_
                                                              _L27126_
                                                              _vars26564_
                                                              _K26565_))
                                                           _hd2659727120_)
                                                          (_g2656927099_
                                                           _g2657927103_))))
                                                  (_g2656927099_
                                                   _g2657927103_))
                                              (_g2656927099_ _g2657927103_))
                                          (_g2656927099_ _g2657927103_))))
                                  (_g2656927099_ _g2657927103_))))
                           (_g2656727238_
                            (lambda (_g2657927143_)
                              (if (gx#stx-pair? _g2657927143_)
                                  (let ((_e2658927146_
                                         (gx#syntax-e _g2657927143_)))
                                    (let ((_hd2659027150_
                                           (##car _e2658927146_))
                                          (_tl2659127153_
                                           (##cdr _e2658927146_)))
                                      ((lambda (_L27156_ _L27158_)
                                         (if (let ((_$e27169_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L27158_)))
                                               (if _$e27169_
                                                   _$e27169_
                                                   (gx#stx-eq? 'or: _L27158_)))
                                             (let* ((_g2717427186_
                                                     (lambda (_g2717527182_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2717527182_)))
                                                    (_g2717327197_
                                                     (lambda (_g2717527190_)
                                                       ((lambda ()
                                                          (_K26565_
                                                           _vars26564_)))))
                                                    (_g2717227234_
                                                     (lambda (_g2717527201_)
                                                       (if (gx#stx-pair?
                                                            _g2717527201_)
                                                           (let ((_e2717827204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2717527201_)))
                     (let ((_hd2717927208_ (##car _e2717827204_))
                           (_tl2718027211_ (##cdr _e2717827204_)))
                       ((lambda (_L27214_ _L27216_)
                          (_loop26287_
                           _L27216_
                           _vars26564_
                           (lambda (_g2722827230_)
                             (_loop26287_
                              (cons _L27158_ _L27214_)
                              _g2722827230_
                              _K26565_))))
                        _tl2718027211_
                        _hd2717927208_)))
                   (_g2717327197_ _g2717527201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2717227234_ _L27156_))
                                             (_g2656827139_ _g2657927143_)))
                                       _tl2659127153_
                                       _hd2659027150_)))
                                  (_g2656827139_ _g2657927143_))))
                           (_g2656627491_
                            (lambda (_g2657927242_)
                              (if (gx#stx-pair? _g2657927242_)
                                  (let ((_e2658127245_
                                         (gx#syntax-e _g2657927242_)))
                                    (let ((_hd2658227249_
                                           (##car _e2658127245_))
                                          (_tl2658327252_
                                           (##cdr _e2658127245_)))
                                      (if (gx#stx-datum? _hd2658227249_)
                                          (if (equal? (gx#stx-e _hd2658227249_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2658327252_)
                                                  (let ((_e2658427255_
                                                         (gx#syntax-e
                                                          _tl2658327252_)))
                                                    (let ((_hd2658527259_
                                                           (##car _e2658427255_))
                                                          (_tl2658627262_
                                                           (##cdr _e2658427255_)))
                                                      ((lambda (_L27265_)
                                                         (let* ((_g2728127318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2728227314_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2728227314_)))
                        (_g2728027329_
                         (lambda (_g2728227322_)
                           ((lambda () (_K26565_ _vars26564_)))))
                        (_g2727927407_
                         (lambda (_g2728227333_)
                           (if (gx#stx-pair? _g2728227333_)
                               (let ((_e2729827336_
                                      (gx#syntax-e _g2728227333_)))
                                 (let ((_hd2729927340_ (##car _e2729827336_))
                                       (_tl2730027343_ (##cdr _e2729827336_)))
                                   (if (gx#stx-pair? _tl2730027343_)
                                       (let ((_e2730127346_
                                              (gx#syntax-e _tl2730027343_)))
                                         (let ((_hd2730227350_
                                                (##car _e2730127346_))
                                               (_tl2730327353_
                                                (##cdr _e2730127346_)))
                                           (if (gx#stx-datum? _hd2730227350_)
                                               (if (equal? (gx#stx-e
                                                            _hd2730227350_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2730327353_)
                                                       (let ((_e2730427356_
                                                              (gx#syntax-e
                                                               _tl2730327353_)))
                                                         (let ((_hd2730527360_
                                                                (##car _e2730427356_))
                                                               (_tl2730627363_
                                                                (##cdr _e2730427356_)))
                                                           (if (gx#stx-pair?
                                                                _tl2730627363_)
                                                               (let ((_e2730727366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2730627363_)))
                         (let ((_hd2730827370_ (##car _e2730727366_))
                               (_tl2730927373_ (##cdr _e2730727366_)))
                           (if (gx#stx-datum? _hd2730827370_)
                               (if (equal? (gx#stx-e _hd2730827370_) '=>:)
                                   (if (gx#stx-pair? _tl2730927373_)
                                       (let ((_e2731027376_
                                              (gx#syntax-e _tl2730927373_)))
                                         (let ((_hd2731127380_
                                                (##car _e2731027376_))
                                               (_tl2731227383_
                                                (##cdr _e2731027376_)))
                                           (if (gx#stx-null? _tl2731227383_)
                                               ((lambda (_L27386_)
                                                  (_loop26287_
                                                   _L27386_
                                                   _vars26564_
                                                   _K26565_))
                                                _hd2731127380_)
                                               (_g2728027329_ _g2728227333_))))
                                       (_g2728027329_ _g2728227333_))
                                   (_g2728027329_ _g2728227333_))
                               (_g2728027329_ _g2728227333_))))
                       (_g2728027329_ _g2728227333_))))
               (_g2728027329_ _g2728227333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2728027329_
                                                    _g2728227333_))
                                               (_g2728027329_ _g2728227333_))))
                                       (_g2728027329_ _g2728227333_))))
                               (_g2728027329_ _g2728227333_))))
                        (_g2727827459_
                         (lambda (_g2728227411_)
                           (if (gx#stx-pair? _g2728227411_)
                               (let ((_e2728827414_
                                      (gx#syntax-e _g2728227411_)))
                                 (let ((_hd2728927418_ (##car _e2728827414_))
                                       (_tl2729027421_ (##cdr _e2728827414_)))
                                   (if (gx#stx-pair? _tl2729027421_)
                                       (let ((_e2729127424_
                                              (gx#syntax-e _tl2729027421_)))
                                         (let ((_hd2729227428_
                                                (##car _e2729127424_))
                                               (_tl2729327431_
                                                (##cdr _e2729127424_)))
                                           (if (gx#stx-datum? _hd2729227428_)
                                               (if (equal? (gx#stx-e
                                                            _hd2729227428_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2729327431_)
                                                       (let ((_e2729427434_
                                                              (gx#syntax-e
                                                               _tl2729327431_)))
                                                         (let ((_hd2729527438_
                                                                (##car _e2729427434_))
                                                               (_tl2729627441_
                                                                (##cdr _e2729427434_)))
                                                           (if (gx#stx-null?
                                                                _tl2729627441_)
                                                               ((lambda (_L27444_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop26287_ _L27444_ _vars26564_ _K26565_))
                        _hd2729527438_)
                       (_g2727927407_ _g2728227411_))))
               (_g2727927407_ _g2728227411_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2727927407_
                                                    _g2728227411_))
                                               (_g2727927407_ _g2728227411_))))
                                       (_g2727927407_ _g2728227411_))))
                               (_g2727927407_ _g2728227411_))))
                        (_g2727727487_
                         (lambda (_g2728227463_)
                           (if (gx#stx-pair? _g2728227463_)
                               (let ((_e2728427466_
                                      (gx#syntax-e _g2728227463_)))
                                 (let ((_hd2728527470_ (##car _e2728427466_))
                                       (_tl2728627473_ (##cdr _e2728427466_)))
                                   (if (gx#stx-null? _tl2728627473_)
                                       ((lambda (_L27476_)
                                          (_loop26287_
                                           _L27476_
                                           _vars26564_
                                           _K26565_))
                                        _hd2728527470_)
                                       (_g2727827459_ _g2728227463_))))
                               (_g2727827459_ _g2728227463_)))))
                   (_g2727727487_ _L27265_)))
               _tl2658627262_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2656727238_
                                                   _g2657927242_))
                                              (_g2656727238_ _g2657927242_))
                                          (_g2656727238_ _g2657927242_))))
                                  (_g2656727238_ _g2657927242_)))))
                      (_g2656627491_ _ptree26562_))))
                 (_loop-vector26289_
                  (lambda (_body26450_ _vars26452_ _K26453_)
                    (let* ((_g2645626477_
                            (lambda (_g2645726473_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2645726473_)))
                           (_g2645526518_
                            (lambda (_g2645726481_)
                              (if (gx#stx-pair? _g2645726481_)
                                  (let ((_e2646626484_
                                         (gx#syntax-e _g2645726481_)))
                                    (let ((_hd2646726488_
                                           (##car _e2646626484_))
                                          (_tl2646826491_
                                           (##cdr _e2646626484_)))
                                      (if (gx#stx-datum? _hd2646726488_)
                                          (if (equal? (gx#stx-e _hd2646726488_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2646826491_)
                                                  (let ((_e2646926494_
                                                         (gx#syntax-e
                                                          _tl2646826491_)))
                                                    (let ((_hd2647026498_
                                                           (##car _e2646926494_))
                                                          (_tl2647126501_
                                                           (##cdr _e2646926494_)))
                                                      (if (gx#stx-null?
                                                           _tl2647126501_)
                                                          ((lambda (_L26504_)
                                                             (_loop26287_
                                                              _L26504_
                                                              _vars26452_
                                                              _K26453_))
                                                           _hd2647026498_)
                                                          (_g2645626477_
                                                           _g2645726481_))))
                                                  (_g2645626477_
                                                   _g2645726481_))
                                              (_g2645626477_ _g2645726481_))
                                          (_g2645626477_ _g2645726481_))))
                                  (_g2645626477_ _g2645726481_))))
                           (_g2645426558_
                            (lambda (_g2645726522_)
                              (if (gx#stx-pair? _g2645726522_)
                                  (let ((_e2645926525_
                                         (gx#syntax-e _g2645726522_)))
                                    (let ((_hd2646026529_
                                           (##car _e2645926525_))
                                          (_tl2646126532_
                                           (##cdr _e2645926525_)))
                                      (if (gx#stx-datum? _hd2646026529_)
                                          (if (equal? (gx#stx-e _hd2646026529_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2646126532_)
                                                  (let ((_e2646226535_
                                                         (gx#syntax-e
                                                          _tl2646126532_)))
                                                    (let ((_hd2646326539_
                                                           (##car _e2646226535_))
                                                          (_tl2646426542_
                                                           (##cdr _e2646226535_)))
                                                      (if (gx#stx-null?
                                                           _tl2646426542_)
                                                          ((lambda (_L26545_)
                                                             (_loop-list26290_
                                                              _L26545_
                                                              _vars26452_
                                                              _K26453_))
                                                           _hd2646326539_)
                                                          (_g2645526518_
                                                           _g2645726522_))))
                                                  (_g2645526518_
                                                   _g2645726522_))
                                              (_g2645526518_ _g2645726522_))
                                          (_g2645526518_ _g2645726522_))))
                                  (_g2645526518_ _g2645726522_)))))
                      (_g2645426558_ _body26450_))))
                 (_loop-list26290_
                  (lambda (_rest26380_ _vars26382_ _K26383_)
                    (let* ((_g2638626398_
                            (lambda (_g2638726394_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2638726394_)))
                           (_g2638526409_
                            (lambda (_g2638726402_)
                              ((lambda () (_K26383_ _vars26382_)))))
                           (_g2638426446_
                            (lambda (_g2638726413_)
                              (if (gx#stx-pair? _g2638726413_)
                                  (let ((_e2639026416_
                                         (gx#syntax-e _g2638726413_)))
                                    (let ((_hd2639126420_
                                           (##car _e2639026416_))
                                          (_tl2639226423_
                                           (##cdr _e2639026416_)))
                                      ((lambda (_L26426_ _L26428_)
                                         (_loop26287_
                                          _L26428_
                                          _vars26382_
                                          (lambda (_g2644026442_)
                                            (_loop-list26290_
                                             _L26426_
                                             _g2644026442_
                                             _K26383_))))
                                       _tl2639226423_
                                       _hd2639126420_)))
                                  (_g2638526409_ _g2638726413_)))))
                      (_g2638426446_ _rest26380_))))
                 (_loop-class-list26291_
                  (lambda (_rest26293_ _vars26295_ _K26296_)
                    (let* ((_g2629926314_
                            (lambda (_g2630026310_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2630026310_)))
                           (_g2629826325_
                            (lambda (_g2630026318_)
                              ((lambda () (_K26296_ _vars26295_)))))
                           (_g2629726376_
                            (lambda (_g2630026329_)
                              (if (gx#stx-pair? _g2630026329_)
                                  (let ((_e2630326332_
                                         (gx#syntax-e _g2630026329_)))
                                    (let ((_hd2630426336_
                                           (##car _e2630326332_))
                                          (_tl2630526339_
                                           (##cdr _e2630326332_)))
                                      (if (gx#stx-pair? _tl2630526339_)
                                          (let ((_e2630626342_
                                                 (gx#syntax-e _tl2630526339_)))
                                            (let ((_hd2630726346_
                                                   (##car _e2630626342_))
                                                  (_tl2630826349_
                                                   (##cdr _e2630626342_)))
                                              ((lambda (_L26352_ _L26354_)
                                                 (_loop26287_
                                                  _L26354_
                                                  _vars26295_
                                                  (lambda (_g2637026372_)
                                                    (_loop-class-list26291_
                                                     _L26352_
                                                     _g2637026372_
                                                     _K26296_))))
                                               _tl2630826349_
                                               _hd2630726346_)))
                                          (_g2629826325_ _g2630026329_))))
                                  (_g2629826325_ _g2630026329_)))))
                      (_g2629726376_ _rest26293_)))))
          (_loop26287_ _ptree26284_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23033_ _tgt23035_ _ptree23036_ _K23037_ _E23038_)
        (letrec ((_generate123040_
                  (lambda (_tgt24633_ _ptree24635_ _K24636_ _E24637_)
                    (let* ((_g2463924647_
                            (lambda (_g2464024643_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2464024643_)))
                           (_g2463826280_
                            (lambda (_g2464024651_)
                              ((lambda (_L24654_)
                                 (let ()
                                   (let* ((_g2468124807_
                                           (lambda (_g2468224803_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2468224803_)))
                                          (_g2468024828_
                                           (lambda (_g2468224811_)
                                             (if (gx#stx-pair? _g2468224811_)
                                                 (let ((_e2479924814_
                                                        (gx#syntax-e
                                                         _g2468224811_)))
                                                   (let ((_hd2480024818_
                                                          (##car _e2479924814_))
                                                         (_tl2480124821_
                                                          (##cdr _e2479924814_)))
                                                     (if (gx#stx-datum?
                                                          _hd2480024818_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2480024818_)
                             'any:)
                     (if (gx#stx-null? _tl2480124821_)
                         ((lambda () _K24636_))
                         (_g2468124807_ _g2468224811_))
                     (_g2468124807_ _g2468224811_))
                 (_g2468124807_ _g2468224811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2468124807_
                                                  _g2468224811_))))
                                          (_g2467924871_
                                           (lambda (_g2468224832_)
                                             (if (gx#stx-pair? _g2468224832_)
                                                 (let ((_e2479324835_
                                                        (gx#syntax-e
                                                         _g2468224832_)))
                                                   (let ((_hd2479424839_
                                                          (##car _e2479324835_))
                                                         (_tl2479524842_
                                                          (##cdr _e2479324835_)))
                                                     (if (gx#stx-datum?
                                                          _hd2479424839_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2479424839_)
                             'var:)
                     (if (gx#stx-pair? _tl2479524842_)
                         (let ((_e2479624845_ (gx#syntax-e _tl2479524842_)))
                           (let ((_hd2479724849_ (##car _e2479624845_))
                                 (_tl2479824852_ (##cdr _e2479624845_)))
                             (if (gx#stx-null? _tl2479824852_)
                                 ((lambda (_L24855_)
                                    (cons 'let
                                          (cons (cons (cons _L24855_
                                                            (cons _L24654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K24636_ '()))))
                                  _hd2479724849_)
                                 (_g2468024828_ _g2468224832_))))
                         (_g2468024828_ _g2468224832_))
                     (_g2468024828_ _g2468224832_))
                 (_g2468024828_ _g2468224832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2468024828_
                                                  _g2468224832_))))
                                          (_g2467824956_
                                           (lambda (_g2468224875_)
                                             (if (gx#stx-pair? _g2468224875_)
                                                 (let ((_e2478324878_
                                                        (gx#syntax-e
                                                         _g2468224875_)))
                                                   (let ((_hd2478424882_
                                                          (##car _e2478324878_))
                                                         (_tl2478524885_
                                                          (##cdr _e2478324878_)))
                                                     (if (gx#stx-datum?
                                                          _hd2478424882_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2478424882_)
                             'apply:)
                     (if (gx#stx-pair? _tl2478524885_)
                         (let ((_e2478624888_ (gx#syntax-e _tl2478524885_)))
                           (let ((_hd2478724892_ (##car _e2478624888_))
                                 (_tl2478824895_ (##cdr _e2478624888_)))
                             (if (gx#stx-pair? _tl2478824895_)
                                 (let ((_e2478924898_
                                        (gx#syntax-e _tl2478824895_)))
                                   (let ((_hd2479024902_ (##car _e2478924898_))
                                         (_tl2479124905_
                                          (##cdr _e2478924898_)))
                                     (if (gx#stx-null? _tl2479124905_)
                                         ((lambda (_L24908_ _L24910_)
                                            (let* ((_g2492524933_
                                                    (lambda (_g2492624929_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2492624929_)))
                                                   (_g2492424952_
                                                    (lambda (_g2492624937_)
                                                      ((lambda (_L24940_)
                                                         (let ()
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _L24940_
                                           (cons (cons _L24910_
                                                       (cons _L24654_ '()))
                                                 '()))
                                     '())
                               (cons (_generate123040_
                                      _L24940_
                                      _L24908_
                                      _K24636_
                                      _E24637_)
                                     '())))))
               _g2492624937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2492424952_
                                               (gx#genident 'e))))
                                          _hd2479024902_
                                          _hd2478724892_)
                                         (_g2467924871_ _g2468224875_))))
                                 (_g2467924871_ _g2468224875_))))
                         (_g2467924871_ _g2468224875_))
                     (_g2467924871_ _g2468224875_))
                 (_g2467924871_ _g2468224875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467924871_
                                                  _g2468224875_))))
                                          (_g2467725038_
                                           (lambda (_g2468224960_)
                                             (if (gx#stx-pair? _g2468224960_)
                                                 (let ((_e2477524963_
                                                        (gx#syntax-e
                                                         _g2468224960_)))
                                                   (let ((_hd2477624967_
                                                          (##car _e2477524963_))
                                                         (_tl2477724970_
                                                          (##cdr _e2477524963_)))
                                                     (if (gx#stx-datum?
                                                          _hd2477624967_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2477624967_)
                             'datum:)
                     (if (gx#stx-pair? _tl2477724970_)
                         (let ((_e2477824973_ (gx#syntax-e _tl2477724970_)))
                           (let ((_hd2477924977_ (##car _e2477824973_))
                                 (_tl2478024980_ (##cdr _e2477824973_)))
                             (if (gx#stx-null? _tl2478024980_)
                                 ((lambda (_L24983_)
                                    (let* ((_g2499625004_
                                            (lambda (_g2499725000_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2499725000_)))
                                           (_g2499525023_
                                            (lambda (_g2499725008_)
                                              ((lambda (_L25011_)
                                                 (let ()
                                                   (cons 'if
                                                         (cons (cons _L25011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L24654_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L24983_ '()))
                                         '())))
                       (cons _K24636_ (cons _E24637_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2499725008_))))
                                      (_g2499525023_
                                       (let ((_e25027_ (gx#stx-e _L24983_)))
                                         (if (let ((_$e25030_
                                                    (symbol? _e25027_)))
                                               (if _$e25030_
                                                   _$e25030_
                                                   (let ((_$e25034_
                                                          (keyword? _e25027_)))
                                                     (if _$e25034_
                                                         _$e25034_
                                                         (immediate?
                                                          _e25027_)))))
                                             '##eq?
                                             (if (number? _e25027_)
                                                 'eqv?
                                                 'equal?))))))
                                  _hd2477924977_)
                                 (_g2467824956_ _g2468224960_))))
                         (_g2467824956_ _g2468224960_))
                     (_g2467824956_ _g2468224960_))
                 (_g2467824956_ _g2468224960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467824956_
                                                  _g2468224960_))))
                                          (_g2467625092_
                                           (lambda (_g2468225042_)
                                             (if (gx#stx-pair? _g2468225042_)
                                                 (let ((_e2476525045_
                                                        (gx#syntax-e
                                                         _g2468225042_)))
                                                   (let ((_hd2476625049_
                                                          (##car _e2476525045_))
                                                         (_tl2476725052_
                                                          (##cdr _e2476525045_)))
                                                     (if (gx#stx-datum?
                                                          _hd2476625049_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2476625049_)
                             'class:)
                     (if (gx#stx-pair? _tl2476725052_)
                         (let ((_e2476825055_ (gx#syntax-e _tl2476725052_)))
                           (let ((_hd2476925059_ (##car _e2476825055_))
                                 (_tl2477025062_ (##cdr _e2476825055_)))
                             (if (gx#stx-pair? _tl2477025062_)
                                 (let ((_e2477125065_
                                        (gx#syntax-e _tl2477025062_)))
                                   (let ((_hd2477225069_ (##car _e2477125065_))
                                         (_tl2477325072_
                                          (##cdr _e2477125065_)))
                                     (if (gx#stx-null? _tl2477325072_)
                                         ((lambda (_L25075_ _L25077_)
                                            (_generate-class23046_
                                             (gx#stx-e _L25077_)
                                             _tgt24633_
                                             _L25075_
                                             _K24636_
                                             _E24637_))
                                          _hd2477225069_
                                          _hd2476925059_)
                                         (_g2467725038_ _g2468225042_))))
                                 (_g2467725038_ _g2468225042_))))
                         (_g2467725038_ _g2468225042_))
                     (_g2467725038_ _g2468225042_))
                 (_g2467725038_ _g2468225042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467725038_
                                                  _g2468225042_))))
                                          (_g2467525146_
                                           (lambda (_g2468225096_)
                                             (if (gx#stx-pair? _g2468225096_)
                                                 (let ((_e2475425099_
                                                        (gx#syntax-e
                                                         _g2468225096_)))
                                                   (let ((_hd2475525103_
                                                          (##car _e2475425099_))
                                                         (_tl2475625106_
                                                          (##cdr _e2475425099_)))
                                                     (if (gx#stx-datum?
                                                          _hd2475525103_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2475525103_)
                             'struct:)
                     (if (gx#stx-pair? _tl2475625106_)
                         (let ((_e2475725109_ (gx#syntax-e _tl2475625106_)))
                           (let ((_hd2475825113_ (##car _e2475725109_))
                                 (_tl2475925116_ (##cdr _e2475725109_)))
                             (if (gx#stx-pair? _tl2475925116_)
                                 (let ((_e2476025119_
                                        (gx#syntax-e _tl2475925116_)))
                                   (let ((_hd2476125123_ (##car _e2476025119_))
                                         (_tl2476225126_
                                          (##cdr _e2476025119_)))
                                     (if (gx#stx-null? _tl2476225126_)
                                         ((lambda (_L25129_ _L25131_)
                                            (_generate-struct23045_
                                             (gx#stx-e _L25131_)
                                             _tgt24633_
                                             _L25129_
                                             _K24636_
                                             _E24637_))
                                          _hd2476125123_
                                          _hd2475825113_)
                                         (_g2467625092_ _g2468225096_))))
                                 (_g2467625092_ _g2468225096_))))
                         (_g2467625092_ _g2468225096_))
                     (_g2467625092_ _g2468225096_))
                 (_g2467625092_ _g2468225096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467625092_
                                                  _g2468225096_))))
                                          (_g2467425324_
                                           (lambda (_g2468225150_)
                                             (if (gx#stx-pair? _g2468225150_)
                                                 (let ((_e2474625153_
                                                        (gx#syntax-e
                                                         _g2468225150_)))
                                                   (let ((_hd2474725157_
                                                          (##car _e2474625153_))
                                                         (_tl2474825160_
                                                          (##cdr _e2474625153_)))
                                                     (if (gx#stx-datum?
                                                          _hd2474725157_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2474725157_)
                             'vector:)
                     (if (gx#stx-pair? _tl2474825160_)
                         (let ((_e2474925163_ (gx#syntax-e _tl2474825160_)))
                           (let ((_hd2475025167_ (##car _e2474925163_))
                                 (_tl2475125170_ (##cdr _e2474925163_)))
                             (if (gx#stx-null? _tl2475125170_)
                                 ((lambda (_L25173_)
                                    (let* ((_g2518725208_
                                            (lambda (_g2518825204_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2518825204_)))
                                           (_g2518625249_
                                            (lambda (_g2518825212_)
                                              (if (gx#stx-pair? _g2518825212_)
                                                  (let ((_e2519725215_
                                                         (gx#syntax-e
                                                          _g2518825212_)))
                                                    (let ((_hd2519825219_
                                                           (##car _e2519725215_))
                                                          (_tl2519925222_
                                                           (##cdr _e2519725215_)))
                                                      (if (gx#stx-datum?
                                                           _hd2519825219_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2519825219_)
                              'list:)
                      (if (gx#stx-pair? _tl2519925222_)
                          (let ((_e2520025225_ (gx#syntax-e _tl2519925222_)))
                            (let ((_hd2520125229_ (##car _e2520025225_))
                                  (_tl2520225232_ (##cdr _e2520025225_)))
                              (if (gx#stx-null? _tl2520225232_)
                                  ((lambda (_L25235_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector?)
                                                       (cons _L24654_ '()))
                                                 (cons (_generate-list-vector23044_
                                                        _tgt24633_
                                                        _L25235_
                                                        'subvector->list
                                                        '0
                                                        _K24636_
                                                        _E24637_)
                                                       (cons _E24637_ '())))))
                                   _hd2520125229_)
                                  (_g2518725208_ _g2518825212_))))
                          (_g2518725208_ _g2518825212_))
                      (_g2518725208_ _g2518825212_))
                  (_g2518725208_ _g2518825212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2518725208_
                                                   _g2518825212_))))
                                           (_g2518525320_
                                            (lambda (_g2518825253_)
                                              (if (gx#stx-pair? _g2518825253_)
                                                  (let ((_e2519025256_
                                                         (gx#syntax-e
                                                          _g2518825253_)))
                                                    (let ((_hd2519125260_
                                                           (##car _e2519025256_))
                                                          (_tl2519225263_
                                                           (##cdr _e2519025256_)))
                                                      (if (gx#stx-datum?
                                                           _hd2519125260_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2519125260_)
                              'simple:)
                      (if (gx#stx-pair? _tl2519225263_)
                          (let ((_e2519325266_ (gx#syntax-e _tl2519225263_)))
                            (let ((_hd2519425270_ (##car _e2519325266_))
                                  (_tl2519525273_ (##cdr _e2519325266_)))
                              (if (gx#stx-null? _tl2519525273_)
                                  ((lambda (_L25276_)
                                     (let* ((_g2528925297_
                                             (lambda (_g2529025293_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2529025293_)))
                                            (_g2528825316_
                                             (lambda (_g2529025301_)
                                               ((lambda (_L25304_)
                                                  (let ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector?)
                              (cons _L24654_ '()))
                        (cons (cons 'if
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L24654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L25304_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector23043_
                                                 _tgt24633_
                                                 _L25276_
                                                 '0
                                                 _K24636_
                                                 _E24637_)
                                                (cons _E24637_ '()))))
                              (cons _E24637_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2529025301_))))
                                       (_g2528825316_
                                        (gx#stx-length _L25276_))))
                                   _hd2519425270_)
                                  (_g2518625249_ _g2518825253_))))
                          (_g2518625249_ _g2518825253_))
                      (_g2518625249_ _g2518825253_))
                  (_g2518625249_ _g2518825253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2518625249_
                                                   _g2518825253_)))))
                                      (_g2518525320_ _L25173_)))
                                  _hd2475025167_)
                                 (_g2467525146_ _g2468225150_))))
                         (_g2467525146_ _g2468225150_))
                     (_g2467525146_ _g2468225150_))
                 (_g2467525146_ _g2468225150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467525146_
                                                  _g2468225150_))))
                                          (_g2467325502_
                                           (lambda (_g2468225328_)
                                             (if (gx#stx-pair? _g2468225328_)
                                                 (let ((_e2473925331_
                                                        (gx#syntax-e
                                                         _g2468225328_)))
                                                   (let ((_hd2474025335_
                                                          (##car _e2473925331_))
                                                         (_tl2474125338_
                                                          (##cdr _e2473925331_)))
                                                     (if (gx#stx-datum?
                                                          _hd2474025335_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2474025335_)
                             'values:)
                     (if (gx#stx-pair? _tl2474125338_)
                         (let ((_e2474225341_ (gx#syntax-e _tl2474125338_)))
                           (let ((_hd2474325345_ (##car _e2474225341_))
                                 (_tl2474425348_ (##cdr _e2474225341_)))
                             (if (gx#stx-null? _tl2474425348_)
                                 ((lambda (_L25351_)
                                    (let* ((_g2536525386_
                                            (lambda (_g2536625382_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2536625382_)))
                                           (_g2536425427_
                                            (lambda (_g2536625390_)
                                              (if (gx#stx-pair? _g2536625390_)
                                                  (let ((_e2537525393_
                                                         (gx#syntax-e
                                                          _g2536625390_)))
                                                    (let ((_hd2537625397_
                                                           (##car _e2537525393_))
                                                          (_tl2537725400_
                                                           (##cdr _e2537525393_)))
                                                      (if (gx#stx-datum?
                                                           _hd2537625397_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2537625397_)
                              'list:)
                      (if (gx#stx-pair? _tl2537725400_)
                          (let ((_e2537825403_ (gx#syntax-e _tl2537725400_)))
                            (let ((_hd2537925407_ (##car _e2537825403_))
                                  (_tl2538025410_ (##cdr _e2537825403_)))
                              (if (gx#stx-null? _tl2538025410_)
                                  ((lambda (_L25413_)
                                     (_generate-list-vector23044_
                                      _tgt24633_
                                      _L25413_
                                      'values->list
                                      '0
                                      _K24636_
                                      _E24637_))
                                   _hd2537925407_)
                                  (_g2536525386_ _g2536625390_))))
                          (_g2536525386_ _g2536625390_))
                      (_g2536525386_ _g2536625390_))
                  (_g2536525386_ _g2536625390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2536525386_
                                                   _g2536625390_))))
                                           (_g2536325498_
                                            (lambda (_g2536625431_)
                                              (if (gx#stx-pair? _g2536625431_)
                                                  (let ((_e2536825434_
                                                         (gx#syntax-e
                                                          _g2536625431_)))
                                                    (let ((_hd2536925438_
                                                           (##car _e2536825434_))
                                                          (_tl2537025441_
                                                           (##cdr _e2536825434_)))
                                                      (if (gx#stx-datum?
                                                           _hd2536925438_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2536925438_)
                              'simple:)
                      (if (gx#stx-pair? _tl2537025441_)
                          (let ((_e2537125444_ (gx#syntax-e _tl2537025441_)))
                            (let ((_hd2537225448_ (##car _e2537125444_))
                                  (_tl2537325451_ (##cdr _e2537125444_)))
                              (if (gx#stx-null? _tl2537325451_)
                                  ((lambda (_L25454_)
                                     (let* ((_g2546725475_
                                             (lambda (_g2546825471_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2546825471_)))
                                            (_g2546625494_
                                             (lambda (_g2546825479_)
                                               ((lambda (_L25482_)
                                                  (let ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L24654_ '()))
                                    (cons _L25482_ '())))
                        (cons (_generate-simple-vector23043_
                               _tgt24633_
                               _L25454_
                               '0
                               _K24636_
                               _E24637_)
                              (cons _E24637_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2546825479_))))
                                       (_g2546625494_
                                        (gx#stx-length _L25454_))))
                                   _hd2537225448_)
                                  (_g2536425427_ _g2536625431_))))
                          (_g2536425427_ _g2536625431_))
                      (_g2536425427_ _g2536625431_))
                  (_g2536425427_ _g2536625431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2536425427_
                                                   _g2536625431_)))))
                                      (_g2536325498_ _L25351_)))
                                  _hd2474325345_)
                                 (_g2467425324_ _g2468225328_))))
                         (_g2467425324_ _g2468225328_))
                     (_g2467425324_ _g2468225328_))
                 (_g2467425324_ _g2468225328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467425324_
                                                  _g2468225328_))))
                                          (_g2467225573_
                                           (lambda (_g2468225506_)
                                             (if (gx#stx-pair? _g2468225506_)
                                                 (let ((_e2473225509_
                                                        (gx#syntax-e
                                                         _g2468225506_)))
                                                   (let ((_hd2473325513_
                                                          (##car _e2473225509_))
                                                         (_tl2473425516_
                                                          (##cdr _e2473225509_)))
                                                     (if (gx#stx-datum?
                                                          _hd2473325513_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2473325513_)
                             'box:)
                     (if (gx#stx-pair? _tl2473425516_)
                         (let ((_e2473525519_ (gx#syntax-e _tl2473425516_)))
                           (let ((_hd2473625523_ (##car _e2473525519_))
                                 (_tl2473725526_ (##cdr _e2473525519_)))
                             (if (gx#stx-null? _tl2473725526_)
                                 ((lambda (_L25529_)
                                    (let* ((_g2554225550_
                                            (lambda (_g2554325546_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2554325546_)))
                                           (_g2554125569_
                                            (lambda (_g2554325554_)
                                              ((lambda (_L25557_)
                                                 (let ()
                                                   (cons 'if
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L24654_ '()))
                       (cons (cons 'let
                                   (cons (cons (cons _L25557_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L24654_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate123040_
                                                _L25557_
                                                _L25529_
                                                _K24636_
                                                _E24637_)
                                               '())))
                             (cons _E24637_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2554325554_))))
                                      (_g2554125569_ (gx#genident 'e))))
                                  _hd2473625523_)
                                 (_g2467325502_ _g2468225506_))))
                         (_g2467325502_ _g2468225506_))
                     (_g2467325502_ _g2468225506_))
                 (_g2467325502_ _g2468225506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467325502_
                                                  _g2468225506_))))
                                          (_g2467125627_
                                           (lambda (_g2468225577_)
                                             (if (gx#stx-pair? _g2468225577_)
                                                 (let ((_e2472225580_
                                                        (gx#syntax-e
                                                         _g2468225577_)))
                                                   (let ((_hd2472325584_
                                                          (##car _e2472225580_))
                                                         (_tl2472425587_
                                                          (##cdr _e2472225580_)))
                                                     (if (gx#stx-datum?
                                                          _hd2472325584_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2472325584_)
                             'splice:)
                     (if (gx#stx-pair? _tl2472425587_)
                         (let ((_e2472525590_ (gx#syntax-e _tl2472425587_)))
                           (let ((_hd2472625594_ (##car _e2472525590_))
                                 (_tl2472725597_ (##cdr _e2472525590_)))
                             (if (gx#stx-pair? _tl2472725597_)
                                 (let ((_e2472825600_
                                        (gx#syntax-e _tl2472725597_)))
                                   (let ((_hd2472925604_ (##car _e2472825600_))
                                         (_tl2473025607_
                                          (##cdr _e2472825600_)))
                                     (if (gx#stx-null? _tl2473025607_)
                                         ((lambda (_L25610_ _L25612_)
                                            (_generate-splice23042_
                                             _tgt24633_
                                             _L25612_
                                             _L25610_
                                             _K24636_
                                             _E24637_))
                                          _hd2472925604_
                                          _hd2472625594_)
                                         (_g2467225573_ _g2468225577_))))
                                 (_g2467225573_ _g2468225577_))))
                         (_g2467225573_ _g2468225577_))
                     (_g2467225573_ _g2468225577_))
                 (_g2467225573_ _g2468225577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467225573_
                                                  _g2468225577_))))
                                          (_g2467025648_
                                           (lambda (_g2468225631_)
                                             (if (gx#stx-pair? _g2468225631_)
                                                 (let ((_e2471725634_
                                                        (gx#syntax-e
                                                         _g2468225631_)))
                                                   (let ((_hd2471825638_
                                                          (##car _e2471725634_))
                                                         (_tl2471925641_
                                                          (##cdr _e2471725634_)))
                                                     (if (gx#stx-datum?
                                                          _hd2471825638_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2471825638_)
                             'null:)
                     (if (gx#stx-null? _tl2471925641_)
                         ((lambda ()
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L24654_ '()))
                                        (cons _K24636_ (cons _E24637_ '()))))))
                         (_g2467125627_ _g2468225631_))
                     (_g2467125627_ _g2468225631_))
                 (_g2467125627_ _g2468225631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467125627_
                                                  _g2468225631_))))
                                          (_g2466925771_
                                           (lambda (_g2468225652_)
                                             (if (gx#stx-pair? _g2468225652_)
                                                 (let ((_e2470825655_
                                                        (gx#syntax-e
                                                         _g2468225652_)))
                                                   (let ((_hd2470925659_
                                                          (##car _e2470825655_))
                                                         (_tl2471025662_
                                                          (##cdr _e2470825655_)))
                                                     (if (gx#stx-datum?
                                                          _hd2470925659_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2470925659_)
                             'cons:)
                     (if (gx#stx-pair? _tl2471025662_)
                         (let ((_e2471125665_ (gx#syntax-e _tl2471025662_)))
                           (let ((_hd2471225669_ (##car _e2471125665_))
                                 (_tl2471325672_ (##cdr _e2471125665_)))
                             (if (gx#stx-pair? _tl2471325672_)
                                 (let ((_e2471425675_
                                        (gx#syntax-e _tl2471325672_)))
                                   (let ((_hd2471525679_ (##car _e2471425675_))
                                         (_tl2471625682_
                                          (##cdr _e2471425675_)))
                                     (if (gx#stx-null? _tl2471625682_)
                                         ((lambda (_L25685_ _L25687_)
                                            (let* ((_g2570325718_
                                                    (lambda (_g2570425714_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2570425714_)))
                                                   (_g2570225767_
                                                    (lambda (_g2570425722_)
                                                      (if (gx#stx-pair?
                                                           _g2570425722_)
                                                          (let ((_e2570725725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2570425722_)))
                    (let ((_hd2570825729_ (##car _e2570725725_))
                          (_tl2570925732_ (##cdr _e2570725725_)))
                      (if (gx#stx-pair? _tl2570925732_)
                          (let ((_e2571025735_ (gx#syntax-e _tl2570925732_)))
                            (let ((_hd2571125739_ (##car _e2571025735_))
                                  (_tl2571225742_ (##cdr _e2571025735_)))
                              (if (gx#stx-null? _tl2571225742_)
                                  ((lambda (_L25745_ _L25747_)
                                     (let ()
                                       (cons 'if
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L24654_ '()))
                                                   (cons (let ((_hd-pat25763_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25687_))
                       (_tl-pat25765_ (gx#stx-e _L25685_)))
                   (if (if (equal? _hd-pat25763_ '(any:))
                           (equal? _tl-pat25765_ '(any:))
                           '#f)
                       _K24636_
                       (if (equal? _tl-pat25765_ '(any:))
                           (cons 'let
                                 (cons (cons (cons _L25747_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##car)
                                                               (cons _L24654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())
                                       (cons (_generate123040_
                                              _L25747_
                                              _L25687_
                                              _K24636_
                                              _E24637_)
                                             '())))
                           (if (equal? _hd-pat25763_ '(any:))
                               (cons 'let
                                     (cons (cons (cons _L25745_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _L24654_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (_generate123040_
                                                  _L25745_
                                                  _L25685_
                                                  _K24636_
                                                  _E24637_)
                                                 '())))
                               (cons 'let
                                     (cons (cons (cons _L25747_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _L24654_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L25745_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _L24654_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (_generate123040_
                                                  _L25747_
                                                  _L25687_
                                                  (_generate123040_
                                                   _L25745_
                                                   _L25685_
                                                   _K24636_
                                                   _E24637_)
                                                  _E24637_)
                                                 '())))))))
                 (cons _E24637_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2571125739_
                                   _hd2570825729_)
                                  (_g2570325718_ _g2570425722_))))
                          (_g2570325718_ _g2570425722_))))
                  (_g2570325718_ _g2570425722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2570225767_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2471525679_
                                          _hd2471225669_)
                                         (_g2467025648_ _g2468225652_))))
                                 (_g2467025648_ _g2468225652_))))
                         (_g2467025648_ _g2468225652_))
                     (_g2467025648_ _g2468225652_))
                 (_g2467025648_ _g2468225652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2467025648_
                                                  _g2468225652_))))
                                          (_g2466825811_
                                           (lambda (_g2468225775_)
                                             (if (gx#stx-pair? _g2468225775_)
                                                 (let ((_e2470025778_
                                                        (gx#syntax-e
                                                         _g2468225775_)))
                                                   (let ((_hd2470125782_
                                                          (##car _e2470025778_))
                                                         (_tl2470225785_
                                                          (##cdr _e2470025778_)))
                                                     (if (gx#stx-datum?
                                                          _hd2470125782_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2470125782_)
                             'not:)
                     (if (gx#stx-pair? _tl2470225785_)
                         (let ((_e2470325788_ (gx#syntax-e _tl2470225785_)))
                           (let ((_hd2470425792_ (##car _e2470325788_))
                                 (_tl2470525795_ (##cdr _e2470325788_)))
                             (if (gx#stx-null? _tl2470525795_)
                                 ((lambda (_L25798_)
                                    (_generate123040_
                                     _tgt24633_
                                     _L25798_
                                     _E24637_
                                     _K24636_))
                                  _hd2470425792_)
                                 (_g2466925771_ _g2468225775_))))
                         (_g2466925771_ _g2468225775_))
                     (_g2466925771_ _g2468225775_))
                 (_g2466925771_ _g2468225775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2466925771_
                                                  _g2468225775_))))
                                          (_g2466725899_
                                           (lambda (_g2468225815_)
                                             (if (gx#stx-pair? _g2468225815_)
                                                 (let ((_e2469625818_
                                                        (gx#syntax-e
                                                         _g2468225815_)))
                                                   (let ((_hd2469725822_
                                                          (##car _e2469625818_))
                                                         (_tl2469825825_
                                                          (##cdr _e2469625818_)))
                                                     (if (gx#stx-datum?
                                                          _hd2469725822_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2469725822_)
                             'or:)
                     ((lambda (_L25828_)
                        (let* ((_g2584025852_
                                (lambda (_g2584125848_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2584125848_)))
                               (_g2583925863_
                                (lambda (_g2584125856_)
                                  ((lambda () _E24637_))))
                               (_g2583825895_
                                (lambda (_g2584125867_)
                                  (if (gx#stx-pair? _g2584125867_)
                                      (let ((_e2584425870_
                                             (gx#syntax-e _g2584125867_)))
                                        (let ((_hd2584525874_
                                               (##car _e2584425870_))
                                              (_tl2584625877_
                                               (##cdr _e2584425870_)))
                                          ((lambda (_L25880_ _L25882_)
                                             (_generate123040_
                                              _tgt24633_
                                              _L25882_
                                              _K24636_
                                              (_generate123040_
                                               _tgt24633_
                                               (cons 'or: _L25880_)
                                               _K24636_
                                               _E24637_)))
                                           _tl2584625877_
                                           _hd2584525874_)))
                                      (_g2583925863_ _g2584125867_)))))
                          (_g2583825895_ _L25828_)))
                      _tl2469825825_)
                     (_g2466825811_ _g2468225815_))
                 (_g2466825811_ _g2468225815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2466825811_
                                                  _g2468225815_))))
                                          (_g2466625987_
                                           (lambda (_g2468225903_)
                                             (if (gx#stx-pair? _g2468225903_)
                                                 (let ((_e2469225906_
                                                        (gx#syntax-e
                                                         _g2468225903_)))
                                                   (let ((_hd2469325910_
                                                          (##car _e2469225906_))
                                                         (_tl2469425913_
                                                          (##cdr _e2469225906_)))
                                                     (if (gx#stx-datum?
                                                          _hd2469325910_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2469325910_)
                             'and:)
                     ((lambda (_L25916_)
                        (let* ((_g2592825940_
                                (lambda (_g2592925936_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2592925936_)))
                               (_g2592725951_
                                (lambda (_g2592925944_)
                                  ((lambda () _K24636_))))
                               (_g2592625983_
                                (lambda (_g2592925955_)
                                  (if (gx#stx-pair? _g2592925955_)
                                      (let ((_e2593225958_
                                             (gx#syntax-e _g2592925955_)))
                                        (let ((_hd2593325962_
                                               (##car _e2593225958_))
                                              (_tl2593425965_
                                               (##cdr _e2593225958_)))
                                          ((lambda (_L25968_ _L25970_)
                                             (_generate123040_
                                              _tgt24633_
                                              _L25970_
                                              (_generate123040_
                                               _tgt24633_
                                               (cons 'and: _L25968_)
                                               _K24636_
                                               _E24637_)
                                              _E24637_))
                                           _tl2593425965_
                                           _hd2593325962_)))
                                      (_g2592725951_ _g2592925955_)))))
                          (_g2592625983_ _L25916_)))
                      _tl2469425913_)
                     (_g2466725899_ _g2468225903_))
                 (_g2466725899_ _g2468225903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2466725899_
                                                  _g2468225903_))))
                                          (_g2466526276_
                                           (lambda (_g2468225991_)
                                             (if (gx#stx-pair? _g2468225991_)
                                                 (let ((_e2468525994_
                                                        (gx#syntax-e
                                                         _g2468225991_)))
                                                   (let ((_hd2468625998_
                                                          (##car _e2468525994_))
                                                         (_tl2468726001_
                                                          (##cdr _e2468525994_)))
                                                     (if (gx#stx-datum?
                                                          _hd2468625998_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2468625998_)
                             '?:)
                     (if (gx#stx-pair? _tl2468726001_)
                         (let ((_e2468826004_ (gx#syntax-e _tl2468726001_)))
                           (let ((_hd2468926008_ (##car _e2468826004_))
                                 (_tl2469026011_ (##cdr _e2468826004_)))
                             ((lambda (_L26014_ _L26016_)
                                (let* ((_g2603226064_
                                        (lambda (_g2603326060_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2603326060_)))
                                       (_g2603126162_
                                        (lambda (_g2603326068_)
                                          (if (gx#stx-pair? _g2603326068_)
                                              (let ((_e2604726071_
                                                     (gx#syntax-e
                                                      _g2603326068_)))
                                                (let ((_hd2604826075_
                                                       (##car _e2604726071_))
                                                      (_tl2604926078_
                                                       (##cdr _e2604726071_)))
                                                  (if (gx#stx-datum?
                                                       _hd2604826075_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2604826075_)
                          '::)
                  (if (gx#stx-pair? _tl2604926078_)
                      (let ((_e2605026081_ (gx#syntax-e _tl2604926078_)))
                        (let ((_hd2605126085_ (##car _e2605026081_))
                              (_tl2605226088_ (##cdr _e2605026081_)))
                          (if (gx#stx-pair? _tl2605226088_)
                              (let ((_e2605326091_
                                     (gx#syntax-e _tl2605226088_)))
                                (let ((_hd2605426095_ (##car _e2605326091_))
                                      (_tl2605526098_ (##cdr _e2605326091_)))
                                  (if (gx#stx-datum? _hd2605426095_)
                                      (if (equal? (gx#stx-e _hd2605426095_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2605526098_)
                                              (let ((_e2605626101_
                                                     (gx#syntax-e
                                                      _tl2605526098_)))
                                                (let ((_hd2605726105_
                                                       (##car _e2605626101_))
                                                      (_tl2605826108_
                                                       (##cdr _e2605626101_)))
                                                  (if (gx#stx-null?
                                                       _tl2605826108_)
                                                      ((lambda (_L26111_
                                                                _L26113_)
                                                         (let* ((_g2613126139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2613226135_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2613226135_)))
                        (_g2613026158_
                         (lambda (_g2613226143_)
                           ((lambda (_L26146_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L26016_
                                                        (cons _L24654_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L26146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L26113_ (cons _L24654_ '()))
                                        '()))
                            '())
                      (cons (_generate123040_
                             _L26146_
                             _L26111_
                             _K24636_
                             _E24637_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E24637_ '()))))))
                            _g2613226143_))))
                   (_g2613026158_ (gx#genident 'e))))
               _hd2605726105_
               _hd2605126085_)
              (_g2603226064_ _g2603326068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2603226064_ _g2603326068_))
                                          (_g2603226064_ _g2603326068_))
                                      (_g2603226064_ _g2603326068_))))
                              (_g2603226064_ _g2603326068_))))
                      (_g2603226064_ _g2603326068_))
                  (_g2603226064_ _g2603326068_))
              (_g2603226064_ _g2603326068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2603226064_ _g2603326068_))))
                                       (_g2603026233_
                                        (lambda (_g2603326166_)
                                          (if (gx#stx-pair? _g2603326166_)
                                              (let ((_e2603926169_
                                                     (gx#syntax-e
                                                      _g2603326166_)))
                                                (let ((_hd2604026173_
                                                       (##car _e2603926169_))
                                                      (_tl2604126176_
                                                       (##cdr _e2603926169_)))
                                                  (if (gx#stx-datum?
                                                       _hd2604026173_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2604026173_)
                          '=>:)
                  (if (gx#stx-pair? _tl2604126176_)
                      (let ((_e2604226179_ (gx#syntax-e _tl2604126176_)))
                        (let ((_hd2604326183_ (##car _e2604226179_))
                              (_tl2604426186_ (##cdr _e2604226179_)))
                          (if (gx#stx-null? _tl2604426186_)
                              ((lambda (_L26189_)
                                 (let* ((_g2620226210_
                                         (lambda (_g2620326206_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2620326206_)))
                                        (_g2620126229_
                                         (lambda (_g2620326214_)
                                           ((lambda (_L26217_)
                                              (let ()
                                                (cons 'let
                                                      (cons (cons (cons _L26217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L26016_ (cons _L24654_ '())) '()))
                          '())
                    (cons (cons 'if
                                (cons _L26217_
                                      (cons (_generate123040_
                                             _L26217_
                                             _L26189_
                                             _K24636_
                                             _E24637_)
                                            (cons _E24637_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2620326214_))))
                                   (_g2620126229_ (gx#genident 'e))))
                               _hd2604326183_)
                              (_g2603126162_ _g2603326166_))))
                      (_g2603126162_ _g2603326166_))
                  (_g2603126162_ _g2603326166_))
              (_g2603126162_ _g2603326166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2603126162_ _g2603326166_))))
                                       (_g2602926261_
                                        (lambda (_g2603326237_)
                                          (if (gx#stx-pair? _g2603326237_)
                                              (let ((_e2603526240_
                                                     (gx#syntax-e
                                                      _g2603326237_)))
                                                (let ((_hd2603626244_
                                                       (##car _e2603526240_))
                                                      (_tl2603726247_
                                                       (##cdr _e2603526240_)))
                                                  (if (gx#stx-null?
                                                       _tl2603726247_)
                                                      ((lambda (_L26250_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L26016_ (cons _L24654_ '())))
                             (cons (_generate123040_
                                    _tgt24633_
                                    _L26250_
                                    _K24636_
                                    _E24637_)
                                   (cons _E24637_ '())))))
               _hd2603626244_)
              (_g2603026233_ _g2603326237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2603026233_ _g2603326237_))))
                                       (_g2602826272_
                                        (lambda (_g2603326265_)
                                          (if (gx#stx-null? _g2603326265_)
                                              ((lambda ()
                                                 (cons 'if
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L26016_ (cons _L24654_ '())))
                     (cons _K24636_ (cons _E24637_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2602926261_ _g2603326265_)))))
                                  (_g2602826272_ _L26014_)))
                              _tl2469026011_
                              _hd2468926008_)))
                         (_g2466625987_ _g2468225991_))
                     (_g2466625987_ _g2468225991_))
                 (_g2466625987_ _g2468225991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2466625987_
                                                  _g2468225991_)))))
                                     (_g2466526276_ _ptree24635_))))
                               _g2464024651_))))
                      (_g2463826280_ _tgt24633_))))
                 (_generate-splice23042_
                  (lambda (_tgt24005_ _hd24007_ _rest24008_ _K24009_ _E24010_)
                    (let* ((_g2401224029_
                            (lambda (_g2401324025_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2401324025_)))
                           (_g2401124629_
                            (lambda (_g2401324033_)
                              (if (gx#stx-pair/null? _g2401324033_)
                                  (if (fx>= (gx#stx-length _g2401324033_) '0)
                                      (let ((_g35616_
                                             (gx#syntax-split-splice
                                              _g2401324033_
                                              '0)))
                                        (begin
                                          (let ((_g35617_
                                                 (if (##values? _g35616_)
                                                     (##vector-length _g35616_)
                                                     1)))
                                            (if (not (##fx= _g35617_ 2))
                                                (error "Context expects 2 values"
                                                       _g35617_)))
                                          (let ((_target2401524036_
                                                 (##vector-ref _g35616_ 0))
                                                (_tl2401724039_
                                                 (##vector-ref _g35616_ 1)))
                                            (if (gx#stx-null? _tl2401724039_)
                                                (letrec ((_loop2401824042_
                                                          (lambda (_hd2401624046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2402224049_)
                    (if (gx#stx-pair? _hd2401624046_)
                        (let ((_e2401924052_ (gx#syntax-e _hd2401624046_)))
                          (let ((_lp-hd2402024056_ (##car _e2401924052_))
                                (_lp-tl2402124059_ (##cdr _e2401924052_)))
                            (_loop2401824042_
                             _lp-tl2402124059_
                             (cons _lp-hd2402024056_ _var2402224049_))))
                        (let ((_var2402324062_ (reverse _var2402224049_)))
                          ((lambda (_L24066_)
                             (let ()
                               (let* ((_g2408224099_
                                       (lambda (_g2408324095_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2408324095_)))
                                      (_g2408124617_
                                       (lambda (_g2408324103_)
                                         (if (gx#stx-pair/null? _g2408324103_)
                                             (if (fx>= (gx#stx-length
                                                        _g2408324103_)
                                                       '0)
                                                 (let ((_g35618_
                                                        (gx#syntax-split-splice
                                                         _g2408324103_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35619_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35618_)
                        (##vector-length _g35618_)
                        1)))
               (if (not (##fx= _g35619_ 2))
                   (error "Context expects 2 values" _g35619_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2408524106_
                                                            (##vector-ref
                                                             _g35618_
                                                             0))
                                                           (_tl2408724109_
                                                            (##vector-ref
                                                             _g35618_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2408724109_)
                                                           (letrec ((_loop2408824112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2408624116_ _var-r2409224119_)
                               (if (gx#stx-pair? _hd2408624116_)
                                   (let ((_e2408924122_
                                          (gx#syntax-e _hd2408624116_)))
                                     (let ((_lp-hd2409024126_
                                            (##car _e2408924122_))
                                           (_lp-tl2409124129_
                                            (##cdr _e2408924122_)))
                                       (_loop2408824112_
                                        _lp-tl2409124129_
                                        (cons _lp-hd2409024126_
                                              _var-r2409224119_))))
                                   (let ((_var-r2409324132_
                                          (reverse _var-r2409224119_)))
                                     ((lambda (_L24136_)
                                        (let ()
                                          (let* ((_g2415324170_
                                                  (lambda (_g2415424166_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2415424166_)))
                                                 (_g2415224605_
                                                  (lambda (_g2415424174_)
                                                    (if (gx#stx-pair/null?
                                                         _g2415424174_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2415424174_)
                          '0)
                    (let ((_g35620_ (gx#syntax-split-splice _g2415424174_ '0)))
                      (begin
                        (let ((_g35621_
                               (if (##values? _g35620_)
                                   (##vector-length _g35620_)
                                   1)))
                          (if (not (##fx= _g35621_ 2))
                              (error "Context expects 2 values" _g35621_)))
                        (let ((_target2415624177_ (##vector-ref _g35620_ 0))
                              (_tl2415824180_ (##vector-ref _g35620_ 1)))
                          (if (gx#stx-null? _tl2415824180_)
                              (letrec ((_loop2415924183_
                                        (lambda (_hd2415724187_
                                                 _init2416324190_)
                                          (if (gx#stx-pair? _hd2415724187_)
                                              (let ((_e2416024193_
                                                     (gx#syntax-e
                                                      _hd2415724187_)))
                                                (let ((_lp-hd2416124197_
                                                       (##car _e2416024193_))
                                                      (_lp-tl2416224200_
                                                       (##cdr _e2416024193_)))
                                                  (_loop2415924183_
                                                   _lp-tl2416224200_
                                                   (cons _lp-hd2416124197_
                                                         _init2416324190_))))
                                              (let ((_init2416424203_
                                                     (reverse _init2416324190_)))
                                                ((lambda (_L24207_)
                                                   (let ()
                                                     (let* ((_g2422424232_
                                                             (lambda (_g2422524228_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2422524228_)))
                                                            (_g2422324601_
                                                             (lambda (_g2422524236_)
                                                               ((lambda (_L24239_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2425224260_
                                    (lambda (_g2425324256_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2425324256_)))
                                   (_g2425124597_
                                    (lambda (_g2425324264_)
                                      ((lambda (_L24267_)
                                         (let ()
                                           (let* ((_g2428024288_
                                                   (lambda (_g2428124284_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2428124284_)))
                                                  (_g2427924593_
                                                   (lambda (_g2428124292_)
                                                     ((lambda (_L24295_)
                                                        (let ()
                                                          (let* ((_g2430824316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2430924312_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2430924312_)))
                         (_g2430724589_
                          (lambda (_g2430924320_)
                            ((lambda (_L24323_)
                               (let ()
                                 (let* ((_g2433624344_
                                         (lambda (_g2433724340_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2433724340_)))
                                        (_g2433524585_
                                         (lambda (_g2433724348_)
                                           ((lambda (_L24351_)
                                              (let ()
                                                (let* ((_g2436424372_
                                                        (lambda (_g2436524368_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2436524368_)))
                                                       (_g2436324581_
                                                        (lambda (_g2436524376_)
                                                          ((lambda (_L24379_)
                                                             (let ()
                                                               (let* ((_g2439224400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2439324396_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2439324396_)))
                              (_g2439124577_
                               (lambda (_g2439324404_)
                                 ((lambda (_L24407_)
                                    (let ()
                                      (let* ((_g2442024428_
                                              (lambda (_g2442124424_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2442124424_)))
                                             (_g2441924562_
                                              (lambda (_g2442124432_)
                                                ((lambda (_L24435_)
                                                   (let ()
                                                     (let* ((_g2444824456_
                                                             (lambda (_g2444924452_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2444924452_)))
                                                            (_g2444724550_
                                                             (lambda (_g2444924460_)
                                                               ((lambda (_L24463_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2447624484_
                                    (lambda (_g2447724480_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2447724480_)))
                                   (_g2447524546_
                                    (lambda (_g2447724488_)
                                      ((lambda (_L24491_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L24267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L24379_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2450524516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2450624519_)
                        (cons _g2450524516_ _g2450624519_))
                      '()
                      _L24066_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L24407_ '())))
                                   '()))
                       (cons (cons _L24323_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L24351_
                                                           (cons _L24379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2450724522_ _g2450824525_)
                                    (cons _g2450724522_ _g2450824525_))
                                  '()
                                  _L24136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L24491_ '())))
                                         '()))
                             (cons (cons _L24295_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L24379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2450924528_ _g2451024531_)
                                    (cons _g2450924528_ _g2451024531_))
                                  '()
                                  _L24136_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L24379_ '()))
                                     (cons (cons _L24323_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L24379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L24379_
                     (begin
                       '#!void
                       (foldr (lambda (_g2451124534_ _g2451224537_)
                                (cons _g2451124534_ _g2451224537_))
                              '()
                              _L24136_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L24463_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L24295_
                             (cons _L24239_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2451324540_
                                                     _g2451424543_)
                                              (cons _g2451324540_
                                                    _g2451424543_))
                                            '()
                                            _L24207_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2447724488_))))
                              (_g2447524546_
                               (_generate123040_
                                _L24351_
                                _hd24007_
                                _L24435_
                                _L24463_)))))
                        _g2444924460_))))
               (_g2444724550_
                (cons _L24267_
                      (cons _L24379_
                            (begin
                              '#!void
                              (foldr (lambda (_g2455324556_ _g2455424559_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2455324556_ '()))
                                             _g2455424559_))
                                     '()
                                     _L24136_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2442124432_))))
                                        (_g2441924562_
                                         (cons _L24295_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L24379_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L24136_
                                                        _L24066_)
                                                       (foldr (lambda (_g2456524569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2456624572_
                               _g2456724574_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2456624572_
                                          (cons _g2456524569_ '())))
                              _g2456724574_))
                      '()
                      _L24136_
                      _L24066_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2439324404_))))
                         (_g2439124577_
                          (_generate123040_
                           _L24379_
                           _rest24008_
                           _K24009_
                           _E24010_)))))
                   _g2436524376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2436324581_
                                                   (gx#genident 'rest)))))
                                            _g2433724348_))))
                                   (_g2433524585_ (gx#genident 'hd)))))
                             _g2430924320_))))
                    (_g2430724589_ (gx#genident 'splice-try)))))
              _g2428124292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2427924593_
                                              (gx#genident 'splice-loop)))))
                                       _g2425324264_))))
                              (_g2425124597_ (gx#genident 'splice-rest)))))
                        _g2422524236_))))
               (_g2422324601_ _tgt24005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2416424203_))))))
                                (_loop2415924183_ _target2415624177_ '()))
                              (_g2415324170_ _g2415424174_)))))
                    (_g2415324170_ _g2415424174_))
                (_g2415324170_ _g2415424174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2415224605_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2460824611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2460924614_)
                  (cons _g2460824611_ _g2460924614_))
                '()
                _L24066_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2409324132_))))))
                     (_loop2408824112_ _target2408524106_ '()))
                   (_g2408224099_ _g2408324103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2408224099_ _g2408324103_))
                                             (_g2408224099_ _g2408324103_)))))
                                 (_g2408124617_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2462024623_
                                                     _g2462124626_)
                                              (cons _g2462024623_
                                                    _g2462124626_))
                                            '()
                                            _L24066_)))))))
                           _var2402324062_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2401824042_
                                                   _target2401524036_
                                                   '()))
                                                (_g2401224029_
                                                 _g2401324033_)))))
                                      (_g2401224029_ _g2401324033_))
                                  (_g2401224029_ _g2401324033_)))))
                      (_g2401124629_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd24007_)))))
                 (_generate-simple-vector23043_
                  (lambda (_tgt23847_
                           _body23849_
                           _start23850_
                           _K23851_
                           _E23852_)
                    (let _recur23854_ ((_rest23857_ _body23849_)
                                       (_off23859_ _start23850_))
                      (let* ((_g2386223874_
                              (lambda (_g2386323870_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2386323870_)))
                             (_g2386123885_
                              (lambda (_g2386323878_) ((lambda () _K23851_))))
                             (_g2386024001_
                              (lambda (_g2386323889_)
                                (if (gx#stx-pair? _g2386323889_)
                                    (let ((_e2386623892_
                                           (gx#syntax-e _g2386323889_)))
                                      (let ((_hd2386723896_
                                             (##car _e2386623892_))
                                            (_tl2386823899_
                                             (##cdr _e2386623892_)))
                                        ((lambda (_L23902_ _L23904_)
                                           (let* ((_g2391923938_
                                                   (lambda (_g2392023934_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2392023934_)))
                                                  (_g2391823997_
                                                   (lambda (_g2392023942_)
                                                     (if (gx#stx-pair?
                                                          _g2392023942_)
                                                         (let ((_e2392423945_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2392023942_)))
                   (let ((_hd2392523949_ (##car _e2392423945_))
                         (_tl2392623952_ (##cdr _e2392423945_)))
                     (if (gx#stx-pair? _tl2392623952_)
                         (let ((_e2392723955_ (gx#syntax-e _tl2392623952_)))
                           (let ((_hd2392823959_ (##car _e2392723955_))
                                 (_tl2392923962_ (##cdr _e2392723955_)))
                             (if (gx#stx-pair? _tl2392923962_)
                                 (let ((_e2393023965_
                                        (gx#syntax-e _tl2392923962_)))
                                   (let ((_hd2393123969_ (##car _e2393023965_))
                                         (_tl2393223972_
                                          (##cdr _e2393023965_)))
                                     (if (gx#stx-null? _tl2393223972_)
                                         ((lambda (_L23975_ _L23977_ _L23978_)
                                            (let ()
                                              (cons 'let
                                                    (cons (cons (cons _L23978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L23977_ (cons _L23975_ '())))
                                    '()))
                        '())
                  (cons (_generate123040_
                         _L23978_
                         _L23904_
                         (_recur23854_ _L23902_ (fx1+ _off23859_))
                         _E23852_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2393123969_
                                          _hd2392823959_
                                          _hd2392523949_)
                                         (_g2391923938_ _g2392023942_))))
                                 (_g2391923938_ _g2392023942_))))
                         (_g2391923938_ _g2392023942_))))
                 (_g2391923938_ _g2392023942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2391823997_
                                              (list (gx#genident 'e)
                                                    _tgt23847_
                                                    _off23859_))))
                                         _tl2386823899_
                                         _hd2386723896_)))
                                    (_g2386123885_ _g2386323889_)))))
                        (_g2386024001_ _rest23857_)))))
                 (_generate-list-vector23044_
                  (lambda (_tgt23757_
                           _body23759_
                           _tgt->list23760_
                           _start23761_
                           _K23762_
                           _E23763_)
                    (let* ((_g2376523784_
                            (lambda (_g2376623780_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2376623780_)))
                           (_g2376423843_
                            (lambda (_g2376623788_)
                              (if (gx#stx-pair? _g2376623788_)
                                  (let ((_e2377023791_
                                         (gx#syntax-e _g2376623788_)))
                                    (let ((_hd2377123795_
                                           (##car _e2377023791_))
                                          (_tl2377223798_
                                           (##cdr _e2377023791_)))
                                      (if (gx#stx-pair? _tl2377223798_)
                                          (let ((_e2377323801_
                                                 (gx#syntax-e _tl2377223798_)))
                                            (let ((_hd2377423805_
                                                   (##car _e2377323801_))
                                                  (_tl2377523808_
                                                   (##cdr _e2377323801_)))
                                              (if (gx#stx-pair? _tl2377523808_)
                                                  (let ((_e2377623811_
                                                         (gx#syntax-e
                                                          _tl2377523808_)))
                                                    (let ((_hd2377723815_
                                                           (##car _e2377623811_))
                                                          (_tl2377823818_
                                                           (##cdr _e2377623811_)))
                                                      (if (gx#stx-null?
                                                           _tl2377823818_)
                                                          ((lambda (_L23821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23823_
                            _L23824_)
                     (let ()
                       (cons 'let
                             (cons (cons (cons _L23824_
                                               (cons (cons _L23821_
                                                           (cons _L23823_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate123040_
                                          _L23824_
                                          _body23759_
                                          _K23762_
                                          _E23763_)
                                         '())))))
                   _hd2377723815_
                   _hd2377423805_
                   _hd2377123795_)
                  (_g2376523784_ _g2376623788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2376523784_
                                                   _g2376623788_))))
                                          (_g2376523784_ _g2376623788_))))
                                  (_g2376523784_ _g2376623788_)))))
                      (_g2376423843_
                       (list (gx#genident 'e) _tgt23757_ _tgt->list23760_)))))
                 (_generate-struct23045_
                  (lambda (_info23427_
                           _tgt23429_
                           _body23430_
                           _K23431_
                           _E23432_)
                    (let* ((_rtd23434_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info23427_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info23427_)
                                '#f))
                           (_fields23444_
                            (let _lp23437_ ((_rtd23440_ _rtd23434_)
                                            (_k23442_ '0))
                              (if _rtd23440_
                                  (_lp23437_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd23440_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd23440_))
                                        _k23442_))
                                  _k23442_)))
                           (_final?23447_
                            (if _rtd23434_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd23434_))
                                '#f))
                           (_g2345023458_
                            (lambda (_g2345123454_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2345123454_)))
                           (_g2344923753_
                            (lambda (_g2345123462_)
                              ((lambda (_L23465_)
                                 (let ()
                                   (let* ((_g2348023488_
                                           (lambda (_g2348123484_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2348123484_)))
                                          (_g2347923655_
                                           (lambda (_g2348123492_)
                                             ((lambda (_L23495_)
                                                (let ()
                                                  (let ()
                                                    (let* ((_g2351123532_
                                                            (lambda (_g2351223528_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2351223528_)))
                                                           (_g2351023575_
                                                            (lambda (_g2351223536_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2351223536_)
                          (let ((_e2352123539_ (gx#syntax-e _g2351223536_)))
                            (let ((_hd2352223543_ (##car _e2352123539_))
                                  (_tl2352323546_ (##cdr _e2352123539_)))
                              (if (gx#stx-datum? _hd2352223543_)
                                  (if (equal? (gx#stx-e _hd2352223543_) 'list:)
                                      (if (gx#stx-pair? _tl2352323546_)
                                          (let ((_e2352423549_
                                                 (gx#syntax-e _tl2352323546_)))
                                            (let ((_hd2352523553_
                                                   (##car _e2352423549_))
                                                  (_tl2352623556_
                                                   (##cdr _e2352423549_)))
                                              (if (gx#stx-null? _tl2352623556_)
                                                  ((lambda (_L23559_)
                                                     (cons 'if
                                                           (cons _L23495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_generate-list-vector23044_
                                _tgt23429_
                                _L23559_
                                (gx#datum->syntax '#f 'struct->list)
                                '1
                                _K23431_
                                _E23432_)
                               (cons _E23432_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2352523553_)
                                                  (_g2351123532_
                                                   _g2351223536_))))
                                          (_g2351123532_ _g2351223536_))
                                      (_g2351123532_ _g2351223536_))
                                  (_g2351123532_ _g2351223536_))))
                          (_g2351123532_ _g2351223536_))))
                   (_g2350923651_
                    (lambda (_g2351223579_)
                      (if (gx#stx-pair? _g2351223579_)
                          (let ((_e2351423582_ (gx#syntax-e _g2351223579_)))
                            (let ((_hd2351523586_ (##car _e2351423582_))
                                  (_tl2351623589_ (##cdr _e2351423582_)))
                              (if (gx#stx-datum? _hd2351523586_)
                                  (if (equal? (gx#stx-e _hd2351523586_)
                                              'simple:)
                                      (if (gx#stx-pair? _tl2351623589_)
                                          (let ((_e2351723592_
                                                 (gx#syntax-e _tl2351623589_)))
                                            (let ((_hd2351823596_
                                                   (##car _e2351723592_))
                                                  (_tl2351923599_
                                                   (##cdr _e2351723592_)))
                                              (if (gx#stx-null? _tl2351923599_)
                                                  ((lambda (_L23602_)
                                                     (let ((_K23615_
                                                            (_generate-simple-vector23043_
                                                             _tgt23429_
                                                             _L23602_
                                                             '1
                                                             _K23431_
                                                             _E23432_))
                                                           (_len23617_
                                                            (gx#stx-length
                                                             _L23602_)))
                                                       (if (if _rtd23434_
                                                               (fx<= _len23617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _fields23444_)
                       '#f)
                   (cons 'if
                         (cons _L23495_ (cons _K23615_ (cons _E23432_ '()))))
                   (let* ((_g2361923627_
                           (lambda (_g2362023623_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2362023623_)))
                          (_g2361823647_
                           (lambda (_g2362023631_)
                             ((lambda (_L23634_)
                                (let ()
                                  (cons 'if
                                        (cons _L23495_
                                              (cons (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx<)
                              (cons _L23634_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##vector-length)
                                                (cons _L23465_ '()))
                                          '())))
                        (cons _K23615_ (cons _E23432_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _E23432_ '()))))))
                              _g2362023631_))))
                     (_g2361823647_ _len23617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2351823596_)
                                                  (_g2351023575_
                                                   _g2351223579_))))
                                          (_g2351023575_ _g2351223579_))
                                      (_g2351023575_ _g2351223579_))
                                  (_g2351023575_ _g2351223579_))))
                          (_g2351023575_ _g2351223579_)))))
              (_g2350923651_ _body23430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2348123492_))))
                                     (_g2347923655_
                                      (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                           _info23427_)
                                          (let* ((_g2365923667_
                                                  (lambda (_g2366023663_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2366023663_)))
                                                 (_g2365823686_
                                                  (lambda (_g2366023671_)
                                                    ((lambda (_L23674_)
                                                       (let ()
                                                         (cons _L23674_
                                                               (cons _L23465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2366023671_))))
                                            (_g2365823686_
                                             (cadddr (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                                                      _info23427_))))
                                          (let* ((_g2369023705_
                                                  (lambda (_g2369123701_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2369123701_)))
                                                 (_g2368923749_
                                                  (lambda (_g2369123709_)
                                                    (if (gx#stx-pair?
                                                         _g2369123709_)
                                                        (let ((_e2369423712_
                                                               (gx#syntax-e
                                                                _g2369123709_)))
                                                          (let ((_hd2369523716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2369423712_))
                        (_tl2369623719_ (##cdr _e2369423712_)))
                    (if (gx#stx-pair? _tl2369623719_)
                        (let ((_e2369723722_ (gx#syntax-e _tl2369623719_)))
                          (let ((_hd2369823726_ (##car _e2369723722_))
                                (_tl2369923729_ (##cdr _e2369723722_)))
                            (if (gx#stx-null? _tl2369923729_)
                                ((lambda (_L23732_ _L23734_)
                                   (let ()
                                     (cons _L23732_
                                           (cons _L23734_
                                                 (cons _L23465_ '())))))
                                 _hd2369823726_
                                 _hd2369523716_)
                                (_g2369023705_ _g2369123709_))))
                        (_g2369023705_ _g2369123709_))))
                (_g2369023705_ _g2369123709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2368923749_
                                             (list (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                    _info23427_)
                                                   (if _final?23447_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-struct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2345123462_))))
                      (_g2344923753_ _tgt23429_))))
                 (_generate-class23046_
                  (lambda (_info23048_
                           _tgt23050_
                           _body23051_
                           _K23052_
                           _E23053_)
                    (letrec* ((_rtd23055_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info23048_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info23048_)
                                   '#f))
                              (_known-slot?23057_
                               (if _rtd23055_
                                   (lambda (_key23421_)
                                     (let ((_slot23424_
                                            (keyword->symbol
                                             (gx#stx-e _key23421_))))
                                       (_rtd-known-slot?23059_
                                        _rtd23055_
                                        _slot23424_)))
                                   false))
                              (_final?23058_
                               (if _rtd23055_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd23055_))
                                   '#f))
                              (_rtd-known-slot?23059_
                               (lambda (_rtd23408_ _slot23410_)
                                 (if _rtd23408_
                                     (let ((_$e23412_
                                            (memq _slot23410_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd23408_))))
                                       (if _$e23412_
                                           _$e23412_
                                           (ormap (lambda (_g2341523417_)
                                                    (_rtd-known-slot?23059_
                                                     _g2341523417_
                                                     _slot23410_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd23408_)))))
                                     '#f)))
                              (_recur23060_
                               (lambda (_klass23194_ _rest23196_)
                                 (let* ((_g2319923215_
                                         (lambda (_g2320023211_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2320023211_)))
                                        (_g2319823226_
                                         (lambda (_g2320023219_)
                                           ((lambda () _K23052_))))
                                        (_g2319723404_
                                         (lambda (_g2320023230_)
                                           (if (gx#stx-pair? _g2320023230_)
                                               (let ((_e2320423233_
                                                      (gx#syntax-e
                                                       _g2320023230_)))
                                                 (let ((_hd2320523237_
                                                        (##car _e2320423233_))
                                                       (_tl2320623240_
                                                        (##cdr _e2320423233_)))
                                                   (if (gx#stx-pair?
                                                        _tl2320623240_)
                                                       (let ((_e2320723243_
                                                              (gx#syntax-e
                                                               _tl2320623240_)))
                                                         (let ((_hd2320823247_
                                                                (##car _e2320723243_))
                                                               (_tl2320923250_
                                                                (##cdr _e2320723243_)))
                                                           ((lambda (_L23253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L23255_
                             _L23256_)
                      (let* ((_g2327223280_
                              (lambda (_g2327323276_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2327323276_)))
                             (_g2327123400_
                              (lambda (_g2327323284_)
                                ((lambda (_L23287_)
                                   (let ()
                                     (let* ((_g2329923307_
                                             (lambda (_g2330023303_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2330023303_)))
                                            (_g2329823396_
                                             (lambda (_g2330023311_)
                                               ((lambda (_L23314_)
                                                  (let ()
                                                    (let* ((_g2332723335_
                                                            (lambda (_g2332823331_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2332823331_)))
                                                           (_g2332623392_
                                                            (lambda (_g2332823339_)
                                                              ((lambda (_L23342_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2335523363_
                                   (lambda (_g2335623359_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2335623359_)))
                                  (_g2335423388_
                                   (lambda (_g2335623367_)
                                     ((lambda (_L23370_)
                                        (let ()
                                          (let ((_K23383_
                                                 (cons 'let
                                                       (cons (cons (cons _L23370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L23287_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L23342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate123040_
                            _L23370_
                            _L23255_
                            (_recur23060_ _klass23194_ _L23253_)
                            _E23053_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?23057_ _L23256_)
                                                (cons 'let
                                                      (cons (cons (cons _L23342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L23314_
                                                  (cons _L23256_ '())))
                                      '()))
                          '())
                    (cons _K23383_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'let
                                                      (cons (cons (cons _L23342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L23314_
                                                  (cons _L23256_ '())))
                                      '()))
                          '())
                    (cons (cons 'if
                                (cons _L23342_
                                      (cons _K23383_ (cons _E23053_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2335623367_))))
                             (_g2335423388_ (gx#genident 'e)))))
                       _g2332823339_))))
              (_g2332623392_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2330023311_))))
                                       (_g2329823396_ _klass23194_))))
                                 _g2327323284_))))
                        (_g2327123400_ _tgt23050_)))
                    _tl2320923250_
                    _hd2320823247_
                    _hd2320523237_)))
               (_g2319823226_ _g2320023230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2319823226_
                                                _g2320023230_)))))
                                   (_g2319723404_ _rest23196_)))))
                      (let* ((_g2306223070_
                              (lambda (_g2306323066_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2306323066_)))
                             (_g2306123190_
                              (lambda (_g2306323074_)
                                ((lambda (_L23077_)
                                   (let ()
                                     (let* ((_g2309223100_
                                             (lambda (_g2309323096_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2309323096_)))
                                            (_g2309123186_
                                             (lambda (_g2309323104_)
                                               ((lambda (_L23107_)
                                                  (let ()
                                                    (let* ((_g2312023128_
                                                            (lambda (_g2312123124_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2312123124_)))
                                                           (_g2311923182_
                                                            (lambda (_g2312123132_)
                                                              ((lambda (_L23135_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2314823156_
                                   (lambda (_g2314923152_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2314923152_)))
                                  (_g2314723178_
                                   (lambda (_g2314923160_)
                                     ((lambda (_L23163_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L23163_
                                                              (cons _L23135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L23107_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23077_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L23107_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur23060_ _L23077_ _body23051_)
                                        '())))
                      (cons _E23053_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2314923160_))))
                             (_g2314723178_
                              (if _final?23058_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2312123132_))))
              (_g2311923182_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info23048_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2309323104_))))
                                       (_g2309123186_ _tgt23050_))))
                                 _g2306323074_))))
                        (_g2306123190_ (gx#genident 'class)))))))
          (_generate123040_ _tgt23035_ _ptree23036_ _K23037_ _E23038_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx21970_ _tgt-lst21972_ _clauses21973_)
        (letrec ((_parse-body21975_
                  (lambda (_hd-len22855_)
                    (let _lp22858_ ((_rest22861_ _clauses21973_)
                                    (_r22863_ '()))
                      (let* ((_g2286622878_
                              (lambda (_g2286722874_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2286722874_)))
                             (_g2286522889_
                              (lambda (_g2286722882_) ((lambda () _r22863_))))
                             (_g2286423029_
                              (lambda (_g2286722893_)
                                (if (gx#stx-pair? _g2286722893_)
                                    (let ((_e2287022896_
                                           (gx#syntax-e _g2286722893_)))
                                      (let ((_hd2287122900_
                                             (##car _e2287022896_))
                                            (_tl2287222903_
                                             (##cdr _e2287022896_)))
                                        ((lambda (_L22906_ _L22908_)
                                           (let* ((_g2292522941_
                                                   (lambda (_g2292622937_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2292622937_)))
                                                  (_g2292422952_
                                                   (lambda (_g2292622945_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx21970_
                                                         _L22908_)))))
                                                  (_g2292322993_
                                                   (lambda (_g2292622956_)
                                                     (if (gx#stx-pair?
                                                          _g2292622956_)
                                                         (let ((_e2293322959_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2292622956_)))
                   (let ((_hd2293422963_ (##car _e2293322959_))
                         (_tl2293522966_ (##cdr _e2293322959_)))
                     ((lambda (_L22969_ _L22971_)
                        (if (if (gx#stx-list? _L22971_)
                                (if (fx= (gx#stx-length _L22971_)
                                         _hd-len22855_)
                                    (if (gx#stx-list? _L22969_)
                                        (not (gx#stx-null? _L22969_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp22858_
                             _L22906_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g2298322985_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g2298322985_
                                                   _stx21970_))
                                                _L22971_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L22969_)
                                                      (let ((_$e22989_
                                                             (gx#stx-source
                                                              _L22908_)))
                                                        (if _$e22989_
                                                            _$e22989_
                                                            (gx#stx-source
                                                             _stx21970_))))
                                                     '())))
                                   _r22863_))
                            (_g2292422952_ _g2292622956_)))
                      _tl2293522966_
                      _hd2293422963_)))
                 (_g2292422952_ _g2292622956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2292223025_
                                                   (lambda (_g2292622997_)
                                                     (if (gx#stx-pair?
                                                          _g2292622997_)
                                                         (let ((_e2292823000_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2292622997_)))
                   (let ((_hd2292923004_ (##car _e2292823000_))
                         (_tl2293023007_ (##cdr _e2292823000_)))
                     (if (gx#identifier? _hd2292923004_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g35622_|
                              _hd2292923004_)
                             ((lambda (_L23010_)
                                (if (if (gx#stx-list? _L23010_)
                                        (not (gx#stx-null? _L23010_))
                                        '#f)
                                    (if (gx#stx-null? _L22906_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L23010_)
                         (let ((_$e23021_ (gx#stx-source _L22908_)))
                           (if _$e23021_
                               _$e23021_
                               (gx#stx-source _stx21970_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r22863_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx21970_
                                         _L22908_))
                                    (_g2292322993_ _g2292622997_)))
                              _tl2293023007_)
                             (_g2292322993_ _g2292622997_))
                         (_g2292322993_ _g2292622997_))))
                 (_g2292322993_ _g2292622997_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2292223025_ _L22908_)))
                                         _tl2287222903_
                                         _hd2287122900_)))
                                    (_g2286522889_ _g2286722893_)))))
                        (_g2286423029_ _rest22861_)))))
                 (_generate-body21977_
                  (lambda (_body22640_)
                    (let* ((_g2264322651_
                            (lambda (_g2264422647_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2264422647_)))
                           (_g2264222851_
                            (lambda (_g2264422655_)
                              ((lambda (_L22658_)
                                 (let ()
                                   (let* ((_g2267022687_
                                           (lambda (_g2267122683_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2267122683_)))
                                          (_g2266922847_
                                           (lambda (_g2267122691_)
                                             (if (gx#stx-pair/null?
                                                  _g2267122691_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2267122691_)
                                                           '0)
                                                     (let ((_g35623_
                                                            (gx#syntax-split-splice
                                                             _g2267122691_
                                                             '0)))
                                                       (begin
                                                         (let ((_g35624_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g35623_)
                            (##vector-length _g35623_)
                            1)))
                   (if (not (##fx= _g35624_ 2))
                       (error "Context expects 2 values" _g35624_)))
                 (let ((_target2267322694_ (##vector-ref _g35623_ 0))
                       (_tl2267522697_ (##vector-ref _g35623_ 1)))
                   (if (gx#stx-null? _tl2267522697_)
                       (letrec ((_loop2267622700_
                                 (lambda (_hd2267422704_ _target2268022707_)
                                   (if (gx#stx-pair? _hd2267422704_)
                                       (let ((_e2267722710_
                                              (gx#syntax-e _hd2267422704_)))
                                         (let ((_lp-hd2267822714_
                                                (##car _e2267722710_))
                                               (_lp-tl2267922717_
                                                (##cdr _e2267722710_)))
                                           (_loop2267622700_
                                            _lp-tl2267922717_
                                            (cons _lp-hd2267822714_
                                                  _target2268022707_))))
                                       (let ((_target2268122720_
                                              (reverse _target2268022707_)))
                                         ((lambda (_L22724_)
                                            (let ()
                                              (let* ((_g2274122749_
                                                      (lambda (_g2274222745_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2274222745_)))
                                                     (_g2274022835_
                                                      (lambda (_g2274222753_)
                                                        ((lambda (_L22756_)
                                                           (let ()
                                                             (let* ((_g2276922777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2277022773_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2277022773_)))
                            (_g2276822831_
                             (lambda (_g2277022781_)
                               ((lambda (_L22784_)
                                  (let ()
                                    (let* ((_g2279722805_
                                            (lambda (_g2279822801_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2279822801_)))
                                           (_g2279622827_
                                            (lambda (_g2279822809_)
                                              ((lambda (_L22812_)
                                                 (let ()
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'begin-annotation)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@match)
                         (cons _L22812_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2279822809_))))
                                      (_g2279622827_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L22658_
                                                                (cons _L22756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L22784_ '())))
                                        (gx#stx-source _stx21970_))))))
                                _g2277022781_))))
                       (_g2276822831_
                        (_generate-clauses21978_
                         _body22640_
                         (cons _L22658_ '()))))))
                 _g2274222753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2274022835_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'error)
                                  (cons '"No clause matching"
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2283822841_
                                                          _g2283922844_)
                                                   (cons _g2283822841_
                                                         _g2283922844_))
                                                 '()
                                                 _L22724_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx21970_))))))
                                          _target2268122720_))))))
                         (_loop2267622700_ _target2267322694_ '()))
                       (_g2267022687_ _g2267122691_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2267022687_
                                                      _g2267122691_))
                                                 (_g2267022687_
                                                  _g2267122691_)))))
                                     (_g2266922847_ _tgt-lst21972_))))
                               _g2264422655_))))
                      (_g2264222851_ (gx#genident 'E)))))
                 (_generate-clauses21978_
                  (lambda (_rest22292_ _E22294_)
                    (let* ((_g2229822314_
                            (lambda (_g2229922310_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2229922310_)))
                           (_g2229722325_
                            (lambda (_g2229922318_)
                              ((lambda ()
                                 (cons 'begin-annotation
                                       (cons '@match-body
                                             (cons _E22294_ '())))))))
                           (_g2229622531_
                            (lambda (_g2229922329_)
                              (if (gx#stx-pair? _g2229922329_)
                                  (let ((_e2230622332_
                                         (gx#syntax-e _g2229922329_)))
                                    (let ((_hd2230722336_
                                           (##car _e2230622332_))
                                          (_tl2230822339_
                                           (##cdr _e2230622332_)))
                                      ((lambda (_L22342_ _L22344_)
                                         (let* ((_g2235722376_
                                                 (lambda (_g2235822372_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2235822372_)))
                                                (_g2235622527_
                                                 (lambda (_g2235822380_)
                                                   (if (gx#stx-pair?
                                                        _g2235822380_)
                                                       (let ((_e2236222383_
                                                              (gx#syntax-e
                                                               _g2235822380_)))
                                                         (let ((_hd2236322387_
                                                                (##car _e2236222383_))
                                                               (_tl2236422390_
                                                                (##cdr _e2236222383_)))
                                                           (if (gx#stx-pair?
                                                                _tl2236422390_)
                                                               (let ((_e2236522393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2236422390_)))
                         (let ((_hd2236622397_ (##car _e2236522393_))
                               (_tl2236722400_ (##cdr _e2236522393_)))
                           (if (gx#stx-pair? _tl2236722400_)
                               (let ((_e2236822403_
                                      (gx#syntax-e _tl2236722400_)))
                                 (let ((_hd2236922407_ (##car _e2236822403_))
                                       (_tl2237022410_ (##cdr _e2236822403_)))
                                   (if (gx#stx-null? _tl2237022410_)
                                       ((lambda (_L22413_ _L22415_ _L22416_)
                                          (if (gx#stx-e _L22415_)
                                              (let* ((_g2243322448_
                                                      (lambda (_g2243422444_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2243422444_)))
                                                     (_g2243222493_
                                                      (lambda (_g2243422452_)
                                                        (if (gx#stx-pair?
                                                             _g2243422452_)
                                                            (let ((_e2243722455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2243422452_)))
                      (let ((_hd2243822459_ (##car _e2243722455_))
                            (_tl2243922462_ (##cdr _e2243722455_)))
                        (if (gx#stx-pair? _tl2243922462_)
                            (let ((_e2244022465_ (gx#syntax-e _tl2243922462_)))
                              (let ((_hd2244122469_ (##car _e2244022465_))
                                    (_tl2244222472_ (##cdr _e2244022465_)))
                                (if (gx#stx-null? _tl2244222472_)
                                    ((lambda (_L22475_ _L22477_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _L22416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '() (cons _L22477_ '())))
                               '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L22475_ '())))))
                                     _hd2244122469_
                                     _hd2243822459_)
                                    (_g2243322448_ _g2243422452_))))
                            (_g2243322448_ _g2243422452_))))
                    (_g2243322448_ _g2243422452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2243222493_
                                                 (list (_generate121979_
                                                        _L22415_
                                                        _L22413_
                                                        _E22294_)
                                                       (_generate-clauses21978_
                                                        _L22342_
                                                        (cons _L22416_ '())))))
                                              (let* ((_g2249722505_
                                                      (lambda (_g2249822501_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2249822501_)))
                                                     (_g2249622523_
                                                      (lambda (_g2249822509_)
                                                        ((lambda (_L22512_)
                                                           (let ()
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let)
                           (cons (cons (cons _L22416_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@match-else)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons '() (cons _L22413_ '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons _L22512_ '())))))
                 _g2249822509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2249622523_
                                                 (_generate-clauses21978_
                                                  _L22342_
                                                  (cons _L22416_ '()))))))
                                        _hd2236922407_
                                        _hd2236622397_
                                        _hd2236322387_)
                                       (_g2235722376_ _g2235822380_))))
                               (_g2235722376_ _g2235822380_))))
                       (_g2235722376_ _g2235822380_))))
               (_g2235722376_ _g2235822380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2235622527_ _L22344_)))
                                       _tl2230822339_
                                       _hd2230722336_)))
                                  (_g2229722325_ _g2229922329_))))
                           (_g2229522636_
                            (lambda (_g2229922535_)
                              (if (gx#stx-pair? _g2229922535_)
                                  (let ((_e2230122538_
                                         (gx#syntax-e _g2229922535_)))
                                    (let ((_hd2230222542_
                                           (##car _e2230122538_))
                                          (_tl2230322545_
                                           (##cdr _e2230122538_)))
                                      (if (gx#stx-null? _tl2230322545_)
                                          ((lambda (_L22548_)
                                             (let* ((_g2255922577_
                                                     (lambda (_g2256022573_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2256022573_)))
                                                    (_g2255822632_
                                                     (lambda (_g2256022581_)
                                                       (if (gx#stx-pair?
                                                            _g2256022581_)
                                                           (let ((_e2256322584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2256022581_)))
                     (let ((_hd2256422588_ (##car _e2256322584_))
                           (_tl2256522591_ (##cdr _e2256322584_)))
                       (if (gx#stx-pair? _tl2256522591_)
                           (let ((_e2256622594_ (gx#syntax-e _tl2256522591_)))
                             (let ((_hd2256722598_ (##car _e2256622594_))
                                   (_tl2256822601_ (##cdr _e2256622594_)))
                               (if (gx#stx-pair? _tl2256822601_)
                                   (let ((_e2256922604_
                                          (gx#syntax-e _tl2256822601_)))
                                     (let ((_hd2257022608_
                                            (##car _e2256922604_))
                                           (_tl2257122611_
                                            (##cdr _e2256922604_)))
                                       (if (gx#stx-null? _tl2257122611_)
                                           ((lambda (_L22614_ _L22616_)
                                              (cons 'begin-annotation
                                                    (cons '@match-body
                                                          (cons (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22616_)
                            (_generate121979_ _L22616_ _L22614_ _E22294_)
                            _L22614_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2257022608_
                                            _hd2256722598_)
                                           (_g2255922577_ _g2256022581_))))
                                   (_g2255922577_ _g2256022581_))))
                           (_g2255922577_ _g2256022581_))))
                   (_g2255922577_ _g2256022581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2255822632_ _L22548_)))
                                           _hd2230222542_)
                                          (_g2229622531_ _g2229922535_))))
                                  (_g2229622531_ _g2229922535_)))))
                      (_g2229522636_ _rest22292_))))
                 (_generate121979_
                  (lambda (_clause21981_ _body21983_ _E21984_)
                    (let _recur21986_ ((_rest21989_ _clause21981_)
                                       (_rest-targets21991_ _tgt-lst21972_))
                      (let* ((_g2199422006_
                              (lambda (_g2199522002_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2199522002_)))
                             (_g2199322017_
                              (lambda (_g2199522010_)
                                ((lambda () _body21983_))))
                             (_g2199222288_
                              (lambda (_g2199522021_)
                                (if (gx#stx-pair? _g2199522021_)
                                    (let ((_e2199822024_
                                           (gx#syntax-e _g2199522021_)))
                                      (let ((_hd2199922028_
                                             (##car _e2199822024_))
                                            (_tl2200022031_
                                             (##cdr _e2199822024_)))
                                        ((lambda (_L22034_ _L22036_)
                                           (let* ((_g2205322065_
                                                   (lambda (_g2205422061_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2205422061_)))
                                                  (_g2205222284_
                                                   (lambda (_g2205422069_)
                                                     (if (gx#stx-pair?
                                                          _g2205422069_)
                                                         (let ((_e2205722072_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2205422069_)))
                   (let ((_hd2205822076_ (##car _e2205722072_))
                         (_tl2205922079_ (##cdr _e2205722072_)))
                     ((lambda (_L22082_ _L22084_)
                        (let* ((_g2209622104_
                                (lambda (_g2209722100_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2209722100_)))
                               (_g2209522280_
                                (lambda (_g2209722108_)
                                  ((lambda (_L22111_)
                                     (let ()
                                       (let* ((_g2212322140_
                                               (lambda (_g2212422136_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2212422136_)))
                                              (_g2212222276_
                                               (lambda (_g2212422144_)
                                                 (if (gx#stx-pair/null?
                                                      _g2212422144_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2212422144_)
                                                               '0)
                                                         (let ((_g35625_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2212422144_
                         '0)))
                   (begin
                     (let ((_g35626_
                            (if (##values? _g35625_)
                                (##vector-length _g35625_)
                                1)))
                       (if (not (##fx= _g35626_ 2))
                           (error "Context expects 2 values" _g35626_)))
                     (let ((_target2212622147_ (##vector-ref _g35625_ 0))
                           (_tl2212822150_ (##vector-ref _g35625_ 1)))
                       (if (gx#stx-null? _tl2212822150_)
                           (letrec ((_loop2212922153_
                                     (lambda (_hd2212722157_ _var2213322160_)
                                       (if (gx#stx-pair? _hd2212722157_)
                                           (let ((_e2213022163_
                                                  (gx#syntax-e
                                                   _hd2212722157_)))
                                             (let ((_lp-hd2213122167_
                                                    (##car _e2213022163_))
                                                   (_lp-tl2213222170_
                                                    (##cdr _e2213022163_)))
                                               (_loop2212922153_
                                                _lp-tl2213222170_
                                                (cons _lp-hd2213122167_
                                                      _var2213322160_))))
                                           (let ((_var2213422173_
                                                  (reverse _var2213322160_)))
                                             ((lambda (_L22177_)
                                                (let ()
                                                  (let* ((_g2219422202_
                                                          (lambda (_g2219522198_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2219522198_)))
                                                         (_g2219322272_
                                                          (lambda (_g2219522206_)
                                                            ((lambda (_L22209_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g2222222230_
                                 (lambda (_g2222322226_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2222322226_)))
                                (_g2222122260_
                                 (lambda (_g2222322234_)
                                   ((lambda (_L22237_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L22111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g2225122254_
                                                              _g2225222257_)
                                                       (cons _g2225122254_
                                                             _g2225222257_))
                                                     '()
                                                     _L22177_))
                                            (cons _L22209_ '())))
                                '()))
                    '())
              (cons _L22237_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g2222322234_))))
                           (_g2222122260_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx21970_
                             _L22084_
                             _L22036_
                             (cons _L22111_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2226322266_
                                                     _g2226422269_)
                                              (cons _g2226322266_
                                                    _g2226422269_))
                                            '()
                                            _L22177_)))
                             _E21984_)))))
                     _g2219522206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2219322272_
                                                     (_recur21986_
                                                      _L22034_
                                                      _L22082_)))))
                                              _var2213422173_))))))
                             (_loop2212922153_ _target2212622147_ '()))
                           (_g2212322140_ _g2212422144_)))))
                 (_g2212322140_ _g2212422144_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2212322140_
                                                      _g2212422144_)))))
                                         (_g2212222276_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L22036_)))))
                                   _g2209722108_))))
                          (_g2209522280_ (gx#genident 'K))))
                      _tl2205922079_
                      _hd2205822076_)))
                 (_g2205322065_ _g2205422069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2205222284_
                                              _rest-targets21991_)))
                                         _tl2200022031_
                                         _hd2199922028_)))
                                    (_g2199322017_ _g2199522021_)))))
                        (_g2199222288_ _rest21989_))))))
          (_generate-body21977_
           (_parse-body21975_ (gx#stx-length _tgt-lst21972_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21872_ _tgt21874_ _clauses21875_)
        (letrec ((_reclause21877_
                  (lambda (_clause21880_)
                    (let* ((_g2188521900_
                            (lambda (_g2188621896_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2188621896_)))
                           (_g2188421911_
                            (lambda (_g2188621904_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx21872_
                                  _clause21880_)))))
                           (_g2188321945_
                            (lambda (_g2188621915_)
                              (if (gx#stx-pair? _g2188621915_)
                                  (let ((_e2189221918_
                                         (gx#syntax-e _g2188621915_)))
                                    (let ((_hd2189321922_
                                           (##car _e2189221918_))
                                          (_tl2189421925_
                                           (##cdr _e2189221918_)))
                                      ((lambda (_L21928_ _L21930_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L21930_ '()) _L21928_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl2189421925_
                                       _hd2189321922_)))
                                  (_g2188421911_ _g2188621915_))))
                           (_g2188221966_
                            (lambda (_g2188621949_)
                              (if (gx#stx-pair? _g2188621949_)
                                  (let ((_e2188721952_
                                         (gx#syntax-e _g2188621949_)))
                                    (let ((_hd2188821956_
                                           (##car _e2188721952_))
                                          (_tl2188921959_
                                           (##cdr _e2188721952_)))
                                      (if (gx#identifier? _hd2188821956_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g35627_|
                                               _hd2188821956_)
                                              ((lambda () _clause21880_))
                                              (_g2188321945_ _g2188621949_))
                                          (_g2188321945_ _g2188621949_))))
                                  (_g2188321945_ _g2188621949_)))))
                      (_g2188221966_ _clause21880_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21872_
           (cons _tgt21874_ '())
           (gx#stx-map _reclause21877_ _clauses21875_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx29208_)
        (let* ((_g2921329242_
                (lambda (_g2921429238_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2921429238_)))
               (_g2921229350_
                (lambda (_g2921429246_)
                  (if (gx#stx-pair? _g2921429246_)
                      (let ((_e2923129249_ (gx#syntax-e _g2921429246_)))
                        (let ((_hd2923229253_ (##car _e2923129249_))
                              (_tl2923329256_ (##cdr _e2923129249_)))
                          (if (gx#stx-pair? _tl2923329256_)
                              (let ((_e2923429259_
                                     (gx#syntax-e _tl2923329256_)))
                                (let ((_hd2923529263_ (##car _e2923429259_))
                                      (_tl2923629266_ (##cdr _e2923429259_)))
                                  ((lambda (_L29269_ _L29271_)
                                     (if (gx#stx-list? _L29269_)
                                         (let* ((_g2928529293_
                                                 (lambda (_g2928629289_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2928629289_)))
                                                (_g2928429346_
                                                 (lambda (_g2928629297_)
                                                   ((lambda (_L29300_)
                                                      (let ()
                                                        (let* ((_g2931229320_
                                                                (lambda (_g2931329316_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2931329316_)))
                       (_g2931129342_
                        (lambda (_g2931329324_)
                          ((lambda (_L29327_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L29300_
                                                         (cons _L29271_ '()))
                                                   '())
                                             (cons _L29327_ '()))))))
                           _g2931329324_))))
                  (_g2931129342_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx29208_
                    _L29300_
                    _L29269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2928629297_))))
                                           (_g2928429346_
                                            (gx#genident _L29271_)))
                                         (_g2921329242_ _g2921429246_)))
                                   _tl2923629266_
                                   _hd2923529263_)))
                              (_g2921329242_ _g2921429246_))))
                      (_g2921329242_ _g2921429246_))))
               (_g2921129455_
                (lambda (_g2921429354_)
                  (if (gx#stx-pair? _g2921429354_)
                      (let ((_e2922329357_ (gx#syntax-e _g2921429354_)))
                        (let ((_hd2922429361_ (##car _e2922329357_))
                              (_tl2922529364_ (##cdr _e2922329357_)))
                          (if (gx#stx-pair? _tl2922529364_)
                              (let ((_e2922629367_
                                     (gx#syntax-e _tl2922529364_)))
                                (let ((_hd2922729371_ (##car _e2922629367_))
                                      (_tl2922829374_ (##cdr _e2922629367_)))
                                  (if (gx#identifier? _hd2922729371_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35628_|
                                           _hd2922729371_)
                                          ((lambda (_L29377_)
                                             (if (gx#stx-list? _L29377_)
                                                 (let* ((_g2939029398_
                                                         (lambda (_g2939129394_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2939129394_)))
                                                        (_g2938929451_
                                                         (lambda (_g2939129402_)
                                                           ((lambda (_L29405_)
                                                              (let ()
                                                                (let* ((_g2941729425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2941829421_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2941829421_)))
                               (_g2941629447_
                                (lambda (_g2941829429_)
                                  ((lambda (_L29432_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L29405_
                                                     (cons _L29432_ '()))))))
                                   _g2941829429_))))
                          (_g2941629447_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L29405_ _L29377_))
                            (gx#stx-source _stx29208_))))))
                    _g2939129402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2938929451_
                                                    (gx#genident 'args)))
                                                 (_g2921229350_
                                                  _g2921429354_)))
                                           _tl2922829374_)
                                          (_g2921229350_ _g2921429354_))
                                      (_g2921229350_ _g2921429354_))))
                              (_g2921229350_ _g2921429354_))))
                      (_g2921229350_ _g2921429354_))))
               (_g2921029560_
                (lambda (_g2921429459_)
                  (if (gx#stx-pair? _g2921429459_)
                      (let ((_e2921629462_ (gx#syntax-e _g2921429459_)))
                        (let ((_hd2921729466_ (##car _e2921629462_))
                              (_tl2921829469_ (##cdr _e2921629462_)))
                          (if (gx#stx-pair? _tl2921829469_)
                              (let ((_e2921929472_
                                     (gx#syntax-e _tl2921829469_)))
                                (let ((_hd2922029476_ (##car _e2921929472_))
                                      (_tl2922129479_ (##cdr _e2921929472_)))
                                  (if (gx#identifier? _hd2922029476_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35629_|
                                           _hd2922029476_)
                                          ((lambda (_L29482_)
                                             (if (gx#stx-list? _L29482_)
                                                 (let* ((_g2949529503_
                                                         (lambda (_g2949629499_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2949629499_)))
                                                        (_g2949429556_
                                                         (lambda (_g2949629507_)
                                                           ((lambda (_L29510_)
                                                              (let ()
                                                                (let* ((_g2952229530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2952329526_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2952329526_)))
                               (_g2952129552_
                                (lambda (_g2952329534_)
                                  ((lambda (_L29537_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L29510_ '())
                                                     (cons _L29537_ '()))))))
                                   _g2952329534_))))
                          (_g2952129552_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L29510_ _L29482_))
                            (gx#stx-source _stx29208_))))))
                    _g2949629507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2949429556_
                                                    (gx#genident 'e)))
                                                 (_g2921129455_
                                                  _g2921429459_)))
                                           _tl2922129479_)
                                          (_g2921129455_ _g2921429459_))
                                      (_g2921129455_ _g2921429459_))))
                              (_g2921129455_ _g2921429459_))))
                      (_g2921129455_ _g2921429459_)))))
          (_g2921029560_ _stx29208_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx29564_)
        (let* ((_g2956729591_
                (lambda (_g2956829587_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2956829587_)))
               (_g2956629803_
                (lambda (_g2956829595_)
                  (if (gx#stx-pair? _g2956829595_)
                      (let ((_e2957129598_ (gx#syntax-e _g2956829595_)))
                        (let ((_hd2957229602_ (##car _e2957129598_))
                              (_tl2957329605_ (##cdr _e2957129598_)))
                          (if (gx#stx-pair? _tl2957329605_)
                              (let ((_e2957429608_
                                     (gx#syntax-e _tl2957329605_)))
                                (let ((_hd2957529612_ (##car _e2957429608_))
                                      (_tl2957629615_ (##cdr _e2957429608_)))
                                  (if (gx#stx-pair/null? _hd2957529612_)
                                      (if (fx>= (gx#stx-length _hd2957529612_)
                                                '0)
                                          (let ((_g35630_
                                                 (gx#syntax-split-splice
                                                  _hd2957529612_
                                                  '0)))
                                            (begin
                                              (let ((_g35631_
                                                     (if (##values? _g35630_)
                                                         (##vector-length
                                                          _g35630_)
                                                         1)))
                                                (if (not (##fx= _g35631_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35631_)))
                                              (let ((_target2957729618_
                                                     (##vector-ref _g35630_ 0))
                                                    (_tl2957929621_
                                                     (##vector-ref
                                                      _g35630_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2957929621_)
                                                    (letrec ((_loop2958029624_
                                                              (lambda (_hd2957829628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2958429631_)
                        (if (gx#stx-pair? _hd2957829628_)
                            (let ((_e2958129634_ (gx#syntax-e _hd2957829628_)))
                              (let ((_lp-hd2958229638_ (##car _e2958129634_))
                                    (_lp-tl2958329641_ (##cdr _e2958129634_)))
                                (_loop2958029624_
                                 _lp-tl2958329641_
                                 (cons _lp-hd2958229638_ _e2958429631_))))
                            (let ((_e2958529644_ (reverse _e2958429631_)))
                              ((lambda (_L29648_ _L29650_)
                                 (if (gx#stx-list? _L29648_)
                                     (let* ((_g2966829685_
                                             (lambda (_g2966929681_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2966929681_)))
                                            (_g2966729791_
                                             (lambda (_g2966929689_)
                                               (if (gx#stx-pair/null?
                                                    _g2966929689_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2966929689_)
                                                             '0)
                                                       (let ((_g35632_
                                                              (gx#syntax-split-splice
                                                               _g2966929689_
                                                               '0)))
                                                         (begin
                                                           (let ((_g35633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g35632_)
                              (##vector-length _g35632_)
                              1)))
                     (if (not (##fx= _g35633_ 2))
                         (error "Context expects 2 values" _g35633_)))
                   (let ((_target2967129692_ (##vector-ref _g35632_ 0))
                         (_tl2967329695_ (##vector-ref _g35632_ 1)))
                     (if (gx#stx-null? _tl2967329695_)
                         (letrec ((_loop2967429698_
                                   (lambda (_hd2967229702_ _$e2967829705_)
                                     (if (gx#stx-pair? _hd2967229702_)
                                         (let ((_e2967529708_
                                                (gx#syntax-e _hd2967229702_)))
                                           (let ((_lp-hd2967629712_
                                                  (##car _e2967529708_))
                                                 (_lp-tl2967729715_
                                                  (##cdr _e2967529708_)))
                                             (_loop2967429698_
                                              _lp-tl2967729715_
                                              (cons _lp-hd2967629712_
                                                    _$e2967829705_))))
                                         (let ((_$e2967929718_
                                                (reverse _$e2967829705_)))
                                           ((lambda (_L29722_)
                                              (let ()
                                                (let* ((_g2973829746_
                                                        (lambda (_g2973929742_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2973929742_)))
                                                       (_g2973729779_
                                                        (lambda (_g2973929750_)
                                                          ((lambda (_L29753_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L29650_
                                        _L29722_)
                                       (foldr (lambda (_g2976729771_
                                                       _g2976829774_
                                                       _g2976929776_)
                                                (cons (cons _g2976829774_
                                                            (cons _g2976729771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2976929776_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L29650_
                                              _L29722_))
                                     (cons _L29753_ '()))))))
                   _g2973929750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2973729779_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx29564_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2978229785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2978329788_)
                       (cons _g2978229785_ _g2978329788_))
                     '()
                     _L29722_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L29648_)))))
                                            _$e2967929718_))))))
                           (_loop2967429698_ _target2967129692_ '()))
                         (_g2966829685_ _g2966929689_)))))
               (_g2966829685_ _g2966929689_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2966829685_
                                                    _g2966929689_)))))
                                       (_g2966729791_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2979429797_
                                                           _g2979529800_)
                                                    (cons _g2979429797_
                                                          _g2979529800_))
                                                  '()
                                                  _L29650_)))))
                                     (_g2956729591_ _g2956829595_)))
                               _tl2957629615_
                               _e2958529644_))))))
              (_loop2958029624_ _target2957729618_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2956729591_
                                                     _g2956829595_)))))
                                          (_g2956729591_ _g2956829595_))
                                      (_g2956729591_ _g2956829595_))))
                              (_g2956729591_ _g2956829595_))))
                      (_g2956729591_ _g2956829595_)))))
          (_g2956629803_ _stx29564_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx29809_)
        (let* ((_g2981529898_
                (lambda (_g2981629894_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2981629894_)))
               (_g2981430059_
                (lambda (_g2981629902_)
                  (if (gx#stx-pair? _g2981629902_)
                      (let ((_e2986129905_ (gx#syntax-e _g2981629902_)))
                        (let ((_hd2986229909_ (##car _e2986129905_))
                              (_tl2986329912_ (##cdr _e2986129905_)))
                          (if (gx#stx-pair? _tl2986329912_)
                              (let ((_e2986429915_
                                     (gx#syntax-e _tl2986329912_)))
                                (let ((_hd2986529919_ (##car _e2986429915_))
                                      (_tl2986629922_ (##cdr _e2986429915_)))
                                  (if (gx#stx-pair/null? _hd2986529919_)
                                      (if (fx>= (gx#stx-length _hd2986529919_)
                                                '0)
                                          (let ((_g35634_
                                                 (gx#syntax-split-splice
                                                  _hd2986529919_
                                                  '0)))
                                            (begin
                                              (let ((_g35635_
                                                     (if (##values? _g35634_)
                                                         (##vector-length
                                                          _g35634_)
                                                         1)))
                                                (if (not (##fx= _g35635_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35635_)))
                                              (let ((_target2986729925_
                                                     (##vector-ref _g35634_ 0))
                                                    (_tl2986929928_
                                                     (##vector-ref
                                                      _g35634_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2986929928_)
                                                    (letrec ((_loop2987029931_
                                                              (lambda (_hd2986829935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2987429938_
                               _hd2987529940_)
                        (if (gx#stx-pair? _hd2986829935_)
                            (let ((_e2987129943_ (gx#syntax-e _hd2986829935_)))
                              (let ((_lp-hd2987229947_ (##car _e2987129943_))
                                    (_lp-tl2987329950_ (##cdr _e2987129943_)))
                                (if (gx#stx-pair? _lp-hd2987229947_)
                                    (let ((_e2987829953_
                                           (gx#syntax-e _lp-hd2987229947_)))
                                      (let ((_hd2987929957_
                                             (##car _e2987829953_))
                                            (_tl2988029960_
                                             (##cdr _e2987829953_)))
                                        (if (gx#stx-pair? _tl2988029960_)
                                            (let ((_e2988129963_
                                                   (gx#syntax-e
                                                    _tl2988029960_)))
                                              (let ((_hd2988229967_
                                                     (##car _e2988129963_))
                                                    (_tl2988329970_
                                                     (##cdr _e2988129963_)))
                                                (if (gx#stx-null?
                                                     _tl2988329970_)
                                                    (_loop2987029931_
                                                     _lp-tl2987329950_
                                                     (cons _hd2988229967_
                                                           _expr2987429938_)
                                                     (cons _hd2987929957_
                                                           _hd2987529940_))
                                                    (_g2981529898_
                                                     _g2981629902_))))
                                            (_g2981529898_ _g2981629902_))))
                                    (_g2981529898_ _g2981629902_))))
                            (let ((_expr2987629973_ (reverse _expr2987429938_))
                                  (_hd2987729976_ (reverse _hd2987529940_)))
                              (if (gx#stx-pair/null? _tl2986629922_)
                                  (if (fx>= (gx#stx-length _tl2986629922_) '0)
                                      (let ((_g35636_
                                             (gx#syntax-split-splice
                                              _tl2986629922_
                                              '0)))
                                        (begin
                                          (let ((_g35637_
                                                 (if (##values? _g35636_)
                                                     (##vector-length _g35636_)
                                                     1)))
                                            (if (not (##fx= _g35637_ 2))
                                                (error "Context expects 2 values"
                                                       _g35637_)))
                                          (let ((_target2988429979_
                                                 (##vector-ref _g35636_ 0))
                                                (_tl2988629982_
                                                 (##vector-ref _g35636_ 1)))
                                            (if (gx#stx-null? _tl2988629982_)
                                                (letrec ((_loop2988729985_
                                                          (lambda (_hd2988529989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2989129992_)
                    (if (gx#stx-pair? _hd2988529989_)
                        (let ((_e2988829995_ (gx#syntax-e _hd2988529989_)))
                          (let ((_lp-hd2988929999_ (##car _e2988829995_))
                                (_lp-tl2989030002_ (##cdr _e2988829995_)))
                            (_loop2988729985_
                             _lp-tl2989030002_
                             (cons _lp-hd2988929999_ _body2989129992_))))
                        (let ((_body2989230005_ (reverse _body2989129992_)))
                          ((lambda (_L30009_ _L30011_ _L30012_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g3003430041_
                                                           _g3003530044_)
                                                    (cons _g3003430041_
                                                          _g3003530044_))
                                                  '()
                                                  _L30011_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g3003630047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3003730050_)
                        (cons _g3003630047_ _g3003730050_))
                      '()
                      _L30012_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3003830053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3003930056_)
                        (cons _g3003830053_ _g3003930056_))
                      '()
                      _L30009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2989230005_
                           _expr2987629973_
                           _hd2987729976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2988729985_
                                                   _target2988429979_
                                                   '()))
                                                (_g2981529898_
                                                 _g2981629902_)))))
                                      (_g2981529898_ _g2981629902_))
                                  (_g2981529898_ _g2981629902_)))))))
              (_loop2987029931_ _target2986729925_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2981529898_
                                                     _g2981629902_)))))
                                          (_g2981529898_ _g2981629902_))
                                      (_g2981529898_ _g2981629902_))))
                              (_g2981529898_ _g2981629902_))))
                      (_g2981529898_ _g2981629902_))))
               (_g2981330171_
                (lambda (_g2981630063_)
                  (if (gx#stx-pair? _g2981630063_)
                      (let ((_e2983730066_ (gx#syntax-e _g2981630063_)))
                        (let ((_hd2983830070_ (##car _e2983730066_))
                              (_tl2983930073_ (##cdr _e2983730066_)))
                          (if (gx#stx-pair? _tl2983930073_)
                              (let ((_e2984030076_
                                     (gx#syntax-e _tl2983930073_)))
                                (let ((_hd2984130080_ (##car _e2984030076_))
                                      (_tl2984230083_ (##cdr _e2984030076_)))
                                  (if (gx#stx-pair? _hd2984130080_)
                                      (let ((_e2984330086_
                                             (gx#syntax-e _hd2984130080_)))
                                        (let ((_hd2984430090_
                                               (##car _e2984330086_))
                                              (_tl2984530093_
                                               (##cdr _e2984330086_)))
                                          (if (gx#stx-pair? _tl2984530093_)
                                              (let ((_e2984630096_
                                                     (gx#syntax-e
                                                      _tl2984530093_)))
                                                (let ((_hd2984730100_
                                                       (##car _e2984630096_))
                                                      (_tl2984830103_
                                                       (##cdr _e2984630096_)))
                                                  (if (gx#stx-null?
                                                       _tl2984830103_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2984230083_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2984230083_)
                            '0)
                      (let ((_g35638_
                             (gx#syntax-split-splice _tl2984230083_ '0)))
                        (begin
                          (let ((_g35639_
                                 (if (##values? _g35638_)
                                     (##vector-length _g35638_)
                                     1)))
                            (if (not (##fx= _g35639_ 2))
                                (error "Context expects 2 values" _g35639_)))
                          (let ((_target2984930106_ (##vector-ref _g35638_ 0))
                                (_tl2985130109_ (##vector-ref _g35638_ 1)))
                            (if (gx#stx-null? _tl2985130109_)
                                (letrec ((_loop2985230112_
                                          (lambda (_hd2985030116_
                                                   _body2985630119_)
                                            (if (gx#stx-pair? _hd2985030116_)
                                                (let ((_e2985330122_
                                                       (gx#syntax-e
                                                        _hd2985030116_)))
                                                  (let ((_lp-hd2985430126_
                                                         (##car _e2985330122_))
                                                        (_lp-tl2985530129_
                                                         (##cdr _e2985330122_)))
                                                    (_loop2985230112_
                                                     _lp-tl2985530129_
                                                     (cons _lp-hd2985430126_
                                                           _body2985630119_))))
                                                (let ((_body2985730132_
                                                       (reverse _body2985630119_)))
                                                  ((lambda (_L30136_
                                                            _L30138_
                                                            _L30139_
                                                            _L30140_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L30139_)
                                                         (cons _L30140_
                                                               (cons (cons (cons _L30139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L30138_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g3016230165_ _g3016330168_)
                                        (cons _g3016230165_ _g3016330168_))
                                      '()
                                      _L30136_))))
                 (_g2981430059_ _g2981630063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2985730132_
                                                   _hd2984730100_
                                                   _hd2984430090_
                                                   _hd2983830070_))))))
                                  (_loop2985230112_ _target2984930106_ '()))
                                (_g2981430059_ _g2981630063_)))))
                      (_g2981430059_ _g2981630063_))
                  (_g2981430059_ _g2981630063_))
              (_g2981430059_ _g2981630063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2981430059_ _g2981630063_))))
                                      (_g2981430059_ _g2981630063_))))
                              (_g2981430059_ _g2981630063_))))
                      (_g2981430059_ _g2981630063_))))
               (_g2981230253_
                (lambda (_g2981630175_)
                  (if (gx#stx-pair? _g2981630175_)
                      (let ((_e2981830178_ (gx#syntax-e _g2981630175_)))
                        (let ((_hd2981930182_ (##car _e2981830178_))
                              (_tl2982030185_ (##cdr _e2981830178_)))
                          (if (gx#stx-pair? _tl2982030185_)
                              (let ((_e2982130188_
                                     (gx#syntax-e _tl2982030185_)))
                                (let ((_hd2982230192_ (##car _e2982130188_))
                                      (_tl2982330195_ (##cdr _e2982130188_)))
                                  (if (gx#stx-null? _hd2982230192_)
                                      (if (gx#stx-pair/null? _tl2982330195_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2982330195_)
                                                    '0)
                                              (let ((_g35640_
                                                     (gx#syntax-split-splice
                                                      _tl2982330195_
                                                      '0)))
                                                (begin
                                                  (let ((_g35641_
                                                         (if (##values?
                                                              _g35640_)
                                                             (##vector-length
                                                              _g35640_)
                                                             1)))
                                                    (if (not (##fx= _g35641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2982430198_
                                                         (##vector-ref
                                                          _g35640_
                                                          0))
                                                        (_tl2982630201_
                                                         (##vector-ref
                                                          _g35640_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2982630201_)
                                                        (letrec ((_loop2982730204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2982530208_ _body2983130211_)
                            (if (gx#stx-pair? _hd2982530208_)
                                (let ((_e2982830214_
                                       (gx#syntax-e _hd2982530208_)))
                                  (let ((_lp-hd2982930218_
                                         (##car _e2982830214_))
                                        (_lp-tl2983030221_
                                         (##cdr _e2982830214_)))
                                    (_loop2982730204_
                                     _lp-tl2983030221_
                                     (cons _lp-hd2982930218_
                                           _body2983130211_))))
                                (let ((_body2983230224_
                                       (reverse _body2983130211_)))
                                  ((lambda (_L30228_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g3024430247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3024530250_)
                    (cons _g3024430247_ _g3024530250_))
                  '()
                  _L30228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2983230224_))))))
                  (_loop2982730204_ _target2982430198_ '()))
                (_g2981330171_ _g2981630175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2981330171_ _g2981630175_))
                                          (_g2981330171_ _g2981630175_))
                                      (_g2981330171_ _g2981630175_))))
                              (_g2981330171_ _g2981630175_))))
                      (_g2981330171_ _g2981630175_)))))
          (_g2981230253_ _$stx29809_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx30261_)
        (let* ((_g3026630318_
                (lambda (_g3026730314_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3026730314_)))
               (_g3026530401_
                (lambda (_g3026730322_)
                  (if (gx#stx-pair? _g3026730322_)
                      (let ((_e3029830325_ (gx#syntax-e _g3026730322_)))
                        (let ((_hd3029930329_ (##car _e3029830325_))
                              (_tl3030030332_ (##cdr _e3029830325_)))
                          (if (gx#stx-pair? _tl3030030332_)
                              (let ((_e3030130335_
                                     (gx#syntax-e _tl3030030332_)))
                                (let ((_hd3030230339_ (##car _e3030130335_))
                                      (_tl3030330342_ (##cdr _e3030130335_)))
                                  (if (gx#stx-null? _hd3030230339_)
                                      (if (gx#stx-pair/null? _tl3030330342_)
                                          (if (fx>= (gx#stx-length
                                                     _tl3030330342_)
                                                    '0)
                                              (let ((_g35642_
                                                     (gx#syntax-split-splice
                                                      _tl3030330342_
                                                      '0)))
                                                (begin
                                                  (let ((_g35643_
                                                         (if (##values?
                                                              _g35642_)
                                                             (##vector-length
                                                              _g35642_)
                                                             1)))
                                                    (if (not (##fx= _g35643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35643_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3030430345_
                                                         (##vector-ref
                                                          _g35642_
                                                          0))
                                                        (_tl3030630348_
                                                         (##vector-ref
                                                          _g35642_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3030630348_)
                                                        (letrec ((_loop3030730351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3030530355_ _body3031130358_)
                            (if (gx#stx-pair? _hd3030530355_)
                                (let ((_e3030830361_
                                       (gx#syntax-e _hd3030530355_)))
                                  (let ((_lp-hd3030930365_
                                         (##car _e3030830361_))
                                        (_lp-tl3031030368_
                                         (##cdr _e3030830361_)))
                                    (_loop3030730351_
                                     _lp-tl3031030368_
                                     (cons _lp-hd3030930365_
                                           _body3031130358_))))
                                (let ((_body3031230371_
                                       (reverse _body3031130358_)))
                                  ((lambda (_L30375_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g3039230395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3039330398_)
                    (cons _g3039230395_ _g3039330398_))
                  '()
                  _L30375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body3031230371_))))))
                  (_loop3030730351_ _target3030430345_ '()))
                (_g3026630318_ _g3026730322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3026630318_ _g3026730322_))
                                          (_g3026630318_ _g3026730322_))
                                      (_g3026630318_ _g3026730322_))))
                              (_g3026630318_ _g3026730322_))))
                      (_g3026630318_ _g3026730322_))))
               (_g3026430527_
                (lambda (_g3026730405_)
                  (if (gx#stx-pair? _g3026730405_)
                      (let ((_e3027330408_ (gx#syntax-e _g3026730405_)))
                        (let ((_hd3027430412_ (##car _e3027330408_))
                              (_tl3027530415_ (##cdr _e3027330408_)))
                          (if (gx#stx-pair? _tl3027530415_)
                              (let ((_e3027630418_
                                     (gx#syntax-e _tl3027530415_)))
                                (let ((_hd3027730422_ (##car _e3027630418_))
                                      (_tl3027830425_ (##cdr _e3027630418_)))
                                  (if (gx#stx-pair? _hd3027730422_)
                                      (let ((_e3027930428_
                                             (gx#syntax-e _hd3027730422_)))
                                        (let ((_hd3028030432_
                                               (##car _e3027930428_))
                                              (_tl3028130435_
                                               (##cdr _e3027930428_)))
                                          (if (gx#stx-pair? _hd3028030432_)
                                              (let ((_e3028230438_
                                                     (gx#syntax-e
                                                      _hd3028030432_)))
                                                (let ((_hd3028330442_
                                                       (##car _e3028230438_))
                                                      (_tl3028430445_
                                                       (##cdr _e3028230438_)))
                                                  (if (gx#stx-pair?
                                                       _tl3028430445_)
                                                      (let ((_e3028530448_
                                                             (gx#syntax-e
                                                              _tl3028430445_)))
                                                        (let ((_hd3028630452_
                                                               (##car _e3028530448_))
                                                              (_tl3028730455_
                                                               (##cdr _e3028530448_)))
                                                          (if (gx#stx-null?
                                                               _tl3028730455_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3027830425_)
                          (if (fx>= (gx#stx-length _tl3027830425_) '0)
                              (let ((_g35644_
                                     (gx#syntax-split-splice
                                      _tl3027830425_
                                      '0)))
                                (begin
                                  (let ((_g35645_
                                         (if (##values? _g35644_)
                                             (##vector-length _g35644_)
                                             1)))
                                    (if (not (##fx= _g35645_ 2))
                                        (error "Context expects 2 values"
                                               _g35645_)))
                                  (let ((_target3028830458_
                                         (##vector-ref _g35644_ 0))
                                        (_tl3029030461_
                                         (##vector-ref _g35644_ 1)))
                                    (if (gx#stx-null? _tl3029030461_)
                                        (letrec ((_loop3029130464_
                                                  (lambda (_hd3028930468_
                                                           _body3029530471_)
                                                    (if (gx#stx-pair?
                                                         _hd3028930468_)
                                                        (let ((_e3029230474_
                                                               (gx#syntax-e
                                                                _hd3028930468_)))
                                                          (let ((_lp-hd3029330478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3029230474_))
                        (_lp-tl3029430481_ (##cdr _e3029230474_)))
                    (_loop3029130464_
                     _lp-tl3029430481_
                     (cons _lp-hd3029330478_ _body3029530471_))))
                (let ((_body3029630484_ (reverse _body3029530471_)))
                  ((lambda (_L30488_ _L30490_ _L30491_ _L30492_ _L30493_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L30492_ (cons _L30491_ '())) '())
                                 (cons (cons _L30493_
                                             (cons _L30490_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g3051830521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3051930524_)
                      (cons _g3051830521_ _g3051930524_))
                    '()
                    _L30488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body3029630484_
                   _tl3028130435_
                   _hd3028630452_
                   _hd3028330442_
                   _hd3027430412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop3029130464_
                                           _target3028830458_
                                           '()))
                                        (_g3026530401_ _g3026730405_)))))
                              (_g3026530401_ _g3026730405_))
                          (_g3026530401_ _g3026730405_))
                      (_g3026530401_ _g3026730405_))))
              (_g3026530401_ _g3026730405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3026530401_ _g3026730405_))))
                                      (_g3026530401_ _g3026730405_))))
                              (_g3026530401_ _g3026730405_))))
                      (_g3026530401_ _g3026730405_)))))
          (_g3026430527_ _$stx30261_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx30533_)
        (let* ((_g3054430688_
                (lambda (_g3054530684_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3054530684_)))
               (_g3054330783_
                (lambda (_g3054530692_)
                  (if (gx#stx-pair? _g3054530692_)
                      (let ((_e3066530695_ (gx#syntax-e _g3054530692_)))
                        (let ((_hd3066630699_ (##car _e3066530695_))
                              (_tl3066730702_ (##cdr _e3066530695_)))
                          (if (gx#stx-pair? _tl3066730702_)
                              (let ((_e3066830705_
                                     (gx#syntax-e _tl3066730702_)))
                                (let ((_hd3066930709_ (##car _e3066830705_))
                                      (_tl3067030712_ (##cdr _e3066830705_)))
                                  (if (gx#stx-pair? _tl3067030712_)
                                      (let ((_e3067130715_
                                             (gx#syntax-e _tl3067030712_)))
                                        (let ((_hd3067230719_
                                               (##car _e3067130715_))
                                              (_tl3067330722_
                                               (##cdr _e3067130715_)))
                                          (if (gx#stx-datum? _hd3067230719_)
                                              (if (equal? (gx#stx-e
                                                           _hd3067230719_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3067330722_)
                                                      (let ((_e3067430725_
                                                             (gx#syntax-e
                                                              _tl3067330722_)))
                                                        (let ((_hd3067530729_
                                                               (##car _e3067430725_))
                                                              (_tl3067630732_
                                                               (##cdr _e3067430725_)))
                                                          (if (gx#stx-pair?
                                                               _tl3067630732_)
                                                              (let ((_e3067730735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3067630732_)))
                        (let ((_hd3067830739_ (##car _e3067730735_))
                              (_tl3067930742_ (##cdr _e3067730735_)))
                          (if (gx#identifier? _hd3067830739_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35646_|
                                   _hd3067830739_)
                                  (if (gx#stx-pair? _tl3067930742_)
                                      (let ((_e3068030745_
                                             (gx#syntax-e _tl3067930742_)))
                                        (let ((_hd3068130749_
                                               (##car _e3068030745_))
                                              (_tl3068230752_
                                               (##cdr _e3068030745_)))
                                          (if (gx#stx-null? _tl3068230752_)
                                              ((lambda (_L30755_
                                                        _L30757_
                                                        _L30758_
                                                        _L30759_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L30759_
                                             (cons _L30758_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L30755_
                                                   (cons (cons _L30757_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '$obj)
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd3068130749_
                                               _hd3067530729_
                                               _hd3066930709_
                                               _hd3066630699_)
                                              (_g3054430688_ _g3054530692_))))
                                      (_g3054430688_ _g3054530692_))
                                  (_g3054430688_ _g3054530692_))
                              (_g3054430688_ _g3054530692_))))
                      (_g3054430688_ _g3054530692_))))
              (_g3054430688_ _g3054530692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3054430688_
                                                   _g3054530692_))
                                              (_g3054430688_ _g3054530692_))))
                                      (_g3054430688_ _g3054530692_))))
                              (_g3054430688_ _g3054530692_))))
                      (_g3054430688_ _g3054530692_))))
               (_g3054230851_
                (lambda (_g3054530787_)
                  (if (gx#stx-pair? _g3054530787_)
                      (let ((_e3064930790_ (gx#syntax-e _g3054530787_)))
                        (let ((_hd3065030794_ (##car _e3064930790_))
                              (_tl3065130797_ (##cdr _e3064930790_)))
                          (if (gx#stx-pair? _tl3065130797_)
                              (let ((_e3065230800_
                                     (gx#syntax-e _tl3065130797_)))
                                (let ((_hd3065330804_ (##car _e3065230800_))
                                      (_tl3065430807_ (##cdr _e3065230800_)))
                                  (if (gx#stx-pair? _tl3065430807_)
                                      (let ((_e3065530810_
                                             (gx#syntax-e _tl3065430807_)))
                                        (let ((_hd3065630814_
                                               (##car _e3065530810_))
                                              (_tl3065730817_
                                               (##cdr _e3065530810_)))
                                          (if (gx#stx-datum? _hd3065630814_)
                                              (if (equal? (gx#stx-e
                                                           _hd3065630814_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3065730817_)
                                                      (let ((_e3065830820_
                                                             (gx#syntax-e
                                                              _tl3065730817_)))
                                                        (let ((_hd3065930824_
                                                               (##car _e3065830820_))
                                                              (_tl3066030827_
                                                               (##cdr _e3065830820_)))
                                                          (if (gx#stx-null?
                                                               _tl3066030827_)
                                                              ((lambda (_L30830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30832_
                                _L30833_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L30833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L30832_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L30830_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3065930824_
                       _hd3065330804_
                       _hd3065030794_)
                      (_g3054330783_ _g3054530787_))))
              (_g3054330783_ _g3054530787_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3054330783_
                                                   _g3054530787_))
                                              (_g3054330783_ _g3054530787_))))
                                      (_g3054330783_ _g3054530787_))))
                              (_g3054330783_ _g3054530787_))))
                      (_g3054330783_ _g3054530787_))))
               (_g3054130919_
                (lambda (_g3054530855_)
                  (if (gx#stx-pair? _g3054530855_)
                      (let ((_e3063430858_ (gx#syntax-e _g3054530855_)))
                        (let ((_hd3063530862_ (##car _e3063430858_))
                              (_tl3063630865_ (##cdr _e3063430858_)))
                          (if (gx#stx-pair? _tl3063630865_)
                              (let ((_e3063730868_
                                     (gx#syntax-e _tl3063630865_)))
                                (let ((_hd3063830872_ (##car _e3063730868_))
                                      (_tl3063930875_ (##cdr _e3063730868_)))
                                  (if (gx#stx-pair? _tl3063930875_)
                                      (let ((_e3064030878_
                                             (gx#syntax-e _tl3063930875_)))
                                        (let ((_hd3064130882_
                                               (##car _e3064030878_))
                                              (_tl3064230885_
                                               (##cdr _e3064030878_)))
                                          (if (gx#identifier? _hd3064130882_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35647_|
                                                   _hd3064130882_)
                                                  (if (gx#stx-pair?
                                                       _tl3064230885_)
                                                      (let ((_e3064330888_
                                                             (gx#syntax-e
                                                              _tl3064230885_)))
                                                        (let ((_hd3064430892_
                                                               (##car _e3064330888_))
                                                              (_tl3064530895_
                                                               (##cdr _e3064330888_)))
                                                          (if (gx#stx-null?
                                                               _tl3064530895_)
                                                              ((lambda (_L30898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30900_
                                _L30901_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L30901_
                                                             (cons _L30900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L30898_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3064430892_
                       _hd3063830872_
                       _hd3063530862_)
                      (_g3054230851_ _g3054530855_))))
              (_g3054230851_ _g3054530855_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3054230851_
                                                   _g3054530855_))
                                              (_g3054230851_ _g3054530855_))))
                                      (_g3054230851_ _g3054530855_))))
                              (_g3054230851_ _g3054530855_))))
                      (_g3054230851_ _g3054530855_))))
               (_g3054030961_
                (lambda (_g3054530923_)
                  (if (gx#stx-pair? _g3054530923_)
                      (let ((_e3062530926_ (gx#syntax-e _g3054530923_)))
                        (let ((_hd3062630930_ (##car _e3062530926_))
                              (_tl3062730933_ (##cdr _e3062530926_)))
                          (if (gx#stx-pair? _tl3062730933_)
                              (let ((_e3062830936_
                                     (gx#syntax-e _tl3062730933_)))
                                (let ((_hd3062930940_ (##car _e3062830936_))
                                      (_tl3063030943_ (##cdr _e3062830936_)))
                                  (if (gx#stx-null? _tl3063030943_)
                                      ((lambda (_L30946_ _L30948_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L30948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L30946_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd3062930940_
                                       _hd3062630930_)
                                      (_g3054130919_ _g3054530923_))))
                              (_g3054130919_ _g3054530923_))))
                      (_g3054130919_ _g3054530923_))))
               (_g3053931015_
                (lambda (_g3054530965_)
                  (if (gx#stx-pair? _g3054530965_)
                      (let ((_e3061430968_ (gx#syntax-e _g3054530965_)))
                        (let ((_hd3061530972_ (##car _e3061430968_))
                              (_tl3061630975_ (##cdr _e3061430968_)))
                          (if (gx#stx-pair? _tl3061630975_)
                              (let ((_e3061730978_
                                     (gx#syntax-e _tl3061630975_)))
                                (let ((_hd3061830982_ (##car _e3061730978_))
                                      (_tl3061930985_ (##cdr _e3061730978_)))
                                  (if (gx#stx-pair? _tl3061930985_)
                                      (let ((_e3062030988_
                                             (gx#syntax-e _tl3061930985_)))
                                        (let ((_hd3062130992_
                                               (##car _e3062030988_))
                                              (_tl3062230995_
                                               (##cdr _e3062030988_)))
                                          (if (gx#stx-null? _tl3062230995_)
                                              ((lambda (_L30998_ _L31000_)
                                                 (cons _L31000_
                                                       (cons _L30998_ '())))
                                               _hd3062130992_
                                               _hd3061830982_)
                                              (_g3054030961_ _g3054530965_))))
                                      (_g3054030961_ _g3054530965_))))
                              (_g3054030961_ _g3054530965_))))
                      (_g3054030961_ _g3054530965_))))
               (_g3053831095_
                (lambda (_g3054531019_)
                  (if (gx#stx-pair? _g3054531019_)
                      (let ((_e3059731022_ (gx#syntax-e _g3054531019_)))
                        (let ((_hd3059831026_ (##car _e3059731022_))
                              (_tl3059931029_ (##cdr _e3059731022_)))
                          (if (gx#stx-pair? _tl3059931029_)
                              (let ((_e3060031032_
                                     (gx#syntax-e _tl3059931029_)))
                                (let ((_hd3060131036_ (##car _e3060031032_))
                                      (_tl3060231039_ (##cdr _e3060031032_)))
                                  (if (gx#stx-pair? _hd3060131036_)
                                      (let ((_e3060331042_
                                             (gx#syntax-e _hd3060131036_)))
                                        (let ((_hd3060431046_
                                               (##car _e3060331042_))
                                              (_tl3060531049_
                                               (##cdr _e3060331042_)))
                                          (if (gx#identifier? _hd3060431046_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35648_|
                                                   _hd3060431046_)
                                                  (if (gx#stx-pair?
                                                       _tl3060531049_)
                                                      (let ((_e3060631052_
                                                             (gx#syntax-e
                                                              _tl3060531049_)))
                                                        (let ((_hd3060731056_
                                                               (##car _e3060631052_))
                                                              (_tl3060831059_
                                                               (##cdr _e3060631052_)))
                                                          (if (gx#stx-null?
                                                               _tl3060831059_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3060231039_)
                          (let ((_e3060931062_ (gx#syntax-e _tl3060231039_)))
                            (let ((_hd3061031066_ (##car _e3060931062_))
                                  (_tl3061131069_ (##cdr _e3060931062_)))
                              (if (gx#stx-null? _tl3061131069_)
                                  ((lambda (_L31072_ _L31074_ _L31075_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L31075_
                                                       (cons _L31074_
                                                             (cons _L31072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd3061031066_
                                   _hd3060731056_
                                   _hd3059831026_)
                                  (_g3053931015_ _g3054531019_))))
                          (_g3053931015_ _g3054531019_))
                      (_g3053931015_ _g3054531019_))))
              (_g3053931015_ _g3054531019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3053931015_
                                                   _g3054531019_))
                                              (_g3053931015_ _g3054531019_))))
                                      (_g3053931015_ _g3054531019_))))
                              (_g3053931015_ _g3054531019_))))
                      (_g3053931015_ _g3054531019_))))
               (_g3053731205_
                (lambda (_g3054531099_)
                  (if (gx#stx-pair? _g3054531099_)
                      (let ((_e3057331102_ (gx#syntax-e _g3054531099_)))
                        (let ((_hd3057431106_ (##car _e3057331102_))
                              (_tl3057531109_ (##cdr _e3057331102_)))
                          (if (gx#stx-pair? _tl3057531109_)
                              (let ((_e3057631112_
                                     (gx#syntax-e _tl3057531109_)))
                                (let ((_hd3057731116_ (##car _e3057631112_))
                                      (_tl3057831119_ (##cdr _e3057631112_)))
                                  (if (gx#stx-pair? _hd3057731116_)
                                      (let ((_e3057931122_
                                             (gx#syntax-e _hd3057731116_)))
                                        (let ((_hd3058031126_
                                               (##car _e3057931122_))
                                              (_tl3058131129_
                                               (##cdr _e3057931122_)))
                                          (if (gx#identifier? _hd3058031126_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35649_|
                                                   _hd3058031126_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3058131129_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3058131129_)
                        '0)
                  (let ((_g35650_ (gx#syntax-split-splice _tl3058131129_ '0)))
                    (begin
                      (let ((_g35651_
                             (if (##values? _g35650_)
                                 (##vector-length _g35650_)
                                 1)))
                        (if (not (##fx= _g35651_ 2))
                            (error "Context expects 2 values" _g35651_)))
                      (let ((_target3058231132_ (##vector-ref _g35650_ 0))
                            (_tl3058431135_ (##vector-ref _g35650_ 1)))
                        (if (gx#stx-null? _tl3058431135_)
                            (letrec ((_loop3058531138_
                                      (lambda (_hd3058331142_ _pred3058931145_)
                                        (if (gx#stx-pair? _hd3058331142_)
                                            (let ((_e3058631148_
                                                   (gx#syntax-e
                                                    _hd3058331142_)))
                                              (let ((_lp-hd3058731152_
                                                     (##car _e3058631148_))
                                                    (_lp-tl3058831155_
                                                     (##cdr _e3058631148_)))
                                                (_loop3058531138_
                                                 _lp-tl3058831155_
                                                 (cons _lp-hd3058731152_
                                                       _pred3058931145_))))
                                            (let ((_pred3059031158_
                                                   (reverse _pred3058931145_)))
                                              (if (gx#stx-pair? _tl3057831119_)
                                                  (let ((_e3059131162_
                                                         (gx#syntax-e
                                                          _tl3057831119_)))
                                                    (let ((_hd3059231166_
                                                           (##car _e3059131162_))
                                                          (_tl3059331169_
                                                           (##cdr _e3059131162_)))
                                                      (if (gx#stx-null?
                                                           _tl3059331169_)
                                                          ((lambda (_L31172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L31174_
                            _L31175_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g3119631199_ _g3119731202_)
                                      (cons (cons _L31175_
                                                  (cons _g3119631199_
                                                        (cons _L31172_ '())))
                                            _g3119731202_))
                                    '()
                                    _L31174_))))
                   _hd3059231166_
                   _pred3059031158_
                   _hd3057431106_)
                  (_g3053831095_ _g3054531099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3053831095_
                                                   _g3054531099_)))))))
                              (_loop3058531138_ _target3058231132_ '()))
                            (_g3053831095_ _g3054531099_)))))
                  (_g3053831095_ _g3054531099_))
              (_g3053831095_ _g3054531099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3053831095_
                                                   _g3054531099_))
                                              (_g3053831095_ _g3054531099_))))
                                      (_g3053831095_ _g3054531099_))))
                              (_g3053831095_ _g3054531099_))))
                      (_g3053831095_ _g3054531099_))))
               (_g3053631315_
                (lambda (_g3054531209_)
                  (if (gx#stx-pair? _g3054531209_)
                      (let ((_e3054931212_ (gx#syntax-e _g3054531209_)))
                        (let ((_hd3055031216_ (##car _e3054931212_))
                              (_tl3055131219_ (##cdr _e3054931212_)))
                          (if (gx#stx-pair? _tl3055131219_)
                              (let ((_e3055231222_
                                     (gx#syntax-e _tl3055131219_)))
                                (let ((_hd3055331226_ (##car _e3055231222_))
                                      (_tl3055431229_ (##cdr _e3055231222_)))
                                  (if (gx#stx-pair? _hd3055331226_)
                                      (let ((_e3055531232_
                                             (gx#syntax-e _hd3055331226_)))
                                        (let ((_hd3055631236_
                                               (##car _e3055531232_))
                                              (_tl3055731239_
                                               (##cdr _e3055531232_)))
                                          (if (gx#identifier? _hd3055631236_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35652_|
                                                   _hd3055631236_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3055731239_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3055731239_)
                        '0)
                  (let ((_g35653_ (gx#syntax-split-splice _tl3055731239_ '0)))
                    (begin
                      (let ((_g35654_
                             (if (##values? _g35653_)
                                 (##vector-length _g35653_)
                                 1)))
                        (if (not (##fx= _g35654_ 2))
                            (error "Context expects 2 values" _g35654_)))
                      (let ((_target3055831242_ (##vector-ref _g35653_ 0))
                            (_tl3056031245_ (##vector-ref _g35653_ 1)))
                        (if (gx#stx-null? _tl3056031245_)
                            (letrec ((_loop3056131248_
                                      (lambda (_hd3055931252_ _pred3056531255_)
                                        (if (gx#stx-pair? _hd3055931252_)
                                            (let ((_e3056231258_
                                                   (gx#syntax-e
                                                    _hd3055931252_)))
                                              (let ((_lp-hd3056331262_
                                                     (##car _e3056231258_))
                                                    (_lp-tl3056431265_
                                                     (##cdr _e3056231258_)))
                                                (_loop3056131248_
                                                 _lp-tl3056431265_
                                                 (cons _lp-hd3056331262_
                                                       _pred3056531255_))))
                                            (let ((_pred3056631268_
                                                   (reverse _pred3056531255_)))
                                              (if (gx#stx-pair? _tl3055431229_)
                                                  (let ((_e3056731272_
                                                         (gx#syntax-e
                                                          _tl3055431229_)))
                                                    (let ((_hd3056831276_
                                                           (##car _e3056731272_))
                                                          (_tl3056931279_
                                                           (##cdr _e3056731272_)))
                                                      (if (gx#stx-null?
                                                           _tl3056931279_)
                                                          ((lambda (_L31282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L31284_
                            _L31285_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g3130631309_ _g3130731312_)
                                      (cons (cons _L31285_
                                                  (cons _g3130631309_
                                                        (cons _L31282_ '())))
                                            _g3130731312_))
                                    '()
                                    _L31284_))))
                   _hd3056831276_
                   _pred3056631268_
                   _hd3055031216_)
                  (_g3053731205_ _g3054531209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3053731205_
                                                   _g3054531209_)))))))
                              (_loop3056131248_ _target3055831242_ '()))
                            (_g3053731205_ _g3054531209_)))))
                  (_g3053731205_ _g3054531209_))
              (_g3053731205_ _g3054531209_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3053731205_
                                                   _g3054531209_))
                                              (_g3053731205_ _g3054531209_))))
                                      (_g3053731205_ _g3054531209_))))
                              (_g3053731205_ _g3054531209_))))
                      (_g3053731205_ _g3054531209_)))))
          (_g3053631315_ _$stx30533_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx31321_)
        (let* ((_g3132631360_
                (lambda (_g3132731356_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3132731356_)))
               (_g3132531417_
                (lambda (_g3132731364_)
                  (if (gx#stx-pair? _g3132731364_)
                      (let ((_e3134631367_ (gx#syntax-e _g3132731364_)))
                        (let ((_hd3134731371_ (##car _e3134631367_))
                              (_tl3134831374_ (##cdr _e3134631367_)))
                          (if (gx#stx-pair? _tl3134831374_)
                              (let ((_e3134931377_
                                     (gx#syntax-e _tl3134831374_)))
                                (let ((_hd3135031381_ (##car _e3134931377_))
                                      (_tl3135131384_ (##cdr _e3134931377_)))
                                  (if (gx#stx-pair? _tl3135131384_)
                                      (let ((_e3135231387_
                                             (gx#syntax-e _tl3135131384_)))
                                        (let ((_hd3135331391_
                                               (##car _e3135231387_))
                                              (_tl3135431394_
                                               (##cdr _e3135231387_)))
                                          (if (gx#stx-null? _tl3135431394_)
                                              ((lambda (_L31397_
                                                        _L31399_
                                                        _L31400_)
                                                 (cons _L31400_
                                                       (cons _L31399_
                                                             (cons _L31397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise-syntax-error)
                                                         (cons '#f
                                                               (cons '"Bad syntax"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '$stx) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd3135331391_
                                               _hd3135031381_
                                               _hd3134731371_)
                                              (_g3132631360_ _g3132731364_))))
                                      (_g3132631360_ _g3132731364_))))
                              (_g3132631360_ _g3132731364_))))
                      (_g3132631360_ _g3132731364_))))
               (_g3132431485_
                (lambda (_g3132731421_)
                  (if (gx#stx-pair? _g3132731421_)
                      (let ((_e3133131424_ (gx#syntax-e _g3132731421_)))
                        (let ((_hd3133231428_ (##car _e3133131424_))
                              (_tl3133331431_ (##cdr _e3133131424_)))
                          (if (gx#stx-pair? _tl3133331431_)
                              (let ((_e3133431434_
                                     (gx#syntax-e _tl3133331431_)))
                                (let ((_hd3133531438_ (##car _e3133431434_))
                                      (_tl3133631441_ (##cdr _e3133431434_)))
                                  (if (gx#stx-pair? _tl3133631441_)
                                      (let ((_e3133731444_
                                             (gx#syntax-e _tl3133631441_)))
                                        (let ((_hd3133831448_
                                               (##car _e3133731444_))
                                              (_tl3133931451_
                                               (##cdr _e3133731444_)))
                                          (if (gx#stx-pair? _tl3133931451_)
                                              (let ((_e3134031454_
                                                     (gx#syntax-e
                                                      _tl3133931451_)))
                                                (let ((_hd3134131458_
                                                       (##car _e3134031454_))
                                                      (_tl3134231461_
                                                       (##cdr _e3134031454_)))
                                                  (if (gx#stx-null?
                                                       _tl3134231461_)
                                                      ((lambda (_L31464_
                                                                _L31466_
                                                                _L31467_)
                                                         (if (gx#identifier?
                                                              _L31467_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L31467_
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-match-macro)
                                             (cons 'macro:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '$match-e)
                                         (cons _L31466_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L31464_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '$stx)
                                                     '())
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-case)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$stx)
                         (cons '()
                               (cons (cons (cons 'match:
                                                 (gx#datum->syntax '#f 'body))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'core-apply-expander)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$match-e)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'stx-wrap-source)
                                 (cons (cons (gx#datum->syntax '#f 'syntax)
                                             (cons (gx#datum->syntax '#f 'body)
                                                   '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-source)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$stx)
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f '_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'core-apply-expander)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$macro-e)
                           (cons (gx#datum->syntax '#f '$stx) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (_g3132531417_ _g3132731421_)))
               _hd3134131458_
               _hd3133831448_
               _hd3133531438_)
              (_g3132531417_ _g3132731421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3132531417_ _g3132731421_))))
                                      (_g3132531417_ _g3132731421_))))
                              (_g3132531417_ _g3132731421_))))
                      (_g3132531417_ _g3132731421_)))))
          (_g3132431485_ _$stx31321_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx31489_)
        (let* ((_g3149331508_
                (lambda (_g3149431504_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3149431504_)))
               (_g3149231551_
                (lambda (_g3149431512_)
                  (if (gx#stx-pair? _g3149431512_)
                      (let ((_e3149731515_ (gx#syntax-e _g3149431512_)))
                        (let ((_hd3149831519_ (##car _e3149731515_))
                              (_tl3149931522_ (##cdr _e3149731515_)))
                          (if (gx#stx-pair? _tl3149931522_)
                              (let ((_e3150031525_
                                     (gx#syntax-e _tl3149931522_)))
                                (let ((_hd3150131529_ (##car _e3150031525_))
                                      (_tl3150231532_ (##cdr _e3150031525_)))
                                  ((lambda (_L31535_ _L31537_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L31537_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L31535_)
                                                       '()))))
                                   _tl3150231532_
                                   _hd3150131529_)))
                              (_g3149331508_ _g3149431512_))))
                      (_g3149331508_ _g3149431512_)))))
          (_g3149231551_ _$stx31489_))))))
