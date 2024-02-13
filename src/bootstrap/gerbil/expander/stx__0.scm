(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707831897)
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
      (lambda _$args137694_
        (apply make-instance gx#identifier-wrap::t _$args137694_)))
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
      (lambda _$args137691_
        (apply make-instance gx#syntax-wrap::t _$args137691_)))
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
      (lambda _$args137688_
        (apply make-instance gx#syntax-quote::t _$args137688_)))
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
      (lambda (_stx137686_) (symbol? (gx#stx-e _stx137686_))))
    (define gx#identifier-quote?
      (lambda (_stx137684_)
        (if (##structure-direct-instance-of? _stx137684_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx137684_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx137682_)
        (if (##structure-direct-instance-of? _stx137682_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx137682_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx137682_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx137680_)
        (if (##structure-direct-instance-of? _stx137680_ 'gx#syntax-quote::t)
            _stx137680_
            (if (##structure-direct-instance-of?
                 _stx137680_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx137680_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx137663_)
        (if (##structure-direct-instance-of? _stx137663_ 'gx#syntax-wrap::t)
            (let _lp137665_ ((_e137667_
                              (##unchecked-structure-ref
                               _stx137663_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks137668_
                              (cons (##unchecked-structure-ref
                                     _stx137663_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e137667_)
                  (let ((_$e137670_ (##type-id (##structure-type _e137667_))))
                    (if (eq? 'gx#syntax-wrap::t _$e137670_)
                        (_lp137665_
                         (##unchecked-structure-ref _e137667_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e137667_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks137668_))
                        (if (or (eq? 'gx#syntax-quote::t _$e137670_)
                                (eq? 'gx#identifier-wrap::t _$e137670_))
                            (##unchecked-structure-ref
                             _e137667_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e137670_)
                                (_lp137665_
                                 (##unchecked-structure-ref
                                  _e137667_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks137668_)
                                _e137667_))))
                  (if (null? _marks137668_)
                      _e137667_
                      (if (pair? _e137667_)
                          (cons (gx#stx-wrap (car _e137667_) _marks137668_)
                                (gx#stx-wrap (cdr _e137667_) _marks137668_))
                          (if (vector? _e137667_)
                              (vector-map
                               (lambda (_g137675137677_)
                                 (gx#stx-wrap _g137675137677_ _marks137668_))
                               _e137667_)
                              (if (box? _e137667_)
                                  (box (gx#stx-wrap
                                        (unbox _e137667_)
                                        _marks137668_))
                                  _e137667_))))))
            (if (##structure-instance-of? _stx137663_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx137663_ '1 gx#AST::t '#f)
                _stx137663_))))
    (define gx#syntax->datum
      (lambda (_stx137661_)
        (if (##structure-instance-of? _stx137661_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx137661_ '1 gx#AST::t '#f))
            (if (pair? _stx137661_)
                (cons (gx#syntax->datum (car _stx137661_))
                      (gx#syntax->datum (cdr _stx137661_)))
                (if (vector? _stx137661_)
                    (vector-map gx#syntax->datum _stx137661_)
                    (if (box? _stx137661_)
                        (box (gx#syntax->datum (unbox _stx137661_)))
                        _stx137661_))))))
    (define gx#datum->syntax__%
      (lambda (_stx137604_ _datum137605_ _src137606_ _quote?137607_)
        (letrec ((_wrap-datum137609_
                  (lambda (_e137633_ _marks137634_)
                    (_wrap-inner137611_
                     _e137633_
                     (lambda (_g137635137637_)
                       (##structure
                        gx#identifier-wrap::t
                        _g137635137637_
                        _src137606_
                        _marks137634_)))))
                 (_wrap-quote137610_
                  (lambda (_e137625_ _ctx137626_ _marks137627_)
                    (_wrap-inner137611_
                     _e137625_
                     (lambda (_g137628137630_)
                       (##structure
                        gx#syntax-quote::t
                        _g137628137630_
                        _src137606_
                        _ctx137626_
                        _marks137627_)))))
                 (_wrap-inner137611_
                  (lambda (_e137618_ _wrap-e137619_)
                    (let _recur137621_ ((_e137623_ _e137618_))
                      (if (symbol? _e137623_)
                          (_wrap-e137619_ _e137623_)
                          (if (pair? _e137623_)
                              (cons (_recur137621_ (car _e137623_))
                                    (_recur137621_ (cdr _e137623_)))
                              (if (vector? _e137623_)
                                  (vector-map _recur137621_ _e137623_)
                                  (if (box? _e137623_)
                                      (box (_recur137621_ (unbox _e137623_)))
                                      _e137623_)))))))
                 (_wrap-outer137612_
                  (lambda (_e137616_)
                    (if (##structure-instance-of? _e137616_ 'gerbil#AST::t)
                        _e137616_
                        (##structure gx#AST::t _e137616_ _src137606_)))))
          (if (##structure-instance-of? _datum137605_ 'gerbil#AST::t)
              _datum137605_
              (if (not _stx137604_)
                  (##structure gx#AST::t _datum137605_ _src137606_)
                  (if (gx#identifier? _stx137604_)
                      (let ((_stx137614_ (gx#stx-unwrap__0 _stx137604_)))
                        (_wrap-outer137612_
                         (if (##structure-direct-instance-of?
                              _stx137614_
                              'gx#syntax-quote::t)
                             (if _quote?137607_
                                 (_wrap-quote137610_
                                  _datum137605_
                                  (##unchecked-structure-ref
                                   _stx137614_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx137614_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum137609_
                                  _datum137605_
                                  (##unchecked-structure-ref
                                   _stx137614_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum137609_
                              _datum137605_
                              (##unchecked-structure-ref
                               _stx137614_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx137604_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx137643_ _datum137644_)
        (let* ((_src137646_ '#f) (_quote?137648_ '#t))
          (gx#datum->syntax__%
           _stx137643_
           _datum137644_
           _src137646_
           _quote?137648_))))
    (define gx#datum->syntax__1
      (lambda (_stx137650_ _datum137651_ _src137652_)
        (let ((_quote?137654_ '#t))
          (gx#datum->syntax__%
           _stx137650_
           _datum137651_
           _src137652_
           _quote?137654_))))
    (define gx#datum->syntax
      (lambda _g142343_
        (let ((_g142342_ (##length _g142343_)))
          (cond ((##fx= _g142342_ 2)
                 (apply (lambda (_stx137643_ _datum137644_)
                          (gx#datum->syntax__0 _stx137643_ _datum137644_))
                        _g142343_))
                ((##fx= _g142342_ 3)
                 (apply (lambda (_stx137650_ _datum137651_ _src137652_)
                          (gx#datum->syntax__1
                           _stx137650_
                           _datum137651_
                           _src137652_))
                        _g142343_))
                ((##fx= _g142342_ 4)
                 (apply (lambda (_stx137656_
                                 _datum137657_
                                 _src137658_
                                 _quote?137659_)
                          (gx#datum->syntax__%
                           _stx137656_
                           _datum137657_
                           _src137658_
                           _quote?137659_))
                        _g142343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g142343_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx137580_ _marks137581_)
        (let _lp137583_ ((_e137585_ _stx137580_)
                         (_marks137586_ _marks137581_)
                         (_src137587_ (gx#stx-source _stx137580_)))
          (if (##structure-direct-instance-of? _e137585_ 'gx#syntax-wrap::t)
              (_lp137583_
               (##unchecked-structure-ref _e137585_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e137585_ '3 gx#syntax-wrap::t '#f)
                _marks137586_)
               (##unchecked-structure-ref _e137585_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e137585_
                   'gx#identifier-wrap::t)
                  (if (null? _marks137586_)
                      _e137585_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e137585_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e137585_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e137585_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks137586_)))
                  (if (##structure-direct-instance-of?
                       _e137585_
                       'gx#syntax-quote::t)
                      _e137585_
                      (if (##structure-instance-of? _e137585_ 'gerbil#AST::t)
                          (_lp137583_
                           (##unchecked-structure-ref
                            _e137585_
                            '1
                            gx#AST::t
                            '#f)
                           _marks137586_
                           (##unchecked-structure-ref
                            _e137585_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e137585_)
                              (##structure
                               gx#identifier-wrap::t
                               _e137585_
                               _src137587_
                               (reverse _marks137586_))
                              (if (null? _marks137586_)
                                  _e137585_
                                  (if (pair? _e137585_)
                                      (cons (gx#stx-wrap
                                             (car _e137585_)
                                             _marks137586_)
                                            (gx#stx-wrap
                                             (cdr _e137585_)
                                             _marks137586_))
                                      (if (vector? _e137585_)
                                          (vector-map
                                           (lambda (_g137588137590_)
                                             (gx#stx-wrap
                                              _g137588137590_
                                              _marks137586_))
                                           _e137585_)
                                          (if (box? _e137585_)
                                              (box (gx#stx-wrap
                                                    (unbox _e137585_)
                                                    _marks137586_))
                                              _e137585_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx137596_)
        (let ((_marks137598_ '()))
          (gx#stx-unwrap__% _stx137596_ _marks137598_))))
    (define gx#stx-unwrap
      (lambda _g142345_
        (let ((_g142344_ (##length _g142345_)))
          (cond ((##fx= _g142344_ 1)
                 (apply (lambda (_stx137596_) (gx#stx-unwrap__0 _stx137596_))
                        _g142345_))
                ((##fx= _g142344_ 2)
                 (apply (lambda (_stx137600_ _marks137601_)
                          (gx#stx-unwrap__% _stx137600_ _marks137601_))
                        _g142345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g142345_))))))
    (define gx#stx-wrap
      (lambda (_stx137573_ _marks137574_)
        (foldl1 (lambda (_mark137576_ _stx137577_)
                  (gx#stx-apply-mark _stx137577_ _mark137576_))
                _stx137573_
                _marks137574_)))
    (define gx#stx-rewrap
      (lambda (_stx137567_ _marks137568_)
        (foldr1 (lambda (_mark137570_ _stx137571_)
                  (gx#stx-apply-mark _stx137571_ _mark137570_))
                _stx137567_
                _marks137568_)))
    (define gx#stx-apply-mark
      (lambda (_stx137564_ _mark137565_)
        (if (##structure-direct-instance-of? _stx137564_ 'gx#syntax-quote::t)
            _stx137564_
            (if (and (##structure-direct-instance-of?
                      _stx137564_
                      'gx#syntax-wrap::t)
                     (eq? _mark137565_
                          (##unchecked-structure-ref
                           _stx137564_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx137564_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx137564_
                 (gx#stx-source _stx137564_)
                 _mark137565_)))))
    (define gx#apply-mark
      (lambda (_mark137528_ _marks137529_)
        (let* ((_marks137530137538_ _marks137529_)
               (_else137532137546_
                (lambda () (cons _mark137528_ _marks137529_)))
               (_K137534137552_
                (lambda (_rest137549_ _hd137550_)
                  (if (eq? _mark137528_ _hd137550_)
                      _rest137549_
                      (cons _mark137528_ _marks137529_)))))
          (if (##pair? _marks137530137538_)
              (let ((_hd137535137555_ (##car _marks137530137538_))
                    (_tl137536137557_ (##cdr _marks137530137538_)))
                (let* ((_hd137560_ _hd137535137555_)
                       (_rest137562_ _tl137536137557_))
                  (_K137534137552_ _rest137562_ _hd137560_)))
              (_else137532137546_)))))
    (define gx#stx-e
      (lambda (_stx137526_)
        (if (##structure-direct-instance-of? _stx137526_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx137526_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx137526_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx137526_ '1 gx#AST::t '#f)
                _stx137526_))))
    (define gx#stx-source
      (lambda (_stx137524_)
        (if (##structure-instance-of? _stx137524_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx137524_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx137518_ _src137519_)
        (if (or (##structure-instance-of? _stx137518_ 'gerbil#AST::t)
                (not _src137519_))
            _stx137518_
            (##structure gx#AST::t _stx137518_ _src137519_))))
    (define gx#stx-datum?
      (lambda (_stx137516_) (gx#self-quoting? (gx#stx-e _stx137516_))))
    (define gx#self-quoting?
      (lambda (_x137499_)
        (let ((_$e137501_ (immediate? _x137499_)))
          (if _$e137501_
              _$e137501_
              (let ((_$e137504_ (number? _x137499_)))
                (if _$e137504_
                    _$e137504_
                    (let ((_$e137507_ (keyword? _x137499_)))
                      (if _$e137507_
                          _$e137507_
                          (let ((_$e137510_ (string? _x137499_)))
                            (if _$e137510_
                                _$e137510_
                                (let ((_$e137513_ (vector? _x137499_)))
                                  (if _$e137513_
                                      _$e137513_
                                      (u8vector? _x137499_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e137497_) (boolean? (gx#stx-e _e137497_))))
    (define gx#stx-keyword?
      (lambda (_e137495_) (keyword? (gx#stx-e _e137495_))))
    (define gx#stx-char? (lambda (_e137493_) (char? (gx#stx-e _e137493_))))
    (define gx#stx-number? (lambda (_e137491_) (number? (gx#stx-e _e137491_))))
    (define gx#stx-fixnum? (lambda (_e137489_) (fixnum? (gx#stx-e _e137489_))))
    (define gx#stx-string? (lambda (_e137487_) (string? (gx#stx-e _e137487_))))
    (define gx#stx-null? (lambda (_e137485_) (null? (gx#stx-e _e137485_))))
    (define gx#stx-pair? (lambda (_e137483_) (pair? (gx#stx-e _e137483_))))
    (define gx#stx-list?
      (lambda (_e137445_)
        (let* ((_g137446137455_ (gx#stx-e _e137445_))
               (_E137449137459_
                (lambda () (error '"No clause matching" _g137446137455_))))
          (let ((_K137451137475_
                 (lambda (_rest137473_) (gx#stx-list? _rest137473_)))
                (_K137450137465_ (lambda (_tail137463_) (null? _tail137463_))))
            (if (##pair? _g137446137455_)
                (let* ((_tl137453137478_ (##cdr _g137446137455_))
                       (_rest137481_ _tl137453137478_))
                  (gx#stx-list? _rest137481_))
                (let ((_tail137468_ _g137446137455_))
                  (null? _tail137468_)))))))
    (define gx#stx-pair/null?
      (lambda (_e137438_)
        (let* ((_e137440_ (gx#stx-e _e137438_)) (_$e137442_ (pair? _e137440_)))
          (if _$e137442_ _$e137442_ (null? _e137440_)))))
    (define gx#stx-vector? (lambda (_e137436_) (vector? (gx#stx-e _e137436_))))
    (define gx#stx-box? (lambda (_e137434_) (box? (gx#stx-e _e137434_))))
    (define gx#stx-eq?
      (lambda (_x137431_ _y137432_)
        (eq? (gx#stx-e _x137431_) (gx#stx-e _y137432_))))
    (define gx#stx-eqv?
      (lambda (_x137428_ _y137429_)
        (eqv? (gx#stx-e _x137428_) (gx#stx-e _y137429_))))
    (define gx#stx-equal?
      (lambda (_x137425_ _y137426_)
        (equal? (gx#stx-e _x137425_) (gx#stx-e _y137426_))))
    (define gx#stx-false? (lambda (_x137423_) (not (gx#stx-e _x137423_))))
    (define gx#stx-identifier
      (lambda (_template137420_ . _args137421_)
        (gx#datum->syntax__1
         _template137420_
         (apply make-symbol (gx#syntax->datum _args137421_))
         (gx#stx-source _template137420_))))
    (define gx#stx-identifier-marks
      (lambda (_stx137418_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx137418_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx137416_)
        (if (##structure-direct-instance-of?
             _stx137416_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx137416_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx137416_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx137416_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx137416_)))))
    (define gx#stx-identifier-context
      (lambda (_stx137412_)
        (let ((_stx137414_ (gx#stx-unwrap__0 _stx137412_)))
          (if (gx#identifier-quote? _stx137414_)
              (##unchecked-structure-ref _stx137414_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx137367_)
        (let* ((_g137368137378_ (gx#stx-e _stx137367_))
               (_else137371137386_ (lambda () '#f)))
          (let ((_K137374137400_
                 (lambda (_rest137397_ _hd137398_)
                   (if (gx#identifier? _hd137398_)
                       (gx#identifier-list? _rest137397_)
                       '#f)))
                (_K137373137391_ (lambda () '#t)))
            (let ((_try-match137370137394_
                   (lambda ()
                     (if (##null? _g137368137378_)
                         (_K137373137391_)
                         (_else137371137386_)))))
              (if (##pair? _g137368137378_)
                  (let ((_tl137376137405_ (##cdr _g137368137378_))
                        (_hd137375137403_ (##car _g137368137378_)))
                    (let ((_hd137408_ _hd137375137403_)
                          (_rest137410_ _tl137376137405_))
                      (_K137374137400_ _rest137410_ _hd137408_)))
                  (_try-match137370137394_)))))))
    (define gx#genident__%
      (lambda (_e137344_ _src137345_)
        (gx#stx-wrap-source
         (gensym (let ((_e137347_ (gx#stx-e _e137344_)))
                   (if (interned-symbol? _e137347_) _e137347_ 'g)))
         (let ((_$e137349_ (gx#stx-source _e137344_)))
           (if _$e137349_ _$e137349_ _src137345_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e137356_ 'g) (_src137358_ '#f))
          (gx#genident__% _e137356_ _src137358_))))
    (define gx#genident__1
      (lambda (_e137360_)
        (let ((_src137362_ '#f)) (gx#genident__% _e137360_ _src137362_))))
    (define gx#genident
      (lambda _g142347_
        (let ((_g142346_ (##length _g142347_)))
          (cond ((##fx= _g142346_ 0)
                 (apply (lambda () (gx#genident__0)) _g142347_))
                ((##fx= _g142346_ 1)
                 (apply (lambda (_e137360_) (gx#genident__1 _e137360_))
                        _g142347_))
                ((##fx= _g142346_ 2)
                 (apply (lambda (_e137364_ _src137365_)
                          (gx#genident__% _e137364_ _src137365_))
                        _g142347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g142347_))))))
    (define gx#gentemps
      (lambda (_stx-lst137341_) (gx#stx-map1 gx#genident _stx-lst137341_)))
    (define gx#syntax->list
      (lambda (_stx137339_) (gx#stx-map1 values _stx137339_)))
    (define gx#stx-car
      (lambda (_stx137336_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx137336_)))))
    (define gx#stx-cdr
      (lambda (_stx137333_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx137333_)))))
    (define gx#stx-length
      (lambda (_stx137298_)
        (let _lp137300_ ((_rest137302_ _stx137298_) (_n137303_ '0))
          (let* ((_g137304137312_ (gx#stx-e _rest137302_))
                 (_else137306137320_ (lambda () _n137303_))
                 (_K137308137325_
                  (lambda (_rest137323_)
                    (_lp137300_ _rest137323_ (fx+ _n137303_ '1)))))
            (if (##pair? _g137304137312_)
                (let* ((_tl137310137328_ (##cdr _g137304137312_))
                       (_rest137331_ _tl137310137328_))
                  (_K137308137325_ _rest137331_))
                (_else137306137320_))))))
    (define gx#stx-for-each
      (lambda _g142349_
        (let ((_g142348_ (##length _g142349_)))
          (cond ((##fx= _g142348_ 2)
                 (apply (lambda (_f137291_ _stx137292_)
                          (gx#stx-for-each1 _f137291_ _stx137292_))
                        _g142349_))
                ((##fx= _g142348_ 3)
                 (apply (lambda (_f137294_ _xstx137295_ _ystx137296_)
                          (gx#stx-for-each2
                           _f137294_
                           _xstx137295_
                           _ystx137296_))
                        _g142349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g142349_))))))
    (define gx#stx-for-each1
      (lambda (_f137241_ _stx137242_)
        (if (procedure? _f137241_)
            '#!void
            (error '"expected procedure" _f137241_))
        (let _lp137244_ ((_rest137246_ _stx137242_))
          (let* ((_g137247137257_ (gx#syntax-e _rest137246_))
                 (_else137250137265_ (lambda () (_f137241_ _rest137246_))))
            (let ((_K137253137279_
                   (lambda (_rest137276_ _hd137277_)
                     (_f137241_ _hd137277_)
                     (_lp137244_ _rest137276_)))
                  (_K137252137270_ (lambda () '#!void)))
              (let ((_try-match137249137273_
                     (lambda ()
                       (if (##null? _g137247137257_)
                           (_K137252137270_)
                           (_else137250137265_)))))
                (if (##pair? _g137247137257_)
                    (let ((_tl137255137284_ (##cdr _g137247137257_))
                          (_hd137254137282_ (##car _g137247137257_)))
                      (let ((_hd137287_ _hd137254137282_)
                            (_rest137289_ _tl137255137284_))
                        (_K137253137279_ _rest137289_ _hd137287_)))
                    (_try-match137249137273_))))))))
    (define gx#stx-for-each2
      (lambda (_f137146_ _xstx137147_ _ystx137148_)
        (if (procedure? _f137146_)
            '#!void
            (error '"expected procedure" _f137146_))
        (let _lp137150_ ((_xrest137152_ _xstx137147_)
                         (_yrest137153_ _ystx137148_))
          (let* ((_g137154137164_ (gx#syntax-e _xrest137152_))
                 (_else137157137172_ (lambda () '#!void)))
            (let ((_K137160137229_
                   (lambda (_xrest137198_ _xhd137199_)
                     (let* ((_g137200137207_ (gx#syntax-e _yrest137153_))
                            (_E137202137211_
                             (lambda ()
                               (error '"No clause matching" _g137200137207_)))
                            (_K137203137217_
                             (lambda (_yrest137214_ _yhd137215_)
                               (_f137146_ _xhd137199_ _yhd137215_)
                               (_lp137150_ _xrest137198_ _yrest137214_))))
                       (if (##pair? _g137200137207_)
                           (let ((_hd137204137220_ (##car _g137200137207_))
                                 (_tl137205137222_ (##cdr _g137200137207_)))
                             (let* ((_yhd137225_ _hd137204137220_)
                                    (_yrest137227_ _tl137205137222_))
                               (_K137203137217_ _yrest137227_ _yhd137225_)))
                           (_E137202137211_)))))
                  (_K137159137192_
                   (lambda ()
                     (let* ((_yrest137176137181_ _yrest137153_)
                            (_E137178137185_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137176137181_)))
                            (_K137179137189_
                             (lambda ()
                               (_f137146_ _xrest137152_ _yrest137153_))))
                       (if (not (gx#stx-null? _yrest137176137181_))
                           (_K137179137189_)
                           (_E137178137185_))))))
              (let ((_try-match137156137195_
                     (lambda ()
                       (if (not (null? _g137154137164_))
                           (_K137159137192_)
                           (_else137157137172_)))))
                (if (##pair? _g137154137164_)
                    (let ((_tl137162137234_ (##cdr _g137154137164_))
                          (_hd137161137232_ (##car _g137154137164_)))
                      (let ((_xhd137237_ _hd137161137232_)
                            (_xrest137239_ _tl137162137234_))
                        (_K137160137229_ _xrest137239_ _xhd137237_)))
                    (_try-match137156137195_))))))))
    (define gx#stx-map
      (lambda _g142351_
        (let ((_g142350_ (##length _g142351_)))
          (cond ((##fx= _g142350_ 2)
                 (apply (lambda (_f137139_ _stx137140_)
                          (gx#stx-map1 _f137139_ _stx137140_))
                        _g142351_))
                ((##fx= _g142350_ 3)
                 (apply (lambda (_f137142_ _xstx137143_ _ystx137144_)
                          (gx#stx-map2 _f137142_ _xstx137143_ _ystx137144_))
                        _g142351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g142351_))))))
    (define gx#stx-map1
      (lambda (_f137089_ _stx137090_)
        (if (procedure? _f137089_)
            '#!void
            (error '"expected procedure" _f137089_))
        (let _recur137092_ ((_rest137094_ _stx137090_))
          (let* ((_g137095137105_ (gx#syntax-e _rest137094_))
                 (_else137098137113_ (lambda () (_f137089_ _rest137094_))))
            (let ((_K137101137127_
                   (lambda (_rest137124_ _hd137125_)
                     (cons (_f137089_ _hd137125_)
                           (_recur137092_ _rest137124_))))
                  (_K137100137118_ (lambda () '())))
              (let ((_try-match137097137121_
                     (lambda ()
                       (if (##null? _g137095137105_)
                           (_K137100137118_)
                           (_else137098137113_)))))
                (if (##pair? _g137095137105_)
                    (let ((_tl137103137132_ (##cdr _g137095137105_))
                          (_hd137102137130_ (##car _g137095137105_)))
                      (let ((_hd137135_ _hd137102137130_)
                            (_rest137137_ _tl137103137132_))
                        (_K137101137127_ _rest137137_ _hd137135_)))
                    (_try-match137097137121_))))))))
    (define gx#stx-map2
      (lambda (_f136994_ _xstx136995_ _ystx136996_)
        (if (procedure? _f136994_)
            '#!void
            (error '"expected procedure" _f136994_))
        (let _recur136998_ ((_xrest137000_ _xstx136995_)
                            (_yrest137001_ _ystx136996_))
          (let* ((_g137002137012_ (gx#syntax-e _xrest137000_))
                 (_else137005137020_ (lambda () '())))
            (let ((_K137008137077_
                   (lambda (_xrest137046_ _xhd137047_)
                     (let* ((_g137048137055_ (gx#syntax-e _yrest137001_))
                            (_E137050137059_
                             (lambda ()
                               (error '"No clause matching" _g137048137055_)))
                            (_K137051137065_
                             (lambda (_yrest137062_ _yhd137063_)
                               (cons (_f136994_ _xhd137047_ _yhd137063_)
                                     (_recur136998_
                                      _xrest137046_
                                      _yrest137062_)))))
                       (if (##pair? _g137048137055_)
                           (let ((_hd137052137068_ (##car _g137048137055_))
                                 (_tl137053137070_ (##cdr _g137048137055_)))
                             (let* ((_yhd137073_ _hd137052137068_)
                                    (_yrest137075_ _tl137053137070_))
                               (_K137051137065_ _yrest137075_ _yhd137073_)))
                           (_E137050137059_)))))
                  (_K137007137040_
                   (lambda ()
                     (let* ((_yrest137024137029_ _yrest137001_)
                            (_E137026137033_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137024137029_)))
                            (_K137027137037_
                             (lambda ()
                               (_f136994_ _xrest137000_ _yrest137001_))))
                       (if (not (gx#stx-null? _yrest137024137029_))
                           (_K137027137037_)
                           (_E137026137033_))))))
              (let ((_try-match137004137043_
                     (lambda ()
                       (if (not (null? _g137002137012_))
                           (_K137007137040_)
                           (_else137005137020_)))))
                (if (##pair? _g137002137012_)
                    (let ((_tl137010137082_ (##cdr _g137002137012_))
                          (_hd137009137080_ (##car _g137002137012_)))
                      (let ((_xhd137085_ _hd137009137080_)
                            (_xrest137087_ _tl137010137082_))
                        (_K137008137077_ _xrest137087_ _xhd137085_)))
                    (_try-match137004137043_))))))))
    (define gx#stx-andmap
      (lambda (_f136944_ _stx136945_)
        (if (procedure? _f136944_)
            '#!void
            (error '"expected procedure" _f136944_))
        (let _lp136947_ ((_rest136949_ _stx136945_))
          (let* ((_g136950136960_ (gx#syntax-e _rest136949_))
                 (_else136953136968_ (lambda () (_f136944_ _rest136949_))))
            (let ((_K136956136982_
                   (lambda (_rest136979_ _hd136980_)
                     (if (_f136944_ _hd136980_)
                         (_lp136947_ _rest136979_)
                         '#f)))
                  (_K136955136973_ (lambda () '#t)))
              (let ((_try-match136952136976_
                     (lambda ()
                       (if (##null? _g136950136960_)
                           (_K136955136973_)
                           (_else136953136968_)))))
                (if (##pair? _g136950136960_)
                    (let ((_tl136958136987_ (##cdr _g136950136960_))
                          (_hd136957136985_ (##car _g136950136960_)))
                      (let ((_hd136990_ _hd136957136985_)
                            (_rest136992_ _tl136958136987_))
                        (_K136956136982_ _rest136992_ _hd136990_)))
                    (_try-match136952136976_))))))))
    (define gx#stx-ormap
      (lambda (_f136891_ _stx136892_)
        (if (procedure? _f136891_)
            '#!void
            (error '"expected procedure" _f136891_))
        (let _lp136894_ ((_rest136896_ _stx136892_))
          (let* ((_g136897136907_ (gx#syntax-e _rest136896_))
                 (_else136900136915_ (lambda () (_f136891_ _rest136896_))))
            (let ((_K136903136932_
                   (lambda (_rest136926_ _hd136927_)
                     (let ((_$e136929_ (_f136891_ _hd136927_)))
                       (if _$e136929_ _$e136929_ (_lp136894_ _rest136926_)))))
                  (_K136902136920_ (lambda () '#f)))
              (let ((_try-match136899136923_
                     (lambda ()
                       (if (##null? _g136897136907_)
                           (_K136902136920_)
                           (_else136900136915_)))))
                (if (##pair? _g136897136907_)
                    (let ((_tl136905136937_ (##cdr _g136897136907_))
                          (_hd136904136935_ (##car _g136897136907_)))
                      (let ((_hd136940_ _hd136904136935_)
                            (_rest136942_ _tl136905136937_))
                        (_K136903136932_ _rest136942_ _hd136940_)))
                    (_try-match136899136923_))))))))
    (define gx#stx-foldl
      (lambda (_f136839_ _iv136840_ _stx136841_)
        (if (procedure? _f136839_)
            '#!void
            (error '"expected procedure" _f136839_))
        (let _lp136843_ ((_r136845_ _iv136840_) (_rest136846_ _stx136841_))
          (let* ((_g136847136857_ (gx#syntax-e _rest136846_))
                 (_else136850136865_
                  (lambda () (_f136839_ _rest136846_ _r136845_))))
            (let ((_K136853136879_
                   (lambda (_rest136876_ _hd136877_)
                     (_lp136843_
                      (_f136839_ _hd136877_ _r136845_)
                      _rest136876_)))
                  (_K136852136870_ (lambda () _r136845_)))
              (let ((_try-match136849136873_
                     (lambda ()
                       (if (##null? _g136847136857_)
                           (_K136852136870_)
                           (_else136850136865_)))))
                (if (##pair? _g136847136857_)
                    (let ((_tl136855136884_ (##cdr _g136847136857_))
                          (_hd136854136882_ (##car _g136847136857_)))
                      (let ((_hd136887_ _hd136854136882_)
                            (_rest136889_ _tl136855136884_))
                        (_K136853136879_ _rest136889_ _hd136887_)))
                    (_try-match136849136873_))))))))
    (define gx#stx-foldr
      (lambda (_f136788_ _iv136789_ _stx136790_)
        (if (procedure? _f136788_)
            '#!void
            (error '"expected procedure" _f136788_))
        (let _recur136792_ ((_rest136794_ _stx136790_))
          (let* ((_g136795136805_ (gx#syntax-e _rest136794_))
                 (_else136798136813_
                  (lambda () (_f136788_ _rest136794_ _iv136789_))))
            (let ((_K136801136827_
                   (lambda (_rest136824_ _hd136825_)
                     (_f136788_ _hd136825_ (_recur136792_ _rest136824_))))
                  (_K136800136818_ (lambda () _iv136789_)))
              (let ((_try-match136797136821_
                     (lambda ()
                       (if (##null? _g136795136805_)
                           (_K136800136818_)
                           (_else136798136813_)))))
                (if (##pair? _g136795136805_)
                    (let ((_tl136803136832_ (##cdr _g136795136805_))
                          (_hd136802136830_ (##car _g136795136805_)))
                      (let ((_hd136835_ _hd136802136830_)
                            (_rest136837_ _tl136803136832_))
                        (_K136801136827_ _rest136837_ _hd136835_)))
                    (_try-match136797136821_))))))))
    (define gx#stx-reverse
      (lambda (_stx136786_) (gx#stx-foldl cons '() _stx136786_)))
    (define gx#stx-last
      (lambda (_stx136747_)
        (let _lp136749_ ((_rest136751_ _stx136747_))
          (let* ((_g136752136760_ (gx#syntax-e _rest136751_))
                 (_else136754136768_ (lambda () _rest136751_))
                 (_K136756136774_
                  (lambda (_rest136771_ _hd136772_)
                    (if (gx#stx-null? _rest136771_)
                        _hd136772_
                        (_lp136749_ _rest136771_)))))
            (if (##pair? _g136752136760_)
                (let ((_hd136757136777_ (##car _g136752136760_))
                      (_tl136758136779_ (##cdr _g136752136760_)))
                  (let* ((_hd136782_ _hd136757136777_)
                         (_rest136784_ _tl136758136779_))
                    (_K136756136774_ _rest136784_ _hd136782_)))
                (_else136754136768_))))))
    (define gx#stx-last-pair
      (lambda (_stx136718_)
        (let _lp136720_ ((_hd136722_ _stx136718_))
          (let* ((_g136723136730_ (gx#syntax-e _hd136722_))
                 (_E136725136734_
                  (lambda () (error '"No clause matching" _g136723136730_)))
                 (_K136726136739_
                  (lambda (_rest136737_)
                    (if (gx#stx-pair? _rest136737_)
                        (_lp136720_ _rest136737_)
                        _hd136722_))))
            (if (##pair? _g136723136730_)
                (let* ((_tl136728136742_ (##cdr _g136723136730_))
                       (_rest136745_ _tl136728136742_))
                  (_K136726136739_ _rest136745_))
                (_E136725136734_))))))
    (define gx#stx-list-tail
      (lambda (_stx136687_ _k136688_)
        (let _lp136690_ ((_rest136692_ _stx136687_) (_k136693_ _k136688_))
          (if (fxpositive? _k136693_)
              (let* ((_g136694136701_ (gx#syntax-e _rest136692_))
                     (_E136696136705_
                      (lambda ()
                        (error '"No clause matching" _g136694136701_)))
                     (_K136697136710_
                      (lambda (_rest136708_)
                        (_lp136690_ _rest136708_ (fx- _k136693_ '1)))))
                (if (##pair? _g136694136701_)
                    (let* ((_tl136699136713_ (##cdr _g136694136701_))
                           (_rest136716_ _tl136699136713_))
                      (_K136697136710_ _rest136716_))
                    (_E136696136705_)))
              _rest136692_))))
    (define gx#stx-list-ref
      (lambda (_stx136684_ _k136685_)
        (gx#stx-car (gx#stx-list-tail _stx136684_ _k136685_))))
    (define gx#stx-plist?__%
      (lambda (_stx136596_ _key?136597_)
        (if (procedure? _key?136597_)
            '#!void
            (error '"expected procedure" _key?136597_))
        (let _lp136599_ ((_rest136601_ _stx136596_))
          (let* ((_g136602136612_ (gx#stx-e _rest136601_))
                 (_else136605136620_ (lambda () '#f)))
            (let ((_K136608136662_
                   (lambda (_rest136631_ _hd136632_)
                     (if (_key?136597_ _hd136632_)
                         (let* ((_g136633136641_ (gx#stx-e _rest136631_))
                                (_else136635136649_ (lambda () '#f))
                                (_K136637136654_
                                 (lambda (_rest136652_)
                                   (_lp136599_ _rest136652_))))
                           (if (##pair? _g136633136641_)
                               (let* ((_tl136639136657_
                                       (##cdr _g136633136641_))
                                      (_rest136660_ _tl136639136657_))
                                 (_lp136599_ _rest136660_))
                               (_else136635136649_)))
                         '#f)))
                  (_K136607136625_ (lambda () '#t)))
              (let ((_try-match136604136628_
                     (lambda ()
                       (if (##null? _g136602136612_)
                           (_K136607136625_)
                           (_else136605136620_)))))
                (if (##pair? _g136602136612_)
                    (let ((_tl136610136667_ (##cdr _g136602136612_))
                          (_hd136609136665_ (##car _g136602136612_)))
                      (let ((_hd136670_ _hd136609136665_)
                            (_rest136672_ _tl136610136667_))
                        (_K136608136662_ _rest136672_ _hd136670_)))
                    (_try-match136604136628_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx136677_)
        (let ((_key?136679_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx136677_ _key?136679_))))
    (define gx#stx-plist?
      (lambda _g142353_
        (let ((_g142352_ (##length _g142353_)))
          (cond ((##fx= _g142352_ 1)
                 (apply (lambda (_stx136677_) (gx#stx-plist?__0 _stx136677_))
                        _g142353_))
                ((##fx= _g142352_ 2)
                 (apply (lambda (_stx136681_ _key?136682_)
                          (gx#stx-plist?__% _stx136681_ _key?136682_))
                        _g142353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g142353_))))))
    (define gx#stx-getq__%
      (lambda (_key136514_ _stx136515_ _key=?136516_)
        (if (procedure? _key=?136516_)
            '#!void
            (error '"expected procedure" _key=?136516_))
        (let _lp136518_ ((_rest136520_ _stx136515_))
          (let* ((_g136521136529_ (gx#syntax-e _rest136520_))
                 (_else136523136537_ (lambda () '#f))
                 (_K136525136571_
                  (lambda (_rest136540_ _hd136541_)
                    (let* ((_g136542136549_ (gx#syntax-e _rest136540_))
                           (_E136544136553_
                            (lambda ()
                              (error '"No clause matching" _g136542136549_)))
                           (_K136545136559_
                            (lambda (_rest136556_ _val136557_)
                              (if (_key=?136516_ _hd136541_ _key136514_)
                                  _val136557_
                                  (_lp136518_ _rest136556_)))))
                      (if (##pair? _g136542136549_)
                          (let ((_hd136546136562_ (##car _g136542136549_))
                                (_tl136547136564_ (##cdr _g136542136549_)))
                            (let* ((_val136567_ _hd136546136562_)
                                   (_rest136569_ _tl136547136564_))
                              (_K136545136559_ _rest136569_ _val136567_)))
                          (_E136544136553_))))))
            (if (##pair? _g136521136529_)
                (let ((_hd136526136574_ (##car _g136521136529_))
                      (_tl136527136576_ (##cdr _g136521136529_)))
                  (let* ((_hd136579_ _hd136526136574_)
                         (_rest136581_ _tl136527136576_))
                    (_K136525136571_ _rest136581_ _hd136579_)))
                (_else136523136537_))))))
    (define gx#stx-getq__0
      (lambda (_key136586_ _stx136587_)
        (let ((_key=?136589_ gx#stx-eq?))
          (gx#stx-getq__% _key136586_ _stx136587_ _key=?136589_))))
    (define gx#stx-getq
      (lambda _g142355_
        (let ((_g142354_ (##length _g142355_)))
          (cond ((##fx= _g142354_ 2)
                 (apply (lambda (_key136586_ _stx136587_)
                          (gx#stx-getq__0 _key136586_ _stx136587_))
                        _g142355_))
                ((##fx= _g142354_ 3)
                 (apply (lambda (_key136591_ _stx136592_ _key=?136593_)
                          (gx#stx-getq__%
                           _key136591_
                           _stx136592_
                           _key=?136593_))
                        _g142355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g142355_))))))))
