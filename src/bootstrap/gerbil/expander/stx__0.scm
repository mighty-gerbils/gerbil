(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707840755)
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
      (lambda _$args138447_
        (apply make-instance gx#identifier-wrap::t _$args138447_)))
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
      (lambda _$args138444_
        (apply make-instance gx#syntax-wrap::t _$args138444_)))
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
      (lambda _$args138441_
        (apply make-instance gx#syntax-quote::t _$args138441_)))
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
      (lambda (_stx138439_) (symbol? (gx#stx-e _stx138439_))))
    (define gx#identifier-quote?
      (lambda (_stx138437_)
        (if (##structure-direct-instance-of? _stx138437_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx138437_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx138435_)
        (if (##structure-direct-instance-of? _stx138435_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx138435_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx138435_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx138433_)
        (if (##structure-direct-instance-of? _stx138433_ 'gx#syntax-quote::t)
            _stx138433_
            (if (##structure-direct-instance-of?
                 _stx138433_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx138433_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx138416_)
        (if (##structure-direct-instance-of? _stx138416_ 'gx#syntax-wrap::t)
            (let _lp138418_ ((_e138420_
                              (##unchecked-structure-ref
                               _stx138416_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks138421_
                              (cons (##unchecked-structure-ref
                                     _stx138416_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e138420_)
                  (let ((_$e138423_ (##type-id (##structure-type _e138420_))))
                    (if (eq? 'gx#syntax-wrap::t _$e138423_)
                        (_lp138418_
                         (##unchecked-structure-ref _e138420_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e138420_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks138421_))
                        (if (or (eq? 'gx#syntax-quote::t _$e138423_)
                                (eq? 'gx#identifier-wrap::t _$e138423_))
                            (##unchecked-structure-ref
                             _e138420_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e138423_)
                                (_lp138418_
                                 (##unchecked-structure-ref
                                  _e138420_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks138421_)
                                _e138420_))))
                  (if (null? _marks138421_)
                      _e138420_
                      (if (pair? _e138420_)
                          (cons (gx#stx-wrap (car _e138420_) _marks138421_)
                                (gx#stx-wrap (cdr _e138420_) _marks138421_))
                          (if (vector? _e138420_)
                              (vector-map
                               (lambda (_g138428138430_)
                                 (gx#stx-wrap _g138428138430_ _marks138421_))
                               _e138420_)
                              (if (box? _e138420_)
                                  (box (gx#stx-wrap
                                        (unbox _e138420_)
                                        _marks138421_))
                                  _e138420_))))))
            (if (##structure-instance-of? _stx138416_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx138416_ '1 gx#AST::t '#f)
                _stx138416_))))
    (define gx#syntax->datum
      (lambda (_stx138414_)
        (if (##structure-instance-of? _stx138414_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx138414_ '1 gx#AST::t '#f))
            (if (pair? _stx138414_)
                (cons (gx#syntax->datum (car _stx138414_))
                      (gx#syntax->datum (cdr _stx138414_)))
                (if (vector? _stx138414_)
                    (vector-map gx#syntax->datum _stx138414_)
                    (if (box? _stx138414_)
                        (box (gx#syntax->datum (unbox _stx138414_)))
                        _stx138414_))))))
    (define gx#datum->syntax__%
      (lambda (_stx138357_ _datum138358_ _src138359_ _quote?138360_)
        (letrec ((_wrap-datum138362_
                  (lambda (_e138386_ _marks138387_)
                    (_wrap-inner138364_
                     _e138386_
                     (lambda (_g138388138390_)
                       (##structure
                        gx#identifier-wrap::t
                        _g138388138390_
                        _src138359_
                        _marks138387_)))))
                 (_wrap-quote138363_
                  (lambda (_e138378_ _ctx138379_ _marks138380_)
                    (_wrap-inner138364_
                     _e138378_
                     (lambda (_g138381138383_)
                       (##structure
                        gx#syntax-quote::t
                        _g138381138383_
                        _src138359_
                        _ctx138379_
                        _marks138380_)))))
                 (_wrap-inner138364_
                  (lambda (_e138371_ _wrap-e138372_)
                    (let _recur138374_ ((_e138376_ _e138371_))
                      (if (symbol? _e138376_)
                          (_wrap-e138372_ _e138376_)
                          (if (pair? _e138376_)
                              (cons (_recur138374_ (car _e138376_))
                                    (_recur138374_ (cdr _e138376_)))
                              (if (vector? _e138376_)
                                  (vector-map _recur138374_ _e138376_)
                                  (if (box? _e138376_)
                                      (box (_recur138374_ (unbox _e138376_)))
                                      _e138376_)))))))
                 (_wrap-outer138365_
                  (lambda (_e138369_)
                    (if (##structure-instance-of? _e138369_ 'gerbil#AST::t)
                        _e138369_
                        (##structure gx#AST::t _e138369_ _src138359_)))))
          (if (##structure-instance-of? _datum138358_ 'gerbil#AST::t)
              _datum138358_
              (if (not _stx138357_)
                  (##structure gx#AST::t _datum138358_ _src138359_)
                  (if (gx#identifier? _stx138357_)
                      (let ((_stx138367_ (gx#stx-unwrap__0 _stx138357_)))
                        (_wrap-outer138365_
                         (if (##structure-direct-instance-of?
                              _stx138367_
                              'gx#syntax-quote::t)
                             (if _quote?138360_
                                 (_wrap-quote138363_
                                  _datum138358_
                                  (##unchecked-structure-ref
                                   _stx138367_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx138367_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum138362_
                                  _datum138358_
                                  (##unchecked-structure-ref
                                   _stx138367_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum138362_
                              _datum138358_
                              (##unchecked-structure-ref
                               _stx138367_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx138357_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx138396_ _datum138397_)
        (let* ((_src138399_ '#f) (_quote?138401_ '#t))
          (gx#datum->syntax__%
           _stx138396_
           _datum138397_
           _src138399_
           _quote?138401_))))
    (define gx#datum->syntax__1
      (lambda (_stx138403_ _datum138404_ _src138405_)
        (let ((_quote?138407_ '#t))
          (gx#datum->syntax__%
           _stx138403_
           _datum138404_
           _src138405_
           _quote?138407_))))
    (define gx#datum->syntax
      (lambda _g143096_
        (let ((_g143095_ (##length _g143096_)))
          (cond ((##fx= _g143095_ 2)
                 (apply (lambda (_stx138396_ _datum138397_)
                          (gx#datum->syntax__0 _stx138396_ _datum138397_))
                        _g143096_))
                ((##fx= _g143095_ 3)
                 (apply (lambda (_stx138403_ _datum138404_ _src138405_)
                          (gx#datum->syntax__1
                           _stx138403_
                           _datum138404_
                           _src138405_))
                        _g143096_))
                ((##fx= _g143095_ 4)
                 (apply (lambda (_stx138409_
                                 _datum138410_
                                 _src138411_
                                 _quote?138412_)
                          (gx#datum->syntax__%
                           _stx138409_
                           _datum138410_
                           _src138411_
                           _quote?138412_))
                        _g143096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g143096_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx138333_ _marks138334_)
        (let _lp138336_ ((_e138338_ _stx138333_)
                         (_marks138339_ _marks138334_)
                         (_src138340_ (gx#stx-source _stx138333_)))
          (if (##structure-direct-instance-of? _e138338_ 'gx#syntax-wrap::t)
              (_lp138336_
               (##unchecked-structure-ref _e138338_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e138338_ '3 gx#syntax-wrap::t '#f)
                _marks138339_)
               (##unchecked-structure-ref _e138338_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e138338_
                   'gx#identifier-wrap::t)
                  (if (null? _marks138339_)
                      _e138338_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e138338_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e138338_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e138338_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks138339_)))
                  (if (##structure-direct-instance-of?
                       _e138338_
                       'gx#syntax-quote::t)
                      _e138338_
                      (if (##structure-instance-of? _e138338_ 'gerbil#AST::t)
                          (_lp138336_
                           (##unchecked-structure-ref
                            _e138338_
                            '1
                            gx#AST::t
                            '#f)
                           _marks138339_
                           (##unchecked-structure-ref
                            _e138338_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e138338_)
                              (##structure
                               gx#identifier-wrap::t
                               _e138338_
                               _src138340_
                               (reverse _marks138339_))
                              (if (null? _marks138339_)
                                  _e138338_
                                  (if (pair? _e138338_)
                                      (cons (gx#stx-wrap
                                             (car _e138338_)
                                             _marks138339_)
                                            (gx#stx-wrap
                                             (cdr _e138338_)
                                             _marks138339_))
                                      (if (vector? _e138338_)
                                          (vector-map
                                           (lambda (_g138341138343_)
                                             (gx#stx-wrap
                                              _g138341138343_
                                              _marks138339_))
                                           _e138338_)
                                          (if (box? _e138338_)
                                              (box (gx#stx-wrap
                                                    (unbox _e138338_)
                                                    _marks138339_))
                                              _e138338_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx138349_)
        (let ((_marks138351_ '()))
          (gx#stx-unwrap__% _stx138349_ _marks138351_))))
    (define gx#stx-unwrap
      (lambda _g143098_
        (let ((_g143097_ (##length _g143098_)))
          (cond ((##fx= _g143097_ 1)
                 (apply (lambda (_stx138349_) (gx#stx-unwrap__0 _stx138349_))
                        _g143098_))
                ((##fx= _g143097_ 2)
                 (apply (lambda (_stx138353_ _marks138354_)
                          (gx#stx-unwrap__% _stx138353_ _marks138354_))
                        _g143098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g143098_))))))
    (define gx#stx-wrap
      (lambda (_stx138326_ _marks138327_)
        (foldl1 (lambda (_mark138329_ _stx138330_)
                  (gx#stx-apply-mark _stx138330_ _mark138329_))
                _stx138326_
                _marks138327_)))
    (define gx#stx-rewrap
      (lambda (_stx138320_ _marks138321_)
        (foldr1 (lambda (_mark138323_ _stx138324_)
                  (gx#stx-apply-mark _stx138324_ _mark138323_))
                _stx138320_
                _marks138321_)))
    (define gx#stx-apply-mark
      (lambda (_stx138317_ _mark138318_)
        (if (##structure-direct-instance-of? _stx138317_ 'gx#syntax-quote::t)
            _stx138317_
            (if (and (##structure-direct-instance-of?
                      _stx138317_
                      'gx#syntax-wrap::t)
                     (eq? _mark138318_
                          (##unchecked-structure-ref
                           _stx138317_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx138317_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx138317_
                 (gx#stx-source _stx138317_)
                 _mark138318_)))))
    (define gx#apply-mark
      (lambda (_mark138281_ _marks138282_)
        (let* ((_marks138283138291_ _marks138282_)
               (_else138285138299_
                (lambda () (cons _mark138281_ _marks138282_)))
               (_K138287138305_
                (lambda (_rest138302_ _hd138303_)
                  (if (eq? _mark138281_ _hd138303_)
                      _rest138302_
                      (cons _mark138281_ _marks138282_)))))
          (if (##pair? _marks138283138291_)
              (let ((_hd138288138308_ (##car _marks138283138291_))
                    (_tl138289138310_ (##cdr _marks138283138291_)))
                (let* ((_hd138313_ _hd138288138308_)
                       (_rest138315_ _tl138289138310_))
                  (_K138287138305_ _rest138315_ _hd138313_)))
              (_else138285138299_)))))
    (define gx#stx-e
      (lambda (_stx138279_)
        (if (##structure-direct-instance-of? _stx138279_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx138279_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx138279_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx138279_ '1 gx#AST::t '#f)
                _stx138279_))))
    (define gx#stx-source
      (lambda (_stx138277_)
        (if (##structure-instance-of? _stx138277_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx138277_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx138271_ _src138272_)
        (if (or (##structure-instance-of? _stx138271_ 'gerbil#AST::t)
                (not _src138272_))
            _stx138271_
            (##structure gx#AST::t _stx138271_ _src138272_))))
    (define gx#stx-datum?
      (lambda (_stx138269_) (gx#self-quoting? (gx#stx-e _stx138269_))))
    (define gx#self-quoting?
      (lambda (_x138252_)
        (let ((_$e138254_ (immediate? _x138252_)))
          (if _$e138254_
              _$e138254_
              (let ((_$e138257_ (number? _x138252_)))
                (if _$e138257_
                    _$e138257_
                    (let ((_$e138260_ (keyword? _x138252_)))
                      (if _$e138260_
                          _$e138260_
                          (let ((_$e138263_ (string? _x138252_)))
                            (if _$e138263_
                                _$e138263_
                                (let ((_$e138266_ (vector? _x138252_)))
                                  (if _$e138266_
                                      _$e138266_
                                      (u8vector? _x138252_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e138250_) (boolean? (gx#stx-e _e138250_))))
    (define gx#stx-keyword?
      (lambda (_e138248_) (keyword? (gx#stx-e _e138248_))))
    (define gx#stx-char? (lambda (_e138246_) (char? (gx#stx-e _e138246_))))
    (define gx#stx-number? (lambda (_e138244_) (number? (gx#stx-e _e138244_))))
    (define gx#stx-fixnum? (lambda (_e138242_) (fixnum? (gx#stx-e _e138242_))))
    (define gx#stx-string? (lambda (_e138240_) (string? (gx#stx-e _e138240_))))
    (define gx#stx-null? (lambda (_e138238_) (null? (gx#stx-e _e138238_))))
    (define gx#stx-pair? (lambda (_e138236_) (pair? (gx#stx-e _e138236_))))
    (define gx#stx-list?
      (lambda (_e138198_)
        (let* ((_g138199138208_ (gx#stx-e _e138198_))
               (_E138202138212_
                (lambda () (error '"No clause matching" _g138199138208_))))
          (let ((_K138204138228_
                 (lambda (_rest138226_) (gx#stx-list? _rest138226_)))
                (_K138203138218_ (lambda (_tail138216_) (null? _tail138216_))))
            (if (##pair? _g138199138208_)
                (let* ((_tl138206138231_ (##cdr _g138199138208_))
                       (_rest138234_ _tl138206138231_))
                  (gx#stx-list? _rest138234_))
                (let ((_tail138221_ _g138199138208_))
                  (null? _tail138221_)))))))
    (define gx#stx-pair/null?
      (lambda (_e138191_)
        (let* ((_e138193_ (gx#stx-e _e138191_)) (_$e138195_ (pair? _e138193_)))
          (if _$e138195_ _$e138195_ (null? _e138193_)))))
    (define gx#stx-vector? (lambda (_e138189_) (vector? (gx#stx-e _e138189_))))
    (define gx#stx-box? (lambda (_e138187_) (box? (gx#stx-e _e138187_))))
    (define gx#stx-eq?
      (lambda (_x138184_ _y138185_)
        (eq? (gx#stx-e _x138184_) (gx#stx-e _y138185_))))
    (define gx#stx-eqv?
      (lambda (_x138181_ _y138182_)
        (eqv? (gx#stx-e _x138181_) (gx#stx-e _y138182_))))
    (define gx#stx-equal?
      (lambda (_x138178_ _y138179_)
        (equal? (gx#stx-e _x138178_) (gx#stx-e _y138179_))))
    (define gx#stx-false? (lambda (_x138176_) (not (gx#stx-e _x138176_))))
    (define gx#stx-identifier
      (lambda (_template138173_ . _args138174_)
        (gx#datum->syntax__1
         _template138173_
         (apply make-symbol (gx#syntax->datum _args138174_))
         (gx#stx-source _template138173_))))
    (define gx#stx-identifier-marks
      (lambda (_stx138171_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx138171_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx138169_)
        (if (##structure-direct-instance-of?
             _stx138169_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx138169_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx138169_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx138169_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx138169_)))))
    (define gx#stx-identifier-context
      (lambda (_stx138165_)
        (let ((_stx138167_ (gx#stx-unwrap__0 _stx138165_)))
          (if (gx#identifier-quote? _stx138167_)
              (##unchecked-structure-ref _stx138167_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx138120_)
        (let* ((_g138121138131_ (gx#stx-e _stx138120_))
               (_else138124138139_ (lambda () '#f)))
          (let ((_K138127138153_
                 (lambda (_rest138150_ _hd138151_)
                   (if (gx#identifier? _hd138151_)
                       (gx#identifier-list? _rest138150_)
                       '#f)))
                (_K138126138144_ (lambda () '#t)))
            (let ((_try-match138123138147_
                   (lambda ()
                     (if (##null? _g138121138131_)
                         (_K138126138144_)
                         (_else138124138139_)))))
              (if (##pair? _g138121138131_)
                  (let ((_tl138129138158_ (##cdr _g138121138131_))
                        (_hd138128138156_ (##car _g138121138131_)))
                    (let ((_hd138161_ _hd138128138156_)
                          (_rest138163_ _tl138129138158_))
                      (_K138127138153_ _rest138163_ _hd138161_)))
                  (_try-match138123138147_)))))))
    (define gx#genident__%
      (lambda (_e138097_ _src138098_)
        (gx#stx-wrap-source
         (gensym (let ((_e138100_ (gx#stx-e _e138097_)))
                   (if (interned-symbol? _e138100_) _e138100_ 'g)))
         (let ((_$e138102_ (gx#stx-source _e138097_)))
           (if _$e138102_ _$e138102_ _src138098_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e138109_ 'g) (_src138111_ '#f))
          (gx#genident__% _e138109_ _src138111_))))
    (define gx#genident__1
      (lambda (_e138113_)
        (let ((_src138115_ '#f)) (gx#genident__% _e138113_ _src138115_))))
    (define gx#genident
      (lambda _g143100_
        (let ((_g143099_ (##length _g143100_)))
          (cond ((##fx= _g143099_ 0)
                 (apply (lambda () (gx#genident__0)) _g143100_))
                ((##fx= _g143099_ 1)
                 (apply (lambda (_e138113_) (gx#genident__1 _e138113_))
                        _g143100_))
                ((##fx= _g143099_ 2)
                 (apply (lambda (_e138117_ _src138118_)
                          (gx#genident__% _e138117_ _src138118_))
                        _g143100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g143100_))))))
    (define gx#gentemps
      (lambda (_stx-lst138094_) (gx#stx-map1 gx#genident _stx-lst138094_)))
    (define gx#syntax->list
      (lambda (_stx138092_) (gx#stx-map1 values _stx138092_)))
    (define gx#stx-car
      (lambda (_stx138089_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx138089_)))))
    (define gx#stx-cdr
      (lambda (_stx138086_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx138086_)))))
    (define gx#stx-length
      (lambda (_stx138051_)
        (let _lp138053_ ((_rest138055_ _stx138051_) (_n138056_ '0))
          (let* ((_g138057138065_ (gx#stx-e _rest138055_))
                 (_else138059138073_ (lambda () _n138056_))
                 (_K138061138078_
                  (lambda (_rest138076_)
                    (_lp138053_ _rest138076_ (fx+ _n138056_ '1)))))
            (if (##pair? _g138057138065_)
                (let* ((_tl138063138081_ (##cdr _g138057138065_))
                       (_rest138084_ _tl138063138081_))
                  (_K138061138078_ _rest138084_))
                (_else138059138073_))))))
    (define gx#stx-for-each
      (lambda _g143102_
        (let ((_g143101_ (##length _g143102_)))
          (cond ((##fx= _g143101_ 2)
                 (apply (lambda (_f138044_ _stx138045_)
                          (gx#stx-for-each1 _f138044_ _stx138045_))
                        _g143102_))
                ((##fx= _g143101_ 3)
                 (apply (lambda (_f138047_ _xstx138048_ _ystx138049_)
                          (gx#stx-for-each2
                           _f138047_
                           _xstx138048_
                           _ystx138049_))
                        _g143102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g143102_))))))
    (define gx#stx-for-each1
      (lambda (_f137994_ _stx137995_)
        (if (procedure? _f137994_)
            '#!void
            (error '"expected procedure" _f137994_))
        (let _lp137997_ ((_rest137999_ _stx137995_))
          (let* ((_g138000138010_ (gx#syntax-e _rest137999_))
                 (_else138003138018_ (lambda () (_f137994_ _rest137999_))))
            (let ((_K138006138032_
                   (lambda (_rest138029_ _hd138030_)
                     (_f137994_ _hd138030_)
                     (_lp137997_ _rest138029_)))
                  (_K138005138023_ (lambda () '#!void)))
              (let ((_try-match138002138026_
                     (lambda ()
                       (if (##null? _g138000138010_)
                           (_K138005138023_)
                           (_else138003138018_)))))
                (if (##pair? _g138000138010_)
                    (let ((_tl138008138037_ (##cdr _g138000138010_))
                          (_hd138007138035_ (##car _g138000138010_)))
                      (let ((_hd138040_ _hd138007138035_)
                            (_rest138042_ _tl138008138037_))
                        (_K138006138032_ _rest138042_ _hd138040_)))
                    (_try-match138002138026_))))))))
    (define gx#stx-for-each2
      (lambda (_f137899_ _xstx137900_ _ystx137901_)
        (if (procedure? _f137899_)
            '#!void
            (error '"expected procedure" _f137899_))
        (let _lp137903_ ((_xrest137905_ _xstx137900_)
                         (_yrest137906_ _ystx137901_))
          (let* ((_g137907137917_ (gx#syntax-e _xrest137905_))
                 (_else137910137925_ (lambda () '#!void)))
            (let ((_K137913137982_
                   (lambda (_xrest137951_ _xhd137952_)
                     (let* ((_g137953137960_ (gx#syntax-e _yrest137906_))
                            (_E137955137964_
                             (lambda ()
                               (error '"No clause matching" _g137953137960_)))
                            (_K137956137970_
                             (lambda (_yrest137967_ _yhd137968_)
                               (_f137899_ _xhd137952_ _yhd137968_)
                               (_lp137903_ _xrest137951_ _yrest137967_))))
                       (if (##pair? _g137953137960_)
                           (let ((_hd137957137973_ (##car _g137953137960_))
                                 (_tl137958137975_ (##cdr _g137953137960_)))
                             (let* ((_yhd137978_ _hd137957137973_)
                                    (_yrest137980_ _tl137958137975_))
                               (_K137956137970_ _yrest137980_ _yhd137978_)))
                           (_E137955137964_)))))
                  (_K137912137945_
                   (lambda ()
                     (let* ((_yrest137929137934_ _yrest137906_)
                            (_E137931137938_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137929137934_)))
                            (_K137932137942_
                             (lambda ()
                               (_f137899_ _xrest137905_ _yrest137906_))))
                       (if (not (gx#stx-null? _yrest137929137934_))
                           (_K137932137942_)
                           (_E137931137938_))))))
              (let ((_try-match137909137948_
                     (lambda ()
                       (if (not (null? _g137907137917_))
                           (_K137912137945_)
                           (_else137910137925_)))))
                (if (##pair? _g137907137917_)
                    (let ((_tl137915137987_ (##cdr _g137907137917_))
                          (_hd137914137985_ (##car _g137907137917_)))
                      (let ((_xhd137990_ _hd137914137985_)
                            (_xrest137992_ _tl137915137987_))
                        (_K137913137982_ _xrest137992_ _xhd137990_)))
                    (_try-match137909137948_))))))))
    (define gx#stx-map
      (lambda _g143104_
        (let ((_g143103_ (##length _g143104_)))
          (cond ((##fx= _g143103_ 2)
                 (apply (lambda (_f137892_ _stx137893_)
                          (gx#stx-map1 _f137892_ _stx137893_))
                        _g143104_))
                ((##fx= _g143103_ 3)
                 (apply (lambda (_f137895_ _xstx137896_ _ystx137897_)
                          (gx#stx-map2 _f137895_ _xstx137896_ _ystx137897_))
                        _g143104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g143104_))))))
    (define gx#stx-map1
      (lambda (_f137842_ _stx137843_)
        (if (procedure? _f137842_)
            '#!void
            (error '"expected procedure" _f137842_))
        (let _recur137845_ ((_rest137847_ _stx137843_))
          (let* ((_g137848137858_ (gx#syntax-e _rest137847_))
                 (_else137851137866_ (lambda () (_f137842_ _rest137847_))))
            (let ((_K137854137880_
                   (lambda (_rest137877_ _hd137878_)
                     (cons (_f137842_ _hd137878_)
                           (_recur137845_ _rest137877_))))
                  (_K137853137871_ (lambda () '())))
              (let ((_try-match137850137874_
                     (lambda ()
                       (if (##null? _g137848137858_)
                           (_K137853137871_)
                           (_else137851137866_)))))
                (if (##pair? _g137848137858_)
                    (let ((_tl137856137885_ (##cdr _g137848137858_))
                          (_hd137855137883_ (##car _g137848137858_)))
                      (let ((_hd137888_ _hd137855137883_)
                            (_rest137890_ _tl137856137885_))
                        (_K137854137880_ _rest137890_ _hd137888_)))
                    (_try-match137850137874_))))))))
    (define gx#stx-map2
      (lambda (_f137747_ _xstx137748_ _ystx137749_)
        (if (procedure? _f137747_)
            '#!void
            (error '"expected procedure" _f137747_))
        (let _recur137751_ ((_xrest137753_ _xstx137748_)
                            (_yrest137754_ _ystx137749_))
          (let* ((_g137755137765_ (gx#syntax-e _xrest137753_))
                 (_else137758137773_ (lambda () '())))
            (let ((_K137761137830_
                   (lambda (_xrest137799_ _xhd137800_)
                     (let* ((_g137801137808_ (gx#syntax-e _yrest137754_))
                            (_E137803137812_
                             (lambda ()
                               (error '"No clause matching" _g137801137808_)))
                            (_K137804137818_
                             (lambda (_yrest137815_ _yhd137816_)
                               (cons (_f137747_ _xhd137800_ _yhd137816_)
                                     (_recur137751_
                                      _xrest137799_
                                      _yrest137815_)))))
                       (if (##pair? _g137801137808_)
                           (let ((_hd137805137821_ (##car _g137801137808_))
                                 (_tl137806137823_ (##cdr _g137801137808_)))
                             (let* ((_yhd137826_ _hd137805137821_)
                                    (_yrest137828_ _tl137806137823_))
                               (_K137804137818_ _yrest137828_ _yhd137826_)))
                           (_E137803137812_)))))
                  (_K137760137793_
                   (lambda ()
                     (let* ((_yrest137777137782_ _yrest137754_)
                            (_E137779137786_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137777137782_)))
                            (_K137780137790_
                             (lambda ()
                               (_f137747_ _xrest137753_ _yrest137754_))))
                       (if (not (gx#stx-null? _yrest137777137782_))
                           (_K137780137790_)
                           (_E137779137786_))))))
              (let ((_try-match137757137796_
                     (lambda ()
                       (if (not (null? _g137755137765_))
                           (_K137760137793_)
                           (_else137758137773_)))))
                (if (##pair? _g137755137765_)
                    (let ((_tl137763137835_ (##cdr _g137755137765_))
                          (_hd137762137833_ (##car _g137755137765_)))
                      (let ((_xhd137838_ _hd137762137833_)
                            (_xrest137840_ _tl137763137835_))
                        (_K137761137830_ _xrest137840_ _xhd137838_)))
                    (_try-match137757137796_))))))))
    (define gx#stx-andmap
      (lambda (_f137697_ _stx137698_)
        (if (procedure? _f137697_)
            '#!void
            (error '"expected procedure" _f137697_))
        (let _lp137700_ ((_rest137702_ _stx137698_))
          (let* ((_g137703137713_ (gx#syntax-e _rest137702_))
                 (_else137706137721_ (lambda () (_f137697_ _rest137702_))))
            (let ((_K137709137735_
                   (lambda (_rest137732_ _hd137733_)
                     (if (_f137697_ _hd137733_)
                         (_lp137700_ _rest137732_)
                         '#f)))
                  (_K137708137726_ (lambda () '#t)))
              (let ((_try-match137705137729_
                     (lambda ()
                       (if (##null? _g137703137713_)
                           (_K137708137726_)
                           (_else137706137721_)))))
                (if (##pair? _g137703137713_)
                    (let ((_tl137711137740_ (##cdr _g137703137713_))
                          (_hd137710137738_ (##car _g137703137713_)))
                      (let ((_hd137743_ _hd137710137738_)
                            (_rest137745_ _tl137711137740_))
                        (_K137709137735_ _rest137745_ _hd137743_)))
                    (_try-match137705137729_))))))))
    (define gx#stx-ormap
      (lambda (_f137644_ _stx137645_)
        (if (procedure? _f137644_)
            '#!void
            (error '"expected procedure" _f137644_))
        (let _lp137647_ ((_rest137649_ _stx137645_))
          (let* ((_g137650137660_ (gx#syntax-e _rest137649_))
                 (_else137653137668_ (lambda () (_f137644_ _rest137649_))))
            (let ((_K137656137685_
                   (lambda (_rest137679_ _hd137680_)
                     (let ((_$e137682_ (_f137644_ _hd137680_)))
                       (if _$e137682_ _$e137682_ (_lp137647_ _rest137679_)))))
                  (_K137655137673_ (lambda () '#f)))
              (let ((_try-match137652137676_
                     (lambda ()
                       (if (##null? _g137650137660_)
                           (_K137655137673_)
                           (_else137653137668_)))))
                (if (##pair? _g137650137660_)
                    (let ((_tl137658137690_ (##cdr _g137650137660_))
                          (_hd137657137688_ (##car _g137650137660_)))
                      (let ((_hd137693_ _hd137657137688_)
                            (_rest137695_ _tl137658137690_))
                        (_K137656137685_ _rest137695_ _hd137693_)))
                    (_try-match137652137676_))))))))
    (define gx#stx-foldl
      (lambda (_f137592_ _iv137593_ _stx137594_)
        (if (procedure? _f137592_)
            '#!void
            (error '"expected procedure" _f137592_))
        (let _lp137596_ ((_r137598_ _iv137593_) (_rest137599_ _stx137594_))
          (let* ((_g137600137610_ (gx#syntax-e _rest137599_))
                 (_else137603137618_
                  (lambda () (_f137592_ _rest137599_ _r137598_))))
            (let ((_K137606137632_
                   (lambda (_rest137629_ _hd137630_)
                     (_lp137596_
                      (_f137592_ _hd137630_ _r137598_)
                      _rest137629_)))
                  (_K137605137623_ (lambda () _r137598_)))
              (let ((_try-match137602137626_
                     (lambda ()
                       (if (##null? _g137600137610_)
                           (_K137605137623_)
                           (_else137603137618_)))))
                (if (##pair? _g137600137610_)
                    (let ((_tl137608137637_ (##cdr _g137600137610_))
                          (_hd137607137635_ (##car _g137600137610_)))
                      (let ((_hd137640_ _hd137607137635_)
                            (_rest137642_ _tl137608137637_))
                        (_K137606137632_ _rest137642_ _hd137640_)))
                    (_try-match137602137626_))))))))
    (define gx#stx-foldr
      (lambda (_f137541_ _iv137542_ _stx137543_)
        (if (procedure? _f137541_)
            '#!void
            (error '"expected procedure" _f137541_))
        (let _recur137545_ ((_rest137547_ _stx137543_))
          (let* ((_g137548137558_ (gx#syntax-e _rest137547_))
                 (_else137551137566_
                  (lambda () (_f137541_ _rest137547_ _iv137542_))))
            (let ((_K137554137580_
                   (lambda (_rest137577_ _hd137578_)
                     (_f137541_ _hd137578_ (_recur137545_ _rest137577_))))
                  (_K137553137571_ (lambda () _iv137542_)))
              (let ((_try-match137550137574_
                     (lambda ()
                       (if (##null? _g137548137558_)
                           (_K137553137571_)
                           (_else137551137566_)))))
                (if (##pair? _g137548137558_)
                    (let ((_tl137556137585_ (##cdr _g137548137558_))
                          (_hd137555137583_ (##car _g137548137558_)))
                      (let ((_hd137588_ _hd137555137583_)
                            (_rest137590_ _tl137556137585_))
                        (_K137554137580_ _rest137590_ _hd137588_)))
                    (_try-match137550137574_))))))))
    (define gx#stx-reverse
      (lambda (_stx137539_) (gx#stx-foldl cons '() _stx137539_)))
    (define gx#stx-last
      (lambda (_stx137500_)
        (let _lp137502_ ((_rest137504_ _stx137500_))
          (let* ((_g137505137513_ (gx#syntax-e _rest137504_))
                 (_else137507137521_ (lambda () _rest137504_))
                 (_K137509137527_
                  (lambda (_rest137524_ _hd137525_)
                    (if (gx#stx-null? _rest137524_)
                        _hd137525_
                        (_lp137502_ _rest137524_)))))
            (if (##pair? _g137505137513_)
                (let ((_hd137510137530_ (##car _g137505137513_))
                      (_tl137511137532_ (##cdr _g137505137513_)))
                  (let* ((_hd137535_ _hd137510137530_)
                         (_rest137537_ _tl137511137532_))
                    (_K137509137527_ _rest137537_ _hd137535_)))
                (_else137507137521_))))))
    (define gx#stx-last-pair
      (lambda (_stx137471_)
        (let _lp137473_ ((_hd137475_ _stx137471_))
          (let* ((_g137476137483_ (gx#syntax-e _hd137475_))
                 (_E137478137487_
                  (lambda () (error '"No clause matching" _g137476137483_)))
                 (_K137479137492_
                  (lambda (_rest137490_)
                    (if (gx#stx-pair? _rest137490_)
                        (_lp137473_ _rest137490_)
                        _hd137475_))))
            (if (##pair? _g137476137483_)
                (let* ((_tl137481137495_ (##cdr _g137476137483_))
                       (_rest137498_ _tl137481137495_))
                  (_K137479137492_ _rest137498_))
                (_E137478137487_))))))
    (define gx#stx-list-tail
      (lambda (_stx137440_ _k137441_)
        (let _lp137443_ ((_rest137445_ _stx137440_) (_k137446_ _k137441_))
          (if (fxpositive? _k137446_)
              (let* ((_g137447137454_ (gx#syntax-e _rest137445_))
                     (_E137449137458_
                      (lambda ()
                        (error '"No clause matching" _g137447137454_)))
                     (_K137450137463_
                      (lambda (_rest137461_)
                        (_lp137443_ _rest137461_ (fx- _k137446_ '1)))))
                (if (##pair? _g137447137454_)
                    (let* ((_tl137452137466_ (##cdr _g137447137454_))
                           (_rest137469_ _tl137452137466_))
                      (_K137450137463_ _rest137469_))
                    (_E137449137458_)))
              _rest137445_))))
    (define gx#stx-list-ref
      (lambda (_stx137437_ _k137438_)
        (gx#stx-car (gx#stx-list-tail _stx137437_ _k137438_))))
    (define gx#stx-plist?__%
      (lambda (_stx137349_ _key?137350_)
        (if (procedure? _key?137350_)
            '#!void
            (error '"expected procedure" _key?137350_))
        (let _lp137352_ ((_rest137354_ _stx137349_))
          (let* ((_g137355137365_ (gx#stx-e _rest137354_))
                 (_else137358137373_ (lambda () '#f)))
            (let ((_K137361137415_
                   (lambda (_rest137384_ _hd137385_)
                     (if (_key?137350_ _hd137385_)
                         (let* ((_g137386137394_ (gx#stx-e _rest137384_))
                                (_else137388137402_ (lambda () '#f))
                                (_K137390137407_
                                 (lambda (_rest137405_)
                                   (_lp137352_ _rest137405_))))
                           (if (##pair? _g137386137394_)
                               (let* ((_tl137392137410_
                                       (##cdr _g137386137394_))
                                      (_rest137413_ _tl137392137410_))
                                 (_lp137352_ _rest137413_))
                               (_else137388137402_)))
                         '#f)))
                  (_K137360137378_ (lambda () '#t)))
              (let ((_try-match137357137381_
                     (lambda ()
                       (if (##null? _g137355137365_)
                           (_K137360137378_)
                           (_else137358137373_)))))
                (if (##pair? _g137355137365_)
                    (let ((_tl137363137420_ (##cdr _g137355137365_))
                          (_hd137362137418_ (##car _g137355137365_)))
                      (let ((_hd137423_ _hd137362137418_)
                            (_rest137425_ _tl137363137420_))
                        (_K137361137415_ _rest137425_ _hd137423_)))
                    (_try-match137357137381_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx137430_)
        (let ((_key?137432_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx137430_ _key?137432_))))
    (define gx#stx-plist?
      (lambda _g143106_
        (let ((_g143105_ (##length _g143106_)))
          (cond ((##fx= _g143105_ 1)
                 (apply (lambda (_stx137430_) (gx#stx-plist?__0 _stx137430_))
                        _g143106_))
                ((##fx= _g143105_ 2)
                 (apply (lambda (_stx137434_ _key?137435_)
                          (gx#stx-plist?__% _stx137434_ _key?137435_))
                        _g143106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g143106_))))))
    (define gx#stx-getq__%
      (lambda (_key137267_ _stx137268_ _key=?137269_)
        (if (procedure? _key=?137269_)
            '#!void
            (error '"expected procedure" _key=?137269_))
        (let _lp137271_ ((_rest137273_ _stx137268_))
          (let* ((_g137274137282_ (gx#syntax-e _rest137273_))
                 (_else137276137290_ (lambda () '#f))
                 (_K137278137324_
                  (lambda (_rest137293_ _hd137294_)
                    (let* ((_g137295137302_ (gx#syntax-e _rest137293_))
                           (_E137297137306_
                            (lambda ()
                              (error '"No clause matching" _g137295137302_)))
                           (_K137298137312_
                            (lambda (_rest137309_ _val137310_)
                              (if (_key=?137269_ _hd137294_ _key137267_)
                                  _val137310_
                                  (_lp137271_ _rest137309_)))))
                      (if (##pair? _g137295137302_)
                          (let ((_hd137299137315_ (##car _g137295137302_))
                                (_tl137300137317_ (##cdr _g137295137302_)))
                            (let* ((_val137320_ _hd137299137315_)
                                   (_rest137322_ _tl137300137317_))
                              (_K137298137312_ _rest137322_ _val137320_)))
                          (_E137297137306_))))))
            (if (##pair? _g137274137282_)
                (let ((_hd137279137327_ (##car _g137274137282_))
                      (_tl137280137329_ (##cdr _g137274137282_)))
                  (let* ((_hd137332_ _hd137279137327_)
                         (_rest137334_ _tl137280137329_))
                    (_K137278137324_ _rest137334_ _hd137332_)))
                (_else137276137290_))))))
    (define gx#stx-getq__0
      (lambda (_key137339_ _stx137340_)
        (let ((_key=?137342_ gx#stx-eq?))
          (gx#stx-getq__% _key137339_ _stx137340_ _key=?137342_))))
    (define gx#stx-getq
      (lambda _g143108_
        (let ((_g143107_ (##length _g143108_)))
          (cond ((##fx= _g143107_ 2)
                 (apply (lambda (_key137339_ _stx137340_)
                          (gx#stx-getq__0 _key137339_ _stx137340_))
                        _g143108_))
                ((##fx= _g143107_ 3)
                 (apply (lambda (_key137344_ _stx137345_ _key=?137346_)
                          (gx#stx-getq__%
                           _key137344_
                           _stx137345_
                           _key=?137346_))
                        _g143108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g143108_))))))))
