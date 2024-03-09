(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1709994213)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args81725_
        (apply make-instance gx#identifier-wrap::t _$args81725_)))
    (define gx#identifier-wrap-marks
      (make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args81722_
        (apply make-instance gx#syntax-wrap::t _$args81722_)))
    (define gx#syntax-wrap-mark
      (make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args81719_
        (apply make-instance gx#syntax-quote::t _$args81719_)))
    (define gx#syntax-quote-context
      (make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e (make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_stx81717_) (symbol? (gx#stx-e _stx81717_))))
    (define gx#identifier-quote?
      (lambda (_stx81715_)
        (if (##structure-direct-instance-of? _stx81715_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81715_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81713_)
        (if (##structure-direct-instance-of? _stx81713_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81713_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81713_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81711_)
        (if (##structure-direct-instance-of? _stx81711_ 'gx#syntax-quote::t)
            _stx81711_
            (if (##structure-direct-instance-of? _stx81711_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81711_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81694_)
        (if (##structure-direct-instance-of? _stx81694_ 'gx#syntax-wrap::t)
            (let _lp81696_ ((_e81698_
                             (##unchecked-structure-ref
                              _stx81694_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81699_
                             (cons (##unchecked-structure-ref
                                    _stx81694_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81698_)
                  (let ((_$e81701_ (##type-id (##structure-type _e81698_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81701_)
                        (_lp81696_
                         (##unchecked-structure-ref _e81698_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81698_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81699_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81701_)
                                (eq? 'gx#identifier-wrap::t _$e81701_))
                            (##unchecked-structure-ref
                             _e81698_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81701_)
                                (_lp81696_
                                 (##unchecked-structure-ref
                                  _e81698_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81699_)
                                _e81698_))))
                  (if (null? _marks81699_)
                      _e81698_
                      (if (pair? _e81698_)
                          (cons (gx#stx-wrap (car _e81698_) _marks81699_)
                                (gx#stx-wrap (cdr _e81698_) _marks81699_))
                          (if (vector? _e81698_)
                              (vector-map
                               (lambda (_g8170681708_)
                                 (gx#stx-wrap _g8170681708_ _marks81699_))
                               _e81698_)
                              (if (box? _e81698_)
                                  (box (gx#stx-wrap
                                        (unbox _e81698_)
                                        _marks81699_))
                                  _e81698_))))))
            (if (##structure-instance-of? _stx81694_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81694_ '1 gx#AST::t '#f)
                _stx81694_))))
    (define gx#syntax->datum
      (lambda (_stx81692_)
        (if (##structure-instance-of? _stx81692_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81692_ '1 gx#AST::t '#f))
            (if (pair? _stx81692_)
                (cons (gx#syntax->datum (car _stx81692_))
                      (gx#syntax->datum (cdr _stx81692_)))
                (if (vector? _stx81692_)
                    (vector-map gx#syntax->datum _stx81692_)
                    (if (box? _stx81692_)
                        (box (gx#syntax->datum (unbox _stx81692_)))
                        _stx81692_))))))
    (define gx#datum->syntax__%
      (lambda (_stx81635_ _datum81636_ _src81637_ _quote?81638_)
        (letrec ((_wrap-datum81640_
                  (lambda (_e81664_ _marks81665_)
                    (_wrap-inner81642_
                     _e81664_
                     (lambda (_g8166681668_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8166681668_
                        _src81637_
                        _marks81665_)))))
                 (_wrap-quote81641_
                  (lambda (_e81656_ _ctx81657_ _marks81658_)
                    (_wrap-inner81642_
                     _e81656_
                     (lambda (_g8165981661_)
                       (##structure
                        gx#syntax-quote::t
                        _g8165981661_
                        _src81637_
                        _ctx81657_
                        _marks81658_)))))
                 (_wrap-inner81642_
                  (lambda (_e81649_ _wrap-e81650_)
                    (let _recur81652_ ((_e81654_ _e81649_))
                      (if (symbol? _e81654_)
                          (_wrap-e81650_ _e81654_)
                          (if (pair? _e81654_)
                              (cons (_recur81652_ (car _e81654_))
                                    (_recur81652_ (cdr _e81654_)))
                              (if (vector? _e81654_)
                                  (vector-map _recur81652_ _e81654_)
                                  (if (box? _e81654_)
                                      (box (_recur81652_ (unbox _e81654_)))
                                      _e81654_)))))))
                 (_wrap-outer81643_
                  (lambda (_e81647_)
                    (if (##structure-instance-of? _e81647_ 'gerbil#AST::t)
                        _e81647_
                        (##structure gx#AST::t _e81647_ _src81637_)))))
          (if (##structure-instance-of? _datum81636_ 'gerbil#AST::t)
              _datum81636_
              (if (not _stx81635_)
                  (##structure gx#AST::t _datum81636_ _src81637_)
                  (if (gx#identifier? _stx81635_)
                      (let ((_stx81645_ (gx#stx-unwrap__0 _stx81635_)))
                        (_wrap-outer81643_
                         (if (##structure-direct-instance-of?
                              _stx81645_
                              'gx#syntax-quote::t)
                             (if _quote?81638_
                                 (_wrap-quote81641_
                                  _datum81636_
                                  (##unchecked-structure-ref
                                   _stx81645_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx81645_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum81640_
                                  _datum81636_
                                  (##unchecked-structure-ref
                                   _stx81645_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum81640_
                              _datum81636_
                              (##unchecked-structure-ref
                               _stx81645_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx81635_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx81674_ _datum81675_)
        (let* ((_src81677_ '#f) (_quote?81679_ '#t))
          (gx#datum->syntax__%
           _stx81674_
           _datum81675_
           _src81677_
           _quote?81679_))))
    (define gx#datum->syntax__1
      (lambda (_stx81681_ _datum81682_ _src81683_)
        (let ((_quote?81685_ '#t))
          (gx#datum->syntax__%
           _stx81681_
           _datum81682_
           _src81683_
           _quote?81685_))))
    (define gx#datum->syntax
      (lambda _g81806_
        (let ((_g81805_ (##length _g81806_)))
          (cond ((##fx= _g81805_ 2)
                 (apply (lambda (_stx81674_ _datum81675_)
                          (gx#datum->syntax__0 _stx81674_ _datum81675_))
                        _g81806_))
                ((##fx= _g81805_ 3)
                 (apply (lambda (_stx81681_ _datum81682_ _src81683_)
                          (gx#datum->syntax__1
                           _stx81681_
                           _datum81682_
                           _src81683_))
                        _g81806_))
                ((##fx= _g81805_ 4)
                 (apply (lambda (_stx81687_
                                 _datum81688_
                                 _src81689_
                                 _quote?81690_)
                          (gx#datum->syntax__%
                           _stx81687_
                           _datum81688_
                           _src81689_
                           _quote?81690_))
                        _g81806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81806_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx81611_ _marks81612_)
        (let _lp81614_ ((_e81616_ _stx81611_)
                        (_marks81617_ _marks81612_)
                        (_src81618_ (gx#stx-source _stx81611_)))
          (if (##structure-direct-instance-of? _e81616_ 'gx#syntax-wrap::t)
              (_lp81614_
               (##unchecked-structure-ref _e81616_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e81616_ '3 gx#syntax-wrap::t '#f)
                _marks81617_)
               (##unchecked-structure-ref _e81616_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e81616_
                   'gx#identifier-wrap::t)
                  (if (null? _marks81617_)
                      _e81616_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e81616_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e81616_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81616_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81617_)))
                  (if (##structure-direct-instance-of?
                       _e81616_
                       'gx#syntax-quote::t)
                      _e81616_
                      (if (##structure-instance-of? _e81616_ 'gerbil#AST::t)
                          (_lp81614_
                           (##unchecked-structure-ref
                            _e81616_
                            '1
                            gx#AST::t
                            '#f)
                           _marks81617_
                           (##unchecked-structure-ref
                            _e81616_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e81616_)
                              (##structure
                               gx#identifier-wrap::t
                               _e81616_
                               _src81618_
                               (reverse _marks81617_))
                              (if (null? _marks81617_)
                                  _e81616_
                                  (if (pair? _e81616_)
                                      (cons (gx#stx-wrap
                                             (car _e81616_)
                                             _marks81617_)
                                            (gx#stx-wrap
                                             (cdr _e81616_)
                                             _marks81617_))
                                      (if (vector? _e81616_)
                                          (vector-map
                                           (lambda (_g8161981621_)
                                             (gx#stx-wrap
                                              _g8161981621_
                                              _marks81617_))
                                           _e81616_)
                                          (if (box? _e81616_)
                                              (box (gx#stx-wrap
                                                    (unbox _e81616_)
                                                    _marks81617_))
                                              _e81616_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx81627_)
        (let ((_marks81629_ '())) (gx#stx-unwrap__% _stx81627_ _marks81629_))))
    (define gx#stx-unwrap
      (lambda _g81808_
        (let ((_g81807_ (##length _g81808_)))
          (cond ((##fx= _g81807_ 1)
                 (apply (lambda (_stx81627_) (gx#stx-unwrap__0 _stx81627_))
                        _g81808_))
                ((##fx= _g81807_ 2)
                 (apply (lambda (_stx81631_ _marks81632_)
                          (gx#stx-unwrap__% _stx81631_ _marks81632_))
                        _g81808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81808_))))))
    (define gx#stx-wrap
      (lambda (_stx81604_ _marks81605_)
        (foldl1 (lambda (_mark81607_ _stx81608_)
                  (gx#stx-apply-mark _stx81608_ _mark81607_))
                _stx81604_
                _marks81605_)))
    (define gx#stx-rewrap
      (lambda (_stx81598_ _marks81599_)
        (foldr1 (lambda (_mark81601_ _stx81602_)
                  (gx#stx-apply-mark _stx81602_ _mark81601_))
                _stx81598_
                _marks81599_)))
    (define gx#stx-apply-mark
      (lambda (_stx81595_ _mark81596_)
        (if (##structure-direct-instance-of? _stx81595_ 'gx#syntax-quote::t)
            _stx81595_
            (if (and (##structure-direct-instance-of?
                      _stx81595_
                      'gx#syntax-wrap::t)
                     (eq? _mark81596_
                          (##unchecked-structure-ref
                           _stx81595_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx81595_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx81595_
                 (gx#stx-source _stx81595_)
                 _mark81596_)))))
    (define gx#apply-mark
      (lambda (_mark81559_ _marks81560_)
        (let* ((_marks8156181569_ _marks81560_)
               (_else8156381577_ (lambda () (cons _mark81559_ _marks81560_)))
               (_K8156581583_
                (lambda (_rest81580_ _hd81581_)
                  (if (eq? _mark81559_ _hd81581_)
                      _rest81580_
                      (cons _mark81559_ _marks81560_)))))
          (if (##pair? _marks8156181569_)
              (let ((_hd8156681586_ (##car _marks8156181569_))
                    (_tl8156781588_ (##cdr _marks8156181569_)))
                (let* ((_hd81591_ _hd8156681586_) (_rest81593_ _tl8156781588_))
                  (_K8156581583_ _rest81593_ _hd81591_)))
              (_else8156381577_)))))
    (define gx#stx-e
      (lambda (_stx81557_)
        (if (##structure-direct-instance-of? _stx81557_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx81557_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx81557_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81557_ '1 gx#AST::t '#f)
                _stx81557_))))
    (define gx#stx-source
      (lambda (_stx81555_)
        (if (##structure-instance-of? _stx81555_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx81555_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx81549_ _src81550_)
        (if (or (##structure-instance-of? _stx81549_ 'gerbil#AST::t)
                (not _src81550_))
            _stx81549_
            (##structure gx#AST::t _stx81549_ _src81550_))))
    (define gx#stx-datum?
      (lambda (_stx81547_) (gx#self-quoting? (gx#stx-e _stx81547_))))
    (define gx#self-quoting?
      (lambda (_x81530_)
        (let ((_$e81532_ (immediate? _x81530_)))
          (if _$e81532_
              _$e81532_
              (let ((_$e81535_ (number? _x81530_)))
                (if _$e81535_
                    _$e81535_
                    (let ((_$e81538_ (keyword? _x81530_)))
                      (if _$e81538_
                          _$e81538_
                          (let ((_$e81541_ (string? _x81530_)))
                            (if _$e81541_
                                _$e81541_
                                (let ((_$e81544_ (vector? _x81530_)))
                                  (if _$e81544_
                                      _$e81544_
                                      (u8vector? _x81530_)))))))))))))
    (define gx#stx-boolean? (lambda (_e81528_) (boolean? (gx#stx-e _e81528_))))
    (define gx#stx-keyword? (lambda (_e81526_) (keyword? (gx#stx-e _e81526_))))
    (define gx#stx-char? (lambda (_e81524_) (char? (gx#stx-e _e81524_))))
    (define gx#stx-number? (lambda (_e81522_) (number? (gx#stx-e _e81522_))))
    (define gx#stx-fixnum? (lambda (_e81520_) (fixnum? (gx#stx-e _e81520_))))
    (define gx#stx-string? (lambda (_e81518_) (string? (gx#stx-e _e81518_))))
    (define gx#stx-null? (lambda (_e81516_) (null? (gx#stx-e _e81516_))))
    (define gx#stx-pair? (lambda (_e81514_) (pair? (gx#stx-e _e81514_))))
    (define gx#stx-list?
      (lambda (_e81476_)
        (let* ((_g8147781486_ (gx#stx-e _e81476_))
               (_E8148081490_
                (lambda () (error '"No clause matching" _g8147781486_))))
          (let ((_K8148281506_
                 (lambda (_rest81504_) (gx#stx-list? _rest81504_)))
                (_K8148181496_ (lambda (_tail81494_) (null? _tail81494_))))
            (if (##pair? _g8147781486_)
                (let* ((_tl8148481509_ (##cdr _g8147781486_))
                       (_rest81512_ _tl8148481509_))
                  (gx#stx-list? _rest81512_))
                (let ((_tail81499_ _g8147781486_)) (null? _tail81499_)))))))
    (define gx#stx-pair/null?
      (lambda (_e81469_)
        (let* ((_e81471_ (gx#stx-e _e81469_)) (_$e81473_ (pair? _e81471_)))
          (if _$e81473_ _$e81473_ (null? _e81471_)))))
    (define gx#stx-vector? (lambda (_e81467_) (vector? (gx#stx-e _e81467_))))
    (define gx#stx-box? (lambda (_e81465_) (box? (gx#stx-e _e81465_))))
    (define gx#stx-eq?
      (lambda (_x81462_ _y81463_)
        (eq? (gx#stx-e _x81462_) (gx#stx-e _y81463_))))
    (define gx#stx-eqv?
      (lambda (_x81459_ _y81460_)
        (eqv? (gx#stx-e _x81459_) (gx#stx-e _y81460_))))
    (define gx#stx-equal?
      (lambda (_x81456_ _y81457_)
        (equal? (gx#stx-e _x81456_) (gx#stx-e _y81457_))))
    (define gx#stx-false? (lambda (_x81454_) (not (gx#stx-e _x81454_))))
    (define gx#stx-identifier
      (lambda (_template81451_ . _args81452_)
        (gx#datum->syntax__1
         _template81451_
         (apply make-symbol (gx#syntax->datum _args81452_))
         (gx#stx-source _template81451_))))
    (define gx#stx-identifier-marks
      (lambda (_stx81449_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx81449_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx81447_)
        (if (##structure-direct-instance-of? _stx81447_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx81447_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx81447_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx81447_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx81447_)))))
    (define gx#stx-identifier-context
      (lambda (_stx81443_)
        (let ((_stx81445_ (gx#stx-unwrap__0 _stx81443_)))
          (if (gx#identifier-quote? _stx81445_)
              (##unchecked-structure-ref _stx81445_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx81398_)
        (let* ((_g8139981409_ (gx#stx-e _stx81398_))
               (_else8140281417_ (lambda () '#f)))
          (let ((_K8140581431_
                 (lambda (_rest81428_ _hd81429_)
                   (if (gx#identifier? _hd81429_)
                       (gx#identifier-list? _rest81428_)
                       '#f)))
                (_K8140481422_ (lambda () '#t)))
            (let ((_try-match8140181425_
                   (lambda ()
                     (if (##null? _g8139981409_)
                         (_K8140481422_)
                         (_else8140281417_)))))
              (if (##pair? _g8139981409_)
                  (let ((_tl8140781436_ (##cdr _g8139981409_))
                        (_hd8140681434_ (##car _g8139981409_)))
                    (let ((_hd81439_ _hd8140681434_)
                          (_rest81441_ _tl8140781436_))
                      (_K8140581431_ _rest81441_ _hd81439_)))
                  (_try-match8140181425_)))))))
    (define gx#genident__%
      (lambda (_e81375_ _src81376_)
        (gx#stx-wrap-source
         (gensym (let ((_e81378_ (gx#stx-e _e81375_)))
                   (if (interned-symbol? _e81378_) _e81378_ 'g)))
         (let ((_$e81380_ (gx#stx-source _e81375_)))
           (if _$e81380_ _$e81380_ _src81376_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e81387_ 'g) (_src81389_ '#f))
          (gx#genident__% _e81387_ _src81389_))))
    (define gx#genident__1
      (lambda (_e81391_)
        (let ((_src81393_ '#f)) (gx#genident__% _e81391_ _src81393_))))
    (define gx#genident
      (lambda _g81810_
        (let ((_g81809_ (##length _g81810_)))
          (cond ((##fx= _g81809_ 0)
                 (apply (lambda () (gx#genident__0)) _g81810_))
                ((##fx= _g81809_ 1)
                 (apply (lambda (_e81391_) (gx#genident__1 _e81391_))
                        _g81810_))
                ((##fx= _g81809_ 2)
                 (apply (lambda (_e81395_ _src81396_)
                          (gx#genident__% _e81395_ _src81396_))
                        _g81810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81810_))))))
    (define gx#gentemps
      (lambda (_stx-lst81372_) (gx#stx-map1 gx#genident _stx-lst81372_)))
    (define gx#syntax->list
      (lambda (_stx81370_) (gx#stx-map1 values _stx81370_)))
    (define gx#stx-car
      (lambda (_stx81367_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx81367_)))))
    (define gx#stx-cdr
      (lambda (_stx81364_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx81364_)))))
    (define gx#stx-length
      (lambda (_stx81329_)
        (let _lp81331_ ((_rest81333_ _stx81329_) (_n81334_ '0))
          (let* ((_g8133581343_ (gx#stx-e _rest81333_))
                 (_else8133781351_ (lambda () _n81334_))
                 (_K8133981356_
                  (lambda (_rest81354_)
                    (_lp81331_ _rest81354_ (fx+ _n81334_ '1)))))
            (if (##pair? _g8133581343_)
                (let* ((_tl8134181359_ (##cdr _g8133581343_))
                       (_rest81362_ _tl8134181359_))
                  (_K8133981356_ _rest81362_))
                (_else8133781351_))))))
    (define gx#stx-for-each
      (lambda _g81812_
        (let ((_g81811_ (##length _g81812_)))
          (cond ((##fx= _g81811_ 2)
                 (apply (lambda (_f81322_ _stx81323_)
                          (gx#stx-for-each1 _f81322_ _stx81323_))
                        _g81812_))
                ((##fx= _g81811_ 3)
                 (apply (lambda (_f81325_ _xstx81326_ _ystx81327_)
                          (gx#stx-for-each2 _f81325_ _xstx81326_ _ystx81327_))
                        _g81812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81812_))))))
    (define gx#stx-for-each1
      (lambda (_f81272_ _stx81273_)
        (if (procedure? _f81272_)
            '#!void
            (error '"expected procedure" _f81272_))
        (let _lp81275_ ((_rest81277_ _stx81273_))
          (let* ((_g8127881288_ (gx#syntax-e _rest81277_))
                 (_else8128181296_ (lambda () (_f81272_ _rest81277_))))
            (let ((_K8128481310_
                   (lambda (_rest81307_ _hd81308_)
                     (_f81272_ _hd81308_)
                     (_lp81275_ _rest81307_)))
                  (_K8128381301_ (lambda () '#!void)))
              (let ((_try-match8128081304_
                     (lambda ()
                       (if (##null? _g8127881288_)
                           (_K8128381301_)
                           (_else8128181296_)))))
                (if (##pair? _g8127881288_)
                    (let ((_tl8128681315_ (##cdr _g8127881288_))
                          (_hd8128581313_ (##car _g8127881288_)))
                      (let ((_hd81318_ _hd8128581313_)
                            (_rest81320_ _tl8128681315_))
                        (_K8128481310_ _rest81320_ _hd81318_)))
                    (_try-match8128081304_))))))))
    (define gx#stx-for-each2
      (lambda (_f81177_ _xstx81178_ _ystx81179_)
        (if (procedure? _f81177_)
            '#!void
            (error '"expected procedure" _f81177_))
        (let _lp81181_ ((_xrest81183_ _xstx81178_) (_yrest81184_ _ystx81179_))
          (let* ((_g8118581195_ (gx#syntax-e _xrest81183_))
                 (_else8118881203_ (lambda () '#!void)))
            (let ((_K8119181260_
                   (lambda (_xrest81229_ _xhd81230_)
                     (let* ((_g8123181238_ (gx#syntax-e _yrest81184_))
                            (_E8123381242_
                             (lambda ()
                               (error '"No clause matching" _g8123181238_)))
                            (_K8123481248_
                             (lambda (_yrest81245_ _yhd81246_)
                               (_f81177_ _xhd81230_ _yhd81246_)
                               (_lp81181_ _xrest81229_ _yrest81245_))))
                       (if (##pair? _g8123181238_)
                           (let ((_hd8123581251_ (##car _g8123181238_))
                                 (_tl8123681253_ (##cdr _g8123181238_)))
                             (let* ((_yhd81256_ _hd8123581251_)
                                    (_yrest81258_ _tl8123681253_))
                               (_K8123481248_ _yrest81258_ _yhd81256_)))
                           (_E8123381242_)))))
                  (_K8119081223_
                   (lambda ()
                     (let* ((_yrest8120781212_ _yrest81184_)
                            (_E8120981216_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8120781212_)))
                            (_K8121081220_
                             (lambda () (_f81177_ _xrest81183_ _yrest81184_))))
                       (if (not (gx#stx-null? _yrest8120781212_))
                           (_K8121081220_)
                           (_E8120981216_))))))
              (let ((_try-match8118781226_
                     (lambda ()
                       (if (not (null? _g8118581195_))
                           (_K8119081223_)
                           (_else8118881203_)))))
                (if (##pair? _g8118581195_)
                    (let ((_tl8119381265_ (##cdr _g8118581195_))
                          (_hd8119281263_ (##car _g8118581195_)))
                      (let ((_xhd81268_ _hd8119281263_)
                            (_xrest81270_ _tl8119381265_))
                        (_K8119181260_ _xrest81270_ _xhd81268_)))
                    (_try-match8118781226_))))))))
    (define gx#stx-map
      (lambda _g81814_
        (let ((_g81813_ (##length _g81814_)))
          (cond ((##fx= _g81813_ 2)
                 (apply (lambda (_f81170_ _stx81171_)
                          (gx#stx-map1 _f81170_ _stx81171_))
                        _g81814_))
                ((##fx= _g81813_ 3)
                 (apply (lambda (_f81173_ _xstx81174_ _ystx81175_)
                          (gx#stx-map2 _f81173_ _xstx81174_ _ystx81175_))
                        _g81814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81814_))))))
    (define gx#stx-map1
      (lambda (_f81120_ _stx81121_)
        (if (procedure? _f81120_)
            '#!void
            (error '"expected procedure" _f81120_))
        (let _recur81123_ ((_rest81125_ _stx81121_))
          (let* ((_g8112681136_ (gx#syntax-e _rest81125_))
                 (_else8112981144_ (lambda () (_f81120_ _rest81125_))))
            (let ((_K8113281158_
                   (lambda (_rest81155_ _hd81156_)
                     (cons (_f81120_ _hd81156_) (_recur81123_ _rest81155_))))
                  (_K8113181149_ (lambda () '())))
              (let ((_try-match8112881152_
                     (lambda ()
                       (if (##null? _g8112681136_)
                           (_K8113181149_)
                           (_else8112981144_)))))
                (if (##pair? _g8112681136_)
                    (let ((_tl8113481163_ (##cdr _g8112681136_))
                          (_hd8113381161_ (##car _g8112681136_)))
                      (let ((_hd81166_ _hd8113381161_)
                            (_rest81168_ _tl8113481163_))
                        (_K8113281158_ _rest81168_ _hd81166_)))
                    (_try-match8112881152_))))))))
    (define gx#stx-map2
      (lambda (_f81025_ _xstx81026_ _ystx81027_)
        (if (procedure? _f81025_)
            '#!void
            (error '"expected procedure" _f81025_))
        (let _recur81029_ ((_xrest81031_ _xstx81026_)
                           (_yrest81032_ _ystx81027_))
          (let* ((_g8103381043_ (gx#syntax-e _xrest81031_))
                 (_else8103681051_ (lambda () '())))
            (let ((_K8103981108_
                   (lambda (_xrest81077_ _xhd81078_)
                     (let* ((_g8107981086_ (gx#syntax-e _yrest81032_))
                            (_E8108181090_
                             (lambda ()
                               (error '"No clause matching" _g8107981086_)))
                            (_K8108281096_
                             (lambda (_yrest81093_ _yhd81094_)
                               (cons (_f81025_ _xhd81078_ _yhd81094_)
                                     (_recur81029_
                                      _xrest81077_
                                      _yrest81093_)))))
                       (if (##pair? _g8107981086_)
                           (let ((_hd8108381099_ (##car _g8107981086_))
                                 (_tl8108481101_ (##cdr _g8107981086_)))
                             (let* ((_yhd81104_ _hd8108381099_)
                                    (_yrest81106_ _tl8108481101_))
                               (_K8108281096_ _yrest81106_ _yhd81104_)))
                           (_E8108181090_)))))
                  (_K8103881071_
                   (lambda ()
                     (let* ((_yrest8105581060_ _yrest81032_)
                            (_E8105781064_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8105581060_)))
                            (_K8105881068_
                             (lambda () (_f81025_ _xrest81031_ _yrest81032_))))
                       (if (not (gx#stx-null? _yrest8105581060_))
                           (_K8105881068_)
                           (_E8105781064_))))))
              (let ((_try-match8103581074_
                     (lambda ()
                       (if (not (null? _g8103381043_))
                           (_K8103881071_)
                           (_else8103681051_)))))
                (if (##pair? _g8103381043_)
                    (let ((_tl8104181113_ (##cdr _g8103381043_))
                          (_hd8104081111_ (##car _g8103381043_)))
                      (let ((_xhd81116_ _hd8104081111_)
                            (_xrest81118_ _tl8104181113_))
                        (_K8103981108_ _xrest81118_ _xhd81116_)))
                    (_try-match8103581074_))))))))
    (define gx#stx-andmap
      (lambda (_f80975_ _stx80976_)
        (if (procedure? _f80975_)
            '#!void
            (error '"expected procedure" _f80975_))
        (let _lp80978_ ((_rest80980_ _stx80976_))
          (let* ((_g8098180991_ (gx#syntax-e _rest80980_))
                 (_else8098480999_ (lambda () (_f80975_ _rest80980_))))
            (let ((_K8098781013_
                   (lambda (_rest81010_ _hd81011_)
                     (if (_f80975_ _hd81011_) (_lp80978_ _rest81010_) '#f)))
                  (_K8098681004_ (lambda () '#t)))
              (let ((_try-match8098381007_
                     (lambda ()
                       (if (##null? _g8098180991_)
                           (_K8098681004_)
                           (_else8098480999_)))))
                (if (##pair? _g8098180991_)
                    (let ((_tl8098981018_ (##cdr _g8098180991_))
                          (_hd8098881016_ (##car _g8098180991_)))
                      (let ((_hd81021_ _hd8098881016_)
                            (_rest81023_ _tl8098981018_))
                        (_K8098781013_ _rest81023_ _hd81021_)))
                    (_try-match8098381007_))))))))
    (define gx#stx-ormap
      (lambda (_f80922_ _stx80923_)
        (if (procedure? _f80922_)
            '#!void
            (error '"expected procedure" _f80922_))
        (let _lp80925_ ((_rest80927_ _stx80923_))
          (let* ((_g8092880938_ (gx#syntax-e _rest80927_))
                 (_else8093180946_ (lambda () (_f80922_ _rest80927_))))
            (let ((_K8093480963_
                   (lambda (_rest80957_ _hd80958_)
                     (let ((_$e80960_ (_f80922_ _hd80958_)))
                       (if _$e80960_ _$e80960_ (_lp80925_ _rest80957_)))))
                  (_K8093380951_ (lambda () '#f)))
              (let ((_try-match8093080954_
                     (lambda ()
                       (if (##null? _g8092880938_)
                           (_K8093380951_)
                           (_else8093180946_)))))
                (if (##pair? _g8092880938_)
                    (let ((_tl8093680968_ (##cdr _g8092880938_))
                          (_hd8093580966_ (##car _g8092880938_)))
                      (let ((_hd80971_ _hd8093580966_)
                            (_rest80973_ _tl8093680968_))
                        (_K8093480963_ _rest80973_ _hd80971_)))
                    (_try-match8093080954_))))))))
    (define gx#stx-foldl
      (lambda (_f80870_ _iv80871_ _stx80872_)
        (if (procedure? _f80870_)
            '#!void
            (error '"expected procedure" _f80870_))
        (let _lp80874_ ((_r80876_ _iv80871_) (_rest80877_ _stx80872_))
          (let* ((_g8087880888_ (gx#syntax-e _rest80877_))
                 (_else8088180896_
                  (lambda () (_f80870_ _rest80877_ _r80876_))))
            (let ((_K8088480910_
                   (lambda (_rest80907_ _hd80908_)
                     (_lp80874_ (_f80870_ _hd80908_ _r80876_) _rest80907_)))
                  (_K8088380901_ (lambda () _r80876_)))
              (let ((_try-match8088080904_
                     (lambda ()
                       (if (##null? _g8087880888_)
                           (_K8088380901_)
                           (_else8088180896_)))))
                (if (##pair? _g8087880888_)
                    (let ((_tl8088680915_ (##cdr _g8087880888_))
                          (_hd8088580913_ (##car _g8087880888_)))
                      (let ((_hd80918_ _hd8088580913_)
                            (_rest80920_ _tl8088680915_))
                        (_K8088480910_ _rest80920_ _hd80918_)))
                    (_try-match8088080904_))))))))
    (define gx#stx-foldr
      (lambda (_f80819_ _iv80820_ _stx80821_)
        (if (procedure? _f80819_)
            '#!void
            (error '"expected procedure" _f80819_))
        (let _recur80823_ ((_rest80825_ _stx80821_))
          (let* ((_g8082680836_ (gx#syntax-e _rest80825_))
                 (_else8082980844_
                  (lambda () (_f80819_ _rest80825_ _iv80820_))))
            (let ((_K8083280858_
                   (lambda (_rest80855_ _hd80856_)
                     (_f80819_ _hd80856_ (_recur80823_ _rest80855_))))
                  (_K8083180849_ (lambda () _iv80820_)))
              (let ((_try-match8082880852_
                     (lambda ()
                       (if (##null? _g8082680836_)
                           (_K8083180849_)
                           (_else8082980844_)))))
                (if (##pair? _g8082680836_)
                    (let ((_tl8083480863_ (##cdr _g8082680836_))
                          (_hd8083380861_ (##car _g8082680836_)))
                      (let ((_hd80866_ _hd8083380861_)
                            (_rest80868_ _tl8083480863_))
                        (_K8083280858_ _rest80868_ _hd80866_)))
                    (_try-match8082880852_))))))))
    (define gx#stx-reverse
      (lambda (_stx80817_) (gx#stx-foldl cons '() _stx80817_)))
    (define gx#stx-last
      (lambda (_stx80778_)
        (let _lp80780_ ((_rest80782_ _stx80778_))
          (let* ((_g8078380791_ (gx#syntax-e _rest80782_))
                 (_else8078580799_ (lambda () _rest80782_))
                 (_K8078780805_
                  (lambda (_rest80802_ _hd80803_)
                    (if (gx#stx-null? _rest80802_)
                        _hd80803_
                        (_lp80780_ _rest80802_)))))
            (if (##pair? _g8078380791_)
                (let ((_hd8078880808_ (##car _g8078380791_))
                      (_tl8078980810_ (##cdr _g8078380791_)))
                  (let* ((_hd80813_ _hd8078880808_)
                         (_rest80815_ _tl8078980810_))
                    (_K8078780805_ _rest80815_ _hd80813_)))
                (_else8078580799_))))))
    (define gx#stx-last-pair
      (lambda (_stx80749_)
        (let _lp80751_ ((_hd80753_ _stx80749_))
          (let* ((_g8075480761_ (gx#syntax-e _hd80753_))
                 (_E8075680765_
                  (lambda () (error '"No clause matching" _g8075480761_)))
                 (_K8075780770_
                  (lambda (_rest80768_)
                    (if (gx#stx-pair? _rest80768_)
                        (_lp80751_ _rest80768_)
                        _hd80753_))))
            (if (##pair? _g8075480761_)
                (let* ((_tl8075980773_ (##cdr _g8075480761_))
                       (_rest80776_ _tl8075980773_))
                  (_K8075780770_ _rest80776_))
                (_E8075680765_))))))
    (define gx#stx-list-tail
      (lambda (_stx80718_ _k80719_)
        (let _lp80721_ ((_rest80723_ _stx80718_) (_k80724_ _k80719_))
          (if (fxpositive? _k80724_)
              (let* ((_g8072580732_ (gx#syntax-e _rest80723_))
                     (_E8072780736_
                      (lambda () (error '"No clause matching" _g8072580732_)))
                     (_K8072880741_
                      (lambda (_rest80739_)
                        (_lp80721_ _rest80739_ (fx- _k80724_ '1)))))
                (if (##pair? _g8072580732_)
                    (let* ((_tl8073080744_ (##cdr _g8072580732_))
                           (_rest80747_ _tl8073080744_))
                      (_K8072880741_ _rest80747_))
                    (_E8072780736_)))
              _rest80723_))))
    (define gx#stx-list-ref
      (lambda (_stx80715_ _k80716_)
        (gx#stx-car (gx#stx-list-tail _stx80715_ _k80716_))))
    (define gx#stx-plist?__%
      (lambda (_stx80627_ _key?80628_)
        (if (procedure? _key?80628_)
            '#!void
            (error '"expected procedure" _key?80628_))
        (let _lp80630_ ((_rest80632_ _stx80627_))
          (let* ((_g8063380643_ (gx#stx-e _rest80632_))
                 (_else8063680651_ (lambda () '#f)))
            (let ((_K8063980693_
                   (lambda (_rest80662_ _hd80663_)
                     (if (_key?80628_ _hd80663_)
                         (let* ((_g8066480672_ (gx#stx-e _rest80662_))
                                (_else8066680680_ (lambda () '#f))
                                (_K8066880685_
                                 (lambda (_rest80683_)
                                   (_lp80630_ _rest80683_))))
                           (if (##pair? _g8066480672_)
                               (let* ((_tl8067080688_ (##cdr _g8066480672_))
                                      (_rest80691_ _tl8067080688_))
                                 (_lp80630_ _rest80691_))
                               (_else8066680680_)))
                         '#f)))
                  (_K8063880656_ (lambda () '#t)))
              (let ((_try-match8063580659_
                     (lambda ()
                       (if (##null? _g8063380643_)
                           (_K8063880656_)
                           (_else8063680651_)))))
                (if (##pair? _g8063380643_)
                    (let ((_tl8064180698_ (##cdr _g8063380643_))
                          (_hd8064080696_ (##car _g8063380643_)))
                      (let ((_hd80701_ _hd8064080696_)
                            (_rest80703_ _tl8064180698_))
                        (_K8063980693_ _rest80703_ _hd80701_)))
                    (_try-match8063580659_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80708_)
        (let ((_key?80710_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80708_ _key?80710_))))
    (define gx#stx-plist?
      (lambda _g81816_
        (let ((_g81815_ (##length _g81816_)))
          (cond ((##fx= _g81815_ 1)
                 (apply (lambda (_stx80708_) (gx#stx-plist?__0 _stx80708_))
                        _g81816_))
                ((##fx= _g81815_ 2)
                 (apply (lambda (_stx80712_ _key?80713_)
                          (gx#stx-plist?__% _stx80712_ _key?80713_))
                        _g81816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81816_))))))
    (define gx#stx-getq__%
      (lambda (_key80545_ _stx80546_ _key=?80547_)
        (if (procedure? _key=?80547_)
            '#!void
            (error '"expected procedure" _key=?80547_))
        (let _lp80549_ ((_rest80551_ _stx80546_))
          (let* ((_g8055280560_ (gx#syntax-e _rest80551_))
                 (_else8055480568_ (lambda () '#f))
                 (_K8055680602_
                  (lambda (_rest80571_ _hd80572_)
                    (let* ((_g8057380580_ (gx#syntax-e _rest80571_))
                           (_E8057580584_
                            (lambda ()
                              (error '"No clause matching" _g8057380580_)))
                           (_K8057680590_
                            (lambda (_rest80587_ _val80588_)
                              (if (_key=?80547_ _hd80572_ _key80545_)
                                  _val80588_
                                  (_lp80549_ _rest80587_)))))
                      (if (##pair? _g8057380580_)
                          (let ((_hd8057780593_ (##car _g8057380580_))
                                (_tl8057880595_ (##cdr _g8057380580_)))
                            (let* ((_val80598_ _hd8057780593_)
                                   (_rest80600_ _tl8057880595_))
                              (_K8057680590_ _rest80600_ _val80598_)))
                          (_E8057580584_))))))
            (if (##pair? _g8055280560_)
                (let ((_hd8055780605_ (##car _g8055280560_))
                      (_tl8055880607_ (##cdr _g8055280560_)))
                  (let* ((_hd80610_ _hd8055780605_)
                         (_rest80612_ _tl8055880607_))
                    (_K8055680602_ _rest80612_ _hd80610_)))
                (_else8055480568_))))))
    (define gx#stx-getq__0
      (lambda (_key80617_ _stx80618_)
        (let ((_key=?80620_ gx#stx-eq?))
          (gx#stx-getq__% _key80617_ _stx80618_ _key=?80620_))))
    (define gx#stx-getq
      (lambda _g81818_
        (let ((_g81817_ (##length _g81818_)))
          (cond ((##fx= _g81817_ 2)
                 (apply (lambda (_key80617_ _stx80618_)
                          (gx#stx-getq__0 _key80617_ _stx80618_))
                        _g81818_))
                ((##fx= _g81817_ 3)
                 (apply (lambda (_key80622_ _stx80623_ _key=?80624_)
                          (gx#stx-getq__% _key80622_ _stx80623_ _key=?80624_))
                        _g81818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81818_))))))))
