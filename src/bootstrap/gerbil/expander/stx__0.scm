(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708337964)
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
      (lambda _$args149437_
        (apply make-instance gx#identifier-wrap::t _$args149437_)))
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
      (lambda _$args149434_
        (apply make-instance gx#syntax-wrap::t _$args149434_)))
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
      (lambda _$args149431_
        (apply make-instance gx#syntax-quote::t _$args149431_)))
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
      (lambda (_stx149429_) (symbol? (gx#stx-e _stx149429_))))
    (define gx#identifier-quote?
      (lambda (_stx149427_)
        (if (##structure-direct-instance-of? _stx149427_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx149427_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx149425_)
        (if (##structure-direct-instance-of? _stx149425_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx149425_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx149425_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx149423_)
        (if (##structure-direct-instance-of? _stx149423_ 'gx#syntax-quote::t)
            _stx149423_
            (if (##structure-direct-instance-of?
                 _stx149423_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx149423_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx149406_)
        (if (##structure-direct-instance-of? _stx149406_ 'gx#syntax-wrap::t)
            (let _lp149408_ ((_e149410_
                              (##unchecked-structure-ref
                               _stx149406_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks149411_
                              (cons (##unchecked-structure-ref
                                     _stx149406_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e149410_)
                  (let ((_$e149413_ (##type-id (##structure-type _e149410_))))
                    (if (eq? 'gx#syntax-wrap::t _$e149413_)
                        (_lp149408_
                         (##unchecked-structure-ref _e149410_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e149410_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks149411_))
                        (if (or (eq? 'gx#syntax-quote::t _$e149413_)
                                (eq? 'gx#identifier-wrap::t _$e149413_))
                            (##unchecked-structure-ref
                             _e149410_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e149413_)
                                (_lp149408_
                                 (##unchecked-structure-ref
                                  _e149410_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks149411_)
                                _e149410_))))
                  (if (null? _marks149411_)
                      _e149410_
                      (if (pair? _e149410_)
                          (cons (gx#stx-wrap (car _e149410_) _marks149411_)
                                (gx#stx-wrap (cdr _e149410_) _marks149411_))
                          (if (vector? _e149410_)
                              (vector-map
                               (lambda (_g149418149420_)
                                 (gx#stx-wrap _g149418149420_ _marks149411_))
                               _e149410_)
                              (if (box? _e149410_)
                                  (box (gx#stx-wrap
                                        (unbox _e149410_)
                                        _marks149411_))
                                  _e149410_))))))
            (if (##structure-instance-of? _stx149406_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx149406_ '1 gx#AST::t '#f)
                _stx149406_))))
    (define gx#syntax->datum
      (lambda (_stx149404_)
        (if (##structure-instance-of? _stx149404_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx149404_ '1 gx#AST::t '#f))
            (if (pair? _stx149404_)
                (cons (gx#syntax->datum (car _stx149404_))
                      (gx#syntax->datum (cdr _stx149404_)))
                (if (vector? _stx149404_)
                    (vector-map gx#syntax->datum _stx149404_)
                    (if (box? _stx149404_)
                        (box (gx#syntax->datum (unbox _stx149404_)))
                        _stx149404_))))))
    (define gx#datum->syntax__%
      (lambda (_stx149347_ _datum149348_ _src149349_ _quote?149350_)
        (letrec ((_wrap-datum149352_
                  (lambda (_e149376_ _marks149377_)
                    (_wrap-inner149354_
                     _e149376_
                     (lambda (_g149378149380_)
                       (##structure
                        gx#identifier-wrap::t
                        _g149378149380_
                        _src149349_
                        _marks149377_)))))
                 (_wrap-quote149353_
                  (lambda (_e149368_ _ctx149369_ _marks149370_)
                    (_wrap-inner149354_
                     _e149368_
                     (lambda (_g149371149373_)
                       (##structure
                        gx#syntax-quote::t
                        _g149371149373_
                        _src149349_
                        _ctx149369_
                        _marks149370_)))))
                 (_wrap-inner149354_
                  (lambda (_e149361_ _wrap-e149362_)
                    (let _recur149364_ ((_e149366_ _e149361_))
                      (if (symbol? _e149366_)
                          (_wrap-e149362_ _e149366_)
                          (if (pair? _e149366_)
                              (cons (_recur149364_ (car _e149366_))
                                    (_recur149364_ (cdr _e149366_)))
                              (if (vector? _e149366_)
                                  (vector-map _recur149364_ _e149366_)
                                  (if (box? _e149366_)
                                      (box (_recur149364_ (unbox _e149366_)))
                                      _e149366_)))))))
                 (_wrap-outer149355_
                  (lambda (_e149359_)
                    (if (##structure-instance-of? _e149359_ 'gerbil#AST::t)
                        _e149359_
                        (##structure gx#AST::t _e149359_ _src149349_)))))
          (if (##structure-instance-of? _datum149348_ 'gerbil#AST::t)
              _datum149348_
              (if (not _stx149347_)
                  (##structure gx#AST::t _datum149348_ _src149349_)
                  (if (gx#identifier? _stx149347_)
                      (let ((_stx149357_ (gx#stx-unwrap__0 _stx149347_)))
                        (_wrap-outer149355_
                         (if (##structure-direct-instance-of?
                              _stx149357_
                              'gx#syntax-quote::t)
                             (if _quote?149350_
                                 (_wrap-quote149353_
                                  _datum149348_
                                  (##unchecked-structure-ref
                                   _stx149357_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx149357_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum149352_
                                  _datum149348_
                                  (##unchecked-structure-ref
                                   _stx149357_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum149352_
                              _datum149348_
                              (##unchecked-structure-ref
                               _stx149357_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx149347_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx149386_ _datum149387_)
        (let* ((_src149389_ '#f) (_quote?149391_ '#t))
          (gx#datum->syntax__%
           _stx149386_
           _datum149387_
           _src149389_
           _quote?149391_))))
    (define gx#datum->syntax__1
      (lambda (_stx149393_ _datum149394_ _src149395_)
        (let ((_quote?149397_ '#t))
          (gx#datum->syntax__%
           _stx149393_
           _datum149394_
           _src149395_
           _quote?149397_))))
    (define gx#datum->syntax
      (lambda _g153504_
        (let ((_g153503_ (##length _g153504_)))
          (cond ((##fx= _g153503_ 2)
                 (apply (lambda (_stx149386_ _datum149387_)
                          (gx#datum->syntax__0 _stx149386_ _datum149387_))
                        _g153504_))
                ((##fx= _g153503_ 3)
                 (apply (lambda (_stx149393_ _datum149394_ _src149395_)
                          (gx#datum->syntax__1
                           _stx149393_
                           _datum149394_
                           _src149395_))
                        _g153504_))
                ((##fx= _g153503_ 4)
                 (apply (lambda (_stx149399_
                                 _datum149400_
                                 _src149401_
                                 _quote?149402_)
                          (gx#datum->syntax__%
                           _stx149399_
                           _datum149400_
                           _src149401_
                           _quote?149402_))
                        _g153504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g153504_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx149323_ _marks149324_)
        (let _lp149326_ ((_e149328_ _stx149323_)
                         (_marks149329_ _marks149324_)
                         (_src149330_ (gx#stx-source _stx149323_)))
          (if (##structure-direct-instance-of? _e149328_ 'gx#syntax-wrap::t)
              (_lp149326_
               (##unchecked-structure-ref _e149328_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e149328_ '3 gx#syntax-wrap::t '#f)
                _marks149329_)
               (##unchecked-structure-ref _e149328_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e149328_
                   'gx#identifier-wrap::t)
                  (if (null? _marks149329_)
                      _e149328_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e149328_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e149328_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e149328_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks149329_)))
                  (if (##structure-direct-instance-of?
                       _e149328_
                       'gx#syntax-quote::t)
                      _e149328_
                      (if (##structure-instance-of? _e149328_ 'gerbil#AST::t)
                          (_lp149326_
                           (##unchecked-structure-ref
                            _e149328_
                            '1
                            gx#AST::t
                            '#f)
                           _marks149329_
                           (##unchecked-structure-ref
                            _e149328_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e149328_)
                              (##structure
                               gx#identifier-wrap::t
                               _e149328_
                               _src149330_
                               (reverse _marks149329_))
                              (if (null? _marks149329_)
                                  _e149328_
                                  (if (pair? _e149328_)
                                      (cons (gx#stx-wrap
                                             (car _e149328_)
                                             _marks149329_)
                                            (gx#stx-wrap
                                             (cdr _e149328_)
                                             _marks149329_))
                                      (if (vector? _e149328_)
                                          (vector-map
                                           (lambda (_g149331149333_)
                                             (gx#stx-wrap
                                              _g149331149333_
                                              _marks149329_))
                                           _e149328_)
                                          (if (box? _e149328_)
                                              (box (gx#stx-wrap
                                                    (unbox _e149328_)
                                                    _marks149329_))
                                              _e149328_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx149339_)
        (let ((_marks149341_ '()))
          (gx#stx-unwrap__% _stx149339_ _marks149341_))))
    (define gx#stx-unwrap
      (lambda _g153506_
        (let ((_g153505_ (##length _g153506_)))
          (cond ((##fx= _g153505_ 1)
                 (apply (lambda (_stx149339_) (gx#stx-unwrap__0 _stx149339_))
                        _g153506_))
                ((##fx= _g153505_ 2)
                 (apply (lambda (_stx149343_ _marks149344_)
                          (gx#stx-unwrap__% _stx149343_ _marks149344_))
                        _g153506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g153506_))))))
    (define gx#stx-wrap
      (lambda (_stx149316_ _marks149317_)
        (foldl1 (lambda (_mark149319_ _stx149320_)
                  (gx#stx-apply-mark _stx149320_ _mark149319_))
                _stx149316_
                _marks149317_)))
    (define gx#stx-rewrap
      (lambda (_stx149310_ _marks149311_)
        (foldr1 (lambda (_mark149313_ _stx149314_)
                  (gx#stx-apply-mark _stx149314_ _mark149313_))
                _stx149310_
                _marks149311_)))
    (define gx#stx-apply-mark
      (lambda (_stx149307_ _mark149308_)
        (if (##structure-direct-instance-of? _stx149307_ 'gx#syntax-quote::t)
            _stx149307_
            (if (and (##structure-direct-instance-of?
                      _stx149307_
                      'gx#syntax-wrap::t)
                     (eq? _mark149308_
                          (##unchecked-structure-ref
                           _stx149307_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx149307_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx149307_
                 (gx#stx-source _stx149307_)
                 _mark149308_)))))
    (define gx#apply-mark
      (lambda (_mark149271_ _marks149272_)
        (let* ((_marks149273149281_ _marks149272_)
               (_else149275149289_
                (lambda () (cons _mark149271_ _marks149272_)))
               (_K149277149295_
                (lambda (_rest149292_ _hd149293_)
                  (if (eq? _mark149271_ _hd149293_)
                      _rest149292_
                      (cons _mark149271_ _marks149272_)))))
          (if (##pair? _marks149273149281_)
              (let ((_hd149278149298_ (##car _marks149273149281_))
                    (_tl149279149300_ (##cdr _marks149273149281_)))
                (let* ((_hd149303_ _hd149278149298_)
                       (_rest149305_ _tl149279149300_))
                  (_K149277149295_ _rest149305_ _hd149303_)))
              (_else149275149289_)))))
    (define gx#stx-e
      (lambda (_stx149269_)
        (if (##structure-direct-instance-of? _stx149269_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx149269_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx149269_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx149269_ '1 gx#AST::t '#f)
                _stx149269_))))
    (define gx#stx-source
      (lambda (_stx149267_)
        (if (##structure-instance-of? _stx149267_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx149267_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx149261_ _src149262_)
        (if (or (##structure-instance-of? _stx149261_ 'gerbil#AST::t)
                (not _src149262_))
            _stx149261_
            (##structure gx#AST::t _stx149261_ _src149262_))))
    (define gx#stx-datum?
      (lambda (_stx149259_) (gx#self-quoting? (gx#stx-e _stx149259_))))
    (define gx#self-quoting?
      (lambda (_x149242_)
        (let ((_$e149244_ (immediate? _x149242_)))
          (if _$e149244_
              _$e149244_
              (let ((_$e149247_ (number? _x149242_)))
                (if _$e149247_
                    _$e149247_
                    (let ((_$e149250_ (keyword? _x149242_)))
                      (if _$e149250_
                          _$e149250_
                          (let ((_$e149253_ (string? _x149242_)))
                            (if _$e149253_
                                _$e149253_
                                (let ((_$e149256_ (vector? _x149242_)))
                                  (if _$e149256_
                                      _$e149256_
                                      (u8vector? _x149242_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e149240_) (boolean? (gx#stx-e _e149240_))))
    (define gx#stx-keyword?
      (lambda (_e149238_) (keyword? (gx#stx-e _e149238_))))
    (define gx#stx-char? (lambda (_e149236_) (char? (gx#stx-e _e149236_))))
    (define gx#stx-number? (lambda (_e149234_) (number? (gx#stx-e _e149234_))))
    (define gx#stx-fixnum? (lambda (_e149232_) (fixnum? (gx#stx-e _e149232_))))
    (define gx#stx-string? (lambda (_e149230_) (string? (gx#stx-e _e149230_))))
    (define gx#stx-null? (lambda (_e149228_) (null? (gx#stx-e _e149228_))))
    (define gx#stx-pair? (lambda (_e149226_) (pair? (gx#stx-e _e149226_))))
    (define gx#stx-list?
      (lambda (_e149188_)
        (let* ((_g149189149198_ (gx#stx-e _e149188_))
               (_E149192149202_
                (lambda () (error '"No clause matching" _g149189149198_))))
          (let ((_K149194149218_
                 (lambda (_rest149216_) (gx#stx-list? _rest149216_)))
                (_K149193149208_ (lambda (_tail149206_) (null? _tail149206_))))
            (if (##pair? _g149189149198_)
                (let* ((_tl149196149221_ (##cdr _g149189149198_))
                       (_rest149224_ _tl149196149221_))
                  (gx#stx-list? _rest149224_))
                (let ((_tail149211_ _g149189149198_))
                  (null? _tail149211_)))))))
    (define gx#stx-pair/null?
      (lambda (_e149181_)
        (let* ((_e149183_ (gx#stx-e _e149181_)) (_$e149185_ (pair? _e149183_)))
          (if _$e149185_ _$e149185_ (null? _e149183_)))))
    (define gx#stx-vector? (lambda (_e149179_) (vector? (gx#stx-e _e149179_))))
    (define gx#stx-box? (lambda (_e149177_) (box? (gx#stx-e _e149177_))))
    (define gx#stx-eq?
      (lambda (_x149174_ _y149175_)
        (eq? (gx#stx-e _x149174_) (gx#stx-e _y149175_))))
    (define gx#stx-eqv?
      (lambda (_x149171_ _y149172_)
        (eqv? (gx#stx-e _x149171_) (gx#stx-e _y149172_))))
    (define gx#stx-equal?
      (lambda (_x149168_ _y149169_)
        (equal? (gx#stx-e _x149168_) (gx#stx-e _y149169_))))
    (define gx#stx-false? (lambda (_x149166_) (not (gx#stx-e _x149166_))))
    (define gx#stx-identifier
      (lambda (_template149163_ . _args149164_)
        (gx#datum->syntax__1
         _template149163_
         (apply make-symbol (gx#syntax->datum _args149164_))
         (gx#stx-source _template149163_))))
    (define gx#stx-identifier-marks
      (lambda (_stx149161_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx149161_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx149159_)
        (if (##structure-direct-instance-of?
             _stx149159_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx149159_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx149159_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx149159_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx149159_)))))
    (define gx#stx-identifier-context
      (lambda (_stx149155_)
        (let ((_stx149157_ (gx#stx-unwrap__0 _stx149155_)))
          (if (gx#identifier-quote? _stx149157_)
              (##unchecked-structure-ref _stx149157_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx149110_)
        (let* ((_g149111149121_ (gx#stx-e _stx149110_))
               (_else149114149129_ (lambda () '#f)))
          (let ((_K149117149143_
                 (lambda (_rest149140_ _hd149141_)
                   (if (gx#identifier? _hd149141_)
                       (gx#identifier-list? _rest149140_)
                       '#f)))
                (_K149116149134_ (lambda () '#t)))
            (let ((_try-match149113149137_
                   (lambda ()
                     (if (##null? _g149111149121_)
                         (_K149116149134_)
                         (_else149114149129_)))))
              (if (##pair? _g149111149121_)
                  (let ((_tl149119149148_ (##cdr _g149111149121_))
                        (_hd149118149146_ (##car _g149111149121_)))
                    (let ((_hd149151_ _hd149118149146_)
                          (_rest149153_ _tl149119149148_))
                      (_K149117149143_ _rest149153_ _hd149151_)))
                  (_try-match149113149137_)))))))
    (define gx#genident__%
      (lambda (_e149087_ _src149088_)
        (gx#stx-wrap-source
         (gensym (let ((_e149090_ (gx#stx-e _e149087_)))
                   (if (interned-symbol? _e149090_) _e149090_ 'g)))
         (let ((_$e149092_ (gx#stx-source _e149087_)))
           (if _$e149092_ _$e149092_ _src149088_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e149099_ 'g) (_src149101_ '#f))
          (gx#genident__% _e149099_ _src149101_))))
    (define gx#genident__1
      (lambda (_e149103_)
        (let ((_src149105_ '#f)) (gx#genident__% _e149103_ _src149105_))))
    (define gx#genident
      (lambda _g153508_
        (let ((_g153507_ (##length _g153508_)))
          (cond ((##fx= _g153507_ 0)
                 (apply (lambda () (gx#genident__0)) _g153508_))
                ((##fx= _g153507_ 1)
                 (apply (lambda (_e149103_) (gx#genident__1 _e149103_))
                        _g153508_))
                ((##fx= _g153507_ 2)
                 (apply (lambda (_e149107_ _src149108_)
                          (gx#genident__% _e149107_ _src149108_))
                        _g153508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g153508_))))))
    (define gx#gentemps
      (lambda (_stx-lst149084_) (gx#stx-map1 gx#genident _stx-lst149084_)))
    (define gx#syntax->list
      (lambda (_stx149082_) (gx#stx-map1 values _stx149082_)))
    (define gx#stx-car
      (lambda (_stx149079_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx149079_)))))
    (define gx#stx-cdr
      (lambda (_stx149076_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx149076_)))))
    (define gx#stx-length
      (lambda (_stx149041_)
        (let _lp149043_ ((_rest149045_ _stx149041_) (_n149046_ '0))
          (let* ((_g149047149055_ (gx#stx-e _rest149045_))
                 (_else149049149063_ (lambda () _n149046_))
                 (_K149051149068_
                  (lambda (_rest149066_)
                    (_lp149043_ _rest149066_ (fx+ _n149046_ '1)))))
            (if (##pair? _g149047149055_)
                (let* ((_tl149053149071_ (##cdr _g149047149055_))
                       (_rest149074_ _tl149053149071_))
                  (_K149051149068_ _rest149074_))
                (_else149049149063_))))))
    (define gx#stx-for-each
      (lambda _g153510_
        (let ((_g153509_ (##length _g153510_)))
          (cond ((##fx= _g153509_ 2)
                 (apply (lambda (_f149034_ _stx149035_)
                          (gx#stx-for-each1 _f149034_ _stx149035_))
                        _g153510_))
                ((##fx= _g153509_ 3)
                 (apply (lambda (_f149037_ _xstx149038_ _ystx149039_)
                          (gx#stx-for-each2
                           _f149037_
                           _xstx149038_
                           _ystx149039_))
                        _g153510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g153510_))))))
    (define gx#stx-for-each1
      (lambda (_f148984_ _stx148985_)
        (if (procedure? _f148984_)
            '#!void
            (error '"expected procedure" _f148984_))
        (let _lp148987_ ((_rest148989_ _stx148985_))
          (let* ((_g148990149000_ (gx#syntax-e _rest148989_))
                 (_else148993149008_ (lambda () (_f148984_ _rest148989_))))
            (let ((_K148996149022_
                   (lambda (_rest149019_ _hd149020_)
                     (_f148984_ _hd149020_)
                     (_lp148987_ _rest149019_)))
                  (_K148995149013_ (lambda () '#!void)))
              (let ((_try-match148992149016_
                     (lambda ()
                       (if (##null? _g148990149000_)
                           (_K148995149013_)
                           (_else148993149008_)))))
                (if (##pair? _g148990149000_)
                    (let ((_tl148998149027_ (##cdr _g148990149000_))
                          (_hd148997149025_ (##car _g148990149000_)))
                      (let ((_hd149030_ _hd148997149025_)
                            (_rest149032_ _tl148998149027_))
                        (_K148996149022_ _rest149032_ _hd149030_)))
                    (_try-match148992149016_))))))))
    (define gx#stx-for-each2
      (lambda (_f148889_ _xstx148890_ _ystx148891_)
        (if (procedure? _f148889_)
            '#!void
            (error '"expected procedure" _f148889_))
        (let _lp148893_ ((_xrest148895_ _xstx148890_)
                         (_yrest148896_ _ystx148891_))
          (let* ((_g148897148907_ (gx#syntax-e _xrest148895_))
                 (_else148900148915_ (lambda () '#!void)))
            (let ((_K148903148972_
                   (lambda (_xrest148941_ _xhd148942_)
                     (let* ((_g148943148950_ (gx#syntax-e _yrest148896_))
                            (_E148945148954_
                             (lambda ()
                               (error '"No clause matching" _g148943148950_)))
                            (_K148946148960_
                             (lambda (_yrest148957_ _yhd148958_)
                               (_f148889_ _xhd148942_ _yhd148958_)
                               (_lp148893_ _xrest148941_ _yrest148957_))))
                       (if (##pair? _g148943148950_)
                           (let ((_hd148947148963_ (##car _g148943148950_))
                                 (_tl148948148965_ (##cdr _g148943148950_)))
                             (let* ((_yhd148968_ _hd148947148963_)
                                    (_yrest148970_ _tl148948148965_))
                               (_K148946148960_ _yrest148970_ _yhd148968_)))
                           (_E148945148954_)))))
                  (_K148902148935_
                   (lambda ()
                     (let* ((_yrest148919148924_ _yrest148896_)
                            (_E148921148928_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest148919148924_)))
                            (_K148922148932_
                             (lambda ()
                               (_f148889_ _xrest148895_ _yrest148896_))))
                       (if (not (gx#stx-null? _yrest148919148924_))
                           (_K148922148932_)
                           (_E148921148928_))))))
              (let ((_try-match148899148938_
                     (lambda ()
                       (if (not (null? _g148897148907_))
                           (_K148902148935_)
                           (_else148900148915_)))))
                (if (##pair? _g148897148907_)
                    (let ((_tl148905148977_ (##cdr _g148897148907_))
                          (_hd148904148975_ (##car _g148897148907_)))
                      (let ((_xhd148980_ _hd148904148975_)
                            (_xrest148982_ _tl148905148977_))
                        (_K148903148972_ _xrest148982_ _xhd148980_)))
                    (_try-match148899148938_))))))))
    (define gx#stx-map
      (lambda _g153512_
        (let ((_g153511_ (##length _g153512_)))
          (cond ((##fx= _g153511_ 2)
                 (apply (lambda (_f148882_ _stx148883_)
                          (gx#stx-map1 _f148882_ _stx148883_))
                        _g153512_))
                ((##fx= _g153511_ 3)
                 (apply (lambda (_f148885_ _xstx148886_ _ystx148887_)
                          (gx#stx-map2 _f148885_ _xstx148886_ _ystx148887_))
                        _g153512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g153512_))))))
    (define gx#stx-map1
      (lambda (_f148832_ _stx148833_)
        (if (procedure? _f148832_)
            '#!void
            (error '"expected procedure" _f148832_))
        (let _recur148835_ ((_rest148837_ _stx148833_))
          (let* ((_g148838148848_ (gx#syntax-e _rest148837_))
                 (_else148841148856_ (lambda () (_f148832_ _rest148837_))))
            (let ((_K148844148870_
                   (lambda (_rest148867_ _hd148868_)
                     (cons (_f148832_ _hd148868_)
                           (_recur148835_ _rest148867_))))
                  (_K148843148861_ (lambda () '())))
              (let ((_try-match148840148864_
                     (lambda ()
                       (if (##null? _g148838148848_)
                           (_K148843148861_)
                           (_else148841148856_)))))
                (if (##pair? _g148838148848_)
                    (let ((_tl148846148875_ (##cdr _g148838148848_))
                          (_hd148845148873_ (##car _g148838148848_)))
                      (let ((_hd148878_ _hd148845148873_)
                            (_rest148880_ _tl148846148875_))
                        (_K148844148870_ _rest148880_ _hd148878_)))
                    (_try-match148840148864_))))))))
    (define gx#stx-map2
      (lambda (_f148737_ _xstx148738_ _ystx148739_)
        (if (procedure? _f148737_)
            '#!void
            (error '"expected procedure" _f148737_))
        (let _recur148741_ ((_xrest148743_ _xstx148738_)
                            (_yrest148744_ _ystx148739_))
          (let* ((_g148745148755_ (gx#syntax-e _xrest148743_))
                 (_else148748148763_ (lambda () '())))
            (let ((_K148751148820_
                   (lambda (_xrest148789_ _xhd148790_)
                     (let* ((_g148791148798_ (gx#syntax-e _yrest148744_))
                            (_E148793148802_
                             (lambda ()
                               (error '"No clause matching" _g148791148798_)))
                            (_K148794148808_
                             (lambda (_yrest148805_ _yhd148806_)
                               (cons (_f148737_ _xhd148790_ _yhd148806_)
                                     (_recur148741_
                                      _xrest148789_
                                      _yrest148805_)))))
                       (if (##pair? _g148791148798_)
                           (let ((_hd148795148811_ (##car _g148791148798_))
                                 (_tl148796148813_ (##cdr _g148791148798_)))
                             (let* ((_yhd148816_ _hd148795148811_)
                                    (_yrest148818_ _tl148796148813_))
                               (_K148794148808_ _yrest148818_ _yhd148816_)))
                           (_E148793148802_)))))
                  (_K148750148783_
                   (lambda ()
                     (let* ((_yrest148767148772_ _yrest148744_)
                            (_E148769148776_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest148767148772_)))
                            (_K148770148780_
                             (lambda ()
                               (_f148737_ _xrest148743_ _yrest148744_))))
                       (if (not (gx#stx-null? _yrest148767148772_))
                           (_K148770148780_)
                           (_E148769148776_))))))
              (let ((_try-match148747148786_
                     (lambda ()
                       (if (not (null? _g148745148755_))
                           (_K148750148783_)
                           (_else148748148763_)))))
                (if (##pair? _g148745148755_)
                    (let ((_tl148753148825_ (##cdr _g148745148755_))
                          (_hd148752148823_ (##car _g148745148755_)))
                      (let ((_xhd148828_ _hd148752148823_)
                            (_xrest148830_ _tl148753148825_))
                        (_K148751148820_ _xrest148830_ _xhd148828_)))
                    (_try-match148747148786_))))))))
    (define gx#stx-andmap
      (lambda (_f148687_ _stx148688_)
        (if (procedure? _f148687_)
            '#!void
            (error '"expected procedure" _f148687_))
        (let _lp148690_ ((_rest148692_ _stx148688_))
          (let* ((_g148693148703_ (gx#syntax-e _rest148692_))
                 (_else148696148711_ (lambda () (_f148687_ _rest148692_))))
            (let ((_K148699148725_
                   (lambda (_rest148722_ _hd148723_)
                     (if (_f148687_ _hd148723_)
                         (_lp148690_ _rest148722_)
                         '#f)))
                  (_K148698148716_ (lambda () '#t)))
              (let ((_try-match148695148719_
                     (lambda ()
                       (if (##null? _g148693148703_)
                           (_K148698148716_)
                           (_else148696148711_)))))
                (if (##pair? _g148693148703_)
                    (let ((_tl148701148730_ (##cdr _g148693148703_))
                          (_hd148700148728_ (##car _g148693148703_)))
                      (let ((_hd148733_ _hd148700148728_)
                            (_rest148735_ _tl148701148730_))
                        (_K148699148725_ _rest148735_ _hd148733_)))
                    (_try-match148695148719_))))))))
    (define gx#stx-ormap
      (lambda (_f148634_ _stx148635_)
        (if (procedure? _f148634_)
            '#!void
            (error '"expected procedure" _f148634_))
        (let _lp148637_ ((_rest148639_ _stx148635_))
          (let* ((_g148640148650_ (gx#syntax-e _rest148639_))
                 (_else148643148658_ (lambda () (_f148634_ _rest148639_))))
            (let ((_K148646148675_
                   (lambda (_rest148669_ _hd148670_)
                     (let ((_$e148672_ (_f148634_ _hd148670_)))
                       (if _$e148672_ _$e148672_ (_lp148637_ _rest148669_)))))
                  (_K148645148663_ (lambda () '#f)))
              (let ((_try-match148642148666_
                     (lambda ()
                       (if (##null? _g148640148650_)
                           (_K148645148663_)
                           (_else148643148658_)))))
                (if (##pair? _g148640148650_)
                    (let ((_tl148648148680_ (##cdr _g148640148650_))
                          (_hd148647148678_ (##car _g148640148650_)))
                      (let ((_hd148683_ _hd148647148678_)
                            (_rest148685_ _tl148648148680_))
                        (_K148646148675_ _rest148685_ _hd148683_)))
                    (_try-match148642148666_))))))))
    (define gx#stx-foldl
      (lambda (_f148582_ _iv148583_ _stx148584_)
        (if (procedure? _f148582_)
            '#!void
            (error '"expected procedure" _f148582_))
        (let _lp148586_ ((_r148588_ _iv148583_) (_rest148589_ _stx148584_))
          (let* ((_g148590148600_ (gx#syntax-e _rest148589_))
                 (_else148593148608_
                  (lambda () (_f148582_ _rest148589_ _r148588_))))
            (let ((_K148596148622_
                   (lambda (_rest148619_ _hd148620_)
                     (_lp148586_
                      (_f148582_ _hd148620_ _r148588_)
                      _rest148619_)))
                  (_K148595148613_ (lambda () _r148588_)))
              (let ((_try-match148592148616_
                     (lambda ()
                       (if (##null? _g148590148600_)
                           (_K148595148613_)
                           (_else148593148608_)))))
                (if (##pair? _g148590148600_)
                    (let ((_tl148598148627_ (##cdr _g148590148600_))
                          (_hd148597148625_ (##car _g148590148600_)))
                      (let ((_hd148630_ _hd148597148625_)
                            (_rest148632_ _tl148598148627_))
                        (_K148596148622_ _rest148632_ _hd148630_)))
                    (_try-match148592148616_))))))))
    (define gx#stx-foldr
      (lambda (_f148531_ _iv148532_ _stx148533_)
        (if (procedure? _f148531_)
            '#!void
            (error '"expected procedure" _f148531_))
        (let _recur148535_ ((_rest148537_ _stx148533_))
          (let* ((_g148538148548_ (gx#syntax-e _rest148537_))
                 (_else148541148556_
                  (lambda () (_f148531_ _rest148537_ _iv148532_))))
            (let ((_K148544148570_
                   (lambda (_rest148567_ _hd148568_)
                     (_f148531_ _hd148568_ (_recur148535_ _rest148567_))))
                  (_K148543148561_ (lambda () _iv148532_)))
              (let ((_try-match148540148564_
                     (lambda ()
                       (if (##null? _g148538148548_)
                           (_K148543148561_)
                           (_else148541148556_)))))
                (if (##pair? _g148538148548_)
                    (let ((_tl148546148575_ (##cdr _g148538148548_))
                          (_hd148545148573_ (##car _g148538148548_)))
                      (let ((_hd148578_ _hd148545148573_)
                            (_rest148580_ _tl148546148575_))
                        (_K148544148570_ _rest148580_ _hd148578_)))
                    (_try-match148540148564_))))))))
    (define gx#stx-reverse
      (lambda (_stx148529_) (gx#stx-foldl cons '() _stx148529_)))
    (define gx#stx-last
      (lambda (_stx148490_)
        (let _lp148492_ ((_rest148494_ _stx148490_))
          (let* ((_g148495148503_ (gx#syntax-e _rest148494_))
                 (_else148497148511_ (lambda () _rest148494_))
                 (_K148499148517_
                  (lambda (_rest148514_ _hd148515_)
                    (if (gx#stx-null? _rest148514_)
                        _hd148515_
                        (_lp148492_ _rest148514_)))))
            (if (##pair? _g148495148503_)
                (let ((_hd148500148520_ (##car _g148495148503_))
                      (_tl148501148522_ (##cdr _g148495148503_)))
                  (let* ((_hd148525_ _hd148500148520_)
                         (_rest148527_ _tl148501148522_))
                    (_K148499148517_ _rest148527_ _hd148525_)))
                (_else148497148511_))))))
    (define gx#stx-last-pair
      (lambda (_stx148461_)
        (let _lp148463_ ((_hd148465_ _stx148461_))
          (let* ((_g148466148473_ (gx#syntax-e _hd148465_))
                 (_E148468148477_
                  (lambda () (error '"No clause matching" _g148466148473_)))
                 (_K148469148482_
                  (lambda (_rest148480_)
                    (if (gx#stx-pair? _rest148480_)
                        (_lp148463_ _rest148480_)
                        _hd148465_))))
            (if (##pair? _g148466148473_)
                (let* ((_tl148471148485_ (##cdr _g148466148473_))
                       (_rest148488_ _tl148471148485_))
                  (_K148469148482_ _rest148488_))
                (_E148468148477_))))))
    (define gx#stx-list-tail
      (lambda (_stx148430_ _k148431_)
        (let _lp148433_ ((_rest148435_ _stx148430_) (_k148436_ _k148431_))
          (if (fxpositive? _k148436_)
              (let* ((_g148437148444_ (gx#syntax-e _rest148435_))
                     (_E148439148448_
                      (lambda ()
                        (error '"No clause matching" _g148437148444_)))
                     (_K148440148453_
                      (lambda (_rest148451_)
                        (_lp148433_ _rest148451_ (fx- _k148436_ '1)))))
                (if (##pair? _g148437148444_)
                    (let* ((_tl148442148456_ (##cdr _g148437148444_))
                           (_rest148459_ _tl148442148456_))
                      (_K148440148453_ _rest148459_))
                    (_E148439148448_)))
              _rest148435_))))
    (define gx#stx-list-ref
      (lambda (_stx148427_ _k148428_)
        (gx#stx-car (gx#stx-list-tail _stx148427_ _k148428_))))
    (define gx#stx-plist?__%
      (lambda (_stx148339_ _key?148340_)
        (if (procedure? _key?148340_)
            '#!void
            (error '"expected procedure" _key?148340_))
        (let _lp148342_ ((_rest148344_ _stx148339_))
          (let* ((_g148345148355_ (gx#stx-e _rest148344_))
                 (_else148348148363_ (lambda () '#f)))
            (let ((_K148351148405_
                   (lambda (_rest148374_ _hd148375_)
                     (if (_key?148340_ _hd148375_)
                         (let* ((_g148376148384_ (gx#stx-e _rest148374_))
                                (_else148378148392_ (lambda () '#f))
                                (_K148380148397_
                                 (lambda (_rest148395_)
                                   (_lp148342_ _rest148395_))))
                           (if (##pair? _g148376148384_)
                               (let* ((_tl148382148400_
                                       (##cdr _g148376148384_))
                                      (_rest148403_ _tl148382148400_))
                                 (_lp148342_ _rest148403_))
                               (_else148378148392_)))
                         '#f)))
                  (_K148350148368_ (lambda () '#t)))
              (let ((_try-match148347148371_
                     (lambda ()
                       (if (##null? _g148345148355_)
                           (_K148350148368_)
                           (_else148348148363_)))))
                (if (##pair? _g148345148355_)
                    (let ((_tl148353148410_ (##cdr _g148345148355_))
                          (_hd148352148408_ (##car _g148345148355_)))
                      (let ((_hd148413_ _hd148352148408_)
                            (_rest148415_ _tl148353148410_))
                        (_K148351148405_ _rest148415_ _hd148413_)))
                    (_try-match148347148371_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx148420_)
        (let ((_key?148422_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx148420_ _key?148422_))))
    (define gx#stx-plist?
      (lambda _g153514_
        (let ((_g153513_ (##length _g153514_)))
          (cond ((##fx= _g153513_ 1)
                 (apply (lambda (_stx148420_) (gx#stx-plist?__0 _stx148420_))
                        _g153514_))
                ((##fx= _g153513_ 2)
                 (apply (lambda (_stx148424_ _key?148425_)
                          (gx#stx-plist?__% _stx148424_ _key?148425_))
                        _g153514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g153514_))))))
    (define gx#stx-getq__%
      (lambda (_key148257_ _stx148258_ _key=?148259_)
        (if (procedure? _key=?148259_)
            '#!void
            (error '"expected procedure" _key=?148259_))
        (let _lp148261_ ((_rest148263_ _stx148258_))
          (let* ((_g148264148272_ (gx#syntax-e _rest148263_))
                 (_else148266148280_ (lambda () '#f))
                 (_K148268148314_
                  (lambda (_rest148283_ _hd148284_)
                    (let* ((_g148285148292_ (gx#syntax-e _rest148283_))
                           (_E148287148296_
                            (lambda ()
                              (error '"No clause matching" _g148285148292_)))
                           (_K148288148302_
                            (lambda (_rest148299_ _val148300_)
                              (if (_key=?148259_ _hd148284_ _key148257_)
                                  _val148300_
                                  (_lp148261_ _rest148299_)))))
                      (if (##pair? _g148285148292_)
                          (let ((_hd148289148305_ (##car _g148285148292_))
                                (_tl148290148307_ (##cdr _g148285148292_)))
                            (let* ((_val148310_ _hd148289148305_)
                                   (_rest148312_ _tl148290148307_))
                              (_K148288148302_ _rest148312_ _val148310_)))
                          (_E148287148296_))))))
            (if (##pair? _g148264148272_)
                (let ((_hd148269148317_ (##car _g148264148272_))
                      (_tl148270148319_ (##cdr _g148264148272_)))
                  (let* ((_hd148322_ _hd148269148317_)
                         (_rest148324_ _tl148270148319_))
                    (_K148268148314_ _rest148324_ _hd148322_)))
                (_else148266148280_))))))
    (define gx#stx-getq__0
      (lambda (_key148329_ _stx148330_)
        (let ((_key=?148332_ gx#stx-eq?))
          (gx#stx-getq__% _key148329_ _stx148330_ _key=?148332_))))
    (define gx#stx-getq
      (lambda _g153516_
        (let ((_g153515_ (##length _g153516_)))
          (cond ((##fx= _g153515_ 2)
                 (apply (lambda (_key148329_ _stx148330_)
                          (gx#stx-getq__0 _key148329_ _stx148330_))
                        _g153516_))
                ((##fx= _g153515_ 3)
                 (apply (lambda (_key148334_ _stx148335_ _key=?148336_)
                          (gx#stx-getq__%
                           _key148334_
                           _stx148335_
                           _key=?148336_))
                        _g153516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g153516_))))))))
