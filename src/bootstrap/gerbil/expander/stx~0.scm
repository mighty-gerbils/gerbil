(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710774316)
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
      (lambda _$args82791_
        (apply make-instance gx#identifier-wrap::t _$args82791_)))
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
      (lambda _$args82788_
        (apply make-instance gx#syntax-wrap::t _$args82788_)))
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
      (lambda _$args82785_
        (apply make-instance gx#syntax-quote::t _$args82785_)))
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
      (lambda (_stx82783_) (symbol? (gx#stx-e _stx82783_))))
    (define gx#identifier-quote?
      (lambda (_stx82781_)
        (if (##structure-direct-instance-of? _stx82781_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82781_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82779_)
        (if (##structure-direct-instance-of? _stx82779_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82779_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82779_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82777_)
        (if (##structure-direct-instance-of? _stx82777_ 'gx#syntax-quote::t)
            _stx82777_
            (if (##structure-direct-instance-of? _stx82777_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82777_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82760_)
        (if (##structure-direct-instance-of? _stx82760_ 'gx#syntax-wrap::t)
            (let _lp82762_ ((_e82764_
                             (##unchecked-structure-ref
                              _stx82760_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82765_
                             (cons (##unchecked-structure-ref
                                    _stx82760_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82764_)
                  (let ((_$e82767_ (##type-id (##structure-type _e82764_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82767_)
                        (_lp82762_
                         (##unchecked-structure-ref _e82764_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82764_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82765_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82767_)
                                (eq? 'gx#identifier-wrap::t _$e82767_))
                            (##unchecked-structure-ref
                             _e82764_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82767_)
                                (_lp82762_
                                 (##unchecked-structure-ref
                                  _e82764_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82765_)
                                _e82764_))))
                  (if (null? _marks82765_)
                      _e82764_
                      (if (pair? _e82764_)
                          (cons (gx#stx-wrap (car _e82764_) _marks82765_)
                                (gx#stx-wrap (cdr _e82764_) _marks82765_))
                          (if (vector? _e82764_)
                              (vector-map
                               (lambda (_g8277282774_)
                                 (gx#stx-wrap _g8277282774_ _marks82765_))
                               _e82764_)
                              (if (box? _e82764_)
                                  (box (gx#stx-wrap
                                        (unbox _e82764_)
                                        _marks82765_))
                                  _e82764_))))))
            (if (##structure-instance-of? _stx82760_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82760_ '1 gx#AST::t '#f)
                _stx82760_))))
    (define gx#syntax->datum
      (lambda (_stx82758_)
        (if (##structure-instance-of? _stx82758_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82758_ '1 gx#AST::t '#f))
            (if (pair? _stx82758_)
                (cons (gx#syntax->datum (car _stx82758_))
                      (gx#syntax->datum (cdr _stx82758_)))
                (if (vector? _stx82758_)
                    (vector-map gx#syntax->datum _stx82758_)
                    (if (box? _stx82758_)
                        (box (gx#syntax->datum (unbox _stx82758_)))
                        _stx82758_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82701_ _datum82702_ _src82703_ _quote?82704_)
        (letrec ((_wrap-datum82706_
                  (lambda (_e82730_ _marks82731_)
                    (_wrap-inner82708_
                     _e82730_
                     (lambda (_g8273282734_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8273282734_
                        _src82703_
                        _marks82731_)))))
                 (_wrap-quote82707_
                  (lambda (_e82722_ _ctx82723_ _marks82724_)
                    (_wrap-inner82708_
                     _e82722_
                     (lambda (_g8272582727_)
                       (##structure
                        gx#syntax-quote::t
                        _g8272582727_
                        _src82703_
                        _ctx82723_
                        _marks82724_)))))
                 (_wrap-inner82708_
                  (lambda (_e82715_ _wrap-e82716_)
                    (let _recur82718_ ((_e82720_ _e82715_))
                      (if (symbol? _e82720_)
                          (_wrap-e82716_ _e82720_)
                          (if (pair? _e82720_)
                              (cons (_recur82718_ (car _e82720_))
                                    (_recur82718_ (cdr _e82720_)))
                              (if (vector? _e82720_)
                                  (vector-map _recur82718_ _e82720_)
                                  (if (box? _e82720_)
                                      (box (_recur82718_ (unbox _e82720_)))
                                      _e82720_)))))))
                 (_wrap-outer82709_
                  (lambda (_e82713_)
                    (if (##structure-instance-of? _e82713_ 'gerbil#AST::t)
                        _e82713_
                        (##structure gx#AST::t _e82713_ _src82703_)))))
          (if (##structure-instance-of? _datum82702_ 'gerbil#AST::t)
              _datum82702_
              (if (not _stx82701_)
                  (##structure gx#AST::t _datum82702_ _src82703_)
                  (if (gx#identifier? _stx82701_)
                      (let ((_stx82711_ (gx#stx-unwrap__0 _stx82701_)))
                        (_wrap-outer82709_
                         (if (##structure-direct-instance-of?
                              _stx82711_
                              'gx#syntax-quote::t)
                             (if _quote?82704_
                                 (_wrap-quote82707_
                                  _datum82702_
                                  (##unchecked-structure-ref
                                   _stx82711_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82711_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82706_
                                  _datum82702_
                                  (##unchecked-structure-ref
                                   _stx82711_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82706_
                              _datum82702_
                              (##unchecked-structure-ref
                               _stx82711_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82701_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82740_ _datum82741_)
        (let* ((_src82743_ '#f) (_quote?82745_ '#t))
          (gx#datum->syntax__%
           _stx82740_
           _datum82741_
           _src82743_
           _quote?82745_))))
    (define gx#datum->syntax__1
      (lambda (_stx82747_ _datum82748_ _src82749_)
        (let ((_quote?82751_ '#t))
          (gx#datum->syntax__%
           _stx82747_
           _datum82748_
           _src82749_
           _quote?82751_))))
    (define gx#datum->syntax
      (lambda _g82872_
        (let ((_g82871_ (##length _g82872_)))
          (cond ((##fx= _g82871_ 2)
                 (apply (lambda (_stx82740_ _datum82741_)
                          (gx#datum->syntax__0 _stx82740_ _datum82741_))
                        _g82872_))
                ((##fx= _g82871_ 3)
                 (apply (lambda (_stx82747_ _datum82748_ _src82749_)
                          (gx#datum->syntax__1
                           _stx82747_
                           _datum82748_
                           _src82749_))
                        _g82872_))
                ((##fx= _g82871_ 4)
                 (apply (lambda (_stx82753_
                                 _datum82754_
                                 _src82755_
                                 _quote?82756_)
                          (gx#datum->syntax__%
                           _stx82753_
                           _datum82754_
                           _src82755_
                           _quote?82756_))
                        _g82872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82872_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82677_ _marks82678_)
        (let _lp82680_ ((_e82682_ _stx82677_)
                        (_marks82683_ _marks82678_)
                        (_src82684_ (gx#stx-source _stx82677_)))
          (if (##structure-direct-instance-of? _e82682_ 'gx#syntax-wrap::t)
              (_lp82680_
               (##unchecked-structure-ref _e82682_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82682_ '3 gx#syntax-wrap::t '#f)
                _marks82683_)
               (##unchecked-structure-ref _e82682_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82682_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82683_)
                      _e82682_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82682_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82682_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82682_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82683_)))
                  (if (##structure-direct-instance-of?
                       _e82682_
                       'gx#syntax-quote::t)
                      _e82682_
                      (if (##structure-instance-of? _e82682_ 'gerbil#AST::t)
                          (_lp82680_
                           (##unchecked-structure-ref
                            _e82682_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82683_
                           (##unchecked-structure-ref
                            _e82682_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82682_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82682_
                               _src82684_
                               (reverse _marks82683_))
                              (if (null? _marks82683_)
                                  _e82682_
                                  (if (pair? _e82682_)
                                      (cons (gx#stx-wrap
                                             (car _e82682_)
                                             _marks82683_)
                                            (gx#stx-wrap
                                             (cdr _e82682_)
                                             _marks82683_))
                                      (if (vector? _e82682_)
                                          (vector-map
                                           (lambda (_g8268582687_)
                                             (gx#stx-wrap
                                              _g8268582687_
                                              _marks82683_))
                                           _e82682_)
                                          (if (box? _e82682_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82682_)
                                                    _marks82683_))
                                              _e82682_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82693_)
        (let ((_marks82695_ '())) (gx#stx-unwrap__% _stx82693_ _marks82695_))))
    (define gx#stx-unwrap
      (lambda _g82874_
        (let ((_g82873_ (##length _g82874_)))
          (cond ((##fx= _g82873_ 1)
                 (apply (lambda (_stx82693_) (gx#stx-unwrap__0 _stx82693_))
                        _g82874_))
                ((##fx= _g82873_ 2)
                 (apply (lambda (_stx82697_ _marks82698_)
                          (gx#stx-unwrap__% _stx82697_ _marks82698_))
                        _g82874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82874_))))))
    (define gx#stx-wrap
      (lambda (_stx82670_ _marks82671_)
        (foldl1 (lambda (_mark82673_ _stx82674_)
                  (gx#stx-apply-mark _stx82674_ _mark82673_))
                _stx82670_
                _marks82671_)))
    (define gx#stx-rewrap
      (lambda (_stx82664_ _marks82665_)
        (foldr1 (lambda (_mark82667_ _stx82668_)
                  (gx#stx-apply-mark _stx82668_ _mark82667_))
                _stx82664_
                _marks82665_)))
    (define gx#stx-apply-mark
      (lambda (_stx82661_ _mark82662_)
        (if (##structure-direct-instance-of? _stx82661_ 'gx#syntax-quote::t)
            _stx82661_
            (if (and (##structure-direct-instance-of?
                      _stx82661_
                      'gx#syntax-wrap::t)
                     (eq? _mark82662_
                          (##unchecked-structure-ref
                           _stx82661_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82661_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82661_
                 (gx#stx-source _stx82661_)
                 _mark82662_)))))
    (define gx#apply-mark
      (lambda (_mark82625_ _marks82626_)
        (let* ((_marks8262782635_ _marks82626_)
               (_else8262982643_ (lambda () (cons _mark82625_ _marks82626_)))
               (_K8263182649_
                (lambda (_rest82646_ _hd82647_)
                  (if (eq? _mark82625_ _hd82647_)
                      _rest82646_
                      (cons _mark82625_ _marks82626_)))))
          (if (##pair? _marks8262782635_)
              (let ((_hd8263282652_ (##car _marks8262782635_))
                    (_tl8263382654_ (##cdr _marks8262782635_)))
                (let* ((_hd82657_ _hd8263282652_) (_rest82659_ _tl8263382654_))
                  (_K8263182649_ _rest82659_ _hd82657_)))
              (_else8262982643_)))))
    (define gx#stx-e
      (lambda (_stx82623_)
        (if (##structure-direct-instance-of? _stx82623_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82623_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82623_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82623_ '1 gx#AST::t '#f)
                _stx82623_))))
    (define gx#stx-source
      (lambda (_stx82621_)
        (if (##structure-instance-of? _stx82621_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82621_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82615_ _src82616_)
        (if (or (##structure-instance-of? _stx82615_ 'gerbil#AST::t)
                (not _src82616_))
            _stx82615_
            (##structure gx#AST::t _stx82615_ _src82616_))))
    (define gx#stx-datum?
      (lambda (_stx82613_) (gx#self-quoting? (gx#stx-e _stx82613_))))
    (define gx#self-quoting?
      (lambda (_x82596_)
        (let ((_$e82598_ (immediate? _x82596_)))
          (if _$e82598_
              _$e82598_
              (let ((_$e82601_ (number? _x82596_)))
                (if _$e82601_
                    _$e82601_
                    (let ((_$e82604_ (keyword? _x82596_)))
                      (if _$e82604_
                          _$e82604_
                          (let ((_$e82607_ (string? _x82596_)))
                            (if _$e82607_
                                _$e82607_
                                (let ((_$e82610_ (vector? _x82596_)))
                                  (if _$e82610_
                                      _$e82610_
                                      (u8vector? _x82596_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82594_) (boolean? (gx#stx-e _e82594_))))
    (define gx#stx-keyword? (lambda (_e82592_) (keyword? (gx#stx-e _e82592_))))
    (define gx#stx-char? (lambda (_e82590_) (char? (gx#stx-e _e82590_))))
    (define gx#stx-number? (lambda (_e82588_) (number? (gx#stx-e _e82588_))))
    (define gx#stx-fixnum? (lambda (_e82586_) (fixnum? (gx#stx-e _e82586_))))
    (define gx#stx-string? (lambda (_e82584_) (string? (gx#stx-e _e82584_))))
    (define gx#stx-null? (lambda (_e82582_) (null? (gx#stx-e _e82582_))))
    (define gx#stx-pair? (lambda (_e82580_) (pair? (gx#stx-e _e82580_))))
    (define gx#stx-list?
      (lambda (_e82542_)
        (let* ((_g8254382552_ (gx#stx-e _e82542_))
               (_E8254682556_
                (lambda () (error '"No clause matching" _g8254382552_))))
          (let ((_K8254882572_
                 (lambda (_rest82570_) (gx#stx-list? _rest82570_)))
                (_K8254782562_ (lambda (_tail82560_) (null? _tail82560_))))
            (if (##pair? _g8254382552_)
                (let* ((_tl8255082575_ (##cdr _g8254382552_))
                       (_rest82578_ _tl8255082575_))
                  (gx#stx-list? _rest82578_))
                (let ((_tail82565_ _g8254382552_)) (null? _tail82565_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82535_)
        (let* ((_e82537_ (gx#stx-e _e82535_)) (_$e82539_ (pair? _e82537_)))
          (if _$e82539_ _$e82539_ (null? _e82537_)))))
    (define gx#stx-vector? (lambda (_e82533_) (vector? (gx#stx-e _e82533_))))
    (define gx#stx-box? (lambda (_e82531_) (box? (gx#stx-e _e82531_))))
    (define gx#stx-eq?
      (lambda (_x82528_ _y82529_)
        (eq? (gx#stx-e _x82528_) (gx#stx-e _y82529_))))
    (define gx#stx-eqv?
      (lambda (_x82525_ _y82526_)
        (eqv? (gx#stx-e _x82525_) (gx#stx-e _y82526_))))
    (define gx#stx-equal?
      (lambda (_x82522_ _y82523_)
        (equal? (gx#stx-e _x82522_) (gx#stx-e _y82523_))))
    (define gx#stx-false? (lambda (_x82520_) (not (gx#stx-e _x82520_))))
    (define gx#stx-identifier
      (lambda (_template82517_ . _args82518_)
        (gx#datum->syntax__1
         _template82517_
         (apply make-symbol (gx#syntax->datum _args82518_))
         (gx#stx-source _template82517_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82515_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82515_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82513_)
        (if (##structure-direct-instance-of? _stx82513_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82513_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82513_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82513_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82513_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82509_)
        (let ((_stx82511_ (gx#stx-unwrap__0 _stx82509_)))
          (if (gx#identifier-quote? _stx82511_)
              (##unchecked-structure-ref _stx82511_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82464_)
        (let* ((_g8246582475_ (gx#stx-e _stx82464_))
               (_else8246882483_ (lambda () '#f)))
          (let ((_K8247182497_
                 (lambda (_rest82494_ _hd82495_)
                   (if (gx#identifier? _hd82495_)
                       (gx#identifier-list? _rest82494_)
                       '#f)))
                (_K8247082488_ (lambda () '#t)))
            (let ((_try-match8246782491_
                   (lambda ()
                     (if (##null? _g8246582475_)
                         (_K8247082488_)
                         (_else8246882483_)))))
              (if (##pair? _g8246582475_)
                  (let ((_tl8247382502_ (##cdr _g8246582475_))
                        (_hd8247282500_ (##car _g8246582475_)))
                    (let ((_hd82505_ _hd8247282500_)
                          (_rest82507_ _tl8247382502_))
                      (_K8247182497_ _rest82507_ _hd82505_)))
                  (_try-match8246782491_)))))))
    (define gx#genident__%
      (lambda (_e82441_ _src82442_)
        (gx#stx-wrap-source
         (gensym (let ((_e82444_ (gx#stx-e _e82441_)))
                   (if (interned-symbol? _e82444_) _e82444_ 'g)))
         (let ((_$e82446_ (gx#stx-source _e82441_)))
           (if _$e82446_ _$e82446_ _src82442_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82453_ 'g) (_src82455_ '#f))
          (gx#genident__% _e82453_ _src82455_))))
    (define gx#genident__1
      (lambda (_e82457_)
        (let ((_src82459_ '#f)) (gx#genident__% _e82457_ _src82459_))))
    (define gx#genident
      (lambda _g82876_
        (let ((_g82875_ (##length _g82876_)))
          (cond ((##fx= _g82875_ 0)
                 (apply (lambda () (gx#genident__0)) _g82876_))
                ((##fx= _g82875_ 1)
                 (apply (lambda (_e82457_) (gx#genident__1 _e82457_))
                        _g82876_))
                ((##fx= _g82875_ 2)
                 (apply (lambda (_e82461_ _src82462_)
                          (gx#genident__% _e82461_ _src82462_))
                        _g82876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82876_))))))
    (define gx#gentemps
      (lambda (_stx-lst82438_) (gx#stx-map1 gx#genident _stx-lst82438_)))
    (define gx#syntax->list
      (lambda (_stx82436_) (gx#stx-map1 values _stx82436_)))
    (define gx#stx-car
      (lambda (_stx82433_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82433_)))))
    (define gx#stx-cdr
      (lambda (_stx82430_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82430_)))))
    (define gx#stx-length
      (lambda (_stx82395_)
        (let _lp82397_ ((_rest82399_ _stx82395_) (_n82400_ '0))
          (let* ((_g8240182409_ (gx#stx-e _rest82399_))
                 (_else8240382417_ (lambda () _n82400_))
                 (_K8240582422_
                  (lambda (_rest82420_)
                    (_lp82397_ _rest82420_ (fx+ _n82400_ '1)))))
            (if (##pair? _g8240182409_)
                (let* ((_tl8240782425_ (##cdr _g8240182409_))
                       (_rest82428_ _tl8240782425_))
                  (_K8240582422_ _rest82428_))
                (_else8240382417_))))))
    (define gx#stx-for-each
      (lambda _g82878_
        (let ((_g82877_ (##length _g82878_)))
          (cond ((##fx= _g82877_ 2)
                 (apply (lambda (_f82388_ _stx82389_)
                          (gx#stx-for-each1 _f82388_ _stx82389_))
                        _g82878_))
                ((##fx= _g82877_ 3)
                 (apply (lambda (_f82391_ _xstx82392_ _ystx82393_)
                          (gx#stx-for-each2 _f82391_ _xstx82392_ _ystx82393_))
                        _g82878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82878_))))))
    (define gx#stx-for-each1
      (lambda (_f82338_ _stx82339_)
        (if (procedure? _f82338_)
            '#!void
            (error '"expected procedure" _f82338_))
        (let _lp82341_ ((_rest82343_ _stx82339_))
          (let* ((_g8234482354_ (gx#syntax-e _rest82343_))
                 (_else8234782362_ (lambda () (_f82338_ _rest82343_))))
            (let ((_K8235082376_
                   (lambda (_rest82373_ _hd82374_)
                     (_f82338_ _hd82374_)
                     (_lp82341_ _rest82373_)))
                  (_K8234982367_ (lambda () '#!void)))
              (let ((_try-match8234682370_
                     (lambda ()
                       (if (##null? _g8234482354_)
                           (_K8234982367_)
                           (_else8234782362_)))))
                (if (##pair? _g8234482354_)
                    (let ((_tl8235282381_ (##cdr _g8234482354_))
                          (_hd8235182379_ (##car _g8234482354_)))
                      (let ((_hd82384_ _hd8235182379_)
                            (_rest82386_ _tl8235282381_))
                        (_K8235082376_ _rest82386_ _hd82384_)))
                    (_try-match8234682370_))))))))
    (define gx#stx-for-each2
      (lambda (_f82243_ _xstx82244_ _ystx82245_)
        (if (procedure? _f82243_)
            '#!void
            (error '"expected procedure" _f82243_))
        (let _lp82247_ ((_xrest82249_ _xstx82244_) (_yrest82250_ _ystx82245_))
          (let* ((_g8225182261_ (gx#syntax-e _xrest82249_))
                 (_else8225482269_ (lambda () '#!void)))
            (let ((_K8225782326_
                   (lambda (_xrest82295_ _xhd82296_)
                     (let* ((_g8229782304_ (gx#syntax-e _yrest82250_))
                            (_E8229982308_
                             (lambda ()
                               (error '"No clause matching" _g8229782304_)))
                            (_K8230082314_
                             (lambda (_yrest82311_ _yhd82312_)
                               (_f82243_ _xhd82296_ _yhd82312_)
                               (_lp82247_ _xrest82295_ _yrest82311_))))
                       (if (##pair? _g8229782304_)
                           (let ((_hd8230182317_ (##car _g8229782304_))
                                 (_tl8230282319_ (##cdr _g8229782304_)))
                             (let* ((_yhd82322_ _hd8230182317_)
                                    (_yrest82324_ _tl8230282319_))
                               (_K8230082314_ _yrest82324_ _yhd82322_)))
                           (_E8229982308_)))))
                  (_K8225682289_
                   (lambda ()
                     (let* ((_yrest8227382278_ _yrest82250_)
                            (_E8227582282_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8227382278_)))
                            (_K8227682286_
                             (lambda () (_f82243_ _xrest82249_ _yrest82250_))))
                       (if (not (gx#stx-null? _yrest8227382278_))
                           (_K8227682286_)
                           (_E8227582282_))))))
              (let ((_try-match8225382292_
                     (lambda ()
                       (if (not (null? _g8225182261_))
                           (_K8225682289_)
                           (_else8225482269_)))))
                (if (##pair? _g8225182261_)
                    (let ((_tl8225982331_ (##cdr _g8225182261_))
                          (_hd8225882329_ (##car _g8225182261_)))
                      (let ((_xhd82334_ _hd8225882329_)
                            (_xrest82336_ _tl8225982331_))
                        (_K8225782326_ _xrest82336_ _xhd82334_)))
                    (_try-match8225382292_))))))))
    (define gx#stx-map
      (lambda _g82880_
        (let ((_g82879_ (##length _g82880_)))
          (cond ((##fx= _g82879_ 2)
                 (apply (lambda (_f82236_ _stx82237_)
                          (gx#stx-map1 _f82236_ _stx82237_))
                        _g82880_))
                ((##fx= _g82879_ 3)
                 (apply (lambda (_f82239_ _xstx82240_ _ystx82241_)
                          (gx#stx-map2 _f82239_ _xstx82240_ _ystx82241_))
                        _g82880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82880_))))))
    (define gx#stx-map1
      (lambda (_f82186_ _stx82187_)
        (if (procedure? _f82186_)
            '#!void
            (error '"expected procedure" _f82186_))
        (let _recur82189_ ((_rest82191_ _stx82187_))
          (let* ((_g8219282202_ (gx#syntax-e _rest82191_))
                 (_else8219582210_ (lambda () (_f82186_ _rest82191_))))
            (let ((_K8219882224_
                   (lambda (_rest82221_ _hd82222_)
                     (cons (_f82186_ _hd82222_) (_recur82189_ _rest82221_))))
                  (_K8219782215_ (lambda () '())))
              (let ((_try-match8219482218_
                     (lambda ()
                       (if (##null? _g8219282202_)
                           (_K8219782215_)
                           (_else8219582210_)))))
                (if (##pair? _g8219282202_)
                    (let ((_tl8220082229_ (##cdr _g8219282202_))
                          (_hd8219982227_ (##car _g8219282202_)))
                      (let ((_hd82232_ _hd8219982227_)
                            (_rest82234_ _tl8220082229_))
                        (_K8219882224_ _rest82234_ _hd82232_)))
                    (_try-match8219482218_))))))))
    (define gx#stx-map2
      (lambda (_f82091_ _xstx82092_ _ystx82093_)
        (if (procedure? _f82091_)
            '#!void
            (error '"expected procedure" _f82091_))
        (let _recur82095_ ((_xrest82097_ _xstx82092_)
                           (_yrest82098_ _ystx82093_))
          (let* ((_g8209982109_ (gx#syntax-e _xrest82097_))
                 (_else8210282117_ (lambda () '())))
            (let ((_K8210582174_
                   (lambda (_xrest82143_ _xhd82144_)
                     (let* ((_g8214582152_ (gx#syntax-e _yrest82098_))
                            (_E8214782156_
                             (lambda ()
                               (error '"No clause matching" _g8214582152_)))
                            (_K8214882162_
                             (lambda (_yrest82159_ _yhd82160_)
                               (cons (_f82091_ _xhd82144_ _yhd82160_)
                                     (_recur82095_
                                      _xrest82143_
                                      _yrest82159_)))))
                       (if (##pair? _g8214582152_)
                           (let ((_hd8214982165_ (##car _g8214582152_))
                                 (_tl8215082167_ (##cdr _g8214582152_)))
                             (let* ((_yhd82170_ _hd8214982165_)
                                    (_yrest82172_ _tl8215082167_))
                               (_K8214882162_ _yrest82172_ _yhd82170_)))
                           (_E8214782156_)))))
                  (_K8210482137_
                   (lambda ()
                     (let* ((_yrest8212182126_ _yrest82098_)
                            (_E8212382130_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8212182126_)))
                            (_K8212482134_
                             (lambda () (_f82091_ _xrest82097_ _yrest82098_))))
                       (if (not (gx#stx-null? _yrest8212182126_))
                           (_K8212482134_)
                           (_E8212382130_))))))
              (let ((_try-match8210182140_
                     (lambda ()
                       (if (not (null? _g8209982109_))
                           (_K8210482137_)
                           (_else8210282117_)))))
                (if (##pair? _g8209982109_)
                    (let ((_tl8210782179_ (##cdr _g8209982109_))
                          (_hd8210682177_ (##car _g8209982109_)))
                      (let ((_xhd82182_ _hd8210682177_)
                            (_xrest82184_ _tl8210782179_))
                        (_K8210582174_ _xrest82184_ _xhd82182_)))
                    (_try-match8210182140_))))))))
    (define gx#stx-andmap
      (lambda (_f82041_ _stx82042_)
        (if (procedure? _f82041_)
            '#!void
            (error '"expected procedure" _f82041_))
        (let _lp82044_ ((_rest82046_ _stx82042_))
          (let* ((_g8204782057_ (gx#syntax-e _rest82046_))
                 (_else8205082065_ (lambda () (_f82041_ _rest82046_))))
            (let ((_K8205382079_
                   (lambda (_rest82076_ _hd82077_)
                     (if (_f82041_ _hd82077_) (_lp82044_ _rest82076_) '#f)))
                  (_K8205282070_ (lambda () '#t)))
              (let ((_try-match8204982073_
                     (lambda ()
                       (if (##null? _g8204782057_)
                           (_K8205282070_)
                           (_else8205082065_)))))
                (if (##pair? _g8204782057_)
                    (let ((_tl8205582084_ (##cdr _g8204782057_))
                          (_hd8205482082_ (##car _g8204782057_)))
                      (let ((_hd82087_ _hd8205482082_)
                            (_rest82089_ _tl8205582084_))
                        (_K8205382079_ _rest82089_ _hd82087_)))
                    (_try-match8204982073_))))))))
    (define gx#stx-ormap
      (lambda (_f81988_ _stx81989_)
        (if (procedure? _f81988_)
            '#!void
            (error '"expected procedure" _f81988_))
        (let _lp81991_ ((_rest81993_ _stx81989_))
          (let* ((_g8199482004_ (gx#syntax-e _rest81993_))
                 (_else8199782012_ (lambda () (_f81988_ _rest81993_))))
            (let ((_K8200082029_
                   (lambda (_rest82023_ _hd82024_)
                     (let ((_$e82026_ (_f81988_ _hd82024_)))
                       (if _$e82026_ _$e82026_ (_lp81991_ _rest82023_)))))
                  (_K8199982017_ (lambda () '#f)))
              (let ((_try-match8199682020_
                     (lambda ()
                       (if (##null? _g8199482004_)
                           (_K8199982017_)
                           (_else8199782012_)))))
                (if (##pair? _g8199482004_)
                    (let ((_tl8200282034_ (##cdr _g8199482004_))
                          (_hd8200182032_ (##car _g8199482004_)))
                      (let ((_hd82037_ _hd8200182032_)
                            (_rest82039_ _tl8200282034_))
                        (_K8200082029_ _rest82039_ _hd82037_)))
                    (_try-match8199682020_))))))))
    (define gx#stx-foldl
      (lambda (_f81936_ _iv81937_ _stx81938_)
        (if (procedure? _f81936_)
            '#!void
            (error '"expected procedure" _f81936_))
        (let _lp81940_ ((_r81942_ _iv81937_) (_rest81943_ _stx81938_))
          (let* ((_g8194481954_ (gx#syntax-e _rest81943_))
                 (_else8194781962_
                  (lambda () (_f81936_ _rest81943_ _r81942_))))
            (let ((_K8195081976_
                   (lambda (_rest81973_ _hd81974_)
                     (_lp81940_ (_f81936_ _hd81974_ _r81942_) _rest81973_)))
                  (_K8194981967_ (lambda () _r81942_)))
              (let ((_try-match8194681970_
                     (lambda ()
                       (if (##null? _g8194481954_)
                           (_K8194981967_)
                           (_else8194781962_)))))
                (if (##pair? _g8194481954_)
                    (let ((_tl8195281981_ (##cdr _g8194481954_))
                          (_hd8195181979_ (##car _g8194481954_)))
                      (let ((_hd81984_ _hd8195181979_)
                            (_rest81986_ _tl8195281981_))
                        (_K8195081976_ _rest81986_ _hd81984_)))
                    (_try-match8194681970_))))))))
    (define gx#stx-foldr
      (lambda (_f81885_ _iv81886_ _stx81887_)
        (if (procedure? _f81885_)
            '#!void
            (error '"expected procedure" _f81885_))
        (let _recur81889_ ((_rest81891_ _stx81887_))
          (let* ((_g8189281902_ (gx#syntax-e _rest81891_))
                 (_else8189581910_
                  (lambda () (_f81885_ _rest81891_ _iv81886_))))
            (let ((_K8189881924_
                   (lambda (_rest81921_ _hd81922_)
                     (_f81885_ _hd81922_ (_recur81889_ _rest81921_))))
                  (_K8189781915_ (lambda () _iv81886_)))
              (let ((_try-match8189481918_
                     (lambda ()
                       (if (##null? _g8189281902_)
                           (_K8189781915_)
                           (_else8189581910_)))))
                (if (##pair? _g8189281902_)
                    (let ((_tl8190081929_ (##cdr _g8189281902_))
                          (_hd8189981927_ (##car _g8189281902_)))
                      (let ((_hd81932_ _hd8189981927_)
                            (_rest81934_ _tl8190081929_))
                        (_K8189881924_ _rest81934_ _hd81932_)))
                    (_try-match8189481918_))))))))
    (define gx#stx-reverse
      (lambda (_stx81883_) (gx#stx-foldl cons '() _stx81883_)))
    (define gx#stx-last
      (lambda (_stx81844_)
        (let _lp81846_ ((_rest81848_ _stx81844_))
          (let* ((_g8184981857_ (gx#syntax-e _rest81848_))
                 (_else8185181865_ (lambda () _rest81848_))
                 (_K8185381871_
                  (lambda (_rest81868_ _hd81869_)
                    (if (gx#stx-null? _rest81868_)
                        _hd81869_
                        (_lp81846_ _rest81868_)))))
            (if (##pair? _g8184981857_)
                (let ((_hd8185481874_ (##car _g8184981857_))
                      (_tl8185581876_ (##cdr _g8184981857_)))
                  (let* ((_hd81879_ _hd8185481874_)
                         (_rest81881_ _tl8185581876_))
                    (_K8185381871_ _rest81881_ _hd81879_)))
                (_else8185181865_))))))
    (define gx#stx-last-pair
      (lambda (_stx81815_)
        (let _lp81817_ ((_hd81819_ _stx81815_))
          (let* ((_g8182081827_ (gx#syntax-e _hd81819_))
                 (_E8182281831_
                  (lambda () (error '"No clause matching" _g8182081827_)))
                 (_K8182381836_
                  (lambda (_rest81834_)
                    (if (gx#stx-pair? _rest81834_)
                        (_lp81817_ _rest81834_)
                        _hd81819_))))
            (if (##pair? _g8182081827_)
                (let* ((_tl8182581839_ (##cdr _g8182081827_))
                       (_rest81842_ _tl8182581839_))
                  (_K8182381836_ _rest81842_))
                (_E8182281831_))))))
    (define gx#stx-list-tail
      (lambda (_stx81784_ _k81785_)
        (let _lp81787_ ((_rest81789_ _stx81784_) (_k81790_ _k81785_))
          (if (fxpositive? _k81790_)
              (let* ((_g8179181798_ (gx#syntax-e _rest81789_))
                     (_E8179381802_
                      (lambda () (error '"No clause matching" _g8179181798_)))
                     (_K8179481807_
                      (lambda (_rest81805_)
                        (_lp81787_ _rest81805_ (fx- _k81790_ '1)))))
                (if (##pair? _g8179181798_)
                    (let* ((_tl8179681810_ (##cdr _g8179181798_))
                           (_rest81813_ _tl8179681810_))
                      (_K8179481807_ _rest81813_))
                    (_E8179381802_)))
              _rest81789_))))
    (define gx#stx-list-ref
      (lambda (_stx81781_ _k81782_)
        (gx#stx-car (gx#stx-list-tail _stx81781_ _k81782_))))
    (define gx#stx-plist?__%
      (lambda (_stx81693_ _key?81694_)
        (if (procedure? _key?81694_)
            '#!void
            (error '"expected procedure" _key?81694_))
        (let _lp81696_ ((_rest81698_ _stx81693_))
          (let* ((_g8169981709_ (gx#stx-e _rest81698_))
                 (_else8170281717_ (lambda () '#f)))
            (let ((_K8170581759_
                   (lambda (_rest81728_ _hd81729_)
                     (if (_key?81694_ _hd81729_)
                         (let* ((_g8173081738_ (gx#stx-e _rest81728_))
                                (_else8173281746_ (lambda () '#f))
                                (_K8173481751_
                                 (lambda (_rest81749_)
                                   (_lp81696_ _rest81749_))))
                           (if (##pair? _g8173081738_)
                               (let* ((_tl8173681754_ (##cdr _g8173081738_))
                                      (_rest81757_ _tl8173681754_))
                                 (_lp81696_ _rest81757_))
                               (_else8173281746_)))
                         '#f)))
                  (_K8170481722_ (lambda () '#t)))
              (let ((_try-match8170181725_
                     (lambda ()
                       (if (##null? _g8169981709_)
                           (_K8170481722_)
                           (_else8170281717_)))))
                (if (##pair? _g8169981709_)
                    (let ((_tl8170781764_ (##cdr _g8169981709_))
                          (_hd8170681762_ (##car _g8169981709_)))
                      (let ((_hd81767_ _hd8170681762_)
                            (_rest81769_ _tl8170781764_))
                        (_K8170581759_ _rest81769_ _hd81767_)))
                    (_try-match8170181725_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81774_)
        (let ((_key?81776_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81774_ _key?81776_))))
    (define gx#stx-plist?
      (lambda _g82882_
        (let ((_g82881_ (##length _g82882_)))
          (cond ((##fx= _g82881_ 1)
                 (apply (lambda (_stx81774_) (gx#stx-plist?__0 _stx81774_))
                        _g82882_))
                ((##fx= _g82881_ 2)
                 (apply (lambda (_stx81778_ _key?81779_)
                          (gx#stx-plist?__% _stx81778_ _key?81779_))
                        _g82882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82882_))))))
    (define gx#stx-getq__%
      (lambda (_key81611_ _stx81612_ _key=?81613_)
        (if (procedure? _key=?81613_)
            '#!void
            (error '"expected procedure" _key=?81613_))
        (let _lp81615_ ((_rest81617_ _stx81612_))
          (let* ((_g8161881626_ (gx#syntax-e _rest81617_))
                 (_else8162081634_ (lambda () '#f))
                 (_K8162281668_
                  (lambda (_rest81637_ _hd81638_)
                    (let* ((_g8163981646_ (gx#syntax-e _rest81637_))
                           (_E8164181650_
                            (lambda ()
                              (error '"No clause matching" _g8163981646_)))
                           (_K8164281656_
                            (lambda (_rest81653_ _val81654_)
                              (if (_key=?81613_ _hd81638_ _key81611_)
                                  _val81654_
                                  (_lp81615_ _rest81653_)))))
                      (if (##pair? _g8163981646_)
                          (let ((_hd8164381659_ (##car _g8163981646_))
                                (_tl8164481661_ (##cdr _g8163981646_)))
                            (let* ((_val81664_ _hd8164381659_)
                                   (_rest81666_ _tl8164481661_))
                              (_K8164281656_ _rest81666_ _val81664_)))
                          (_E8164181650_))))))
            (if (##pair? _g8161881626_)
                (let ((_hd8162381671_ (##car _g8161881626_))
                      (_tl8162481673_ (##cdr _g8161881626_)))
                  (let* ((_hd81676_ _hd8162381671_)
                         (_rest81678_ _tl8162481673_))
                    (_K8162281668_ _rest81678_ _hd81676_)))
                (_else8162081634_))))))
    (define gx#stx-getq__0
      (lambda (_key81683_ _stx81684_)
        (let ((_key=?81686_ gx#stx-eq?))
          (gx#stx-getq__% _key81683_ _stx81684_ _key=?81686_))))
    (define gx#stx-getq
      (lambda _g82884_
        (let ((_g82883_ (##length _g82884_)))
          (cond ((##fx= _g82883_ 2)
                 (apply (lambda (_key81683_ _stx81684_)
                          (gx#stx-getq__0 _key81683_ _stx81684_))
                        _g82884_))
                ((##fx= _g82883_ 3)
                 (apply (lambda (_key81688_ _stx81689_ _key=?81690_)
                          (gx#stx-getq__% _key81688_ _stx81689_ _key=?81690_))
                        _g82884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82884_))))))))
