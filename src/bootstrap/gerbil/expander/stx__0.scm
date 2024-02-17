(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708210940)
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
      (lambda _$args136601_
        (apply make-instance gx#identifier-wrap::t _$args136601_)))
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
      (lambda _$args136598_
        (apply make-instance gx#syntax-wrap::t _$args136598_)))
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
      (lambda _$args136595_
        (apply make-instance gx#syntax-quote::t _$args136595_)))
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
      (lambda (_stx136593_) (symbol? (gx#stx-e _stx136593_))))
    (define gx#identifier-quote?
      (lambda (_stx136591_)
        (if (##structure-direct-instance-of? _stx136591_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx136591_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx136589_)
        (if (##structure-direct-instance-of? _stx136589_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx136589_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx136589_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx136587_)
        (if (##structure-direct-instance-of? _stx136587_ 'gx#syntax-quote::t)
            _stx136587_
            (if (##structure-direct-instance-of?
                 _stx136587_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx136587_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx136570_)
        (if (##structure-direct-instance-of? _stx136570_ 'gx#syntax-wrap::t)
            (let _lp136572_ ((_e136574_
                              (##unchecked-structure-ref
                               _stx136570_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks136575_
                              (cons (##unchecked-structure-ref
                                     _stx136570_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e136574_)
                  (let ((_$e136577_ (##type-id (##structure-type _e136574_))))
                    (if (eq? 'gx#syntax-wrap::t _$e136577_)
                        (_lp136572_
                         (##unchecked-structure-ref _e136574_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e136574_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks136575_))
                        (if (or (eq? 'gx#syntax-quote::t _$e136577_)
                                (eq? 'gx#identifier-wrap::t _$e136577_))
                            (##unchecked-structure-ref
                             _e136574_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e136577_)
                                (_lp136572_
                                 (##unchecked-structure-ref
                                  _e136574_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks136575_)
                                _e136574_))))
                  (if (null? _marks136575_)
                      _e136574_
                      (if (pair? _e136574_)
                          (cons (gx#stx-wrap (car _e136574_) _marks136575_)
                                (gx#stx-wrap (cdr _e136574_) _marks136575_))
                          (if (vector? _e136574_)
                              (vector-map
                               (lambda (_g136582136584_)
                                 (gx#stx-wrap _g136582136584_ _marks136575_))
                               _e136574_)
                              (if (box? _e136574_)
                                  (box (gx#stx-wrap
                                        (unbox _e136574_)
                                        _marks136575_))
                                  _e136574_))))))
            (if (##structure-instance-of? _stx136570_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136570_ '1 gx#AST::t '#f)
                _stx136570_))))
    (define gx#syntax->datum
      (lambda (_stx136568_)
        (if (##structure-instance-of? _stx136568_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx136568_ '1 gx#AST::t '#f))
            (if (pair? _stx136568_)
                (cons (gx#syntax->datum (car _stx136568_))
                      (gx#syntax->datum (cdr _stx136568_)))
                (if (vector? _stx136568_)
                    (vector-map gx#syntax->datum _stx136568_)
                    (if (box? _stx136568_)
                        (box (gx#syntax->datum (unbox _stx136568_)))
                        _stx136568_))))))
    (define gx#datum->syntax__%
      (lambda (_stx136511_ _datum136512_ _src136513_ _quote?136514_)
        (letrec ((_wrap-datum136516_
                  (lambda (_e136540_ _marks136541_)
                    (_wrap-inner136518_
                     _e136540_
                     (lambda (_g136542136544_)
                       (##structure
                        gx#identifier-wrap::t
                        _g136542136544_
                        _src136513_
                        _marks136541_)))))
                 (_wrap-quote136517_
                  (lambda (_e136532_ _ctx136533_ _marks136534_)
                    (_wrap-inner136518_
                     _e136532_
                     (lambda (_g136535136537_)
                       (##structure
                        gx#syntax-quote::t
                        _g136535136537_
                        _src136513_
                        _ctx136533_
                        _marks136534_)))))
                 (_wrap-inner136518_
                  (lambda (_e136525_ _wrap-e136526_)
                    (let _recur136528_ ((_e136530_ _e136525_))
                      (if (symbol? _e136530_)
                          (_wrap-e136526_ _e136530_)
                          (if (pair? _e136530_)
                              (cons (_recur136528_ (car _e136530_))
                                    (_recur136528_ (cdr _e136530_)))
                              (if (vector? _e136530_)
                                  (vector-map _recur136528_ _e136530_)
                                  (if (box? _e136530_)
                                      (box (_recur136528_ (unbox _e136530_)))
                                      _e136530_)))))))
                 (_wrap-outer136519_
                  (lambda (_e136523_)
                    (if (##structure-instance-of? _e136523_ 'gerbil#AST::t)
                        _e136523_
                        (##structure gx#AST::t _e136523_ _src136513_)))))
          (if (##structure-instance-of? _datum136512_ 'gerbil#AST::t)
              _datum136512_
              (if (not _stx136511_)
                  (##structure gx#AST::t _datum136512_ _src136513_)
                  (if (gx#identifier? _stx136511_)
                      (let ((_stx136521_ (gx#stx-unwrap__0 _stx136511_)))
                        (_wrap-outer136519_
                         (if (##structure-direct-instance-of?
                              _stx136521_
                              'gx#syntax-quote::t)
                             (if _quote?136514_
                                 (_wrap-quote136517_
                                  _datum136512_
                                  (##unchecked-structure-ref
                                   _stx136521_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx136521_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum136516_
                                  _datum136512_
                                  (##unchecked-structure-ref
                                   _stx136521_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum136516_
                              _datum136512_
                              (##unchecked-structure-ref
                               _stx136521_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx136511_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx136550_ _datum136551_)
        (let* ((_src136553_ '#f) (_quote?136555_ '#t))
          (gx#datum->syntax__%
           _stx136550_
           _datum136551_
           _src136553_
           _quote?136555_))))
    (define gx#datum->syntax__1
      (lambda (_stx136557_ _datum136558_ _src136559_)
        (let ((_quote?136561_ '#t))
          (gx#datum->syntax__%
           _stx136557_
           _datum136558_
           _src136559_
           _quote?136561_))))
    (define gx#datum->syntax
      (lambda _g140749_
        (let ((_g140748_ (##length _g140749_)))
          (cond ((##fx= _g140748_ 2)
                 (apply (lambda (_stx136550_ _datum136551_)
                          (gx#datum->syntax__0 _stx136550_ _datum136551_))
                        _g140749_))
                ((##fx= _g140748_ 3)
                 (apply (lambda (_stx136557_ _datum136558_ _src136559_)
                          (gx#datum->syntax__1
                           _stx136557_
                           _datum136558_
                           _src136559_))
                        _g140749_))
                ((##fx= _g140748_ 4)
                 (apply (lambda (_stx136563_
                                 _datum136564_
                                 _src136565_
                                 _quote?136566_)
                          (gx#datum->syntax__%
                           _stx136563_
                           _datum136564_
                           _src136565_
                           _quote?136566_))
                        _g140749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140749_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx136487_ _marks136488_)
        (let _lp136490_ ((_e136492_ _stx136487_)
                         (_marks136493_ _marks136488_)
                         (_src136494_ (gx#stx-source _stx136487_)))
          (if (##structure-direct-instance-of? _e136492_ 'gx#syntax-wrap::t)
              (_lp136490_
               (##unchecked-structure-ref _e136492_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e136492_ '3 gx#syntax-wrap::t '#f)
                _marks136493_)
               (##unchecked-structure-ref _e136492_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e136492_
                   'gx#identifier-wrap::t)
                  (if (null? _marks136493_)
                      _e136492_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e136492_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e136492_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136492_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136493_)))
                  (if (##structure-direct-instance-of?
                       _e136492_
                       'gx#syntax-quote::t)
                      _e136492_
                      (if (##structure-instance-of? _e136492_ 'gerbil#AST::t)
                          (_lp136490_
                           (##unchecked-structure-ref
                            _e136492_
                            '1
                            gx#AST::t
                            '#f)
                           _marks136493_
                           (##unchecked-structure-ref
                            _e136492_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e136492_)
                              (##structure
                               gx#identifier-wrap::t
                               _e136492_
                               _src136494_
                               (reverse _marks136493_))
                              (if (null? _marks136493_)
                                  _e136492_
                                  (if (pair? _e136492_)
                                      (cons (gx#stx-wrap
                                             (car _e136492_)
                                             _marks136493_)
                                            (gx#stx-wrap
                                             (cdr _e136492_)
                                             _marks136493_))
                                      (if (vector? _e136492_)
                                          (vector-map
                                           (lambda (_g136495136497_)
                                             (gx#stx-wrap
                                              _g136495136497_
                                              _marks136493_))
                                           _e136492_)
                                          (if (box? _e136492_)
                                              (box (gx#stx-wrap
                                                    (unbox _e136492_)
                                                    _marks136493_))
                                              _e136492_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx136503_)
        (let ((_marks136505_ '()))
          (gx#stx-unwrap__% _stx136503_ _marks136505_))))
    (define gx#stx-unwrap
      (lambda _g140751_
        (let ((_g140750_ (##length _g140751_)))
          (cond ((##fx= _g140750_ 1)
                 (apply (lambda (_stx136503_) (gx#stx-unwrap__0 _stx136503_))
                        _g140751_))
                ((##fx= _g140750_ 2)
                 (apply (lambda (_stx136507_ _marks136508_)
                          (gx#stx-unwrap__% _stx136507_ _marks136508_))
                        _g140751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140751_))))))
    (define gx#stx-wrap
      (lambda (_stx136480_ _marks136481_)
        (foldl1 (lambda (_mark136483_ _stx136484_)
                  (gx#stx-apply-mark _stx136484_ _mark136483_))
                _stx136480_
                _marks136481_)))
    (define gx#stx-rewrap
      (lambda (_stx136474_ _marks136475_)
        (foldr1 (lambda (_mark136477_ _stx136478_)
                  (gx#stx-apply-mark _stx136478_ _mark136477_))
                _stx136474_
                _marks136475_)))
    (define gx#stx-apply-mark
      (lambda (_stx136471_ _mark136472_)
        (if (##structure-direct-instance-of? _stx136471_ 'gx#syntax-quote::t)
            _stx136471_
            (if (and (##structure-direct-instance-of?
                      _stx136471_
                      'gx#syntax-wrap::t)
                     (eq? _mark136472_
                          (##unchecked-structure-ref
                           _stx136471_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx136471_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx136471_
                 (gx#stx-source _stx136471_)
                 _mark136472_)))))
    (define gx#apply-mark
      (lambda (_mark136435_ _marks136436_)
        (let* ((_marks136437136445_ _marks136436_)
               (_else136439136453_
                (lambda () (cons _mark136435_ _marks136436_)))
               (_K136441136459_
                (lambda (_rest136456_ _hd136457_)
                  (if (eq? _mark136435_ _hd136457_)
                      _rest136456_
                      (cons _mark136435_ _marks136436_)))))
          (if (##pair? _marks136437136445_)
              (let ((_hd136442136462_ (##car _marks136437136445_))
                    (_tl136443136464_ (##cdr _marks136437136445_)))
                (let* ((_hd136467_ _hd136442136462_)
                       (_rest136469_ _tl136443136464_))
                  (_K136441136459_ _rest136469_ _hd136467_)))
              (_else136439136453_)))))
    (define gx#stx-e
      (lambda (_stx136433_)
        (if (##structure-direct-instance-of? _stx136433_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx136433_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx136433_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136433_ '1 gx#AST::t '#f)
                _stx136433_))))
    (define gx#stx-source
      (lambda (_stx136431_)
        (if (##structure-instance-of? _stx136431_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx136431_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx136425_ _src136426_)
        (if (or (##structure-instance-of? _stx136425_ 'gerbil#AST::t)
                (not _src136426_))
            _stx136425_
            (##structure gx#AST::t _stx136425_ _src136426_))))
    (define gx#stx-datum?
      (lambda (_stx136423_) (gx#self-quoting? (gx#stx-e _stx136423_))))
    (define gx#self-quoting?
      (lambda (_x136406_)
        (let ((_$e136408_ (immediate? _x136406_)))
          (if _$e136408_
              _$e136408_
              (let ((_$e136411_ (number? _x136406_)))
                (if _$e136411_
                    _$e136411_
                    (let ((_$e136414_ (keyword? _x136406_)))
                      (if _$e136414_
                          _$e136414_
                          (let ((_$e136417_ (string? _x136406_)))
                            (if _$e136417_
                                _$e136417_
                                (let ((_$e136420_ (vector? _x136406_)))
                                  (if _$e136420_
                                      _$e136420_
                                      (u8vector? _x136406_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136404_) (boolean? (gx#stx-e _e136404_))))
    (define gx#stx-keyword?
      (lambda (_e136402_) (keyword? (gx#stx-e _e136402_))))
    (define gx#stx-char? (lambda (_e136400_) (char? (gx#stx-e _e136400_))))
    (define gx#stx-number? (lambda (_e136398_) (number? (gx#stx-e _e136398_))))
    (define gx#stx-fixnum? (lambda (_e136396_) (fixnum? (gx#stx-e _e136396_))))
    (define gx#stx-string? (lambda (_e136394_) (string? (gx#stx-e _e136394_))))
    (define gx#stx-null? (lambda (_e136392_) (null? (gx#stx-e _e136392_))))
    (define gx#stx-pair? (lambda (_e136390_) (pair? (gx#stx-e _e136390_))))
    (define gx#stx-list?
      (lambda (_e136352_)
        (let* ((_g136353136362_ (gx#stx-e _e136352_))
               (_E136356136366_
                (lambda () (error '"No clause matching" _g136353136362_))))
          (let ((_K136358136382_
                 (lambda (_rest136380_) (gx#stx-list? _rest136380_)))
                (_K136357136372_ (lambda (_tail136370_) (null? _tail136370_))))
            (if (##pair? _g136353136362_)
                (let* ((_tl136360136385_ (##cdr _g136353136362_))
                       (_rest136388_ _tl136360136385_))
                  (gx#stx-list? _rest136388_))
                (let ((_tail136375_ _g136353136362_))
                  (null? _tail136375_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136345_)
        (let* ((_e136347_ (gx#stx-e _e136345_)) (_$e136349_ (pair? _e136347_)))
          (if _$e136349_ _$e136349_ (null? _e136347_)))))
    (define gx#stx-vector? (lambda (_e136343_) (vector? (gx#stx-e _e136343_))))
    (define gx#stx-box? (lambda (_e136341_) (box? (gx#stx-e _e136341_))))
    (define gx#stx-eq?
      (lambda (_x136338_ _y136339_)
        (eq? (gx#stx-e _x136338_) (gx#stx-e _y136339_))))
    (define gx#stx-eqv?
      (lambda (_x136335_ _y136336_)
        (eqv? (gx#stx-e _x136335_) (gx#stx-e _y136336_))))
    (define gx#stx-equal?
      (lambda (_x136332_ _y136333_)
        (equal? (gx#stx-e _x136332_) (gx#stx-e _y136333_))))
    (define gx#stx-false? (lambda (_x136330_) (not (gx#stx-e _x136330_))))
    (define gx#stx-identifier
      (lambda (_template136327_ . _args136328_)
        (gx#datum->syntax__1
         _template136327_
         (apply make-symbol (gx#syntax->datum _args136328_))
         (gx#stx-source _template136327_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136325_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136325_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136323_)
        (if (##structure-direct-instance-of?
             _stx136323_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136323_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136323_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136323_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136323_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136319_)
        (let ((_stx136321_ (gx#stx-unwrap__0 _stx136319_)))
          (if (gx#identifier-quote? _stx136321_)
              (##unchecked-structure-ref _stx136321_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136274_)
        (let* ((_g136275136285_ (gx#stx-e _stx136274_))
               (_else136278136293_ (lambda () '#f)))
          (let ((_K136281136307_
                 (lambda (_rest136304_ _hd136305_)
                   (if (gx#identifier? _hd136305_)
                       (gx#identifier-list? _rest136304_)
                       '#f)))
                (_K136280136298_ (lambda () '#t)))
            (let ((_try-match136277136301_
                   (lambda ()
                     (if (##null? _g136275136285_)
                         (_K136280136298_)
                         (_else136278136293_)))))
              (if (##pair? _g136275136285_)
                  (let ((_tl136283136312_ (##cdr _g136275136285_))
                        (_hd136282136310_ (##car _g136275136285_)))
                    (let ((_hd136315_ _hd136282136310_)
                          (_rest136317_ _tl136283136312_))
                      (_K136281136307_ _rest136317_ _hd136315_)))
                  (_try-match136277136301_)))))))
    (define gx#genident__%
      (lambda (_e136251_ _src136252_)
        (gx#stx-wrap-source
         (gensym (let ((_e136254_ (gx#stx-e _e136251_)))
                   (if (interned-symbol? _e136254_) _e136254_ 'g)))
         (let ((_$e136256_ (gx#stx-source _e136251_)))
           (if _$e136256_ _$e136256_ _src136252_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136263_ 'g) (_src136265_ '#f))
          (gx#genident__% _e136263_ _src136265_))))
    (define gx#genident__1
      (lambda (_e136267_)
        (let ((_src136269_ '#f)) (gx#genident__% _e136267_ _src136269_))))
    (define gx#genident
      (lambda _g140753_
        (let ((_g140752_ (##length _g140753_)))
          (cond ((##fx= _g140752_ 0)
                 (apply (lambda () (gx#genident__0)) _g140753_))
                ((##fx= _g140752_ 1)
                 (apply (lambda (_e136267_) (gx#genident__1 _e136267_))
                        _g140753_))
                ((##fx= _g140752_ 2)
                 (apply (lambda (_e136271_ _src136272_)
                          (gx#genident__% _e136271_ _src136272_))
                        _g140753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140753_))))))
    (define gx#gentemps
      (lambda (_stx-lst136248_) (gx#stx-map1 gx#genident _stx-lst136248_)))
    (define gx#syntax->list
      (lambda (_stx136246_) (gx#stx-map1 values _stx136246_)))
    (define gx#stx-car
      (lambda (_stx136243_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136243_)))))
    (define gx#stx-cdr
      (lambda (_stx136240_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136240_)))))
    (define gx#stx-length
      (lambda (_stx136205_)
        (let _lp136207_ ((_rest136209_ _stx136205_) (_n136210_ '0))
          (let* ((_g136211136219_ (gx#stx-e _rest136209_))
                 (_else136213136227_ (lambda () _n136210_))
                 (_K136215136232_
                  (lambda (_rest136230_)
                    (_lp136207_ _rest136230_ (fx+ _n136210_ '1)))))
            (if (##pair? _g136211136219_)
                (let* ((_tl136217136235_ (##cdr _g136211136219_))
                       (_rest136238_ _tl136217136235_))
                  (_K136215136232_ _rest136238_))
                (_else136213136227_))))))
    (define gx#stx-for-each
      (lambda _g140755_
        (let ((_g140754_ (##length _g140755_)))
          (cond ((##fx= _g140754_ 2)
                 (apply (lambda (_f136198_ _stx136199_)
                          (gx#stx-for-each1 _f136198_ _stx136199_))
                        _g140755_))
                ((##fx= _g140754_ 3)
                 (apply (lambda (_f136201_ _xstx136202_ _ystx136203_)
                          (gx#stx-for-each2
                           _f136201_
                           _xstx136202_
                           _ystx136203_))
                        _g140755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140755_))))))
    (define gx#stx-for-each1
      (lambda (_f136148_ _stx136149_)
        (if (procedure? _f136148_)
            '#!void
            (error '"expected procedure" _f136148_))
        (let _lp136151_ ((_rest136153_ _stx136149_))
          (let* ((_g136154136164_ (gx#syntax-e _rest136153_))
                 (_else136157136172_ (lambda () (_f136148_ _rest136153_))))
            (let ((_K136160136186_
                   (lambda (_rest136183_ _hd136184_)
                     (_f136148_ _hd136184_)
                     (_lp136151_ _rest136183_)))
                  (_K136159136177_ (lambda () '#!void)))
              (let ((_try-match136156136180_
                     (lambda ()
                       (if (##null? _g136154136164_)
                           (_K136159136177_)
                           (_else136157136172_)))))
                (if (##pair? _g136154136164_)
                    (let ((_tl136162136191_ (##cdr _g136154136164_))
                          (_hd136161136189_ (##car _g136154136164_)))
                      (let ((_hd136194_ _hd136161136189_)
                            (_rest136196_ _tl136162136191_))
                        (_K136160136186_ _rest136196_ _hd136194_)))
                    (_try-match136156136180_))))))))
    (define gx#stx-for-each2
      (lambda (_f136053_ _xstx136054_ _ystx136055_)
        (if (procedure? _f136053_)
            '#!void
            (error '"expected procedure" _f136053_))
        (let _lp136057_ ((_xrest136059_ _xstx136054_)
                         (_yrest136060_ _ystx136055_))
          (let* ((_g136061136071_ (gx#syntax-e _xrest136059_))
                 (_else136064136079_ (lambda () '#!void)))
            (let ((_K136067136136_
                   (lambda (_xrest136105_ _xhd136106_)
                     (let* ((_g136107136114_ (gx#syntax-e _yrest136060_))
                            (_E136109136118_
                             (lambda ()
                               (error '"No clause matching" _g136107136114_)))
                            (_K136110136124_
                             (lambda (_yrest136121_ _yhd136122_)
                               (_f136053_ _xhd136106_ _yhd136122_)
                               (_lp136057_ _xrest136105_ _yrest136121_))))
                       (if (##pair? _g136107136114_)
                           (let ((_hd136111136127_ (##car _g136107136114_))
                                 (_tl136112136129_ (##cdr _g136107136114_)))
                             (let* ((_yhd136132_ _hd136111136127_)
                                    (_yrest136134_ _tl136112136129_))
                               (_K136110136124_ _yrest136134_ _yhd136132_)))
                           (_E136109136118_)))))
                  (_K136066136099_
                   (lambda ()
                     (let* ((_yrest136083136088_ _yrest136060_)
                            (_E136085136092_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136083136088_)))
                            (_K136086136096_
                             (lambda ()
                               (_f136053_ _xrest136059_ _yrest136060_))))
                       (if (not (gx#stx-null? _yrest136083136088_))
                           (_K136086136096_)
                           (_E136085136092_))))))
              (let ((_try-match136063136102_
                     (lambda ()
                       (if (not (null? _g136061136071_))
                           (_K136066136099_)
                           (_else136064136079_)))))
                (if (##pair? _g136061136071_)
                    (let ((_tl136069136141_ (##cdr _g136061136071_))
                          (_hd136068136139_ (##car _g136061136071_)))
                      (let ((_xhd136144_ _hd136068136139_)
                            (_xrest136146_ _tl136069136141_))
                        (_K136067136136_ _xrest136146_ _xhd136144_)))
                    (_try-match136063136102_))))))))
    (define gx#stx-map
      (lambda _g140757_
        (let ((_g140756_ (##length _g140757_)))
          (cond ((##fx= _g140756_ 2)
                 (apply (lambda (_f136046_ _stx136047_)
                          (gx#stx-map1 _f136046_ _stx136047_))
                        _g140757_))
                ((##fx= _g140756_ 3)
                 (apply (lambda (_f136049_ _xstx136050_ _ystx136051_)
                          (gx#stx-map2 _f136049_ _xstx136050_ _ystx136051_))
                        _g140757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140757_))))))
    (define gx#stx-map1
      (lambda (_f135996_ _stx135997_)
        (if (procedure? _f135996_)
            '#!void
            (error '"expected procedure" _f135996_))
        (let _recur135999_ ((_rest136001_ _stx135997_))
          (let* ((_g136002136012_ (gx#syntax-e _rest136001_))
                 (_else136005136020_ (lambda () (_f135996_ _rest136001_))))
            (let ((_K136008136034_
                   (lambda (_rest136031_ _hd136032_)
                     (cons (_f135996_ _hd136032_)
                           (_recur135999_ _rest136031_))))
                  (_K136007136025_ (lambda () '())))
              (let ((_try-match136004136028_
                     (lambda ()
                       (if (##null? _g136002136012_)
                           (_K136007136025_)
                           (_else136005136020_)))))
                (if (##pair? _g136002136012_)
                    (let ((_tl136010136039_ (##cdr _g136002136012_))
                          (_hd136009136037_ (##car _g136002136012_)))
                      (let ((_hd136042_ _hd136009136037_)
                            (_rest136044_ _tl136010136039_))
                        (_K136008136034_ _rest136044_ _hd136042_)))
                    (_try-match136004136028_))))))))
    (define gx#stx-map2
      (lambda (_f135901_ _xstx135902_ _ystx135903_)
        (if (procedure? _f135901_)
            '#!void
            (error '"expected procedure" _f135901_))
        (let _recur135905_ ((_xrest135907_ _xstx135902_)
                            (_yrest135908_ _ystx135903_))
          (let* ((_g135909135919_ (gx#syntax-e _xrest135907_))
                 (_else135912135927_ (lambda () '())))
            (let ((_K135915135984_
                   (lambda (_xrest135953_ _xhd135954_)
                     (let* ((_g135955135962_ (gx#syntax-e _yrest135908_))
                            (_E135957135966_
                             (lambda ()
                               (error '"No clause matching" _g135955135962_)))
                            (_K135958135972_
                             (lambda (_yrest135969_ _yhd135970_)
                               (cons (_f135901_ _xhd135954_ _yhd135970_)
                                     (_recur135905_
                                      _xrest135953_
                                      _yrest135969_)))))
                       (if (##pair? _g135955135962_)
                           (let ((_hd135959135975_ (##car _g135955135962_))
                                 (_tl135960135977_ (##cdr _g135955135962_)))
                             (let* ((_yhd135980_ _hd135959135975_)
                                    (_yrest135982_ _tl135960135977_))
                               (_K135958135972_ _yrest135982_ _yhd135980_)))
                           (_E135957135966_)))))
                  (_K135914135947_
                   (lambda ()
                     (let* ((_yrest135931135936_ _yrest135908_)
                            (_E135933135940_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135931135936_)))
                            (_K135934135944_
                             (lambda ()
                               (_f135901_ _xrest135907_ _yrest135908_))))
                       (if (not (gx#stx-null? _yrest135931135936_))
                           (_K135934135944_)
                           (_E135933135940_))))))
              (let ((_try-match135911135950_
                     (lambda ()
                       (if (not (null? _g135909135919_))
                           (_K135914135947_)
                           (_else135912135927_)))))
                (if (##pair? _g135909135919_)
                    (let ((_tl135917135989_ (##cdr _g135909135919_))
                          (_hd135916135987_ (##car _g135909135919_)))
                      (let ((_xhd135992_ _hd135916135987_)
                            (_xrest135994_ _tl135917135989_))
                        (_K135915135984_ _xrest135994_ _xhd135992_)))
                    (_try-match135911135950_))))))))
    (define gx#stx-andmap
      (lambda (_f135851_ _stx135852_)
        (if (procedure? _f135851_)
            '#!void
            (error '"expected procedure" _f135851_))
        (let _lp135854_ ((_rest135856_ _stx135852_))
          (let* ((_g135857135867_ (gx#syntax-e _rest135856_))
                 (_else135860135875_ (lambda () (_f135851_ _rest135856_))))
            (let ((_K135863135889_
                   (lambda (_rest135886_ _hd135887_)
                     (if (_f135851_ _hd135887_)
                         (_lp135854_ _rest135886_)
                         '#f)))
                  (_K135862135880_ (lambda () '#t)))
              (let ((_try-match135859135883_
                     (lambda ()
                       (if (##null? _g135857135867_)
                           (_K135862135880_)
                           (_else135860135875_)))))
                (if (##pair? _g135857135867_)
                    (let ((_tl135865135894_ (##cdr _g135857135867_))
                          (_hd135864135892_ (##car _g135857135867_)))
                      (let ((_hd135897_ _hd135864135892_)
                            (_rest135899_ _tl135865135894_))
                        (_K135863135889_ _rest135899_ _hd135897_)))
                    (_try-match135859135883_))))))))
    (define gx#stx-ormap
      (lambda (_f135798_ _stx135799_)
        (if (procedure? _f135798_)
            '#!void
            (error '"expected procedure" _f135798_))
        (let _lp135801_ ((_rest135803_ _stx135799_))
          (let* ((_g135804135814_ (gx#syntax-e _rest135803_))
                 (_else135807135822_ (lambda () (_f135798_ _rest135803_))))
            (let ((_K135810135839_
                   (lambda (_rest135833_ _hd135834_)
                     (let ((_$e135836_ (_f135798_ _hd135834_)))
                       (if _$e135836_ _$e135836_ (_lp135801_ _rest135833_)))))
                  (_K135809135827_ (lambda () '#f)))
              (let ((_try-match135806135830_
                     (lambda ()
                       (if (##null? _g135804135814_)
                           (_K135809135827_)
                           (_else135807135822_)))))
                (if (##pair? _g135804135814_)
                    (let ((_tl135812135844_ (##cdr _g135804135814_))
                          (_hd135811135842_ (##car _g135804135814_)))
                      (let ((_hd135847_ _hd135811135842_)
                            (_rest135849_ _tl135812135844_))
                        (_K135810135839_ _rest135849_ _hd135847_)))
                    (_try-match135806135830_))))))))
    (define gx#stx-foldl
      (lambda (_f135746_ _iv135747_ _stx135748_)
        (if (procedure? _f135746_)
            '#!void
            (error '"expected procedure" _f135746_))
        (let _lp135750_ ((_r135752_ _iv135747_) (_rest135753_ _stx135748_))
          (let* ((_g135754135764_ (gx#syntax-e _rest135753_))
                 (_else135757135772_
                  (lambda () (_f135746_ _rest135753_ _r135752_))))
            (let ((_K135760135786_
                   (lambda (_rest135783_ _hd135784_)
                     (_lp135750_
                      (_f135746_ _hd135784_ _r135752_)
                      _rest135783_)))
                  (_K135759135777_ (lambda () _r135752_)))
              (let ((_try-match135756135780_
                     (lambda ()
                       (if (##null? _g135754135764_)
                           (_K135759135777_)
                           (_else135757135772_)))))
                (if (##pair? _g135754135764_)
                    (let ((_tl135762135791_ (##cdr _g135754135764_))
                          (_hd135761135789_ (##car _g135754135764_)))
                      (let ((_hd135794_ _hd135761135789_)
                            (_rest135796_ _tl135762135791_))
                        (_K135760135786_ _rest135796_ _hd135794_)))
                    (_try-match135756135780_))))))))
    (define gx#stx-foldr
      (lambda (_f135695_ _iv135696_ _stx135697_)
        (if (procedure? _f135695_)
            '#!void
            (error '"expected procedure" _f135695_))
        (let _recur135699_ ((_rest135701_ _stx135697_))
          (let* ((_g135702135712_ (gx#syntax-e _rest135701_))
                 (_else135705135720_
                  (lambda () (_f135695_ _rest135701_ _iv135696_))))
            (let ((_K135708135734_
                   (lambda (_rest135731_ _hd135732_)
                     (_f135695_ _hd135732_ (_recur135699_ _rest135731_))))
                  (_K135707135725_ (lambda () _iv135696_)))
              (let ((_try-match135704135728_
                     (lambda ()
                       (if (##null? _g135702135712_)
                           (_K135707135725_)
                           (_else135705135720_)))))
                (if (##pair? _g135702135712_)
                    (let ((_tl135710135739_ (##cdr _g135702135712_))
                          (_hd135709135737_ (##car _g135702135712_)))
                      (let ((_hd135742_ _hd135709135737_)
                            (_rest135744_ _tl135710135739_))
                        (_K135708135734_ _rest135744_ _hd135742_)))
                    (_try-match135704135728_))))))))
    (define gx#stx-reverse
      (lambda (_stx135693_) (gx#stx-foldl cons '() _stx135693_)))
    (define gx#stx-last
      (lambda (_stx135654_)
        (let _lp135656_ ((_rest135658_ _stx135654_))
          (let* ((_g135659135667_ (gx#syntax-e _rest135658_))
                 (_else135661135675_ (lambda () _rest135658_))
                 (_K135663135681_
                  (lambda (_rest135678_ _hd135679_)
                    (if (gx#stx-null? _rest135678_)
                        _hd135679_
                        (_lp135656_ _rest135678_)))))
            (if (##pair? _g135659135667_)
                (let ((_hd135664135684_ (##car _g135659135667_))
                      (_tl135665135686_ (##cdr _g135659135667_)))
                  (let* ((_hd135689_ _hd135664135684_)
                         (_rest135691_ _tl135665135686_))
                    (_K135663135681_ _rest135691_ _hd135689_)))
                (_else135661135675_))))))
    (define gx#stx-last-pair
      (lambda (_stx135625_)
        (let _lp135627_ ((_hd135629_ _stx135625_))
          (let* ((_g135630135637_ (gx#syntax-e _hd135629_))
                 (_E135632135641_
                  (lambda () (error '"No clause matching" _g135630135637_)))
                 (_K135633135646_
                  (lambda (_rest135644_)
                    (if (gx#stx-pair? _rest135644_)
                        (_lp135627_ _rest135644_)
                        _hd135629_))))
            (if (##pair? _g135630135637_)
                (let* ((_tl135635135649_ (##cdr _g135630135637_))
                       (_rest135652_ _tl135635135649_))
                  (_K135633135646_ _rest135652_))
                (_E135632135641_))))))
    (define gx#stx-list-tail
      (lambda (_stx135594_ _k135595_)
        (let _lp135597_ ((_rest135599_ _stx135594_) (_k135600_ _k135595_))
          (if (fxpositive? _k135600_)
              (let* ((_g135601135608_ (gx#syntax-e _rest135599_))
                     (_E135603135612_
                      (lambda ()
                        (error '"No clause matching" _g135601135608_)))
                     (_K135604135617_
                      (lambda (_rest135615_)
                        (_lp135597_ _rest135615_ (fx- _k135600_ '1)))))
                (if (##pair? _g135601135608_)
                    (let* ((_tl135606135620_ (##cdr _g135601135608_))
                           (_rest135623_ _tl135606135620_))
                      (_K135604135617_ _rest135623_))
                    (_E135603135612_)))
              _rest135599_))))
    (define gx#stx-list-ref
      (lambda (_stx135591_ _k135592_)
        (gx#stx-car (gx#stx-list-tail _stx135591_ _k135592_))))
    (define gx#stx-plist?__%
      (lambda (_stx135503_ _key?135504_)
        (if (procedure? _key?135504_)
            '#!void
            (error '"expected procedure" _key?135504_))
        (let _lp135506_ ((_rest135508_ _stx135503_))
          (let* ((_g135509135519_ (gx#stx-e _rest135508_))
                 (_else135512135527_ (lambda () '#f)))
            (let ((_K135515135569_
                   (lambda (_rest135538_ _hd135539_)
                     (if (_key?135504_ _hd135539_)
                         (let* ((_g135540135548_ (gx#stx-e _rest135538_))
                                (_else135542135556_ (lambda () '#f))
                                (_K135544135561_
                                 (lambda (_rest135559_)
                                   (_lp135506_ _rest135559_))))
                           (if (##pair? _g135540135548_)
                               (let* ((_tl135546135564_
                                       (##cdr _g135540135548_))
                                      (_rest135567_ _tl135546135564_))
                                 (_lp135506_ _rest135567_))
                               (_else135542135556_)))
                         '#f)))
                  (_K135514135532_ (lambda () '#t)))
              (let ((_try-match135511135535_
                     (lambda ()
                       (if (##null? _g135509135519_)
                           (_K135514135532_)
                           (_else135512135527_)))))
                (if (##pair? _g135509135519_)
                    (let ((_tl135517135574_ (##cdr _g135509135519_))
                          (_hd135516135572_ (##car _g135509135519_)))
                      (let ((_hd135577_ _hd135516135572_)
                            (_rest135579_ _tl135517135574_))
                        (_K135515135569_ _rest135579_ _hd135577_)))
                    (_try-match135511135535_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx135584_)
        (let ((_key?135586_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx135584_ _key?135586_))))
    (define gx#stx-plist?
      (lambda _g140759_
        (let ((_g140758_ (##length _g140759_)))
          (cond ((##fx= _g140758_ 1)
                 (apply (lambda (_stx135584_) (gx#stx-plist?__0 _stx135584_))
                        _g140759_))
                ((##fx= _g140758_ 2)
                 (apply (lambda (_stx135588_ _key?135589_)
                          (gx#stx-plist?__% _stx135588_ _key?135589_))
                        _g140759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140759_))))))
    (define gx#stx-getq__%
      (lambda (_key135421_ _stx135422_ _key=?135423_)
        (if (procedure? _key=?135423_)
            '#!void
            (error '"expected procedure" _key=?135423_))
        (let _lp135425_ ((_rest135427_ _stx135422_))
          (let* ((_g135428135436_ (gx#syntax-e _rest135427_))
                 (_else135430135444_ (lambda () '#f))
                 (_K135432135478_
                  (lambda (_rest135447_ _hd135448_)
                    (let* ((_g135449135456_ (gx#syntax-e _rest135447_))
                           (_E135451135460_
                            (lambda ()
                              (error '"No clause matching" _g135449135456_)))
                           (_K135452135466_
                            (lambda (_rest135463_ _val135464_)
                              (if (_key=?135423_ _hd135448_ _key135421_)
                                  _val135464_
                                  (_lp135425_ _rest135463_)))))
                      (if (##pair? _g135449135456_)
                          (let ((_hd135453135469_ (##car _g135449135456_))
                                (_tl135454135471_ (##cdr _g135449135456_)))
                            (let* ((_val135474_ _hd135453135469_)
                                   (_rest135476_ _tl135454135471_))
                              (_K135452135466_ _rest135476_ _val135474_)))
                          (_E135451135460_))))))
            (if (##pair? _g135428135436_)
                (let ((_hd135433135481_ (##car _g135428135436_))
                      (_tl135434135483_ (##cdr _g135428135436_)))
                  (let* ((_hd135486_ _hd135433135481_)
                         (_rest135488_ _tl135434135483_))
                    (_K135432135478_ _rest135488_ _hd135486_)))
                (_else135430135444_))))))
    (define gx#stx-getq__0
      (lambda (_key135493_ _stx135494_)
        (let ((_key=?135496_ gx#stx-eq?))
          (gx#stx-getq__% _key135493_ _stx135494_ _key=?135496_))))
    (define gx#stx-getq
      (lambda _g140761_
        (let ((_g140760_ (##length _g140761_)))
          (cond ((##fx= _g140760_ 2)
                 (apply (lambda (_key135493_ _stx135494_)
                          (gx#stx-getq__0 _key135493_ _stx135494_))
                        _g140761_))
                ((##fx= _g140760_ 3)
                 (apply (lambda (_key135498_ _stx135499_ _key=?135500_)
                          (gx#stx-getq__%
                           _key135498_
                           _stx135499_
                           _key=?135500_))
                        _g140761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140761_))))))))
