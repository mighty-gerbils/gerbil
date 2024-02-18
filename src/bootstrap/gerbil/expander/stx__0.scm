(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708289480)
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
      (lambda _$args150888_
        (apply make-instance gx#identifier-wrap::t _$args150888_)))
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
      (lambda _$args150885_
        (apply make-instance gx#syntax-wrap::t _$args150885_)))
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
      (lambda _$args150882_
        (apply make-instance gx#syntax-quote::t _$args150882_)))
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
      (lambda (_stx150880_) (symbol? (gx#stx-e _stx150880_))))
    (define gx#identifier-quote?
      (lambda (_stx150878_)
        (if (##structure-direct-instance-of? _stx150878_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx150878_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx150876_)
        (if (##structure-direct-instance-of? _stx150876_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx150876_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx150876_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx150874_)
        (if (##structure-direct-instance-of? _stx150874_ 'gx#syntax-quote::t)
            _stx150874_
            (if (##structure-direct-instance-of?
                 _stx150874_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx150874_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx150857_)
        (if (##structure-direct-instance-of? _stx150857_ 'gx#syntax-wrap::t)
            (let _lp150859_ ((_e150861_
                              (##unchecked-structure-ref
                               _stx150857_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks150862_
                              (cons (##unchecked-structure-ref
                                     _stx150857_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e150861_)
                  (let ((_$e150864_ (##type-id (##structure-type _e150861_))))
                    (if (eq? 'gx#syntax-wrap::t _$e150864_)
                        (_lp150859_
                         (##unchecked-structure-ref _e150861_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e150861_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks150862_))
                        (if (or (eq? 'gx#syntax-quote::t _$e150864_)
                                (eq? 'gx#identifier-wrap::t _$e150864_))
                            (##unchecked-structure-ref
                             _e150861_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e150864_)
                                (_lp150859_
                                 (##unchecked-structure-ref
                                  _e150861_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks150862_)
                                _e150861_))))
                  (if (null? _marks150862_)
                      _e150861_
                      (if (pair? _e150861_)
                          (cons (gx#stx-wrap (car _e150861_) _marks150862_)
                                (gx#stx-wrap (cdr _e150861_) _marks150862_))
                          (if (vector? _e150861_)
                              (vector-map
                               (lambda (_g150869150871_)
                                 (gx#stx-wrap _g150869150871_ _marks150862_))
                               _e150861_)
                              (if (box? _e150861_)
                                  (box (gx#stx-wrap
                                        (unbox _e150861_)
                                        _marks150862_))
                                  _e150861_))))))
            (if (##structure-instance-of? _stx150857_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx150857_ '1 gx#AST::t '#f)
                _stx150857_))))
    (define gx#syntax->datum
      (lambda (_stx150855_)
        (if (##structure-instance-of? _stx150855_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx150855_ '1 gx#AST::t '#f))
            (if (pair? _stx150855_)
                (cons (gx#syntax->datum (car _stx150855_))
                      (gx#syntax->datum (cdr _stx150855_)))
                (if (vector? _stx150855_)
                    (vector-map gx#syntax->datum _stx150855_)
                    (if (box? _stx150855_)
                        (box (gx#syntax->datum (unbox _stx150855_)))
                        _stx150855_))))))
    (define gx#datum->syntax__%
      (lambda (_stx150798_ _datum150799_ _src150800_ _quote?150801_)
        (letrec ((_wrap-datum150803_
                  (lambda (_e150827_ _marks150828_)
                    (_wrap-inner150805_
                     _e150827_
                     (lambda (_g150829150831_)
                       (##structure
                        gx#identifier-wrap::t
                        _g150829150831_
                        _src150800_
                        _marks150828_)))))
                 (_wrap-quote150804_
                  (lambda (_e150819_ _ctx150820_ _marks150821_)
                    (_wrap-inner150805_
                     _e150819_
                     (lambda (_g150822150824_)
                       (##structure
                        gx#syntax-quote::t
                        _g150822150824_
                        _src150800_
                        _ctx150820_
                        _marks150821_)))))
                 (_wrap-inner150805_
                  (lambda (_e150812_ _wrap-e150813_)
                    (let _recur150815_ ((_e150817_ _e150812_))
                      (if (symbol? _e150817_)
                          (_wrap-e150813_ _e150817_)
                          (if (pair? _e150817_)
                              (cons (_recur150815_ (car _e150817_))
                                    (_recur150815_ (cdr _e150817_)))
                              (if (vector? _e150817_)
                                  (vector-map _recur150815_ _e150817_)
                                  (if (box? _e150817_)
                                      (box (_recur150815_ (unbox _e150817_)))
                                      _e150817_)))))))
                 (_wrap-outer150806_
                  (lambda (_e150810_)
                    (if (##structure-instance-of? _e150810_ 'gerbil#AST::t)
                        _e150810_
                        (##structure gx#AST::t _e150810_ _src150800_)))))
          (if (##structure-instance-of? _datum150799_ 'gerbil#AST::t)
              _datum150799_
              (if (not _stx150798_)
                  (##structure gx#AST::t _datum150799_ _src150800_)
                  (if (gx#identifier? _stx150798_)
                      (let ((_stx150808_ (gx#stx-unwrap__0 _stx150798_)))
                        (_wrap-outer150806_
                         (if (##structure-direct-instance-of?
                              _stx150808_
                              'gx#syntax-quote::t)
                             (if _quote?150801_
                                 (_wrap-quote150804_
                                  _datum150799_
                                  (##unchecked-structure-ref
                                   _stx150808_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx150808_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum150803_
                                  _datum150799_
                                  (##unchecked-structure-ref
                                   _stx150808_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum150803_
                              _datum150799_
                              (##unchecked-structure-ref
                               _stx150808_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx150798_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx150837_ _datum150838_)
        (let* ((_src150840_ '#f) (_quote?150842_ '#t))
          (gx#datum->syntax__%
           _stx150837_
           _datum150838_
           _src150840_
           _quote?150842_))))
    (define gx#datum->syntax__1
      (lambda (_stx150844_ _datum150845_ _src150846_)
        (let ((_quote?150848_ '#t))
          (gx#datum->syntax__%
           _stx150844_
           _datum150845_
           _src150846_
           _quote?150848_))))
    (define gx#datum->syntax
      (lambda _g155036_
        (let ((_g155035_ (##length _g155036_)))
          (cond ((##fx= _g155035_ 2)
                 (apply (lambda (_stx150837_ _datum150838_)
                          (gx#datum->syntax__0 _stx150837_ _datum150838_))
                        _g155036_))
                ((##fx= _g155035_ 3)
                 (apply (lambda (_stx150844_ _datum150845_ _src150846_)
                          (gx#datum->syntax__1
                           _stx150844_
                           _datum150845_
                           _src150846_))
                        _g155036_))
                ((##fx= _g155035_ 4)
                 (apply (lambda (_stx150850_
                                 _datum150851_
                                 _src150852_
                                 _quote?150853_)
                          (gx#datum->syntax__%
                           _stx150850_
                           _datum150851_
                           _src150852_
                           _quote?150853_))
                        _g155036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g155036_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx150774_ _marks150775_)
        (let _lp150777_ ((_e150779_ _stx150774_)
                         (_marks150780_ _marks150775_)
                         (_src150781_ (gx#stx-source _stx150774_)))
          (if (##structure-direct-instance-of? _e150779_ 'gx#syntax-wrap::t)
              (_lp150777_
               (##unchecked-structure-ref _e150779_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e150779_ '3 gx#syntax-wrap::t '#f)
                _marks150780_)
               (##unchecked-structure-ref _e150779_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e150779_
                   'gx#identifier-wrap::t)
                  (if (null? _marks150780_)
                      _e150779_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e150779_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e150779_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e150779_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks150780_)))
                  (if (##structure-direct-instance-of?
                       _e150779_
                       'gx#syntax-quote::t)
                      _e150779_
                      (if (##structure-instance-of? _e150779_ 'gerbil#AST::t)
                          (_lp150777_
                           (##unchecked-structure-ref
                            _e150779_
                            '1
                            gx#AST::t
                            '#f)
                           _marks150780_
                           (##unchecked-structure-ref
                            _e150779_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e150779_)
                              (##structure
                               gx#identifier-wrap::t
                               _e150779_
                               _src150781_
                               (reverse _marks150780_))
                              (if (null? _marks150780_)
                                  _e150779_
                                  (if (pair? _e150779_)
                                      (cons (gx#stx-wrap
                                             (car _e150779_)
                                             _marks150780_)
                                            (gx#stx-wrap
                                             (cdr _e150779_)
                                             _marks150780_))
                                      (if (vector? _e150779_)
                                          (vector-map
                                           (lambda (_g150782150784_)
                                             (gx#stx-wrap
                                              _g150782150784_
                                              _marks150780_))
                                           _e150779_)
                                          (if (box? _e150779_)
                                              (box (gx#stx-wrap
                                                    (unbox _e150779_)
                                                    _marks150780_))
                                              _e150779_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx150790_)
        (let ((_marks150792_ '()))
          (gx#stx-unwrap__% _stx150790_ _marks150792_))))
    (define gx#stx-unwrap
      (lambda _g155038_
        (let ((_g155037_ (##length _g155038_)))
          (cond ((##fx= _g155037_ 1)
                 (apply (lambda (_stx150790_) (gx#stx-unwrap__0 _stx150790_))
                        _g155038_))
                ((##fx= _g155037_ 2)
                 (apply (lambda (_stx150794_ _marks150795_)
                          (gx#stx-unwrap__% _stx150794_ _marks150795_))
                        _g155038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g155038_))))))
    (define gx#stx-wrap
      (lambda (_stx150767_ _marks150768_)
        (foldl1 (lambda (_mark150770_ _stx150771_)
                  (gx#stx-apply-mark _stx150771_ _mark150770_))
                _stx150767_
                _marks150768_)))
    (define gx#stx-rewrap
      (lambda (_stx150761_ _marks150762_)
        (foldr1 (lambda (_mark150764_ _stx150765_)
                  (gx#stx-apply-mark _stx150765_ _mark150764_))
                _stx150761_
                _marks150762_)))
    (define gx#stx-apply-mark
      (lambda (_stx150758_ _mark150759_)
        (if (##structure-direct-instance-of? _stx150758_ 'gx#syntax-quote::t)
            _stx150758_
            (if (and (##structure-direct-instance-of?
                      _stx150758_
                      'gx#syntax-wrap::t)
                     (eq? _mark150759_
                          (##unchecked-structure-ref
                           _stx150758_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx150758_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx150758_
                 (gx#stx-source _stx150758_)
                 _mark150759_)))))
    (define gx#apply-mark
      (lambda (_mark150722_ _marks150723_)
        (let* ((_marks150724150732_ _marks150723_)
               (_else150726150740_
                (lambda () (cons _mark150722_ _marks150723_)))
               (_K150728150746_
                (lambda (_rest150743_ _hd150744_)
                  (if (eq? _mark150722_ _hd150744_)
                      _rest150743_
                      (cons _mark150722_ _marks150723_)))))
          (if (##pair? _marks150724150732_)
              (let ((_hd150729150749_ (##car _marks150724150732_))
                    (_tl150730150751_ (##cdr _marks150724150732_)))
                (let* ((_hd150754_ _hd150729150749_)
                       (_rest150756_ _tl150730150751_))
                  (_K150728150746_ _rest150756_ _hd150754_)))
              (_else150726150740_)))))
    (define gx#stx-e
      (lambda (_stx150720_)
        (if (##structure-direct-instance-of? _stx150720_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx150720_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx150720_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx150720_ '1 gx#AST::t '#f)
                _stx150720_))))
    (define gx#stx-source
      (lambda (_stx150718_)
        (if (##structure-instance-of? _stx150718_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx150718_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx150712_ _src150713_)
        (if (or (##structure-instance-of? _stx150712_ 'gerbil#AST::t)
                (not _src150713_))
            _stx150712_
            (##structure gx#AST::t _stx150712_ _src150713_))))
    (define gx#stx-datum?
      (lambda (_stx150710_) (gx#self-quoting? (gx#stx-e _stx150710_))))
    (define gx#self-quoting?
      (lambda (_x150693_)
        (let ((_$e150695_ (immediate? _x150693_)))
          (if _$e150695_
              _$e150695_
              (let ((_$e150698_ (number? _x150693_)))
                (if _$e150698_
                    _$e150698_
                    (let ((_$e150701_ (keyword? _x150693_)))
                      (if _$e150701_
                          _$e150701_
                          (let ((_$e150704_ (string? _x150693_)))
                            (if _$e150704_
                                _$e150704_
                                (let ((_$e150707_ (vector? _x150693_)))
                                  (if _$e150707_
                                      _$e150707_
                                      (u8vector? _x150693_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e150691_) (boolean? (gx#stx-e _e150691_))))
    (define gx#stx-keyword?
      (lambda (_e150689_) (keyword? (gx#stx-e _e150689_))))
    (define gx#stx-char? (lambda (_e150687_) (char? (gx#stx-e _e150687_))))
    (define gx#stx-number? (lambda (_e150685_) (number? (gx#stx-e _e150685_))))
    (define gx#stx-fixnum? (lambda (_e150683_) (fixnum? (gx#stx-e _e150683_))))
    (define gx#stx-string? (lambda (_e150681_) (string? (gx#stx-e _e150681_))))
    (define gx#stx-null? (lambda (_e150679_) (null? (gx#stx-e _e150679_))))
    (define gx#stx-pair? (lambda (_e150677_) (pair? (gx#stx-e _e150677_))))
    (define gx#stx-list?
      (lambda (_e150639_)
        (let* ((_g150640150649_ (gx#stx-e _e150639_))
               (_E150643150653_
                (lambda () (error '"No clause matching" _g150640150649_))))
          (let ((_K150645150669_
                 (lambda (_rest150667_) (gx#stx-list? _rest150667_)))
                (_K150644150659_ (lambda (_tail150657_) (null? _tail150657_))))
            (if (##pair? _g150640150649_)
                (let* ((_tl150647150672_ (##cdr _g150640150649_))
                       (_rest150675_ _tl150647150672_))
                  (gx#stx-list? _rest150675_))
                (let ((_tail150662_ _g150640150649_))
                  (null? _tail150662_)))))))
    (define gx#stx-pair/null?
      (lambda (_e150632_)
        (let* ((_e150634_ (gx#stx-e _e150632_)) (_$e150636_ (pair? _e150634_)))
          (if _$e150636_ _$e150636_ (null? _e150634_)))))
    (define gx#stx-vector? (lambda (_e150630_) (vector? (gx#stx-e _e150630_))))
    (define gx#stx-box? (lambda (_e150628_) (box? (gx#stx-e _e150628_))))
    (define gx#stx-eq?
      (lambda (_x150625_ _y150626_)
        (eq? (gx#stx-e _x150625_) (gx#stx-e _y150626_))))
    (define gx#stx-eqv?
      (lambda (_x150622_ _y150623_)
        (eqv? (gx#stx-e _x150622_) (gx#stx-e _y150623_))))
    (define gx#stx-equal?
      (lambda (_x150619_ _y150620_)
        (equal? (gx#stx-e _x150619_) (gx#stx-e _y150620_))))
    (define gx#stx-false? (lambda (_x150617_) (not (gx#stx-e _x150617_))))
    (define gx#stx-identifier
      (lambda (_template150614_ . _args150615_)
        (gx#datum->syntax__1
         _template150614_
         (apply make-symbol (gx#syntax->datum _args150615_))
         (gx#stx-source _template150614_))))
    (define gx#stx-identifier-marks
      (lambda (_stx150612_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx150612_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx150610_)
        (if (##structure-direct-instance-of?
             _stx150610_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx150610_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx150610_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx150610_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx150610_)))))
    (define gx#stx-identifier-context
      (lambda (_stx150606_)
        (let ((_stx150608_ (gx#stx-unwrap__0 _stx150606_)))
          (if (gx#identifier-quote? _stx150608_)
              (##unchecked-structure-ref _stx150608_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx150561_)
        (let* ((_g150562150572_ (gx#stx-e _stx150561_))
               (_else150565150580_ (lambda () '#f)))
          (let ((_K150568150594_
                 (lambda (_rest150591_ _hd150592_)
                   (if (gx#identifier? _hd150592_)
                       (gx#identifier-list? _rest150591_)
                       '#f)))
                (_K150567150585_ (lambda () '#t)))
            (let ((_try-match150564150588_
                   (lambda ()
                     (if (##null? _g150562150572_)
                         (_K150567150585_)
                         (_else150565150580_)))))
              (if (##pair? _g150562150572_)
                  (let ((_tl150570150599_ (##cdr _g150562150572_))
                        (_hd150569150597_ (##car _g150562150572_)))
                    (let ((_hd150602_ _hd150569150597_)
                          (_rest150604_ _tl150570150599_))
                      (_K150568150594_ _rest150604_ _hd150602_)))
                  (_try-match150564150588_)))))))
    (define gx#genident__%
      (lambda (_e150538_ _src150539_)
        (gx#stx-wrap-source
         (gensym (let ((_e150541_ (gx#stx-e _e150538_)))
                   (if (interned-symbol? _e150541_) _e150541_ 'g)))
         (let ((_$e150543_ (gx#stx-source _e150538_)))
           (if _$e150543_ _$e150543_ _src150539_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e150550_ 'g) (_src150552_ '#f))
          (gx#genident__% _e150550_ _src150552_))))
    (define gx#genident__1
      (lambda (_e150554_)
        (let ((_src150556_ '#f)) (gx#genident__% _e150554_ _src150556_))))
    (define gx#genident
      (lambda _g155040_
        (let ((_g155039_ (##length _g155040_)))
          (cond ((##fx= _g155039_ 0)
                 (apply (lambda () (gx#genident__0)) _g155040_))
                ((##fx= _g155039_ 1)
                 (apply (lambda (_e150554_) (gx#genident__1 _e150554_))
                        _g155040_))
                ((##fx= _g155039_ 2)
                 (apply (lambda (_e150558_ _src150559_)
                          (gx#genident__% _e150558_ _src150559_))
                        _g155040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g155040_))))))
    (define gx#gentemps
      (lambda (_stx-lst150535_) (gx#stx-map1 gx#genident _stx-lst150535_)))
    (define gx#syntax->list
      (lambda (_stx150533_) (gx#stx-map1 values _stx150533_)))
    (define gx#stx-car
      (lambda (_stx150530_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx150530_)))))
    (define gx#stx-cdr
      (lambda (_stx150527_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx150527_)))))
    (define gx#stx-length
      (lambda (_stx150492_)
        (let _lp150494_ ((_rest150496_ _stx150492_) (_n150497_ '0))
          (let* ((_g150498150506_ (gx#stx-e _rest150496_))
                 (_else150500150514_ (lambda () _n150497_))
                 (_K150502150519_
                  (lambda (_rest150517_)
                    (_lp150494_ _rest150517_ (fx+ _n150497_ '1)))))
            (if (##pair? _g150498150506_)
                (let* ((_tl150504150522_ (##cdr _g150498150506_))
                       (_rest150525_ _tl150504150522_))
                  (_K150502150519_ _rest150525_))
                (_else150500150514_))))))
    (define gx#stx-for-each
      (lambda _g155042_
        (let ((_g155041_ (##length _g155042_)))
          (cond ((##fx= _g155041_ 2)
                 (apply (lambda (_f150485_ _stx150486_)
                          (gx#stx-for-each1 _f150485_ _stx150486_))
                        _g155042_))
                ((##fx= _g155041_ 3)
                 (apply (lambda (_f150488_ _xstx150489_ _ystx150490_)
                          (gx#stx-for-each2
                           _f150488_
                           _xstx150489_
                           _ystx150490_))
                        _g155042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g155042_))))))
    (define gx#stx-for-each1
      (lambda (_f150435_ _stx150436_)
        (if (procedure? _f150435_)
            '#!void
            (error '"expected procedure" _f150435_))
        (let _lp150438_ ((_rest150440_ _stx150436_))
          (let* ((_g150441150451_ (gx#syntax-e _rest150440_))
                 (_else150444150459_ (lambda () (_f150435_ _rest150440_))))
            (let ((_K150447150473_
                   (lambda (_rest150470_ _hd150471_)
                     (_f150435_ _hd150471_)
                     (_lp150438_ _rest150470_)))
                  (_K150446150464_ (lambda () '#!void)))
              (let ((_try-match150443150467_
                     (lambda ()
                       (if (##null? _g150441150451_)
                           (_K150446150464_)
                           (_else150444150459_)))))
                (if (##pair? _g150441150451_)
                    (let ((_tl150449150478_ (##cdr _g150441150451_))
                          (_hd150448150476_ (##car _g150441150451_)))
                      (let ((_hd150481_ _hd150448150476_)
                            (_rest150483_ _tl150449150478_))
                        (_K150447150473_ _rest150483_ _hd150481_)))
                    (_try-match150443150467_))))))))
    (define gx#stx-for-each2
      (lambda (_f150340_ _xstx150341_ _ystx150342_)
        (if (procedure? _f150340_)
            '#!void
            (error '"expected procedure" _f150340_))
        (let _lp150344_ ((_xrest150346_ _xstx150341_)
                         (_yrest150347_ _ystx150342_))
          (let* ((_g150348150358_ (gx#syntax-e _xrest150346_))
                 (_else150351150366_ (lambda () '#!void)))
            (let ((_K150354150423_
                   (lambda (_xrest150392_ _xhd150393_)
                     (let* ((_g150394150401_ (gx#syntax-e _yrest150347_))
                            (_E150396150405_
                             (lambda ()
                               (error '"No clause matching" _g150394150401_)))
                            (_K150397150411_
                             (lambda (_yrest150408_ _yhd150409_)
                               (_f150340_ _xhd150393_ _yhd150409_)
                               (_lp150344_ _xrest150392_ _yrest150408_))))
                       (if (##pair? _g150394150401_)
                           (let ((_hd150398150414_ (##car _g150394150401_))
                                 (_tl150399150416_ (##cdr _g150394150401_)))
                             (let* ((_yhd150419_ _hd150398150414_)
                                    (_yrest150421_ _tl150399150416_))
                               (_K150397150411_ _yrest150421_ _yhd150419_)))
                           (_E150396150405_)))))
                  (_K150353150386_
                   (lambda ()
                     (let* ((_yrest150370150375_ _yrest150347_)
                            (_E150372150379_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest150370150375_)))
                            (_K150373150383_
                             (lambda ()
                               (_f150340_ _xrest150346_ _yrest150347_))))
                       (if (not (gx#stx-null? _yrest150370150375_))
                           (_K150373150383_)
                           (_E150372150379_))))))
              (let ((_try-match150350150389_
                     (lambda ()
                       (if (not (null? _g150348150358_))
                           (_K150353150386_)
                           (_else150351150366_)))))
                (if (##pair? _g150348150358_)
                    (let ((_tl150356150428_ (##cdr _g150348150358_))
                          (_hd150355150426_ (##car _g150348150358_)))
                      (let ((_xhd150431_ _hd150355150426_)
                            (_xrest150433_ _tl150356150428_))
                        (_K150354150423_ _xrest150433_ _xhd150431_)))
                    (_try-match150350150389_))))))))
    (define gx#stx-map
      (lambda _g155044_
        (let ((_g155043_ (##length _g155044_)))
          (cond ((##fx= _g155043_ 2)
                 (apply (lambda (_f150333_ _stx150334_)
                          (gx#stx-map1 _f150333_ _stx150334_))
                        _g155044_))
                ((##fx= _g155043_ 3)
                 (apply (lambda (_f150336_ _xstx150337_ _ystx150338_)
                          (gx#stx-map2 _f150336_ _xstx150337_ _ystx150338_))
                        _g155044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g155044_))))))
    (define gx#stx-map1
      (lambda (_f150283_ _stx150284_)
        (if (procedure? _f150283_)
            '#!void
            (error '"expected procedure" _f150283_))
        (let _recur150286_ ((_rest150288_ _stx150284_))
          (let* ((_g150289150299_ (gx#syntax-e _rest150288_))
                 (_else150292150307_ (lambda () (_f150283_ _rest150288_))))
            (let ((_K150295150321_
                   (lambda (_rest150318_ _hd150319_)
                     (cons (_f150283_ _hd150319_)
                           (_recur150286_ _rest150318_))))
                  (_K150294150312_ (lambda () '())))
              (let ((_try-match150291150315_
                     (lambda ()
                       (if (##null? _g150289150299_)
                           (_K150294150312_)
                           (_else150292150307_)))))
                (if (##pair? _g150289150299_)
                    (let ((_tl150297150326_ (##cdr _g150289150299_))
                          (_hd150296150324_ (##car _g150289150299_)))
                      (let ((_hd150329_ _hd150296150324_)
                            (_rest150331_ _tl150297150326_))
                        (_K150295150321_ _rest150331_ _hd150329_)))
                    (_try-match150291150315_))))))))
    (define gx#stx-map2
      (lambda (_f150188_ _xstx150189_ _ystx150190_)
        (if (procedure? _f150188_)
            '#!void
            (error '"expected procedure" _f150188_))
        (let _recur150192_ ((_xrest150194_ _xstx150189_)
                            (_yrest150195_ _ystx150190_))
          (let* ((_g150196150206_ (gx#syntax-e _xrest150194_))
                 (_else150199150214_ (lambda () '())))
            (let ((_K150202150271_
                   (lambda (_xrest150240_ _xhd150241_)
                     (let* ((_g150242150249_ (gx#syntax-e _yrest150195_))
                            (_E150244150253_
                             (lambda ()
                               (error '"No clause matching" _g150242150249_)))
                            (_K150245150259_
                             (lambda (_yrest150256_ _yhd150257_)
                               (cons (_f150188_ _xhd150241_ _yhd150257_)
                                     (_recur150192_
                                      _xrest150240_
                                      _yrest150256_)))))
                       (if (##pair? _g150242150249_)
                           (let ((_hd150246150262_ (##car _g150242150249_))
                                 (_tl150247150264_ (##cdr _g150242150249_)))
                             (let* ((_yhd150267_ _hd150246150262_)
                                    (_yrest150269_ _tl150247150264_))
                               (_K150245150259_ _yrest150269_ _yhd150267_)))
                           (_E150244150253_)))))
                  (_K150201150234_
                   (lambda ()
                     (let* ((_yrest150218150223_ _yrest150195_)
                            (_E150220150227_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest150218150223_)))
                            (_K150221150231_
                             (lambda ()
                               (_f150188_ _xrest150194_ _yrest150195_))))
                       (if (not (gx#stx-null? _yrest150218150223_))
                           (_K150221150231_)
                           (_E150220150227_))))))
              (let ((_try-match150198150237_
                     (lambda ()
                       (if (not (null? _g150196150206_))
                           (_K150201150234_)
                           (_else150199150214_)))))
                (if (##pair? _g150196150206_)
                    (let ((_tl150204150276_ (##cdr _g150196150206_))
                          (_hd150203150274_ (##car _g150196150206_)))
                      (let ((_xhd150279_ _hd150203150274_)
                            (_xrest150281_ _tl150204150276_))
                        (_K150202150271_ _xrest150281_ _xhd150279_)))
                    (_try-match150198150237_))))))))
    (define gx#stx-andmap
      (lambda (_f150138_ _stx150139_)
        (if (procedure? _f150138_)
            '#!void
            (error '"expected procedure" _f150138_))
        (let _lp150141_ ((_rest150143_ _stx150139_))
          (let* ((_g150144150154_ (gx#syntax-e _rest150143_))
                 (_else150147150162_ (lambda () (_f150138_ _rest150143_))))
            (let ((_K150150150176_
                   (lambda (_rest150173_ _hd150174_)
                     (if (_f150138_ _hd150174_)
                         (_lp150141_ _rest150173_)
                         '#f)))
                  (_K150149150167_ (lambda () '#t)))
              (let ((_try-match150146150170_
                     (lambda ()
                       (if (##null? _g150144150154_)
                           (_K150149150167_)
                           (_else150147150162_)))))
                (if (##pair? _g150144150154_)
                    (let ((_tl150152150181_ (##cdr _g150144150154_))
                          (_hd150151150179_ (##car _g150144150154_)))
                      (let ((_hd150184_ _hd150151150179_)
                            (_rest150186_ _tl150152150181_))
                        (_K150150150176_ _rest150186_ _hd150184_)))
                    (_try-match150146150170_))))))))
    (define gx#stx-ormap
      (lambda (_f150085_ _stx150086_)
        (if (procedure? _f150085_)
            '#!void
            (error '"expected procedure" _f150085_))
        (let _lp150088_ ((_rest150090_ _stx150086_))
          (let* ((_g150091150101_ (gx#syntax-e _rest150090_))
                 (_else150094150109_ (lambda () (_f150085_ _rest150090_))))
            (let ((_K150097150126_
                   (lambda (_rest150120_ _hd150121_)
                     (let ((_$e150123_ (_f150085_ _hd150121_)))
                       (if _$e150123_ _$e150123_ (_lp150088_ _rest150120_)))))
                  (_K150096150114_ (lambda () '#f)))
              (let ((_try-match150093150117_
                     (lambda ()
                       (if (##null? _g150091150101_)
                           (_K150096150114_)
                           (_else150094150109_)))))
                (if (##pair? _g150091150101_)
                    (let ((_tl150099150131_ (##cdr _g150091150101_))
                          (_hd150098150129_ (##car _g150091150101_)))
                      (let ((_hd150134_ _hd150098150129_)
                            (_rest150136_ _tl150099150131_))
                        (_K150097150126_ _rest150136_ _hd150134_)))
                    (_try-match150093150117_))))))))
    (define gx#stx-foldl
      (lambda (_f150033_ _iv150034_ _stx150035_)
        (if (procedure? _f150033_)
            '#!void
            (error '"expected procedure" _f150033_))
        (let _lp150037_ ((_r150039_ _iv150034_) (_rest150040_ _stx150035_))
          (let* ((_g150041150051_ (gx#syntax-e _rest150040_))
                 (_else150044150059_
                  (lambda () (_f150033_ _rest150040_ _r150039_))))
            (let ((_K150047150073_
                   (lambda (_rest150070_ _hd150071_)
                     (_lp150037_
                      (_f150033_ _hd150071_ _r150039_)
                      _rest150070_)))
                  (_K150046150064_ (lambda () _r150039_)))
              (let ((_try-match150043150067_
                     (lambda ()
                       (if (##null? _g150041150051_)
                           (_K150046150064_)
                           (_else150044150059_)))))
                (if (##pair? _g150041150051_)
                    (let ((_tl150049150078_ (##cdr _g150041150051_))
                          (_hd150048150076_ (##car _g150041150051_)))
                      (let ((_hd150081_ _hd150048150076_)
                            (_rest150083_ _tl150049150078_))
                        (_K150047150073_ _rest150083_ _hd150081_)))
                    (_try-match150043150067_))))))))
    (define gx#stx-foldr
      (lambda (_f149982_ _iv149983_ _stx149984_)
        (if (procedure? _f149982_)
            '#!void
            (error '"expected procedure" _f149982_))
        (let _recur149986_ ((_rest149988_ _stx149984_))
          (let* ((_g149989149999_ (gx#syntax-e _rest149988_))
                 (_else149992150007_
                  (lambda () (_f149982_ _rest149988_ _iv149983_))))
            (let ((_K149995150021_
                   (lambda (_rest150018_ _hd150019_)
                     (_f149982_ _hd150019_ (_recur149986_ _rest150018_))))
                  (_K149994150012_ (lambda () _iv149983_)))
              (let ((_try-match149991150015_
                     (lambda ()
                       (if (##null? _g149989149999_)
                           (_K149994150012_)
                           (_else149992150007_)))))
                (if (##pair? _g149989149999_)
                    (let ((_tl149997150026_ (##cdr _g149989149999_))
                          (_hd149996150024_ (##car _g149989149999_)))
                      (let ((_hd150029_ _hd149996150024_)
                            (_rest150031_ _tl149997150026_))
                        (_K149995150021_ _rest150031_ _hd150029_)))
                    (_try-match149991150015_))))))))
    (define gx#stx-reverse
      (lambda (_stx149980_) (gx#stx-foldl cons '() _stx149980_)))
    (define gx#stx-last
      (lambda (_stx149941_)
        (let _lp149943_ ((_rest149945_ _stx149941_))
          (let* ((_g149946149954_ (gx#syntax-e _rest149945_))
                 (_else149948149962_ (lambda () _rest149945_))
                 (_K149950149968_
                  (lambda (_rest149965_ _hd149966_)
                    (if (gx#stx-null? _rest149965_)
                        _hd149966_
                        (_lp149943_ _rest149965_)))))
            (if (##pair? _g149946149954_)
                (let ((_hd149951149971_ (##car _g149946149954_))
                      (_tl149952149973_ (##cdr _g149946149954_)))
                  (let* ((_hd149976_ _hd149951149971_)
                         (_rest149978_ _tl149952149973_))
                    (_K149950149968_ _rest149978_ _hd149976_)))
                (_else149948149962_))))))
    (define gx#stx-last-pair
      (lambda (_stx149912_)
        (let _lp149914_ ((_hd149916_ _stx149912_))
          (let* ((_g149917149924_ (gx#syntax-e _hd149916_))
                 (_E149919149928_
                  (lambda () (error '"No clause matching" _g149917149924_)))
                 (_K149920149933_
                  (lambda (_rest149931_)
                    (if (gx#stx-pair? _rest149931_)
                        (_lp149914_ _rest149931_)
                        _hd149916_))))
            (if (##pair? _g149917149924_)
                (let* ((_tl149922149936_ (##cdr _g149917149924_))
                       (_rest149939_ _tl149922149936_))
                  (_K149920149933_ _rest149939_))
                (_E149919149928_))))))
    (define gx#stx-list-tail
      (lambda (_stx149881_ _k149882_)
        (let _lp149884_ ((_rest149886_ _stx149881_) (_k149887_ _k149882_))
          (if (fxpositive? _k149887_)
              (let* ((_g149888149895_ (gx#syntax-e _rest149886_))
                     (_E149890149899_
                      (lambda ()
                        (error '"No clause matching" _g149888149895_)))
                     (_K149891149904_
                      (lambda (_rest149902_)
                        (_lp149884_ _rest149902_ (fx- _k149887_ '1)))))
                (if (##pair? _g149888149895_)
                    (let* ((_tl149893149907_ (##cdr _g149888149895_))
                           (_rest149910_ _tl149893149907_))
                      (_K149891149904_ _rest149910_))
                    (_E149890149899_)))
              _rest149886_))))
    (define gx#stx-list-ref
      (lambda (_stx149878_ _k149879_)
        (gx#stx-car (gx#stx-list-tail _stx149878_ _k149879_))))
    (define gx#stx-plist?__%
      (lambda (_stx149790_ _key?149791_)
        (if (procedure? _key?149791_)
            '#!void
            (error '"expected procedure" _key?149791_))
        (let _lp149793_ ((_rest149795_ _stx149790_))
          (let* ((_g149796149806_ (gx#stx-e _rest149795_))
                 (_else149799149814_ (lambda () '#f)))
            (let ((_K149802149856_
                   (lambda (_rest149825_ _hd149826_)
                     (if (_key?149791_ _hd149826_)
                         (let* ((_g149827149835_ (gx#stx-e _rest149825_))
                                (_else149829149843_ (lambda () '#f))
                                (_K149831149848_
                                 (lambda (_rest149846_)
                                   (_lp149793_ _rest149846_))))
                           (if (##pair? _g149827149835_)
                               (let* ((_tl149833149851_
                                       (##cdr _g149827149835_))
                                      (_rest149854_ _tl149833149851_))
                                 (_lp149793_ _rest149854_))
                               (_else149829149843_)))
                         '#f)))
                  (_K149801149819_ (lambda () '#t)))
              (let ((_try-match149798149822_
                     (lambda ()
                       (if (##null? _g149796149806_)
                           (_K149801149819_)
                           (_else149799149814_)))))
                (if (##pair? _g149796149806_)
                    (let ((_tl149804149861_ (##cdr _g149796149806_))
                          (_hd149803149859_ (##car _g149796149806_)))
                      (let ((_hd149864_ _hd149803149859_)
                            (_rest149866_ _tl149804149861_))
                        (_K149802149856_ _rest149866_ _hd149864_)))
                    (_try-match149798149822_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx149871_)
        (let ((_key?149873_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx149871_ _key?149873_))))
    (define gx#stx-plist?
      (lambda _g155046_
        (let ((_g155045_ (##length _g155046_)))
          (cond ((##fx= _g155045_ 1)
                 (apply (lambda (_stx149871_) (gx#stx-plist?__0 _stx149871_))
                        _g155046_))
                ((##fx= _g155045_ 2)
                 (apply (lambda (_stx149875_ _key?149876_)
                          (gx#stx-plist?__% _stx149875_ _key?149876_))
                        _g155046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g155046_))))))
    (define gx#stx-getq__%
      (lambda (_key149708_ _stx149709_ _key=?149710_)
        (if (procedure? _key=?149710_)
            '#!void
            (error '"expected procedure" _key=?149710_))
        (let _lp149712_ ((_rest149714_ _stx149709_))
          (let* ((_g149715149723_ (gx#syntax-e _rest149714_))
                 (_else149717149731_ (lambda () '#f))
                 (_K149719149765_
                  (lambda (_rest149734_ _hd149735_)
                    (let* ((_g149736149743_ (gx#syntax-e _rest149734_))
                           (_E149738149747_
                            (lambda ()
                              (error '"No clause matching" _g149736149743_)))
                           (_K149739149753_
                            (lambda (_rest149750_ _val149751_)
                              (if (_key=?149710_ _hd149735_ _key149708_)
                                  _val149751_
                                  (_lp149712_ _rest149750_)))))
                      (if (##pair? _g149736149743_)
                          (let ((_hd149740149756_ (##car _g149736149743_))
                                (_tl149741149758_ (##cdr _g149736149743_)))
                            (let* ((_val149761_ _hd149740149756_)
                                   (_rest149763_ _tl149741149758_))
                              (_K149739149753_ _rest149763_ _val149761_)))
                          (_E149738149747_))))))
            (if (##pair? _g149715149723_)
                (let ((_hd149720149768_ (##car _g149715149723_))
                      (_tl149721149770_ (##cdr _g149715149723_)))
                  (let* ((_hd149773_ _hd149720149768_)
                         (_rest149775_ _tl149721149770_))
                    (_K149719149765_ _rest149775_ _hd149773_)))
                (_else149717149731_))))))
    (define gx#stx-getq__0
      (lambda (_key149780_ _stx149781_)
        (let ((_key=?149783_ gx#stx-eq?))
          (gx#stx-getq__% _key149780_ _stx149781_ _key=?149783_))))
    (define gx#stx-getq
      (lambda _g155048_
        (let ((_g155047_ (##length _g155048_)))
          (cond ((##fx= _g155047_ 2)
                 (apply (lambda (_key149780_ _stx149781_)
                          (gx#stx-getq__0 _key149780_ _stx149781_))
                        _g155048_))
                ((##fx= _g155047_ 3)
                 (apply (lambda (_key149785_ _stx149786_ _key=?149787_)
                          (gx#stx-getq__%
                           _key149785_
                           _stx149786_
                           _key=?149787_))
                        _g155048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g155048_))))))))
