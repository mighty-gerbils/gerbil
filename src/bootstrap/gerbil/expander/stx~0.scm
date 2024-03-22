(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1711108655)
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
      (lambda _$args82833_
        (apply make-instance gx#identifier-wrap::t _$args82833_)))
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
      (lambda _$args82830_
        (apply make-instance gx#syntax-wrap::t _$args82830_)))
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
      (lambda _$args82827_
        (apply make-instance gx#syntax-quote::t _$args82827_)))
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
      (lambda (_stx82825_) (symbol? (gx#stx-e _stx82825_))))
    (define gx#identifier-quote?
      (lambda (_stx82823_)
        (if (##structure-direct-instance-of? _stx82823_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82823_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82821_)
        (if (##structure-direct-instance-of? _stx82821_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82821_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82821_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82819_)
        (if (##structure-direct-instance-of? _stx82819_ 'gx#syntax-quote::t)
            _stx82819_
            (if (##structure-direct-instance-of? _stx82819_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82819_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82802_)
        (if (##structure-direct-instance-of? _stx82802_ 'gx#syntax-wrap::t)
            (let _lp82804_ ((_e82806_
                             (##unchecked-structure-ref
                              _stx82802_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82807_
                             (cons (##unchecked-structure-ref
                                    _stx82802_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82806_)
                  (let ((_$e82809_ (##type-id (##structure-type _e82806_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82809_)
                        (_lp82804_
                         (##unchecked-structure-ref _e82806_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82806_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82807_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82809_)
                                (eq? 'gx#identifier-wrap::t _$e82809_))
                            (##unchecked-structure-ref
                             _e82806_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82809_)
                                (_lp82804_
                                 (##unchecked-structure-ref
                                  _e82806_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82807_)
                                _e82806_))))
                  (if (null? _marks82807_)
                      _e82806_
                      (if (pair? _e82806_)
                          (cons (gx#stx-wrap (car _e82806_) _marks82807_)
                                (gx#stx-wrap (cdr _e82806_) _marks82807_))
                          (if (vector? _e82806_)
                              (vector-map
                               (lambda (_g8281482816_)
                                 (gx#stx-wrap _g8281482816_ _marks82807_))
                               _e82806_)
                              (if (box? _e82806_)
                                  (box (gx#stx-wrap
                                        (unbox _e82806_)
                                        _marks82807_))
                                  _e82806_))))))
            (if (##structure-instance-of? _stx82802_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82802_ '1 gx#AST::t '#f)
                _stx82802_))))
    (define gx#syntax->datum
      (lambda (_stx82800_)
        (if (##structure-instance-of? _stx82800_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82800_ '1 gx#AST::t '#f))
            (if (pair? _stx82800_)
                (cons (gx#syntax->datum (car _stx82800_))
                      (gx#syntax->datum (cdr _stx82800_)))
                (if (vector? _stx82800_)
                    (vector-map gx#syntax->datum _stx82800_)
                    (if (box? _stx82800_)
                        (box (gx#syntax->datum (unbox _stx82800_)))
                        _stx82800_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82743_ _datum82744_ _src82745_ _quote?82746_)
        (letrec ((_wrap-datum82748_
                  (lambda (_e82772_ _marks82773_)
                    (_wrap-inner82750_
                     _e82772_
                     (lambda (_g8277482776_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8277482776_
                        _src82745_
                        _marks82773_)))))
                 (_wrap-quote82749_
                  (lambda (_e82764_ _ctx82765_ _marks82766_)
                    (_wrap-inner82750_
                     _e82764_
                     (lambda (_g8276782769_)
                       (##structure
                        gx#syntax-quote::t
                        _g8276782769_
                        _src82745_
                        _ctx82765_
                        _marks82766_)))))
                 (_wrap-inner82750_
                  (lambda (_e82757_ _wrap-e82758_)
                    (let _recur82760_ ((_e82762_ _e82757_))
                      (if (symbol? _e82762_)
                          (_wrap-e82758_ _e82762_)
                          (if (pair? _e82762_)
                              (cons (_recur82760_ (car _e82762_))
                                    (_recur82760_ (cdr _e82762_)))
                              (if (vector? _e82762_)
                                  (vector-map _recur82760_ _e82762_)
                                  (if (box? _e82762_)
                                      (box (_recur82760_ (unbox _e82762_)))
                                      _e82762_)))))))
                 (_wrap-outer82751_
                  (lambda (_e82755_)
                    (if (##structure-instance-of? _e82755_ 'gerbil#AST::t)
                        _e82755_
                        (##structure gx#AST::t _e82755_ _src82745_)))))
          (if (##structure-instance-of? _datum82744_ 'gerbil#AST::t)
              _datum82744_
              (if (not _stx82743_)
                  (##structure gx#AST::t _datum82744_ _src82745_)
                  (if (gx#identifier? _stx82743_)
                      (let ((_stx82753_ (gx#stx-unwrap__0 _stx82743_)))
                        (_wrap-outer82751_
                         (if (##structure-direct-instance-of?
                              _stx82753_
                              'gx#syntax-quote::t)
                             (if _quote?82746_
                                 (_wrap-quote82749_
                                  _datum82744_
                                  (##unchecked-structure-ref
                                   _stx82753_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82753_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82748_
                                  _datum82744_
                                  (##unchecked-structure-ref
                                   _stx82753_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82748_
                              _datum82744_
                              (##unchecked-structure-ref
                               _stx82753_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82743_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82782_ _datum82783_)
        (let* ((_src82785_ '#f) (_quote?82787_ '#t))
          (gx#datum->syntax__%
           _stx82782_
           _datum82783_
           _src82785_
           _quote?82787_))))
    (define gx#datum->syntax__1
      (lambda (_stx82789_ _datum82790_ _src82791_)
        (let ((_quote?82793_ '#t))
          (gx#datum->syntax__%
           _stx82789_
           _datum82790_
           _src82791_
           _quote?82793_))))
    (define gx#datum->syntax
      (lambda _g82914_
        (let ((_g82913_ (##length _g82914_)))
          (cond ((##fx= _g82913_ 2)
                 (apply (lambda (_stx82782_ _datum82783_)
                          (gx#datum->syntax__0 _stx82782_ _datum82783_))
                        _g82914_))
                ((##fx= _g82913_ 3)
                 (apply (lambda (_stx82789_ _datum82790_ _src82791_)
                          (gx#datum->syntax__1
                           _stx82789_
                           _datum82790_
                           _src82791_))
                        _g82914_))
                ((##fx= _g82913_ 4)
                 (apply (lambda (_stx82795_
                                 _datum82796_
                                 _src82797_
                                 _quote?82798_)
                          (gx#datum->syntax__%
                           _stx82795_
                           _datum82796_
                           _src82797_
                           _quote?82798_))
                        _g82914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82914_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82719_ _marks82720_)
        (let _lp82722_ ((_e82724_ _stx82719_)
                        (_marks82725_ _marks82720_)
                        (_src82726_ (gx#stx-source _stx82719_)))
          (if (##structure-direct-instance-of? _e82724_ 'gx#syntax-wrap::t)
              (_lp82722_
               (##unchecked-structure-ref _e82724_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82724_ '3 gx#syntax-wrap::t '#f)
                _marks82725_)
               (##unchecked-structure-ref _e82724_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82724_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82725_)
                      _e82724_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82724_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82724_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82724_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82725_)))
                  (if (##structure-direct-instance-of?
                       _e82724_
                       'gx#syntax-quote::t)
                      _e82724_
                      (if (##structure-instance-of? _e82724_ 'gerbil#AST::t)
                          (_lp82722_
                           (##unchecked-structure-ref
                            _e82724_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82725_
                           (##unchecked-structure-ref
                            _e82724_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82724_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82724_
                               _src82726_
                               (reverse _marks82725_))
                              (if (null? _marks82725_)
                                  _e82724_
                                  (if (pair? _e82724_)
                                      (cons (gx#stx-wrap
                                             (car _e82724_)
                                             _marks82725_)
                                            (gx#stx-wrap
                                             (cdr _e82724_)
                                             _marks82725_))
                                      (if (vector? _e82724_)
                                          (vector-map
                                           (lambda (_g8272782729_)
                                             (gx#stx-wrap
                                              _g8272782729_
                                              _marks82725_))
                                           _e82724_)
                                          (if (box? _e82724_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82724_)
                                                    _marks82725_))
                                              _e82724_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82735_)
        (let ((_marks82737_ '())) (gx#stx-unwrap__% _stx82735_ _marks82737_))))
    (define gx#stx-unwrap
      (lambda _g82916_
        (let ((_g82915_ (##length _g82916_)))
          (cond ((##fx= _g82915_ 1)
                 (apply (lambda (_stx82735_) (gx#stx-unwrap__0 _stx82735_))
                        _g82916_))
                ((##fx= _g82915_ 2)
                 (apply (lambda (_stx82739_ _marks82740_)
                          (gx#stx-unwrap__% _stx82739_ _marks82740_))
                        _g82916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82916_))))))
    (define gx#stx-wrap
      (lambda (_stx82712_ _marks82713_)
        (foldl1 (lambda (_mark82715_ _stx82716_)
                  (gx#stx-apply-mark _stx82716_ _mark82715_))
                _stx82712_
                _marks82713_)))
    (define gx#stx-rewrap
      (lambda (_stx82706_ _marks82707_)
        (foldr1 (lambda (_mark82709_ _stx82710_)
                  (gx#stx-apply-mark _stx82710_ _mark82709_))
                _stx82706_
                _marks82707_)))
    (define gx#stx-apply-mark
      (lambda (_stx82703_ _mark82704_)
        (if (##structure-direct-instance-of? _stx82703_ 'gx#syntax-quote::t)
            _stx82703_
            (if (and (##structure-direct-instance-of?
                      _stx82703_
                      'gx#syntax-wrap::t)
                     (eq? _mark82704_
                          (##unchecked-structure-ref
                           _stx82703_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82703_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82703_
                 (gx#stx-source _stx82703_)
                 _mark82704_)))))
    (define gx#apply-mark
      (lambda (_mark82667_ _marks82668_)
        (let* ((_marks8266982677_ _marks82668_)
               (_else8267182685_ (lambda () (cons _mark82667_ _marks82668_)))
               (_K8267382691_
                (lambda (_rest82688_ _hd82689_)
                  (if (eq? _mark82667_ _hd82689_)
                      _rest82688_
                      (cons _mark82667_ _marks82668_)))))
          (if (##pair? _marks8266982677_)
              (let ((_hd8267482694_ (##car _marks8266982677_))
                    (_tl8267582696_ (##cdr _marks8266982677_)))
                (let* ((_hd82699_ _hd8267482694_) (_rest82701_ _tl8267582696_))
                  (_K8267382691_ _rest82701_ _hd82699_)))
              (_else8267182685_)))))
    (define gx#stx-e
      (lambda (_stx82665_)
        (if (##structure-direct-instance-of? _stx82665_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82665_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82665_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82665_ '1 gx#AST::t '#f)
                _stx82665_))))
    (define gx#stx-source
      (lambda (_stx82663_)
        (if (##structure-instance-of? _stx82663_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82663_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82657_ _src82658_)
        (if (or (##structure-instance-of? _stx82657_ 'gerbil#AST::t)
                (not _src82658_))
            _stx82657_
            (##structure gx#AST::t _stx82657_ _src82658_))))
    (define gx#stx-datum?
      (lambda (_stx82655_) (gx#self-quoting? (gx#stx-e _stx82655_))))
    (define gx#self-quoting?
      (lambda (_x82638_)
        (let ((_$e82640_ (immediate? _x82638_)))
          (if _$e82640_
              _$e82640_
              (let ((_$e82643_ (number? _x82638_)))
                (if _$e82643_
                    _$e82643_
                    (let ((_$e82646_ (keyword? _x82638_)))
                      (if _$e82646_
                          _$e82646_
                          (let ((_$e82649_ (string? _x82638_)))
                            (if _$e82649_
                                _$e82649_
                                (let ((_$e82652_ (vector? _x82638_)))
                                  (if _$e82652_
                                      _$e82652_
                                      (u8vector? _x82638_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82636_) (boolean? (gx#stx-e _e82636_))))
    (define gx#stx-keyword? (lambda (_e82634_) (keyword? (gx#stx-e _e82634_))))
    (define gx#stx-char? (lambda (_e82632_) (char? (gx#stx-e _e82632_))))
    (define gx#stx-number? (lambda (_e82630_) (number? (gx#stx-e _e82630_))))
    (define gx#stx-fixnum? (lambda (_e82628_) (fixnum? (gx#stx-e _e82628_))))
    (define gx#stx-string? (lambda (_e82626_) (string? (gx#stx-e _e82626_))))
    (define gx#stx-null? (lambda (_e82624_) (null? (gx#stx-e _e82624_))))
    (define gx#stx-pair? (lambda (_e82622_) (pair? (gx#stx-e _e82622_))))
    (define gx#stx-list?
      (lambda (_e82584_)
        (let* ((_g8258582594_ (gx#stx-e _e82584_))
               (_E8258882598_
                (lambda () (error '"No clause matching" _g8258582594_))))
          (let ((_K8259082614_
                 (lambda (_rest82612_) (gx#stx-list? _rest82612_)))
                (_K8258982604_ (lambda (_tail82602_) (null? _tail82602_))))
            (if (##pair? _g8258582594_)
                (let* ((_tl8259282617_ (##cdr _g8258582594_))
                       (_rest82620_ _tl8259282617_))
                  (gx#stx-list? _rest82620_))
                (let ((_tail82607_ _g8258582594_)) (null? _tail82607_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82577_)
        (let* ((_e82579_ (gx#stx-e _e82577_)) (_$e82581_ (pair? _e82579_)))
          (if _$e82581_ _$e82581_ (null? _e82579_)))))
    (define gx#stx-vector? (lambda (_e82575_) (vector? (gx#stx-e _e82575_))))
    (define gx#stx-box? (lambda (_e82573_) (box? (gx#stx-e _e82573_))))
    (define gx#stx-eq?
      (lambda (_x82570_ _y82571_)
        (eq? (gx#stx-e _x82570_) (gx#stx-e _y82571_))))
    (define gx#stx-eqv?
      (lambda (_x82567_ _y82568_)
        (eqv? (gx#stx-e _x82567_) (gx#stx-e _y82568_))))
    (define gx#stx-equal?
      (lambda (_x82564_ _y82565_)
        (equal? (gx#stx-e _x82564_) (gx#stx-e _y82565_))))
    (define gx#stx-false? (lambda (_x82562_) (not (gx#stx-e _x82562_))))
    (define gx#stx-identifier
      (lambda (_template82559_ . _args82560_)
        (gx#datum->syntax__1
         _template82559_
         (apply make-symbol (gx#syntax->datum _args82560_))
         (gx#stx-source _template82559_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82557_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82557_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82555_)
        (if (##structure-direct-instance-of? _stx82555_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82555_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82555_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82555_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82555_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82551_)
        (let ((_stx82553_ (gx#stx-unwrap__0 _stx82551_)))
          (if (gx#identifier-quote? _stx82553_)
              (##unchecked-structure-ref _stx82553_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82506_)
        (let* ((_g8250782517_ (gx#stx-e _stx82506_))
               (_else8251082525_ (lambda () '#f)))
          (let ((_K8251382539_
                 (lambda (_rest82536_ _hd82537_)
                   (if (gx#identifier? _hd82537_)
                       (gx#identifier-list? _rest82536_)
                       '#f)))
                (_K8251282530_ (lambda () '#t)))
            (let ((_try-match8250982533_
                   (lambda ()
                     (if (##null? _g8250782517_)
                         (_K8251282530_)
                         (_else8251082525_)))))
              (if (##pair? _g8250782517_)
                  (let ((_tl8251582544_ (##cdr _g8250782517_))
                        (_hd8251482542_ (##car _g8250782517_)))
                    (let ((_hd82547_ _hd8251482542_)
                          (_rest82549_ _tl8251582544_))
                      (_K8251382539_ _rest82549_ _hd82547_)))
                  (_try-match8250982533_)))))))
    (define gx#genident__%
      (lambda (_e82483_ _src82484_)
        (gx#stx-wrap-source
         (gensym (let ((_e82486_ (gx#stx-e _e82483_)))
                   (if (interned-symbol? _e82486_) _e82486_ 'g)))
         (let ((_$e82488_ (gx#stx-source _e82483_)))
           (if _$e82488_ _$e82488_ _src82484_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82495_ 'g) (_src82497_ '#f))
          (gx#genident__% _e82495_ _src82497_))))
    (define gx#genident__1
      (lambda (_e82499_)
        (let ((_src82501_ '#f)) (gx#genident__% _e82499_ _src82501_))))
    (define gx#genident
      (lambda _g82918_
        (let ((_g82917_ (##length _g82918_)))
          (cond ((##fx= _g82917_ 0)
                 (apply (lambda () (gx#genident__0)) _g82918_))
                ((##fx= _g82917_ 1)
                 (apply (lambda (_e82499_) (gx#genident__1 _e82499_))
                        _g82918_))
                ((##fx= _g82917_ 2)
                 (apply (lambda (_e82503_ _src82504_)
                          (gx#genident__% _e82503_ _src82504_))
                        _g82918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82918_))))))
    (define gx#gentemps
      (lambda (_stx-lst82480_) (gx#stx-map1 gx#genident _stx-lst82480_)))
    (define gx#syntax->list
      (lambda (_stx82478_) (gx#stx-map1 values _stx82478_)))
    (define gx#stx-car
      (lambda (_stx82475_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82475_)))))
    (define gx#stx-cdr
      (lambda (_stx82472_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82472_)))))
    (define gx#stx-length
      (lambda (_stx82437_)
        (let _lp82439_ ((_rest82441_ _stx82437_) (_n82442_ '0))
          (let* ((_g8244382451_ (gx#stx-e _rest82441_))
                 (_else8244582459_ (lambda () _n82442_))
                 (_K8244782464_
                  (lambda (_rest82462_)
                    (_lp82439_ _rest82462_ (fx+ _n82442_ '1)))))
            (if (##pair? _g8244382451_)
                (let* ((_tl8244982467_ (##cdr _g8244382451_))
                       (_rest82470_ _tl8244982467_))
                  (_K8244782464_ _rest82470_))
                (_else8244582459_))))))
    (define gx#stx-for-each
      (lambda _g82920_
        (let ((_g82919_ (##length _g82920_)))
          (cond ((##fx= _g82919_ 2)
                 (apply (lambda (_f82430_ _stx82431_)
                          (gx#stx-for-each1 _f82430_ _stx82431_))
                        _g82920_))
                ((##fx= _g82919_ 3)
                 (apply (lambda (_f82433_ _xstx82434_ _ystx82435_)
                          (gx#stx-for-each2 _f82433_ _xstx82434_ _ystx82435_))
                        _g82920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82920_))))))
    (define gx#stx-for-each1
      (lambda (_f82380_ _stx82381_)
        (if (procedure? _f82380_)
            '#!void
            (error '"expected procedure" _f82380_))
        (let _lp82383_ ((_rest82385_ _stx82381_))
          (let* ((_g8238682396_ (gx#syntax-e _rest82385_))
                 (_else8238982404_ (lambda () (_f82380_ _rest82385_))))
            (let ((_K8239282418_
                   (lambda (_rest82415_ _hd82416_)
                     (_f82380_ _hd82416_)
                     (_lp82383_ _rest82415_)))
                  (_K8239182409_ (lambda () '#!void)))
              (let ((_try-match8238882412_
                     (lambda ()
                       (if (##null? _g8238682396_)
                           (_K8239182409_)
                           (_else8238982404_)))))
                (if (##pair? _g8238682396_)
                    (let ((_tl8239482423_ (##cdr _g8238682396_))
                          (_hd8239382421_ (##car _g8238682396_)))
                      (let ((_hd82426_ _hd8239382421_)
                            (_rest82428_ _tl8239482423_))
                        (_K8239282418_ _rest82428_ _hd82426_)))
                    (_try-match8238882412_))))))))
    (define gx#stx-for-each2
      (lambda (_f82285_ _xstx82286_ _ystx82287_)
        (if (procedure? _f82285_)
            '#!void
            (error '"expected procedure" _f82285_))
        (let _lp82289_ ((_xrest82291_ _xstx82286_) (_yrest82292_ _ystx82287_))
          (let* ((_g8229382303_ (gx#syntax-e _xrest82291_))
                 (_else8229682311_ (lambda () '#!void)))
            (let ((_K8229982368_
                   (lambda (_xrest82337_ _xhd82338_)
                     (let* ((_g8233982346_ (gx#syntax-e _yrest82292_))
                            (_E8234182350_
                             (lambda ()
                               (error '"No clause matching" _g8233982346_)))
                            (_K8234282356_
                             (lambda (_yrest82353_ _yhd82354_)
                               (_f82285_ _xhd82338_ _yhd82354_)
                               (_lp82289_ _xrest82337_ _yrest82353_))))
                       (if (##pair? _g8233982346_)
                           (let ((_hd8234382359_ (##car _g8233982346_))
                                 (_tl8234482361_ (##cdr _g8233982346_)))
                             (let* ((_yhd82364_ _hd8234382359_)
                                    (_yrest82366_ _tl8234482361_))
                               (_K8234282356_ _yrest82366_ _yhd82364_)))
                           (_E8234182350_)))))
                  (_K8229882331_
                   (lambda ()
                     (let* ((_yrest8231582320_ _yrest82292_)
                            (_E8231782324_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8231582320_)))
                            (_K8231882328_
                             (lambda () (_f82285_ _xrest82291_ _yrest82292_))))
                       (if (not (gx#stx-null? _yrest8231582320_))
                           (_K8231882328_)
                           (_E8231782324_))))))
              (let ((_try-match8229582334_
                     (lambda ()
                       (if (not (null? _g8229382303_))
                           (_K8229882331_)
                           (_else8229682311_)))))
                (if (##pair? _g8229382303_)
                    (let ((_tl8230182373_ (##cdr _g8229382303_))
                          (_hd8230082371_ (##car _g8229382303_)))
                      (let ((_xhd82376_ _hd8230082371_)
                            (_xrest82378_ _tl8230182373_))
                        (_K8229982368_ _xrest82378_ _xhd82376_)))
                    (_try-match8229582334_))))))))
    (define gx#stx-map
      (lambda _g82922_
        (let ((_g82921_ (##length _g82922_)))
          (cond ((##fx= _g82921_ 2)
                 (apply (lambda (_f82278_ _stx82279_)
                          (gx#stx-map1 _f82278_ _stx82279_))
                        _g82922_))
                ((##fx= _g82921_ 3)
                 (apply (lambda (_f82281_ _xstx82282_ _ystx82283_)
                          (gx#stx-map2 _f82281_ _xstx82282_ _ystx82283_))
                        _g82922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82922_))))))
    (define gx#stx-map1
      (lambda (_f82228_ _stx82229_)
        (if (procedure? _f82228_)
            '#!void
            (error '"expected procedure" _f82228_))
        (let _recur82231_ ((_rest82233_ _stx82229_))
          (let* ((_g8223482244_ (gx#syntax-e _rest82233_))
                 (_else8223782252_ (lambda () (_f82228_ _rest82233_))))
            (let ((_K8224082266_
                   (lambda (_rest82263_ _hd82264_)
                     (cons (_f82228_ _hd82264_) (_recur82231_ _rest82263_))))
                  (_K8223982257_ (lambda () '())))
              (let ((_try-match8223682260_
                     (lambda ()
                       (if (##null? _g8223482244_)
                           (_K8223982257_)
                           (_else8223782252_)))))
                (if (##pair? _g8223482244_)
                    (let ((_tl8224282271_ (##cdr _g8223482244_))
                          (_hd8224182269_ (##car _g8223482244_)))
                      (let ((_hd82274_ _hd8224182269_)
                            (_rest82276_ _tl8224282271_))
                        (_K8224082266_ _rest82276_ _hd82274_)))
                    (_try-match8223682260_))))))))
    (define gx#stx-map2
      (lambda (_f82133_ _xstx82134_ _ystx82135_)
        (if (procedure? _f82133_)
            '#!void
            (error '"expected procedure" _f82133_))
        (let _recur82137_ ((_xrest82139_ _xstx82134_)
                           (_yrest82140_ _ystx82135_))
          (let* ((_g8214182151_ (gx#syntax-e _xrest82139_))
                 (_else8214482159_ (lambda () '())))
            (let ((_K8214782216_
                   (lambda (_xrest82185_ _xhd82186_)
                     (let* ((_g8218782194_ (gx#syntax-e _yrest82140_))
                            (_E8218982198_
                             (lambda ()
                               (error '"No clause matching" _g8218782194_)))
                            (_K8219082204_
                             (lambda (_yrest82201_ _yhd82202_)
                               (cons (_f82133_ _xhd82186_ _yhd82202_)
                                     (_recur82137_
                                      _xrest82185_
                                      _yrest82201_)))))
                       (if (##pair? _g8218782194_)
                           (let ((_hd8219182207_ (##car _g8218782194_))
                                 (_tl8219282209_ (##cdr _g8218782194_)))
                             (let* ((_yhd82212_ _hd8219182207_)
                                    (_yrest82214_ _tl8219282209_))
                               (_K8219082204_ _yrest82214_ _yhd82212_)))
                           (_E8218982198_)))))
                  (_K8214682179_
                   (lambda ()
                     (let* ((_yrest8216382168_ _yrest82140_)
                            (_E8216582172_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8216382168_)))
                            (_K8216682176_
                             (lambda () (_f82133_ _xrest82139_ _yrest82140_))))
                       (if (not (gx#stx-null? _yrest8216382168_))
                           (_K8216682176_)
                           (_E8216582172_))))))
              (let ((_try-match8214382182_
                     (lambda ()
                       (if (not (null? _g8214182151_))
                           (_K8214682179_)
                           (_else8214482159_)))))
                (if (##pair? _g8214182151_)
                    (let ((_tl8214982221_ (##cdr _g8214182151_))
                          (_hd8214882219_ (##car _g8214182151_)))
                      (let ((_xhd82224_ _hd8214882219_)
                            (_xrest82226_ _tl8214982221_))
                        (_K8214782216_ _xrest82226_ _xhd82224_)))
                    (_try-match8214382182_))))))))
    (define gx#stx-andmap
      (lambda (_f82083_ _stx82084_)
        (if (procedure? _f82083_)
            '#!void
            (error '"expected procedure" _f82083_))
        (let _lp82086_ ((_rest82088_ _stx82084_))
          (let* ((_g8208982099_ (gx#syntax-e _rest82088_))
                 (_else8209282107_ (lambda () (_f82083_ _rest82088_))))
            (let ((_K8209582121_
                   (lambda (_rest82118_ _hd82119_)
                     (if (_f82083_ _hd82119_) (_lp82086_ _rest82118_) '#f)))
                  (_K8209482112_ (lambda () '#t)))
              (let ((_try-match8209182115_
                     (lambda ()
                       (if (##null? _g8208982099_)
                           (_K8209482112_)
                           (_else8209282107_)))))
                (if (##pair? _g8208982099_)
                    (let ((_tl8209782126_ (##cdr _g8208982099_))
                          (_hd8209682124_ (##car _g8208982099_)))
                      (let ((_hd82129_ _hd8209682124_)
                            (_rest82131_ _tl8209782126_))
                        (_K8209582121_ _rest82131_ _hd82129_)))
                    (_try-match8209182115_))))))))
    (define gx#stx-ormap
      (lambda (_f82030_ _stx82031_)
        (if (procedure? _f82030_)
            '#!void
            (error '"expected procedure" _f82030_))
        (let _lp82033_ ((_rest82035_ _stx82031_))
          (let* ((_g8203682046_ (gx#syntax-e _rest82035_))
                 (_else8203982054_ (lambda () (_f82030_ _rest82035_))))
            (let ((_K8204282071_
                   (lambda (_rest82065_ _hd82066_)
                     (let ((_$e82068_ (_f82030_ _hd82066_)))
                       (if _$e82068_ _$e82068_ (_lp82033_ _rest82065_)))))
                  (_K8204182059_ (lambda () '#f)))
              (let ((_try-match8203882062_
                     (lambda ()
                       (if (##null? _g8203682046_)
                           (_K8204182059_)
                           (_else8203982054_)))))
                (if (##pair? _g8203682046_)
                    (let ((_tl8204482076_ (##cdr _g8203682046_))
                          (_hd8204382074_ (##car _g8203682046_)))
                      (let ((_hd82079_ _hd8204382074_)
                            (_rest82081_ _tl8204482076_))
                        (_K8204282071_ _rest82081_ _hd82079_)))
                    (_try-match8203882062_))))))))
    (define gx#stx-foldl
      (lambda (_f81978_ _iv81979_ _stx81980_)
        (if (procedure? _f81978_)
            '#!void
            (error '"expected procedure" _f81978_))
        (let _lp81982_ ((_r81984_ _iv81979_) (_rest81985_ _stx81980_))
          (let* ((_g8198681996_ (gx#syntax-e _rest81985_))
                 (_else8198982004_
                  (lambda () (_f81978_ _rest81985_ _r81984_))))
            (let ((_K8199282018_
                   (lambda (_rest82015_ _hd82016_)
                     (_lp81982_ (_f81978_ _hd82016_ _r81984_) _rest82015_)))
                  (_K8199182009_ (lambda () _r81984_)))
              (let ((_try-match8198882012_
                     (lambda ()
                       (if (##null? _g8198681996_)
                           (_K8199182009_)
                           (_else8198982004_)))))
                (if (##pair? _g8198681996_)
                    (let ((_tl8199482023_ (##cdr _g8198681996_))
                          (_hd8199382021_ (##car _g8198681996_)))
                      (let ((_hd82026_ _hd8199382021_)
                            (_rest82028_ _tl8199482023_))
                        (_K8199282018_ _rest82028_ _hd82026_)))
                    (_try-match8198882012_))))))))
    (define gx#stx-foldr
      (lambda (_f81927_ _iv81928_ _stx81929_)
        (if (procedure? _f81927_)
            '#!void
            (error '"expected procedure" _f81927_))
        (let _recur81931_ ((_rest81933_ _stx81929_))
          (let* ((_g8193481944_ (gx#syntax-e _rest81933_))
                 (_else8193781952_
                  (lambda () (_f81927_ _rest81933_ _iv81928_))))
            (let ((_K8194081966_
                   (lambda (_rest81963_ _hd81964_)
                     (_f81927_ _hd81964_ (_recur81931_ _rest81963_))))
                  (_K8193981957_ (lambda () _iv81928_)))
              (let ((_try-match8193681960_
                     (lambda ()
                       (if (##null? _g8193481944_)
                           (_K8193981957_)
                           (_else8193781952_)))))
                (if (##pair? _g8193481944_)
                    (let ((_tl8194281971_ (##cdr _g8193481944_))
                          (_hd8194181969_ (##car _g8193481944_)))
                      (let ((_hd81974_ _hd8194181969_)
                            (_rest81976_ _tl8194281971_))
                        (_K8194081966_ _rest81976_ _hd81974_)))
                    (_try-match8193681960_))))))))
    (define gx#stx-reverse
      (lambda (_stx81925_) (gx#stx-foldl cons '() _stx81925_)))
    (define gx#stx-last
      (lambda (_stx81886_)
        (let _lp81888_ ((_rest81890_ _stx81886_))
          (let* ((_g8189181899_ (gx#syntax-e _rest81890_))
                 (_else8189381907_ (lambda () _rest81890_))
                 (_K8189581913_
                  (lambda (_rest81910_ _hd81911_)
                    (if (gx#stx-null? _rest81910_)
                        _hd81911_
                        (_lp81888_ _rest81910_)))))
            (if (##pair? _g8189181899_)
                (let ((_hd8189681916_ (##car _g8189181899_))
                      (_tl8189781918_ (##cdr _g8189181899_)))
                  (let* ((_hd81921_ _hd8189681916_)
                         (_rest81923_ _tl8189781918_))
                    (_K8189581913_ _rest81923_ _hd81921_)))
                (_else8189381907_))))))
    (define gx#stx-last-pair
      (lambda (_stx81857_)
        (let _lp81859_ ((_hd81861_ _stx81857_))
          (let* ((_g8186281869_ (gx#syntax-e _hd81861_))
                 (_E8186481873_
                  (lambda () (error '"No clause matching" _g8186281869_)))
                 (_K8186581878_
                  (lambda (_rest81876_)
                    (if (gx#stx-pair? _rest81876_)
                        (_lp81859_ _rest81876_)
                        _hd81861_))))
            (if (##pair? _g8186281869_)
                (let* ((_tl8186781881_ (##cdr _g8186281869_))
                       (_rest81884_ _tl8186781881_))
                  (_K8186581878_ _rest81884_))
                (_E8186481873_))))))
    (define gx#stx-list-tail
      (lambda (_stx81826_ _k81827_)
        (let _lp81829_ ((_rest81831_ _stx81826_) (_k81832_ _k81827_))
          (if (fxpositive? _k81832_)
              (let* ((_g8183381840_ (gx#syntax-e _rest81831_))
                     (_E8183581844_
                      (lambda () (error '"No clause matching" _g8183381840_)))
                     (_K8183681849_
                      (lambda (_rest81847_)
                        (_lp81829_ _rest81847_ (fx- _k81832_ '1)))))
                (if (##pair? _g8183381840_)
                    (let* ((_tl8183881852_ (##cdr _g8183381840_))
                           (_rest81855_ _tl8183881852_))
                      (_K8183681849_ _rest81855_))
                    (_E8183581844_)))
              _rest81831_))))
    (define gx#stx-list-ref
      (lambda (_stx81823_ _k81824_)
        (gx#stx-car (gx#stx-list-tail _stx81823_ _k81824_))))
    (define gx#stx-plist?__%
      (lambda (_stx81735_ _key?81736_)
        (if (procedure? _key?81736_)
            '#!void
            (error '"expected procedure" _key?81736_))
        (let _lp81738_ ((_rest81740_ _stx81735_))
          (let* ((_g8174181751_ (gx#stx-e _rest81740_))
                 (_else8174481759_ (lambda () '#f)))
            (let ((_K8174781801_
                   (lambda (_rest81770_ _hd81771_)
                     (if (_key?81736_ _hd81771_)
                         (let* ((_g8177281780_ (gx#stx-e _rest81770_))
                                (_else8177481788_ (lambda () '#f))
                                (_K8177681793_
                                 (lambda (_rest81791_)
                                   (_lp81738_ _rest81791_))))
                           (if (##pair? _g8177281780_)
                               (let* ((_tl8177881796_ (##cdr _g8177281780_))
                                      (_rest81799_ _tl8177881796_))
                                 (_lp81738_ _rest81799_))
                               (_else8177481788_)))
                         '#f)))
                  (_K8174681764_ (lambda () '#t)))
              (let ((_try-match8174381767_
                     (lambda ()
                       (if (##null? _g8174181751_)
                           (_K8174681764_)
                           (_else8174481759_)))))
                (if (##pair? _g8174181751_)
                    (let ((_tl8174981806_ (##cdr _g8174181751_))
                          (_hd8174881804_ (##car _g8174181751_)))
                      (let ((_hd81809_ _hd8174881804_)
                            (_rest81811_ _tl8174981806_))
                        (_K8174781801_ _rest81811_ _hd81809_)))
                    (_try-match8174381767_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81816_)
        (let ((_key?81818_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81816_ _key?81818_))))
    (define gx#stx-plist?
      (lambda _g82924_
        (let ((_g82923_ (##length _g82924_)))
          (cond ((##fx= _g82923_ 1)
                 (apply (lambda (_stx81816_) (gx#stx-plist?__0 _stx81816_))
                        _g82924_))
                ((##fx= _g82923_ 2)
                 (apply (lambda (_stx81820_ _key?81821_)
                          (gx#stx-plist?__% _stx81820_ _key?81821_))
                        _g82924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82924_))))))
    (define gx#stx-getq__%
      (lambda (_key81653_ _stx81654_ _key=?81655_)
        (if (procedure? _key=?81655_)
            '#!void
            (error '"expected procedure" _key=?81655_))
        (let _lp81657_ ((_rest81659_ _stx81654_))
          (let* ((_g8166081668_ (gx#syntax-e _rest81659_))
                 (_else8166281676_ (lambda () '#f))
                 (_K8166481710_
                  (lambda (_rest81679_ _hd81680_)
                    (let* ((_g8168181688_ (gx#syntax-e _rest81679_))
                           (_E8168381692_
                            (lambda ()
                              (error '"No clause matching" _g8168181688_)))
                           (_K8168481698_
                            (lambda (_rest81695_ _val81696_)
                              (if (_key=?81655_ _hd81680_ _key81653_)
                                  _val81696_
                                  (_lp81657_ _rest81695_)))))
                      (if (##pair? _g8168181688_)
                          (let ((_hd8168581701_ (##car _g8168181688_))
                                (_tl8168681703_ (##cdr _g8168181688_)))
                            (let* ((_val81706_ _hd8168581701_)
                                   (_rest81708_ _tl8168681703_))
                              (_K8168481698_ _rest81708_ _val81706_)))
                          (_E8168381692_))))))
            (if (##pair? _g8166081668_)
                (let ((_hd8166581713_ (##car _g8166081668_))
                      (_tl8166681715_ (##cdr _g8166081668_)))
                  (let* ((_hd81718_ _hd8166581713_)
                         (_rest81720_ _tl8166681715_))
                    (_K8166481710_ _rest81720_ _hd81718_)))
                (_else8166281676_))))))
    (define gx#stx-getq__0
      (lambda (_key81725_ _stx81726_)
        (let ((_key=?81728_ gx#stx-eq?))
          (gx#stx-getq__% _key81725_ _stx81726_ _key=?81728_))))
    (define gx#stx-getq
      (lambda _g82926_
        (let ((_g82925_ (##length _g82926_)))
          (cond ((##fx= _g82925_ 2)
                 (apply (lambda (_key81725_ _stx81726_)
                          (gx#stx-getq__0 _key81725_ _stx81726_))
                        _g82926_))
                ((##fx= _g82925_ 3)
                 (apply (lambda (_key81730_ _stx81731_ _key=?81732_)
                          (gx#stx-getq__% _key81730_ _stx81731_ _key=?81732_))
                        _g82926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82926_))))))))
