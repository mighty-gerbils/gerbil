(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#identifier-wrap::t
    (make-struct-type
     'gx#identifier-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
  (define gx#make-identifier-wrap
    (lambda _$args30600_
      (apply make-struct-instance gx#identifier-wrap::t _$args30600_)))
  (define gx#identifier-wrap-marks
    (make-struct-field-accessor gx#identifier-wrap::t '0))
  (define gx#identifier-wrap-marks-set!
    (make-struct-field-mutator gx#identifier-wrap::t '0))
  (begin)
  (define gx#syntax-wrap::t
    (make-struct-type
     'gx#syntax-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
  (define gx#make-syntax-wrap
    (lambda _$args30597_
      (apply make-struct-instance gx#syntax-wrap::t _$args30597_)))
  (define gx#syntax-wrap-mark
    (make-struct-field-accessor gx#syntax-wrap::t '0))
  (define gx#syntax-wrap-mark-set!
    (make-struct-field-mutator gx#syntax-wrap::t '0))
  (begin)
  (define gx#syntax-quote::t
    (make-struct-type
     'gx#syntax-quote::t
     AST::t
     '2
     'syntax
     '((final: . #t))
     '#f))
  (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
  (define gx#make-syntax-quote
    (lambda _$args30594_
      (apply make-struct-instance gx#syntax-quote::t _$args30594_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (begin)
  (define gx#identifier? (lambda (_stx30592_) (symbol? (gx#stx-e _stx30592_))))
  (define gx#identifier-quote?
    (lambda (_stx30590_)
      (if (gx#syntax-quote? _stx30590_) (symbol? (AST-e _stx30590_)) '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx30585_)
      (let ((_$e30587_ (gx#syntax-quote? _stx30585_)))
        (if _$e30587_
            _$e30587_
            (if (AST? _stx30585_)
                (gx#sealed-syntax? (AST-e _stx30585_))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx30581_)
      (let ((_stx30583_ (gx#stx-unwrap _stx30581_)))
        (if (AST? _stx30583_) (AST-e _stx30583_) _stx30583_))))
  (define gx#syntax->datum
    (lambda (_stx30579_)
      (if (AST? _stx30579_)
          (gx#syntax->datum (AST-e _stx30579_))
          (if (pair? _stx30579_)
              (cons (gx#syntax->datum (car _stx30579_))
                    (gx#syntax->datum (cdr _stx30579_)))
              (if (vector? _stx30579_)
                  (vector-map gx#syntax->datum _stx30579_)
                  (if (box? _stx30579_)
                      (box (gx#syntax->datum (unbox _stx30579_)))
                      _stx30579_))))))
  (define gx#datum->syntax
    (let ((_opt-lambda3054730567_
           (lambda (_stx30549_ _datum30550_ _src30551_)
             (let ((_wrap-datum30553_
                    (lambda (_e30560_ _marks30561_)
                      ((letrec ((_recur30563_
                                 (lambda (_e30565_)
                                   (if (symbol? _e30565_)
                                       (gx#make-identifier-wrap
                                        _e30565_
                                        _src30551_
                                        _marks30561_)
                                       (if (pair? _e30565_)
                                           (cons (_recur30563_ (car _e30565_))
                                                 (_recur30563_ (cdr _e30565_)))
                                           (if (vector? _e30565_)
                                               (vector-map
                                                _recur30563_
                                                _e30565_)
                                               (if (box? _e30565_)
                                                   (box (_recur30563_
                                                         (unbox _e30565_)))
                                                   _e30565_)))))))
                         _recur30563_)
                       _e30560_))))
               (let ((_wrap-outer30554_
                      (lambda (_e30558_)
                        (if (AST? _e30558_)
                            _e30558_
                            (make-AST _e30558_ _src30551_)))))
                 (if (AST? _datum30550_)
                     _datum30550_
                     (if (not _stx30549_)
                         (make-AST _datum30550_ _src30551_)
                         (if (gx#identifier? _stx30549_)
                             (let ((_stx30556_ (gx#stx-unwrap _stx30549_)))
                               (if (gx#identifier-quote? _stx30556_)
                                   (gx#make-syntax-quote
                                    _datum30550_
                                    _src30551_
                                    (gx#syntax-quote-context _stx30556_)
                                    (gx#syntax-quote-marks _stx30556_))
                                   (_wrap-outer30554_
                                    (_wrap-datum30553_
                                     _datum30550_
                                     (gx#identifier-wrap-marks _stx30556_)))))
                             (error '"Bad template syntax; expected identifier"
                                    _stx30549_)))))))))
      (lambda _g40546_
        (let ((_g40545_ (length _g40546_)))
          (cond ((fx= _g40545_ 2)
                 (apply (lambda (_stx30570_ _datum30571_)
                          (let ((_src30573_ '#f))
                            (_opt-lambda3054730567_
                             _stx30570_
                             _datum30571_
                             _src30573_)))
                        _g40546_))
                ((fx= _g40545_ 3)
                 (apply (lambda (_stx30575_ _datum30576_ _src30577_)
                          (_opt-lambda3054730567_
                           _stx30575_
                           _datum30576_
                           _src30577_))
                        _g40546_))
                (else (error "No clause matching arguments" _g40546_)))))))
  (define gx#stx-unwrap
    (let ((_opt-lambda3052330538_
           (lambda (_stx30525_ _marks30526_)
             ((letrec ((_lp30528_
                        (lambda (_e30530_ _marks30531_ _src30532_)
                          (if (gx#syntax-wrap? _e30530_)
                              (_lp30528_
                               (AST-e _e30530_)
                               (gx#apply-mark
                                (gx#syntax-wrap-mark _e30530_)
                                _marks30531_)
                               (AST-source _e30530_))
                              (if (gx#identifier-wrap? _e30530_)
                                  (if (null? _marks30531_)
                                      _e30530_
                                      (gx#make-identifier-wrap
                                       (AST-e _e30530_)
                                       (AST-source _e30530_)
                                       (foldl gx#apply-mark
                                              (gx#identifier-wrap-marks
                                               _e30530_)
                                              _marks30531_)))
                                  (if (gx#syntax-quote? _e30530_)
                                      _e30530_
                                      (if (AST? _e30530_)
                                          (_lp30528_
                                           (AST-e _e30530_)
                                           _marks30531_
                                           (AST-source _e30530_))
                                          (if (symbol? _e30530_)
                                              (gx#make-identifier-wrap
                                               _e30530_
                                               _src30532_
                                               (reverse _marks30531_))
                                              (if (null? _marks30531_)
                                                  _e30530_
                                                  (if (pair? _e30530_)
                                                      (cons (gx#stx-wrap
                                                             (car _e30530_)
                                                             _marks30531_)
                                                            (gx#stx-wrap
                                                             (cdr _e30530_)
                                                             _marks30531_))
                                                      (if (vector? _e30530_)
                                                          (vector-map
                                                           (lambda (_g3053330535_)
                                                             (gx#stx-wrap
                                                              _g3053330535_
                                                              _marks30531_))
                                                           _e30530_)
                                                          (if (box? _e30530_)
                                                              (box (gx#stx-wrap
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (unbox _e30530_)
                            _marks30531_))
                      _e30530_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                _lp30528_)
              _stx30525_
              _marks30526_
              (gx#stx-source _stx30525_)))))
      (lambda _g40548_
        (let ((_g40547_ (length _g40548_)))
          (cond ((fx= _g40547_ 1)
                 (apply (lambda (_stx30541_)
                          (let ((_marks30543_ '()))
                            (_opt-lambda3052330538_ _stx30541_ _marks30543_)))
                        _g40548_))
                ((fx= _g40547_ 2)
                 (apply (lambda (_stx30545_ _marks30546_)
                          (_opt-lambda3052330538_ _stx30545_ _marks30546_))
                        _g40548_))
                (else (error "No clause matching arguments" _g40548_)))))))
  (define gx#stx-wrap
    (lambda (_stx30518_ _marks30519_)
      (foldl (lambda (_mark30521_ _stx30522_)
               (gx#stx-apply-mark _stx30522_ _mark30521_))
             _stx30518_
             _marks30519_)))
  (define gx#stx-rewrap
    (lambda (_stx30512_ _marks30513_)
      (foldr (lambda (_mark30515_ _stx30516_)
               (gx#stx-apply-mark _stx30516_ _mark30515_))
             _stx30512_
             _marks30513_)))
  (define gx#stx-apply-mark
    (lambda (_stx30509_ _mark30510_)
      (if (gx#syntax-quote? _stx30509_)
          _stx30509_
          (if (if (gx#syntax-wrap? _stx30509_)
                  (eq? _mark30510_ (gx#syntax-wrap-mark _stx30509_))
                  '#f)
              (AST-e _stx30509_)
              (gx#make-syntax-wrap
               _stx30509_
               (gx#stx-source _stx30509_)
               _mark30510_)))))
  (define gx#apply-mark
    (lambda (_mark30473_ _marks30474_)
      (let ((_marks3047530483_ _marks30474_))
        (let ((_E3047830487_
               (lambda () (error '"No clause matching" _marks3047530483_))))
          (let ((_else3047730491_ (lambda () (cons _mark30473_ _marks30474_))))
            (let ((_K3047930497_
                   (lambda (_rest30494_ _hd30495_)
                     (if (eq? _mark30473_ _hd30495_)
                         _rest30494_
                         (cons _mark30473_ _marks30474_)))))
              (if (##pair? _marks3047530483_)
                  (let ((_hd3048030500_ (##car _marks3047530483_))
                        (_tl3048130502_ (##cdr _marks3047530483_)))
                    (let ((_hd30505_ _hd3048030500_))
                      (let ((_rest30507_ _tl3048130502_))
                        (_K3047930497_ _rest30507_ _hd30505_))))
                  (_else3047730491_))))))))
  (define gx#stx-e
    (lambda (_stx30471_)
      (if (AST? _stx30471_) (gx#stx-e (AST-e _stx30471_)) _stx30471_)))
  (define gx#stx-source
    (lambda (_stx30469_) (if (AST? _stx30469_) (AST-source _stx30469_) '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx30463_ _src30464_)
      (if (let ((_$e30466_ (AST? _stx30463_)))
            (if _$e30466_ _$e30466_ (not _src30464_)))
          _stx30463_
          (make-AST _stx30463_ _src30464_))))
  (define gx#stx-datum?
    (lambda (_stx30461_) (gx#self-quoting? (gx#stx-e _stx30461_))))
  (define gx#self-quoting?
    (lambda (_x30441_)
      (let ((_$e30443_ (boolean? _x30441_)))
        (if _$e30443_
            _$e30443_
            (let ((_$e30446_ (char? _x30441_)))
              (if _$e30446_
                  _$e30446_
                  (let ((_$e30449_ (number? _x30441_)))
                    (if _$e30449_
                        _$e30449_
                        (let ((_$e30452_ (keyword? _x30441_)))
                          (if _$e30452_
                              _$e30452_
                              (let ((_$e30455_ (string? _x30441_)))
                                (if _$e30455_
                                    _$e30455_
                                    (let ((_$e30458_ (void? _x30441_)))
                                      (if _$e30458_
                                          _$e30458_
                                          (dssl-object? _x30441_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e30439_) (boolean? (gx#stx-e _e30439_))))
  (define gx#stx-keyword? (lambda (_e30437_) (keyword? (gx#stx-e _e30437_))))
  (define gx#stx-char? (lambda (_e30435_) (char? (gx#stx-e _e30435_))))
  (define gx#stx-number? (lambda (_e30433_) (number? (gx#stx-e _e30433_))))
  (define gx#stx-fixnum? (lambda (_e30431_) (fixnum? (gx#stx-e _e30431_))))
  (define gx#stx-string? (lambda (_e30429_) (string? (gx#stx-e _e30429_))))
  (define gx#stx-null? (lambda (_e30427_) (null? (gx#stx-e _e30427_))))
  (define gx#stx-pair? (lambda (_e30425_) (pair? (gx#stx-e _e30425_))))
  (define gx#stx-list?
    (lambda (_e30385_)
      (let ((_g3038630395_ (gx#stx-e _e30385_)))
        (let ((_E3038930399_
               (lambda () (error '"No clause matching" _g3038630395_))))
          (let ((_try-match3038830410_
                 (lambda ()
                   (let ((_K3039030405_
                          (lambda (_tail30403_) (null? _tail30403_))))
                     (let ((_tail30408_ _g3038630395_))
                       (_K3039030405_ _tail30408_))))))
            (let ((_K3039130415_
                   (lambda (_rest30413_) (gx#stx-list? _rest30413_))))
              (if (##pair? _g3038630395_)
                  (let ((_hd3039230418_ (##car _g3038630395_))
                        (_tl3039330420_ (##cdr _g3038630395_)))
                    (let ((_rest30423_ _tl3039330420_))
                      (_K3039130415_ _rest30423_)))
                  (_try-match3038830410_))))))))
  (define gx#stx-pair/null?
    (lambda (_e30378_)
      (let ((_e30380_ (gx#stx-e _e30378_)))
        (let ((_$e30382_ (pair? _e30380_)))
          (if _$e30382_ _$e30382_ (null? _e30380_))))))
  (define gx#stx-vector? (lambda (_e30376_) (vector? (gx#stx-e _e30376_))))
  (define gx#stx-box? (lambda (_e30374_) (box? (gx#stx-e _e30374_))))
  (define gx#stx-eq?
    (lambda (_x30371_ _y30372_) (eq? (gx#stx-e _x30371_) (gx#stx-e _y30372_))))
  (define gx#stx-eqv?
    (lambda (_x30368_ _y30369_)
      (eqv? (gx#stx-e _x30368_) (gx#stx-e _y30369_))))
  (define gx#stx-equal?
    (lambda (_x30365_ _y30366_)
      (equal? (gx#stx-e _x30365_) (gx#stx-e _y30366_))))
  (define gx#stx-false? (lambda (_x30363_) (not (gx#stx-e _x30363_))))
  (define gx#stx-identifier
    (lambda (_template30360_ . _args30361_)
      (gx#datum->syntax
       _template30360_
       (apply make-symbol (map gx#stx-e _args30361_))
       (gx#stx-source _template30360_))))
  (define gx#stx-identifier-marks
    (lambda (_stx30356_)
      (let ((_stx30358_ (gx#stx-unwrap _stx30356_)))
        (if (gx#identifier-wrap? _stx30358_)
            (gx#identifier-wrap-marks _stx30358_)
            (gx#syntax-quote-marks _stx30358_)))))
  (define gx#stx-identifier-context
    (lambda (_stx30352_)
      (let ((_stx30354_ (gx#stx-unwrap _stx30352_)))
        (if (gx#identifier-quote? _stx30354_)
            (gx#syntax-quote-context _stx30354_)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx30307_)
      (let ((_g3030830318_ (gx#stx-e _stx30307_)))
        (let ((_E3031230322_
               (lambda () (error '"No clause matching" _g3030830318_))))
          (let ((_else3031130326_ (lambda () '#f)))
            (let ((_try-match3031030334_
                   (lambda ()
                     (let ((_K3031330331_ (lambda () '#t)))
                       (if (##null? _g3030830318_)
                           (_K3031330331_)
                           (_else3031130326_))))))
              (let ((_K3031430340_
                     (lambda (_rest30337_ _hd30338_)
                       (if (gx#identifier? _hd30338_)
                           (gx#identifier-list? _rest30337_)
                           '#f))))
                (if (##pair? _g3030830318_)
                    (let ((_hd3031530343_ (##car _g3030830318_))
                          (_tl3031630345_ (##cdr _g3030830318_)))
                      (let ((_hd30348_ _hd3031530343_))
                        (let ((_rest30350_ _tl3031630345_))
                          (_K3031430340_ _rest30350_ _hd30348_))))
                    (_try-match3031030334_)))))))))
  (define gx#genident
    (let ((_opt-lambda3028230292_
           (lambda (_e30284_ _src30285_)
             (gx#stx-wrap-source
              (gensym (let ((_e30287_ (gx#stx-e _e30284_)))
                        (if (interned-symbol? _e30287_) _e30287_ 'g)))
              (let ((_$e30289_ (gx#stx-source _e30284_)))
                (if _$e30289_ _$e30289_ _src30285_))))))
      (lambda _g40550_
        (let ((_g40549_ (length _g40550_)))
          (cond ((fx= _g40549_ 0)
                 (apply (lambda ()
                          (let ((_e30296_ 'g))
                            (let ((_src30298_ '#f))
                              (_opt-lambda3028230292_ _e30296_ _src30298_))))
                        _g40550_))
                ((fx= _g40549_ 1)
                 (apply (lambda (_e30300_)
                          (let ((_src30302_ '#f))
                            (_opt-lambda3028230292_ _e30300_ _src30302_)))
                        _g40550_))
                ((fx= _g40549_ 2)
                 (apply (lambda (_e30304_ _src30305_)
                          (_opt-lambda3028230292_ _e30304_ _src30305_))
                        _g40550_))
                (else (error "No clause matching arguments" _g40550_)))))))
  (define gx#gentemps
    (lambda (_stx-lst30281_) (gx#stx-map gx#genident _stx-lst30281_)))
  (define gx#syntax->list (lambda (_stx30279_) (gx#stx-map values _stx30279_)))
  (define gx#stx-car (lambda (_stx30277_) (car (gx#syntax-e _stx30277_))))
  (define gx#stx-cdr (lambda (_stx30275_) (cdr (gx#syntax-e _stx30275_))))
  (define gx#stx-length
    (lambda (_stx30238_)
      ((letrec ((_lp30240_
                 (lambda (_rest30242_ _n30243_)
                   (let ((_g3024430252_ (gx#stx-e _rest30242_)))
                     (let ((_E3024730256_
                            (lambda ()
                              (error '"No clause matching" _g3024430252_))))
                       (let ((_else3024630260_ (lambda () _n30243_)))
                         (let ((_K3024830265_
                                (lambda (_rest30263_)
                                  (_lp30240_ _rest30263_ (fx1+ _n30243_)))))
                           (if (##pair? _g3024430252_)
                               (let ((_hd3024930268_ (##car _g3024430252_))
                                     (_tl3025030270_ (##cdr _g3024430252_)))
                                 (let ((_rest30273_ _tl3025030270_))
                                   (_K3024830265_ _rest30273_)))
                               (_else3024630260_)))))))))
         _lp30240_)
       _stx30238_
       '0)))
  (define gx#stx-for-each
    (lambda _g40552_
      (let ((_g40551_ (length _g40552_)))
        (cond ((fx= _g40551_ 2)
               (apply (lambda (_f30231_ _stx30232_)
                        (gx#stx-for-each1 _f30231_ _stx30232_))
                      _g40552_))
              ((fx= _g40551_ 3)
               (apply (lambda (_f30234_ _xstx30235_ _ystx30236_)
                        (gx#stx-for-each2 _f30234_ _xstx30235_ _ystx30236_))
                      _g40552_))
              (else (error "No clause matching arguments" _g40552_))))))
  (define gx#stx-for-each1
    (lambda (_f30181_ _stx30182_)
      ((letrec ((_lp30184_
                 (lambda (_rest30186_)
                   (let ((_g3018730197_ (gx#syntax-e _rest30186_)))
                     (let ((_E3019130201_
                            (lambda ()
                              (error '"No clause matching" _g3018730197_))))
                       (let ((_else3019030205_
                              (lambda () (_f30181_ _rest30186_))))
                         (let ((_try-match3018930213_
                                (lambda ()
                                  (let ((_K3019230210_ (lambda () '#!void)))
                                    (if (##null? _g3018730197_)
                                        (_K3019230210_)
                                        (_else3019030205_))))))
                           (let ((_K3019330219_
                                  (lambda (_rest30216_ _hd30217_)
                                    (begin
                                      (_f30181_ _hd30217_)
                                      (_lp30184_ _rest30216_)))))
                             (if (##pair? _g3018730197_)
                                 (let ((_hd3019430222_ (##car _g3018730197_))
                                       (_tl3019530224_ (##cdr _g3018730197_)))
                                   (let ((_hd30227_ _hd3019430222_))
                                     (let ((_rest30229_ _tl3019530224_))
                                       (_K3019330219_ _rest30229_ _hd30227_))))
                                 (_try-match3018930213_))))))))))
         _lp30184_)
       _stx30182_)))
  (define gx#stx-for-each2
    (lambda (_f30086_ _xstx30087_ _ystx30088_)
      ((letrec ((_lp30090_
                 (lambda (_xrest30092_ _yrest30093_)
                   (let ((_g3009430104_ (gx#syntax-e _xrest30092_)))
                     (let ((_E3009830108_
                            (lambda ()
                              (error '"No clause matching" _g3009430104_))))
                       (let ((_else3009730112_ (lambda () '#!void)))
                         (let ((_try-match3009630135_
                                (lambda ()
                                  (let ((_K3009930132_
                                         (lambda ()
                                           (let ((_yrest3011630121_
                                                  _yrest30093_))
                                             (let ((_E3011830125_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest3011630121_))))
                                               (let ((_K3011930129_
                                                      (lambda ()
                                                        (_f30086_
                                                         _xrest30092_
                                                         _yrest30093_))))
                                                 (if (not (gx#stx-null?
                                                           _yrest3011630121_))
                                                     (_K3011930129_)
                                                     (_E3011830125_))))))))
                                    (if (not (null? _g3009430104_))
                                        (_K3009930132_)
                                        (_else3009730112_))))))
                           (let ((_K3010030169_
                                  (lambda (_xrest30138_ _xhd30139_)
                                    (let ((_g3014030147_
                                           (gx#syntax-e _yrest30093_)))
                                      (let ((_E3014230151_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g3014030147_))))
                                        (let ((_K3014330157_
                                               (lambda (_yrest30154_
                                                        _yhd30155_)
                                                 (begin
                                                   (_f30086_
                                                    _xhd30139_
                                                    _yhd30155_)
                                                   (_lp30090_
                                                    _xrest30138_
                                                    _yrest30154_)))))
                                          (if (##pair? _g3014030147_)
                                              (let ((_hd3014430160_
                                                     (##car _g3014030147_))
                                                    (_tl3014530162_
                                                     (##cdr _g3014030147_)))
                                                (let ((_yhd30165_
                                                       _hd3014430160_))
                                                  (let ((_yrest30167_
                                                         _tl3014530162_))
                                                    (_K3014330157_
                                                     _yrest30167_
                                                     _yhd30165_))))
                                              (_E3014230151_))))))))
                             (if (##pair? _g3009430104_)
                                 (let ((_hd3010130172_ (##car _g3009430104_))
                                       (_tl3010230174_ (##cdr _g3009430104_)))
                                   (let ((_xhd30177_ _hd3010130172_))
                                     (let ((_xrest30179_ _tl3010230174_))
                                       (_K3010030169_
                                        _xrest30179_
                                        _xhd30177_))))
                                 (_try-match3009630135_))))))))))
         _lp30090_)
       _xstx30087_
       _ystx30088_)))
  (define gx#stx-map
    (lambda _g40554_
      (let ((_g40553_ (length _g40554_)))
        (cond ((fx= _g40553_ 2)
               (apply (lambda (_f30079_ _stx30080_)
                        (gx#stx-map1 _f30079_ _stx30080_))
                      _g40554_))
              ((fx= _g40553_ 3)
               (apply (lambda (_f30082_ _xstx30083_ _ystx30084_)
                        (gx#stx-map2 _f30082_ _xstx30083_ _ystx30084_))
                      _g40554_))
              (else (error "No clause matching arguments" _g40554_))))))
  (define gx#stx-map1
    (lambda (_f30029_ _stx30030_)
      ((letrec ((_recur30032_
                 (lambda (_rest30034_)
                   (let ((_g3003530045_ (gx#syntax-e _rest30034_)))
                     (let ((_E3003930049_
                            (lambda ()
                              (error '"No clause matching" _g3003530045_))))
                       (let ((_else3003830053_
                              (lambda () (_f30029_ _rest30034_))))
                         (let ((_try-match3003730061_
                                (lambda ()
                                  (let ((_K3004030058_ (lambda () '())))
                                    (if (##null? _g3003530045_)
                                        (_K3004030058_)
                                        (_else3003830053_))))))
                           (let ((_K3004130067_
                                  (lambda (_rest30064_ _hd30065_)
                                    (cons (_f30029_ _hd30065_)
                                          (_recur30032_ _rest30064_)))))
                             (if (##pair? _g3003530045_)
                                 (let ((_hd3004230070_ (##car _g3003530045_))
                                       (_tl3004330072_ (##cdr _g3003530045_)))
                                   (let ((_hd30075_ _hd3004230070_))
                                     (let ((_rest30077_ _tl3004330072_))
                                       (_K3004130067_ _rest30077_ _hd30075_))))
                                 (_try-match3003730061_))))))))))
         _recur30032_)
       _stx30030_)))
  (define gx#stx-map2
    (lambda (_f29934_ _xstx29935_ _ystx29936_)
      ((letrec ((_recur29938_
                 (lambda (_xrest29940_ _yrest29941_)
                   (let ((_g2994229952_ (gx#syntax-e _xrest29940_)))
                     (let ((_E2994629956_
                            (lambda ()
                              (error '"No clause matching" _g2994229952_))))
                       (let ((_else2994529960_ (lambda () '())))
                         (let ((_try-match2994429983_
                                (lambda ()
                                  (let ((_K2994729980_
                                         (lambda ()
                                           (let ((_yrest2996429969_
                                                  _yrest29941_))
                                             (let ((_E2996629973_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest2996429969_))))
                                               (let ((_K2996729977_
                                                      (lambda ()
                                                        (_f29934_
                                                         _xrest29940_
                                                         _yrest29941_))))
                                                 (if (not (gx#stx-null?
                                                           _yrest2996429969_))
                                                     (_K2996729977_)
                                                     (_E2996629973_))))))))
                                    (if (not (null? _g2994229952_))
                                        (_K2994729980_)
                                        (_else2994529960_))))))
                           (let ((_K2994830017_
                                  (lambda (_xrest29986_ _xhd29987_)
                                    (let ((_g2998829995_
                                           (gx#syntax-e _yrest29941_)))
                                      (let ((_E2999029999_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g2998829995_))))
                                        (let ((_K2999130005_
                                               (lambda (_yrest30002_
                                                        _yhd30003_)
                                                 (cons (_f29934_
                                                        _xhd29987_
                                                        _yhd30003_)
                                                       (_recur29938_
                                                        _xrest29986_
                                                        _yrest30002_)))))
                                          (if (##pair? _g2998829995_)
                                              (let ((_hd2999230008_
                                                     (##car _g2998829995_))
                                                    (_tl2999330010_
                                                     (##cdr _g2998829995_)))
                                                (let ((_yhd30013_
                                                       _hd2999230008_))
                                                  (let ((_yrest30015_
                                                         _tl2999330010_))
                                                    (_K2999130005_
                                                     _yrest30015_
                                                     _yhd30013_))))
                                              (_E2999029999_))))))))
                             (if (##pair? _g2994229952_)
                                 (let ((_hd2994930020_ (##car _g2994229952_))
                                       (_tl2995030022_ (##cdr _g2994229952_)))
                                   (let ((_xhd30025_ _hd2994930020_))
                                     (let ((_xrest30027_ _tl2995030022_))
                                       (_K2994830017_
                                        _xrest30027_
                                        _xhd30025_))))
                                 (_try-match2994429983_))))))))))
         _recur29938_)
       _xstx29935_
       _ystx29936_)))
  (define gx#stx-andmap
    (lambda (_f29884_ _stx29885_)
      ((letrec ((_lp29887_
                 (lambda (_rest29889_)
                   (let ((_g2989029900_ (gx#syntax-e _rest29889_)))
                     (let ((_E2989429904_
                            (lambda ()
                              (error '"No clause matching" _g2989029900_))))
                       (let ((_else2989329908_
                              (lambda () (_f29884_ _rest29889_))))
                         (let ((_try-match2989229916_
                                (lambda ()
                                  (let ((_K2989529913_ (lambda () '#t)))
                                    (if (##null? _g2989029900_)
                                        (_K2989529913_)
                                        (_else2989329908_))))))
                           (let ((_K2989629922_
                                  (lambda (_rest29919_ _hd29920_)
                                    (if (_f29884_ _hd29920_)
                                        (_lp29887_ _rest29919_)
                                        '#f))))
                             (if (##pair? _g2989029900_)
                                 (let ((_hd2989729925_ (##car _g2989029900_))
                                       (_tl2989829927_ (##cdr _g2989029900_)))
                                   (let ((_hd29930_ _hd2989729925_))
                                     (let ((_rest29932_ _tl2989829927_))
                                       (_K2989629922_ _rest29932_ _hd29930_))))
                                 (_try-match2989229916_))))))))))
         _lp29887_)
       _stx29885_)))
  (define gx#stx-ormap
    (lambda (_f29831_ _stx29832_)
      ((letrec ((_lp29834_
                 (lambda (_rest29836_)
                   (let ((_g2983729847_ (gx#syntax-e _rest29836_)))
                     (let ((_E2984129851_
                            (lambda ()
                              (error '"No clause matching" _g2983729847_))))
                       (let ((_else2984029855_
                              (lambda () (_f29831_ _rest29836_))))
                         (let ((_try-match2983929863_
                                (lambda ()
                                  (let ((_K2984229860_ (lambda () '#f)))
                                    (if (##null? _g2983729847_)
                                        (_K2984229860_)
                                        (_else2984029855_))))))
                           (let ((_K2984329872_
                                  (lambda (_rest29866_ _hd29867_)
                                    (let ((_$e29869_ (_f29831_ _hd29867_)))
                                      (if _$e29869_
                                          _$e29869_
                                          (_lp29834_ _rest29866_))))))
                             (if (##pair? _g2983729847_)
                                 (let ((_hd2984429875_ (##car _g2983729847_))
                                       (_tl2984529877_ (##cdr _g2983729847_)))
                                   (let ((_hd29880_ _hd2984429875_))
                                     (let ((_rest29882_ _tl2984529877_))
                                       (_K2984329872_ _rest29882_ _hd29880_))))
                                 (_try-match2983929863_))))))))))
         _lp29834_)
       _stx29832_)))
  (define gx#stx-foldl
    (lambda (_f29779_ _iv29780_ _stx29781_)
      ((letrec ((_lp29783_
                 (lambda (_r29785_ _rest29786_)
                   (let ((_g2978729797_ (gx#syntax-e _rest29786_)))
                     (let ((_E2979129801_
                            (lambda ()
                              (error '"No clause matching" _g2978729797_))))
                       (let ((_else2979029805_
                              (lambda () (_f29779_ _rest29786_ _r29785_))))
                         (let ((_try-match2978929813_
                                (lambda ()
                                  (let ((_K2979229810_ (lambda () _r29785_)))
                                    (if (##null? _g2978729797_)
                                        (_K2979229810_)
                                        (_else2979029805_))))))
                           (let ((_K2979329819_
                                  (lambda (_rest29816_ _hd29817_)
                                    (_lp29783_
                                     (_f29779_ _hd29817_ _r29785_)
                                     _rest29816_))))
                             (if (##pair? _g2978729797_)
                                 (let ((_hd2979429822_ (##car _g2978729797_))
                                       (_tl2979529824_ (##cdr _g2978729797_)))
                                   (let ((_hd29827_ _hd2979429822_))
                                     (let ((_rest29829_ _tl2979529824_))
                                       (_K2979329819_ _rest29829_ _hd29827_))))
                                 (_try-match2978929813_))))))))))
         _lp29783_)
       _iv29780_
       _stx29781_)))
  (define gx#stx-foldr
    (lambda (_f29728_ _iv29729_ _stx29730_)
      ((letrec ((_recur29732_
                 (lambda (_rest29734_)
                   (let ((_g2973529745_ (gx#syntax-e _rest29734_)))
                     (let ((_E2973929749_
                            (lambda ()
                              (error '"No clause matching" _g2973529745_))))
                       (let ((_else2973829753_
                              (lambda () (_f29728_ _rest29734_ _iv29729_))))
                         (let ((_try-match2973729761_
                                (lambda ()
                                  (let ((_K2974029758_ (lambda () _iv29729_)))
                                    (if (##null? _g2973529745_)
                                        (_K2974029758_)
                                        (_else2973829753_))))))
                           (let ((_K2974129767_
                                  (lambda (_rest29764_ _hd29765_)
                                    (_f29728_
                                     _hd29765_
                                     (_recur29732_ _rest29764_)))))
                             (if (##pair? _g2973529745_)
                                 (let ((_hd2974229770_ (##car _g2973529745_))
                                       (_tl2974329772_ (##cdr _g2973529745_)))
                                   (let ((_hd29775_ _hd2974229770_))
                                     (let ((_rest29777_ _tl2974329772_))
                                       (_K2974129767_ _rest29777_ _hd29775_))))
                                 (_try-match2973729761_))))))))))
         _recur29732_)
       _stx29730_)))
  (define gx#stx-reverse
    (lambda (_stx29726_) (gx#stx-foldl cons '() _stx29726_)))
  (define gx#stx-last
    (lambda (_stx29687_)
      ((letrec ((_lp29689_
                 (lambda (_rest29691_)
                   (let ((_g2969229700_ (gx#syntax-e _rest29691_)))
                     (let ((_E2969529704_
                            (lambda ()
                              (error '"No clause matching" _g2969229700_))))
                       (let ((_else2969429708_ (lambda () _rest29691_)))
                         (let ((_K2969629714_
                                (lambda (_rest29711_ _hd29712_)
                                  (if (gx#stx-null? _rest29711_)
                                      _hd29712_
                                      (_lp29689_ _rest29711_)))))
                           (if (##pair? _g2969229700_)
                               (let ((_hd2969729717_ (##car _g2969229700_))
                                     (_tl2969829719_ (##cdr _g2969229700_)))
                                 (let ((_hd29722_ _hd2969729717_))
                                   (let ((_rest29724_ _tl2969829719_))
                                     (_K2969629714_ _rest29724_ _hd29722_))))
                               (_else2969429708_)))))))))
         _lp29689_)
       _stx29687_)))
  (define gx#stx-last-pair
    (lambda (_stx29656_)
      ((letrec ((_lp29658_
                 (lambda (_hd29660_)
                   (let ((_g2966129668_ (gx#syntax-e _hd29660_)))
                     (let ((_E2966329672_
                            (lambda ()
                              (error '"No clause matching" _g2966129668_))))
                       (let ((_K2966429677_
                              (lambda (_rest29675_)
                                (if (gx#stx-pair? _rest29675_)
                                    (_lp29658_ _rest29675_)
                                    _hd29660_))))
                         (if (##pair? _g2966129668_)
                             (let ((_hd2966529680_ (##car _g2966129668_))
                                   (_tl2966629682_ (##cdr _g2966129668_)))
                               (let ((_rest29685_ _tl2966629682_))
                                 (_K2966429677_ _rest29685_)))
                             (_E2966329672_))))))))
         _lp29658_)
       _stx29656_)))
  (define gx#stx-list-tail
    (lambda (_stx29623_ _k29624_)
      ((letrec ((_lp29626_
                 (lambda (_rest29628_ _k29629_)
                   (if (fxpositive? _k29629_)
                       (let ((_g2963029637_ (gx#syntax-e _rest29628_)))
                         (let ((_E2963229641_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g2963029637_))))
                           (let ((_K2963329646_
                                  (lambda (_rest29644_)
                                    (_lp29626_ _rest29644_ (fx1- _k29629_)))))
                             (if (##pair? _g2963029637_)
                                 (let ((_hd2963429649_ (##car _g2963029637_))
                                       (_tl2963529651_ (##cdr _g2963029637_)))
                                   (let ((_rest29654_ _tl2963529651_))
                                     (_K2963329646_ _rest29654_)))
                                 (_E2963229641_)))))
                       _rest29628_))))
         _lp29626_)
       _stx29623_
       _k29624_)))
  (define gx#stx-list-ref
    (lambda (_stx29620_ _k29621_)
      (gx#stx-car (gx#stx-list-tail _stx29620_ _k29621_))))
  (define gx#stx-plist?
    (let ((_opt-lambda2952829610_
           (lambda (_stx29530_ _key?29531_)
             ((letrec ((_lp29533_
                        (lambda (_rest29535_)
                          (let ((_g2953629546_ (gx#stx-e _rest29535_)))
                            (let ((_E2954029550_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g2953629546_))))
                              (let ((_else2953929554_ (lambda () '#f)))
                                (let ((_try-match2953829562_
                                       (lambda ()
                                         (let ((_K2954129559_ (lambda () '#t)))
                                           (if (##null? _g2953629546_)
                                               (_K2954129559_)
                                               (_else2953929554_))))))
                                  (let ((_K2954229598_
                                         (lambda (_rest29565_ _hd29566_)
                                           (if (_key?29531_ _hd29566_)
                                               (let ((_g2956729575_
                                                      (gx#stx-e _rest29565_)))
                                                 (let ((_E2957029579_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2956729575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_else2956929583_
                                                          (lambda () '#f)))
                                                     (let ((_K2957129588_
                                                            (lambda (_rest29586_)
                                                              (_lp29533_
                                                               _rest29586_))))
                                                       (if (##pair? _g2956729575_)
                                                           (let ((_hd2957229591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##car _g2956729575_))
                         (_tl2957329593_ (##cdr _g2956729575_)))
                     (let ((_rest29596_ _tl2957329593_))
                       (_K2957129588_ _rest29596_)))
                   (_else2956929583_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '#f))))
                                    (if (##pair? _g2953629546_)
                                        (let ((_hd2954329601_
                                               (##car _g2953629546_))
                                              (_tl2954429603_
                                               (##cdr _g2953629546_)))
                                          (let ((_hd29606_ _hd2954329601_))
                                            (let ((_rest29608_ _tl2954429603_))
                                              (_K2954229598_
                                               _rest29608_
                                               _hd29606_))))
                                        (_try-match2953829562_))))))))))
                _lp29533_)
              _stx29530_))))
      (lambda _g40556_
        (let ((_g40555_ (length _g40556_)))
          (cond ((fx= _g40555_ 1)
                 (apply (lambda (_stx29613_)
                          (let ((_key?29615_ gx#stx-keyword?))
                            (_opt-lambda2952829610_ _stx29613_ _key?29615_)))
                        _g40556_))
                ((fx= _g40555_ 2)
                 (apply (lambda (_stx29617_ _key?29618_)
                          (_opt-lambda2952829610_ _stx29617_ _key?29618_))
                        _g40556_))
                (else (error "No clause matching arguments" _g40556_)))))))
  (define gx#stx-getq
    (let ((_opt-lambda2944629517_
           (lambda (_key29448_ _stx29449_ _key=?29450_)
             ((letrec ((_lp29452_
                        (lambda (_rest29454_)
                          (let ((_g2945529463_ (gx#syntax-e _rest29454_)))
                            (let ((_E2945829467_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g2945529463_))))
                              (let ((_else2945729471_ (lambda () '#f)))
                                (let ((_K2945929505_
                                       (lambda (_rest29474_ _hd29475_)
                                         (let ((_g2947629483_
                                                (gx#syntax-e _rest29474_)))
                                           (let ((_E2947829487_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _g2947629483_))))
                                             (let ((_K2947929493_
                                                    (lambda (_rest29490_
                                                             _val29491_)
                                                      (if (_key=?29450_
                                                           _hd29475_
                                                           _key29448_)
                                                          _val29491_
                                                          (_lp29452_
                                                           _rest29490_)))))
                                               (if (##pair? _g2947629483_)
                                                   (let ((_hd2948029496_
                                                          (##car _g2947629483_))
                                                         (_tl2948129498_
                                                          (##cdr _g2947629483_)))
                                                     (let ((_val29501_
                                                            _hd2948029496_))
                                                       (let ((_rest29503_
                                                              _tl2948129498_))
                                                         (_K2947929493_
                                                          _rest29503_
                                                          _val29501_))))
                                                   (_E2947829487_))))))))
                                  (if (##pair? _g2945529463_)
                                      (let ((_hd2946029508_
                                             (##car _g2945529463_))
                                            (_tl2946129510_
                                             (##cdr _g2945529463_)))
                                        (let ((_hd29513_ _hd2946029508_))
                                          (let ((_rest29515_ _tl2946129510_))
                                            (_K2945929505_
                                             _rest29515_
                                             _hd29513_))))
                                      (_else2945729471_)))))))))
                _lp29452_)
              _stx29449_))))
      (lambda _g40558_
        (let ((_g40557_ (length _g40558_)))
          (cond ((fx= _g40557_ 2)
                 (apply (lambda (_key29520_ _stx29521_)
                          (let ((_key=?29523_ gx#stx-eq?))
                            (_opt-lambda2944629517_
                             _key29520_
                             _stx29521_
                             _key=?29523_)))
                        _g40558_))
                ((fx= _g40557_ 3)
                 (apply (lambda (_key29525_ _stx29526_ _key=?29527_)
                          (_opt-lambda2944629517_
                           _key29525_
                           _stx29526_
                           _key=?29527_))
                        _g40558_))
                (else (error "No clause matching arguments" _g40558_))))))))
