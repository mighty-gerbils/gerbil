(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708203245)
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
      (lambda _$args136598_
        (apply make-instance gx#identifier-wrap::t _$args136598_)))
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
      (lambda _$args136595_
        (apply make-instance gx#syntax-wrap::t _$args136595_)))
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
      (lambda _$args136592_
        (apply make-instance gx#syntax-quote::t _$args136592_)))
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
      (lambda (_stx136590_) (symbol? (gx#stx-e _stx136590_))))
    (define gx#identifier-quote?
      (lambda (_stx136588_)
        (if (##structure-direct-instance-of? _stx136588_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx136588_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx136586_)
        (if (##structure-direct-instance-of? _stx136586_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx136586_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx136586_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx136584_)
        (if (##structure-direct-instance-of? _stx136584_ 'gx#syntax-quote::t)
            _stx136584_
            (if (##structure-direct-instance-of?
                 _stx136584_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx136584_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx136567_)
        (if (##structure-direct-instance-of? _stx136567_ 'gx#syntax-wrap::t)
            (let _lp136569_ ((_e136571_
                              (##unchecked-structure-ref
                               _stx136567_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks136572_
                              (cons (##unchecked-structure-ref
                                     _stx136567_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e136571_)
                  (let ((_$e136574_ (##type-id (##structure-type _e136571_))))
                    (if (eq? 'gx#syntax-wrap::t _$e136574_)
                        (_lp136569_
                         (##unchecked-structure-ref _e136571_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e136571_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks136572_))
                        (if (or (eq? 'gx#syntax-quote::t _$e136574_)
                                (eq? 'gx#identifier-wrap::t _$e136574_))
                            (##unchecked-structure-ref
                             _e136571_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e136574_)
                                (_lp136569_
                                 (##unchecked-structure-ref
                                  _e136571_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks136572_)
                                _e136571_))))
                  (if (null? _marks136572_)
                      _e136571_
                      (if (pair? _e136571_)
                          (cons (gx#stx-wrap (car _e136571_) _marks136572_)
                                (gx#stx-wrap (cdr _e136571_) _marks136572_))
                          (if (vector? _e136571_)
                              (vector-map
                               (lambda (_g136579136581_)
                                 (gx#stx-wrap _g136579136581_ _marks136572_))
                               _e136571_)
                              (if (box? _e136571_)
                                  (box (gx#stx-wrap
                                        (unbox _e136571_)
                                        _marks136572_))
                                  _e136571_))))))
            (if (##structure-instance-of? _stx136567_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136567_ '1 gx#AST::t '#f)
                _stx136567_))))
    (define gx#syntax->datum
      (lambda (_stx136565_)
        (if (##structure-instance-of? _stx136565_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx136565_ '1 gx#AST::t '#f))
            (if (pair? _stx136565_)
                (cons (gx#syntax->datum (car _stx136565_))
                      (gx#syntax->datum (cdr _stx136565_)))
                (if (vector? _stx136565_)
                    (vector-map gx#syntax->datum _stx136565_)
                    (if (box? _stx136565_)
                        (box (gx#syntax->datum (unbox _stx136565_)))
                        _stx136565_))))))
    (define gx#datum->syntax__%
      (lambda (_stx136508_ _datum136509_ _src136510_ _quote?136511_)
        (letrec ((_wrap-datum136513_
                  (lambda (_e136537_ _marks136538_)
                    (_wrap-inner136515_
                     _e136537_
                     (lambda (_g136539136541_)
                       (##structure
                        gx#identifier-wrap::t
                        _g136539136541_
                        _src136510_
                        _marks136538_)))))
                 (_wrap-quote136514_
                  (lambda (_e136529_ _ctx136530_ _marks136531_)
                    (_wrap-inner136515_
                     _e136529_
                     (lambda (_g136532136534_)
                       (##structure
                        gx#syntax-quote::t
                        _g136532136534_
                        _src136510_
                        _ctx136530_
                        _marks136531_)))))
                 (_wrap-inner136515_
                  (lambda (_e136522_ _wrap-e136523_)
                    (let _recur136525_ ((_e136527_ _e136522_))
                      (if (symbol? _e136527_)
                          (_wrap-e136523_ _e136527_)
                          (if (pair? _e136527_)
                              (cons (_recur136525_ (car _e136527_))
                                    (_recur136525_ (cdr _e136527_)))
                              (if (vector? _e136527_)
                                  (vector-map _recur136525_ _e136527_)
                                  (if (box? _e136527_)
                                      (box (_recur136525_ (unbox _e136527_)))
                                      _e136527_)))))))
                 (_wrap-outer136516_
                  (lambda (_e136520_)
                    (if (##structure-instance-of? _e136520_ 'gerbil#AST::t)
                        _e136520_
                        (##structure gx#AST::t _e136520_ _src136510_)))))
          (if (##structure-instance-of? _datum136509_ 'gerbil#AST::t)
              _datum136509_
              (if (not _stx136508_)
                  (##structure gx#AST::t _datum136509_ _src136510_)
                  (if (gx#identifier? _stx136508_)
                      (let ((_stx136518_ (gx#stx-unwrap__0 _stx136508_)))
                        (_wrap-outer136516_
                         (if (##structure-direct-instance-of?
                              _stx136518_
                              'gx#syntax-quote::t)
                             (if _quote?136511_
                                 (_wrap-quote136514_
                                  _datum136509_
                                  (##unchecked-structure-ref
                                   _stx136518_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx136518_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum136513_
                                  _datum136509_
                                  (##unchecked-structure-ref
                                   _stx136518_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum136513_
                              _datum136509_
                              (##unchecked-structure-ref
                               _stx136518_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx136508_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx136547_ _datum136548_)
        (let* ((_src136550_ '#f) (_quote?136552_ '#t))
          (gx#datum->syntax__%
           _stx136547_
           _datum136548_
           _src136550_
           _quote?136552_))))
    (define gx#datum->syntax__1
      (lambda (_stx136554_ _datum136555_ _src136556_)
        (let ((_quote?136558_ '#t))
          (gx#datum->syntax__%
           _stx136554_
           _datum136555_
           _src136556_
           _quote?136558_))))
    (define gx#datum->syntax
      (lambda _g140746_
        (let ((_g140745_ (##length _g140746_)))
          (cond ((##fx= _g140745_ 2)
                 (apply (lambda (_stx136547_ _datum136548_)
                          (gx#datum->syntax__0 _stx136547_ _datum136548_))
                        _g140746_))
                ((##fx= _g140745_ 3)
                 (apply (lambda (_stx136554_ _datum136555_ _src136556_)
                          (gx#datum->syntax__1
                           _stx136554_
                           _datum136555_
                           _src136556_))
                        _g140746_))
                ((##fx= _g140745_ 4)
                 (apply (lambda (_stx136560_
                                 _datum136561_
                                 _src136562_
                                 _quote?136563_)
                          (gx#datum->syntax__%
                           _stx136560_
                           _datum136561_
                           _src136562_
                           _quote?136563_))
                        _g140746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140746_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx136484_ _marks136485_)
        (let _lp136487_ ((_e136489_ _stx136484_)
                         (_marks136490_ _marks136485_)
                         (_src136491_ (gx#stx-source _stx136484_)))
          (if (##structure-direct-instance-of? _e136489_ 'gx#syntax-wrap::t)
              (_lp136487_
               (##unchecked-structure-ref _e136489_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e136489_ '3 gx#syntax-wrap::t '#f)
                _marks136490_)
               (##unchecked-structure-ref _e136489_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e136489_
                   'gx#identifier-wrap::t)
                  (if (null? _marks136490_)
                      _e136489_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e136489_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e136489_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136489_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136490_)))
                  (if (##structure-direct-instance-of?
                       _e136489_
                       'gx#syntax-quote::t)
                      _e136489_
                      (if (##structure-instance-of? _e136489_ 'gerbil#AST::t)
                          (_lp136487_
                           (##unchecked-structure-ref
                            _e136489_
                            '1
                            gx#AST::t
                            '#f)
                           _marks136490_
                           (##unchecked-structure-ref
                            _e136489_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e136489_)
                              (##structure
                               gx#identifier-wrap::t
                               _e136489_
                               _src136491_
                               (reverse _marks136490_))
                              (if (null? _marks136490_)
                                  _e136489_
                                  (if (pair? _e136489_)
                                      (cons (gx#stx-wrap
                                             (car _e136489_)
                                             _marks136490_)
                                            (gx#stx-wrap
                                             (cdr _e136489_)
                                             _marks136490_))
                                      (if (vector? _e136489_)
                                          (vector-map
                                           (lambda (_g136492136494_)
                                             (gx#stx-wrap
                                              _g136492136494_
                                              _marks136490_))
                                           _e136489_)
                                          (if (box? _e136489_)
                                              (box (gx#stx-wrap
                                                    (unbox _e136489_)
                                                    _marks136490_))
                                              _e136489_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx136500_)
        (let ((_marks136502_ '()))
          (gx#stx-unwrap__% _stx136500_ _marks136502_))))
    (define gx#stx-unwrap
      (lambda _g140748_
        (let ((_g140747_ (##length _g140748_)))
          (cond ((##fx= _g140747_ 1)
                 (apply (lambda (_stx136500_) (gx#stx-unwrap__0 _stx136500_))
                        _g140748_))
                ((##fx= _g140747_ 2)
                 (apply (lambda (_stx136504_ _marks136505_)
                          (gx#stx-unwrap__% _stx136504_ _marks136505_))
                        _g140748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140748_))))))
    (define gx#stx-wrap
      (lambda (_stx136477_ _marks136478_)
        (foldl1 (lambda (_mark136480_ _stx136481_)
                  (gx#stx-apply-mark _stx136481_ _mark136480_))
                _stx136477_
                _marks136478_)))
    (define gx#stx-rewrap
      (lambda (_stx136471_ _marks136472_)
        (foldr1 (lambda (_mark136474_ _stx136475_)
                  (gx#stx-apply-mark _stx136475_ _mark136474_))
                _stx136471_
                _marks136472_)))
    (define gx#stx-apply-mark
      (lambda (_stx136468_ _mark136469_)
        (if (##structure-direct-instance-of? _stx136468_ 'gx#syntax-quote::t)
            _stx136468_
            (if (and (##structure-direct-instance-of?
                      _stx136468_
                      'gx#syntax-wrap::t)
                     (eq? _mark136469_
                          (##unchecked-structure-ref
                           _stx136468_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx136468_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx136468_
                 (gx#stx-source _stx136468_)
                 _mark136469_)))))
    (define gx#apply-mark
      (lambda (_mark136432_ _marks136433_)
        (let* ((_marks136434136442_ _marks136433_)
               (_else136436136450_
                (lambda () (cons _mark136432_ _marks136433_)))
               (_K136438136456_
                (lambda (_rest136453_ _hd136454_)
                  (if (eq? _mark136432_ _hd136454_)
                      _rest136453_
                      (cons _mark136432_ _marks136433_)))))
          (if (##pair? _marks136434136442_)
              (let ((_hd136439136459_ (##car _marks136434136442_))
                    (_tl136440136461_ (##cdr _marks136434136442_)))
                (let* ((_hd136464_ _hd136439136459_)
                       (_rest136466_ _tl136440136461_))
                  (_K136438136456_ _rest136466_ _hd136464_)))
              (_else136436136450_)))))
    (define gx#stx-e
      (lambda (_stx136430_)
        (if (##structure-direct-instance-of? _stx136430_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx136430_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx136430_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136430_ '1 gx#AST::t '#f)
                _stx136430_))))
    (define gx#stx-source
      (lambda (_stx136428_)
        (if (##structure-instance-of? _stx136428_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx136428_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx136422_ _src136423_)
        (if (or (##structure-instance-of? _stx136422_ 'gerbil#AST::t)
                (not _src136423_))
            _stx136422_
            (##structure gx#AST::t _stx136422_ _src136423_))))
    (define gx#stx-datum?
      (lambda (_stx136420_) (gx#self-quoting? (gx#stx-e _stx136420_))))
    (define gx#self-quoting?
      (lambda (_x136403_)
        (let ((_$e136405_ (immediate? _x136403_)))
          (if _$e136405_
              _$e136405_
              (let ((_$e136408_ (number? _x136403_)))
                (if _$e136408_
                    _$e136408_
                    (let ((_$e136411_ (keyword? _x136403_)))
                      (if _$e136411_
                          _$e136411_
                          (let ((_$e136414_ (string? _x136403_)))
                            (if _$e136414_
                                _$e136414_
                                (let ((_$e136417_ (vector? _x136403_)))
                                  (if _$e136417_
                                      _$e136417_
                                      (u8vector? _x136403_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136401_) (boolean? (gx#stx-e _e136401_))))
    (define gx#stx-keyword?
      (lambda (_e136399_) (keyword? (gx#stx-e _e136399_))))
    (define gx#stx-char? (lambda (_e136397_) (char? (gx#stx-e _e136397_))))
    (define gx#stx-number? (lambda (_e136395_) (number? (gx#stx-e _e136395_))))
    (define gx#stx-fixnum? (lambda (_e136393_) (fixnum? (gx#stx-e _e136393_))))
    (define gx#stx-string? (lambda (_e136391_) (string? (gx#stx-e _e136391_))))
    (define gx#stx-null? (lambda (_e136389_) (null? (gx#stx-e _e136389_))))
    (define gx#stx-pair? (lambda (_e136387_) (pair? (gx#stx-e _e136387_))))
    (define gx#stx-list?
      (lambda (_e136349_)
        (let* ((_g136350136359_ (gx#stx-e _e136349_))
               (_E136353136363_
                (lambda () (error '"No clause matching" _g136350136359_))))
          (let ((_K136355136379_
                 (lambda (_rest136377_) (gx#stx-list? _rest136377_)))
                (_K136354136369_ (lambda (_tail136367_) (null? _tail136367_))))
            (if (##pair? _g136350136359_)
                (let* ((_tl136357136382_ (##cdr _g136350136359_))
                       (_rest136385_ _tl136357136382_))
                  (gx#stx-list? _rest136385_))
                (let ((_tail136372_ _g136350136359_))
                  (null? _tail136372_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136342_)
        (let* ((_e136344_ (gx#stx-e _e136342_)) (_$e136346_ (pair? _e136344_)))
          (if _$e136346_ _$e136346_ (null? _e136344_)))))
    (define gx#stx-vector? (lambda (_e136340_) (vector? (gx#stx-e _e136340_))))
    (define gx#stx-box? (lambda (_e136338_) (box? (gx#stx-e _e136338_))))
    (define gx#stx-eq?
      (lambda (_x136335_ _y136336_)
        (eq? (gx#stx-e _x136335_) (gx#stx-e _y136336_))))
    (define gx#stx-eqv?
      (lambda (_x136332_ _y136333_)
        (eqv? (gx#stx-e _x136332_) (gx#stx-e _y136333_))))
    (define gx#stx-equal?
      (lambda (_x136329_ _y136330_)
        (equal? (gx#stx-e _x136329_) (gx#stx-e _y136330_))))
    (define gx#stx-false? (lambda (_x136327_) (not (gx#stx-e _x136327_))))
    (define gx#stx-identifier
      (lambda (_template136324_ . _args136325_)
        (gx#datum->syntax__1
         _template136324_
         (apply make-symbol (gx#syntax->datum _args136325_))
         (gx#stx-source _template136324_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136322_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136322_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136320_)
        (if (##structure-direct-instance-of?
             _stx136320_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136320_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136320_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136320_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136320_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136316_)
        (let ((_stx136318_ (gx#stx-unwrap__0 _stx136316_)))
          (if (gx#identifier-quote? _stx136318_)
              (##unchecked-structure-ref _stx136318_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136271_)
        (let* ((_g136272136282_ (gx#stx-e _stx136271_))
               (_else136275136290_ (lambda () '#f)))
          (let ((_K136278136304_
                 (lambda (_rest136301_ _hd136302_)
                   (if (gx#identifier? _hd136302_)
                       (gx#identifier-list? _rest136301_)
                       '#f)))
                (_K136277136295_ (lambda () '#t)))
            (let ((_try-match136274136298_
                   (lambda ()
                     (if (##null? _g136272136282_)
                         (_K136277136295_)
                         (_else136275136290_)))))
              (if (##pair? _g136272136282_)
                  (let ((_tl136280136309_ (##cdr _g136272136282_))
                        (_hd136279136307_ (##car _g136272136282_)))
                    (let ((_hd136312_ _hd136279136307_)
                          (_rest136314_ _tl136280136309_))
                      (_K136278136304_ _rest136314_ _hd136312_)))
                  (_try-match136274136298_)))))))
    (define gx#genident__%
      (lambda (_e136248_ _src136249_)
        (gx#stx-wrap-source
         (gensym (let ((_e136251_ (gx#stx-e _e136248_)))
                   (if (interned-symbol? _e136251_) _e136251_ 'g)))
         (let ((_$e136253_ (gx#stx-source _e136248_)))
           (if _$e136253_ _$e136253_ _src136249_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136260_ 'g) (_src136262_ '#f))
          (gx#genident__% _e136260_ _src136262_))))
    (define gx#genident__1
      (lambda (_e136264_)
        (let ((_src136266_ '#f)) (gx#genident__% _e136264_ _src136266_))))
    (define gx#genident
      (lambda _g140750_
        (let ((_g140749_ (##length _g140750_)))
          (cond ((##fx= _g140749_ 0)
                 (apply (lambda () (gx#genident__0)) _g140750_))
                ((##fx= _g140749_ 1)
                 (apply (lambda (_e136264_) (gx#genident__1 _e136264_))
                        _g140750_))
                ((##fx= _g140749_ 2)
                 (apply (lambda (_e136268_ _src136269_)
                          (gx#genident__% _e136268_ _src136269_))
                        _g140750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140750_))))))
    (define gx#gentemps
      (lambda (_stx-lst136245_) (gx#stx-map1 gx#genident _stx-lst136245_)))
    (define gx#syntax->list
      (lambda (_stx136243_) (gx#stx-map1 values _stx136243_)))
    (define gx#stx-car
      (lambda (_stx136240_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136240_)))))
    (define gx#stx-cdr
      (lambda (_stx136237_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136237_)))))
    (define gx#stx-length
      (lambda (_stx136202_)
        (let _lp136204_ ((_rest136206_ _stx136202_) (_n136207_ '0))
          (let* ((_g136208136216_ (gx#stx-e _rest136206_))
                 (_else136210136224_ (lambda () _n136207_))
                 (_K136212136229_
                  (lambda (_rest136227_)
                    (_lp136204_ _rest136227_ (fx+ _n136207_ '1)))))
            (if (##pair? _g136208136216_)
                (let* ((_tl136214136232_ (##cdr _g136208136216_))
                       (_rest136235_ _tl136214136232_))
                  (_K136212136229_ _rest136235_))
                (_else136210136224_))))))
    (define gx#stx-for-each
      (lambda _g140752_
        (let ((_g140751_ (##length _g140752_)))
          (cond ((##fx= _g140751_ 2)
                 (apply (lambda (_f136195_ _stx136196_)
                          (gx#stx-for-each1 _f136195_ _stx136196_))
                        _g140752_))
                ((##fx= _g140751_ 3)
                 (apply (lambda (_f136198_ _xstx136199_ _ystx136200_)
                          (gx#stx-for-each2
                           _f136198_
                           _xstx136199_
                           _ystx136200_))
                        _g140752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140752_))))))
    (define gx#stx-for-each1
      (lambda (_f136145_ _stx136146_)
        (if (procedure? _f136145_)
            '#!void
            (error '"expected procedure" _f136145_))
        (let _lp136148_ ((_rest136150_ _stx136146_))
          (let* ((_g136151136161_ (gx#syntax-e _rest136150_))
                 (_else136154136169_ (lambda () (_f136145_ _rest136150_))))
            (let ((_K136157136183_
                   (lambda (_rest136180_ _hd136181_)
                     (_f136145_ _hd136181_)
                     (_lp136148_ _rest136180_)))
                  (_K136156136174_ (lambda () '#!void)))
              (let ((_try-match136153136177_
                     (lambda ()
                       (if (##null? _g136151136161_)
                           (_K136156136174_)
                           (_else136154136169_)))))
                (if (##pair? _g136151136161_)
                    (let ((_tl136159136188_ (##cdr _g136151136161_))
                          (_hd136158136186_ (##car _g136151136161_)))
                      (let ((_hd136191_ _hd136158136186_)
                            (_rest136193_ _tl136159136188_))
                        (_K136157136183_ _rest136193_ _hd136191_)))
                    (_try-match136153136177_))))))))
    (define gx#stx-for-each2
      (lambda (_f136050_ _xstx136051_ _ystx136052_)
        (if (procedure? _f136050_)
            '#!void
            (error '"expected procedure" _f136050_))
        (let _lp136054_ ((_xrest136056_ _xstx136051_)
                         (_yrest136057_ _ystx136052_))
          (let* ((_g136058136068_ (gx#syntax-e _xrest136056_))
                 (_else136061136076_ (lambda () '#!void)))
            (let ((_K136064136133_
                   (lambda (_xrest136102_ _xhd136103_)
                     (let* ((_g136104136111_ (gx#syntax-e _yrest136057_))
                            (_E136106136115_
                             (lambda ()
                               (error '"No clause matching" _g136104136111_)))
                            (_K136107136121_
                             (lambda (_yrest136118_ _yhd136119_)
                               (_f136050_ _xhd136103_ _yhd136119_)
                               (_lp136054_ _xrest136102_ _yrest136118_))))
                       (if (##pair? _g136104136111_)
                           (let ((_hd136108136124_ (##car _g136104136111_))
                                 (_tl136109136126_ (##cdr _g136104136111_)))
                             (let* ((_yhd136129_ _hd136108136124_)
                                    (_yrest136131_ _tl136109136126_))
                               (_K136107136121_ _yrest136131_ _yhd136129_)))
                           (_E136106136115_)))))
                  (_K136063136096_
                   (lambda ()
                     (let* ((_yrest136080136085_ _yrest136057_)
                            (_E136082136089_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136080136085_)))
                            (_K136083136093_
                             (lambda ()
                               (_f136050_ _xrest136056_ _yrest136057_))))
                       (if (not (gx#stx-null? _yrest136080136085_))
                           (_K136083136093_)
                           (_E136082136089_))))))
              (let ((_try-match136060136099_
                     (lambda ()
                       (if (not (null? _g136058136068_))
                           (_K136063136096_)
                           (_else136061136076_)))))
                (if (##pair? _g136058136068_)
                    (let ((_tl136066136138_ (##cdr _g136058136068_))
                          (_hd136065136136_ (##car _g136058136068_)))
                      (let ((_xhd136141_ _hd136065136136_)
                            (_xrest136143_ _tl136066136138_))
                        (_K136064136133_ _xrest136143_ _xhd136141_)))
                    (_try-match136060136099_))))))))
    (define gx#stx-map
      (lambda _g140754_
        (let ((_g140753_ (##length _g140754_)))
          (cond ((##fx= _g140753_ 2)
                 (apply (lambda (_f136043_ _stx136044_)
                          (gx#stx-map1 _f136043_ _stx136044_))
                        _g140754_))
                ((##fx= _g140753_ 3)
                 (apply (lambda (_f136046_ _xstx136047_ _ystx136048_)
                          (gx#stx-map2 _f136046_ _xstx136047_ _ystx136048_))
                        _g140754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140754_))))))
    (define gx#stx-map1
      (lambda (_f135993_ _stx135994_)
        (if (procedure? _f135993_)
            '#!void
            (error '"expected procedure" _f135993_))
        (let _recur135996_ ((_rest135998_ _stx135994_))
          (let* ((_g135999136009_ (gx#syntax-e _rest135998_))
                 (_else136002136017_ (lambda () (_f135993_ _rest135998_))))
            (let ((_K136005136031_
                   (lambda (_rest136028_ _hd136029_)
                     (cons (_f135993_ _hd136029_)
                           (_recur135996_ _rest136028_))))
                  (_K136004136022_ (lambda () '())))
              (let ((_try-match136001136025_
                     (lambda ()
                       (if (##null? _g135999136009_)
                           (_K136004136022_)
                           (_else136002136017_)))))
                (if (##pair? _g135999136009_)
                    (let ((_tl136007136036_ (##cdr _g135999136009_))
                          (_hd136006136034_ (##car _g135999136009_)))
                      (let ((_hd136039_ _hd136006136034_)
                            (_rest136041_ _tl136007136036_))
                        (_K136005136031_ _rest136041_ _hd136039_)))
                    (_try-match136001136025_))))))))
    (define gx#stx-map2
      (lambda (_f135898_ _xstx135899_ _ystx135900_)
        (if (procedure? _f135898_)
            '#!void
            (error '"expected procedure" _f135898_))
        (let _recur135902_ ((_xrest135904_ _xstx135899_)
                            (_yrest135905_ _ystx135900_))
          (let* ((_g135906135916_ (gx#syntax-e _xrest135904_))
                 (_else135909135924_ (lambda () '())))
            (let ((_K135912135981_
                   (lambda (_xrest135950_ _xhd135951_)
                     (let* ((_g135952135959_ (gx#syntax-e _yrest135905_))
                            (_E135954135963_
                             (lambda ()
                               (error '"No clause matching" _g135952135959_)))
                            (_K135955135969_
                             (lambda (_yrest135966_ _yhd135967_)
                               (cons (_f135898_ _xhd135951_ _yhd135967_)
                                     (_recur135902_
                                      _xrest135950_
                                      _yrest135966_)))))
                       (if (##pair? _g135952135959_)
                           (let ((_hd135956135972_ (##car _g135952135959_))
                                 (_tl135957135974_ (##cdr _g135952135959_)))
                             (let* ((_yhd135977_ _hd135956135972_)
                                    (_yrest135979_ _tl135957135974_))
                               (_K135955135969_ _yrest135979_ _yhd135977_)))
                           (_E135954135963_)))))
                  (_K135911135944_
                   (lambda ()
                     (let* ((_yrest135928135933_ _yrest135905_)
                            (_E135930135937_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135928135933_)))
                            (_K135931135941_
                             (lambda ()
                               (_f135898_ _xrest135904_ _yrest135905_))))
                       (if (not (gx#stx-null? _yrest135928135933_))
                           (_K135931135941_)
                           (_E135930135937_))))))
              (let ((_try-match135908135947_
                     (lambda ()
                       (if (not (null? _g135906135916_))
                           (_K135911135944_)
                           (_else135909135924_)))))
                (if (##pair? _g135906135916_)
                    (let ((_tl135914135986_ (##cdr _g135906135916_))
                          (_hd135913135984_ (##car _g135906135916_)))
                      (let ((_xhd135989_ _hd135913135984_)
                            (_xrest135991_ _tl135914135986_))
                        (_K135912135981_ _xrest135991_ _xhd135989_)))
                    (_try-match135908135947_))))))))
    (define gx#stx-andmap
      (lambda (_f135848_ _stx135849_)
        (if (procedure? _f135848_)
            '#!void
            (error '"expected procedure" _f135848_))
        (let _lp135851_ ((_rest135853_ _stx135849_))
          (let* ((_g135854135864_ (gx#syntax-e _rest135853_))
                 (_else135857135872_ (lambda () (_f135848_ _rest135853_))))
            (let ((_K135860135886_
                   (lambda (_rest135883_ _hd135884_)
                     (if (_f135848_ _hd135884_)
                         (_lp135851_ _rest135883_)
                         '#f)))
                  (_K135859135877_ (lambda () '#t)))
              (let ((_try-match135856135880_
                     (lambda ()
                       (if (##null? _g135854135864_)
                           (_K135859135877_)
                           (_else135857135872_)))))
                (if (##pair? _g135854135864_)
                    (let ((_tl135862135891_ (##cdr _g135854135864_))
                          (_hd135861135889_ (##car _g135854135864_)))
                      (let ((_hd135894_ _hd135861135889_)
                            (_rest135896_ _tl135862135891_))
                        (_K135860135886_ _rest135896_ _hd135894_)))
                    (_try-match135856135880_))))))))
    (define gx#stx-ormap
      (lambda (_f135795_ _stx135796_)
        (if (procedure? _f135795_)
            '#!void
            (error '"expected procedure" _f135795_))
        (let _lp135798_ ((_rest135800_ _stx135796_))
          (let* ((_g135801135811_ (gx#syntax-e _rest135800_))
                 (_else135804135819_ (lambda () (_f135795_ _rest135800_))))
            (let ((_K135807135836_
                   (lambda (_rest135830_ _hd135831_)
                     (let ((_$e135833_ (_f135795_ _hd135831_)))
                       (if _$e135833_ _$e135833_ (_lp135798_ _rest135830_)))))
                  (_K135806135824_ (lambda () '#f)))
              (let ((_try-match135803135827_
                     (lambda ()
                       (if (##null? _g135801135811_)
                           (_K135806135824_)
                           (_else135804135819_)))))
                (if (##pair? _g135801135811_)
                    (let ((_tl135809135841_ (##cdr _g135801135811_))
                          (_hd135808135839_ (##car _g135801135811_)))
                      (let ((_hd135844_ _hd135808135839_)
                            (_rest135846_ _tl135809135841_))
                        (_K135807135836_ _rest135846_ _hd135844_)))
                    (_try-match135803135827_))))))))
    (define gx#stx-foldl
      (lambda (_f135743_ _iv135744_ _stx135745_)
        (if (procedure? _f135743_)
            '#!void
            (error '"expected procedure" _f135743_))
        (let _lp135747_ ((_r135749_ _iv135744_) (_rest135750_ _stx135745_))
          (let* ((_g135751135761_ (gx#syntax-e _rest135750_))
                 (_else135754135769_
                  (lambda () (_f135743_ _rest135750_ _r135749_))))
            (let ((_K135757135783_
                   (lambda (_rest135780_ _hd135781_)
                     (_lp135747_
                      (_f135743_ _hd135781_ _r135749_)
                      _rest135780_)))
                  (_K135756135774_ (lambda () _r135749_)))
              (let ((_try-match135753135777_
                     (lambda ()
                       (if (##null? _g135751135761_)
                           (_K135756135774_)
                           (_else135754135769_)))))
                (if (##pair? _g135751135761_)
                    (let ((_tl135759135788_ (##cdr _g135751135761_))
                          (_hd135758135786_ (##car _g135751135761_)))
                      (let ((_hd135791_ _hd135758135786_)
                            (_rest135793_ _tl135759135788_))
                        (_K135757135783_ _rest135793_ _hd135791_)))
                    (_try-match135753135777_))))))))
    (define gx#stx-foldr
      (lambda (_f135692_ _iv135693_ _stx135694_)
        (if (procedure? _f135692_)
            '#!void
            (error '"expected procedure" _f135692_))
        (let _recur135696_ ((_rest135698_ _stx135694_))
          (let* ((_g135699135709_ (gx#syntax-e _rest135698_))
                 (_else135702135717_
                  (lambda () (_f135692_ _rest135698_ _iv135693_))))
            (let ((_K135705135731_
                   (lambda (_rest135728_ _hd135729_)
                     (_f135692_ _hd135729_ (_recur135696_ _rest135728_))))
                  (_K135704135722_ (lambda () _iv135693_)))
              (let ((_try-match135701135725_
                     (lambda ()
                       (if (##null? _g135699135709_)
                           (_K135704135722_)
                           (_else135702135717_)))))
                (if (##pair? _g135699135709_)
                    (let ((_tl135707135736_ (##cdr _g135699135709_))
                          (_hd135706135734_ (##car _g135699135709_)))
                      (let ((_hd135739_ _hd135706135734_)
                            (_rest135741_ _tl135707135736_))
                        (_K135705135731_ _rest135741_ _hd135739_)))
                    (_try-match135701135725_))))))))
    (define gx#stx-reverse
      (lambda (_stx135690_) (gx#stx-foldl cons '() _stx135690_)))
    (define gx#stx-last
      (lambda (_stx135651_)
        (let _lp135653_ ((_rest135655_ _stx135651_))
          (let* ((_g135656135664_ (gx#syntax-e _rest135655_))
                 (_else135658135672_ (lambda () _rest135655_))
                 (_K135660135678_
                  (lambda (_rest135675_ _hd135676_)
                    (if (gx#stx-null? _rest135675_)
                        _hd135676_
                        (_lp135653_ _rest135675_)))))
            (if (##pair? _g135656135664_)
                (let ((_hd135661135681_ (##car _g135656135664_))
                      (_tl135662135683_ (##cdr _g135656135664_)))
                  (let* ((_hd135686_ _hd135661135681_)
                         (_rest135688_ _tl135662135683_))
                    (_K135660135678_ _rest135688_ _hd135686_)))
                (_else135658135672_))))))
    (define gx#stx-last-pair
      (lambda (_stx135622_)
        (let _lp135624_ ((_hd135626_ _stx135622_))
          (let* ((_g135627135634_ (gx#syntax-e _hd135626_))
                 (_E135629135638_
                  (lambda () (error '"No clause matching" _g135627135634_)))
                 (_K135630135643_
                  (lambda (_rest135641_)
                    (if (gx#stx-pair? _rest135641_)
                        (_lp135624_ _rest135641_)
                        _hd135626_))))
            (if (##pair? _g135627135634_)
                (let* ((_tl135632135646_ (##cdr _g135627135634_))
                       (_rest135649_ _tl135632135646_))
                  (_K135630135643_ _rest135649_))
                (_E135629135638_))))))
    (define gx#stx-list-tail
      (lambda (_stx135591_ _k135592_)
        (let _lp135594_ ((_rest135596_ _stx135591_) (_k135597_ _k135592_))
          (if (fxpositive? _k135597_)
              (let* ((_g135598135605_ (gx#syntax-e _rest135596_))
                     (_E135600135609_
                      (lambda ()
                        (error '"No clause matching" _g135598135605_)))
                     (_K135601135614_
                      (lambda (_rest135612_)
                        (_lp135594_ _rest135612_ (fx- _k135597_ '1)))))
                (if (##pair? _g135598135605_)
                    (let* ((_tl135603135617_ (##cdr _g135598135605_))
                           (_rest135620_ _tl135603135617_))
                      (_K135601135614_ _rest135620_))
                    (_E135600135609_)))
              _rest135596_))))
    (define gx#stx-list-ref
      (lambda (_stx135588_ _k135589_)
        (gx#stx-car (gx#stx-list-tail _stx135588_ _k135589_))))
    (define gx#stx-plist?__%
      (lambda (_stx135500_ _key?135501_)
        (if (procedure? _key?135501_)
            '#!void
            (error '"expected procedure" _key?135501_))
        (let _lp135503_ ((_rest135505_ _stx135500_))
          (let* ((_g135506135516_ (gx#stx-e _rest135505_))
                 (_else135509135524_ (lambda () '#f)))
            (let ((_K135512135566_
                   (lambda (_rest135535_ _hd135536_)
                     (if (_key?135501_ _hd135536_)
                         (let* ((_g135537135545_ (gx#stx-e _rest135535_))
                                (_else135539135553_ (lambda () '#f))
                                (_K135541135558_
                                 (lambda (_rest135556_)
                                   (_lp135503_ _rest135556_))))
                           (if (##pair? _g135537135545_)
                               (let* ((_tl135543135561_
                                       (##cdr _g135537135545_))
                                      (_rest135564_ _tl135543135561_))
                                 (_lp135503_ _rest135564_))
                               (_else135539135553_)))
                         '#f)))
                  (_K135511135529_ (lambda () '#t)))
              (let ((_try-match135508135532_
                     (lambda ()
                       (if (##null? _g135506135516_)
                           (_K135511135529_)
                           (_else135509135524_)))))
                (if (##pair? _g135506135516_)
                    (let ((_tl135514135571_ (##cdr _g135506135516_))
                          (_hd135513135569_ (##car _g135506135516_)))
                      (let ((_hd135574_ _hd135513135569_)
                            (_rest135576_ _tl135514135571_))
                        (_K135512135566_ _rest135576_ _hd135574_)))
                    (_try-match135508135532_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx135581_)
        (let ((_key?135583_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx135581_ _key?135583_))))
    (define gx#stx-plist?
      (lambda _g140756_
        (let ((_g140755_ (##length _g140756_)))
          (cond ((##fx= _g140755_ 1)
                 (apply (lambda (_stx135581_) (gx#stx-plist?__0 _stx135581_))
                        _g140756_))
                ((##fx= _g140755_ 2)
                 (apply (lambda (_stx135585_ _key?135586_)
                          (gx#stx-plist?__% _stx135585_ _key?135586_))
                        _g140756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140756_))))))
    (define gx#stx-getq__%
      (lambda (_key135418_ _stx135419_ _key=?135420_)
        (if (procedure? _key=?135420_)
            '#!void
            (error '"expected procedure" _key=?135420_))
        (let _lp135422_ ((_rest135424_ _stx135419_))
          (let* ((_g135425135433_ (gx#syntax-e _rest135424_))
                 (_else135427135441_ (lambda () '#f))
                 (_K135429135475_
                  (lambda (_rest135444_ _hd135445_)
                    (let* ((_g135446135453_ (gx#syntax-e _rest135444_))
                           (_E135448135457_
                            (lambda ()
                              (error '"No clause matching" _g135446135453_)))
                           (_K135449135463_
                            (lambda (_rest135460_ _val135461_)
                              (if (_key=?135420_ _hd135445_ _key135418_)
                                  _val135461_
                                  (_lp135422_ _rest135460_)))))
                      (if (##pair? _g135446135453_)
                          (let ((_hd135450135466_ (##car _g135446135453_))
                                (_tl135451135468_ (##cdr _g135446135453_)))
                            (let* ((_val135471_ _hd135450135466_)
                                   (_rest135473_ _tl135451135468_))
                              (_K135449135463_ _rest135473_ _val135471_)))
                          (_E135448135457_))))))
            (if (##pair? _g135425135433_)
                (let ((_hd135430135478_ (##car _g135425135433_))
                      (_tl135431135480_ (##cdr _g135425135433_)))
                  (let* ((_hd135483_ _hd135430135478_)
                         (_rest135485_ _tl135431135480_))
                    (_K135429135475_ _rest135485_ _hd135483_)))
                (_else135427135441_))))))
    (define gx#stx-getq__0
      (lambda (_key135490_ _stx135491_)
        (let ((_key=?135493_ gx#stx-eq?))
          (gx#stx-getq__% _key135490_ _stx135491_ _key=?135493_))))
    (define gx#stx-getq
      (lambda _g140758_
        (let ((_g140757_ (##length _g140758_)))
          (cond ((##fx= _g140757_ 2)
                 (apply (lambda (_key135490_ _stx135491_)
                          (gx#stx-getq__0 _key135490_ _stx135491_))
                        _g140758_))
                ((##fx= _g140757_ 3)
                 (apply (lambda (_key135495_ _stx135496_ _key=?135497_)
                          (gx#stx-getq__%
                           _key135495_
                           _stx135496_
                           _key=?135497_))
                        _g140758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140758_))))))))
