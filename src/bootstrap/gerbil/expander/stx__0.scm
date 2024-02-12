(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707742540)
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
      (lambda _$args136960_
        (apply make-instance gx#identifier-wrap::t _$args136960_)))
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
      (lambda _$args136957_
        (apply make-instance gx#syntax-wrap::t _$args136957_)))
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
      (lambda _$args136954_
        (apply make-instance gx#syntax-quote::t _$args136954_)))
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
      (lambda (_stx136952_) (symbol? (gx#stx-e _stx136952_))))
    (define gx#identifier-quote?
      (lambda (_stx136950_)
        (if (##structure-direct-instance-of? _stx136950_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx136950_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx136948_)
        (if (##structure-direct-instance-of? _stx136948_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx136948_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx136948_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx136946_)
        (if (##structure-direct-instance-of? _stx136946_ 'gx#syntax-quote::t)
            _stx136946_
            (if (##structure-direct-instance-of?
                 _stx136946_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx136946_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx136929_)
        (if (##structure-direct-instance-of? _stx136929_ 'gx#syntax-wrap::t)
            (let _lp136931_ ((_e136933_
                              (##unchecked-structure-ref
                               _stx136929_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks136934_
                              (cons (##unchecked-structure-ref
                                     _stx136929_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e136933_)
                  (let ((_$e136936_ (##type-id (##structure-type _e136933_))))
                    (if (eq? 'gx#syntax-wrap::t _$e136936_)
                        (_lp136931_
                         (##unchecked-structure-ref _e136933_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e136933_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks136934_))
                        (if (or (eq? 'gx#syntax-quote::t _$e136936_)
                                (eq? 'gx#identifier-wrap::t _$e136936_))
                            (##unchecked-structure-ref
                             _e136933_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e136936_)
                                (_lp136931_
                                 (##unchecked-structure-ref
                                  _e136933_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks136934_)
                                _e136933_))))
                  (if (null? _marks136934_)
                      _e136933_
                      (if (pair? _e136933_)
                          (cons (gx#stx-wrap (car _e136933_) _marks136934_)
                                (gx#stx-wrap (cdr _e136933_) _marks136934_))
                          (if (vector? _e136933_)
                              (vector-map
                               (lambda (_g136941136943_)
                                 (gx#stx-wrap _g136941136943_ _marks136934_))
                               _e136933_)
                              (if (box? _e136933_)
                                  (box (gx#stx-wrap
                                        (unbox _e136933_)
                                        _marks136934_))
                                  _e136933_))))))
            (if (##structure-instance-of? _stx136929_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136929_ '1 gx#AST::t '#f)
                _stx136929_))))
    (define gx#syntax->datum
      (lambda (_stx136927_)
        (if (##structure-instance-of? _stx136927_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx136927_ '1 gx#AST::t '#f))
            (if (pair? _stx136927_)
                (cons (gx#syntax->datum (car _stx136927_))
                      (gx#syntax->datum (cdr _stx136927_)))
                (if (vector? _stx136927_)
                    (vector-map gx#syntax->datum _stx136927_)
                    (if (box? _stx136927_)
                        (box (gx#syntax->datum (unbox _stx136927_)))
                        _stx136927_))))))
    (define gx#datum->syntax__%
      (lambda (_stx136870_ _datum136871_ _src136872_ _quote?136873_)
        (letrec ((_wrap-datum136875_
                  (lambda (_e136899_ _marks136900_)
                    (_wrap-inner136877_
                     _e136899_
                     (lambda (_g136901136903_)
                       (##structure
                        gx#identifier-wrap::t
                        _g136901136903_
                        _src136872_
                        _marks136900_)))))
                 (_wrap-quote136876_
                  (lambda (_e136891_ _ctx136892_ _marks136893_)
                    (_wrap-inner136877_
                     _e136891_
                     (lambda (_g136894136896_)
                       (##structure
                        gx#syntax-quote::t
                        _g136894136896_
                        _src136872_
                        _ctx136892_
                        _marks136893_)))))
                 (_wrap-inner136877_
                  (lambda (_e136884_ _wrap-e136885_)
                    (let _recur136887_ ((_e136889_ _e136884_))
                      (if (symbol? _e136889_)
                          (_wrap-e136885_ _e136889_)
                          (if (pair? _e136889_)
                              (cons (_recur136887_ (car _e136889_))
                                    (_recur136887_ (cdr _e136889_)))
                              (if (vector? _e136889_)
                                  (vector-map _recur136887_ _e136889_)
                                  (if (box? _e136889_)
                                      (box (_recur136887_ (unbox _e136889_)))
                                      _e136889_)))))))
                 (_wrap-outer136878_
                  (lambda (_e136882_)
                    (if (##structure-instance-of? _e136882_ 'gerbil#AST::t)
                        _e136882_
                        (##structure gx#AST::t _e136882_ _src136872_)))))
          (if (##structure-instance-of? _datum136871_ 'gerbil#AST::t)
              _datum136871_
              (if (not _stx136870_)
                  (##structure gx#AST::t _datum136871_ _src136872_)
                  (if (gx#identifier? _stx136870_)
                      (let ((_stx136880_ (gx#stx-unwrap__0 _stx136870_)))
                        (_wrap-outer136878_
                         (if (##structure-direct-instance-of?
                              _stx136880_
                              'gx#syntax-quote::t)
                             (if _quote?136873_
                                 (_wrap-quote136876_
                                  _datum136871_
                                  (##unchecked-structure-ref
                                   _stx136880_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx136880_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum136875_
                                  _datum136871_
                                  (##unchecked-structure-ref
                                   _stx136880_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum136875_
                              _datum136871_
                              (##unchecked-structure-ref
                               _stx136880_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx136870_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx136909_ _datum136910_)
        (let* ((_src136912_ '#f) (_quote?136914_ '#t))
          (gx#datum->syntax__%
           _stx136909_
           _datum136910_
           _src136912_
           _quote?136914_))))
    (define gx#datum->syntax__1
      (lambda (_stx136916_ _datum136917_ _src136918_)
        (let ((_quote?136920_ '#t))
          (gx#datum->syntax__%
           _stx136916_
           _datum136917_
           _src136918_
           _quote?136920_))))
    (define gx#datum->syntax
      (lambda _g141609_
        (let ((_g141608_ (##length _g141609_)))
          (cond ((##fx= _g141608_ 2)
                 (apply (lambda (_stx136909_ _datum136910_)
                          (gx#datum->syntax__0 _stx136909_ _datum136910_))
                        _g141609_))
                ((##fx= _g141608_ 3)
                 (apply (lambda (_stx136916_ _datum136917_ _src136918_)
                          (gx#datum->syntax__1
                           _stx136916_
                           _datum136917_
                           _src136918_))
                        _g141609_))
                ((##fx= _g141608_ 4)
                 (apply (lambda (_stx136922_
                                 _datum136923_
                                 _src136924_
                                 _quote?136925_)
                          (gx#datum->syntax__%
                           _stx136922_
                           _datum136923_
                           _src136924_
                           _quote?136925_))
                        _g141609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g141609_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx136846_ _marks136847_)
        (let _lp136849_ ((_e136851_ _stx136846_)
                         (_marks136852_ _marks136847_)
                         (_src136853_ (gx#stx-source _stx136846_)))
          (if (##structure-direct-instance-of? _e136851_ 'gx#syntax-wrap::t)
              (_lp136849_
               (##unchecked-structure-ref _e136851_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e136851_ '3 gx#syntax-wrap::t '#f)
                _marks136852_)
               (##unchecked-structure-ref _e136851_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e136851_
                   'gx#identifier-wrap::t)
                  (if (null? _marks136852_)
                      _e136851_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e136851_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e136851_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136851_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136852_)))
                  (if (##structure-direct-instance-of?
                       _e136851_
                       'gx#syntax-quote::t)
                      _e136851_
                      (if (##structure-instance-of? _e136851_ 'gerbil#AST::t)
                          (_lp136849_
                           (##unchecked-structure-ref
                            _e136851_
                            '1
                            gx#AST::t
                            '#f)
                           _marks136852_
                           (##unchecked-structure-ref
                            _e136851_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e136851_)
                              (##structure
                               gx#identifier-wrap::t
                               _e136851_
                               _src136853_
                               (reverse _marks136852_))
                              (if (null? _marks136852_)
                                  _e136851_
                                  (if (pair? _e136851_)
                                      (cons (gx#stx-wrap
                                             (car _e136851_)
                                             _marks136852_)
                                            (gx#stx-wrap
                                             (cdr _e136851_)
                                             _marks136852_))
                                      (if (vector? _e136851_)
                                          (vector-map
                                           (lambda (_g136854136856_)
                                             (gx#stx-wrap
                                              _g136854136856_
                                              _marks136852_))
                                           _e136851_)
                                          (if (box? _e136851_)
                                              (box (gx#stx-wrap
                                                    (unbox _e136851_)
                                                    _marks136852_))
                                              _e136851_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx136862_)
        (let ((_marks136864_ '()))
          (gx#stx-unwrap__% _stx136862_ _marks136864_))))
    (define gx#stx-unwrap
      (lambda _g141611_
        (let ((_g141610_ (##length _g141611_)))
          (cond ((##fx= _g141610_ 1)
                 (apply (lambda (_stx136862_) (gx#stx-unwrap__0 _stx136862_))
                        _g141611_))
                ((##fx= _g141610_ 2)
                 (apply (lambda (_stx136866_ _marks136867_)
                          (gx#stx-unwrap__% _stx136866_ _marks136867_))
                        _g141611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g141611_))))))
    (define gx#stx-wrap
      (lambda (_stx136839_ _marks136840_)
        (foldl1 (lambda (_mark136842_ _stx136843_)
                  (gx#stx-apply-mark _stx136843_ _mark136842_))
                _stx136839_
                _marks136840_)))
    (define gx#stx-rewrap
      (lambda (_stx136833_ _marks136834_)
        (foldr1 (lambda (_mark136836_ _stx136837_)
                  (gx#stx-apply-mark _stx136837_ _mark136836_))
                _stx136833_
                _marks136834_)))
    (define gx#stx-apply-mark
      (lambda (_stx136830_ _mark136831_)
        (if (##structure-direct-instance-of? _stx136830_ 'gx#syntax-quote::t)
            _stx136830_
            (if (and (##structure-direct-instance-of?
                      _stx136830_
                      'gx#syntax-wrap::t)
                     (eq? _mark136831_
                          (##unchecked-structure-ref
                           _stx136830_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx136830_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx136830_
                 (gx#stx-source _stx136830_)
                 _mark136831_)))))
    (define gx#apply-mark
      (lambda (_mark136794_ _marks136795_)
        (let* ((_marks136796136804_ _marks136795_)
               (_else136798136812_
                (lambda () (cons _mark136794_ _marks136795_)))
               (_K136800136818_
                (lambda (_rest136815_ _hd136816_)
                  (if (eq? _mark136794_ _hd136816_)
                      _rest136815_
                      (cons _mark136794_ _marks136795_)))))
          (if (##pair? _marks136796136804_)
              (let ((_hd136801136821_ (##car _marks136796136804_))
                    (_tl136802136823_ (##cdr _marks136796136804_)))
                (let* ((_hd136826_ _hd136801136821_)
                       (_rest136828_ _tl136802136823_))
                  (_K136800136818_ _rest136828_ _hd136826_)))
              (_else136798136812_)))))
    (define gx#stx-e
      (lambda (_stx136792_)
        (if (##structure-direct-instance-of? _stx136792_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx136792_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx136792_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136792_ '1 gx#AST::t '#f)
                _stx136792_))))
    (define gx#stx-source
      (lambda (_stx136790_)
        (if (##structure-instance-of? _stx136790_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx136790_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx136784_ _src136785_)
        (if (or (##structure-instance-of? _stx136784_ 'gerbil#AST::t)
                (not _src136785_))
            _stx136784_
            (##structure gx#AST::t _stx136784_ _src136785_))))
    (define gx#stx-datum?
      (lambda (_stx136782_) (gx#self-quoting? (gx#stx-e _stx136782_))))
    (define gx#self-quoting?
      (lambda (_x136765_)
        (let ((_$e136767_ (immediate? _x136765_)))
          (if _$e136767_
              _$e136767_
              (let ((_$e136770_ (number? _x136765_)))
                (if _$e136770_
                    _$e136770_
                    (let ((_$e136773_ (keyword? _x136765_)))
                      (if _$e136773_
                          _$e136773_
                          (let ((_$e136776_ (string? _x136765_)))
                            (if _$e136776_
                                _$e136776_
                                (let ((_$e136779_ (vector? _x136765_)))
                                  (if _$e136779_
                                      _$e136779_
                                      (u8vector? _x136765_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136763_) (boolean? (gx#stx-e _e136763_))))
    (define gx#stx-keyword?
      (lambda (_e136761_) (keyword? (gx#stx-e _e136761_))))
    (define gx#stx-char? (lambda (_e136759_) (char? (gx#stx-e _e136759_))))
    (define gx#stx-number? (lambda (_e136757_) (number? (gx#stx-e _e136757_))))
    (define gx#stx-fixnum? (lambda (_e136755_) (fixnum? (gx#stx-e _e136755_))))
    (define gx#stx-string? (lambda (_e136753_) (string? (gx#stx-e _e136753_))))
    (define gx#stx-null? (lambda (_e136751_) (null? (gx#stx-e _e136751_))))
    (define gx#stx-pair? (lambda (_e136749_) (pair? (gx#stx-e _e136749_))))
    (define gx#stx-list?
      (lambda (_e136711_)
        (let* ((_g136712136721_ (gx#stx-e _e136711_))
               (_E136715136725_
                (lambda () (error '"No clause matching" _g136712136721_))))
          (let ((_K136717136741_
                 (lambda (_rest136739_) (gx#stx-list? _rest136739_)))
                (_K136716136731_ (lambda (_tail136729_) (null? _tail136729_))))
            (if (##pair? _g136712136721_)
                (let* ((_tl136719136744_ (##cdr _g136712136721_))
                       (_rest136747_ _tl136719136744_))
                  (gx#stx-list? _rest136747_))
                (let ((_tail136734_ _g136712136721_))
                  (null? _tail136734_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136704_)
        (let* ((_e136706_ (gx#stx-e _e136704_)) (_$e136708_ (pair? _e136706_)))
          (if _$e136708_ _$e136708_ (null? _e136706_)))))
    (define gx#stx-vector? (lambda (_e136702_) (vector? (gx#stx-e _e136702_))))
    (define gx#stx-box? (lambda (_e136700_) (box? (gx#stx-e _e136700_))))
    (define gx#stx-eq?
      (lambda (_x136697_ _y136698_)
        (eq? (gx#stx-e _x136697_) (gx#stx-e _y136698_))))
    (define gx#stx-eqv?
      (lambda (_x136694_ _y136695_)
        (eqv? (gx#stx-e _x136694_) (gx#stx-e _y136695_))))
    (define gx#stx-equal?
      (lambda (_x136691_ _y136692_)
        (equal? (gx#stx-e _x136691_) (gx#stx-e _y136692_))))
    (define gx#stx-false? (lambda (_x136689_) (not (gx#stx-e _x136689_))))
    (define gx#stx-identifier
      (lambda (_template136686_ . _args136687_)
        (gx#datum->syntax__1
         _template136686_
         (apply make-symbol (gx#syntax->datum _args136687_))
         (gx#stx-source _template136686_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136684_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136684_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136682_)
        (if (##structure-direct-instance-of?
             _stx136682_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136682_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136682_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136682_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136682_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136678_)
        (let ((_stx136680_ (gx#stx-unwrap__0 _stx136678_)))
          (if (gx#identifier-quote? _stx136680_)
              (##unchecked-structure-ref _stx136680_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136633_)
        (let* ((_g136634136644_ (gx#stx-e _stx136633_))
               (_else136637136652_ (lambda () '#f)))
          (let ((_K136640136666_
                 (lambda (_rest136663_ _hd136664_)
                   (if (gx#identifier? _hd136664_)
                       (gx#identifier-list? _rest136663_)
                       '#f)))
                (_K136639136657_ (lambda () '#t)))
            (let ((_try-match136636136660_
                   (lambda ()
                     (if (##null? _g136634136644_)
                         (_K136639136657_)
                         (_else136637136652_)))))
              (if (##pair? _g136634136644_)
                  (let ((_tl136642136671_ (##cdr _g136634136644_))
                        (_hd136641136669_ (##car _g136634136644_)))
                    (let ((_hd136674_ _hd136641136669_)
                          (_rest136676_ _tl136642136671_))
                      (_K136640136666_ _rest136676_ _hd136674_)))
                  (_try-match136636136660_)))))))
    (define gx#genident__%
      (lambda (_e136610_ _src136611_)
        (gx#stx-wrap-source
         (gensym (let ((_e136613_ (gx#stx-e _e136610_)))
                   (if (interned-symbol? _e136613_) _e136613_ 'g)))
         (let ((_$e136615_ (gx#stx-source _e136610_)))
           (if _$e136615_ _$e136615_ _src136611_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136622_ 'g) (_src136624_ '#f))
          (gx#genident__% _e136622_ _src136624_))))
    (define gx#genident__1
      (lambda (_e136626_)
        (let ((_src136628_ '#f)) (gx#genident__% _e136626_ _src136628_))))
    (define gx#genident
      (lambda _g141613_
        (let ((_g141612_ (##length _g141613_)))
          (cond ((##fx= _g141612_ 0)
                 (apply (lambda () (gx#genident__0)) _g141613_))
                ((##fx= _g141612_ 1)
                 (apply (lambda (_e136626_) (gx#genident__1 _e136626_))
                        _g141613_))
                ((##fx= _g141612_ 2)
                 (apply (lambda (_e136630_ _src136631_)
                          (gx#genident__% _e136630_ _src136631_))
                        _g141613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g141613_))))))
    (define gx#gentemps
      (lambda (_stx-lst136607_) (gx#stx-map1 gx#genident _stx-lst136607_)))
    (define gx#syntax->list
      (lambda (_stx136605_) (gx#stx-map1 values _stx136605_)))
    (define gx#stx-car
      (lambda (_stx136602_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136602_)))))
    (define gx#stx-cdr
      (lambda (_stx136599_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136599_)))))
    (define gx#stx-length
      (lambda (_stx136564_)
        (let _lp136566_ ((_rest136568_ _stx136564_) (_n136569_ '0))
          (let* ((_g136570136578_ (gx#stx-e _rest136568_))
                 (_else136572136586_ (lambda () _n136569_))
                 (_K136574136591_
                  (lambda (_rest136589_)
                    (_lp136566_ _rest136589_ (fx+ _n136569_ '1)))))
            (if (##pair? _g136570136578_)
                (let* ((_tl136576136594_ (##cdr _g136570136578_))
                       (_rest136597_ _tl136576136594_))
                  (_K136574136591_ _rest136597_))
                (_else136572136586_))))))
    (define gx#stx-for-each
      (lambda _g141615_
        (let ((_g141614_ (##length _g141615_)))
          (cond ((##fx= _g141614_ 2)
                 (apply (lambda (_f136557_ _stx136558_)
                          (gx#stx-for-each1 _f136557_ _stx136558_))
                        _g141615_))
                ((##fx= _g141614_ 3)
                 (apply (lambda (_f136560_ _xstx136561_ _ystx136562_)
                          (gx#stx-for-each2
                           _f136560_
                           _xstx136561_
                           _ystx136562_))
                        _g141615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g141615_))))))
    (define gx#stx-for-each1
      (lambda (_f136507_ _stx136508_)
        (if (procedure? _f136507_)
            '#!void
            (error '"expected procedure" _f136507_))
        (let _lp136510_ ((_rest136512_ _stx136508_))
          (let* ((_g136513136523_ (gx#syntax-e _rest136512_))
                 (_else136516136531_ (lambda () (_f136507_ _rest136512_))))
            (let ((_K136519136545_
                   (lambda (_rest136542_ _hd136543_)
                     (_f136507_ _hd136543_)
                     (_lp136510_ _rest136542_)))
                  (_K136518136536_ (lambda () '#!void)))
              (let ((_try-match136515136539_
                     (lambda ()
                       (if (##null? _g136513136523_)
                           (_K136518136536_)
                           (_else136516136531_)))))
                (if (##pair? _g136513136523_)
                    (let ((_tl136521136550_ (##cdr _g136513136523_))
                          (_hd136520136548_ (##car _g136513136523_)))
                      (let ((_hd136553_ _hd136520136548_)
                            (_rest136555_ _tl136521136550_))
                        (_K136519136545_ _rest136555_ _hd136553_)))
                    (_try-match136515136539_))))))))
    (define gx#stx-for-each2
      (lambda (_f136412_ _xstx136413_ _ystx136414_)
        (if (procedure? _f136412_)
            '#!void
            (error '"expected procedure" _f136412_))
        (let _lp136416_ ((_xrest136418_ _xstx136413_)
                         (_yrest136419_ _ystx136414_))
          (let* ((_g136420136430_ (gx#syntax-e _xrest136418_))
                 (_else136423136438_ (lambda () '#!void)))
            (let ((_K136426136495_
                   (lambda (_xrest136464_ _xhd136465_)
                     (let* ((_g136466136473_ (gx#syntax-e _yrest136419_))
                            (_E136468136477_
                             (lambda ()
                               (error '"No clause matching" _g136466136473_)))
                            (_K136469136483_
                             (lambda (_yrest136480_ _yhd136481_)
                               (_f136412_ _xhd136465_ _yhd136481_)
                               (_lp136416_ _xrest136464_ _yrest136480_))))
                       (if (##pair? _g136466136473_)
                           (let ((_hd136470136486_ (##car _g136466136473_))
                                 (_tl136471136488_ (##cdr _g136466136473_)))
                             (let* ((_yhd136491_ _hd136470136486_)
                                    (_yrest136493_ _tl136471136488_))
                               (_K136469136483_ _yrest136493_ _yhd136491_)))
                           (_E136468136477_)))))
                  (_K136425136458_
                   (lambda ()
                     (let* ((_yrest136442136447_ _yrest136419_)
                            (_E136444136451_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136442136447_)))
                            (_K136445136455_
                             (lambda ()
                               (_f136412_ _xrest136418_ _yrest136419_))))
                       (if (not (gx#stx-null? _yrest136442136447_))
                           (_K136445136455_)
                           (_E136444136451_))))))
              (let ((_try-match136422136461_
                     (lambda ()
                       (if (not (null? _g136420136430_))
                           (_K136425136458_)
                           (_else136423136438_)))))
                (if (##pair? _g136420136430_)
                    (let ((_tl136428136500_ (##cdr _g136420136430_))
                          (_hd136427136498_ (##car _g136420136430_)))
                      (let ((_xhd136503_ _hd136427136498_)
                            (_xrest136505_ _tl136428136500_))
                        (_K136426136495_ _xrest136505_ _xhd136503_)))
                    (_try-match136422136461_))))))))
    (define gx#stx-map
      (lambda _g141617_
        (let ((_g141616_ (##length _g141617_)))
          (cond ((##fx= _g141616_ 2)
                 (apply (lambda (_f136405_ _stx136406_)
                          (gx#stx-map1 _f136405_ _stx136406_))
                        _g141617_))
                ((##fx= _g141616_ 3)
                 (apply (lambda (_f136408_ _xstx136409_ _ystx136410_)
                          (gx#stx-map2 _f136408_ _xstx136409_ _ystx136410_))
                        _g141617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g141617_))))))
    (define gx#stx-map1
      (lambda (_f136355_ _stx136356_)
        (if (procedure? _f136355_)
            '#!void
            (error '"expected procedure" _f136355_))
        (let _recur136358_ ((_rest136360_ _stx136356_))
          (let* ((_g136361136371_ (gx#syntax-e _rest136360_))
                 (_else136364136379_ (lambda () (_f136355_ _rest136360_))))
            (let ((_K136367136393_
                   (lambda (_rest136390_ _hd136391_)
                     (cons (_f136355_ _hd136391_)
                           (_recur136358_ _rest136390_))))
                  (_K136366136384_ (lambda () '())))
              (let ((_try-match136363136387_
                     (lambda ()
                       (if (##null? _g136361136371_)
                           (_K136366136384_)
                           (_else136364136379_)))))
                (if (##pair? _g136361136371_)
                    (let ((_tl136369136398_ (##cdr _g136361136371_))
                          (_hd136368136396_ (##car _g136361136371_)))
                      (let ((_hd136401_ _hd136368136396_)
                            (_rest136403_ _tl136369136398_))
                        (_K136367136393_ _rest136403_ _hd136401_)))
                    (_try-match136363136387_))))))))
    (define gx#stx-map2
      (lambda (_f136260_ _xstx136261_ _ystx136262_)
        (if (procedure? _f136260_)
            '#!void
            (error '"expected procedure" _f136260_))
        (let _recur136264_ ((_xrest136266_ _xstx136261_)
                            (_yrest136267_ _ystx136262_))
          (let* ((_g136268136278_ (gx#syntax-e _xrest136266_))
                 (_else136271136286_ (lambda () '())))
            (let ((_K136274136343_
                   (lambda (_xrest136312_ _xhd136313_)
                     (let* ((_g136314136321_ (gx#syntax-e _yrest136267_))
                            (_E136316136325_
                             (lambda ()
                               (error '"No clause matching" _g136314136321_)))
                            (_K136317136331_
                             (lambda (_yrest136328_ _yhd136329_)
                               (cons (_f136260_ _xhd136313_ _yhd136329_)
                                     (_recur136264_
                                      _xrest136312_
                                      _yrest136328_)))))
                       (if (##pair? _g136314136321_)
                           (let ((_hd136318136334_ (##car _g136314136321_))
                                 (_tl136319136336_ (##cdr _g136314136321_)))
                             (let* ((_yhd136339_ _hd136318136334_)
                                    (_yrest136341_ _tl136319136336_))
                               (_K136317136331_ _yrest136341_ _yhd136339_)))
                           (_E136316136325_)))))
                  (_K136273136306_
                   (lambda ()
                     (let* ((_yrest136290136295_ _yrest136267_)
                            (_E136292136299_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136290136295_)))
                            (_K136293136303_
                             (lambda ()
                               (_f136260_ _xrest136266_ _yrest136267_))))
                       (if (not (gx#stx-null? _yrest136290136295_))
                           (_K136293136303_)
                           (_E136292136299_))))))
              (let ((_try-match136270136309_
                     (lambda ()
                       (if (not (null? _g136268136278_))
                           (_K136273136306_)
                           (_else136271136286_)))))
                (if (##pair? _g136268136278_)
                    (let ((_tl136276136348_ (##cdr _g136268136278_))
                          (_hd136275136346_ (##car _g136268136278_)))
                      (let ((_xhd136351_ _hd136275136346_)
                            (_xrest136353_ _tl136276136348_))
                        (_K136274136343_ _xrest136353_ _xhd136351_)))
                    (_try-match136270136309_))))))))
    (define gx#stx-andmap
      (lambda (_f136210_ _stx136211_)
        (if (procedure? _f136210_)
            '#!void
            (error '"expected procedure" _f136210_))
        (let _lp136213_ ((_rest136215_ _stx136211_))
          (let* ((_g136216136226_ (gx#syntax-e _rest136215_))
                 (_else136219136234_ (lambda () (_f136210_ _rest136215_))))
            (let ((_K136222136248_
                   (lambda (_rest136245_ _hd136246_)
                     (if (_f136210_ _hd136246_)
                         (_lp136213_ _rest136245_)
                         '#f)))
                  (_K136221136239_ (lambda () '#t)))
              (let ((_try-match136218136242_
                     (lambda ()
                       (if (##null? _g136216136226_)
                           (_K136221136239_)
                           (_else136219136234_)))))
                (if (##pair? _g136216136226_)
                    (let ((_tl136224136253_ (##cdr _g136216136226_))
                          (_hd136223136251_ (##car _g136216136226_)))
                      (let ((_hd136256_ _hd136223136251_)
                            (_rest136258_ _tl136224136253_))
                        (_K136222136248_ _rest136258_ _hd136256_)))
                    (_try-match136218136242_))))))))
    (define gx#stx-ormap
      (lambda (_f136157_ _stx136158_)
        (if (procedure? _f136157_)
            '#!void
            (error '"expected procedure" _f136157_))
        (let _lp136160_ ((_rest136162_ _stx136158_))
          (let* ((_g136163136173_ (gx#syntax-e _rest136162_))
                 (_else136166136181_ (lambda () (_f136157_ _rest136162_))))
            (let ((_K136169136198_
                   (lambda (_rest136192_ _hd136193_)
                     (let ((_$e136195_ (_f136157_ _hd136193_)))
                       (if _$e136195_ _$e136195_ (_lp136160_ _rest136192_)))))
                  (_K136168136186_ (lambda () '#f)))
              (let ((_try-match136165136189_
                     (lambda ()
                       (if (##null? _g136163136173_)
                           (_K136168136186_)
                           (_else136166136181_)))))
                (if (##pair? _g136163136173_)
                    (let ((_tl136171136203_ (##cdr _g136163136173_))
                          (_hd136170136201_ (##car _g136163136173_)))
                      (let ((_hd136206_ _hd136170136201_)
                            (_rest136208_ _tl136171136203_))
                        (_K136169136198_ _rest136208_ _hd136206_)))
                    (_try-match136165136189_))))))))
    (define gx#stx-foldl
      (lambda (_f136105_ _iv136106_ _stx136107_)
        (if (procedure? _f136105_)
            '#!void
            (error '"expected procedure" _f136105_))
        (let _lp136109_ ((_r136111_ _iv136106_) (_rest136112_ _stx136107_))
          (let* ((_g136113136123_ (gx#syntax-e _rest136112_))
                 (_else136116136131_
                  (lambda () (_f136105_ _rest136112_ _r136111_))))
            (let ((_K136119136145_
                   (lambda (_rest136142_ _hd136143_)
                     (_lp136109_
                      (_f136105_ _hd136143_ _r136111_)
                      _rest136142_)))
                  (_K136118136136_ (lambda () _r136111_)))
              (let ((_try-match136115136139_
                     (lambda ()
                       (if (##null? _g136113136123_)
                           (_K136118136136_)
                           (_else136116136131_)))))
                (if (##pair? _g136113136123_)
                    (let ((_tl136121136150_ (##cdr _g136113136123_))
                          (_hd136120136148_ (##car _g136113136123_)))
                      (let ((_hd136153_ _hd136120136148_)
                            (_rest136155_ _tl136121136150_))
                        (_K136119136145_ _rest136155_ _hd136153_)))
                    (_try-match136115136139_))))))))
    (define gx#stx-foldr
      (lambda (_f136054_ _iv136055_ _stx136056_)
        (if (procedure? _f136054_)
            '#!void
            (error '"expected procedure" _f136054_))
        (let _recur136058_ ((_rest136060_ _stx136056_))
          (let* ((_g136061136071_ (gx#syntax-e _rest136060_))
                 (_else136064136079_
                  (lambda () (_f136054_ _rest136060_ _iv136055_))))
            (let ((_K136067136093_
                   (lambda (_rest136090_ _hd136091_)
                     (_f136054_ _hd136091_ (_recur136058_ _rest136090_))))
                  (_K136066136084_ (lambda () _iv136055_)))
              (let ((_try-match136063136087_
                     (lambda ()
                       (if (##null? _g136061136071_)
                           (_K136066136084_)
                           (_else136064136079_)))))
                (if (##pair? _g136061136071_)
                    (let ((_tl136069136098_ (##cdr _g136061136071_))
                          (_hd136068136096_ (##car _g136061136071_)))
                      (let ((_hd136101_ _hd136068136096_)
                            (_rest136103_ _tl136069136098_))
                        (_K136067136093_ _rest136103_ _hd136101_)))
                    (_try-match136063136087_))))))))
    (define gx#stx-reverse
      (lambda (_stx136052_) (gx#stx-foldl cons '() _stx136052_)))
    (define gx#stx-last
      (lambda (_stx136013_)
        (let _lp136015_ ((_rest136017_ _stx136013_))
          (let* ((_g136018136026_ (gx#syntax-e _rest136017_))
                 (_else136020136034_ (lambda () _rest136017_))
                 (_K136022136040_
                  (lambda (_rest136037_ _hd136038_)
                    (if (gx#stx-null? _rest136037_)
                        _hd136038_
                        (_lp136015_ _rest136037_)))))
            (if (##pair? _g136018136026_)
                (let ((_hd136023136043_ (##car _g136018136026_))
                      (_tl136024136045_ (##cdr _g136018136026_)))
                  (let* ((_hd136048_ _hd136023136043_)
                         (_rest136050_ _tl136024136045_))
                    (_K136022136040_ _rest136050_ _hd136048_)))
                (_else136020136034_))))))
    (define gx#stx-last-pair
      (lambda (_stx135984_)
        (let _lp135986_ ((_hd135988_ _stx135984_))
          (let* ((_g135989135996_ (gx#syntax-e _hd135988_))
                 (_E135991136000_
                  (lambda () (error '"No clause matching" _g135989135996_)))
                 (_K135992136005_
                  (lambda (_rest136003_)
                    (if (gx#stx-pair? _rest136003_)
                        (_lp135986_ _rest136003_)
                        _hd135988_))))
            (if (##pair? _g135989135996_)
                (let* ((_tl135994136008_ (##cdr _g135989135996_))
                       (_rest136011_ _tl135994136008_))
                  (_K135992136005_ _rest136011_))
                (_E135991136000_))))))
    (define gx#stx-list-tail
      (lambda (_stx135953_ _k135954_)
        (let _lp135956_ ((_rest135958_ _stx135953_) (_k135959_ _k135954_))
          (if (fxpositive? _k135959_)
              (let* ((_g135960135967_ (gx#syntax-e _rest135958_))
                     (_E135962135971_
                      (lambda ()
                        (error '"No clause matching" _g135960135967_)))
                     (_K135963135976_
                      (lambda (_rest135974_)
                        (_lp135956_ _rest135974_ (fx- _k135959_ '1)))))
                (if (##pair? _g135960135967_)
                    (let* ((_tl135965135979_ (##cdr _g135960135967_))
                           (_rest135982_ _tl135965135979_))
                      (_K135963135976_ _rest135982_))
                    (_E135962135971_)))
              _rest135958_))))
    (define gx#stx-list-ref
      (lambda (_stx135950_ _k135951_)
        (gx#stx-car (gx#stx-list-tail _stx135950_ _k135951_))))
    (define gx#stx-plist?__%
      (lambda (_stx135862_ _key?135863_)
        (if (procedure? _key?135863_)
            '#!void
            (error '"expected procedure" _key?135863_))
        (let _lp135865_ ((_rest135867_ _stx135862_))
          (let* ((_g135868135878_ (gx#stx-e _rest135867_))
                 (_else135871135886_ (lambda () '#f)))
            (let ((_K135874135928_
                   (lambda (_rest135897_ _hd135898_)
                     (if (_key?135863_ _hd135898_)
                         (let* ((_g135899135907_ (gx#stx-e _rest135897_))
                                (_else135901135915_ (lambda () '#f))
                                (_K135903135920_
                                 (lambda (_rest135918_)
                                   (_lp135865_ _rest135918_))))
                           (if (##pair? _g135899135907_)
                               (let* ((_tl135905135923_
                                       (##cdr _g135899135907_))
                                      (_rest135926_ _tl135905135923_))
                                 (_lp135865_ _rest135926_))
                               (_else135901135915_)))
                         '#f)))
                  (_K135873135891_ (lambda () '#t)))
              (let ((_try-match135870135894_
                     (lambda ()
                       (if (##null? _g135868135878_)
                           (_K135873135891_)
                           (_else135871135886_)))))
                (if (##pair? _g135868135878_)
                    (let ((_tl135876135933_ (##cdr _g135868135878_))
                          (_hd135875135931_ (##car _g135868135878_)))
                      (let ((_hd135936_ _hd135875135931_)
                            (_rest135938_ _tl135876135933_))
                        (_K135874135928_ _rest135938_ _hd135936_)))
                    (_try-match135870135894_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx135943_)
        (let ((_key?135945_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx135943_ _key?135945_))))
    (define gx#stx-plist?
      (lambda _g141619_
        (let ((_g141618_ (##length _g141619_)))
          (cond ((##fx= _g141618_ 1)
                 (apply (lambda (_stx135943_) (gx#stx-plist?__0 _stx135943_))
                        _g141619_))
                ((##fx= _g141618_ 2)
                 (apply (lambda (_stx135947_ _key?135948_)
                          (gx#stx-plist?__% _stx135947_ _key?135948_))
                        _g141619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g141619_))))))
    (define gx#stx-getq__%
      (lambda (_key135780_ _stx135781_ _key=?135782_)
        (if (procedure? _key=?135782_)
            '#!void
            (error '"expected procedure" _key=?135782_))
        (let _lp135784_ ((_rest135786_ _stx135781_))
          (let* ((_g135787135795_ (gx#syntax-e _rest135786_))
                 (_else135789135803_ (lambda () '#f))
                 (_K135791135837_
                  (lambda (_rest135806_ _hd135807_)
                    (let* ((_g135808135815_ (gx#syntax-e _rest135806_))
                           (_E135810135819_
                            (lambda ()
                              (error '"No clause matching" _g135808135815_)))
                           (_K135811135825_
                            (lambda (_rest135822_ _val135823_)
                              (if (_key=?135782_ _hd135807_ _key135780_)
                                  _val135823_
                                  (_lp135784_ _rest135822_)))))
                      (if (##pair? _g135808135815_)
                          (let ((_hd135812135828_ (##car _g135808135815_))
                                (_tl135813135830_ (##cdr _g135808135815_)))
                            (let* ((_val135833_ _hd135812135828_)
                                   (_rest135835_ _tl135813135830_))
                              (_K135811135825_ _rest135835_ _val135833_)))
                          (_E135810135819_))))))
            (if (##pair? _g135787135795_)
                (let ((_hd135792135840_ (##car _g135787135795_))
                      (_tl135793135842_ (##cdr _g135787135795_)))
                  (let* ((_hd135845_ _hd135792135840_)
                         (_rest135847_ _tl135793135842_))
                    (_K135791135837_ _rest135847_ _hd135845_)))
                (_else135789135803_))))))
    (define gx#stx-getq__0
      (lambda (_key135852_ _stx135853_)
        (let ((_key=?135855_ gx#stx-eq?))
          (gx#stx-getq__% _key135852_ _stx135853_ _key=?135855_))))
    (define gx#stx-getq
      (lambda _g141621_
        (let ((_g141620_ (##length _g141621_)))
          (cond ((##fx= _g141620_ 2)
                 (apply (lambda (_key135852_ _stx135853_)
                          (gx#stx-getq__0 _key135852_ _stx135853_))
                        _g141621_))
                ((##fx= _g141620_ 3)
                 (apply (lambda (_key135857_ _stx135858_ _key=?135859_)
                          (gx#stx-getq__%
                           _key135857_
                           _stx135858_
                           _key=?135859_))
                        _g141621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g141621_))))))))
