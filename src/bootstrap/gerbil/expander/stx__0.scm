(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708194422)
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
      (lambda _$args136426_
        (apply make-instance gx#identifier-wrap::t _$args136426_)))
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
      (lambda _$args136423_
        (apply make-instance gx#syntax-wrap::t _$args136423_)))
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
      (lambda _$args136420_
        (apply make-instance gx#syntax-quote::t _$args136420_)))
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
      (lambda (_stx136418_) (symbol? (gx#stx-e _stx136418_))))
    (define gx#identifier-quote?
      (lambda (_stx136416_)
        (if (##structure-direct-instance-of? _stx136416_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx136416_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx136414_)
        (if (##structure-direct-instance-of? _stx136414_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx136414_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx136414_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx136412_)
        (if (##structure-direct-instance-of? _stx136412_ 'gx#syntax-quote::t)
            _stx136412_
            (if (##structure-direct-instance-of?
                 _stx136412_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx136412_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx136395_)
        (if (##structure-direct-instance-of? _stx136395_ 'gx#syntax-wrap::t)
            (let _lp136397_ ((_e136399_
                              (##unchecked-structure-ref
                               _stx136395_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks136400_
                              (cons (##unchecked-structure-ref
                                     _stx136395_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e136399_)
                  (let ((_$e136402_ (##type-id (##structure-type _e136399_))))
                    (if (eq? 'gx#syntax-wrap::t _$e136402_)
                        (_lp136397_
                         (##unchecked-structure-ref _e136399_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e136399_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks136400_))
                        (if (or (eq? 'gx#syntax-quote::t _$e136402_)
                                (eq? 'gx#identifier-wrap::t _$e136402_))
                            (##unchecked-structure-ref
                             _e136399_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e136402_)
                                (_lp136397_
                                 (##unchecked-structure-ref
                                  _e136399_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks136400_)
                                _e136399_))))
                  (if (null? _marks136400_)
                      _e136399_
                      (if (pair? _e136399_)
                          (cons (gx#stx-wrap (car _e136399_) _marks136400_)
                                (gx#stx-wrap (cdr _e136399_) _marks136400_))
                          (if (vector? _e136399_)
                              (vector-map
                               (lambda (_g136407136409_)
                                 (gx#stx-wrap _g136407136409_ _marks136400_))
                               _e136399_)
                              (if (box? _e136399_)
                                  (box (gx#stx-wrap
                                        (unbox _e136399_)
                                        _marks136400_))
                                  _e136399_))))))
            (if (##structure-instance-of? _stx136395_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136395_ '1 gx#AST::t '#f)
                _stx136395_))))
    (define gx#syntax->datum
      (lambda (_stx136393_)
        (if (##structure-instance-of? _stx136393_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx136393_ '1 gx#AST::t '#f))
            (if (pair? _stx136393_)
                (cons (gx#syntax->datum (car _stx136393_))
                      (gx#syntax->datum (cdr _stx136393_)))
                (if (vector? _stx136393_)
                    (vector-map gx#syntax->datum _stx136393_)
                    (if (box? _stx136393_)
                        (box (gx#syntax->datum (unbox _stx136393_)))
                        _stx136393_))))))
    (define gx#datum->syntax__%
      (lambda (_stx136336_ _datum136337_ _src136338_ _quote?136339_)
        (letrec ((_wrap-datum136341_
                  (lambda (_e136365_ _marks136366_)
                    (_wrap-inner136343_
                     _e136365_
                     (lambda (_g136367136369_)
                       (##structure
                        gx#identifier-wrap::t
                        _g136367136369_
                        _src136338_
                        _marks136366_)))))
                 (_wrap-quote136342_
                  (lambda (_e136357_ _ctx136358_ _marks136359_)
                    (_wrap-inner136343_
                     _e136357_
                     (lambda (_g136360136362_)
                       (##structure
                        gx#syntax-quote::t
                        _g136360136362_
                        _src136338_
                        _ctx136358_
                        _marks136359_)))))
                 (_wrap-inner136343_
                  (lambda (_e136350_ _wrap-e136351_)
                    (let _recur136353_ ((_e136355_ _e136350_))
                      (if (symbol? _e136355_)
                          (_wrap-e136351_ _e136355_)
                          (if (pair? _e136355_)
                              (cons (_recur136353_ (car _e136355_))
                                    (_recur136353_ (cdr _e136355_)))
                              (if (vector? _e136355_)
                                  (vector-map _recur136353_ _e136355_)
                                  (if (box? _e136355_)
                                      (box (_recur136353_ (unbox _e136355_)))
                                      _e136355_)))))))
                 (_wrap-outer136344_
                  (lambda (_e136348_)
                    (if (##structure-instance-of? _e136348_ 'gerbil#AST::t)
                        _e136348_
                        (##structure gx#AST::t _e136348_ _src136338_)))))
          (if (##structure-instance-of? _datum136337_ 'gerbil#AST::t)
              _datum136337_
              (if (not _stx136336_)
                  (##structure gx#AST::t _datum136337_ _src136338_)
                  (if (gx#identifier? _stx136336_)
                      (let ((_stx136346_ (gx#stx-unwrap__0 _stx136336_)))
                        (_wrap-outer136344_
                         (if (##structure-direct-instance-of?
                              _stx136346_
                              'gx#syntax-quote::t)
                             (if _quote?136339_
                                 (_wrap-quote136342_
                                  _datum136337_
                                  (##unchecked-structure-ref
                                   _stx136346_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx136346_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum136341_
                                  _datum136337_
                                  (##unchecked-structure-ref
                                   _stx136346_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum136341_
                              _datum136337_
                              (##unchecked-structure-ref
                               _stx136346_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx136336_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx136375_ _datum136376_)
        (let* ((_src136378_ '#f) (_quote?136380_ '#t))
          (gx#datum->syntax__%
           _stx136375_
           _datum136376_
           _src136378_
           _quote?136380_))))
    (define gx#datum->syntax__1
      (lambda (_stx136382_ _datum136383_ _src136384_)
        (let ((_quote?136386_ '#t))
          (gx#datum->syntax__%
           _stx136382_
           _datum136383_
           _src136384_
           _quote?136386_))))
    (define gx#datum->syntax
      (lambda _g140574_
        (let ((_g140573_ (##length _g140574_)))
          (cond ((##fx= _g140573_ 2)
                 (apply (lambda (_stx136375_ _datum136376_)
                          (gx#datum->syntax__0 _stx136375_ _datum136376_))
                        _g140574_))
                ((##fx= _g140573_ 3)
                 (apply (lambda (_stx136382_ _datum136383_ _src136384_)
                          (gx#datum->syntax__1
                           _stx136382_
                           _datum136383_
                           _src136384_))
                        _g140574_))
                ((##fx= _g140573_ 4)
                 (apply (lambda (_stx136388_
                                 _datum136389_
                                 _src136390_
                                 _quote?136391_)
                          (gx#datum->syntax__%
                           _stx136388_
                           _datum136389_
                           _src136390_
                           _quote?136391_))
                        _g140574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140574_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx136312_ _marks136313_)
        (let _lp136315_ ((_e136317_ _stx136312_)
                         (_marks136318_ _marks136313_)
                         (_src136319_ (gx#stx-source _stx136312_)))
          (if (##structure-direct-instance-of? _e136317_ 'gx#syntax-wrap::t)
              (_lp136315_
               (##unchecked-structure-ref _e136317_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e136317_ '3 gx#syntax-wrap::t '#f)
                _marks136318_)
               (##unchecked-structure-ref _e136317_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e136317_
                   'gx#identifier-wrap::t)
                  (if (null? _marks136318_)
                      _e136317_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e136317_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e136317_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136317_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136318_)))
                  (if (##structure-direct-instance-of?
                       _e136317_
                       'gx#syntax-quote::t)
                      _e136317_
                      (if (##structure-instance-of? _e136317_ 'gerbil#AST::t)
                          (_lp136315_
                           (##unchecked-structure-ref
                            _e136317_
                            '1
                            gx#AST::t
                            '#f)
                           _marks136318_
                           (##unchecked-structure-ref
                            _e136317_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e136317_)
                              (##structure
                               gx#identifier-wrap::t
                               _e136317_
                               _src136319_
                               (reverse _marks136318_))
                              (if (null? _marks136318_)
                                  _e136317_
                                  (if (pair? _e136317_)
                                      (cons (gx#stx-wrap
                                             (car _e136317_)
                                             _marks136318_)
                                            (gx#stx-wrap
                                             (cdr _e136317_)
                                             _marks136318_))
                                      (if (vector? _e136317_)
                                          (vector-map
                                           (lambda (_g136320136322_)
                                             (gx#stx-wrap
                                              _g136320136322_
                                              _marks136318_))
                                           _e136317_)
                                          (if (box? _e136317_)
                                              (box (gx#stx-wrap
                                                    (unbox _e136317_)
                                                    _marks136318_))
                                              _e136317_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx136328_)
        (let ((_marks136330_ '()))
          (gx#stx-unwrap__% _stx136328_ _marks136330_))))
    (define gx#stx-unwrap
      (lambda _g140576_
        (let ((_g140575_ (##length _g140576_)))
          (cond ((##fx= _g140575_ 1)
                 (apply (lambda (_stx136328_) (gx#stx-unwrap__0 _stx136328_))
                        _g140576_))
                ((##fx= _g140575_ 2)
                 (apply (lambda (_stx136332_ _marks136333_)
                          (gx#stx-unwrap__% _stx136332_ _marks136333_))
                        _g140576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140576_))))))
    (define gx#stx-wrap
      (lambda (_stx136305_ _marks136306_)
        (foldl1 (lambda (_mark136308_ _stx136309_)
                  (gx#stx-apply-mark _stx136309_ _mark136308_))
                _stx136305_
                _marks136306_)))
    (define gx#stx-rewrap
      (lambda (_stx136299_ _marks136300_)
        (foldr1 (lambda (_mark136302_ _stx136303_)
                  (gx#stx-apply-mark _stx136303_ _mark136302_))
                _stx136299_
                _marks136300_)))
    (define gx#stx-apply-mark
      (lambda (_stx136296_ _mark136297_)
        (if (##structure-direct-instance-of? _stx136296_ 'gx#syntax-quote::t)
            _stx136296_
            (if (and (##structure-direct-instance-of?
                      _stx136296_
                      'gx#syntax-wrap::t)
                     (eq? _mark136297_
                          (##unchecked-structure-ref
                           _stx136296_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx136296_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx136296_
                 (gx#stx-source _stx136296_)
                 _mark136297_)))))
    (define gx#apply-mark
      (lambda (_mark136260_ _marks136261_)
        (let* ((_marks136262136270_ _marks136261_)
               (_else136264136278_
                (lambda () (cons _mark136260_ _marks136261_)))
               (_K136266136284_
                (lambda (_rest136281_ _hd136282_)
                  (if (eq? _mark136260_ _hd136282_)
                      _rest136281_
                      (cons _mark136260_ _marks136261_)))))
          (if (##pair? _marks136262136270_)
              (let ((_hd136267136287_ (##car _marks136262136270_))
                    (_tl136268136289_ (##cdr _marks136262136270_)))
                (let* ((_hd136292_ _hd136267136287_)
                       (_rest136294_ _tl136268136289_))
                  (_K136266136284_ _rest136294_ _hd136292_)))
              (_else136264136278_)))))
    (define gx#stx-e
      (lambda (_stx136258_)
        (if (##structure-direct-instance-of? _stx136258_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx136258_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx136258_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136258_ '1 gx#AST::t '#f)
                _stx136258_))))
    (define gx#stx-source
      (lambda (_stx136256_)
        (if (##structure-instance-of? _stx136256_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx136256_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx136250_ _src136251_)
        (if (or (##structure-instance-of? _stx136250_ 'gerbil#AST::t)
                (not _src136251_))
            _stx136250_
            (##structure gx#AST::t _stx136250_ _src136251_))))
    (define gx#stx-datum?
      (lambda (_stx136248_) (gx#self-quoting? (gx#stx-e _stx136248_))))
    (define gx#self-quoting?
      (lambda (_x136231_)
        (let ((_$e136233_ (immediate? _x136231_)))
          (if _$e136233_
              _$e136233_
              (let ((_$e136236_ (number? _x136231_)))
                (if _$e136236_
                    _$e136236_
                    (let ((_$e136239_ (keyword? _x136231_)))
                      (if _$e136239_
                          _$e136239_
                          (let ((_$e136242_ (string? _x136231_)))
                            (if _$e136242_
                                _$e136242_
                                (let ((_$e136245_ (vector? _x136231_)))
                                  (if _$e136245_
                                      _$e136245_
                                      (u8vector? _x136231_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136229_) (boolean? (gx#stx-e _e136229_))))
    (define gx#stx-keyword?
      (lambda (_e136227_) (keyword? (gx#stx-e _e136227_))))
    (define gx#stx-char? (lambda (_e136225_) (char? (gx#stx-e _e136225_))))
    (define gx#stx-number? (lambda (_e136223_) (number? (gx#stx-e _e136223_))))
    (define gx#stx-fixnum? (lambda (_e136221_) (fixnum? (gx#stx-e _e136221_))))
    (define gx#stx-string? (lambda (_e136219_) (string? (gx#stx-e _e136219_))))
    (define gx#stx-null? (lambda (_e136217_) (null? (gx#stx-e _e136217_))))
    (define gx#stx-pair? (lambda (_e136215_) (pair? (gx#stx-e _e136215_))))
    (define gx#stx-list?
      (lambda (_e136177_)
        (let* ((_g136178136187_ (gx#stx-e _e136177_))
               (_E136181136191_
                (lambda () (error '"No clause matching" _g136178136187_))))
          (let ((_K136183136207_
                 (lambda (_rest136205_) (gx#stx-list? _rest136205_)))
                (_K136182136197_ (lambda (_tail136195_) (null? _tail136195_))))
            (if (##pair? _g136178136187_)
                (let* ((_tl136185136210_ (##cdr _g136178136187_))
                       (_rest136213_ _tl136185136210_))
                  (gx#stx-list? _rest136213_))
                (let ((_tail136200_ _g136178136187_))
                  (null? _tail136200_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136170_)
        (let* ((_e136172_ (gx#stx-e _e136170_)) (_$e136174_ (pair? _e136172_)))
          (if _$e136174_ _$e136174_ (null? _e136172_)))))
    (define gx#stx-vector? (lambda (_e136168_) (vector? (gx#stx-e _e136168_))))
    (define gx#stx-box? (lambda (_e136166_) (box? (gx#stx-e _e136166_))))
    (define gx#stx-eq?
      (lambda (_x136163_ _y136164_)
        (eq? (gx#stx-e _x136163_) (gx#stx-e _y136164_))))
    (define gx#stx-eqv?
      (lambda (_x136160_ _y136161_)
        (eqv? (gx#stx-e _x136160_) (gx#stx-e _y136161_))))
    (define gx#stx-equal?
      (lambda (_x136157_ _y136158_)
        (equal? (gx#stx-e _x136157_) (gx#stx-e _y136158_))))
    (define gx#stx-false? (lambda (_x136155_) (not (gx#stx-e _x136155_))))
    (define gx#stx-identifier
      (lambda (_template136152_ . _args136153_)
        (gx#datum->syntax__1
         _template136152_
         (apply make-symbol (gx#syntax->datum _args136153_))
         (gx#stx-source _template136152_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136150_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136150_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136148_)
        (if (##structure-direct-instance-of?
             _stx136148_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136148_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136148_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136148_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136148_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136144_)
        (let ((_stx136146_ (gx#stx-unwrap__0 _stx136144_)))
          (if (gx#identifier-quote? _stx136146_)
              (##unchecked-structure-ref _stx136146_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136099_)
        (let* ((_g136100136110_ (gx#stx-e _stx136099_))
               (_else136103136118_ (lambda () '#f)))
          (let ((_K136106136132_
                 (lambda (_rest136129_ _hd136130_)
                   (if (gx#identifier? _hd136130_)
                       (gx#identifier-list? _rest136129_)
                       '#f)))
                (_K136105136123_ (lambda () '#t)))
            (let ((_try-match136102136126_
                   (lambda ()
                     (if (##null? _g136100136110_)
                         (_K136105136123_)
                         (_else136103136118_)))))
              (if (##pair? _g136100136110_)
                  (let ((_tl136108136137_ (##cdr _g136100136110_))
                        (_hd136107136135_ (##car _g136100136110_)))
                    (let ((_hd136140_ _hd136107136135_)
                          (_rest136142_ _tl136108136137_))
                      (_K136106136132_ _rest136142_ _hd136140_)))
                  (_try-match136102136126_)))))))
    (define gx#genident__%
      (lambda (_e136076_ _src136077_)
        (gx#stx-wrap-source
         (gensym (let ((_e136079_ (gx#stx-e _e136076_)))
                   (if (interned-symbol? _e136079_) _e136079_ 'g)))
         (let ((_$e136081_ (gx#stx-source _e136076_)))
           (if _$e136081_ _$e136081_ _src136077_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136088_ 'g) (_src136090_ '#f))
          (gx#genident__% _e136088_ _src136090_))))
    (define gx#genident__1
      (lambda (_e136092_)
        (let ((_src136094_ '#f)) (gx#genident__% _e136092_ _src136094_))))
    (define gx#genident
      (lambda _g140578_
        (let ((_g140577_ (##length _g140578_)))
          (cond ((##fx= _g140577_ 0)
                 (apply (lambda () (gx#genident__0)) _g140578_))
                ((##fx= _g140577_ 1)
                 (apply (lambda (_e136092_) (gx#genident__1 _e136092_))
                        _g140578_))
                ((##fx= _g140577_ 2)
                 (apply (lambda (_e136096_ _src136097_)
                          (gx#genident__% _e136096_ _src136097_))
                        _g140578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140578_))))))
    (define gx#gentemps
      (lambda (_stx-lst136073_) (gx#stx-map1 gx#genident _stx-lst136073_)))
    (define gx#syntax->list
      (lambda (_stx136071_) (gx#stx-map1 values _stx136071_)))
    (define gx#stx-car
      (lambda (_stx136068_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136068_)))))
    (define gx#stx-cdr
      (lambda (_stx136065_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136065_)))))
    (define gx#stx-length
      (lambda (_stx136030_)
        (let _lp136032_ ((_rest136034_ _stx136030_) (_n136035_ '0))
          (let* ((_g136036136044_ (gx#stx-e _rest136034_))
                 (_else136038136052_ (lambda () _n136035_))
                 (_K136040136057_
                  (lambda (_rest136055_)
                    (_lp136032_ _rest136055_ (fx+ _n136035_ '1)))))
            (if (##pair? _g136036136044_)
                (let* ((_tl136042136060_ (##cdr _g136036136044_))
                       (_rest136063_ _tl136042136060_))
                  (_K136040136057_ _rest136063_))
                (_else136038136052_))))))
    (define gx#stx-for-each
      (lambda _g140580_
        (let ((_g140579_ (##length _g140580_)))
          (cond ((##fx= _g140579_ 2)
                 (apply (lambda (_f136023_ _stx136024_)
                          (gx#stx-for-each1 _f136023_ _stx136024_))
                        _g140580_))
                ((##fx= _g140579_ 3)
                 (apply (lambda (_f136026_ _xstx136027_ _ystx136028_)
                          (gx#stx-for-each2
                           _f136026_
                           _xstx136027_
                           _ystx136028_))
                        _g140580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140580_))))))
    (define gx#stx-for-each1
      (lambda (_f135973_ _stx135974_)
        (if (procedure? _f135973_)
            '#!void
            (error '"expected procedure" _f135973_))
        (let _lp135976_ ((_rest135978_ _stx135974_))
          (let* ((_g135979135989_ (gx#syntax-e _rest135978_))
                 (_else135982135997_ (lambda () (_f135973_ _rest135978_))))
            (let ((_K135985136011_
                   (lambda (_rest136008_ _hd136009_)
                     (_f135973_ _hd136009_)
                     (_lp135976_ _rest136008_)))
                  (_K135984136002_ (lambda () '#!void)))
              (let ((_try-match135981136005_
                     (lambda ()
                       (if (##null? _g135979135989_)
                           (_K135984136002_)
                           (_else135982135997_)))))
                (if (##pair? _g135979135989_)
                    (let ((_tl135987136016_ (##cdr _g135979135989_))
                          (_hd135986136014_ (##car _g135979135989_)))
                      (let ((_hd136019_ _hd135986136014_)
                            (_rest136021_ _tl135987136016_))
                        (_K135985136011_ _rest136021_ _hd136019_)))
                    (_try-match135981136005_))))))))
    (define gx#stx-for-each2
      (lambda (_f135878_ _xstx135879_ _ystx135880_)
        (if (procedure? _f135878_)
            '#!void
            (error '"expected procedure" _f135878_))
        (let _lp135882_ ((_xrest135884_ _xstx135879_)
                         (_yrest135885_ _ystx135880_))
          (let* ((_g135886135896_ (gx#syntax-e _xrest135884_))
                 (_else135889135904_ (lambda () '#!void)))
            (let ((_K135892135961_
                   (lambda (_xrest135930_ _xhd135931_)
                     (let* ((_g135932135939_ (gx#syntax-e _yrest135885_))
                            (_E135934135943_
                             (lambda ()
                               (error '"No clause matching" _g135932135939_)))
                            (_K135935135949_
                             (lambda (_yrest135946_ _yhd135947_)
                               (_f135878_ _xhd135931_ _yhd135947_)
                               (_lp135882_ _xrest135930_ _yrest135946_))))
                       (if (##pair? _g135932135939_)
                           (let ((_hd135936135952_ (##car _g135932135939_))
                                 (_tl135937135954_ (##cdr _g135932135939_)))
                             (let* ((_yhd135957_ _hd135936135952_)
                                    (_yrest135959_ _tl135937135954_))
                               (_K135935135949_ _yrest135959_ _yhd135957_)))
                           (_E135934135943_)))))
                  (_K135891135924_
                   (lambda ()
                     (let* ((_yrest135908135913_ _yrest135885_)
                            (_E135910135917_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135908135913_)))
                            (_K135911135921_
                             (lambda ()
                               (_f135878_ _xrest135884_ _yrest135885_))))
                       (if (not (gx#stx-null? _yrest135908135913_))
                           (_K135911135921_)
                           (_E135910135917_))))))
              (let ((_try-match135888135927_
                     (lambda ()
                       (if (not (null? _g135886135896_))
                           (_K135891135924_)
                           (_else135889135904_)))))
                (if (##pair? _g135886135896_)
                    (let ((_tl135894135966_ (##cdr _g135886135896_))
                          (_hd135893135964_ (##car _g135886135896_)))
                      (let ((_xhd135969_ _hd135893135964_)
                            (_xrest135971_ _tl135894135966_))
                        (_K135892135961_ _xrest135971_ _xhd135969_)))
                    (_try-match135888135927_))))))))
    (define gx#stx-map
      (lambda _g140582_
        (let ((_g140581_ (##length _g140582_)))
          (cond ((##fx= _g140581_ 2)
                 (apply (lambda (_f135871_ _stx135872_)
                          (gx#stx-map1 _f135871_ _stx135872_))
                        _g140582_))
                ((##fx= _g140581_ 3)
                 (apply (lambda (_f135874_ _xstx135875_ _ystx135876_)
                          (gx#stx-map2 _f135874_ _xstx135875_ _ystx135876_))
                        _g140582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140582_))))))
    (define gx#stx-map1
      (lambda (_f135821_ _stx135822_)
        (if (procedure? _f135821_)
            '#!void
            (error '"expected procedure" _f135821_))
        (let _recur135824_ ((_rest135826_ _stx135822_))
          (let* ((_g135827135837_ (gx#syntax-e _rest135826_))
                 (_else135830135845_ (lambda () (_f135821_ _rest135826_))))
            (let ((_K135833135859_
                   (lambda (_rest135856_ _hd135857_)
                     (cons (_f135821_ _hd135857_)
                           (_recur135824_ _rest135856_))))
                  (_K135832135850_ (lambda () '())))
              (let ((_try-match135829135853_
                     (lambda ()
                       (if (##null? _g135827135837_)
                           (_K135832135850_)
                           (_else135830135845_)))))
                (if (##pair? _g135827135837_)
                    (let ((_tl135835135864_ (##cdr _g135827135837_))
                          (_hd135834135862_ (##car _g135827135837_)))
                      (let ((_hd135867_ _hd135834135862_)
                            (_rest135869_ _tl135835135864_))
                        (_K135833135859_ _rest135869_ _hd135867_)))
                    (_try-match135829135853_))))))))
    (define gx#stx-map2
      (lambda (_f135726_ _xstx135727_ _ystx135728_)
        (if (procedure? _f135726_)
            '#!void
            (error '"expected procedure" _f135726_))
        (let _recur135730_ ((_xrest135732_ _xstx135727_)
                            (_yrest135733_ _ystx135728_))
          (let* ((_g135734135744_ (gx#syntax-e _xrest135732_))
                 (_else135737135752_ (lambda () '())))
            (let ((_K135740135809_
                   (lambda (_xrest135778_ _xhd135779_)
                     (let* ((_g135780135787_ (gx#syntax-e _yrest135733_))
                            (_E135782135791_
                             (lambda ()
                               (error '"No clause matching" _g135780135787_)))
                            (_K135783135797_
                             (lambda (_yrest135794_ _yhd135795_)
                               (cons (_f135726_ _xhd135779_ _yhd135795_)
                                     (_recur135730_
                                      _xrest135778_
                                      _yrest135794_)))))
                       (if (##pair? _g135780135787_)
                           (let ((_hd135784135800_ (##car _g135780135787_))
                                 (_tl135785135802_ (##cdr _g135780135787_)))
                             (let* ((_yhd135805_ _hd135784135800_)
                                    (_yrest135807_ _tl135785135802_))
                               (_K135783135797_ _yrest135807_ _yhd135805_)))
                           (_E135782135791_)))))
                  (_K135739135772_
                   (lambda ()
                     (let* ((_yrest135756135761_ _yrest135733_)
                            (_E135758135765_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135756135761_)))
                            (_K135759135769_
                             (lambda ()
                               (_f135726_ _xrest135732_ _yrest135733_))))
                       (if (not (gx#stx-null? _yrest135756135761_))
                           (_K135759135769_)
                           (_E135758135765_))))))
              (let ((_try-match135736135775_
                     (lambda ()
                       (if (not (null? _g135734135744_))
                           (_K135739135772_)
                           (_else135737135752_)))))
                (if (##pair? _g135734135744_)
                    (let ((_tl135742135814_ (##cdr _g135734135744_))
                          (_hd135741135812_ (##car _g135734135744_)))
                      (let ((_xhd135817_ _hd135741135812_)
                            (_xrest135819_ _tl135742135814_))
                        (_K135740135809_ _xrest135819_ _xhd135817_)))
                    (_try-match135736135775_))))))))
    (define gx#stx-andmap
      (lambda (_f135676_ _stx135677_)
        (if (procedure? _f135676_)
            '#!void
            (error '"expected procedure" _f135676_))
        (let _lp135679_ ((_rest135681_ _stx135677_))
          (let* ((_g135682135692_ (gx#syntax-e _rest135681_))
                 (_else135685135700_ (lambda () (_f135676_ _rest135681_))))
            (let ((_K135688135714_
                   (lambda (_rest135711_ _hd135712_)
                     (if (_f135676_ _hd135712_)
                         (_lp135679_ _rest135711_)
                         '#f)))
                  (_K135687135705_ (lambda () '#t)))
              (let ((_try-match135684135708_
                     (lambda ()
                       (if (##null? _g135682135692_)
                           (_K135687135705_)
                           (_else135685135700_)))))
                (if (##pair? _g135682135692_)
                    (let ((_tl135690135719_ (##cdr _g135682135692_))
                          (_hd135689135717_ (##car _g135682135692_)))
                      (let ((_hd135722_ _hd135689135717_)
                            (_rest135724_ _tl135690135719_))
                        (_K135688135714_ _rest135724_ _hd135722_)))
                    (_try-match135684135708_))))))))
    (define gx#stx-ormap
      (lambda (_f135623_ _stx135624_)
        (if (procedure? _f135623_)
            '#!void
            (error '"expected procedure" _f135623_))
        (let _lp135626_ ((_rest135628_ _stx135624_))
          (let* ((_g135629135639_ (gx#syntax-e _rest135628_))
                 (_else135632135647_ (lambda () (_f135623_ _rest135628_))))
            (let ((_K135635135664_
                   (lambda (_rest135658_ _hd135659_)
                     (let ((_$e135661_ (_f135623_ _hd135659_)))
                       (if _$e135661_ _$e135661_ (_lp135626_ _rest135658_)))))
                  (_K135634135652_ (lambda () '#f)))
              (let ((_try-match135631135655_
                     (lambda ()
                       (if (##null? _g135629135639_)
                           (_K135634135652_)
                           (_else135632135647_)))))
                (if (##pair? _g135629135639_)
                    (let ((_tl135637135669_ (##cdr _g135629135639_))
                          (_hd135636135667_ (##car _g135629135639_)))
                      (let ((_hd135672_ _hd135636135667_)
                            (_rest135674_ _tl135637135669_))
                        (_K135635135664_ _rest135674_ _hd135672_)))
                    (_try-match135631135655_))))))))
    (define gx#stx-foldl
      (lambda (_f135571_ _iv135572_ _stx135573_)
        (if (procedure? _f135571_)
            '#!void
            (error '"expected procedure" _f135571_))
        (let _lp135575_ ((_r135577_ _iv135572_) (_rest135578_ _stx135573_))
          (let* ((_g135579135589_ (gx#syntax-e _rest135578_))
                 (_else135582135597_
                  (lambda () (_f135571_ _rest135578_ _r135577_))))
            (let ((_K135585135611_
                   (lambda (_rest135608_ _hd135609_)
                     (_lp135575_
                      (_f135571_ _hd135609_ _r135577_)
                      _rest135608_)))
                  (_K135584135602_ (lambda () _r135577_)))
              (let ((_try-match135581135605_
                     (lambda ()
                       (if (##null? _g135579135589_)
                           (_K135584135602_)
                           (_else135582135597_)))))
                (if (##pair? _g135579135589_)
                    (let ((_tl135587135616_ (##cdr _g135579135589_))
                          (_hd135586135614_ (##car _g135579135589_)))
                      (let ((_hd135619_ _hd135586135614_)
                            (_rest135621_ _tl135587135616_))
                        (_K135585135611_ _rest135621_ _hd135619_)))
                    (_try-match135581135605_))))))))
    (define gx#stx-foldr
      (lambda (_f135520_ _iv135521_ _stx135522_)
        (if (procedure? _f135520_)
            '#!void
            (error '"expected procedure" _f135520_))
        (let _recur135524_ ((_rest135526_ _stx135522_))
          (let* ((_g135527135537_ (gx#syntax-e _rest135526_))
                 (_else135530135545_
                  (lambda () (_f135520_ _rest135526_ _iv135521_))))
            (let ((_K135533135559_
                   (lambda (_rest135556_ _hd135557_)
                     (_f135520_ _hd135557_ (_recur135524_ _rest135556_))))
                  (_K135532135550_ (lambda () _iv135521_)))
              (let ((_try-match135529135553_
                     (lambda ()
                       (if (##null? _g135527135537_)
                           (_K135532135550_)
                           (_else135530135545_)))))
                (if (##pair? _g135527135537_)
                    (let ((_tl135535135564_ (##cdr _g135527135537_))
                          (_hd135534135562_ (##car _g135527135537_)))
                      (let ((_hd135567_ _hd135534135562_)
                            (_rest135569_ _tl135535135564_))
                        (_K135533135559_ _rest135569_ _hd135567_)))
                    (_try-match135529135553_))))))))
    (define gx#stx-reverse
      (lambda (_stx135518_) (gx#stx-foldl cons '() _stx135518_)))
    (define gx#stx-last
      (lambda (_stx135479_)
        (let _lp135481_ ((_rest135483_ _stx135479_))
          (let* ((_g135484135492_ (gx#syntax-e _rest135483_))
                 (_else135486135500_ (lambda () _rest135483_))
                 (_K135488135506_
                  (lambda (_rest135503_ _hd135504_)
                    (if (gx#stx-null? _rest135503_)
                        _hd135504_
                        (_lp135481_ _rest135503_)))))
            (if (##pair? _g135484135492_)
                (let ((_hd135489135509_ (##car _g135484135492_))
                      (_tl135490135511_ (##cdr _g135484135492_)))
                  (let* ((_hd135514_ _hd135489135509_)
                         (_rest135516_ _tl135490135511_))
                    (_K135488135506_ _rest135516_ _hd135514_)))
                (_else135486135500_))))))
    (define gx#stx-last-pair
      (lambda (_stx135450_)
        (let _lp135452_ ((_hd135454_ _stx135450_))
          (let* ((_g135455135462_ (gx#syntax-e _hd135454_))
                 (_E135457135466_
                  (lambda () (error '"No clause matching" _g135455135462_)))
                 (_K135458135471_
                  (lambda (_rest135469_)
                    (if (gx#stx-pair? _rest135469_)
                        (_lp135452_ _rest135469_)
                        _hd135454_))))
            (if (##pair? _g135455135462_)
                (let* ((_tl135460135474_ (##cdr _g135455135462_))
                       (_rest135477_ _tl135460135474_))
                  (_K135458135471_ _rest135477_))
                (_E135457135466_))))))
    (define gx#stx-list-tail
      (lambda (_stx135419_ _k135420_)
        (let _lp135422_ ((_rest135424_ _stx135419_) (_k135425_ _k135420_))
          (if (fxpositive? _k135425_)
              (let* ((_g135426135433_ (gx#syntax-e _rest135424_))
                     (_E135428135437_
                      (lambda ()
                        (error '"No clause matching" _g135426135433_)))
                     (_K135429135442_
                      (lambda (_rest135440_)
                        (_lp135422_ _rest135440_ (fx- _k135425_ '1)))))
                (if (##pair? _g135426135433_)
                    (let* ((_tl135431135445_ (##cdr _g135426135433_))
                           (_rest135448_ _tl135431135445_))
                      (_K135429135442_ _rest135448_))
                    (_E135428135437_)))
              _rest135424_))))
    (define gx#stx-list-ref
      (lambda (_stx135416_ _k135417_)
        (gx#stx-car (gx#stx-list-tail _stx135416_ _k135417_))))
    (define gx#stx-plist?__%
      (lambda (_stx135328_ _key?135329_)
        (if (procedure? _key?135329_)
            '#!void
            (error '"expected procedure" _key?135329_))
        (let _lp135331_ ((_rest135333_ _stx135328_))
          (let* ((_g135334135344_ (gx#stx-e _rest135333_))
                 (_else135337135352_ (lambda () '#f)))
            (let ((_K135340135394_
                   (lambda (_rest135363_ _hd135364_)
                     (if (_key?135329_ _hd135364_)
                         (let* ((_g135365135373_ (gx#stx-e _rest135363_))
                                (_else135367135381_ (lambda () '#f))
                                (_K135369135386_
                                 (lambda (_rest135384_)
                                   (_lp135331_ _rest135384_))))
                           (if (##pair? _g135365135373_)
                               (let* ((_tl135371135389_
                                       (##cdr _g135365135373_))
                                      (_rest135392_ _tl135371135389_))
                                 (_lp135331_ _rest135392_))
                               (_else135367135381_)))
                         '#f)))
                  (_K135339135357_ (lambda () '#t)))
              (let ((_try-match135336135360_
                     (lambda ()
                       (if (##null? _g135334135344_)
                           (_K135339135357_)
                           (_else135337135352_)))))
                (if (##pair? _g135334135344_)
                    (let ((_tl135342135399_ (##cdr _g135334135344_))
                          (_hd135341135397_ (##car _g135334135344_)))
                      (let ((_hd135402_ _hd135341135397_)
                            (_rest135404_ _tl135342135399_))
                        (_K135340135394_ _rest135404_ _hd135402_)))
                    (_try-match135336135360_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx135409_)
        (let ((_key?135411_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx135409_ _key?135411_))))
    (define gx#stx-plist?
      (lambda _g140584_
        (let ((_g140583_ (##length _g140584_)))
          (cond ((##fx= _g140583_ 1)
                 (apply (lambda (_stx135409_) (gx#stx-plist?__0 _stx135409_))
                        _g140584_))
                ((##fx= _g140583_ 2)
                 (apply (lambda (_stx135413_ _key?135414_)
                          (gx#stx-plist?__% _stx135413_ _key?135414_))
                        _g140584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140584_))))))
    (define gx#stx-getq__%
      (lambda (_key135246_ _stx135247_ _key=?135248_)
        (if (procedure? _key=?135248_)
            '#!void
            (error '"expected procedure" _key=?135248_))
        (let _lp135250_ ((_rest135252_ _stx135247_))
          (let* ((_g135253135261_ (gx#syntax-e _rest135252_))
                 (_else135255135269_ (lambda () '#f))
                 (_K135257135303_
                  (lambda (_rest135272_ _hd135273_)
                    (let* ((_g135274135281_ (gx#syntax-e _rest135272_))
                           (_E135276135285_
                            (lambda ()
                              (error '"No clause matching" _g135274135281_)))
                           (_K135277135291_
                            (lambda (_rest135288_ _val135289_)
                              (if (_key=?135248_ _hd135273_ _key135246_)
                                  _val135289_
                                  (_lp135250_ _rest135288_)))))
                      (if (##pair? _g135274135281_)
                          (let ((_hd135278135294_ (##car _g135274135281_))
                                (_tl135279135296_ (##cdr _g135274135281_)))
                            (let* ((_val135299_ _hd135278135294_)
                                   (_rest135301_ _tl135279135296_))
                              (_K135277135291_ _rest135301_ _val135299_)))
                          (_E135276135285_))))))
            (if (##pair? _g135253135261_)
                (let ((_hd135258135306_ (##car _g135253135261_))
                      (_tl135259135308_ (##cdr _g135253135261_)))
                  (let* ((_hd135311_ _hd135258135306_)
                         (_rest135313_ _tl135259135308_))
                    (_K135257135303_ _rest135313_ _hd135311_)))
                (_else135255135269_))))))
    (define gx#stx-getq__0
      (lambda (_key135318_ _stx135319_)
        (let ((_key=?135321_ gx#stx-eq?))
          (gx#stx-getq__% _key135318_ _stx135319_ _key=?135321_))))
    (define gx#stx-getq
      (lambda _g140586_
        (let ((_g140585_ (##length _g140586_)))
          (cond ((##fx= _g140585_ 2)
                 (apply (lambda (_key135318_ _stx135319_)
                          (gx#stx-getq__0 _key135318_ _stx135319_))
                        _g140586_))
                ((##fx= _g140585_ 3)
                 (apply (lambda (_key135323_ _stx135324_ _key=?135325_)
                          (gx#stx-getq__%
                           _key135323_
                           _stx135324_
                           _key=?135325_))
                        _g140586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140586_))))))))
