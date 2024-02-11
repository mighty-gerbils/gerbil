(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707651233)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#identifier-wrap? (make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args135401_
        (apply make-class-instance gx#identifier-wrap::t _$args135401_)))
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
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#syntax-wrap? (make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args135398_
        (apply make-class-instance gx#syntax-wrap::t _$args135398_)))
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
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#syntax-quote? (make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args135395_
        (apply make-class-instance gx#syntax-quote::t _$args135395_)))
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
      (lambda (_stx135393_) (symbol? (gx#stx-e _stx135393_))))
    (define gx#identifier-quote?
      (lambda (_stx135391_)
        (if (##structure-direct-instance-of? _stx135391_ 'gx#syntax-quote::t)
            (symbol? (unchecked-slot-ref _stx135391_ 'e))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135389_)
        (if (##structure-direct-instance-of? _stx135389_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135389_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax? (unchecked-slot-ref _stx135389_ 'e))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135387_)
        (if (##structure-direct-instance-of? _stx135387_ 'gx#syntax-quote::t)
            _stx135387_
            (if (##structure-direct-instance-of?
                 _stx135387_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap (unchecked-slot-ref _stx135387_ 'e))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135370_)
        (if (##structure-direct-instance-of? _stx135370_ 'gx#syntax-wrap::t)
            (let _lp135372_ ((_e135374_ (unchecked-slot-ref _stx135370_ 'e))
                             (_marks135375_
                              (cons (##unchecked-structure-ref
                                     _stx135370_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135374_)
                  (let ((_$e135377_ (##type-id (##structure-type _e135374_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135377_)
                        (_lp135372_
                         (unchecked-slot-ref _e135374_ 'e)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135374_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135375_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135377_)
                                (eq? 'gx#identifier-wrap::t _$e135377_))
                            (unchecked-slot-ref _e135374_ 'e)
                            (if (eq? 'gerbil#AST::t _$e135377_)
                                (_lp135372_
                                 (unchecked-slot-ref _e135374_ 'e)
                                 _marks135375_)
                                _e135374_))))
                  (if (null? _marks135375_)
                      _e135374_
                      (if (pair? _e135374_)
                          (cons (gx#stx-wrap (car _e135374_) _marks135375_)
                                (gx#stx-wrap (cdr _e135374_) _marks135375_))
                          (if (vector? _e135374_)
                              (vector-map
                               (lambda (_g135382135384_)
                                 (gx#stx-wrap _g135382135384_ _marks135375_))
                               _e135374_)
                              (if (box? _e135374_)
                                  (box (gx#stx-wrap
                                        (unbox _e135374_)
                                        _marks135375_))
                                  _e135374_))))))
            (if (class-instance? gx#AST::t _stx135370_)
                (unchecked-slot-ref _stx135370_ 'e)
                _stx135370_))))
    (define gx#syntax->datum
      (lambda (_stx135368_)
        (if (class-instance? gx#AST::t _stx135368_)
            (gx#syntax->datum (unchecked-slot-ref _stx135368_ 'e))
            (if (pair? _stx135368_)
                (cons (gx#syntax->datum (car _stx135368_))
                      (gx#syntax->datum (cdr _stx135368_)))
                (if (vector? _stx135368_)
                    (vector-map gx#syntax->datum _stx135368_)
                    (if (box? _stx135368_)
                        (box (gx#syntax->datum (unbox _stx135368_)))
                        _stx135368_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135311_ _datum135312_ _src135313_ _quote?135314_)
        (letrec ((_wrap-datum135316_
                  (lambda (_e135340_ _marks135341_)
                    (_wrap-inner135318_
                     _e135340_
                     (lambda (_g135342135344_)
                       (let ((__obj139949
                              (##structure gx#identifier-wrap::t '#f '#f '#f)))
                         (class-instance-init!
                          __obj139949
                          _g135342135344_
                          _src135313_
                          _marks135341_)
                         __obj139949)))))
                 (_wrap-quote135317_
                  (lambda (_e135332_ _ctx135333_ _marks135334_)
                    (_wrap-inner135318_
                     _e135332_
                     (lambda (_g135335135337_)
                       (let ((__obj139950
                              (##structure
                               gx#syntax-quote::t
                               '#f
                               '#f
                               '#f
                               '#f)))
                         (class-instance-init!
                          __obj139950
                          _g135335135337_
                          _src135313_
                          _ctx135333_
                          _marks135334_)
                         __obj139950)))))
                 (_wrap-inner135318_
                  (lambda (_e135325_ _wrap-e135326_)
                    (let _recur135328_ ((_e135330_ _e135325_))
                      (if (symbol? _e135330_)
                          (_wrap-e135326_ _e135330_)
                          (if (pair? _e135330_)
                              (cons (_recur135328_ (car _e135330_))
                                    (_recur135328_ (cdr _e135330_)))
                              (if (vector? _e135330_)
                                  (vector-map _recur135328_ _e135330_)
                                  (if (box? _e135330_)
                                      (box (_recur135328_ (unbox _e135330_)))
                                      _e135330_)))))))
                 (_wrap-outer135319_
                  (lambda (_e135323_)
                    (if (class-instance? gx#AST::t _e135323_)
                        _e135323_
                        (let ((__obj139951 (##structure gx#AST::t '#f '#f)))
                          (class-instance-init!
                           __obj139951
                           _e135323_
                           _src135313_)
                          __obj139951)))))
          (if (class-instance? gx#AST::t _datum135312_)
              _datum135312_
              (if (not _stx135311_)
                  (let ((__obj139952 (##structure gx#AST::t '#f '#f)))
                    (class-instance-init!
                     __obj139952
                     _datum135312_
                     _src135313_)
                    __obj139952)
                  (if (gx#identifier? _stx135311_)
                      (let ((_stx135321_ (gx#stx-unwrap__0 _stx135311_)))
                        (_wrap-outer135319_
                         (if (##structure-direct-instance-of?
                              _stx135321_
                              'gx#syntax-quote::t)
                             (if _quote?135314_
                                 (_wrap-quote135317_
                                  _datum135312_
                                  (##unchecked-structure-ref
                                   _stx135321_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135321_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135316_
                                  _datum135312_
                                  (##unchecked-structure-ref
                                   _stx135321_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135316_
                              _datum135312_
                              (##unchecked-structure-ref
                               _stx135321_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135311_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135350_ _datum135351_)
        (let* ((_src135353_ '#f) (_quote?135355_ '#t))
          (gx#datum->syntax__%
           _stx135350_
           _datum135351_
           _src135353_
           _quote?135355_))))
    (define gx#datum->syntax__1
      (lambda (_stx135357_ _datum135358_ _src135359_)
        (let ((_quote?135361_ '#t))
          (gx#datum->syntax__%
           _stx135357_
           _datum135358_
           _src135359_
           _quote?135361_))))
    (define gx#datum->syntax
      (lambda _g139958_
        (let ((_g139957_ (##length _g139958_)))
          (cond ((##fx= _g139957_ 2)
                 (apply (lambda (_stx135350_ _datum135351_)
                          (gx#datum->syntax__0 _stx135350_ _datum135351_))
                        _g139958_))
                ((##fx= _g139957_ 3)
                 (apply (lambda (_stx135357_ _datum135358_ _src135359_)
                          (gx#datum->syntax__1
                           _stx135357_
                           _datum135358_
                           _src135359_))
                        _g139958_))
                ((##fx= _g139957_ 4)
                 (apply (lambda (_stx135363_
                                 _datum135364_
                                 _src135365_
                                 _quote?135366_)
                          (gx#datum->syntax__%
                           _stx135363_
                           _datum135364_
                           _src135365_
                           _quote?135366_))
                        _g139958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g139958_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135287_ _marks135288_)
        (let _lp135290_ ((_e135292_ _stx135287_)
                         (_marks135293_ _marks135288_)
                         (_src135294_ (gx#stx-source _stx135287_)))
          (if (##structure-direct-instance-of? _e135292_ 'gx#syntax-wrap::t)
              (_lp135290_
               (unchecked-slot-ref _e135292_ 'e)
               (gx#apply-mark
                (##unchecked-structure-ref _e135292_ '3 gx#syntax-wrap::t '#f)
                _marks135293_)
               (unchecked-slot-ref _e135292_ 'source))
              (if (##structure-direct-instance-of?
                   _e135292_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135293_)
                      _e135292_
                      (let ((__obj139953
                             (##structure gx#identifier-wrap::t '#f '#f '#f)))
                        (class-instance-init!
                         __obj139953
                         (unchecked-slot-ref _e135292_ 'e)
                         (unchecked-slot-ref _e135292_ 'source)
                         (foldl1 gx#apply-mark
                                 (##unchecked-structure-ref
                                  _e135292_
                                  '3
                                  gx#identifier-wrap::t
                                  '#f)
                                 _marks135293_))
                        __obj139953))
                  (if (##structure-direct-instance-of?
                       _e135292_
                       'gx#syntax-quote::t)
                      _e135292_
                      (if (class-instance? gx#AST::t _e135292_)
                          (_lp135290_
                           (unchecked-slot-ref _e135292_ 'e)
                           _marks135293_
                           (unchecked-slot-ref _e135292_ 'source))
                          (if (symbol? _e135292_)
                              (let ((__obj139954
                                     (##structure
                                      gx#identifier-wrap::t
                                      '#f
                                      '#f
                                      '#f)))
                                (class-instance-init!
                                 __obj139954
                                 _e135292_
                                 _src135294_
                                 (reverse _marks135293_))
                                __obj139954)
                              (if (null? _marks135293_)
                                  _e135292_
                                  (if (pair? _e135292_)
                                      (cons (gx#stx-wrap
                                             (car _e135292_)
                                             _marks135293_)
                                            (gx#stx-wrap
                                             (cdr _e135292_)
                                             _marks135293_))
                                      (if (vector? _e135292_)
                                          (vector-map
                                           (lambda (_g135295135297_)
                                             (gx#stx-wrap
                                              _g135295135297_
                                              _marks135293_))
                                           _e135292_)
                                          (if (box? _e135292_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135292_)
                                                    _marks135293_))
                                              _e135292_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135303_)
        (let ((_marks135305_ '()))
          (gx#stx-unwrap__% _stx135303_ _marks135305_))))
    (define gx#stx-unwrap
      (lambda _g139960_
        (let ((_g139959_ (##length _g139960_)))
          (cond ((##fx= _g139959_ 1)
                 (apply (lambda (_stx135303_) (gx#stx-unwrap__0 _stx135303_))
                        _g139960_))
                ((##fx= _g139959_ 2)
                 (apply (lambda (_stx135307_ _marks135308_)
                          (gx#stx-unwrap__% _stx135307_ _marks135308_))
                        _g139960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g139960_))))))
    (define gx#stx-wrap
      (lambda (_stx135280_ _marks135281_)
        (foldl1 (lambda (_mark135283_ _stx135284_)
                  (gx#stx-apply-mark _stx135284_ _mark135283_))
                _stx135280_
                _marks135281_)))
    (define gx#stx-rewrap
      (lambda (_stx135274_ _marks135275_)
        (foldr1 (lambda (_mark135277_ _stx135278_)
                  (gx#stx-apply-mark _stx135278_ _mark135277_))
                _stx135274_
                _marks135275_)))
    (define gx#stx-apply-mark
      (lambda (_stx135271_ _mark135272_)
        (if (##structure-direct-instance-of? _stx135271_ 'gx#syntax-quote::t)
            _stx135271_
            (if (and (##structure-direct-instance-of?
                      _stx135271_
                      'gx#syntax-wrap::t)
                     (eq? _mark135272_
                          (##unchecked-structure-ref
                           _stx135271_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (unchecked-slot-ref _stx135271_ 'e)
                (let ((__obj139955
                       (##structure gx#syntax-wrap::t '#f '#f '#f)))
                  (class-instance-init!
                   __obj139955
                   _stx135271_
                   (gx#stx-source _stx135271_)
                   _mark135272_)
                  __obj139955)))))
    (define gx#apply-mark
      (lambda (_mark135235_ _marks135236_)
        (let* ((_marks135237135245_ _marks135236_)
               (_else135239135253_
                (lambda () (cons _mark135235_ _marks135236_)))
               (_K135241135259_
                (lambda (_rest135256_ _hd135257_)
                  (if (eq? _mark135235_ _hd135257_)
                      _rest135256_
                      (cons _mark135235_ _marks135236_)))))
          (if (##pair? _marks135237135245_)
              (let ((_hd135242135262_ (##car _marks135237135245_))
                    (_tl135243135264_ (##cdr _marks135237135245_)))
                (let* ((_hd135267_ _hd135242135262_)
                       (_rest135269_ _tl135243135264_))
                  (_K135241135259_ _rest135269_ _hd135267_)))
              (_else135239135253_)))))
    (define gx#stx-e
      (lambda (_stx135233_)
        (if (##structure-direct-instance-of? _stx135233_ 'gx#syntax-wrap::t)
            (gx#stx-e (unchecked-slot-ref _stx135233_ 'e))
            (if (class-instance? gx#AST::t _stx135233_)
                (unchecked-slot-ref _stx135233_ 'e)
                _stx135233_))))
    (define gx#stx-source
      (lambda (_stx135231_)
        (if (class-instance? gx#AST::t _stx135231_)
            (unchecked-slot-ref _stx135231_ 'source)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135225_ _src135226_)
        (if (or (class-instance? gx#AST::t _stx135225_) (not _src135226_))
            _stx135225_
            (let ((__obj139956 (##structure gx#AST::t '#f '#f)))
              (class-instance-init! __obj139956 _stx135225_ _src135226_)
              __obj139956))))
    (define gx#stx-datum?
      (lambda (_stx135223_) (gx#self-quoting? (gx#stx-e _stx135223_))))
    (define gx#self-quoting?
      (lambda (_x135206_)
        (let ((_$e135208_ (immediate? _x135206_)))
          (if _$e135208_
              _$e135208_
              (let ((_$e135211_ (number? _x135206_)))
                (if _$e135211_
                    _$e135211_
                    (let ((_$e135214_ (keyword? _x135206_)))
                      (if _$e135214_
                          _$e135214_
                          (let ((_$e135217_ (string? _x135206_)))
                            (if _$e135217_
                                _$e135217_
                                (let ((_$e135220_ (vector? _x135206_)))
                                  (if _$e135220_
                                      _$e135220_
                                      (u8vector? _x135206_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135204_) (boolean? (gx#stx-e _e135204_))))
    (define gx#stx-keyword?
      (lambda (_e135202_) (keyword? (gx#stx-e _e135202_))))
    (define gx#stx-char? (lambda (_e135200_) (char? (gx#stx-e _e135200_))))
    (define gx#stx-number? (lambda (_e135198_) (number? (gx#stx-e _e135198_))))
    (define gx#stx-fixnum? (lambda (_e135196_) (fixnum? (gx#stx-e _e135196_))))
    (define gx#stx-string? (lambda (_e135194_) (string? (gx#stx-e _e135194_))))
    (define gx#stx-null? (lambda (_e135192_) (null? (gx#stx-e _e135192_))))
    (define gx#stx-pair? (lambda (_e135190_) (pair? (gx#stx-e _e135190_))))
    (define gx#stx-list?
      (lambda (_e135152_)
        (let* ((_g135153135162_ (gx#stx-e _e135152_))
               (_E135156135166_
                (lambda () (error '"No clause matching" _g135153135162_))))
          (let ((_K135158135182_
                 (lambda (_rest135180_) (gx#stx-list? _rest135180_)))
                (_K135157135172_ (lambda (_tail135170_) (null? _tail135170_))))
            (if (##pair? _g135153135162_)
                (let* ((_tl135160135185_ (##cdr _g135153135162_))
                       (_rest135188_ _tl135160135185_))
                  (gx#stx-list? _rest135188_))
                (let ((_tail135175_ _g135153135162_))
                  (null? _tail135175_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135145_)
        (let* ((_e135147_ (gx#stx-e _e135145_)) (_$e135149_ (pair? _e135147_)))
          (if _$e135149_ _$e135149_ (null? _e135147_)))))
    (define gx#stx-vector? (lambda (_e135143_) (vector? (gx#stx-e _e135143_))))
    (define gx#stx-box? (lambda (_e135141_) (box? (gx#stx-e _e135141_))))
    (define gx#stx-eq?
      (lambda (_x135138_ _y135139_)
        (eq? (gx#stx-e _x135138_) (gx#stx-e _y135139_))))
    (define gx#stx-eqv?
      (lambda (_x135135_ _y135136_)
        (eqv? (gx#stx-e _x135135_) (gx#stx-e _y135136_))))
    (define gx#stx-equal?
      (lambda (_x135132_ _y135133_)
        (equal? (gx#stx-e _x135132_) (gx#stx-e _y135133_))))
    (define gx#stx-false? (lambda (_x135130_) (not (gx#stx-e _x135130_))))
    (define gx#stx-identifier
      (lambda (_template135127_ . _args135128_)
        (gx#datum->syntax__1
         _template135127_
         (apply make-symbol (gx#syntax->datum _args135128_))
         (gx#stx-source _template135127_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135125_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135125_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135123_)
        (if (##structure-direct-instance-of?
             _stx135123_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135123_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135123_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135123_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135123_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135119_)
        (let ((_stx135121_ (gx#stx-unwrap__0 _stx135119_)))
          (if (gx#identifier-quote? _stx135121_)
              (##unchecked-structure-ref _stx135121_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135074_)
        (let* ((_g135075135085_ (gx#stx-e _stx135074_))
               (_else135078135093_ (lambda () '#f)))
          (let ((_K135081135107_
                 (lambda (_rest135104_ _hd135105_)
                   (if (gx#identifier? _hd135105_)
                       (gx#identifier-list? _rest135104_)
                       '#f)))
                (_K135080135098_ (lambda () '#t)))
            (let ((_try-match135077135101_
                   (lambda ()
                     (if (##null? _g135075135085_)
                         (_K135080135098_)
                         (_else135078135093_)))))
              (if (##pair? _g135075135085_)
                  (let ((_tl135083135112_ (##cdr _g135075135085_))
                        (_hd135082135110_ (##car _g135075135085_)))
                    (let ((_hd135115_ _hd135082135110_)
                          (_rest135117_ _tl135083135112_))
                      (_K135081135107_ _rest135117_ _hd135115_)))
                  (_try-match135077135101_)))))))
    (define gx#genident__%
      (lambda (_e135051_ _src135052_)
        (gx#stx-wrap-source
         (gensym (let ((_e135054_ (gx#stx-e _e135051_)))
                   (if (interned-symbol? _e135054_) _e135054_ 'g)))
         (let ((_$e135056_ (gx#stx-source _e135051_)))
           (if _$e135056_ _$e135056_ _src135052_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135063_ 'g) (_src135065_ '#f))
          (gx#genident__% _e135063_ _src135065_))))
    (define gx#genident__1
      (lambda (_e135067_)
        (let ((_src135069_ '#f)) (gx#genident__% _e135067_ _src135069_))))
    (define gx#genident
      (lambda _g139962_
        (let ((_g139961_ (##length _g139962_)))
          (cond ((##fx= _g139961_ 0)
                 (apply (lambda () (gx#genident__0)) _g139962_))
                ((##fx= _g139961_ 1)
                 (apply (lambda (_e135067_) (gx#genident__1 _e135067_))
                        _g139962_))
                ((##fx= _g139961_ 2)
                 (apply (lambda (_e135071_ _src135072_)
                          (gx#genident__% _e135071_ _src135072_))
                        _g139962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g139962_))))))
    (define gx#gentemps
      (lambda (_stx-lst135048_) (gx#stx-map1 gx#genident _stx-lst135048_)))
    (define gx#syntax->list
      (lambda (_stx135046_) (gx#stx-map1 values _stx135046_)))
    (define gx#stx-car
      (lambda (_stx135043_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135043_)))))
    (define gx#stx-cdr
      (lambda (_stx135040_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135040_)))))
    (define gx#stx-length
      (lambda (_stx135005_)
        (let _lp135007_ ((_rest135009_ _stx135005_) (_n135010_ '0))
          (let* ((_g135011135019_ (gx#stx-e _rest135009_))
                 (_else135013135027_ (lambda () _n135010_))
                 (_K135015135032_
                  (lambda (_rest135030_)
                    (_lp135007_ _rest135030_ (fx+ _n135010_ '1)))))
            (if (##pair? _g135011135019_)
                (let* ((_tl135017135035_ (##cdr _g135011135019_))
                       (_rest135038_ _tl135017135035_))
                  (_K135015135032_ _rest135038_))
                (_else135013135027_))))))
    (define gx#stx-for-each
      (lambda _g139964_
        (let ((_g139963_ (##length _g139964_)))
          (cond ((##fx= _g139963_ 2)
                 (apply (lambda (_f134998_ _stx134999_)
                          (gx#stx-for-each1 _f134998_ _stx134999_))
                        _g139964_))
                ((##fx= _g139963_ 3)
                 (apply (lambda (_f135001_ _xstx135002_ _ystx135003_)
                          (gx#stx-for-each2
                           _f135001_
                           _xstx135002_
                           _ystx135003_))
                        _g139964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g139964_))))))
    (define gx#stx-for-each1
      (lambda (_f134948_ _stx134949_)
        (if (procedure? _f134948_)
            '#!void
            (error '"expected procedure" _f134948_))
        (let _lp134951_ ((_rest134953_ _stx134949_))
          (let* ((_g134954134964_ (gx#syntax-e _rest134953_))
                 (_else134957134972_ (lambda () (_f134948_ _rest134953_))))
            (let ((_K134960134986_
                   (lambda (_rest134983_ _hd134984_)
                     (_f134948_ _hd134984_)
                     (_lp134951_ _rest134983_)))
                  (_K134959134977_ (lambda () '#!void)))
              (let ((_try-match134956134980_
                     (lambda ()
                       (if (##null? _g134954134964_)
                           (_K134959134977_)
                           (_else134957134972_)))))
                (if (##pair? _g134954134964_)
                    (let ((_tl134962134991_ (##cdr _g134954134964_))
                          (_hd134961134989_ (##car _g134954134964_)))
                      (let ((_hd134994_ _hd134961134989_)
                            (_rest134996_ _tl134962134991_))
                        (_K134960134986_ _rest134996_ _hd134994_)))
                    (_try-match134956134980_))))))))
    (define gx#stx-for-each2
      (lambda (_f134853_ _xstx134854_ _ystx134855_)
        (if (procedure? _f134853_)
            '#!void
            (error '"expected procedure" _f134853_))
        (let _lp134857_ ((_xrest134859_ _xstx134854_)
                         (_yrest134860_ _ystx134855_))
          (let* ((_g134861134871_ (gx#syntax-e _xrest134859_))
                 (_else134864134879_ (lambda () '#!void)))
            (let ((_K134867134936_
                   (lambda (_xrest134905_ _xhd134906_)
                     (let* ((_g134907134914_ (gx#syntax-e _yrest134860_))
                            (_E134909134918_
                             (lambda ()
                               (error '"No clause matching" _g134907134914_)))
                            (_K134910134924_
                             (lambda (_yrest134921_ _yhd134922_)
                               (_f134853_ _xhd134906_ _yhd134922_)
                               (_lp134857_ _xrest134905_ _yrest134921_))))
                       (if (##pair? _g134907134914_)
                           (let ((_hd134911134927_ (##car _g134907134914_))
                                 (_tl134912134929_ (##cdr _g134907134914_)))
                             (let* ((_yhd134932_ _hd134911134927_)
                                    (_yrest134934_ _tl134912134929_))
                               (_K134910134924_ _yrest134934_ _yhd134932_)))
                           (_E134909134918_)))))
                  (_K134866134899_
                   (lambda ()
                     (let* ((_yrest134883134888_ _yrest134860_)
                            (_E134885134892_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest134883134888_)))
                            (_K134886134896_
                             (lambda ()
                               (_f134853_ _xrest134859_ _yrest134860_))))
                       (if (not (gx#stx-null? _yrest134883134888_))
                           (_K134886134896_)
                           (_E134885134892_))))))
              (let ((_try-match134863134902_
                     (lambda ()
                       (if (not (null? _g134861134871_))
                           (_K134866134899_)
                           (_else134864134879_)))))
                (if (##pair? _g134861134871_)
                    (let ((_tl134869134941_ (##cdr _g134861134871_))
                          (_hd134868134939_ (##car _g134861134871_)))
                      (let ((_xhd134944_ _hd134868134939_)
                            (_xrest134946_ _tl134869134941_))
                        (_K134867134936_ _xrest134946_ _xhd134944_)))
                    (_try-match134863134902_))))))))
    (define gx#stx-map
      (lambda _g139966_
        (let ((_g139965_ (##length _g139966_)))
          (cond ((##fx= _g139965_ 2)
                 (apply (lambda (_f134846_ _stx134847_)
                          (gx#stx-map1 _f134846_ _stx134847_))
                        _g139966_))
                ((##fx= _g139965_ 3)
                 (apply (lambda (_f134849_ _xstx134850_ _ystx134851_)
                          (gx#stx-map2 _f134849_ _xstx134850_ _ystx134851_))
                        _g139966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g139966_))))))
    (define gx#stx-map1
      (lambda (_f134796_ _stx134797_)
        (if (procedure? _f134796_)
            '#!void
            (error '"expected procedure" _f134796_))
        (let _recur134799_ ((_rest134801_ _stx134797_))
          (let* ((_g134802134812_ (gx#syntax-e _rest134801_))
                 (_else134805134820_ (lambda () (_f134796_ _rest134801_))))
            (let ((_K134808134834_
                   (lambda (_rest134831_ _hd134832_)
                     (cons (_f134796_ _hd134832_)
                           (_recur134799_ _rest134831_))))
                  (_K134807134825_ (lambda () '())))
              (let ((_try-match134804134828_
                     (lambda ()
                       (if (##null? _g134802134812_)
                           (_K134807134825_)
                           (_else134805134820_)))))
                (if (##pair? _g134802134812_)
                    (let ((_tl134810134839_ (##cdr _g134802134812_))
                          (_hd134809134837_ (##car _g134802134812_)))
                      (let ((_hd134842_ _hd134809134837_)
                            (_rest134844_ _tl134810134839_))
                        (_K134808134834_ _rest134844_ _hd134842_)))
                    (_try-match134804134828_))))))))
    (define gx#stx-map2
      (lambda (_f134701_ _xstx134702_ _ystx134703_)
        (if (procedure? _f134701_)
            '#!void
            (error '"expected procedure" _f134701_))
        (let _recur134705_ ((_xrest134707_ _xstx134702_)
                            (_yrest134708_ _ystx134703_))
          (let* ((_g134709134719_ (gx#syntax-e _xrest134707_))
                 (_else134712134727_ (lambda () '())))
            (let ((_K134715134784_
                   (lambda (_xrest134753_ _xhd134754_)
                     (let* ((_g134755134762_ (gx#syntax-e _yrest134708_))
                            (_E134757134766_
                             (lambda ()
                               (error '"No clause matching" _g134755134762_)))
                            (_K134758134772_
                             (lambda (_yrest134769_ _yhd134770_)
                               (cons (_f134701_ _xhd134754_ _yhd134770_)
                                     (_recur134705_
                                      _xrest134753_
                                      _yrest134769_)))))
                       (if (##pair? _g134755134762_)
                           (let ((_hd134759134775_ (##car _g134755134762_))
                                 (_tl134760134777_ (##cdr _g134755134762_)))
                             (let* ((_yhd134780_ _hd134759134775_)
                                    (_yrest134782_ _tl134760134777_))
                               (_K134758134772_ _yrest134782_ _yhd134780_)))
                           (_E134757134766_)))))
                  (_K134714134747_
                   (lambda ()
                     (let* ((_yrest134731134736_ _yrest134708_)
                            (_E134733134740_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest134731134736_)))
                            (_K134734134744_
                             (lambda ()
                               (_f134701_ _xrest134707_ _yrest134708_))))
                       (if (not (gx#stx-null? _yrest134731134736_))
                           (_K134734134744_)
                           (_E134733134740_))))))
              (let ((_try-match134711134750_
                     (lambda ()
                       (if (not (null? _g134709134719_))
                           (_K134714134747_)
                           (_else134712134727_)))))
                (if (##pair? _g134709134719_)
                    (let ((_tl134717134789_ (##cdr _g134709134719_))
                          (_hd134716134787_ (##car _g134709134719_)))
                      (let ((_xhd134792_ _hd134716134787_)
                            (_xrest134794_ _tl134717134789_))
                        (_K134715134784_ _xrest134794_ _xhd134792_)))
                    (_try-match134711134750_))))))))
    (define gx#stx-andmap
      (lambda (_f134651_ _stx134652_)
        (if (procedure? _f134651_)
            '#!void
            (error '"expected procedure" _f134651_))
        (let _lp134654_ ((_rest134656_ _stx134652_))
          (let* ((_g134657134667_ (gx#syntax-e _rest134656_))
                 (_else134660134675_ (lambda () (_f134651_ _rest134656_))))
            (let ((_K134663134689_
                   (lambda (_rest134686_ _hd134687_)
                     (if (_f134651_ _hd134687_)
                         (_lp134654_ _rest134686_)
                         '#f)))
                  (_K134662134680_ (lambda () '#t)))
              (let ((_try-match134659134683_
                     (lambda ()
                       (if (##null? _g134657134667_)
                           (_K134662134680_)
                           (_else134660134675_)))))
                (if (##pair? _g134657134667_)
                    (let ((_tl134665134694_ (##cdr _g134657134667_))
                          (_hd134664134692_ (##car _g134657134667_)))
                      (let ((_hd134697_ _hd134664134692_)
                            (_rest134699_ _tl134665134694_))
                        (_K134663134689_ _rest134699_ _hd134697_)))
                    (_try-match134659134683_))))))))
    (define gx#stx-ormap
      (lambda (_f134598_ _stx134599_)
        (if (procedure? _f134598_)
            '#!void
            (error '"expected procedure" _f134598_))
        (let _lp134601_ ((_rest134603_ _stx134599_))
          (let* ((_g134604134614_ (gx#syntax-e _rest134603_))
                 (_else134607134622_ (lambda () (_f134598_ _rest134603_))))
            (let ((_K134610134639_
                   (lambda (_rest134633_ _hd134634_)
                     (let ((_$e134636_ (_f134598_ _hd134634_)))
                       (if _$e134636_ _$e134636_ (_lp134601_ _rest134633_)))))
                  (_K134609134627_ (lambda () '#f)))
              (let ((_try-match134606134630_
                     (lambda ()
                       (if (##null? _g134604134614_)
                           (_K134609134627_)
                           (_else134607134622_)))))
                (if (##pair? _g134604134614_)
                    (let ((_tl134612134644_ (##cdr _g134604134614_))
                          (_hd134611134642_ (##car _g134604134614_)))
                      (let ((_hd134647_ _hd134611134642_)
                            (_rest134649_ _tl134612134644_))
                        (_K134610134639_ _rest134649_ _hd134647_)))
                    (_try-match134606134630_))))))))
    (define gx#stx-foldl
      (lambda (_f134546_ _iv134547_ _stx134548_)
        (if (procedure? _f134546_)
            '#!void
            (error '"expected procedure" _f134546_))
        (let _lp134550_ ((_r134552_ _iv134547_) (_rest134553_ _stx134548_))
          (let* ((_g134554134564_ (gx#syntax-e _rest134553_))
                 (_else134557134572_
                  (lambda () (_f134546_ _rest134553_ _r134552_))))
            (let ((_K134560134586_
                   (lambda (_rest134583_ _hd134584_)
                     (_lp134550_
                      (_f134546_ _hd134584_ _r134552_)
                      _rest134583_)))
                  (_K134559134577_ (lambda () _r134552_)))
              (let ((_try-match134556134580_
                     (lambda ()
                       (if (##null? _g134554134564_)
                           (_K134559134577_)
                           (_else134557134572_)))))
                (if (##pair? _g134554134564_)
                    (let ((_tl134562134591_ (##cdr _g134554134564_))
                          (_hd134561134589_ (##car _g134554134564_)))
                      (let ((_hd134594_ _hd134561134589_)
                            (_rest134596_ _tl134562134591_))
                        (_K134560134586_ _rest134596_ _hd134594_)))
                    (_try-match134556134580_))))))))
    (define gx#stx-foldr
      (lambda (_f134495_ _iv134496_ _stx134497_)
        (if (procedure? _f134495_)
            '#!void
            (error '"expected procedure" _f134495_))
        (let _recur134499_ ((_rest134501_ _stx134497_))
          (let* ((_g134502134512_ (gx#syntax-e _rest134501_))
                 (_else134505134520_
                  (lambda () (_f134495_ _rest134501_ _iv134496_))))
            (let ((_K134508134534_
                   (lambda (_rest134531_ _hd134532_)
                     (_f134495_ _hd134532_ (_recur134499_ _rest134531_))))
                  (_K134507134525_ (lambda () _iv134496_)))
              (let ((_try-match134504134528_
                     (lambda ()
                       (if (##null? _g134502134512_)
                           (_K134507134525_)
                           (_else134505134520_)))))
                (if (##pair? _g134502134512_)
                    (let ((_tl134510134539_ (##cdr _g134502134512_))
                          (_hd134509134537_ (##car _g134502134512_)))
                      (let ((_hd134542_ _hd134509134537_)
                            (_rest134544_ _tl134510134539_))
                        (_K134508134534_ _rest134544_ _hd134542_)))
                    (_try-match134504134528_))))))))
    (define gx#stx-reverse
      (lambda (_stx134493_) (gx#stx-foldl cons '() _stx134493_)))
    (define gx#stx-last
      (lambda (_stx134454_)
        (let _lp134456_ ((_rest134458_ _stx134454_))
          (let* ((_g134459134467_ (gx#syntax-e _rest134458_))
                 (_else134461134475_ (lambda () _rest134458_))
                 (_K134463134481_
                  (lambda (_rest134478_ _hd134479_)
                    (if (gx#stx-null? _rest134478_)
                        _hd134479_
                        (_lp134456_ _rest134478_)))))
            (if (##pair? _g134459134467_)
                (let ((_hd134464134484_ (##car _g134459134467_))
                      (_tl134465134486_ (##cdr _g134459134467_)))
                  (let* ((_hd134489_ _hd134464134484_)
                         (_rest134491_ _tl134465134486_))
                    (_K134463134481_ _rest134491_ _hd134489_)))
                (_else134461134475_))))))
    (define gx#stx-last-pair
      (lambda (_stx134425_)
        (let _lp134427_ ((_hd134429_ _stx134425_))
          (let* ((_g134430134437_ (gx#syntax-e _hd134429_))
                 (_E134432134441_
                  (lambda () (error '"No clause matching" _g134430134437_)))
                 (_K134433134446_
                  (lambda (_rest134444_)
                    (if (gx#stx-pair? _rest134444_)
                        (_lp134427_ _rest134444_)
                        _hd134429_))))
            (if (##pair? _g134430134437_)
                (let* ((_tl134435134449_ (##cdr _g134430134437_))
                       (_rest134452_ _tl134435134449_))
                  (_K134433134446_ _rest134452_))
                (_E134432134441_))))))
    (define gx#stx-list-tail
      (lambda (_stx134394_ _k134395_)
        (let _lp134397_ ((_rest134399_ _stx134394_) (_k134400_ _k134395_))
          (if (fxpositive? _k134400_)
              (let* ((_g134401134408_ (gx#syntax-e _rest134399_))
                     (_E134403134412_
                      (lambda ()
                        (error '"No clause matching" _g134401134408_)))
                     (_K134404134417_
                      (lambda (_rest134415_)
                        (_lp134397_ _rest134415_ (fx- _k134400_ '1)))))
                (if (##pair? _g134401134408_)
                    (let* ((_tl134406134420_ (##cdr _g134401134408_))
                           (_rest134423_ _tl134406134420_))
                      (_K134404134417_ _rest134423_))
                    (_E134403134412_)))
              _rest134399_))))
    (define gx#stx-list-ref
      (lambda (_stx134391_ _k134392_)
        (gx#stx-car (gx#stx-list-tail _stx134391_ _k134392_))))
    (define gx#stx-plist?__%
      (lambda (_stx134303_ _key?134304_)
        (if (procedure? _key?134304_)
            '#!void
            (error '"expected procedure" _key?134304_))
        (let _lp134306_ ((_rest134308_ _stx134303_))
          (let* ((_g134309134319_ (gx#stx-e _rest134308_))
                 (_else134312134327_ (lambda () '#f)))
            (let ((_K134315134369_
                   (lambda (_rest134338_ _hd134339_)
                     (if (_key?134304_ _hd134339_)
                         (let* ((_g134340134348_ (gx#stx-e _rest134338_))
                                (_else134342134356_ (lambda () '#f))
                                (_K134344134361_
                                 (lambda (_rest134359_)
                                   (_lp134306_ _rest134359_))))
                           (if (##pair? _g134340134348_)
                               (let* ((_tl134346134364_
                                       (##cdr _g134340134348_))
                                      (_rest134367_ _tl134346134364_))
                                 (_lp134306_ _rest134367_))
                               (_else134342134356_)))
                         '#f)))
                  (_K134314134332_ (lambda () '#t)))
              (let ((_try-match134311134335_
                     (lambda ()
                       (if (##null? _g134309134319_)
                           (_K134314134332_)
                           (_else134312134327_)))))
                (if (##pair? _g134309134319_)
                    (let ((_tl134317134374_ (##cdr _g134309134319_))
                          (_hd134316134372_ (##car _g134309134319_)))
                      (let ((_hd134377_ _hd134316134372_)
                            (_rest134379_ _tl134317134374_))
                        (_K134315134369_ _rest134379_ _hd134377_)))
                    (_try-match134311134335_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134384_)
        (let ((_key?134386_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134384_ _key?134386_))))
    (define gx#stx-plist?
      (lambda _g139968_
        (let ((_g139967_ (##length _g139968_)))
          (cond ((##fx= _g139967_ 1)
                 (apply (lambda (_stx134384_) (gx#stx-plist?__0 _stx134384_))
                        _g139968_))
                ((##fx= _g139967_ 2)
                 (apply (lambda (_stx134388_ _key?134389_)
                          (gx#stx-plist?__% _stx134388_ _key?134389_))
                        _g139968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g139968_))))))
    (define gx#stx-getq__%
      (lambda (_key134221_ _stx134222_ _key=?134223_)
        (if (procedure? _key=?134223_)
            '#!void
            (error '"expected procedure" _key=?134223_))
        (let _lp134225_ ((_rest134227_ _stx134222_))
          (let* ((_g134228134236_ (gx#syntax-e _rest134227_))
                 (_else134230134244_ (lambda () '#f))
                 (_K134232134278_
                  (lambda (_rest134247_ _hd134248_)
                    (let* ((_g134249134256_ (gx#syntax-e _rest134247_))
                           (_E134251134260_
                            (lambda ()
                              (error '"No clause matching" _g134249134256_)))
                           (_K134252134266_
                            (lambda (_rest134263_ _val134264_)
                              (if (_key=?134223_ _hd134248_ _key134221_)
                                  _val134264_
                                  (_lp134225_ _rest134263_)))))
                      (if (##pair? _g134249134256_)
                          (let ((_hd134253134269_ (##car _g134249134256_))
                                (_tl134254134271_ (##cdr _g134249134256_)))
                            (let* ((_val134274_ _hd134253134269_)
                                   (_rest134276_ _tl134254134271_))
                              (_K134252134266_ _rest134276_ _val134274_)))
                          (_E134251134260_))))))
            (if (##pair? _g134228134236_)
                (let ((_hd134233134281_ (##car _g134228134236_))
                      (_tl134234134283_ (##cdr _g134228134236_)))
                  (let* ((_hd134286_ _hd134233134281_)
                         (_rest134288_ _tl134234134283_))
                    (_K134232134278_ _rest134288_ _hd134286_)))
                (_else134230134244_))))))
    (define gx#stx-getq__0
      (lambda (_key134293_ _stx134294_)
        (let ((_key=?134296_ gx#stx-eq?))
          (gx#stx-getq__% _key134293_ _stx134294_ _key=?134296_))))
    (define gx#stx-getq
      (lambda _g139970_
        (let ((_g139969_ (##length _g139970_)))
          (cond ((##fx= _g139969_ 2)
                 (apply (lambda (_key134293_ _stx134294_)
                          (gx#stx-getq__0 _key134293_ _stx134294_))
                        _g139970_))
                ((##fx= _g139969_ 3)
                 (apply (lambda (_key134298_ _stx134299_ _key=?134300_)
                          (gx#stx-getq__%
                           _key134298_
                           _stx134299_
                           _key=?134300_))
                        _g139970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g139970_))))))))
