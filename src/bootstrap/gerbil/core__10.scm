(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g34642_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34643_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34644_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34647_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34648_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34649_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34650_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34651_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34652_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34653_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34654_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34655_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34656_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34657_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34658_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34659_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34668_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34673_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34674_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34675_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34692_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34693_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34694_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34695_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g34698_|
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
      (lambda _$args28246_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args28246_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx28243_)
        (if (gx#identifier? _stx28243_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx28243_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2655928229_
             (lambda (_stx26561_ _match-stx26563_)
               (letrec ((_parse126565_
                         (lambda (_hd26912_)
                           (let* ((_g2693827080_
                                   (lambda (_g2693927076_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2693927076_)))
                                  (_g2693727091_
                                   (lambda (_g2693927084_)
                                     ((lambda ()
                                        (_parse-error26572_ _hd26912_)))))
                                  (_g2693627109_
                                   (lambda (_g2693927095_)
                                     ((lambda (_L27098_)
                                        (if (gx#stx-datum? _L27098_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L27098_)
                                                        '()))
                                            (_g2693727091_ _g2693927095_)))
                                      _g2693927095_)))
                                  (_g2693527125_
                                   (lambda (_g2693927113_)
                                     ((lambda (_L27116_)
                                        (if (if (gx#identifier? _L27116_)
                                                (not (gx#ellipsis? _L27116_))
                                                '#f)
                                            (cons 'var: (cons _L27116_ '()))
                                            (_g2693627109_ _g2693927113_)))
                                      _g2693927113_)))
                                  (_g2693427141_
                                   (lambda (_g2693927129_)
                                     ((lambda (_L27132_)
                                        (if (gx#underscore? _L27132_)
                                            (cons 'any: '())
                                            (_g2693527125_ _g2693927129_)))
                                      _g2693927129_)))
                                  (_g2693327173_
                                   (lambda (_g2693927145_)
                                     (if (gx#stx-pair? _g2693927145_)
                                         (let ((_e2706927148_
                                                (gx#syntax-e _g2693927145_)))
                                           (let ((_hd2707027152_
                                                  (##car _e2706927148_))
                                                 (_tl2707127155_
                                                  (##cdr _e2706927148_)))
                                             ((lambda (_L27158_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L27158_)
                                                    (_parse126565_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L27158_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd26912_)
                                                       (let ((_$e27169_
                                                              (gx#stx-source
                                                               _hd26912_)))
                                                         (if _$e27169_
                                                             _$e27169_
                                                             (gx#stx-source
                                                              _stx26561_))))))
                                                    (_g2693427141_
                                                     _g2693927145_)))
                                              _hd2707027152_)))
                                         (_g2693427141_ _g2693927145_))))
                                  (_g2693227227_
                                   (lambda (_g2693927177_)
                                     (if (gx#stx-pair? _g2693927177_)
                                         (let ((_e2705927180_
                                                (gx#syntax-e _g2693927177_)))
                                           (let ((_hd2706027184_
                                                  (##car _e2705927180_))
                                                 (_tl2706127187_
                                                  (##cdr _e2705927180_)))
                                             (if (gx#identifier?
                                                  _hd2706027184_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34642_|
                                                      _hd2706027184_)
                                                     (if (gx#stx-pair?
                                                          _tl2706127187_)
                                                         (let ((_e2706227190_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2706127187_)))
                   (let ((_hd2706327194_ (##car _e2706227190_))
                         (_tl2706427197_ (##cdr _e2706227190_)))
                     (if (gx#stx-pair? _tl2706427197_)
                         (let ((_e2706527200_ (gx#syntax-e _tl2706427197_)))
                           (let ((_hd2706627204_ (##car _e2706527200_))
                                 (_tl2706727207_ (##cdr _e2706527200_)))
                             (if (gx#stx-null? _tl2706727207_)
                                 ((lambda (_L27210_ _L27212_)
                                    (cons 'apply:
                                          (cons _L27212_
                                                (cons (_parse126565_ _L27210_)
                                                      '()))))
                                  _hd2706627204_
                                  _hd2706327194_)
                                 (_g2693327173_ _g2693927177_))))
                         (_g2693327173_ _g2693927177_))))
                 (_g2693327173_ _g2693927177_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2693327173_
                                                      _g2693927177_))
                                                 (_g2693327173_
                                                  _g2693927177_))))
                                         (_g2693327173_ _g2693927177_))))
                                  (_g2693127267_
                                   (lambda (_g2693927231_)
                                     (if (gx#stx-pair? _g2693927231_)
                                         (let ((_e2705127234_
                                                (gx#syntax-e _g2693927231_)))
                                           (let ((_hd2705227238_
                                                  (##car _e2705127234_))
                                                 (_tl2705327241_
                                                  (##cdr _e2705127234_)))
                                             (if (gx#identifier?
                                                  _hd2705227238_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34643_|
                                                      _hd2705227238_)
                                                     (if (gx#stx-pair?
                                                          _tl2705327241_)
                                                         (let ((_e2705427244_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2705327241_)))
                   (let ((_hd2705527248_ (##car _e2705427244_))
                         (_tl2705627251_ (##cdr _e2705427244_)))
                     (if (gx#stx-null? _tl2705627251_)
                         ((lambda (_L27254_) (_parse-qq26571_ _L27254_))
                          _hd2705527248_)
                         (_g2693227227_ _g2693927231_))))
                 (_g2693227227_ _g2693927231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2693227227_
                                                      _g2693927231_))
                                                 (_g2693227227_
                                                  _g2693927231_))))
                                         (_g2693227227_ _g2693927231_))))
                                  (_g2693027307_
                                   (lambda (_g2693927271_)
                                     (if (gx#stx-pair? _g2693927271_)
                                         (let ((_e2704427274_
                                                (gx#syntax-e _g2693927271_)))
                                           (let ((_hd2704527278_
                                                  (##car _e2704427274_))
                                                 (_tl2704627281_
                                                  (##cdr _e2704427274_)))
                                             (if (gx#identifier?
                                                  _hd2704527278_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34644_|
                                                      _hd2704527278_)
                                                     (if (gx#stx-pair?
                                                          _tl2704627281_)
                                                         (let ((_e2704727284_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2704627281_)))
                   (let ((_hd2704827288_ (##car _e2704727284_))
                         (_tl2704927291_ (##cdr _e2704727284_)))
                     (if (gx#stx-null? _tl2704927291_)
                         ((lambda (_L27294_)
                            (cons 'datum: (cons (gx#stx-e _L27294_) '())))
                          _hd2704827288_)
                         (_g2693127267_ _g2693927271_))))
                 (_g2693127267_ _g2693927271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2693127267_
                                                      _g2693927271_))
                                                 (_g2693127267_
                                                  _g2693927271_))))
                                         (_g2693127267_ _g2693927271_))))
                                  (_g2692927357_
                                   (lambda (_g2693927311_)
                                     (if (gx#stx-pair? _g2693927311_)
                                         (let ((_e2703727314_
                                                (gx#syntax-e _g2693927311_)))
                                           (let ((_hd2703827318_
                                                  (##car _e2703727314_))
                                                 (_tl2703927321_
                                                  (##cdr _e2703727314_)))
                                             (if (gx#stx-pair? _tl2703927321_)
                                                 (let ((_e2704027324_
                                                        (gx#syntax-e
                                                         _tl2703927321_)))
                                                   (let ((_hd2704127328_
                                                          (##car _e2704027324_))
                                                         (_tl2704227331_
                                                          (##cdr _e2704027324_)))
                                                     (if (gx#stx-null?
                                                          _tl2704227331_)
                                                         ((lambda (_L27334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L27336_)
                    (if (if (gx#identifier? _L27336_)
                            (let ((_$e27349_
                                   (gx#free-identifier=?
                                    _L27336_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e27349_
                                  _$e27349_
                                  (let ((_$e27353_
                                         (gx#free-identifier=?
                                          _L27336_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e27353_
                                        _$e27353_
                                        (gx#free-identifier=?
                                         _L27336_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L27336_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L27334_ '()))))
                                    '()))
                        (_g2693027307_ _g2693927311_)))
                  _hd2704127328_
                  _hd2703827318_)
                 (_g2693027307_ _g2693927311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2693027307_
                                                  _g2693927311_))))
                                         (_g2693027307_ _g2693927311_))))
                                  (_g2692827387_
                                   (lambda (_g2693927361_)
                                     (if (gx#stx-pair? _g2693927361_)
                                         (let ((_e2703227364_
                                                (gx#syntax-e _g2693927361_)))
                                           (let ((_hd2703327368_
                                                  (##car _e2703227364_))
                                                 (_tl2703427371_
                                                  (##cdr _e2703227364_)))
                                             ((lambda (_L27374_ _L27376_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L27376_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27376_)
                        (cons (_parse-class-body26570_ _L27374_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2692927357_
                                                     _g2693927361_)))
                                              _tl2703427371_
                                              _hd2703327368_)))
                                         (_g2692927357_ _g2693927361_))))
                                  (_g2692727417_
                                   (lambda (_g2693927391_)
                                     (if (gx#stx-pair? _g2693927391_)
                                         (let ((_e2702727394_
                                                (gx#syntax-e _g2693927391_)))
                                           (let ((_hd2702827398_
                                                  (##car _e2702727394_))
                                                 (_tl2702927401_
                                                  (##cdr _e2702727394_)))
                                             ((lambda (_L27404_ _L27406_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L27406_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27406_)
                        (cons (_parse-vector26568_ _L27404_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2692827387_
                                                     _g2693927391_)))
                                              _tl2702927401_
                                              _hd2702827398_)))
                                         (_g2692827387_ _g2693927391_))))
                                  (_g2692627480_
                                   (lambda (_g2693927421_)
                                     (if (gx#stx-vector? _g2693927421_)
                                         (let ((_e2701527424_
                                                (vector->list
                                                 (gx#syntax-e _g2693927421_))))
                                           (if (gx#stx-pair/null?
                                                _e2701527424_)
                                               (if (fx>= (gx#stx-length
                                                          _e2701527424_)
                                                         '0)
                                                   (let ((_g34645_
                                                          (gx#syntax-split-splice
                                                           _e2701527424_
                                                           '0)))
                                                     (begin
                                                       (let ((_g34646_
                                                              (values-count
                                                               _g34645_)))
                                                         (if (not (fx= _g34646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g34646_)))
               (let ((_target2701627428_ (values-ref _g34645_ 0))
                     (_tl2701827431_ (values-ref _g34645_ 1)))
                 (if (gx#stx-null? _tl2701827431_)
                     (letrec ((_loop2701927434_
                               (lambda (_hd2701727438_ _body2702327441_)
                                 (if (gx#stx-pair? _hd2701727438_)
                                     (let ((_e2702027444_
                                            (gx#syntax-e _hd2701727438_)))
                                       (let ((_lp-hd2702127448_
                                              (##car _e2702027444_))
                                             (_lp-tl2702227451_
                                              (##cdr _e2702027444_)))
                                         (_loop2701927434_
                                          _lp-tl2702227451_
                                          (cons _lp-hd2702127448_
                                                _body2702327441_))))
                                     (let ((_body2702427454_
                                            (reverse _body2702327441_)))
                                       ((lambda (_L27458_)
                                          (cons 'vector:
                                                (cons (_parse-vector26568_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2747127474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2747227477_)
                          (cons _g2747127474_ _g2747227477_))
                        '()
                        _L27458_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2702427454_))))))
                       (_loop2701927434_ _target2701627428_ '()))
                     (_g2692727417_ _g2693927421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2692727417_
                                                    _g2693927421_))
                                               (_g2692727417_ _g2693927421_)))
                                         (_g2692727417_ _g2693927421_))))
                                  (_g2692527508_
                                   (lambda (_g2693927484_)
                                     (if (gx#stx-pair? _g2693927484_)
                                         (let ((_e2701127487_
                                                (gx#syntax-e _g2693927484_)))
                                           (let ((_hd2701227491_
                                                  (##car _e2701127487_))
                                                 (_tl2701327494_
                                                  (##cdr _e2701127487_)))
                                             (if (gx#identifier?
                                                  _hd2701227491_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34647_|
                                                      _hd2701227491_)
                                                     ((lambda (_L27497_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector26568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27497_)
                            '())))
              _tl2701327494_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2692627480_
                                                      _g2693927484_))
                                                 (_g2692627480_
                                                  _g2693927484_))))
                                         (_g2692627480_ _g2693927484_))))
                                  (_g2692427536_
                                   (lambda (_g2693927512_)
                                     (if (gx#stx-pair? _g2693927512_)
                                         (let ((_e2700727515_
                                                (gx#syntax-e _g2693927512_)))
                                           (let ((_hd2700827519_
                                                  (##car _e2700727515_))
                                                 (_tl2700927522_
                                                  (##cdr _e2700727515_)))
                                             (if (gx#identifier?
                                                  _hd2700827519_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34648_|
                                                      _hd2700827519_)
                                                     ((lambda (_L27525_)
                                                        (cons 'values:
                                                              (cons (_parse-vector26568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27525_)
                            '())))
              _tl2700927522_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2692527508_
                                                      _g2693927512_))
                                                 (_g2692527508_
                                                  _g2693927512_))))
                                         (_g2692527508_ _g2693927512_))))
                                  (_g2692327576_
                                   (lambda (_g2693927540_)
                                     (if (gx#stx-pair? _g2693927540_)
                                         (let ((_e2700027543_
                                                (gx#syntax-e _g2693927540_)))
                                           (let ((_hd2700127547_
                                                  (##car _e2700027543_))
                                                 (_tl2700227550_
                                                  (##cdr _e2700027543_)))
                                             (if (gx#identifier?
                                                  _hd2700127547_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34649_|
                                                      _hd2700127547_)
                                                     (if (gx#stx-pair?
                                                          _tl2700227550_)
                                                         (let ((_e2700327553_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2700227550_)))
                   (let ((_hd2700427557_ (##car _e2700327553_))
                         (_tl2700527560_ (##cdr _e2700327553_)))
                     (if (gx#stx-null? _tl2700527560_)
                         ((lambda (_L27563_) (_parse126565_ _L27563_))
                          _hd2700427557_)
                         (_g2692427536_ _g2693927540_))))
                 (_g2692427536_ _g2693927540_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2692427536_
                                                      _g2693927540_))
                                                 (_g2692427536_
                                                  _g2693927540_))))
                                         (_g2692427536_ _g2693927540_))))
                                  (_g2692227597_
                                   (lambda (_g2693927580_)
                                     (if (gx#stx-box? _g2693927580_)
                                         (let ((_e2699827583_
                                                (unbox (gx#syntax-e
                                                        _g2693927580_))))
                                           ((lambda (_L27587_)
                                              (cons 'box:
                                                    (cons (_parse126565_
                                                           _L27587_)
                                                          '())))
                                            _e2699827583_))
                                         (_g2692327576_ _g2693927580_))))
                                  (_g2692127637_
                                   (lambda (_g2693927601_)
                                     (if (gx#stx-pair? _g2693927601_)
                                         (let ((_e2699127604_
                                                (gx#syntax-e _g2693927601_)))
                                           (let ((_hd2699227608_
                                                  (##car _e2699127604_))
                                                 (_tl2699327611_
                                                  (##cdr _e2699127604_)))
                                             (if (gx#identifier?
                                                  _hd2699227608_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34650_|
                                                      _hd2699227608_)
                                                     (if (gx#stx-pair?
                                                          _tl2699327611_)
                                                         (let ((_e2699427614_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2699327611_)))
                   (let ((_hd2699527618_ (##car _e2699427614_))
                         (_tl2699627621_ (##cdr _e2699427614_)))
                     (if (gx#stx-null? _tl2699627621_)
                         ((lambda (_L27624_)
                            (cons 'box: (cons (_parse126565_ _L27624_) '())))
                          _hd2699527618_)
                         (_g2692227597_ _g2693927601_))))
                 (_g2692227597_ _g2693927601_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2692227597_
                                                      _g2693927601_))
                                                 (_g2692227597_
                                                  _g2693927601_))))
                                         (_g2692227597_ _g2693927601_))))
                                  (_g2692027665_
                                   (lambda (_g2693927641_)
                                     (if (gx#stx-pair? _g2693927641_)
                                         (let ((_e2698727644_
                                                (gx#syntax-e _g2693927641_)))
                                           (let ((_hd2698827648_
                                                  (##car _e2698727644_))
                                                 (_tl2698927651_
                                                  (##cdr _e2698727644_)))
                                             (if (gx#identifier?
                                                  _hd2698827648_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34651_|
                                                      _hd2698827648_)
                                                     ((lambda (_L27654_)
                                                        (_parse-list26567_
                                                         _L27654_))
                                                      _tl2698927651_)
                                                     (_g2692127637_
                                                      _g2693927641_))
                                                 (_g2692127637_
                                                  _g2693927641_))))
                                         (_g2692127637_ _g2693927641_))))
                                  (_g2691927721_
                                   (lambda (_g2693927669_)
                                     (if (gx#stx-pair? _g2693927669_)
                                         (let ((_e2697727672_
                                                (gx#syntax-e _g2693927669_)))
                                           (let ((_hd2697827676_
                                                  (##car _e2697727672_))
                                                 (_tl2697927679_
                                                  (##cdr _e2697727672_)))
                                             (if (gx#identifier?
                                                  _hd2697827676_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34652_|
                                                      _hd2697827676_)
                                                     (if (gx#stx-pair?
                                                          _tl2697927679_)
                                                         (let ((_e2698027682_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2697927679_)))
                   (let ((_hd2698127686_ (##car _e2698027682_))
                         (_tl2698227689_ (##cdr _e2698027682_)))
                     (if (gx#stx-pair? _tl2698227689_)
                         (let ((_e2698327692_ (gx#syntax-e _tl2698227689_)))
                           (let ((_hd2698427696_ (##car _e2698327692_))
                                 (_tl2698527699_ (##cdr _e2698327692_)))
                             ((lambda (_L27702_ _L27704_ _L27705_)
                                (if (gx#stx-null? _L27702_)
                                    (cons 'cons:
                                          (cons (_parse126565_ _L27705_)
                                                (cons (_parse126565_ _L27704_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse126565_ _L27705_)
                                                (cons (_parse126565_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L27704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L27702_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2698527699_
                              _hd2698427696_
                              _hd2698127686_)))
                         (_g2692027665_ _g2693927669_))))
                 (_g2692027665_ _g2693927669_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2692027665_
                                                      _g2693927669_))
                                                 (_g2692027665_
                                                  _g2693927669_))))
                                         (_g2692027665_ _g2693927669_))))
                                  (_g2691827775_
                                   (lambda (_g2693927725_)
                                     (if (gx#stx-pair? _g2693927725_)
                                         (let ((_e2696527728_
                                                (gx#syntax-e _g2693927725_)))
                                           (let ((_hd2696627732_
                                                  (##car _e2696527728_))
                                                 (_tl2696727735_
                                                  (##cdr _e2696527728_)))
                                             (if (gx#identifier?
                                                  _hd2696627732_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34653_|
                                                      _hd2696627732_)
                                                     (if (gx#stx-pair?
                                                          _tl2696727735_)
                                                         (let ((_e2696827738_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2696727735_)))
                   (let ((_hd2696927742_ (##car _e2696827738_))
                         (_tl2697027745_ (##cdr _e2696827738_)))
                     (if (gx#stx-pair? _tl2697027745_)
                         (let ((_e2697127748_ (gx#syntax-e _tl2697027745_)))
                           (let ((_hd2697227752_ (##car _e2697127748_))
                                 (_tl2697327755_ (##cdr _e2697127748_)))
                             (if (gx#stx-null? _tl2697327755_)
                                 ((lambda (_L27758_ _L27760_)
                                    (cons 'cons:
                                          (cons (_parse126565_ _L27760_)
                                                (cons (_parse126565_ _L27758_)
                                                      '()))))
                                  _hd2697227752_
                                  _hd2696927742_)
                                 (_g2691927721_ _g2693927725_))))
                         (_g2691927721_ _g2693927725_))))
                 (_g2691927721_ _g2693927725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2691927721_
                                                      _g2693927725_))
                                                 (_g2691927721_
                                                  _g2693927725_))))
                                         (_g2691927721_ _g2693927725_))))
                                  (_g2691727815_
                                   (lambda (_g2693927779_)
                                     (if (gx#stx-pair? _g2693927779_)
                                         (let ((_e2695727782_
                                                (gx#syntax-e _g2693927779_)))
                                           (let ((_hd2695827786_
                                                  (##car _e2695727782_))
                                                 (_tl2695927789_
                                                  (##cdr _e2695727782_)))
                                             (if (gx#identifier?
                                                  _hd2695827786_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34654_|
                                                      _hd2695827786_)
                                                     (if (gx#stx-pair?
                                                          _tl2695927789_)
                                                         (let ((_e2696027792_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2695927789_)))
                   (let ((_hd2696127796_ (##car _e2696027792_))
                         (_tl2696227799_ (##cdr _e2696027792_)))
                     (if (gx#stx-null? _tl2696227799_)
                         ((lambda (_L27802_)
                            (cons 'not: (cons (_parse126565_ _L27802_) '())))
                          _hd2696127796_)
                         (_g2691827775_ _g2693927779_))))
                 (_g2691827775_ _g2693927779_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2691827775_
                                                      _g2693927779_))
                                                 (_g2691827775_
                                                  _g2693927779_))))
                                         (_g2691827775_ _g2693927779_))))
                                  (_g2691627900_
                                   (lambda (_g2693927819_)
                                     (if (gx#stx-pair? _g2693927819_)
                                         (let ((_e2695327822_
                                                (gx#syntax-e _g2693927819_)))
                                           (let ((_hd2695427826_
                                                  (##car _e2695327822_))
                                                 (_tl2695527829_
                                                  (##cdr _e2695327822_)))
                                             (if (gx#identifier?
                                                  _hd2695427826_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34655_|
                                                      _hd2695427826_)
                                                     ((lambda (_L27832_)
                                                        (if (gx#stx-list?
                                                             _L27832_)
                                                            (let* ((_g2784427855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2784527851_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2784527851_)))
                           (_g2784327866_
                            (lambda (_g2784527859_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse126565_ _L27832_))))))
                           (_g2784227896_
                            (lambda (_g2784527870_)
                              (if (gx#stx-pair? _g2784527870_)
                                  (let ((_e2784727873_
                                         (gx#syntax-e _g2784527870_)))
                                    (let ((_hd2784827877_
                                           (##car _e2784727873_))
                                          (_tl2784927880_
                                           (##cdr _e2784727873_)))
                                      (if (gx#stx-null? _tl2784927880_)
                                          ((lambda (_L27883_)
                                             (_parse126565_ _L27883_))
                                           _hd2784827877_)
                                          (_g2784327866_ _g2784527870_))))
                                  (_g2784327866_ _g2784527870_)))))
                      (_g2784227896_ _L27832_))
                    (_g2691727815_ _g2693927819_)))
              _tl2695527829_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2691727815_
                                                      _g2693927819_))
                                                 (_g2691727815_
                                                  _g2693927819_))))
                                         (_g2691727815_ _g2693927819_))))
                                  (_g2691527985_
                                   (lambda (_g2693927904_)
                                     (if (gx#stx-pair? _g2693927904_)
                                         (let ((_e2694927907_
                                                (gx#syntax-e _g2693927904_)))
                                           (let ((_hd2695027911_
                                                  (##car _e2694927907_))
                                                 (_tl2695127914_
                                                  (##cdr _e2694927907_)))
                                             (if (gx#identifier?
                                                  _hd2695027911_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34656_|
                                                      _hd2695027911_)
                                                     ((lambda (_L27917_)
                                                        (if (gx#stx-list?
                                                             _L27917_)
                                                            (let* ((_g2792927940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2793027936_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2793027936_)))
                           (_g2792827951_
                            (lambda (_g2793027944_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse126565_ _L27917_))))))
                           (_g2792727981_
                            (lambda (_g2793027955_)
                              (if (gx#stx-pair? _g2793027955_)
                                  (let ((_e2793227958_
                                         (gx#syntax-e _g2793027955_)))
                                    (let ((_hd2793327962_
                                           (##car _e2793227958_))
                                          (_tl2793427965_
                                           (##cdr _e2793227958_)))
                                      (if (gx#stx-null? _tl2793427965_)
                                          ((lambda (_L27968_)
                                             (_parse126565_ _L27968_))
                                           _hd2793327962_)
                                          (_g2792827951_ _g2793027955_))))
                                  (_g2792827951_ _g2793027955_)))))
                      (_g2792727981_ _L27917_))
                    (_g2691627900_ _g2693927904_)))
              _tl2695127914_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2691627900_
                                                      _g2693927904_))
                                                 (_g2691627900_
                                                  _g2693927904_))))
                                         (_g2691627900_ _g2693927904_))))
                                  (_g2691428225_
                                   (lambda (_g2693927989_)
                                     (if (gx#stx-pair? _g2693927989_)
                                         (let ((_e2694227992_
                                                (gx#syntax-e _g2693927989_)))
                                           (let ((_hd2694327996_
                                                  (##car _e2694227992_))
                                                 (_tl2694427999_
                                                  (##cdr _e2694227992_)))
                                             (if (gx#identifier?
                                                  _hd2694327996_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g34657_|
                                                      _hd2694327996_)
                                                     (if (gx#stx-pair?
                                                          _tl2694427999_)
                                                         (let ((_e2694528002_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2694427999_)))
                   (let ((_hd2694628006_ (##car _e2694528002_))
                         (_tl2694728009_ (##cdr _e2694528002_)))
                     ((lambda (_L28012_ _L28014_)
                        (let* ((_g2803128063_
                                (lambda (_g2803228059_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2803228059_)))
                               (_g2803028074_
                                (lambda (_g2803228067_)
                                  ((lambda ()
                                     (_parse-error26572_ _hd26912_)))))
                               (_g2802928142_
                                (lambda (_g2803228078_)
                                  (if (gx#stx-pair? _g2803228078_)
                                      (let ((_e2804628081_
                                             (gx#syntax-e _g2803228078_)))
                                        (let ((_hd2804728085_
                                               (##car _e2804628081_))
                                              (_tl2804828088_
                                               (##cdr _e2804628081_)))
                                          (if (gx#stx-datum? _hd2804728085_)
                                              (if (equal? (gx#stx-e
                                                           _hd2804728085_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2804828088_)
                                                      (let ((_e2804928091_
                                                             (gx#syntax-e
                                                              _tl2804828088_)))
                                                        (let ((_hd2805028095_
                                                               (##car _e2804928091_))
                                                              (_tl2805128098_
                                                               (##cdr _e2804928091_)))
                                                          (if (gx#stx-pair?
                                                               _tl2805128098_)
                                                              (let ((_e2805228101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2805128098_)))
                        (let ((_hd2805328105_ (##car _e2805228101_))
                              (_tl2805428108_ (##cdr _e2805228101_)))
                          (if (gx#identifier? _hd2805328105_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g34658_|
                                   _hd2805328105_)
                                  (if (gx#stx-pair? _tl2805428108_)
                                      (let ((_e2805528111_
                                             (gx#syntax-e _tl2805428108_)))
                                        (let ((_hd2805628115_
                                               (##car _e2805528111_))
                                              (_tl2805728118_
                                               (##cdr _e2805528111_)))
                                          (if (gx#stx-null? _tl2805728118_)
                                              ((lambda (_L28121_ _L28123_)
                                                 (cons '?:
                                                       (cons _L28014_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L28123_
                                 (cons '=>:
                                       (cons (_parse126565_ _L28121_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2805628115_
                                               _hd2805028095_)
                                              (_g2803028074_ _g2803228078_))))
                                      (_g2803028074_ _g2803228078_))
                                  (_g2803028074_ _g2803228078_))
                              (_g2803028074_ _g2803228078_))))
                      (_g2803028074_ _g2803228078_))))
              (_g2803028074_ _g2803228078_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2803028074_
                                                   _g2803228078_))
                                              (_g2803028074_ _g2803228078_))))
                                      (_g2803028074_ _g2803228078_))))
                               (_g2802828182_
                                (lambda (_g2803228146_)
                                  (if (gx#stx-pair? _g2803228146_)
                                      (let ((_e2803828149_
                                             (gx#syntax-e _g2803228146_)))
                                        (let ((_hd2803928153_
                                               (##car _e2803828149_))
                                              (_tl2804028156_
                                               (##cdr _e2803828149_)))
                                          (if (gx#identifier? _hd2803928153_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34659_|
                                                   _hd2803928153_)
                                                  (if (gx#stx-pair?
                                                       _tl2804028156_)
                                                      (let ((_e2804128159_
                                                             (gx#syntax-e
                                                              _tl2804028156_)))
                                                        (let ((_hd2804228163_
                                                               (##car _e2804128159_))
                                                              (_tl2804328166_
                                                               (##cdr _e2804128159_)))
                                                          (if (gx#stx-null?
                                                               _tl2804328166_)
                                                              ((lambda (_L28169_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L28014_
                                     (cons '=>:
                                           (cons (_parse126565_ _L28169_)
                                                 '())))))
                       _hd2804228163_)
                      (_g2802928142_ _g2803228146_))))
              (_g2802928142_ _g2803228146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2802928142_
                                                   _g2803228146_))
                                              (_g2802928142_ _g2803228146_))))
                                      (_g2802928142_ _g2803228146_))))
                               (_g2802728210_
                                (lambda (_g2803228186_)
                                  (if (gx#stx-pair? _g2803228186_)
                                      (let ((_e2803428189_
                                             (gx#syntax-e _g2803228186_)))
                                        (let ((_hd2803528193_
                                               (##car _e2803428189_))
                                              (_tl2803628196_
                                               (##cdr _e2803428189_)))
                                          (if (gx#stx-null? _tl2803628196_)
                                              ((lambda (_L28199_)
                                                 (cons '?:
                                                       (cons _L28014_
                                                             (cons (_parse126565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L28199_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2803528193_)
                                              (_g2802828182_ _g2803228186_))))
                                      (_g2802828182_ _g2803228186_))))
                               (_g2802628221_
                                (lambda (_g2803228214_)
                                  (if (gx#stx-null? _g2803228214_)
                                      ((lambda ()
                                         (cons '?: (cons _L28014_ '()))))
                                      (_g2802728210_ _g2803228214_)))))
                          (_g2802628221_ _L28012_)))
                      _tl2694728009_
                      _hd2694628006_)))
                 (_g2691527985_ _g2693927989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2691527985_
                                                      _g2693927989_))
                                                 (_g2691527985_
                                                  _g2693927989_))))
                                         (_g2691527985_ _g2693927989_)))))
                             (_g2691428225_ _hd26912_))))
                        (_parse-list26567_
                         (lambda (_body26747_)
                           (let* ((_g2675326781_
                                   (lambda (_g2675426777_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2675426777_)))
                                  (_g2675226792_
                                   (lambda (_g2675426785_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body26747_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body26747_))
                                                (_parse126565_ _body26747_)
                                                (_parse-error26572_
                                                 _body26747_)))))))
                                  (_g2675126824_
                                   (lambda (_g2675426796_)
                                     (if (gx#stx-pair? _g2675426796_)
                                         (let ((_e2677326799_
                                                (gx#syntax-e _g2675426796_)))
                                           (let ((_hd2677426803_
                                                  (##car _e2677326799_))
                                                 (_tl2677526806_
                                                  (##cdr _e2677326799_)))
                                             ((lambda (_L26809_ _L26811_)
                                                (if (not (gx#ellipsis?
                                                          _L26811_))
                                                    (cons 'cons:
                                                          (cons (_parse126565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26811_)
                        (cons (_parse-list26567_ _L26809_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2675226792_
                                                     _g2675426796_)))
                                              _tl2677526806_
                                              _hd2677426803_)))
                                         (_g2675226792_ _g2675426796_))))
                                  (_g2675026868_
                                   (lambda (_g2675426828_)
                                     (if (gx#stx-pair? _g2675426828_)
                                         (let ((_e2676526831_
                                                (gx#syntax-e _g2675426828_)))
                                           (let ((_hd2676626835_
                                                  (##car _e2676526831_))
                                                 (_tl2676726838_
                                                  (##cdr _e2676526831_)))
                                             (if (gx#stx-pair? _tl2676726838_)
                                                 (let ((_e2676826841_
                                                        (gx#syntax-e
                                                         _tl2676726838_)))
                                                   (let ((_hd2676926845_
                                                          (##car _e2676826841_))
                                                         (_tl2677026848_
                                                          (##cdr _e2676826841_)))
                                                     ((lambda (_L26851_
                                                               _L26853_
                                                               _L26854_)
                                                        (if (gx#ellipsis?
                                                             _L26853_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse126565_ _L26854_)
                                (cons (_parse-list26567_ _L26851_) '())))
                    (_g2675126824_ _g2675426828_)))
              _tl2677026848_
              _hd2676926845_
              _hd2676626835_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2675126824_
                                                  _g2675426828_))))
                                         (_g2675126824_ _g2675426828_))))
                                  (_g2674926908_
                                   (lambda (_g2675426872_)
                                     (if (gx#stx-pair? _g2675426872_)
                                         (let ((_e2675626875_
                                                (gx#syntax-e _g2675426872_)))
                                           (let ((_hd2675726879_
                                                  (##car _e2675626875_))
                                                 (_tl2675826882_
                                                  (##cdr _e2675626875_)))
                                             (if (gx#stx-datum? _hd2675726879_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2675726879_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2675826882_)
                                                         (let ((_e2675926885_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2675826882_)))
                   (let ((_hd2676026889_ (##car _e2675926885_))
                         (_tl2676126892_ (##cdr _e2675926885_)))
                     (if (gx#stx-null? _tl2676126892_)
                         ((lambda (_L26895_) (_parse126565_ _L26895_))
                          _hd2676026889_)
                         (_g2675026868_ _g2675426872_))))
                 (_g2675026868_ _g2675426872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2675026868_
                                                      _g2675426872_))
                                                 (_g2675026868_
                                                  _g2675426872_))))
                                         (_g2675026868_ _g2675426872_)))))
                             (_g2674926908_ _body26747_))))
                        (_parse-vector26568_
                         (lambda (_body26744_)
                           (if (_simple-vector?26569_ _body26744_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse126565_
                                            _body26744_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list26567_ _body26744_)
                                           '())))))
                        (_simple-vector?26569_
                         (lambda (_body26681_)
                           (let* ((_g2668526697_
                                   (lambda (_g2668626693_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2668626693_)))
                                  (_g2668426708_
                                   (lambda (_g2668626701_)
                                     ((lambda () (gx#stx-null? _body26681_)))))
                                  (_g2668326740_
                                   (lambda (_g2668626712_)
                                     (if (gx#stx-pair? _g2668626712_)
                                         (let ((_e2668926715_
                                                (gx#syntax-e _g2668626712_)))
                                           (let ((_hd2669026719_
                                                  (##car _e2668926715_))
                                                 (_tl2669126722_
                                                  (##cdr _e2668926715_)))
                                             ((lambda (_L26725_ _L26727_)
                                                (if (not (gx#ellipsis?
                                                          _L26727_))
                                                    (_simple-vector?26569_
                                                     _L26725_)
                                                    '#f))
                                              _tl2669126722_
                                              _hd2669026719_)))
                                         (_g2668426708_ _g2668626712_)))))
                             (_g2668326740_ _body26681_))))
                        (_parse-class-body26570_
                         (lambda (_body26590_)
                           (let _recur26593_ ((_rest26596_ _body26590_))
                             (let* ((_g2660026616_
                                     (lambda (_g2660126612_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2660126612_)))
                                    (_g2659926627_
                                     (lambda (_g2660126620_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest26596_)
                                              '()
                                              (_parse-error26572_
                                               _rest26596_))))))
                                    (_g2659826677_
                                     (lambda (_g2660126631_)
                                       (if (gx#stx-pair? _g2660126631_)
                                           (let ((_e2660526634_
                                                  (gx#syntax-e _g2660126631_)))
                                             (let ((_hd2660626638_
                                                    (##car _e2660526634_))
                                                   (_tl2660726641_
                                                    (##cdr _e2660526634_)))
                                               (if (gx#stx-pair?
                                                    _tl2660726641_)
                                                   (let ((_e2660826644_
                                                          (gx#syntax-e
                                                           _tl2660726641_)))
                                                     (let ((_hd2660926648_
                                                            (##car _e2660826644_))
                                                           (_tl2661026651_
                                                            (##cdr _e2660826644_)))
                                                       ((lambda (_L26654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26656_
                         _L26657_)
                  (if (gx#stx-keyword? _L26657_)
                      (cons* _L26657_
                             (_parse126565_ _L26656_)
                             (_recur26593_ _L26654_))
                      (_g2659926627_ _g2660126631_)))
                _tl2661026651_
                _hd2660926648_
                _hd2660626638_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2659926627_
                                                    _g2660126631_))))
                                           (_g2659926627_ _g2660126631_)))))
                               (_g2659826677_ _rest26596_)))))
                        (_parse-qq26571_
                         (lambda (_hd26577_)
                           (let ((_g2657926586_
                                  (lambda (_g2658026582_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2658026582_))))
                             (_g2657926586_ _hd26577_))))
                        (_parse-error26572_
                         (lambda (_hd26574_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx26563_
                                      (cons _match-stx26563_
                                            (cons _stx26561_
                                                  (cons _hd26574_ '())))
                                      (cons _stx26561_
                                            (cons _hd26574_ '())))))))
                 (_parse126565_ _stx26561_)))))
        (lambda _g34661_
          (let ((_g34660_ (length _g34661_)))
            (cond ((fx= _g34660_ 1)
                   (apply (lambda (_stx28233_)
                            (let ((_match-stx28236_ '#f))
                              (_opt-lambda2655928229_
                               _stx28233_
                               _match-stx28236_)))
                          _g34661_))
                  ((fx= _g34660_ 2) (apply _opt-lambda2655928229_ _g34661_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g34661_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx26545_)
        (call-with-escape
         (lambda (_E26549_)
           (with-exception-handler
            (let ((_E!26552_ (current-exception-handler)))
              (lambda (_e26555_)
                (if (gx#syntax-error? _e26555_)
                    (_E26549_ '#f)
                    (_E!26552_ _e26555_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx26545_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree25334_)
        (letrec ((_loop25337_
                  (lambda (_ptree25612_ _vars25614_ _K25615_)
                    (let* ((_g2562825729_
                            (lambda (_g2562925725_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2562925725_)))
                           (_g2562725740_
                            (lambda (_g2562925733_)
                              ((lambda () (_K25615_ _vars25614_)))))
                           (_g2562625787_
                            (lambda (_g2562925744_)
                              (if (gx#stx-pair? _g2562925744_)
                                  (let ((_e2571825747_
                                         (gx#syntax-e _g2562925744_)))
                                    (let ((_hd2571925751_
                                           (##car _e2571825747_))
                                          (_tl2572025754_
                                           (##cdr _e2571825747_)))
                                      (if (gx#stx-datum? _hd2571925751_)
                                          (if (equal? (gx#stx-e _hd2571925751_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2572025754_)
                                                  (let ((_e2572125757_
                                                         (gx#syntax-e
                                                          _tl2572025754_)))
                                                    (let ((_hd2572225761_
                                                           (##car _e2572125757_))
                                                          (_tl2572325764_
                                                           (##cdr _e2572125757_)))
                                                      (if (gx#stx-null?
                                                           _tl2572325764_)
                                                          ((lambda (_L25767_)
                                                             (if (find (lambda (_g2578125783_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2578125783_
                                  _L25767_))
                               _vars25614_)
                         (_K25615_ _vars25614_)
                         (_K25615_ (cons _L25767_ _vars25614_))))
                   _hd2572225761_)
                  (_g2562725740_ _g2562925744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2562725740_
                                                   _g2562925744_))
                                              (_g2562725740_ _g2562925744_))
                                          (_g2562725740_ _g2562925744_))))
                                  (_g2562725740_ _g2562925744_))))
                           (_g2562525841_
                            (lambda (_g2562925791_)
                              (if (gx#stx-pair? _g2562925791_)
                                  (let ((_e2570825794_
                                         (gx#syntax-e _g2562925791_)))
                                    (let ((_hd2570925798_
                                           (##car _e2570825794_))
                                          (_tl2571025801_
                                           (##cdr _e2570825794_)))
                                      (if (gx#stx-datum? _hd2570925798_)
                                          (if (equal? (gx#stx-e _hd2570925798_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2571025801_)
                                                  (let ((_e2571125804_
                                                         (gx#syntax-e
                                                          _tl2571025801_)))
                                                    (let ((_hd2571225808_
                                                           (##car _e2571125804_))
                                                          (_tl2571325811_
                                                           (##cdr _e2571125804_)))
                                                      (if (gx#stx-pair?
                                                           _tl2571325811_)
                                                          (let ((_e2571425814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2571325811_)))
                    (let ((_hd2571525818_ (##car _e2571425814_))
                          (_tl2571625821_ (##cdr _e2571425814_)))
                      (if (gx#stx-null? _tl2571625821_)
                          ((lambda (_L25824_ _L25826_)
                             (_loop25337_ _L25824_ _vars25614_ _K25615_))
                           _hd2571525818_
                           _hd2571225808_)
                          (_g2562625787_ _g2562925791_))))
                  (_g2562625787_ _g2562925791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2562625787_
                                                   _g2562925791_))
                                              (_g2562625787_ _g2562925791_))
                                          (_g2562625787_ _g2562925791_))))
                                  (_g2562625787_ _g2562925791_))))
                           (_g2562425893_
                            (lambda (_g2562925845_)
                              (if (gx#stx-pair? _g2562925845_)
                                  (let ((_e2569725848_
                                         (gx#syntax-e _g2562925845_)))
                                    (let ((_hd2569825852_
                                           (##car _e2569725848_))
                                          (_tl2569925855_
                                           (##cdr _e2569725848_)))
                                      (if (gx#stx-datum? _hd2569825852_)
                                          (if (equal? (gx#stx-e _hd2569825852_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2569925855_)
                                                  (let ((_e2570025858_
                                                         (gx#syntax-e
                                                          _tl2569925855_)))
                                                    (let ((_hd2570125862_
                                                           (##car _e2570025858_))
                                                          (_tl2570225865_
                                                           (##cdr _e2570025858_)))
                                                      (if (gx#stx-pair?
                                                           _tl2570225865_)
                                                          (let ((_e2570325868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2570225865_)))
                    (let ((_hd2570425872_ (##car _e2570325868_))
                          (_tl2570525875_ (##cdr _e2570325868_)))
                      (if (gx#stx-null? _tl2570525875_)
                          ((lambda (_L25878_)
                             (_loop-class-list25341_
                              _L25878_
                              _vars25614_
                              _K25615_))
                           _hd2570425872_)
                          (_g2562525841_ _g2562925845_))))
                  (_g2562525841_ _g2562925845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2562525841_
                                                   _g2562925845_))
                                              (_g2562525841_ _g2562925845_))
                                          (_g2562525841_ _g2562925845_))))
                                  (_g2562525841_ _g2562925845_))))
                           (_g2562325945_
                            (lambda (_g2562925897_)
                              (if (gx#stx-pair? _g2562925897_)
                                  (let ((_e2568725900_
                                         (gx#syntax-e _g2562925897_)))
                                    (let ((_hd2568825904_
                                           (##car _e2568725900_))
                                          (_tl2568925907_
                                           (##cdr _e2568725900_)))
                                      (if (gx#stx-datum? _hd2568825904_)
                                          (if (equal? (gx#stx-e _hd2568825904_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2568925907_)
                                                  (let ((_e2569025910_
                                                         (gx#syntax-e
                                                          _tl2568925907_)))
                                                    (let ((_hd2569125914_
                                                           (##car _e2569025910_))
                                                          (_tl2569225917_
                                                           (##cdr _e2569025910_)))
                                                      (if (gx#stx-pair?
                                                           _tl2569225917_)
                                                          (let ((_e2569325920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2569225917_)))
                    (let ((_hd2569425924_ (##car _e2569325920_))
                          (_tl2569525927_ (##cdr _e2569325920_)))
                      (if (gx#stx-null? _tl2569525927_)
                          ((lambda (_L25930_)
                             (_loop-vector25339_
                              _L25930_
                              _vars25614_
                              _K25615_))
                           _hd2569425924_)
                          (_g2562425893_ _g2562925897_))))
                  (_g2562425893_ _g2562925897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2562425893_
                                                   _g2562925897_))
                                              (_g2562425893_ _g2562925897_))
                                          (_g2562425893_ _g2562925897_))))
                                  (_g2562425893_ _g2562925897_))))
                           (_g2562225991_
                            (lambda (_g2562925949_)
                              (if (gx#stx-pair? _g2562925949_)
                                  (let ((_e2568025952_
                                         (gx#syntax-e _g2562925949_)))
                                    (let ((_hd2568125956_
                                           (##car _e2568025952_))
                                          (_tl2568225959_
                                           (##cdr _e2568025952_)))
                                      (if (gx#stx-pair? _tl2568225959_)
                                          (let ((_e2568325962_
                                                 (gx#syntax-e _tl2568225959_)))
                                            (let ((_hd2568425966_
                                                   (##car _e2568325962_))
                                                  (_tl2568525969_
                                                   (##cdr _e2568325962_)))
                                              (if (gx#stx-null? _tl2568525969_)
                                                  ((lambda (_L25972_ _L25974_)
                                                     (if (let ((_$e25987_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L25974_)))
                   (if _$e25987_ _$e25987_ (gx#stx-eq? 'vector: _L25974_)))
                 (_loop-vector25339_ _L25972_ _vars25614_ _K25615_)
                 (_g2562325945_ _g2562925949_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2568425966_
                                                   _hd2568125956_)
                                                  (_g2562325945_
                                                   _g2562925949_))))
                                          (_g2562325945_ _g2562925949_))))
                                  (_g2562325945_ _g2562925949_))))
                           (_g2562126031_
                            (lambda (_g2562925995_)
                              (if (gx#stx-pair? _g2562925995_)
                                  (let ((_e2567225998_
                                         (gx#syntax-e _g2562925995_)))
                                    (let ((_hd2567326002_
                                           (##car _e2567225998_))
                                          (_tl2567426005_
                                           (##cdr _e2567225998_)))
                                      (if (gx#stx-datum? _hd2567326002_)
                                          (if (equal? (gx#stx-e _hd2567326002_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2567426005_)
                                                  (let ((_e2567526008_
                                                         (gx#syntax-e
                                                          _tl2567426005_)))
                                                    (let ((_hd2567626012_
                                                           (##car _e2567526008_))
                                                          (_tl2567726015_
                                                           (##cdr _e2567526008_)))
                                                      (if (gx#stx-null?
                                                           _tl2567726015_)
                                                          ((lambda (_L26018_)
                                                             (_loop25337_
                                                              _L26018_
                                                              _vars25614_
                                                              _K25615_))
                                                           _hd2567626012_)
                                                          (_g2562225991_
                                                           _g2562925995_))))
                                                  (_g2562225991_
                                                   _g2562925995_))
                                              (_g2562225991_ _g2562925995_))
                                          (_g2562225991_ _g2562925995_))))
                                  (_g2562225991_ _g2562925995_))))
                           (_g2562026090_
                            (lambda (_g2562926035_)
                              (if (gx#stx-pair? _g2562926035_)
                                  (let ((_e2566226038_
                                         (gx#syntax-e _g2562926035_)))
                                    (let ((_hd2566326042_
                                           (##car _e2566226038_))
                                          (_tl2566426045_
                                           (##cdr _e2566226038_)))
                                      (if (gx#stx-datum? _hd2566326042_)
                                          (if (equal? (gx#stx-e _hd2566326042_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2566426045_)
                                                  (let ((_e2566526048_
                                                         (gx#syntax-e
                                                          _tl2566426045_)))
                                                    (let ((_hd2566626052_
                                                           (##car _e2566526048_))
                                                          (_tl2566726055_
                                                           (##cdr _e2566526048_)))
                                                      (if (gx#stx-pair?
                                                           _tl2566726055_)
                                                          (let ((_e2566826058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2566726055_)))
                    (let ((_hd2566926062_ (##car _e2566826058_))
                          (_tl2567026065_ (##cdr _e2566826058_)))
                      (if (gx#stx-null? _tl2567026065_)
                          ((lambda (_L26068_ _L26070_)
                             (_loop25337_
                              _L26070_
                              _vars25614_
                              (lambda (_g2608426086_)
                                (_loop25337_
                                 _L26068_
                                 _g2608426086_
                                 _K25615_))))
                           _hd2566926062_
                           _hd2566626052_)
                          (_g2562126031_ _g2562926035_))))
                  (_g2562126031_ _g2562926035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2562126031_
                                                   _g2562926035_))
                                              (_g2562126031_ _g2562926035_))
                                          (_g2562126031_ _g2562926035_))))
                                  (_g2562126031_ _g2562926035_))))
                           (_g2561926149_
                            (lambda (_g2562926094_)
                              (if (gx#stx-pair? _g2562926094_)
                                  (let ((_e2565126097_
                                         (gx#syntax-e _g2562926094_)))
                                    (let ((_hd2565226101_
                                           (##car _e2565126097_))
                                          (_tl2565326104_
                                           (##cdr _e2565126097_)))
                                      (if (gx#stx-datum? _hd2565226101_)
                                          (if (equal? (gx#stx-e _hd2565226101_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2565326104_)
                                                  (let ((_e2565426107_
                                                         (gx#syntax-e
                                                          _tl2565326104_)))
                                                    (let ((_hd2565526111_
                                                           (##car _e2565426107_))
                                                          (_tl2565626114_
                                                           (##cdr _e2565426107_)))
                                                      (if (gx#stx-pair?
                                                           _tl2565626114_)
                                                          (let ((_e2565726117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2565626114_)))
                    (let ((_hd2565826121_ (##car _e2565726117_))
                          (_tl2565926124_ (##cdr _e2565726117_)))
                      (if (gx#stx-null? _tl2565926124_)
                          ((lambda (_L26127_ _L26129_)
                             (_loop25337_
                              _L26129_
                              _vars25614_
                              (lambda (_g2614326145_)
                                (_loop25337_
                                 _L26127_
                                 _g2614326145_
                                 _K25615_))))
                           _hd2565826121_
                           _hd2565526111_)
                          (_g2562026090_ _g2562926094_))))
                  (_g2562026090_ _g2562926094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2562026090_
                                                   _g2562926094_))
                                              (_g2562026090_ _g2562926094_))
                                          (_g2562026090_ _g2562926094_))))
                                  (_g2562026090_ _g2562926094_))))
                           (_g2561826189_
                            (lambda (_g2562926153_)
                              (if (gx#stx-pair? _g2562926153_)
                                  (let ((_e2564326156_
                                         (gx#syntax-e _g2562926153_)))
                                    (let ((_hd2564426160_
                                           (##car _e2564326156_))
                                          (_tl2564526163_
                                           (##cdr _e2564326156_)))
                                      (if (gx#stx-datum? _hd2564426160_)
                                          (if (equal? (gx#stx-e _hd2564426160_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2564526163_)
                                                  (let ((_e2564626166_
                                                         (gx#syntax-e
                                                          _tl2564526163_)))
                                                    (let ((_hd2564726170_
                                                           (##car _e2564626166_))
                                                          (_tl2564826173_
                                                           (##cdr _e2564626166_)))
                                                      (if (gx#stx-null?
                                                           _tl2564826173_)
                                                          ((lambda (_L26176_)
                                                             (_loop25337_
                                                              _L26176_
                                                              _vars25614_
                                                              _K25615_))
                                                           _hd2564726170_)
                                                          (_g2561926149_
                                                           _g2562926153_))))
                                                  (_g2561926149_
                                                   _g2562926153_))
                                              (_g2561926149_ _g2562926153_))
                                          (_g2561926149_ _g2562926153_))))
                                  (_g2561926149_ _g2562926153_))))
                           (_g2561726288_
                            (lambda (_g2562926193_)
                              (if (gx#stx-pair? _g2562926193_)
                                  (let ((_e2563926196_
                                         (gx#syntax-e _g2562926193_)))
                                    (let ((_hd2564026200_
                                           (##car _e2563926196_))
                                          (_tl2564126203_
                                           (##cdr _e2563926196_)))
                                      ((lambda (_L26206_ _L26208_)
                                         (if (let ((_$e26219_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L26208_)))
                                               (if _$e26219_
                                                   _$e26219_
                                                   (gx#stx-eq? 'or: _L26208_)))
                                             (let* ((_g2622426236_
                                                     (lambda (_g2622526232_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2622526232_)))
                                                    (_g2622326247_
                                                     (lambda (_g2622526240_)
                                                       ((lambda ()
                                                          (_K25615_
                                                           _vars25614_)))))
                                                    (_g2622226284_
                                                     (lambda (_g2622526251_)
                                                       (if (gx#stx-pair?
                                                            _g2622526251_)
                                                           (let ((_e2622826254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2622526251_)))
                     (let ((_hd2622926258_ (##car _e2622826254_))
                           (_tl2623026261_ (##cdr _e2622826254_)))
                       ((lambda (_L26264_ _L26266_)
                          (_loop25337_
                           _L26266_
                           _vars25614_
                           (lambda (_g2627826280_)
                             (_loop25337_
                              (cons _L26208_ _L26264_)
                              _g2627826280_
                              _K25615_))))
                        _tl2623026261_
                        _hd2622926258_)))
                   (_g2622326247_ _g2622526251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2622226284_ _L26206_))
                                             (_g2561826189_ _g2562926193_)))
                                       _tl2564126203_
                                       _hd2564026200_)))
                                  (_g2561826189_ _g2562926193_))))
                           (_g2561626541_
                            (lambda (_g2562926292_)
                              (if (gx#stx-pair? _g2562926292_)
                                  (let ((_e2563126295_
                                         (gx#syntax-e _g2562926292_)))
                                    (let ((_hd2563226299_
                                           (##car _e2563126295_))
                                          (_tl2563326302_
                                           (##cdr _e2563126295_)))
                                      (if (gx#stx-datum? _hd2563226299_)
                                          (if (equal? (gx#stx-e _hd2563226299_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2563326302_)
                                                  (let ((_e2563426305_
                                                         (gx#syntax-e
                                                          _tl2563326302_)))
                                                    (let ((_hd2563526309_
                                                           (##car _e2563426305_))
                                                          (_tl2563626312_
                                                           (##cdr _e2563426305_)))
                                                      ((lambda (_L26315_)
                                                         (let* ((_g2633126368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2633226364_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2633226364_)))
                        (_g2633026379_
                         (lambda (_g2633226372_)
                           ((lambda () (_K25615_ _vars25614_)))))
                        (_g2632926457_
                         (lambda (_g2633226383_)
                           (if (gx#stx-pair? _g2633226383_)
                               (let ((_e2634826386_
                                      (gx#syntax-e _g2633226383_)))
                                 (let ((_hd2634926390_ (##car _e2634826386_))
                                       (_tl2635026393_ (##cdr _e2634826386_)))
                                   (if (gx#stx-pair? _tl2635026393_)
                                       (let ((_e2635126396_
                                              (gx#syntax-e _tl2635026393_)))
                                         (let ((_hd2635226400_
                                                (##car _e2635126396_))
                                               (_tl2635326403_
                                                (##cdr _e2635126396_)))
                                           (if (gx#stx-datum? _hd2635226400_)
                                               (if (equal? (gx#stx-e
                                                            _hd2635226400_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2635326403_)
                                                       (let ((_e2635426406_
                                                              (gx#syntax-e
                                                               _tl2635326403_)))
                                                         (let ((_hd2635526410_
                                                                (##car _e2635426406_))
                                                               (_tl2635626413_
                                                                (##cdr _e2635426406_)))
                                                           (if (gx#stx-pair?
                                                                _tl2635626413_)
                                                               (let ((_e2635726416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2635626413_)))
                         (let ((_hd2635826420_ (##car _e2635726416_))
                               (_tl2635926423_ (##cdr _e2635726416_)))
                           (if (gx#stx-datum? _hd2635826420_)
                               (if (equal? (gx#stx-e _hd2635826420_) '=>:)
                                   (if (gx#stx-pair? _tl2635926423_)
                                       (let ((_e2636026426_
                                              (gx#syntax-e _tl2635926423_)))
                                         (let ((_hd2636126430_
                                                (##car _e2636026426_))
                                               (_tl2636226433_
                                                (##cdr _e2636026426_)))
                                           (if (gx#stx-null? _tl2636226433_)
                                               ((lambda (_L26436_)
                                                  (_loop25337_
                                                   _L26436_
                                                   _vars25614_
                                                   _K25615_))
                                                _hd2636126430_)
                                               (_g2633026379_ _g2633226383_))))
                                       (_g2633026379_ _g2633226383_))
                                   (_g2633026379_ _g2633226383_))
                               (_g2633026379_ _g2633226383_))))
                       (_g2633026379_ _g2633226383_))))
               (_g2633026379_ _g2633226383_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2633026379_
                                                    _g2633226383_))
                                               (_g2633026379_ _g2633226383_))))
                                       (_g2633026379_ _g2633226383_))))
                               (_g2633026379_ _g2633226383_))))
                        (_g2632826509_
                         (lambda (_g2633226461_)
                           (if (gx#stx-pair? _g2633226461_)
                               (let ((_e2633826464_
                                      (gx#syntax-e _g2633226461_)))
                                 (let ((_hd2633926468_ (##car _e2633826464_))
                                       (_tl2634026471_ (##cdr _e2633826464_)))
                                   (if (gx#stx-pair? _tl2634026471_)
                                       (let ((_e2634126474_
                                              (gx#syntax-e _tl2634026471_)))
                                         (let ((_hd2634226478_
                                                (##car _e2634126474_))
                                               (_tl2634326481_
                                                (##cdr _e2634126474_)))
                                           (if (gx#stx-datum? _hd2634226478_)
                                               (if (equal? (gx#stx-e
                                                            _hd2634226478_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2634326481_)
                                                       (let ((_e2634426484_
                                                              (gx#syntax-e
                                                               _tl2634326481_)))
                                                         (let ((_hd2634526488_
                                                                (##car _e2634426484_))
                                                               (_tl2634626491_
                                                                (##cdr _e2634426484_)))
                                                           (if (gx#stx-null?
                                                                _tl2634626491_)
                                                               ((lambda (_L26494_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop25337_ _L26494_ _vars25614_ _K25615_))
                        _hd2634526488_)
                       (_g2632926457_ _g2633226461_))))
               (_g2632926457_ _g2633226461_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2632926457_
                                                    _g2633226461_))
                                               (_g2632926457_ _g2633226461_))))
                                       (_g2632926457_ _g2633226461_))))
                               (_g2632926457_ _g2633226461_))))
                        (_g2632726537_
                         (lambda (_g2633226513_)
                           (if (gx#stx-pair? _g2633226513_)
                               (let ((_e2633426516_
                                      (gx#syntax-e _g2633226513_)))
                                 (let ((_hd2633526520_ (##car _e2633426516_))
                                       (_tl2633626523_ (##cdr _e2633426516_)))
                                   (if (gx#stx-null? _tl2633626523_)
                                       ((lambda (_L26526_)
                                          (_loop25337_
                                           _L26526_
                                           _vars25614_
                                           _K25615_))
                                        _hd2633526520_)
                                       (_g2632826509_ _g2633226513_))))
                               (_g2632826509_ _g2633226513_)))))
                   (_g2632726537_ _L26315_)))
               _tl2563626312_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2561726288_
                                                   _g2562926292_))
                                              (_g2561726288_ _g2562926292_))
                                          (_g2561726288_ _g2562926292_))))
                                  (_g2561726288_ _g2562926292_)))))
                      (_g2561626541_ _ptree25612_))))
                 (_loop-vector25339_
                  (lambda (_body25500_ _vars25502_ _K25503_)
                    (let* ((_g2550625527_
                            (lambda (_g2550725523_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2550725523_)))
                           (_g2550525568_
                            (lambda (_g2550725531_)
                              (if (gx#stx-pair? _g2550725531_)
                                  (let ((_e2551625534_
                                         (gx#syntax-e _g2550725531_)))
                                    (let ((_hd2551725538_
                                           (##car _e2551625534_))
                                          (_tl2551825541_
                                           (##cdr _e2551625534_)))
                                      (if (gx#stx-datum? _hd2551725538_)
                                          (if (equal? (gx#stx-e _hd2551725538_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2551825541_)
                                                  (let ((_e2551925544_
                                                         (gx#syntax-e
                                                          _tl2551825541_)))
                                                    (let ((_hd2552025548_
                                                           (##car _e2551925544_))
                                                          (_tl2552125551_
                                                           (##cdr _e2551925544_)))
                                                      (if (gx#stx-null?
                                                           _tl2552125551_)
                                                          ((lambda (_L25554_)
                                                             (_loop25337_
                                                              _L25554_
                                                              _vars25502_
                                                              _K25503_))
                                                           _hd2552025548_)
                                                          (_g2550625527_
                                                           _g2550725531_))))
                                                  (_g2550625527_
                                                   _g2550725531_))
                                              (_g2550625527_ _g2550725531_))
                                          (_g2550625527_ _g2550725531_))))
                                  (_g2550625527_ _g2550725531_))))
                           (_g2550425608_
                            (lambda (_g2550725572_)
                              (if (gx#stx-pair? _g2550725572_)
                                  (let ((_e2550925575_
                                         (gx#syntax-e _g2550725572_)))
                                    (let ((_hd2551025579_
                                           (##car _e2550925575_))
                                          (_tl2551125582_
                                           (##cdr _e2550925575_)))
                                      (if (gx#stx-datum? _hd2551025579_)
                                          (if (equal? (gx#stx-e _hd2551025579_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2551125582_)
                                                  (let ((_e2551225585_
                                                         (gx#syntax-e
                                                          _tl2551125582_)))
                                                    (let ((_hd2551325589_
                                                           (##car _e2551225585_))
                                                          (_tl2551425592_
                                                           (##cdr _e2551225585_)))
                                                      (if (gx#stx-null?
                                                           _tl2551425592_)
                                                          ((lambda (_L25595_)
                                                             (_loop-list25340_
                                                              _L25595_
                                                              _vars25502_
                                                              _K25503_))
                                                           _hd2551325589_)
                                                          (_g2550525568_
                                                           _g2550725572_))))
                                                  (_g2550525568_
                                                   _g2550725572_))
                                              (_g2550525568_ _g2550725572_))
                                          (_g2550525568_ _g2550725572_))))
                                  (_g2550525568_ _g2550725572_)))))
                      (_g2550425608_ _body25500_))))
                 (_loop-list25340_
                  (lambda (_rest25430_ _vars25432_ _K25433_)
                    (let* ((_g2543625448_
                            (lambda (_g2543725444_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2543725444_)))
                           (_g2543525459_
                            (lambda (_g2543725452_)
                              ((lambda () (_K25433_ _vars25432_)))))
                           (_g2543425496_
                            (lambda (_g2543725463_)
                              (if (gx#stx-pair? _g2543725463_)
                                  (let ((_e2544025466_
                                         (gx#syntax-e _g2543725463_)))
                                    (let ((_hd2544125470_
                                           (##car _e2544025466_))
                                          (_tl2544225473_
                                           (##cdr _e2544025466_)))
                                      ((lambda (_L25476_ _L25478_)
                                         (_loop25337_
                                          _L25478_
                                          _vars25432_
                                          (lambda (_g2549025492_)
                                            (_loop-list25340_
                                             _L25476_
                                             _g2549025492_
                                             _K25433_))))
                                       _tl2544225473_
                                       _hd2544125470_)))
                                  (_g2543525459_ _g2543725463_)))))
                      (_g2543425496_ _rest25430_))))
                 (_loop-class-list25341_
                  (lambda (_rest25343_ _vars25345_ _K25346_)
                    (let* ((_g2534925364_
                            (lambda (_g2535025360_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2535025360_)))
                           (_g2534825375_
                            (lambda (_g2535025368_)
                              ((lambda () (_K25346_ _vars25345_)))))
                           (_g2534725426_
                            (lambda (_g2535025379_)
                              (if (gx#stx-pair? _g2535025379_)
                                  (let ((_e2535325382_
                                         (gx#syntax-e _g2535025379_)))
                                    (let ((_hd2535425386_
                                           (##car _e2535325382_))
                                          (_tl2535525389_
                                           (##cdr _e2535325382_)))
                                      (if (gx#stx-pair? _tl2535525389_)
                                          (let ((_e2535625392_
                                                 (gx#syntax-e _tl2535525389_)))
                                            (let ((_hd2535725396_
                                                   (##car _e2535625392_))
                                                  (_tl2535825399_
                                                   (##cdr _e2535625392_)))
                                              ((lambda (_L25402_ _L25404_)
                                                 (_loop25337_
                                                  _L25404_
                                                  _vars25345_
                                                  (lambda (_g2542025422_)
                                                    (_loop-class-list25341_
                                                     _L25402_
                                                     _g2542025422_
                                                     _K25346_))))
                                               _tl2535825399_
                                               _hd2535725396_)))
                                          (_g2534825375_ _g2535025379_))))
                                  (_g2534825375_ _g2535025379_)))))
                      (_g2534725426_ _rest25343_)))))
          (_loop25337_ _ptree25334_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx22150_ _tgt22152_ _ptree22153_ _K22154_ _E22155_)
        (letrec ((_generate122157_
                  (lambda (_tgt23687_ _ptree23689_ _K23690_ _E23691_)
                    (let* ((_g2369323701_
                            (lambda (_g2369423697_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2369423697_)))
                           (_g2369225330_
                            (lambda (_g2369423705_)
                              ((lambda (_L23708_)
                                 (let ()
                                   (let* ((_g2373523861_
                                           (lambda (_g2373623857_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2373623857_)))
                                          (_g2373423882_
                                           (lambda (_g2373623865_)
                                             (if (gx#stx-pair? _g2373623865_)
                                                 (let ((_e2385323868_
                                                        (gx#syntax-e
                                                         _g2373623865_)))
                                                   (let ((_hd2385423872_
                                                          (##car _e2385323868_))
                                                         (_tl2385523875_
                                                          (##cdr _e2385323868_)))
                                                     (if (gx#stx-datum?
                                                          _hd2385423872_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2385423872_)
                             'any:)
                     (if (gx#stx-null? _tl2385523875_)
                         ((lambda () _K23690_))
                         (_g2373523861_ _g2373623865_))
                     (_g2373523861_ _g2373623865_))
                 (_g2373523861_ _g2373623865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2373523861_
                                                  _g2373623865_))))
                                          (_g2373323925_
                                           (lambda (_g2373623886_)
                                             (if (gx#stx-pair? _g2373623886_)
                                                 (let ((_e2384723889_
                                                        (gx#syntax-e
                                                         _g2373623886_)))
                                                   (let ((_hd2384823893_
                                                          (##car _e2384723889_))
                                                         (_tl2384923896_
                                                          (##cdr _e2384723889_)))
                                                     (if (gx#stx-datum?
                                                          _hd2384823893_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2384823893_)
                             'var:)
                     (if (gx#stx-pair? _tl2384923896_)
                         (let ((_e2385023899_ (gx#syntax-e _tl2384923896_)))
                           (let ((_hd2385123903_ (##car _e2385023899_))
                                 (_tl2385223906_ (##cdr _e2385023899_)))
                             (if (gx#stx-null? _tl2385223906_)
                                 ((lambda (_L23909_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23909_
                                                            (cons _L23708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K23690_ '()))))
                                  _hd2385123903_)
                                 (_g2373423882_ _g2373623886_))))
                         (_g2373423882_ _g2373623886_))
                     (_g2373423882_ _g2373623886_))
                 (_g2373423882_ _g2373623886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2373423882_
                                                  _g2373623886_))))
                                          (_g2373224010_
                                           (lambda (_g2373623929_)
                                             (if (gx#stx-pair? _g2373623929_)
                                                 (let ((_e2383723932_
                                                        (gx#syntax-e
                                                         _g2373623929_)))
                                                   (let ((_hd2383823936_
                                                          (##car _e2383723932_))
                                                         (_tl2383923939_
                                                          (##cdr _e2383723932_)))
                                                     (if (gx#stx-datum?
                                                          _hd2383823936_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2383823936_)
                             'apply:)
                     (if (gx#stx-pair? _tl2383923939_)
                         (let ((_e2384023942_ (gx#syntax-e _tl2383923939_)))
                           (let ((_hd2384123946_ (##car _e2384023942_))
                                 (_tl2384223949_ (##cdr _e2384023942_)))
                             (if (gx#stx-pair? _tl2384223949_)
                                 (let ((_e2384323952_
                                        (gx#syntax-e _tl2384223949_)))
                                   (let ((_hd2384423956_ (##car _e2384323952_))
                                         (_tl2384523959_
                                          (##cdr _e2384323952_)))
                                     (if (gx#stx-null? _tl2384523959_)
                                         ((lambda (_L23962_ _L23964_)
                                            (let* ((_g2397923987_
                                                    (lambda (_g2398023983_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2398023983_)))
                                                   (_g2397824006_
                                                    (lambda (_g2398023991_)
                                                      ((lambda (_L23994_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L23994_
                                           (cons (cons _L23964_
                                                       (cons _L23708_ '()))
                                                 '()))
                                     '())
                               (cons (_generate122157_
                                      _L23994_
                                      _L23962_
                                      _K23690_
                                      _E23691_)
                                     '())))))
               _g2398023991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2397824006_
                                               (gx#genident 'e))))
                                          _hd2384423956_
                                          _hd2384123946_)
                                         (_g2373323925_ _g2373623929_))))
                                 (_g2373323925_ _g2373623929_))))
                         (_g2373323925_ _g2373623929_))
                     (_g2373323925_ _g2373623929_))
                 (_g2373323925_ _g2373623929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2373323925_
                                                  _g2373623929_))))
                                          (_g2373124092_
                                           (lambda (_g2373624014_)
                                             (if (gx#stx-pair? _g2373624014_)
                                                 (let ((_e2382924017_
                                                        (gx#syntax-e
                                                         _g2373624014_)))
                                                   (let ((_hd2383024021_
                                                          (##car _e2382924017_))
                                                         (_tl2383124024_
                                                          (##cdr _e2382924017_)))
                                                     (if (gx#stx-datum?
                                                          _hd2383024021_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2383024021_)
                             'datum:)
                     (if (gx#stx-pair? _tl2383124024_)
                         (let ((_e2383224027_ (gx#syntax-e _tl2383124024_)))
                           (let ((_hd2383324031_ (##car _e2383224027_))
                                 (_tl2383424034_ (##cdr _e2383224027_)))
                             (if (gx#stx-null? _tl2383424034_)
                                 ((lambda (_L24037_)
                                    (let* ((_g2405024058_
                                            (lambda (_g2405124054_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2405124054_)))
                                           (_g2404924077_
                                            (lambda (_g2405124062_)
                                              ((lambda (_L24065_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L24065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L23708_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L24037_ '()))
                                         '())))
                       (cons _K23690_ (cons _E23691_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2405124062_))))
                                      (_g2404924077_
                                       (let ((_e24081_ (gx#stx-e _L24037_)))
                                         (if (let ((_$e24084_
                                                    (symbol? _e24081_)))
                                               (if _$e24084_
                                                   _$e24084_
                                                   (let ((_$e24088_
                                                          (keyword? _e24081_)))
                                                     (if _$e24088_
                                                         _$e24088_
                                                         (immediate?
                                                          _e24081_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e24081_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2383324031_)
                                 (_g2373224010_ _g2373624014_))))
                         (_g2373224010_ _g2373624014_))
                     (_g2373224010_ _g2373624014_))
                 (_g2373224010_ _g2373624014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2373224010_
                                                  _g2373624014_))))
                                          (_g2373024146_
                                           (lambda (_g2373624096_)
                                             (if (gx#stx-pair? _g2373624096_)
                                                 (let ((_e2381924099_
                                                        (gx#syntax-e
                                                         _g2373624096_)))
                                                   (let ((_hd2382024103_
                                                          (##car _e2381924099_))
                                                         (_tl2382124106_
                                                          (##cdr _e2381924099_)))
                                                     (if (gx#stx-datum?
                                                          _hd2382024103_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2382024103_)
                             'class:)
                     (if (gx#stx-pair? _tl2382124106_)
                         (let ((_e2382224109_ (gx#syntax-e _tl2382124106_)))
                           (let ((_hd2382324113_ (##car _e2382224109_))
                                 (_tl2382424116_ (##cdr _e2382224109_)))
                             (if (gx#stx-pair? _tl2382424116_)
                                 (let ((_e2382524119_
                                        (gx#syntax-e _tl2382424116_)))
                                   (let ((_hd2382624123_ (##car _e2382524119_))
                                         (_tl2382724126_
                                          (##cdr _e2382524119_)))
                                     (if (gx#stx-null? _tl2382724126_)
                                         ((lambda (_L24129_ _L24131_)
                                            (_generate-class22163_
                                             (gx#stx-e _L24131_)
                                             _tgt23687_
                                             _L24129_
                                             _K23690_
                                             _E23691_))
                                          _hd2382624123_
                                          _hd2382324113_)
                                         (_g2373124092_ _g2373624096_))))
                                 (_g2373124092_ _g2373624096_))))
                         (_g2373124092_ _g2373624096_))
                     (_g2373124092_ _g2373624096_))
                 (_g2373124092_ _g2373624096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2373124092_
                                                  _g2373624096_))))
                                          (_g2372924200_
                                           (lambda (_g2373624150_)
                                             (if (gx#stx-pair? _g2373624150_)
                                                 (let ((_e2380824153_
                                                        (gx#syntax-e
                                                         _g2373624150_)))
                                                   (let ((_hd2380924157_
                                                          (##car _e2380824153_))
                                                         (_tl2381024160_
                                                          (##cdr _e2380824153_)))
                                                     (if (gx#stx-datum?
                                                          _hd2380924157_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2380924157_)
                             'struct:)
                     (if (gx#stx-pair? _tl2381024160_)
                         (let ((_e2381124163_ (gx#syntax-e _tl2381024160_)))
                           (let ((_hd2381224167_ (##car _e2381124163_))
                                 (_tl2381324170_ (##cdr _e2381124163_)))
                             (if (gx#stx-pair? _tl2381324170_)
                                 (let ((_e2381424173_
                                        (gx#syntax-e _tl2381324170_)))
                                   (let ((_hd2381524177_ (##car _e2381424173_))
                                         (_tl2381624180_
                                          (##cdr _e2381424173_)))
                                     (if (gx#stx-null? _tl2381624180_)
                                         ((lambda (_L24183_ _L24185_)
                                            (_generate-struct22162_
                                             (gx#stx-e _L24185_)
                                             _tgt23687_
                                             _L24183_
                                             _K23690_
                                             _E23691_))
                                          _hd2381524177_
                                          _hd2381224167_)
                                         (_g2373024146_ _g2373624150_))))
                                 (_g2373024146_ _g2373624150_))))
                         (_g2373024146_ _g2373624150_))
                     (_g2373024146_ _g2373624150_))
                 (_g2373024146_ _g2373624150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2373024146_
                                                  _g2373624150_))))
                                          (_g2372824378_
                                           (lambda (_g2373624204_)
                                             (if (gx#stx-pair? _g2373624204_)
                                                 (let ((_e2380024207_
                                                        (gx#syntax-e
                                                         _g2373624204_)))
                                                   (let ((_hd2380124211_
                                                          (##car _e2380024207_))
                                                         (_tl2380224214_
                                                          (##cdr _e2380024207_)))
                                                     (if (gx#stx-datum?
                                                          _hd2380124211_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2380124211_)
                             'vector:)
                     (if (gx#stx-pair? _tl2380224214_)
                         (let ((_e2380324217_ (gx#syntax-e _tl2380224214_)))
                           (let ((_hd2380424221_ (##car _e2380324217_))
                                 (_tl2380524224_ (##cdr _e2380324217_)))
                             (if (gx#stx-null? _tl2380524224_)
                                 ((lambda (_L24227_)
                                    (let* ((_g2424124262_
                                            (lambda (_g2424224258_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2424224258_)))
                                           (_g2424024303_
                                            (lambda (_g2424224266_)
                                              (if (gx#stx-pair? _g2424224266_)
                                                  (let ((_e2425124269_
                                                         (gx#syntax-e
                                                          _g2424224266_)))
                                                    (let ((_hd2425224273_
                                                           (##car _e2425124269_))
                                                          (_tl2425324276_
                                                           (##cdr _e2425124269_)))
                                                      (if (gx#stx-datum?
                                                           _hd2425224273_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2425224273_)
                              'list:)
                      (if (gx#stx-pair? _tl2425324276_)
                          (let ((_e2425424279_ (gx#syntax-e _tl2425324276_)))
                            (let ((_hd2425524283_ (##car _e2425424279_))
                                  (_tl2425624286_ (##cdr _e2425424279_)))
                              (if (gx#stx-null? _tl2425624286_)
                                  ((lambda (_L24289_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L23708_ '()))
                                                 (cons (_generate-list-vector22161_
                                                        _tgt23687_
                                                        _L24289_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K23690_
                                                        _E23691_)
                                                       (cons _E23691_ '())))))
                                   _hd2425524283_)
                                  (_g2424124262_ _g2424224266_))))
                          (_g2424124262_ _g2424224266_))
                      (_g2424124262_ _g2424224266_))
                  (_g2424124262_ _g2424224266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2424124262_
                                                   _g2424224266_))))
                                           (_g2423924374_
                                            (lambda (_g2424224307_)
                                              (if (gx#stx-pair? _g2424224307_)
                                                  (let ((_e2424424310_
                                                         (gx#syntax-e
                                                          _g2424224307_)))
                                                    (let ((_hd2424524314_
                                                           (##car _e2424424310_))
                                                          (_tl2424624317_
                                                           (##cdr _e2424424310_)))
                                                      (if (gx#stx-datum?
                                                           _hd2424524314_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2424524314_)
                              'simple:)
                      (if (gx#stx-pair? _tl2424624317_)
                          (let ((_e2424724320_ (gx#syntax-e _tl2424624317_)))
                            (let ((_hd2424824324_ (##car _e2424724320_))
                                  (_tl2424924327_ (##cdr _e2424724320_)))
                              (if (gx#stx-null? _tl2424924327_)
                                  ((lambda (_L24330_)
                                     (let* ((_g2434324351_
                                             (lambda (_g2434424347_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2434424347_)))
                                            (_g2434224370_
                                             (lambda (_g2434424355_)
                                               ((lambda (_L24358_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L23708_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L23708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L24358_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector22160_
                               _tgt23687_
                               _L24330_
                               '0
                               _K23690_
                               _E23691_)
                              (cons _E23691_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2434424355_))))
                                       (_g2434224370_
                                        (gx#stx-length _L24330_))))
                                   _hd2424824324_)
                                  (_g2424024303_ _g2424224307_))))
                          (_g2424024303_ _g2424224307_))
                      (_g2424024303_ _g2424224307_))
                  (_g2424024303_ _g2424224307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2424024303_
                                                   _g2424224307_)))))
                                      (_g2423924374_ _L24227_)))
                                  _hd2380424221_)
                                 (_g2372924200_ _g2373624204_))))
                         (_g2372924200_ _g2373624204_))
                     (_g2372924200_ _g2373624204_))
                 (_g2372924200_ _g2373624204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372924200_
                                                  _g2373624204_))))
                                          (_g2372724556_
                                           (lambda (_g2373624382_)
                                             (if (gx#stx-pair? _g2373624382_)
                                                 (let ((_e2379324385_
                                                        (gx#syntax-e
                                                         _g2373624382_)))
                                                   (let ((_hd2379424389_
                                                          (##car _e2379324385_))
                                                         (_tl2379524392_
                                                          (##cdr _e2379324385_)))
                                                     (if (gx#stx-datum?
                                                          _hd2379424389_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2379424389_)
                             'values:)
                     (if (gx#stx-pair? _tl2379524392_)
                         (let ((_e2379624395_ (gx#syntax-e _tl2379524392_)))
                           (let ((_hd2379724399_ (##car _e2379624395_))
                                 (_tl2379824402_ (##cdr _e2379624395_)))
                             (if (gx#stx-null? _tl2379824402_)
                                 ((lambda (_L24405_)
                                    (let* ((_g2441924440_
                                            (lambda (_g2442024436_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2442024436_)))
                                           (_g2441824481_
                                            (lambda (_g2442024444_)
                                              (if (gx#stx-pair? _g2442024444_)
                                                  (let ((_e2442924447_
                                                         (gx#syntax-e
                                                          _g2442024444_)))
                                                    (let ((_hd2443024451_
                                                           (##car _e2442924447_))
                                                          (_tl2443124454_
                                                           (##cdr _e2442924447_)))
                                                      (if (gx#stx-datum?
                                                           _hd2443024451_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2443024451_)
                              'list:)
                      (if (gx#stx-pair? _tl2443124454_)
                          (let ((_e2443224457_ (gx#syntax-e _tl2443124454_)))
                            (let ((_hd2443324461_ (##car _e2443224457_))
                                  (_tl2443424464_ (##cdr _e2443224457_)))
                              (if (gx#stx-null? _tl2443424464_)
                                  ((lambda (_L24467_)
                                     (_generate-list-vector22161_
                                      _tgt23687_
                                      _L24467_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K23690_
                                      _E23691_))
                                   _hd2443324461_)
                                  (_g2441924440_ _g2442024444_))))
                          (_g2441924440_ _g2442024444_))
                      (_g2441924440_ _g2442024444_))
                  (_g2441924440_ _g2442024444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2441924440_
                                                   _g2442024444_))))
                                           (_g2441724552_
                                            (lambda (_g2442024485_)
                                              (if (gx#stx-pair? _g2442024485_)
                                                  (let ((_e2442224488_
                                                         (gx#syntax-e
                                                          _g2442024485_)))
                                                    (let ((_hd2442324492_
                                                           (##car _e2442224488_))
                                                          (_tl2442424495_
                                                           (##cdr _e2442224488_)))
                                                      (if (gx#stx-datum?
                                                           _hd2442324492_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2442324492_)
                              'simple:)
                      (if (gx#stx-pair? _tl2442424495_)
                          (let ((_e2442524498_ (gx#syntax-e _tl2442424495_)))
                            (let ((_hd2442624502_ (##car _e2442524498_))
                                  (_tl2442724505_ (##cdr _e2442524498_)))
                              (if (gx#stx-null? _tl2442724505_)
                                  ((lambda (_L24508_)
                                     (let* ((_g2452124529_
                                             (lambda (_g2452224525_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2452224525_)))
                                            (_g2452024548_
                                             (lambda (_g2452224533_)
                                               ((lambda (_L24536_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L23708_ '()))
                                    (cons _L24536_ '())))
                        (cons (_generate-simple-vector22160_
                               _tgt23687_
                               _L24508_
                               '0
                               _K23690_
                               _E23691_)
                              (cons _E23691_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2452224533_))))
                                       (_g2452024548_
                                        (gx#stx-length _L24508_))))
                                   _hd2442624502_)
                                  (_g2441824481_ _g2442024485_))))
                          (_g2441824481_ _g2442024485_))
                      (_g2441824481_ _g2442024485_))
                  (_g2441824481_ _g2442024485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2441824481_
                                                   _g2442024485_)))))
                                      (_g2441724552_ _L24405_)))
                                  _hd2379724399_)
                                 (_g2372824378_ _g2373624382_))))
                         (_g2372824378_ _g2373624382_))
                     (_g2372824378_ _g2373624382_))
                 (_g2372824378_ _g2373624382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372824378_
                                                  _g2373624382_))))
                                          (_g2372624627_
                                           (lambda (_g2373624560_)
                                             (if (gx#stx-pair? _g2373624560_)
                                                 (let ((_e2378624563_
                                                        (gx#syntax-e
                                                         _g2373624560_)))
                                                   (let ((_hd2378724567_
                                                          (##car _e2378624563_))
                                                         (_tl2378824570_
                                                          (##cdr _e2378624563_)))
                                                     (if (gx#stx-datum?
                                                          _hd2378724567_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2378724567_)
                             'box:)
                     (if (gx#stx-pair? _tl2378824570_)
                         (let ((_e2378924573_ (gx#syntax-e _tl2378824570_)))
                           (let ((_hd2379024577_ (##car _e2378924573_))
                                 (_tl2379124580_ (##cdr _e2378924573_)))
                             (if (gx#stx-null? _tl2379124580_)
                                 ((lambda (_L24583_)
                                    (let* ((_g2459624604_
                                            (lambda (_g2459724600_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2459724600_)))
                                           (_g2459524623_
                                            (lambda (_g2459724608_)
                                              ((lambda (_L24611_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L23708_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L24611_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L23708_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate122157_
                                                _L24611_
                                                _L24583_
                                                _K23690_
                                                _E23691_)
                                               '())))
                             (cons _E23691_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2459724608_))))
                                      (_g2459524623_ (gx#genident 'e))))
                                  _hd2379024577_)
                                 (_g2372724556_ _g2373624560_))))
                         (_g2372724556_ _g2373624560_))
                     (_g2372724556_ _g2373624560_))
                 (_g2372724556_ _g2373624560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372724556_
                                                  _g2373624560_))))
                                          (_g2372524681_
                                           (lambda (_g2373624631_)
                                             (if (gx#stx-pair? _g2373624631_)
                                                 (let ((_e2377624634_
                                                        (gx#syntax-e
                                                         _g2373624631_)))
                                                   (let ((_hd2377724638_
                                                          (##car _e2377624634_))
                                                         (_tl2377824641_
                                                          (##cdr _e2377624634_)))
                                                     (if (gx#stx-datum?
                                                          _hd2377724638_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2377724638_)
                             'splice:)
                     (if (gx#stx-pair? _tl2377824641_)
                         (let ((_e2377924644_ (gx#syntax-e _tl2377824641_)))
                           (let ((_hd2378024648_ (##car _e2377924644_))
                                 (_tl2378124651_ (##cdr _e2377924644_)))
                             (if (gx#stx-pair? _tl2378124651_)
                                 (let ((_e2378224654_
                                        (gx#syntax-e _tl2378124651_)))
                                   (let ((_hd2378324658_ (##car _e2378224654_))
                                         (_tl2378424661_
                                          (##cdr _e2378224654_)))
                                     (if (gx#stx-null? _tl2378424661_)
                                         ((lambda (_L24664_ _L24666_)
                                            (_generate-splice22159_
                                             _tgt23687_
                                             _L24666_
                                             _L24664_
                                             _K23690_
                                             _E23691_))
                                          _hd2378324658_
                                          _hd2378024648_)
                                         (_g2372624627_ _g2373624631_))))
                                 (_g2372624627_ _g2373624631_))))
                         (_g2372624627_ _g2373624631_))
                     (_g2372624627_ _g2373624631_))
                 (_g2372624627_ _g2373624631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372624627_
                                                  _g2373624631_))))
                                          (_g2372424702_
                                           (lambda (_g2373624685_)
                                             (if (gx#stx-pair? _g2373624685_)
                                                 (let ((_e2377124688_
                                                        (gx#syntax-e
                                                         _g2373624685_)))
                                                   (let ((_hd2377224692_
                                                          (##car _e2377124688_))
                                                         (_tl2377324695_
                                                          (##cdr _e2377124688_)))
                                                     (if (gx#stx-datum?
                                                          _hd2377224692_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2377224692_)
                             'null:)
                     (if (gx#stx-null? _tl2377324695_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L23708_ '()))
                                        (cons _K23690_ (cons _E23691_ '()))))))
                         (_g2372524681_ _g2373624685_))
                     (_g2372524681_ _g2373624685_))
                 (_g2372524681_ _g2373624685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372524681_
                                                  _g2373624685_))))
                                          (_g2372324821_
                                           (lambda (_g2373624706_)
                                             (if (gx#stx-pair? _g2373624706_)
                                                 (let ((_e2376224709_
                                                        (gx#syntax-e
                                                         _g2373624706_)))
                                                   (let ((_hd2376324713_
                                                          (##car _e2376224709_))
                                                         (_tl2376424716_
                                                          (##cdr _e2376224709_)))
                                                     (if (gx#stx-datum?
                                                          _hd2376324713_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2376324713_)
                             'cons:)
                     (if (gx#stx-pair? _tl2376424716_)
                         (let ((_e2376524719_ (gx#syntax-e _tl2376424716_)))
                           (let ((_hd2376624723_ (##car _e2376524719_))
                                 (_tl2376724726_ (##cdr _e2376524719_)))
                             (if (gx#stx-pair? _tl2376724726_)
                                 (let ((_e2376824729_
                                        (gx#syntax-e _tl2376724726_)))
                                   (let ((_hd2376924733_ (##car _e2376824729_))
                                         (_tl2377024736_
                                          (##cdr _e2376824729_)))
                                     (if (gx#stx-null? _tl2377024736_)
                                         ((lambda (_L24739_ _L24741_)
                                            (let* ((_g2475724772_
                                                    (lambda (_g2475824768_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2475824768_)))
                                                   (_g2475624817_
                                                    (lambda (_g2475824776_)
                                                      (if (gx#stx-pair?
                                                           _g2475824776_)
                                                          (let ((_e2476124779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2475824776_)))
                    (let ((_hd2476224783_ (##car _e2476124779_))
                          (_tl2476324786_ (##cdr _e2476124779_)))
                      (if (gx#stx-pair? _tl2476324786_)
                          (let ((_e2476424789_ (gx#syntax-e _tl2476324786_)))
                            (let ((_hd2476524793_ (##car _e2476424789_))
                                  (_tl2476624796_ (##cdr _e2476424789_)))
                              (if (gx#stx-null? _tl2476624796_)
                                  ((lambda (_L24799_ _L24801_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L23708_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L24801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L23708_ '()))
                                               '()))
                                   (cons (cons _L24799_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L23708_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate122157_
                                    _L24801_
                                    _L24741_
                                    (_generate122157_
                                     _L24799_
                                     _L24739_
                                     _K23690_
                                     _E23691_)
                                    _E23691_)
                                   '())))
                 (cons _E23691_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2476524793_
                                   _hd2476224783_)
                                  (_g2475724772_ _g2475824776_))))
                          (_g2475724772_ _g2475824776_))))
                  (_g2475724772_ _g2475824776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2475624817_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2376924733_
                                          _hd2376624723_)
                                         (_g2372424702_ _g2373624706_))))
                                 (_g2372424702_ _g2373624706_))))
                         (_g2372424702_ _g2373624706_))
                     (_g2372424702_ _g2373624706_))
                 (_g2372424702_ _g2373624706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372424702_
                                                  _g2373624706_))))
                                          (_g2372224861_
                                           (lambda (_g2373624825_)
                                             (if (gx#stx-pair? _g2373624825_)
                                                 (let ((_e2375424828_
                                                        (gx#syntax-e
                                                         _g2373624825_)))
                                                   (let ((_hd2375524832_
                                                          (##car _e2375424828_))
                                                         (_tl2375624835_
                                                          (##cdr _e2375424828_)))
                                                     (if (gx#stx-datum?
                                                          _hd2375524832_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2375524832_)
                             'not:)
                     (if (gx#stx-pair? _tl2375624835_)
                         (let ((_e2375724838_ (gx#syntax-e _tl2375624835_)))
                           (let ((_hd2375824842_ (##car _e2375724838_))
                                 (_tl2375924845_ (##cdr _e2375724838_)))
                             (if (gx#stx-null? _tl2375924845_)
                                 ((lambda (_L24848_)
                                    (_generate122157_
                                     _tgt23687_
                                     _L24848_
                                     _E23691_
                                     _K23690_))
                                  _hd2375824842_)
                                 (_g2372324821_ _g2373624825_))))
                         (_g2372324821_ _g2373624825_))
                     (_g2372324821_ _g2373624825_))
                 (_g2372324821_ _g2373624825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372324821_
                                                  _g2373624825_))))
                                          (_g2372124949_
                                           (lambda (_g2373624865_)
                                             (if (gx#stx-pair? _g2373624865_)
                                                 (let ((_e2375024868_
                                                        (gx#syntax-e
                                                         _g2373624865_)))
                                                   (let ((_hd2375124872_
                                                          (##car _e2375024868_))
                                                         (_tl2375224875_
                                                          (##cdr _e2375024868_)))
                                                     (if (gx#stx-datum?
                                                          _hd2375124872_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2375124872_)
                             'or:)
                     ((lambda (_L24878_)
                        (let* ((_g2489024902_
                                (lambda (_g2489124898_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2489124898_)))
                               (_g2488924913_
                                (lambda (_g2489124906_)
                                  ((lambda () _E23691_))))
                               (_g2488824945_
                                (lambda (_g2489124917_)
                                  (if (gx#stx-pair? _g2489124917_)
                                      (let ((_e2489424920_
                                             (gx#syntax-e _g2489124917_)))
                                        (let ((_hd2489524924_
                                               (##car _e2489424920_))
                                              (_tl2489624927_
                                               (##cdr _e2489424920_)))
                                          ((lambda (_L24930_ _L24932_)
                                             (_generate122157_
                                              _tgt23687_
                                              _L24932_
                                              _K23690_
                                              (_generate122157_
                                               _tgt23687_
                                               (cons 'or: _L24930_)
                                               _K23690_
                                               _E23691_)))
                                           _tl2489624927_
                                           _hd2489524924_)))
                                      (_g2488924913_ _g2489124917_)))))
                          (_g2488824945_ _L24878_)))
                      _tl2375224875_)
                     (_g2372224861_ _g2373624865_))
                 (_g2372224861_ _g2373624865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372224861_
                                                  _g2373624865_))))
                                          (_g2372025037_
                                           (lambda (_g2373624953_)
                                             (if (gx#stx-pair? _g2373624953_)
                                                 (let ((_e2374624956_
                                                        (gx#syntax-e
                                                         _g2373624953_)))
                                                   (let ((_hd2374724960_
                                                          (##car _e2374624956_))
                                                         (_tl2374824963_
                                                          (##cdr _e2374624956_)))
                                                     (if (gx#stx-datum?
                                                          _hd2374724960_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2374724960_)
                             'and:)
                     ((lambda (_L24966_)
                        (let* ((_g2497824990_
                                (lambda (_g2497924986_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2497924986_)))
                               (_g2497725001_
                                (lambda (_g2497924994_)
                                  ((lambda () _K23690_))))
                               (_g2497625033_
                                (lambda (_g2497925005_)
                                  (if (gx#stx-pair? _g2497925005_)
                                      (let ((_e2498225008_
                                             (gx#syntax-e _g2497925005_)))
                                        (let ((_hd2498325012_
                                               (##car _e2498225008_))
                                              (_tl2498425015_
                                               (##cdr _e2498225008_)))
                                          ((lambda (_L25018_ _L25020_)
                                             (_generate122157_
                                              _tgt23687_
                                              _L25020_
                                              (_generate122157_
                                               _tgt23687_
                                               (cons 'and: _L25018_)
                                               _K23690_
                                               _E23691_)
                                              _E23691_))
                                           _tl2498425015_
                                           _hd2498325012_)))
                                      (_g2497725001_ _g2497925005_)))))
                          (_g2497625033_ _L24966_)))
                      _tl2374824963_)
                     (_g2372124949_ _g2373624953_))
                 (_g2372124949_ _g2373624953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372124949_
                                                  _g2373624953_))))
                                          (_g2371925326_
                                           (lambda (_g2373625041_)
                                             (if (gx#stx-pair? _g2373625041_)
                                                 (let ((_e2373925044_
                                                        (gx#syntax-e
                                                         _g2373625041_)))
                                                   (let ((_hd2374025048_
                                                          (##car _e2373925044_))
                                                         (_tl2374125051_
                                                          (##cdr _e2373925044_)))
                                                     (if (gx#stx-datum?
                                                          _hd2374025048_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2374025048_)
                             '?:)
                     (if (gx#stx-pair? _tl2374125051_)
                         (let ((_e2374225054_ (gx#syntax-e _tl2374125051_)))
                           (let ((_hd2374325058_ (##car _e2374225054_))
                                 (_tl2374425061_ (##cdr _e2374225054_)))
                             ((lambda (_L25064_ _L25066_)
                                (let* ((_g2508225114_
                                        (lambda (_g2508325110_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2508325110_)))
                                       (_g2508125212_
                                        (lambda (_g2508325118_)
                                          (if (gx#stx-pair? _g2508325118_)
                                              (let ((_e2509725121_
                                                     (gx#syntax-e
                                                      _g2508325118_)))
                                                (let ((_hd2509825125_
                                                       (##car _e2509725121_))
                                                      (_tl2509925128_
                                                       (##cdr _e2509725121_)))
                                                  (if (gx#stx-datum?
                                                       _hd2509825125_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2509825125_)
                          '::)
                  (if (gx#stx-pair? _tl2509925128_)
                      (let ((_e2510025131_ (gx#syntax-e _tl2509925128_)))
                        (let ((_hd2510125135_ (##car _e2510025131_))
                              (_tl2510225138_ (##cdr _e2510025131_)))
                          (if (gx#stx-pair? _tl2510225138_)
                              (let ((_e2510325141_
                                     (gx#syntax-e _tl2510225138_)))
                                (let ((_hd2510425145_ (##car _e2510325141_))
                                      (_tl2510525148_ (##cdr _e2510325141_)))
                                  (if (gx#stx-datum? _hd2510425145_)
                                      (if (equal? (gx#stx-e _hd2510425145_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2510525148_)
                                              (let ((_e2510625151_
                                                     (gx#syntax-e
                                                      _tl2510525148_)))
                                                (let ((_hd2510725155_
                                                       (##car _e2510625151_))
                                                      (_tl2510825158_
                                                       (##cdr _e2510625151_)))
                                                  (if (gx#stx-null?
                                                       _tl2510825158_)
                                                      ((lambda (_L25161_
                                                                _L25163_)
                                                         (let* ((_g2518125189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2518225185_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2518225185_)))
                        (_g2518025208_
                         (lambda (_g2518225193_)
                           ((lambda (_L25196_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L25066_
                                                        (cons _L23708_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L25196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L25163_ (cons _L23708_ '()))
                                        '()))
                            '())
                      (cons (_generate122157_
                             _L25196_
                             _L25161_
                             _K23690_
                             _E23691_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E23691_ '()))))))
                            _g2518225193_))))
                   (_g2518025208_ (gx#genident 'e))))
               _hd2510725155_
               _hd2510125135_)
              (_g2508225114_ _g2508325118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2508225114_ _g2508325118_))
                                          (_g2508225114_ _g2508325118_))
                                      (_g2508225114_ _g2508325118_))))
                              (_g2508225114_ _g2508325118_))))
                      (_g2508225114_ _g2508325118_))
                  (_g2508225114_ _g2508325118_))
              (_g2508225114_ _g2508325118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2508225114_ _g2508325118_))))
                                       (_g2508025283_
                                        (lambda (_g2508325216_)
                                          (if (gx#stx-pair? _g2508325216_)
                                              (let ((_e2508925219_
                                                     (gx#syntax-e
                                                      _g2508325216_)))
                                                (let ((_hd2509025223_
                                                       (##car _e2508925219_))
                                                      (_tl2509125226_
                                                       (##cdr _e2508925219_)))
                                                  (if (gx#stx-datum?
                                                       _hd2509025223_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2509025223_)
                          '=>:)
                  (if (gx#stx-pair? _tl2509125226_)
                      (let ((_e2509225229_ (gx#syntax-e _tl2509125226_)))
                        (let ((_hd2509325233_ (##car _e2509225229_))
                              (_tl2509425236_ (##cdr _e2509225229_)))
                          (if (gx#stx-null? _tl2509425236_)
                              ((lambda (_L25239_)
                                 (let* ((_g2525225260_
                                         (lambda (_g2525325256_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2525325256_)))
                                        (_g2525125279_
                                         (lambda (_g2525325264_)
                                           ((lambda (_L25267_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L25267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L25066_ (cons _L23708_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L25267_
                                      (cons (_generate122157_
                                             _L25267_
                                             _L25239_
                                             _K23690_
                                             _E23691_)
                                            (cons _E23691_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2525325264_))))
                                   (_g2525125279_ (gx#genident 'e))))
                               _hd2509325233_)
                              (_g2508125212_ _g2508325216_))))
                      (_g2508125212_ _g2508325216_))
                  (_g2508125212_ _g2508325216_))
              (_g2508125212_ _g2508325216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2508125212_ _g2508325216_))))
                                       (_g2507925311_
                                        (lambda (_g2508325287_)
                                          (if (gx#stx-pair? _g2508325287_)
                                              (let ((_e2508525290_
                                                     (gx#syntax-e
                                                      _g2508325287_)))
                                                (let ((_hd2508625294_
                                                       (##car _e2508525290_))
                                                      (_tl2508725297_
                                                       (##cdr _e2508525290_)))
                                                  (if (gx#stx-null?
                                                       _tl2508725297_)
                                                      ((lambda (_L25300_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L25066_ (cons _L23708_ '())))
                             (cons (_generate122157_
                                    _tgt23687_
                                    _L25300_
                                    _K23690_
                                    _E23691_)
                                   (cons _E23691_ '())))))
               _hd2508625294_)
              (_g2508025283_ _g2508325287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2508025283_ _g2508325287_))))
                                       (_g2507825322_
                                        (lambda (_g2508325315_)
                                          (if (gx#stx-null? _g2508325315_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L25066_ (cons _L23708_ '())))
                     (cons _K23690_ (cons _E23691_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2507925311_ _g2508325315_)))))
                                  (_g2507825322_ _L25064_)))
                              _tl2374425061_
                              _hd2374325058_)))
                         (_g2372025037_ _g2373625041_))
                     (_g2372025037_ _g2373625041_))
                 (_g2372025037_ _g2373625041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2372025037_
                                                  _g2373625041_)))))
                                     (_g2371925326_ _ptree23689_))))
                               _g2369423705_))))
                      (_g2369225330_ _tgt23687_))))
                 (_generate-splice22159_
                  (lambda (_tgt23059_ _hd23061_ _rest23062_ _K23063_ _E23064_)
                    (let* ((_g2306623083_
                            (lambda (_g2306723079_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2306723079_)))
                           (_g2306523683_
                            (lambda (_g2306723087_)
                              (if (gx#stx-pair/null? _g2306723087_)
                                  (if (fx>= (gx#stx-length _g2306723087_) '0)
                                      (let ((_g34662_
                                             (gx#syntax-split-splice
                                              _g2306723087_
                                              '0)))
                                        (begin
                                          (let ((_g34663_
                                                 (values-count _g34662_)))
                                            (if (not (fx= _g34663_ 2))
                                                (error "Context expects 2 values"
                                                       _g34663_)))
                                          (let ((_target2306923090_
                                                 (values-ref _g34662_ 0))
                                                (_tl2307123093_
                                                 (values-ref _g34662_ 1)))
                                            (if (gx#stx-null? _tl2307123093_)
                                                (letrec ((_loop2307223096_
                                                          (lambda (_hd2307023100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2307623103_)
                    (if (gx#stx-pair? _hd2307023100_)
                        (let ((_e2307323106_ (gx#syntax-e _hd2307023100_)))
                          (let ((_lp-hd2307423110_ (##car _e2307323106_))
                                (_lp-tl2307523113_ (##cdr _e2307323106_)))
                            (_loop2307223096_
                             _lp-tl2307523113_
                             (cons _lp-hd2307423110_ _var2307623103_))))
                        (let ((_var2307723116_ (reverse _var2307623103_)))
                          ((lambda (_L23120_)
                             (let ()
                               (let* ((_g2313623153_
                                       (lambda (_g2313723149_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2313723149_)))
                                      (_g2313523671_
                                       (lambda (_g2313723157_)
                                         (if (gx#stx-pair/null? _g2313723157_)
                                             (if (fx>= (gx#stx-length
                                                        _g2313723157_)
                                                       '0)
                                                 (let ((_g34664_
                                                        (gx#syntax-split-splice
                                                         _g2313723157_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34665_
                                                            (values-count
                                                             _g34664_)))
                                                       (if (not (fx= _g34665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2313923160_
                                                            (values-ref
                                                             _g34664_
                                                             0))
                                                           (_tl2314123163_
                                                            (values-ref
                                                             _g34664_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2314123163_)
                                                           (letrec ((_loop2314223166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2314023170_ _var-r2314623173_)
                               (if (gx#stx-pair? _hd2314023170_)
                                   (let ((_e2314323176_
                                          (gx#syntax-e _hd2314023170_)))
                                     (let ((_lp-hd2314423180_
                                            (##car _e2314323176_))
                                           (_lp-tl2314523183_
                                            (##cdr _e2314323176_)))
                                       (_loop2314223166_
                                        _lp-tl2314523183_
                                        (cons _lp-hd2314423180_
                                              _var-r2314623173_))))
                                   (let ((_var-r2314723186_
                                          (reverse _var-r2314623173_)))
                                     ((lambda (_L23190_)
                                        (let ()
                                          (let* ((_g2320723224_
                                                  (lambda (_g2320823220_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2320823220_)))
                                                 (_g2320623659_
                                                  (lambda (_g2320823228_)
                                                    (if (gx#stx-pair/null?
                                                         _g2320823228_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2320823228_)
                          '0)
                    (let ((_g34666_ (gx#syntax-split-splice _g2320823228_ '0)))
                      (begin
                        (let ((_g34667_ (values-count _g34666_)))
                          (if (not (fx= _g34667_ 2))
                              (error "Context expects 2 values" _g34667_)))
                        (let ((_target2321023231_ (values-ref _g34666_ 0))
                              (_tl2321223234_ (values-ref _g34666_ 1)))
                          (if (gx#stx-null? _tl2321223234_)
                              (letrec ((_loop2321323237_
                                        (lambda (_hd2321123241_
                                                 _init2321723244_)
                                          (if (gx#stx-pair? _hd2321123241_)
                                              (let ((_e2321423247_
                                                     (gx#syntax-e
                                                      _hd2321123241_)))
                                                (let ((_lp-hd2321523251_
                                                       (##car _e2321423247_))
                                                      (_lp-tl2321623254_
                                                       (##cdr _e2321423247_)))
                                                  (_loop2321323237_
                                                   _lp-tl2321623254_
                                                   (cons _lp-hd2321523251_
                                                         _init2321723244_))))
                                              (let ((_init2321823257_
                                                     (reverse _init2321723244_)))
                                                ((lambda (_L23261_)
                                                   (let ()
                                                     (let* ((_g2327823286_
                                                             (lambda (_g2327923282_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2327923282_)))
                                                            (_g2327723655_
                                                             (lambda (_g2327923290_)
                                                               ((lambda (_L23293_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2330623314_
                                    (lambda (_g2330723310_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2330723310_)))
                                   (_g2330523651_
                                    (lambda (_g2330723318_)
                                      ((lambda (_L23321_)
                                         (let ()
                                           (let* ((_g2333423342_
                                                   (lambda (_g2333523338_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2333523338_)))
                                                  (_g2333323647_
                                                   (lambda (_g2333523346_)
                                                     ((lambda (_L23349_)
                                                        (let ()
                                                          (let* ((_g2336223370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2336323366_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2336323366_)))
                         (_g2336123643_
                          (lambda (_g2336323374_)
                            ((lambda (_L23377_)
                               (let ()
                                 (let* ((_g2339023398_
                                         (lambda (_g2339123394_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2339123394_)))
                                        (_g2338923639_
                                         (lambda (_g2339123402_)
                                           ((lambda (_L23405_)
                                              (let ()
                                                (let* ((_g2341823426_
                                                        (lambda (_g2341923422_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2341923422_)))
                                                       (_g2341723635_
                                                        (lambda (_g2341923430_)
                                                          ((lambda (_L23433_)
                                                             (let ()
                                                               (let* ((_g2344623454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2344723450_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2344723450_)))
                              (_g2344523631_
                               (lambda (_g2344723458_)
                                 ((lambda (_L23461_)
                                    (let ()
                                      (let* ((_g2347423482_
                                              (lambda (_g2347523478_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2347523478_)))
                                             (_g2347323616_
                                              (lambda (_g2347523486_)
                                                ((lambda (_L23489_)
                                                   (let ()
                                                     (let* ((_g2350223510_
                                                             (lambda (_g2350323506_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2350323506_)))
                                                            (_g2350123604_
                                                             (lambda (_g2350323514_)
                                                               ((lambda (_L23517_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2353023538_
                                    (lambda (_g2353123534_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2353123534_)))
                                   (_g2352923600_
                                    (lambda (_g2353123542_)
                                      ((lambda (_L23545_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L23321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L23433_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2355923570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2356023573_)
                        (cons _g2355923570_ _g2356023573_))
                      '()
                      _L23120_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L23461_ '())))
                                   '()))
                       (cons (cons _L23377_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L23405_
                                                           (cons _L23433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2356123576_ _g2356223579_)
                                    (cons _g2356123576_ _g2356223579_))
                                  '()
                                  _L23190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L23545_ '())))
                                         '()))
                             (cons (cons _L23349_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L23433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2356323582_ _g2356423585_)
                                    (cons _g2356323582_ _g2356423585_))
                                  '()
                                  _L23190_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L23433_ '()))
                                     (cons (cons _L23377_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L23433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L23433_
                     (begin
                       '#!void
                       (foldr (lambda (_g2356523588_ _g2356623591_)
                                (cons _g2356523588_ _g2356623591_))
                              '()
                              _L23190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L23517_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L23349_
                             (cons _L23293_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2356723594_
                                                     _g2356823597_)
                                              (cons _g2356723594_
                                                    _g2356823597_))
                                            '()
                                            _L23261_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2353123542_))))
                              (_g2352923600_
                               (_generate122157_
                                _L23405_
                                _hd23061_
                                _L23489_
                                _L23517_)))))
                        _g2350323514_))))
               (_g2350123604_
                (cons _L23321_
                      (cons _L23433_
                            (begin
                              '#!void
                              (foldr (lambda (_g2360723610_ _g2360823613_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2360723610_ '()))
                                             _g2360823613_))
                                     '()
                                     _L23190_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2347523486_))))
                                        (_g2347323616_
                                         (cons _L23349_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L23433_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L23190_
                                                        _L23120_)
                                                       (foldr (lambda (_g2361923623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2362023626_
                               _g2362123628_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2362023626_
                                          (cons _g2361923623_ '())))
                              _g2362123628_))
                      '()
                      _L23190_
                      _L23120_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2344723458_))))
                         (_g2344523631_
                          (_generate122157_
                           _L23433_
                           _rest23062_
                           _K23063_
                           _E23064_)))))
                   _g2341923430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2341723635_
                                                   (gx#genident 'rest)))))
                                            _g2339123402_))))
                                   (_g2338923639_ (gx#genident 'hd)))))
                             _g2336323374_))))
                    (_g2336123643_ (gx#genident 'splice-try)))))
              _g2333523346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2333323647_
                                              (gx#genident 'splice-loop)))))
                                       _g2330723318_))))
                              (_g2330523651_ (gx#genident 'splice-rest)))))
                        _g2327923290_))))
               (_g2327723655_ _tgt23059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2321823257_))))))
                                (_loop2321323237_ _target2321023231_ '()))
                              (_g2320723224_ _g2320823228_)))))
                    (_g2320723224_ _g2320823228_))
                (_g2320723224_ _g2320823228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2320623659_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2366223665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2366323668_)
                  (cons _g2366223665_ _g2366323668_))
                '()
                _L23120_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2314723186_))))))
                     (_loop2314223166_ _target2313923160_ '()))
                   (_g2313623153_ _g2313723157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2313623153_ _g2313723157_))
                                             (_g2313623153_ _g2313723157_)))))
                                 (_g2313523671_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2367423677_
                                                     _g2367523680_)
                                              (cons _g2367423677_
                                                    _g2367523680_))
                                            '()
                                            _L23120_)))))))
                           _var2307723116_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2307223096_
                                                   _target2306923090_
                                                   '()))
                                                (_g2306623083_
                                                 _g2306723087_)))))
                                      (_g2306623083_ _g2306723087_))
                                  (_g2306623083_ _g2306723087_)))))
                      (_g2306523683_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd23061_)))))
                 (_generate-simple-vector22160_
                  (lambda (_tgt22901_
                           _body22903_
                           _start22904_
                           _K22905_
                           _E22906_)
                    (let _recur22908_ ((_rest22911_ _body22903_)
                                       (_off22913_ _start22904_))
                      (let* ((_g2291622928_
                              (lambda (_g2291722924_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2291722924_)))
                             (_g2291522939_
                              (lambda (_g2291722932_) ((lambda () _K22905_))))
                             (_g2291423055_
                              (lambda (_g2291722943_)
                                (if (gx#stx-pair? _g2291722943_)
                                    (let ((_e2292022946_
                                           (gx#syntax-e _g2291722943_)))
                                      (let ((_hd2292122950_
                                             (##car _e2292022946_))
                                            (_tl2292222953_
                                             (##cdr _e2292022946_)))
                                        ((lambda (_L22956_ _L22958_)
                                           (let* ((_g2297322992_
                                                   (lambda (_g2297422988_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2297422988_)))
                                                  (_g2297223051_
                                                   (lambda (_g2297422996_)
                                                     (if (gx#stx-pair?
                                                          _g2297422996_)
                                                         (let ((_e2297822999_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2297422996_)))
                   (let ((_hd2297923003_ (##car _e2297822999_))
                         (_tl2298023006_ (##cdr _e2297822999_)))
                     (if (gx#stx-pair? _tl2298023006_)
                         (let ((_e2298123009_ (gx#syntax-e _tl2298023006_)))
                           (let ((_hd2298223013_ (##car _e2298123009_))
                                 (_tl2298323016_ (##cdr _e2298123009_)))
                             (if (gx#stx-pair? _tl2298323016_)
                                 (let ((_e2298423019_
                                        (gx#syntax-e _tl2298323016_)))
                                   (let ((_hd2298523023_ (##car _e2298423019_))
                                         (_tl2298623026_
                                          (##cdr _e2298423019_)))
                                     (if (gx#stx-null? _tl2298623026_)
                                         ((lambda (_L23029_ _L23031_ _L23032_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L23032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L23031_ (cons _L23029_ '())))
                                    '()))
                        '())
                  (cons (_generate122157_
                         _L23032_
                         _L22958_
                         (_recur22908_ _L22956_ (fx1+ _off22913_))
                         _E22906_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2298523023_
                                          _hd2298223013_
                                          _hd2297923003_)
                                         (_g2297322992_ _g2297422996_))))
                                 (_g2297322992_ _g2297422996_))))
                         (_g2297322992_ _g2297422996_))))
                 (_g2297322992_ _g2297422996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2297223051_
                                              (list (gx#genident 'e)
                                                    _tgt22901_
                                                    _off22913_))))
                                         _tl2292222953_
                                         _hd2292122950_)))
                                    (_g2291522939_ _g2291722943_)))))
                        (_g2291423055_ _rest22911_)))))
                 (_generate-list-vector22161_
                  (lambda (_tgt22811_
                           _body22813_
                           _tgt->list22814_
                           _start22815_
                           _K22816_
                           _E22817_)
                    (let* ((_g2281922838_
                            (lambda (_g2282022834_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2282022834_)))
                           (_g2281822897_
                            (lambda (_g2282022842_)
                              (if (gx#stx-pair? _g2282022842_)
                                  (let ((_e2282422845_
                                         (gx#syntax-e _g2282022842_)))
                                    (let ((_hd2282522849_
                                           (##car _e2282422845_))
                                          (_tl2282622852_
                                           (##cdr _e2282422845_)))
                                      (if (gx#stx-pair? _tl2282622852_)
                                          (let ((_e2282722855_
                                                 (gx#syntax-e _tl2282622852_)))
                                            (let ((_hd2282822859_
                                                   (##car _e2282722855_))
                                                  (_tl2282922862_
                                                   (##cdr _e2282722855_)))
                                              (if (gx#stx-pair? _tl2282922862_)
                                                  (let ((_e2283022865_
                                                         (gx#syntax-e
                                                          _tl2282922862_)))
                                                    (let ((_hd2283122869_
                                                           (##car _e2283022865_))
                                                          (_tl2283222872_
                                                           (##cdr _e2283022865_)))
                                                      (if (gx#stx-null?
                                                           _tl2283222872_)
                                                          ((lambda (_L22875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22877_
                            _L22878_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L22878_
                                               (cons (cons _L22875_
                                                           (cons _L22877_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate122157_
                                          _L22878_
                                          _body22813_
                                          _K22816_
                                          _E22817_)
                                         '())))))
                   _hd2283122869_
                   _hd2282822859_
                   _hd2282522849_)
                  (_g2281922838_ _g2282022842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2281922838_
                                                   _g2282022842_))))
                                          (_g2281922838_ _g2282022842_))))
                                  (_g2281922838_ _g2282022842_)))))
                      (_g2281822897_
                       (list (gx#genident 'e) _tgt22811_ _tgt->list22814_)))))
                 (_generate-struct22162_
                  (lambda (_info22544_
                           _tgt22546_
                           _body22547_
                           _K22548_
                           _E22549_)
                    (let* ((_rtd22551_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info22544_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info22544_)
                                '#f))
                           (_fields22561_
                            (let _lp22554_ ((_rtd22557_ _rtd22551_)
                                            (_k22559_ '0))
                              (if _rtd22557_
                                  (_lp22554_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd22557_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd22557_))
                                        _k22559_))
                                  _k22559_)))
                           (_final?22564_
                            (if _rtd22551_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd22551_))
                                '#f))
                           (_g2256722575_
                            (lambda (_g2256822571_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2256822571_)))
                           (_g2256622807_
                            (lambda (_g2256822579_)
                              ((lambda (_L22582_)
                                 (let ()
                                   (let* ((_g2259722605_
                                           (lambda (_g2259822601_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2259822601_)))
                                          (_g2259622803_
                                           (lambda (_g2259822609_)
                                             ((lambda (_L22612_)
                                                (let ()
                                                  (let* ((_g2262522633_
                                                          (lambda (_g2262622629_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2262622629_)))
                                                         (_g2262422799_
                                                          (lambda (_g2262622637_)
                                                            ((lambda (_L22640_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2265622677_
                                   (lambda (_g2265722673_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2265722673_)))
                                  (_g2265522720_
                                   (lambda (_g2265722681_)
                                     (if (gx#stx-pair? _g2265722681_)
                                         (let ((_e2266622684_
                                                (gx#syntax-e _g2265722681_)))
                                           (let ((_hd2266722688_
                                                  (##car _e2266622684_))
                                                 (_tl2266822691_
                                                  (##cdr _e2266622684_)))
                                             (if (gx#stx-datum? _hd2266722688_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2266722688_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl2266822691_)
                                                         (let ((_e2266922694_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2266822691_)))
                   (let ((_hd2267022698_ (##car _e2266922694_))
                         (_tl2267122701_ (##cdr _e2266922694_)))
                     (if (gx#stx-null? _tl2267122701_)
                         ((lambda (_L22704_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L22640_
                                              (cons _L22612_
                                                    (cons _L22582_ '())))
                                        (cons (_generate-list-vector22161_
                                               _tgt22546_
                                               _L22704_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K22548_
                                               _E22549_)
                                              (cons _E22549_ '())))))
                          _hd2267022698_)
                         (_g2265622677_ _g2265722681_))))
                 (_g2265622677_ _g2265722681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2265622677_
                                                      _g2265722681_))
                                                 (_g2265622677_
                                                  _g2265722681_))))
                                         (_g2265622677_ _g2265722681_))))
                                  (_g2265422795_
                                   (lambda (_g2265722724_)
                                     (if (gx#stx-pair? _g2265722724_)
                                         (let ((_e2265922727_
                                                (gx#syntax-e _g2265722724_)))
                                           (let ((_hd2266022731_
                                                  (##car _e2265922727_))
                                                 (_tl2266122734_
                                                  (##cdr _e2265922727_)))
                                             (if (gx#stx-datum? _hd2266022731_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2266022731_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl2266122734_)
                                                         (let ((_e2266222737_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2266122734_)))
                   (let ((_hd2266322741_ (##car _e2266222737_))
                         (_tl2266422744_ (##cdr _e2266222737_)))
                     (if (gx#stx-null? _tl2266422744_)
                         ((lambda (_L22747_)
                            (let ((_K22760_
                                   (_generate-simple-vector22160_
                                    _tgt22546_
                                    _L22747_
                                    '1
                                    _K22548_
                                    _E22549_)))
                              (if (if _rtd22551_
                                      (fx<= (gx#stx-length _L22747_)
                                            _fields22561_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L22640_
                                                    (cons _L22612_
                                                          (cons _L22582_ '())))
                                              (cons _K22760_
                                                    (cons _E22549_ '()))))
                                  (let* ((_g2276322771_
                                          (lambda (_g2276422767_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2276422767_)))
                                         (_g2276222791_
                                          (lambda (_g2276422775_)
                                            ((lambda (_L22778_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L22640_
                                       (cons _L22612_ (cons _L22582_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L22778_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L22582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K22760_ (cons _E22549_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2276422775_))))
                                    (_g2276222791_
                                     (gx#stx-length _L22747_))))))
                          _hd2266322741_)
                         (_g2265522720_ _g2265722724_))))
                 (_g2265522720_ _g2265722724_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2265522720_
                                                      _g2265722724_))
                                                 (_g2265522720_
                                                  _g2265722724_))))
                                         (_g2265522720_ _g2265722724_)))))
                             (_g2265422795_ _body22547_)))))
                     _g2262622637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2262422799_
                                                     (if _final?22564_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g2259822609_))))
                                     (_g2259622803_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info22544_)))))
                               _g2256822579_))))
                      (_g2256622807_ _tgt22546_))))
                 (_generate-class22163_
                  (lambda (_info22165_
                           _tgt22167_
                           _body22168_
                           _K22169_
                           _E22170_)
                    (letrec* ((_rtd22172_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info22165_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info22165_)
                                   '#f))
                              (_known-slot?22174_
                               (if _rtd22172_
                                   (lambda (_key22538_)
                                     (let ((_slot22541_
                                            (keyword->symbol
                                             (gx#stx-e _key22538_))))
                                       (_rtd-known-slot?22176_
                                        _rtd22172_
                                        _slot22541_)))
                                   false))
                              (_final?22175_
                               (if _rtd22172_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd22172_))
                                   '#f))
                              (_rtd-known-slot?22176_
                               (lambda (_rtd22525_ _slot22527_)
                                 (if _rtd22525_
                                     (let ((_$e22529_
                                            (memq _slot22527_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd22525_))))
                                       (if _$e22529_
                                           _$e22529_
                                           (ormap (lambda (_g2253222534_)
                                                    (_rtd-known-slot?22176_
                                                     _g2253222534_
                                                     _slot22527_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd22525_)))))
                                     '#f)))
                              (_recur22177_
                               (lambda (_klass22311_ _rest22313_)
                                 (let* ((_g2231622332_
                                         (lambda (_g2231722328_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2231722328_)))
                                        (_g2231522343_
                                         (lambda (_g2231722336_)
                                           ((lambda () _K22169_))))
                                        (_g2231422521_
                                         (lambda (_g2231722347_)
                                           (if (gx#stx-pair? _g2231722347_)
                                               (let ((_e2232122350_
                                                      (gx#syntax-e
                                                       _g2231722347_)))
                                                 (let ((_hd2232222354_
                                                        (##car _e2232122350_))
                                                       (_tl2232322357_
                                                        (##cdr _e2232122350_)))
                                                   (if (gx#stx-pair?
                                                        _tl2232322357_)
                                                       (let ((_e2232422360_
                                                              (gx#syntax-e
                                                               _tl2232322357_)))
                                                         (let ((_hd2232522364_
                                                                (##car _e2232422360_))
                                                               (_tl2232622367_
                                                                (##cdr _e2232422360_)))
                                                           ((lambda (_L22370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22372_
                             _L22373_)
                      (let* ((_g2238922397_
                              (lambda (_g2239022393_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2239022393_)))
                             (_g2238822517_
                              (lambda (_g2239022401_)
                                ((lambda (_L22404_)
                                   (let ()
                                     (let* ((_g2241622424_
                                             (lambda (_g2241722420_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2241722420_)))
                                            (_g2241522513_
                                             (lambda (_g2241722428_)
                                               ((lambda (_L22431_)
                                                  (let ()
                                                    (let* ((_g2244422452_
                                                            (lambda (_g2244522448_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2244522448_)))
                                                           (_g2244322509_
                                                            (lambda (_g2244522456_)
                                                              ((lambda (_L22459_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2247222480_
                                   (lambda (_g2247322476_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2247322476_)))
                                  (_g2247122505_
                                   (lambda (_g2247322484_)
                                     ((lambda (_L22487_)
                                        (let ()
                                          (let ((_K22500_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L22487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L22404_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L22459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate122157_
                            _L22487_
                            _L22372_
                            (_recur22177_ _klass22311_ _L22370_)
                            _E22170_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?22174_ _L22373_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L22431_
                                                  (cons _L22373_ '())))
                                      '()))
                          '())
                    (cons _K22500_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L22431_
                                                  (cons _L22373_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22459_
                                      (cons _K22500_ (cons _E22170_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2247322484_))))
                             (_g2247122505_ (gx#genident 'e)))))
                       _g2244522456_))))
              (_g2244322509_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2241722428_))))
                                       (_g2241522513_ _klass22311_))))
                                 _g2239022401_))))
                        (_g2238822517_ _tgt22167_)))
                    _tl2232622367_
                    _hd2232522364_
                    _hd2232222354_)))
               (_g2231522343_ _g2231722347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2231522343_
                                                _g2231722347_)))))
                                   (_g2231422521_ _rest22313_)))))
                      (let* ((_g2217922187_
                              (lambda (_g2218022183_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2218022183_)))
                             (_g2217822307_
                              (lambda (_g2218022191_)
                                ((lambda (_L22194_)
                                   (let ()
                                     (let* ((_g2220922217_
                                             (lambda (_g2221022213_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2221022213_)))
                                            (_g2220822303_
                                             (lambda (_g2221022221_)
                                               ((lambda (_L22224_)
                                                  (let ()
                                                    (let* ((_g2223722245_
                                                            (lambda (_g2223822241_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2223822241_)))
                                                           (_g2223622299_
                                                            (lambda (_g2223822249_)
                                                              ((lambda (_L22252_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2226522273_
                                   (lambda (_g2226622269_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2226622269_)))
                                  (_g2226422295_
                                   (lambda (_g2226622277_)
                                     ((lambda (_L22280_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L22280_
                                                              (cons _L22252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L22224_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L22194_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L22224_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur22177_ _L22194_ _body22168_)
                                        '())))
                      (cons _E22170_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2226622277_))))
                             (_g2226422295_
                              (if _final?22175_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2223822249_))))
              (_g2223622299_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info22165_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2221022221_))))
                                       (_g2220822303_ _tgt22167_))))
                                 _g2218022191_))))
                        (_g2217822307_ (gx#genident 'class)))))))
          (_generate122157_ _tgt22152_ _ptree22153_ _K22154_ _E22155_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx21149_ _tgt-lst21151_ _clauses21152_)
        (letrec ((_parse-body21154_
                  (lambda (_hd-len21972_)
                    (let _lp21975_ ((_rest21978_ _clauses21152_)
                                    (_r21980_ '()))
                      (let* ((_g2198321995_
                              (lambda (_g2198421991_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2198421991_)))
                             (_g2198222006_
                              (lambda (_g2198421999_) ((lambda () _r21980_))))
                             (_g2198122146_
                              (lambda (_g2198422010_)
                                (if (gx#stx-pair? _g2198422010_)
                                    (let ((_e2198722013_
                                           (gx#syntax-e _g2198422010_)))
                                      (let ((_hd2198822017_
                                             (##car _e2198722013_))
                                            (_tl2198922020_
                                             (##cdr _e2198722013_)))
                                        ((lambda (_L22023_ _L22025_)
                                           (let* ((_g2204222058_
                                                   (lambda (_g2204322054_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2204322054_)))
                                                  (_g2204122069_
                                                   (lambda (_g2204322062_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx21149_
                                                         _L22025_)))))
                                                  (_g2204022110_
                                                   (lambda (_g2204322073_)
                                                     (if (gx#stx-pair?
                                                          _g2204322073_)
                                                         (let ((_e2205022076_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2204322073_)))
                   (let ((_hd2205122080_ (##car _e2205022076_))
                         (_tl2205222083_ (##cdr _e2205022076_)))
                     ((lambda (_L22086_ _L22088_)
                        (if (if (gx#stx-list? _L22088_)
                                (if (fx= (gx#stx-length _L22088_)
                                         _hd-len21972_)
                                    (if (gx#stx-list? _L22086_)
                                        (not (gx#stx-null? _L22086_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp21975_
                             _L22023_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g2210022102_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g2210022102_
                                                   _stx21149_))
                                                _L22088_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L22086_)
                                                      (let ((_$e22106_
                                                             (gx#stx-source
                                                              _L22025_)))
                                                        (if _$e22106_
                                                            _$e22106_
                                                            (gx#stx-source
                                                             _stx21149_))))
                                                     '())))
                                   _r21980_))
                            (_g2204122069_ _g2204322073_)))
                      _tl2205222083_
                      _hd2205122080_)))
                 (_g2204122069_ _g2204322073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2203922142_
                                                   (lambda (_g2204322114_)
                                                     (if (gx#stx-pair?
                                                          _g2204322114_)
                                                         (let ((_e2204522117_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2204322114_)))
                   (let ((_hd2204622121_ (##car _e2204522117_))
                         (_tl2204722124_ (##cdr _e2204522117_)))
                     (if (gx#identifier? _hd2204622121_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g34668_|
                              _hd2204622121_)
                             ((lambda (_L22127_)
                                (if (if (gx#stx-list? _L22127_)
                                        (not (gx#stx-null? _L22127_))
                                        '#f)
                                    (if (gx#stx-null? _L22023_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L22127_)
                         (let ((_$e22138_ (gx#stx-source _L22025_)))
                           (if _$e22138_
                               _$e22138_
                               (gx#stx-source _stx21149_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r21980_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx21149_
                                         _L22025_))
                                    (_g2204022110_ _g2204322114_)))
                              _tl2204722124_)
                             (_g2204022110_ _g2204322114_))
                         (_g2204022110_ _g2204322114_))))
                 (_g2204022110_ _g2204322114_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2203922142_ _L22025_)))
                                         _tl2198922020_
                                         _hd2198822017_)))
                                    (_g2198222006_ _g2198422010_)))))
                        (_g2198122146_ _rest21978_)))))
                 (_generate-body21156_
                  (lambda (_body21789_)
                    (let* ((_g2179221800_
                            (lambda (_g2179321796_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2179321796_)))
                           (_g2179121968_
                            (lambda (_g2179321804_)
                              ((lambda (_L21807_)
                                 (let ()
                                   (let* ((_g2181921836_
                                           (lambda (_g2182021832_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2182021832_)))
                                          (_g2181821964_
                                           (lambda (_g2182021840_)
                                             (if (gx#stx-pair/null?
                                                  _g2182021840_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2182021840_)
                                                           '0)
                                                     (let ((_g34669_
                                                            (gx#syntax-split-splice
                                                             _g2182021840_
                                                             '0)))
                                                       (begin
                                                         (let ((_g34670_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34669_)))
                   (if (not (fx= _g34670_ 2))
                       (error "Context expects 2 values" _g34670_)))
                 (let ((_target2182221843_ (values-ref _g34669_ 0))
                       (_tl2182421846_ (values-ref _g34669_ 1)))
                   (if (gx#stx-null? _tl2182421846_)
                       (letrec ((_loop2182521849_
                                 (lambda (_hd2182321853_ _target2182921856_)
                                   (if (gx#stx-pair? _hd2182321853_)
                                       (let ((_e2182621859_
                                              (gx#syntax-e _hd2182321853_)))
                                         (let ((_lp-hd2182721863_
                                                (##car _e2182621859_))
                                               (_lp-tl2182821866_
                                                (##cdr _e2182621859_)))
                                           (_loop2182521849_
                                            _lp-tl2182821866_
                                            (cons _lp-hd2182721863_
                                                  _target2182921856_))))
                                       (let ((_target2183021869_
                                              (reverse _target2182921856_)))
                                         ((lambda (_L21873_)
                                            (let ()
                                              (let* ((_g2189021898_
                                                      (lambda (_g2189121894_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2189121894_)))
                                                     (_g2188921952_
                                                      (lambda (_g2189121902_)
                                                        ((lambda (_L21905_)
                                                           (let ()
                                                             (let* ((_g2191821926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2191921922_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2191921922_)))
                            (_g2191721948_
                             (lambda (_g2191921930_)
                               ((lambda (_L21933_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L21807_
                                                              (cons _L21905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L21933_ '()))))))
                                _g2191921930_))))
                       (_g2191721948_
                        (_generate-clauses21157_
                         _body21789_
                         (cons _L21807_ '()))))))
                 _g2189121902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2188921952_
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
                                          (foldr (lambda (_g2195521958_
                                                          _g2195621961_)
                                                   (cons _g2195521958_
                                                         _g2195621961_))
                                                 '()
                                                 _L21873_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx21149_))))))
                                          _target2183021869_))))))
                         (_loop2182521849_ _target2182221843_ '()))
                       (_g2181921836_ _g2182021840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2181921836_
                                                      _g2182021840_))
                                                 (_g2181921836_
                                                  _g2182021840_)))))
                                     (_g2181821964_ _tgt-lst21151_))))
                               _g2179321804_))))
                      (_g2179121968_ (gx#genident 'E)))))
                 (_generate-clauses21157_
                  (lambda (_rest21471_ _E21473_)
                    (let* ((_g2147721493_
                            (lambda (_g2147821489_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2147821489_)))
                           (_g2147621504_
                            (lambda (_g2147821497_) ((lambda () _E21473_))))
                           (_g2147521680_
                            (lambda (_g2147821508_)
                              (if (gx#stx-pair? _g2147821508_)
                                  (let ((_e2148521511_
                                         (gx#syntax-e _g2147821508_)))
                                    (let ((_hd2148621515_
                                           (##car _e2148521511_))
                                          (_tl2148721518_
                                           (##cdr _e2148521511_)))
                                      ((lambda (_L21521_ _L21523_)
                                         (let* ((_g2153621555_
                                                 (lambda (_g2153721551_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2153721551_)))
                                                (_g2153521676_
                                                 (lambda (_g2153721559_)
                                                   (if (gx#stx-pair?
                                                        _g2153721559_)
                                                       (let ((_e2154121562_
                                                              (gx#syntax-e
                                                               _g2153721559_)))
                                                         (let ((_hd2154221566_
                                                                (##car _e2154121562_))
                                                               (_tl2154321569_
                                                                (##cdr _e2154121562_)))
                                                           (if (gx#stx-pair?
                                                                _tl2154321569_)
                                                               (let ((_e2154421572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2154321569_)))
                         (let ((_hd2154521576_ (##car _e2154421572_))
                               (_tl2154621579_ (##cdr _e2154421572_)))
                           (if (gx#stx-pair? _tl2154621579_)
                               (let ((_e2154721582_
                                      (gx#syntax-e _tl2154621579_)))
                                 (let ((_hd2154821586_ (##car _e2154721582_))
                                       (_tl2154921589_ (##cdr _e2154721582_)))
                                   (if (gx#stx-null? _tl2154921589_)
                                       ((lambda (_L21592_ _L21594_ _L21595_)
                                          (let* ((_g2161221627_
                                                  (lambda (_g2161321623_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2161321623_)))
                                                 (_g2161121672_
                                                  (lambda (_g2161321631_)
                                                    (if (gx#stx-pair?
                                                         _g2161321631_)
                                                        (let ((_e2161621634_
                                                               (gx#syntax-e
                                                                _g2161321631_)))
                                                          (let ((_hd2161721638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2161621634_))
                        (_tl2161821641_ (##cdr _e2161621634_)))
                    (if (gx#stx-pair? _tl2161821641_)
                        (let ((_e2161921644_ (gx#syntax-e _tl2161821641_)))
                          (let ((_hd2162021648_ (##car _e2161921644_))
                                (_tl2162121651_ (##cdr _e2161921644_)))
                            (if (gx#stx-null? _tl2162121651_)
                                ((lambda (_L21654_ _L21656_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L21595_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L21656_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L21654_ '())))))
                                 _hd2162021648_
                                 _hd2161721638_)
                                (_g2161221627_ _g2161321631_))))
                        (_g2161221627_ _g2161321631_))))
                (_g2161221627_ _g2161321631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2161121672_
                                             (list (if (gx#stx-e _L21594_)
                                                       (_generate121158_
                                                        _L21594_
                                                        _L21592_
                                                        _E21473_)
                                                       _L21592_)
                                                   (_generate-clauses21157_
                                                    _L21521_
                                                    (cons _L21595_ '()))))))
                                        _hd2154821586_
                                        _hd2154521576_
                                        _hd2154221566_)
                                       (_g2153621555_ _g2153721559_))))
                               (_g2153621555_ _g2153721559_))))
                       (_g2153621555_ _g2153721559_))))
               (_g2153621555_ _g2153721559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2153521676_ _L21523_)))
                                       _tl2148721518_
                                       _hd2148621515_)))
                                  (_g2147621504_ _g2147821508_))))
                           (_g2147421785_
                            (lambda (_g2147821684_)
                              (if (gx#stx-pair? _g2147821684_)
                                  (let ((_e2148021687_
                                         (gx#syntax-e _g2147821684_)))
                                    (let ((_hd2148121691_
                                           (##car _e2148021687_))
                                          (_tl2148221694_
                                           (##cdr _e2148021687_)))
                                      (if (gx#stx-null? _tl2148221694_)
                                          ((lambda (_L21697_)
                                             (let* ((_g2170821726_
                                                     (lambda (_g2170921722_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2170921722_)))
                                                    (_g2170721781_
                                                     (lambda (_g2170921730_)
                                                       (if (gx#stx-pair?
                                                            _g2170921730_)
                                                           (let ((_e2171221733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2170921730_)))
                     (let ((_hd2171321737_ (##car _e2171221733_))
                           (_tl2171421740_ (##cdr _e2171221733_)))
                       (if (gx#stx-pair? _tl2171421740_)
                           (let ((_e2171521743_ (gx#syntax-e _tl2171421740_)))
                             (let ((_hd2171621747_ (##car _e2171521743_))
                                   (_tl2171721750_ (##cdr _e2171521743_)))
                               (if (gx#stx-pair? _tl2171721750_)
                                   (let ((_e2171821753_
                                          (gx#syntax-e _tl2171721750_)))
                                     (let ((_hd2171921757_
                                            (##car _e2171821753_))
                                           (_tl2172021760_
                                            (##cdr _e2171821753_)))
                                       (if (gx#stx-null? _tl2172021760_)
                                           ((lambda (_L21763_ _L21765_)
                                              (if (gx#stx-e _L21765_)
                                                  (_generate121158_
                                                   _L21765_
                                                   _L21763_
                                                   _E21473_)
                                                  _L21763_))
                                            _hd2171921757_
                                            _hd2171621747_)
                                           (_g2170821726_ _g2170921730_))))
                                   (_g2170821726_ _g2170921730_))))
                           (_g2170821726_ _g2170921730_))))
                   (_g2170821726_ _g2170921730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2170721781_ _L21697_)))
                                           _hd2148121691_)
                                          (_g2147521680_ _g2147821684_))))
                                  (_g2147521680_ _g2147821684_)))))
                      (_g2147421785_ _rest21471_))))
                 (_generate121158_
                  (lambda (_clause21160_ _body21162_ _E21163_)
                    (let _recur21165_ ((_rest21168_ _clause21160_)
                                       (_rest-targets21170_ _tgt-lst21151_))
                      (let* ((_g2117321185_
                              (lambda (_g2117421181_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2117421181_)))
                             (_g2117221196_
                              (lambda (_g2117421189_)
                                ((lambda () _body21162_))))
                             (_g2117121467_
                              (lambda (_g2117421200_)
                                (if (gx#stx-pair? _g2117421200_)
                                    (let ((_e2117721203_
                                           (gx#syntax-e _g2117421200_)))
                                      (let ((_hd2117821207_
                                             (##car _e2117721203_))
                                            (_tl2117921210_
                                             (##cdr _e2117721203_)))
                                        ((lambda (_L21213_ _L21215_)
                                           (let* ((_g2123221244_
                                                   (lambda (_g2123321240_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2123321240_)))
                                                  (_g2123121463_
                                                   (lambda (_g2123321248_)
                                                     (if (gx#stx-pair?
                                                          _g2123321248_)
                                                         (let ((_e2123621251_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2123321248_)))
                   (let ((_hd2123721255_ (##car _e2123621251_))
                         (_tl2123821258_ (##cdr _e2123621251_)))
                     ((lambda (_L21261_ _L21263_)
                        (let* ((_g2127521283_
                                (lambda (_g2127621279_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2127621279_)))
                               (_g2127421459_
                                (lambda (_g2127621287_)
                                  ((lambda (_L21290_)
                                     (let ()
                                       (let* ((_g2130221319_
                                               (lambda (_g2130321315_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2130321315_)))
                                              (_g2130121455_
                                               (lambda (_g2130321323_)
                                                 (if (gx#stx-pair/null?
                                                      _g2130321323_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2130321323_)
                                                               '0)
                                                         (let ((_g34671_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2130321323_
                         '0)))
                   (begin
                     (let ((_g34672_ (values-count _g34671_)))
                       (if (not (fx= _g34672_ 2))
                           (error "Context expects 2 values" _g34672_)))
                     (let ((_target2130521326_ (values-ref _g34671_ 0))
                           (_tl2130721329_ (values-ref _g34671_ 1)))
                       (if (gx#stx-null? _tl2130721329_)
                           (letrec ((_loop2130821332_
                                     (lambda (_hd2130621336_ _var2131221339_)
                                       (if (gx#stx-pair? _hd2130621336_)
                                           (let ((_e2130921342_
                                                  (gx#syntax-e
                                                   _hd2130621336_)))
                                             (let ((_lp-hd2131021346_
                                                    (##car _e2130921342_))
                                                   (_lp-tl2131121349_
                                                    (##cdr _e2130921342_)))
                                               (_loop2130821332_
                                                _lp-tl2131121349_
                                                (cons _lp-hd2131021346_
                                                      _var2131221339_))))
                                           (let ((_var2131321352_
                                                  (reverse _var2131221339_)))
                                             ((lambda (_L21356_)
                                                (let ()
                                                  (let* ((_g2137321381_
                                                          (lambda (_g2137421377_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2137421377_)))
                                                         (_g2137221451_
                                                          (lambda (_g2137421385_)
                                                            ((lambda (_L21388_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g2140121409_
                                 (lambda (_g2140221405_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2140221405_)))
                                (_g2140021439_
                                 (lambda (_g2140221413_)
                                   ((lambda (_L21416_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g2143021433_
                                                              _g2143121436_)
                                                       (cons _g2143021433_
                                                             _g2143121436_))
                                                     '()
                                                     _L21356_))
                                            (cons _L21388_ '())))
                                '()))
                    '())
              (cons _L21416_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g2140221413_))))
                           (_g2140021439_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx21149_
                             _L21263_
                             _L21215_
                             (cons _L21290_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2144221445_
                                                     _g2144321448_)
                                              (cons _g2144221445_
                                                    _g2144321448_))
                                            '()
                                            _L21356_)))
                             _E21163_)))))
                     _g2137421385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2137221451_
                                                     (_recur21165_
                                                      _L21213_
                                                      _L21261_)))))
                                              _var2131321352_))))))
                             (_loop2130821332_ _target2130521326_ '()))
                           (_g2130221319_ _g2130321323_)))))
                 (_g2130221319_ _g2130321323_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2130221319_
                                                      _g2130321323_)))))
                                         (_g2130121455_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L21215_)))))
                                   _g2127621287_))))
                          (_g2127421459_ (gx#genident 'K))))
                      _tl2123821258_
                      _hd2123721255_)))
                 (_g2123221244_ _g2123321248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2123121463_
                                              _rest-targets21170_)))
                                         _tl2117921210_
                                         _hd2117821207_)))
                                    (_g2117221196_ _g2117421200_)))))
                        (_g2117121467_ _rest21168_))))))
          (_generate-body21156_
           (_parse-body21154_ (gx#stx-length _tgt-lst21151_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21051_ _tgt21053_ _clauses21054_)
        (letrec ((_reclause21056_
                  (lambda (_clause21059_)
                    (let* ((_g2106421079_
                            (lambda (_g2106521075_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2106521075_)))
                           (_g2106321090_
                            (lambda (_g2106521083_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx21051_
                                  _clause21059_)))))
                           (_g2106221124_
                            (lambda (_g2106521094_)
                              (if (gx#stx-pair? _g2106521094_)
                                  (let ((_e2107121097_
                                         (gx#syntax-e _g2106521094_)))
                                    (let ((_hd2107221101_
                                           (##car _e2107121097_))
                                          (_tl2107321104_
                                           (##cdr _e2107121097_)))
                                      ((lambda (_L21107_ _L21109_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L21109_ '()) _L21107_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl2107321104_
                                       _hd2107221101_)))
                                  (_g2106321090_ _g2106521094_))))
                           (_g2106121145_
                            (lambda (_g2106521128_)
                              (if (gx#stx-pair? _g2106521128_)
                                  (let ((_e2106621131_
                                         (gx#syntax-e _g2106521128_)))
                                    (let ((_hd2106721135_
                                           (##car _e2106621131_))
                                          (_tl2106821138_
                                           (##cdr _e2106621131_)))
                                      (if (gx#identifier? _hd2106721135_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g34673_|
                                               _hd2106721135_)
                                              ((lambda () _clause21059_))
                                              (_g2106221124_ _g2106521128_))
                                          (_g2106221124_ _g2106521128_))))
                                  (_g2106221124_ _g2106521128_)))))
                      (_g2106121145_ _clause21059_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21051_
           (cons _tgt21053_ '())
           (gx#stx-map _reclause21056_ _clauses21054_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx28258_)
        (let* ((_g2826328292_
                (lambda (_g2826428288_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2826428288_)))
               (_g2826228400_
                (lambda (_g2826428296_)
                  (if (gx#stx-pair? _g2826428296_)
                      (let ((_e2828128299_ (gx#syntax-e _g2826428296_)))
                        (let ((_hd2828228303_ (##car _e2828128299_))
                              (_tl2828328306_ (##cdr _e2828128299_)))
                          (if (gx#stx-pair? _tl2828328306_)
                              (let ((_e2828428309_
                                     (gx#syntax-e _tl2828328306_)))
                                (let ((_hd2828528313_ (##car _e2828428309_))
                                      (_tl2828628316_ (##cdr _e2828428309_)))
                                  ((lambda (_L28319_ _L28321_)
                                     (if (gx#stx-list? _L28319_)
                                         (let* ((_g2833528343_
                                                 (lambda (_g2833628339_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2833628339_)))
                                                (_g2833428396_
                                                 (lambda (_g2833628347_)
                                                   ((lambda (_L28350_)
                                                      (let ()
                                                        (let* ((_g2836228370_
                                                                (lambda (_g2836328366_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2836328366_)))
                       (_g2836128392_
                        (lambda (_g2836328374_)
                          ((lambda (_L28377_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L28350_
                                                         (cons _L28321_ '()))
                                                   '())
                                             (cons _L28377_ '()))))))
                           _g2836328374_))))
                  (_g2836128392_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx28258_
                    _L28350_
                    _L28319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2833628347_))))
                                           (_g2833428396_
                                            (gx#genident _L28321_)))
                                         (_g2826328292_ _g2826428296_)))
                                   _tl2828628316_
                                   _hd2828528313_)))
                              (_g2826328292_ _g2826428296_))))
                      (_g2826328292_ _g2826428296_))))
               (_g2826128505_
                (lambda (_g2826428404_)
                  (if (gx#stx-pair? _g2826428404_)
                      (let ((_e2827328407_ (gx#syntax-e _g2826428404_)))
                        (let ((_hd2827428411_ (##car _e2827328407_))
                              (_tl2827528414_ (##cdr _e2827328407_)))
                          (if (gx#stx-pair? _tl2827528414_)
                              (let ((_e2827628417_
                                     (gx#syntax-e _tl2827528414_)))
                                (let ((_hd2827728421_ (##car _e2827628417_))
                                      (_tl2827828424_ (##cdr _e2827628417_)))
                                  (if (gx#identifier? _hd2827728421_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g34674_|
                                           _hd2827728421_)
                                          ((lambda (_L28427_)
                                             (if (gx#stx-list? _L28427_)
                                                 (let* ((_g2844028448_
                                                         (lambda (_g2844128444_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2844128444_)))
                                                        (_g2843928501_
                                                         (lambda (_g2844128452_)
                                                           ((lambda (_L28455_)
                                                              (let ()
                                                                (let* ((_g2846728475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2846828471_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2846828471_)))
                               (_g2846628497_
                                (lambda (_g2846828479_)
                                  ((lambda (_L28482_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L28455_
                                                     (cons _L28482_ '()))))))
                                   _g2846828479_))))
                          (_g2846628497_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L28455_ _L28427_))
                            (gx#stx-source _stx28258_))))))
                    _g2844128452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2843928501_
                                                    (gx#genident 'args)))
                                                 (_g2826228400_
                                                  _g2826428404_)))
                                           _tl2827828424_)
                                          (_g2826228400_ _g2826428404_))
                                      (_g2826228400_ _g2826428404_))))
                              (_g2826228400_ _g2826428404_))))
                      (_g2826228400_ _g2826428404_))))
               (_g2826028610_
                (lambda (_g2826428509_)
                  (if (gx#stx-pair? _g2826428509_)
                      (let ((_e2826628512_ (gx#syntax-e _g2826428509_)))
                        (let ((_hd2826728516_ (##car _e2826628512_))
                              (_tl2826828519_ (##cdr _e2826628512_)))
                          (if (gx#stx-pair? _tl2826828519_)
                              (let ((_e2826928522_
                                     (gx#syntax-e _tl2826828519_)))
                                (let ((_hd2827028526_ (##car _e2826928522_))
                                      (_tl2827128529_ (##cdr _e2826928522_)))
                                  (if (gx#identifier? _hd2827028526_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g34675_|
                                           _hd2827028526_)
                                          ((lambda (_L28532_)
                                             (if (gx#stx-list? _L28532_)
                                                 (let* ((_g2854528553_
                                                         (lambda (_g2854628549_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2854628549_)))
                                                        (_g2854428606_
                                                         (lambda (_g2854628557_)
                                                           ((lambda (_L28560_)
                                                              (let ()
                                                                (let* ((_g2857228580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2857328576_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2857328576_)))
                               (_g2857128602_
                                (lambda (_g2857328584_)
                                  ((lambda (_L28587_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L28560_ '())
                                                     (cons _L28587_ '()))))))
                                   _g2857328584_))))
                          (_g2857128602_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L28560_ _L28532_))
                            (gx#stx-source _stx28258_))))))
                    _g2854628557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2854428606_
                                                    (gx#genident 'e)))
                                                 (_g2826128505_
                                                  _g2826428509_)))
                                           _tl2827128529_)
                                          (_g2826128505_ _g2826428509_))
                                      (_g2826128505_ _g2826428509_))))
                              (_g2826128505_ _g2826428509_))))
                      (_g2826128505_ _g2826428509_)))))
          (_g2826028610_ _stx28258_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx28614_)
        (let* ((_g2861728641_
                (lambda (_g2861828637_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2861828637_)))
               (_g2861628853_
                (lambda (_g2861828645_)
                  (if (gx#stx-pair? _g2861828645_)
                      (let ((_e2862128648_ (gx#syntax-e _g2861828645_)))
                        (let ((_hd2862228652_ (##car _e2862128648_))
                              (_tl2862328655_ (##cdr _e2862128648_)))
                          (if (gx#stx-pair? _tl2862328655_)
                              (let ((_e2862428658_
                                     (gx#syntax-e _tl2862328655_)))
                                (let ((_hd2862528662_ (##car _e2862428658_))
                                      (_tl2862628665_ (##cdr _e2862428658_)))
                                  (if (gx#stx-pair/null? _hd2862528662_)
                                      (if (fx>= (gx#stx-length _hd2862528662_)
                                                '0)
                                          (let ((_g34676_
                                                 (gx#syntax-split-splice
                                                  _hd2862528662_
                                                  '0)))
                                            (begin
                                              (let ((_g34677_
                                                     (values-count _g34676_)))
                                                (if (not (fx= _g34677_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34677_)))
                                              (let ((_target2862728668_
                                                     (values-ref _g34676_ 0))
                                                    (_tl2862928671_
                                                     (values-ref _g34676_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2862928671_)
                                                    (letrec ((_loop2863028674_
                                                              (lambda (_hd2862828678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2863428681_)
                        (if (gx#stx-pair? _hd2862828678_)
                            (let ((_e2863128684_ (gx#syntax-e _hd2862828678_)))
                              (let ((_lp-hd2863228688_ (##car _e2863128684_))
                                    (_lp-tl2863328691_ (##cdr _e2863128684_)))
                                (_loop2863028674_
                                 _lp-tl2863328691_
                                 (cons _lp-hd2863228688_ _e2863428681_))))
                            (let ((_e2863528694_ (reverse _e2863428681_)))
                              ((lambda (_L28698_ _L28700_)
                                 (if (gx#stx-list? _L28698_)
                                     (let* ((_g2871828735_
                                             (lambda (_g2871928731_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2871928731_)))
                                            (_g2871728841_
                                             (lambda (_g2871928739_)
                                               (if (gx#stx-pair/null?
                                                    _g2871928739_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2871928739_)
                                                             '0)
                                                       (let ((_g34678_
                                                              (gx#syntax-split-splice
                                                               _g2871928739_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34678_)))
                     (if (not (fx= _g34679_ 2))
                         (error "Context expects 2 values" _g34679_)))
                   (let ((_target2872128742_ (values-ref _g34678_ 0))
                         (_tl2872328745_ (values-ref _g34678_ 1)))
                     (if (gx#stx-null? _tl2872328745_)
                         (letrec ((_loop2872428748_
                                   (lambda (_hd2872228752_ _$e2872828755_)
                                     (if (gx#stx-pair? _hd2872228752_)
                                         (let ((_e2872528758_
                                                (gx#syntax-e _hd2872228752_)))
                                           (let ((_lp-hd2872628762_
                                                  (##car _e2872528758_))
                                                 (_lp-tl2872728765_
                                                  (##cdr _e2872528758_)))
                                             (_loop2872428748_
                                              _lp-tl2872728765_
                                              (cons _lp-hd2872628762_
                                                    _$e2872828755_))))
                                         (let ((_$e2872928768_
                                                (reverse _$e2872828755_)))
                                           ((lambda (_L28772_)
                                              (let ()
                                                (let* ((_g2878828796_
                                                        (lambda (_g2878928792_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2878928792_)))
                                                       (_g2878728829_
                                                        (lambda (_g2878928800_)
                                                          ((lambda (_L28803_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L28700_
                                        _L28772_)
                                       (foldr (lambda (_g2881728821_
                                                       _g2881828824_
                                                       _g2881928826_)
                                                (cons (cons _g2881828824_
                                                            (cons _g2881728821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2881928826_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L28700_
                                              _L28772_))
                                     (cons _L28803_ '()))))))
                   _g2878928800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2878728829_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx28614_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2883228835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2883328838_)
                       (cons _g2883228835_ _g2883328838_))
                     '()
                     _L28772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L28698_)))))
                                            _$e2872928768_))))))
                           (_loop2872428748_ _target2872128742_ '()))
                         (_g2871828735_ _g2871928739_)))))
               (_g2871828735_ _g2871928739_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2871828735_
                                                    _g2871928739_)))))
                                       (_g2871728841_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2884428847_
                                                           _g2884528850_)
                                                    (cons _g2884428847_
                                                          _g2884528850_))
                                                  '()
                                                  _L28700_)))))
                                     (_g2861728641_ _g2861828645_)))
                               _tl2862628665_
                               _e2863528694_))))))
              (_loop2863028674_ _target2862728668_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2861728641_
                                                     _g2861828645_)))))
                                          (_g2861728641_ _g2861828645_))
                                      (_g2861728641_ _g2861828645_))))
                              (_g2861728641_ _g2861828645_))))
                      (_g2861728641_ _g2861828645_)))))
          (_g2861628853_ _stx28614_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx28859_)
        (let* ((_g2886528948_
                (lambda (_g2886628944_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2886628944_)))
               (_g2886429109_
                (lambda (_g2886628952_)
                  (if (gx#stx-pair? _g2886628952_)
                      (let ((_e2891128955_ (gx#syntax-e _g2886628952_)))
                        (let ((_hd2891228959_ (##car _e2891128955_))
                              (_tl2891328962_ (##cdr _e2891128955_)))
                          (if (gx#stx-pair? _tl2891328962_)
                              (let ((_e2891428965_
                                     (gx#syntax-e _tl2891328962_)))
                                (let ((_hd2891528969_ (##car _e2891428965_))
                                      (_tl2891628972_ (##cdr _e2891428965_)))
                                  (if (gx#stx-pair/null? _hd2891528969_)
                                      (if (fx>= (gx#stx-length _hd2891528969_)
                                                '0)
                                          (let ((_g34680_
                                                 (gx#syntax-split-splice
                                                  _hd2891528969_
                                                  '0)))
                                            (begin
                                              (let ((_g34681_
                                                     (values-count _g34680_)))
                                                (if (not (fx= _g34681_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34681_)))
                                              (let ((_target2891728975_
                                                     (values-ref _g34680_ 0))
                                                    (_tl2891928978_
                                                     (values-ref _g34680_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2891928978_)
                                                    (letrec ((_loop2892028981_
                                                              (lambda (_hd2891828985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2892428988_
                               _hd2892528990_)
                        (if (gx#stx-pair? _hd2891828985_)
                            (let ((_e2892128993_ (gx#syntax-e _hd2891828985_)))
                              (let ((_lp-hd2892228997_ (##car _e2892128993_))
                                    (_lp-tl2892329000_ (##cdr _e2892128993_)))
                                (if (gx#stx-pair? _lp-hd2892228997_)
                                    (let ((_e2892829003_
                                           (gx#syntax-e _lp-hd2892228997_)))
                                      (let ((_hd2892929007_
                                             (##car _e2892829003_))
                                            (_tl2893029010_
                                             (##cdr _e2892829003_)))
                                        (if (gx#stx-pair? _tl2893029010_)
                                            (let ((_e2893129013_
                                                   (gx#syntax-e
                                                    _tl2893029010_)))
                                              (let ((_hd2893229017_
                                                     (##car _e2893129013_))
                                                    (_tl2893329020_
                                                     (##cdr _e2893129013_)))
                                                (if (gx#stx-null?
                                                     _tl2893329020_)
                                                    (_loop2892028981_
                                                     _lp-tl2892329000_
                                                     (cons _hd2893229017_
                                                           _expr2892428988_)
                                                     (cons _hd2892929007_
                                                           _hd2892528990_))
                                                    (_g2886528948_
                                                     _g2886628952_))))
                                            (_g2886528948_ _g2886628952_))))
                                    (_g2886528948_ _g2886628952_))))
                            (let ((_expr2892629023_ (reverse _expr2892428988_))
                                  (_hd2892729026_ (reverse _hd2892528990_)))
                              (if (gx#stx-pair/null? _tl2891628972_)
                                  (if (fx>= (gx#stx-length _tl2891628972_) '0)
                                      (let ((_g34682_
                                             (gx#syntax-split-splice
                                              _tl2891628972_
                                              '0)))
                                        (begin
                                          (let ((_g34683_
                                                 (values-count _g34682_)))
                                            (if (not (fx= _g34683_ 2))
                                                (error "Context expects 2 values"
                                                       _g34683_)))
                                          (let ((_target2893429029_
                                                 (values-ref _g34682_ 0))
                                                (_tl2893629032_
                                                 (values-ref _g34682_ 1)))
                                            (if (gx#stx-null? _tl2893629032_)
                                                (letrec ((_loop2893729035_
                                                          (lambda (_hd2893529039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2894129042_)
                    (if (gx#stx-pair? _hd2893529039_)
                        (let ((_e2893829045_ (gx#syntax-e _hd2893529039_)))
                          (let ((_lp-hd2893929049_ (##car _e2893829045_))
                                (_lp-tl2894029052_ (##cdr _e2893829045_)))
                            (_loop2893729035_
                             _lp-tl2894029052_
                             (cons _lp-hd2893929049_ _body2894129042_))))
                        (let ((_body2894229055_ (reverse _body2894129042_)))
                          ((lambda (_L29059_ _L29061_ _L29062_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2908429091_
                                                           _g2908529094_)
                                                    (cons _g2908429091_
                                                          _g2908529094_))
                                                  '()
                                                  _L29061_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2908629097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2908729100_)
                        (cons _g2908629097_ _g2908729100_))
                      '()
                      _L29062_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2908829103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2908929106_)
                        (cons _g2908829103_ _g2908929106_))
                      '()
                      _L29059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2894229055_
                           _expr2892629023_
                           _hd2892729026_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2893729035_
                                                   _target2893429029_
                                                   '()))
                                                (_g2886528948_
                                                 _g2886628952_)))))
                                      (_g2886528948_ _g2886628952_))
                                  (_g2886528948_ _g2886628952_)))))))
              (_loop2892028981_ _target2891728975_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2886528948_
                                                     _g2886628952_)))))
                                          (_g2886528948_ _g2886628952_))
                                      (_g2886528948_ _g2886628952_))))
                              (_g2886528948_ _g2886628952_))))
                      (_g2886528948_ _g2886628952_))))
               (_g2886329221_
                (lambda (_g2886629113_)
                  (if (gx#stx-pair? _g2886629113_)
                      (let ((_e2888729116_ (gx#syntax-e _g2886629113_)))
                        (let ((_hd2888829120_ (##car _e2888729116_))
                              (_tl2888929123_ (##cdr _e2888729116_)))
                          (if (gx#stx-pair? _tl2888929123_)
                              (let ((_e2889029126_
                                     (gx#syntax-e _tl2888929123_)))
                                (let ((_hd2889129130_ (##car _e2889029126_))
                                      (_tl2889229133_ (##cdr _e2889029126_)))
                                  (if (gx#stx-pair? _hd2889129130_)
                                      (let ((_e2889329136_
                                             (gx#syntax-e _hd2889129130_)))
                                        (let ((_hd2889429140_
                                               (##car _e2889329136_))
                                              (_tl2889529143_
                                               (##cdr _e2889329136_)))
                                          (if (gx#stx-pair? _tl2889529143_)
                                              (let ((_e2889629146_
                                                     (gx#syntax-e
                                                      _tl2889529143_)))
                                                (let ((_hd2889729150_
                                                       (##car _e2889629146_))
                                                      (_tl2889829153_
                                                       (##cdr _e2889629146_)))
                                                  (if (gx#stx-null?
                                                       _tl2889829153_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2889229133_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2889229133_)
                            '0)
                      (let ((_g34684_
                             (gx#syntax-split-splice _tl2889229133_ '0)))
                        (begin
                          (let ((_g34685_ (values-count _g34684_)))
                            (if (not (fx= _g34685_ 2))
                                (error "Context expects 2 values" _g34685_)))
                          (let ((_target2889929156_ (values-ref _g34684_ 0))
                                (_tl2890129159_ (values-ref _g34684_ 1)))
                            (if (gx#stx-null? _tl2890129159_)
                                (letrec ((_loop2890229162_
                                          (lambda (_hd2890029166_
                                                   _body2890629169_)
                                            (if (gx#stx-pair? _hd2890029166_)
                                                (let ((_e2890329172_
                                                       (gx#syntax-e
                                                        _hd2890029166_)))
                                                  (let ((_lp-hd2890429176_
                                                         (##car _e2890329172_))
                                                        (_lp-tl2890529179_
                                                         (##cdr _e2890329172_)))
                                                    (_loop2890229162_
                                                     _lp-tl2890529179_
                                                     (cons _lp-hd2890429176_
                                                           _body2890629169_))))
                                                (let ((_body2890729182_
                                                       (reverse _body2890629169_)))
                                                  ((lambda (_L29186_
                                                            _L29188_
                                                            _L29189_
                                                            _L29190_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L29189_)
                                                         (cons _L29190_
                                                               (cons (cons (cons _L29189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L29188_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2921229215_ _g2921329218_)
                                        (cons _g2921229215_ _g2921329218_))
                                      '()
                                      _L29186_))))
                 (_g2886429109_ _g2886629113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2890729182_
                                                   _hd2889729150_
                                                   _hd2889429140_
                                                   _hd2888829120_))))))
                                  (_loop2890229162_ _target2889929156_ '()))
                                (_g2886429109_ _g2886629113_)))))
                      (_g2886429109_ _g2886629113_))
                  (_g2886429109_ _g2886629113_))
              (_g2886429109_ _g2886629113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2886429109_ _g2886629113_))))
                                      (_g2886429109_ _g2886629113_))))
                              (_g2886429109_ _g2886629113_))))
                      (_g2886429109_ _g2886629113_))))
               (_g2886229303_
                (lambda (_g2886629225_)
                  (if (gx#stx-pair? _g2886629225_)
                      (let ((_e2886829228_ (gx#syntax-e _g2886629225_)))
                        (let ((_hd2886929232_ (##car _e2886829228_))
                              (_tl2887029235_ (##cdr _e2886829228_)))
                          (if (gx#stx-pair? _tl2887029235_)
                              (let ((_e2887129238_
                                     (gx#syntax-e _tl2887029235_)))
                                (let ((_hd2887229242_ (##car _e2887129238_))
                                      (_tl2887329245_ (##cdr _e2887129238_)))
                                  (if (gx#stx-null? _hd2887229242_)
                                      (if (gx#stx-pair/null? _tl2887329245_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2887329245_)
                                                    '0)
                                              (let ((_g34686_
                                                     (gx#syntax-split-splice
                                                      _tl2887329245_
                                                      '0)))
                                                (begin
                                                  (let ((_g34687_
                                                         (values-count
                                                          _g34686_)))
                                                    (if (not (fx= _g34687_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34687_)))
                                                  (let ((_target2887429248_
                                                         (values-ref
                                                          _g34686_
                                                          0))
                                                        (_tl2887629251_
                                                         (values-ref
                                                          _g34686_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2887629251_)
                                                        (letrec ((_loop2887729254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2887529258_ _body2888129261_)
                            (if (gx#stx-pair? _hd2887529258_)
                                (let ((_e2887829264_
                                       (gx#syntax-e _hd2887529258_)))
                                  (let ((_lp-hd2887929268_
                                         (##car _e2887829264_))
                                        (_lp-tl2888029271_
                                         (##cdr _e2887829264_)))
                                    (_loop2887729254_
                                     _lp-tl2888029271_
                                     (cons _lp-hd2887929268_
                                           _body2888129261_))))
                                (let ((_body2888229274_
                                       (reverse _body2888129261_)))
                                  ((lambda (_L29278_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2929429297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2929529300_)
                    (cons _g2929429297_ _g2929529300_))
                  '()
                  _L29278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2888229274_))))))
                  (_loop2887729254_ _target2887429248_ '()))
                (_g2886329221_ _g2886629225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2886329221_ _g2886629225_))
                                          (_g2886329221_ _g2886629225_))
                                      (_g2886329221_ _g2886629225_))))
                              (_g2886329221_ _g2886629225_))))
                      (_g2886329221_ _g2886629225_)))))
          (_g2886229303_ _$stx28859_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx29311_)
        (let* ((_g2931629368_
                (lambda (_g2931729364_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2931729364_)))
               (_g2931529451_
                (lambda (_g2931729372_)
                  (if (gx#stx-pair? _g2931729372_)
                      (let ((_e2934829375_ (gx#syntax-e _g2931729372_)))
                        (let ((_hd2934929379_ (##car _e2934829375_))
                              (_tl2935029382_ (##cdr _e2934829375_)))
                          (if (gx#stx-pair? _tl2935029382_)
                              (let ((_e2935129385_
                                     (gx#syntax-e _tl2935029382_)))
                                (let ((_hd2935229389_ (##car _e2935129385_))
                                      (_tl2935329392_ (##cdr _e2935129385_)))
                                  (if (gx#stx-null? _hd2935229389_)
                                      (if (gx#stx-pair/null? _tl2935329392_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2935329392_)
                                                    '0)
                                              (let ((_g34688_
                                                     (gx#syntax-split-splice
                                                      _tl2935329392_
                                                      '0)))
                                                (begin
                                                  (let ((_g34689_
                                                         (values-count
                                                          _g34688_)))
                                                    (if (not (fx= _g34689_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34689_)))
                                                  (let ((_target2935429395_
                                                         (values-ref
                                                          _g34688_
                                                          0))
                                                        (_tl2935629398_
                                                         (values-ref
                                                          _g34688_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2935629398_)
                                                        (letrec ((_loop2935729401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2935529405_ _body2936129408_)
                            (if (gx#stx-pair? _hd2935529405_)
                                (let ((_e2935829411_
                                       (gx#syntax-e _hd2935529405_)))
                                  (let ((_lp-hd2935929415_
                                         (##car _e2935829411_))
                                        (_lp-tl2936029418_
                                         (##cdr _e2935829411_)))
                                    (_loop2935729401_
                                     _lp-tl2936029418_
                                     (cons _lp-hd2935929415_
                                           _body2936129408_))))
                                (let ((_body2936229421_
                                       (reverse _body2936129408_)))
                                  ((lambda (_L29425_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2944229445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2944329448_)
                    (cons _g2944229445_ _g2944329448_))
                  '()
                  _L29425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2936229421_))))))
                  (_loop2935729401_ _target2935429395_ '()))
                (_g2931629368_ _g2931729372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2931629368_ _g2931729372_))
                                          (_g2931629368_ _g2931729372_))
                                      (_g2931629368_ _g2931729372_))))
                              (_g2931629368_ _g2931729372_))))
                      (_g2931629368_ _g2931729372_))))
               (_g2931429577_
                (lambda (_g2931729455_)
                  (if (gx#stx-pair? _g2931729455_)
                      (let ((_e2932329458_ (gx#syntax-e _g2931729455_)))
                        (let ((_hd2932429462_ (##car _e2932329458_))
                              (_tl2932529465_ (##cdr _e2932329458_)))
                          (if (gx#stx-pair? _tl2932529465_)
                              (let ((_e2932629468_
                                     (gx#syntax-e _tl2932529465_)))
                                (let ((_hd2932729472_ (##car _e2932629468_))
                                      (_tl2932829475_ (##cdr _e2932629468_)))
                                  (if (gx#stx-pair? _hd2932729472_)
                                      (let ((_e2932929478_
                                             (gx#syntax-e _hd2932729472_)))
                                        (let ((_hd2933029482_
                                               (##car _e2932929478_))
                                              (_tl2933129485_
                                               (##cdr _e2932929478_)))
                                          (if (gx#stx-pair? _hd2933029482_)
                                              (let ((_e2933229488_
                                                     (gx#syntax-e
                                                      _hd2933029482_)))
                                                (let ((_hd2933329492_
                                                       (##car _e2933229488_))
                                                      (_tl2933429495_
                                                       (##cdr _e2933229488_)))
                                                  (if (gx#stx-pair?
                                                       _tl2933429495_)
                                                      (let ((_e2933529498_
                                                             (gx#syntax-e
                                                              _tl2933429495_)))
                                                        (let ((_hd2933629502_
                                                               (##car _e2933529498_))
                                                              (_tl2933729505_
                                                               (##cdr _e2933529498_)))
                                                          (if (gx#stx-null?
                                                               _tl2933729505_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2932829475_)
                          (if (fx>= (gx#stx-length _tl2932829475_) '0)
                              (let ((_g34690_
                                     (gx#syntax-split-splice
                                      _tl2932829475_
                                      '0)))
                                (begin
                                  (let ((_g34691_ (values-count _g34690_)))
                                    (if (not (fx= _g34691_ 2))
                                        (error "Context expects 2 values"
                                               _g34691_)))
                                  (let ((_target2933829508_
                                         (values-ref _g34690_ 0))
                                        (_tl2934029511_
                                         (values-ref _g34690_ 1)))
                                    (if (gx#stx-null? _tl2934029511_)
                                        (letrec ((_loop2934129514_
                                                  (lambda (_hd2933929518_
                                                           _body2934529521_)
                                                    (if (gx#stx-pair?
                                                         _hd2933929518_)
                                                        (let ((_e2934229524_
                                                               (gx#syntax-e
                                                                _hd2933929518_)))
                                                          (let ((_lp-hd2934329528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2934229524_))
                        (_lp-tl2934429531_ (##cdr _e2934229524_)))
                    (_loop2934129514_
                     _lp-tl2934429531_
                     (cons _lp-hd2934329528_ _body2934529521_))))
                (let ((_body2934629534_ (reverse _body2934529521_)))
                  ((lambda (_L29538_ _L29540_ _L29541_ _L29542_ _L29543_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L29542_ (cons _L29541_ '())) '())
                                 (cons (cons _L29543_
                                             (cons _L29540_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2956829571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2956929574_)
                      (cons _g2956829571_ _g2956929574_))
                    '()
                    _L29538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2934629534_
                   _tl2933129485_
                   _hd2933629502_
                   _hd2933329492_
                   _hd2932429462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2934129514_
                                           _target2933829508_
                                           '()))
                                        (_g2931529451_ _g2931729455_)))))
                              (_g2931529451_ _g2931729455_))
                          (_g2931529451_ _g2931729455_))
                      (_g2931529451_ _g2931729455_))))
              (_g2931529451_ _g2931729455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2931529451_ _g2931729455_))))
                                      (_g2931529451_ _g2931729455_))))
                              (_g2931529451_ _g2931729455_))))
                      (_g2931529451_ _g2931729455_)))))
          (_g2931429577_ _$stx29311_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx29583_)
        (let* ((_g2959429738_
                (lambda (_g2959529734_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2959529734_)))
               (_g2959329833_
                (lambda (_g2959529742_)
                  (if (gx#stx-pair? _g2959529742_)
                      (let ((_e2971529745_ (gx#syntax-e _g2959529742_)))
                        (let ((_hd2971629749_ (##car _e2971529745_))
                              (_tl2971729752_ (##cdr _e2971529745_)))
                          (if (gx#stx-pair? _tl2971729752_)
                              (let ((_e2971829755_
                                     (gx#syntax-e _tl2971729752_)))
                                (let ((_hd2971929759_ (##car _e2971829755_))
                                      (_tl2972029762_ (##cdr _e2971829755_)))
                                  (if (gx#stx-pair? _tl2972029762_)
                                      (let ((_e2972129765_
                                             (gx#syntax-e _tl2972029762_)))
                                        (let ((_hd2972229769_
                                               (##car _e2972129765_))
                                              (_tl2972329772_
                                               (##cdr _e2972129765_)))
                                          (if (gx#stx-datum? _hd2972229769_)
                                              (if (equal? (gx#stx-e
                                                           _hd2972229769_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2972329772_)
                                                      (let ((_e2972429775_
                                                             (gx#syntax-e
                                                              _tl2972329772_)))
                                                        (let ((_hd2972529779_
                                                               (##car _e2972429775_))
                                                              (_tl2972629782_
                                                               (##cdr _e2972429775_)))
                                                          (if (gx#stx-pair?
                                                               _tl2972629782_)
                                                              (let ((_e2972729785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2972629782_)))
                        (let ((_hd2972829789_ (##car _e2972729785_))
                              (_tl2972929792_ (##cdr _e2972729785_)))
                          (if (gx#identifier? _hd2972829789_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g34692_|
                                   _hd2972829789_)
                                  (if (gx#stx-pair? _tl2972929792_)
                                      (let ((_e2973029795_
                                             (gx#syntax-e _tl2972929792_)))
                                        (let ((_hd2973129799_
                                               (##car _e2973029795_))
                                              (_tl2973229802_
                                               (##cdr _e2973029795_)))
                                          (if (gx#stx-null? _tl2973229802_)
                                              ((lambda (_L29805_
                                                        _L29807_
                                                        _L29808_
                                                        _L29809_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L29809_
                                             (cons _L29808_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L29805_
                                                   (cons (cons _L29807_
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
                                               _hd2973129799_
                                               _hd2972529779_
                                               _hd2971929759_
                                               _hd2971629749_)
                                              (_g2959429738_ _g2959529742_))))
                                      (_g2959429738_ _g2959529742_))
                                  (_g2959429738_ _g2959529742_))
                              (_g2959429738_ _g2959529742_))))
                      (_g2959429738_ _g2959529742_))))
              (_g2959429738_ _g2959529742_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2959429738_
                                                   _g2959529742_))
                                              (_g2959429738_ _g2959529742_))))
                                      (_g2959429738_ _g2959529742_))))
                              (_g2959429738_ _g2959529742_))))
                      (_g2959429738_ _g2959529742_))))
               (_g2959229901_
                (lambda (_g2959529837_)
                  (if (gx#stx-pair? _g2959529837_)
                      (let ((_e2969929840_ (gx#syntax-e _g2959529837_)))
                        (let ((_hd2970029844_ (##car _e2969929840_))
                              (_tl2970129847_ (##cdr _e2969929840_)))
                          (if (gx#stx-pair? _tl2970129847_)
                              (let ((_e2970229850_
                                     (gx#syntax-e _tl2970129847_)))
                                (let ((_hd2970329854_ (##car _e2970229850_))
                                      (_tl2970429857_ (##cdr _e2970229850_)))
                                  (if (gx#stx-pair? _tl2970429857_)
                                      (let ((_e2970529860_
                                             (gx#syntax-e _tl2970429857_)))
                                        (let ((_hd2970629864_
                                               (##car _e2970529860_))
                                              (_tl2970729867_
                                               (##cdr _e2970529860_)))
                                          (if (gx#stx-datum? _hd2970629864_)
                                              (if (equal? (gx#stx-e
                                                           _hd2970629864_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2970729867_)
                                                      (let ((_e2970829870_
                                                             (gx#syntax-e
                                                              _tl2970729867_)))
                                                        (let ((_hd2970929874_
                                                               (##car _e2970829870_))
                                                              (_tl2971029877_
                                                               (##cdr _e2970829870_)))
                                                          (if (gx#stx-null?
                                                               _tl2971029877_)
                                                              ((lambda (_L29880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L29882_
                                _L29883_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L29883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L29882_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L29880_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2970929874_
                       _hd2970329854_
                       _hd2970029844_)
                      (_g2959329833_ _g2959529837_))))
              (_g2959329833_ _g2959529837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2959329833_
                                                   _g2959529837_))
                                              (_g2959329833_ _g2959529837_))))
                                      (_g2959329833_ _g2959529837_))))
                              (_g2959329833_ _g2959529837_))))
                      (_g2959329833_ _g2959529837_))))
               (_g2959129969_
                (lambda (_g2959529905_)
                  (if (gx#stx-pair? _g2959529905_)
                      (let ((_e2968429908_ (gx#syntax-e _g2959529905_)))
                        (let ((_hd2968529912_ (##car _e2968429908_))
                              (_tl2968629915_ (##cdr _e2968429908_)))
                          (if (gx#stx-pair? _tl2968629915_)
                              (let ((_e2968729918_
                                     (gx#syntax-e _tl2968629915_)))
                                (let ((_hd2968829922_ (##car _e2968729918_))
                                      (_tl2968929925_ (##cdr _e2968729918_)))
                                  (if (gx#stx-pair? _tl2968929925_)
                                      (let ((_e2969029928_
                                             (gx#syntax-e _tl2968929925_)))
                                        (let ((_hd2969129932_
                                               (##car _e2969029928_))
                                              (_tl2969229935_
                                               (##cdr _e2969029928_)))
                                          (if (gx#identifier? _hd2969129932_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34693_|
                                                   _hd2969129932_)
                                                  (if (gx#stx-pair?
                                                       _tl2969229935_)
                                                      (let ((_e2969329938_
                                                             (gx#syntax-e
                                                              _tl2969229935_)))
                                                        (let ((_hd2969429942_
                                                               (##car _e2969329938_))
                                                              (_tl2969529945_
                                                               (##cdr _e2969329938_)))
                                                          (if (gx#stx-null?
                                                               _tl2969529945_)
                                                              ((lambda (_L29948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L29950_
                                _L29951_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L29951_
                                                             (cons _L29950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L29948_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2969429942_
                       _hd2968829922_
                       _hd2968529912_)
                      (_g2959229901_ _g2959529905_))))
              (_g2959229901_ _g2959529905_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2959229901_
                                                   _g2959529905_))
                                              (_g2959229901_ _g2959529905_))))
                                      (_g2959229901_ _g2959529905_))))
                              (_g2959229901_ _g2959529905_))))
                      (_g2959229901_ _g2959529905_))))
               (_g2959030011_
                (lambda (_g2959529973_)
                  (if (gx#stx-pair? _g2959529973_)
                      (let ((_e2967529976_ (gx#syntax-e _g2959529973_)))
                        (let ((_hd2967629980_ (##car _e2967529976_))
                              (_tl2967729983_ (##cdr _e2967529976_)))
                          (if (gx#stx-pair? _tl2967729983_)
                              (let ((_e2967829986_
                                     (gx#syntax-e _tl2967729983_)))
                                (let ((_hd2967929990_ (##car _e2967829986_))
                                      (_tl2968029993_ (##cdr _e2967829986_)))
                                  (if (gx#stx-null? _tl2968029993_)
                                      ((lambda (_L29996_ _L29998_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L29998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L29996_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2967929990_
                                       _hd2967629980_)
                                      (_g2959129969_ _g2959529973_))))
                              (_g2959129969_ _g2959529973_))))
                      (_g2959129969_ _g2959529973_))))
               (_g2958930065_
                (lambda (_g2959530015_)
                  (if (gx#stx-pair? _g2959530015_)
                      (let ((_e2966430018_ (gx#syntax-e _g2959530015_)))
                        (let ((_hd2966530022_ (##car _e2966430018_))
                              (_tl2966630025_ (##cdr _e2966430018_)))
                          (if (gx#stx-pair? _tl2966630025_)
                              (let ((_e2966730028_
                                     (gx#syntax-e _tl2966630025_)))
                                (let ((_hd2966830032_ (##car _e2966730028_))
                                      (_tl2966930035_ (##cdr _e2966730028_)))
                                  (if (gx#stx-pair? _tl2966930035_)
                                      (let ((_e2967030038_
                                             (gx#syntax-e _tl2966930035_)))
                                        (let ((_hd2967130042_
                                               (##car _e2967030038_))
                                              (_tl2967230045_
                                               (##cdr _e2967030038_)))
                                          (if (gx#stx-null? _tl2967230045_)
                                              ((lambda (_L30048_ _L30050_)
                                                 (cons _L30050_
                                                       (cons _L30048_ '())))
                                               _hd2967130042_
                                               _hd2966830032_)
                                              (_g2959030011_ _g2959530015_))))
                                      (_g2959030011_ _g2959530015_))))
                              (_g2959030011_ _g2959530015_))))
                      (_g2959030011_ _g2959530015_))))
               (_g2958830145_
                (lambda (_g2959530069_)
                  (if (gx#stx-pair? _g2959530069_)
                      (let ((_e2964730072_ (gx#syntax-e _g2959530069_)))
                        (let ((_hd2964830076_ (##car _e2964730072_))
                              (_tl2964930079_ (##cdr _e2964730072_)))
                          (if (gx#stx-pair? _tl2964930079_)
                              (let ((_e2965030082_
                                     (gx#syntax-e _tl2964930079_)))
                                (let ((_hd2965130086_ (##car _e2965030082_))
                                      (_tl2965230089_ (##cdr _e2965030082_)))
                                  (if (gx#stx-pair? _hd2965130086_)
                                      (let ((_e2965330092_
                                             (gx#syntax-e _hd2965130086_)))
                                        (let ((_hd2965430096_
                                               (##car _e2965330092_))
                                              (_tl2965530099_
                                               (##cdr _e2965330092_)))
                                          (if (gx#identifier? _hd2965430096_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34694_|
                                                   _hd2965430096_)
                                                  (if (gx#stx-pair?
                                                       _tl2965530099_)
                                                      (let ((_e2965630102_
                                                             (gx#syntax-e
                                                              _tl2965530099_)))
                                                        (let ((_hd2965730106_
                                                               (##car _e2965630102_))
                                                              (_tl2965830109_
                                                               (##cdr _e2965630102_)))
                                                          (if (gx#stx-null?
                                                               _tl2965830109_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2965230089_)
                          (let ((_e2965930112_ (gx#syntax-e _tl2965230089_)))
                            (let ((_hd2966030116_ (##car _e2965930112_))
                                  (_tl2966130119_ (##cdr _e2965930112_)))
                              (if (gx#stx-null? _tl2966130119_)
                                  ((lambda (_L30122_ _L30124_ _L30125_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L30125_
                                                       (cons _L30124_
                                                             (cons _L30122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2966030116_
                                   _hd2965730106_
                                   _hd2964830076_)
                                  (_g2958930065_ _g2959530069_))))
                          (_g2958930065_ _g2959530069_))
                      (_g2958930065_ _g2959530069_))))
              (_g2958930065_ _g2959530069_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2958930065_
                                                   _g2959530069_))
                                              (_g2958930065_ _g2959530069_))))
                                      (_g2958930065_ _g2959530069_))))
                              (_g2958930065_ _g2959530069_))))
                      (_g2958930065_ _g2959530069_))))
               (_g2958730255_
                (lambda (_g2959530149_)
                  (if (gx#stx-pair? _g2959530149_)
                      (let ((_e2962330152_ (gx#syntax-e _g2959530149_)))
                        (let ((_hd2962430156_ (##car _e2962330152_))
                              (_tl2962530159_ (##cdr _e2962330152_)))
                          (if (gx#stx-pair? _tl2962530159_)
                              (let ((_e2962630162_
                                     (gx#syntax-e _tl2962530159_)))
                                (let ((_hd2962730166_ (##car _e2962630162_))
                                      (_tl2962830169_ (##cdr _e2962630162_)))
                                  (if (gx#stx-pair? _hd2962730166_)
                                      (let ((_e2962930172_
                                             (gx#syntax-e _hd2962730166_)))
                                        (let ((_hd2963030176_
                                               (##car _e2962930172_))
                                              (_tl2963130179_
                                               (##cdr _e2962930172_)))
                                          (if (gx#identifier? _hd2963030176_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34695_|
                                                   _hd2963030176_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2963130179_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2963130179_)
                        '0)
                  (let ((_g34696_ (gx#syntax-split-splice _tl2963130179_ '0)))
                    (begin
                      (let ((_g34697_ (values-count _g34696_)))
                        (if (not (fx= _g34697_ 2))
                            (error "Context expects 2 values" _g34697_)))
                      (let ((_target2963230182_ (values-ref _g34696_ 0))
                            (_tl2963430185_ (values-ref _g34696_ 1)))
                        (if (gx#stx-null? _tl2963430185_)
                            (letrec ((_loop2963530188_
                                      (lambda (_hd2963330192_ _pred2963930195_)
                                        (if (gx#stx-pair? _hd2963330192_)
                                            (let ((_e2963630198_
                                                   (gx#syntax-e
                                                    _hd2963330192_)))
                                              (let ((_lp-hd2963730202_
                                                     (##car _e2963630198_))
                                                    (_lp-tl2963830205_
                                                     (##cdr _e2963630198_)))
                                                (_loop2963530188_
                                                 _lp-tl2963830205_
                                                 (cons _lp-hd2963730202_
                                                       _pred2963930195_))))
                                            (let ((_pred2964030208_
                                                   (reverse _pred2963930195_)))
                                              (if (gx#stx-pair? _tl2962830169_)
                                                  (let ((_e2964130212_
                                                         (gx#syntax-e
                                                          _tl2962830169_)))
                                                    (let ((_hd2964230216_
                                                           (##car _e2964130212_))
                                                          (_tl2964330219_
                                                           (##cdr _e2964130212_)))
                                                      (if (gx#stx-null?
                                                           _tl2964330219_)
                                                          ((lambda (_L30222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30224_
                            _L30225_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g3024630249_ _g3024730252_)
                                      (cons (cons _L30225_
                                                  (cons _g3024630249_
                                                        (cons _L30222_ '())))
                                            _g3024730252_))
                                    '()
                                    _L30224_))))
                   _hd2964230216_
                   _pred2964030208_
                   _hd2962430156_)
                  (_g2958830145_ _g2959530149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2958830145_
                                                   _g2959530149_)))))))
                              (_loop2963530188_ _target2963230182_ '()))
                            (_g2958830145_ _g2959530149_)))))
                  (_g2958830145_ _g2959530149_))
              (_g2958830145_ _g2959530149_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2958830145_
                                                   _g2959530149_))
                                              (_g2958830145_ _g2959530149_))))
                                      (_g2958830145_ _g2959530149_))))
                              (_g2958830145_ _g2959530149_))))
                      (_g2958830145_ _g2959530149_))))
               (_g2958630365_
                (lambda (_g2959530259_)
                  (if (gx#stx-pair? _g2959530259_)
                      (let ((_e2959930262_ (gx#syntax-e _g2959530259_)))
                        (let ((_hd2960030266_ (##car _e2959930262_))
                              (_tl2960130269_ (##cdr _e2959930262_)))
                          (if (gx#stx-pair? _tl2960130269_)
                              (let ((_e2960230272_
                                     (gx#syntax-e _tl2960130269_)))
                                (let ((_hd2960330276_ (##car _e2960230272_))
                                      (_tl2960430279_ (##cdr _e2960230272_)))
                                  (if (gx#stx-pair? _hd2960330276_)
                                      (let ((_e2960530282_
                                             (gx#syntax-e _hd2960330276_)))
                                        (let ((_hd2960630286_
                                               (##car _e2960530282_))
                                              (_tl2960730289_
                                               (##cdr _e2960530282_)))
                                          (if (gx#identifier? _hd2960630286_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g34698_|
                                                   _hd2960630286_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2960730289_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2960730289_)
                        '0)
                  (let ((_g34699_ (gx#syntax-split-splice _tl2960730289_ '0)))
                    (begin
                      (let ((_g34700_ (values-count _g34699_)))
                        (if (not (fx= _g34700_ 2))
                            (error "Context expects 2 values" _g34700_)))
                      (let ((_target2960830292_ (values-ref _g34699_ 0))
                            (_tl2961030295_ (values-ref _g34699_ 1)))
                        (if (gx#stx-null? _tl2961030295_)
                            (letrec ((_loop2961130298_
                                      (lambda (_hd2960930302_ _pred2961530305_)
                                        (if (gx#stx-pair? _hd2960930302_)
                                            (let ((_e2961230308_
                                                   (gx#syntax-e
                                                    _hd2960930302_)))
                                              (let ((_lp-hd2961330312_
                                                     (##car _e2961230308_))
                                                    (_lp-tl2961430315_
                                                     (##cdr _e2961230308_)))
                                                (_loop2961130298_
                                                 _lp-tl2961430315_
                                                 (cons _lp-hd2961330312_
                                                       _pred2961530305_))))
                                            (let ((_pred2961630318_
                                                   (reverse _pred2961530305_)))
                                              (if (gx#stx-pair? _tl2960430279_)
                                                  (let ((_e2961730322_
                                                         (gx#syntax-e
                                                          _tl2960430279_)))
                                                    (let ((_hd2961830326_
                                                           (##car _e2961730322_))
                                                          (_tl2961930329_
                                                           (##cdr _e2961730322_)))
                                                      (if (gx#stx-null?
                                                           _tl2961930329_)
                                                          ((lambda (_L30332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30334_
                            _L30335_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g3035630359_ _g3035730362_)
                                      (cons (cons _L30335_
                                                  (cons _g3035630359_
                                                        (cons _L30332_ '())))
                                            _g3035730362_))
                                    '()
                                    _L30334_))))
                   _hd2961830326_
                   _pred2961630318_
                   _hd2960030266_)
                  (_g2958730255_ _g2959530259_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2958730255_
                                                   _g2959530259_)))))))
                              (_loop2961130298_ _target2960830292_ '()))
                            (_g2958730255_ _g2959530259_)))))
                  (_g2958730255_ _g2959530259_))
              (_g2958730255_ _g2959530259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2958730255_
                                                   _g2959530259_))
                                              (_g2958730255_ _g2959530259_))))
                                      (_g2958730255_ _g2959530259_))))
                              (_g2958730255_ _g2959530259_))))
                      (_g2958730255_ _g2959530259_)))))
          (_g2958630365_ _$stx29583_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx30371_)
        (let* ((_g3037630410_
                (lambda (_g3037730406_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3037730406_)))
               (_g3037530467_
                (lambda (_g3037730414_)
                  (if (gx#stx-pair? _g3037730414_)
                      (let ((_e3039630417_ (gx#syntax-e _g3037730414_)))
                        (let ((_hd3039730421_ (##car _e3039630417_))
                              (_tl3039830424_ (##cdr _e3039630417_)))
                          (if (gx#stx-pair? _tl3039830424_)
                              (let ((_e3039930427_
                                     (gx#syntax-e _tl3039830424_)))
                                (let ((_hd3040030431_ (##car _e3039930427_))
                                      (_tl3040130434_ (##cdr _e3039930427_)))
                                  (if (gx#stx-pair? _tl3040130434_)
                                      (let ((_e3040230437_
                                             (gx#syntax-e _tl3040130434_)))
                                        (let ((_hd3040330441_
                                               (##car _e3040230437_))
                                              (_tl3040430444_
                                               (##cdr _e3040230437_)))
                                          (if (gx#stx-null? _tl3040430444_)
                                              ((lambda (_L30447_
                                                        _L30449_
                                                        _L30450_)
                                                 (cons _L30450_
                                                       (cons _L30449_
                                                             (cons _L30447_
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
                                               _hd3040330441_
                                               _hd3040030431_
                                               _hd3039730421_)
                                              (_g3037630410_ _g3037730414_))))
                                      (_g3037630410_ _g3037730414_))))
                              (_g3037630410_ _g3037730414_))))
                      (_g3037630410_ _g3037730414_))))
               (_g3037430535_
                (lambda (_g3037730471_)
                  (if (gx#stx-pair? _g3037730471_)
                      (let ((_e3038130474_ (gx#syntax-e _g3037730471_)))
                        (let ((_hd3038230478_ (##car _e3038130474_))
                              (_tl3038330481_ (##cdr _e3038130474_)))
                          (if (gx#stx-pair? _tl3038330481_)
                              (let ((_e3038430484_
                                     (gx#syntax-e _tl3038330481_)))
                                (let ((_hd3038530488_ (##car _e3038430484_))
                                      (_tl3038630491_ (##cdr _e3038430484_)))
                                  (if (gx#stx-pair? _tl3038630491_)
                                      (let ((_e3038730494_
                                             (gx#syntax-e _tl3038630491_)))
                                        (let ((_hd3038830498_
                                               (##car _e3038730494_))
                                              (_tl3038930501_
                                               (##cdr _e3038730494_)))
                                          (if (gx#stx-pair? _tl3038930501_)
                                              (let ((_e3039030504_
                                                     (gx#syntax-e
                                                      _tl3038930501_)))
                                                (let ((_hd3039130508_
                                                       (##car _e3039030504_))
                                                      (_tl3039230511_
                                                       (##cdr _e3039030504_)))
                                                  (if (gx#stx-null?
                                                       _tl3039230511_)
                                                      ((lambda (_L30514_
                                                                _L30516_
                                                                _L30517_)
                                                         (if (gx#identifier?
                                                              _L30517_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L30517_
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
                                         (cons _L30516_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L30514_ '()))
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
                     (_g3037530467_ _g3037730471_)))
               _hd3039130508_
               _hd3038830498_
               _hd3038530488_)
              (_g3037530467_ _g3037730471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3037530467_ _g3037730471_))))
                                      (_g3037530467_ _g3037730471_))))
                              (_g3037530467_ _g3037730471_))))
                      (_g3037530467_ _g3037730471_)))))
          (_g3037430535_ _$stx30371_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx30539_)
        (let* ((_g3054330558_
                (lambda (_g3054430554_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3054430554_)))
               (_g3054230601_
                (lambda (_g3054430562_)
                  (if (gx#stx-pair? _g3054430562_)
                      (let ((_e3054730565_ (gx#syntax-e _g3054430562_)))
                        (let ((_hd3054830569_ (##car _e3054730565_))
                              (_tl3054930572_ (##cdr _e3054730565_)))
                          (if (gx#stx-pair? _tl3054930572_)
                              (let ((_e3055030575_
                                     (gx#syntax-e _tl3054930572_)))
                                (let ((_hd3055130579_ (##car _e3055030575_))
                                      (_tl3055230582_ (##cdr _e3055030575_)))
                                  ((lambda (_L30585_ _L30587_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L30587_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L30585_)
                                                       '()))))
                                   _tl3055230582_
                                   _hd3055130579_)))
                              (_g3054330558_ _g3054430562_))))
                      (_g3054330558_ _g3054430562_)))))
          (_g3054230601_ _$stx30539_))))))
