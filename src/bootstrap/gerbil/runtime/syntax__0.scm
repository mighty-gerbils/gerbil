(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1695337676)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       (cons Exception::t '())
       '(message irritants where context phi marks)
       'SyntaxError
       '((final: . #t))
       '#f))
    (define SyntaxError? (make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _$args14657_
        (apply make-class-instance SyntaxError::t _$args14657_)))
    (define SyntaxError-message
      (make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where (make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks (make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-message-set!
      (make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set! (make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (make-class-slot-mutator SyntaxError::t 'marks))
    (define &SyntaxError-message
      (make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-message-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define SyntaxError::display-exception
      (lambda (_self14560_ _port14561_)
        (letrec ((_location14563_
                  (lambda ()
                    (let _lp14617_ ((_rest14619_
                                     (slot-ref _self14560_ 'irritants)))
                      (let* ((_rest1462014628_ _rest14619_)
                             (_else1462214636_ (lambda () '#f))
                             (_K1462414645_
                              (lambda (_rest14639_ _hd14640_)
                                (let ((_$e14642_ (__AST-source _hd14640_)))
                                  (if _$e14642_
                                      _$e14642_
                                      (_lp14617_ _rest14639_))))))
                        (if (##pair? _rest1462014628_)
                            (let ((_hd1462514648_ (##car _rest1462014628_))
                                  (_tl1462614650_ (##cdr _rest1462014628_)))
                              (let* ((_hd14653_ _hd1462514648_)
                                     (_rest14655_ _tl1462614650_))
                                (_K1462414645_ _rest14655_ _hd14653_)))
                            (_else1462214636_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14566_ (_location14563_)))
               (if _$e14566_
                   ((lambda (_where14569_)
                      (##display-locat _where14569_ '#t (current-output-port)))
                    _$e14566_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14571_ (slot-ref _self14560_ 'where)))
               (if _$e14571_
                   ((lambda (_where14574_)
                      (displayln
                       '" at "
                       _where14574_
                       '": "
                       (slot-ref _self14560_ 'message)))
                    _$e14571_)
                   (displayln '": " (slot-ref _self14560_ 'message))))
             (let* ((_g1457514583_ (slot-ref _self14560_ 'irritants))
                    (_else1457714591_ (lambda () '#!void))
                    (_K1457914604_
                     (lambda (_rest14594_ _stx14595_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14595_)
                       (for-each
                        (lambda (_detail14597_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14597_))
                          (let ((_$e14599_ (__AST-source _detail14597_)))
                            (if _$e14599_
                                ((lambda (_loc14602_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14602_
                                    '#t
                                    (current-output-port)))
                                 _$e14599_)
                                '#!void))
                          (newline))
                        _rest14594_))))
               (if (##pair? _g1457514583_)
                   (let ((_hd1458014607_ (##car _g1457514583_))
                         (_tl1458114609_ (##cdr _g1457514583_)))
                     (let* ((_stx14612_ _hd1458014607_)
                            (_rest14614_ _tl1458114609_))
                       (_K1457914604_ _rest14614_ _stx14612_)))
                   '#!void)))
           current-output-port
           _port14561_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14431_
               _irritants14432_
               _where14433_
               _context14434_
               _marks14435_
               _phi14436_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14431_
         'irritants:
         _irritants14432_
         'where:
         _where14433_
         'context:
         _context14434_
         'marks:
         _marks14435_
         'phi:
         _phi14436_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14426_ _message14427_ _stx14428_ . _details14429_)
        (raise (make-syntax-error
                _message14427_
                (cons _stx14428_ _details14429_)
                _where14426_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14423_ (apply make-struct-instance AST::t _$args14423_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14421_)
        (if (##structure-instance-of? _stx14421_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14421_ '1 AST::t '#f)
            _stx14421_)))
    (define __AST-source
      (lambda (_stx14415_)
        (let _lp14417_ ((_src14419_ _stx14415_))
          (if (##structure-instance-of? _src14419_ 'gerbil#AST::t)
              (_lp14417_ (##unchecked-structure-ref _src14419_ '2 AST::t '#f))
              (if (##locat? _src14419_) _src14419_ '#f)))))
    (define __AST
      (lambda (_e14407_ _src-stx14408_)
        (let ((_src14410_ (__AST-source _src-stx14408_)))
          (if (or (##structure-instance-of? _e14407_ 'gerbil#AST::t)
                  (not _src14410_))
              _e14407_
              (##structure AST::t _e14407_ _src14410_)))))
    (define __AST-eq?
      (lambda (_stx14404_ _obj14405_) (eq? (__AST-e _stx14404_) _obj14405_)))
    (define __AST-pair? (lambda (_stx14402_) (pair? (__AST-e _stx14402_))))
    (define __AST-null? (lambda (_stx14400_) (null? (__AST-e _stx14400_))))
    (define __AST-datum?
      (lambda (_stx14381_)
        (let* ((_e14383_ (__AST-e _stx14381_)) (_$e14385_ (number? _e14383_)))
          (if _$e14385_
              _$e14385_
              (let ((_$e14388_ (string? _e14383_)))
                (if _$e14388_
                    _$e14388_
                    (let ((_$e14391_ (char? _e14383_)))
                      (if _$e14391_
                          _$e14391_
                          (let ((_$e14394_ (keyword? _e14383_)))
                            (if _$e14394_
                                _$e14394_
                                (let ((_$e14397_ (boolean? _e14383_)))
                                  (if _$e14397_
                                      _$e14397_
                                      (eq? _e14383_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14379_) (symbol? (__AST-e _stx14379_))))
    (define __AST-id-list?__%
      (lambda (_stx14330_ _tail?14331_)
        (let _lp14333_ ((_rest14335_ _stx14330_))
          (let* ((_$e14337_ _rest14335_)
                 (_$E1433914352_
                  (lambda ()
                    (let* ((_$E1434014347_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14337_)))
                           (_rest14350_ _$e14337_))
                      (_tail?14331_ _rest14350_)))))
            (if (__AST-pair? _$e14337_)
                (let* ((_$tgt1434114355_ (__AST-e _$e14337_))
                       (_$hd1434214358_ (##car _$tgt1434114355_))
                       (_$tl1434314361_ (##cdr _$tgt1434114355_)))
                  (let* ((_hd14365_ _$hd1434214358_)
                         (_rest14367_ _$tl1434314361_))
                    (if (__AST-id? _hd14365_) (_lp14333_ _rest14367_) '#f)))
                (_$E1433914352_))))))
    (define __AST-id-list?__0
      (lambda (_stx14372_)
        (let ((_tail?14374_ __AST-null?))
          (__AST-id-list?__% _stx14372_ _tail?14374_))))
    (define __AST-id-list?
      (lambda _g14752_
        (let ((_g14751_ (##length _g14752_)))
          (cond ((##fx= _g14751_ 1)
                 (apply (lambda (_stx14372_) (__AST-id-list?__0 _stx14372_))
                        _g14752_))
                ((##fx= _g14751_ 2)
                 (apply (lambda (_stx14376_ _tail?14377_)
                          (__AST-id-list?__% _stx14376_ _tail?14377_))
                        _g14752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14752_))))))
    (define __AST-bind-list?
      (lambda (_stx14322_)
        (__AST-id-list?__%
         _stx14322_
         (lambda (_e14324_)
           (let ((_$e14326_ (__AST-null? _e14324_)))
             (if _$e14326_ _$e14326_ (__AST-id? _e14324_)))))))
    (define __AST-list?__%
      (lambda (_stx14275_ _tail?14276_)
        (let _lp14278_ ((_rest14280_ _stx14275_))
          (let* ((_$e14282_ _rest14280_)
                 (_$E1428414297_
                  (lambda ()
                    (let* ((_$E1428514292_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14282_)))
                           (_rest14295_ _$e14282_))
                      (_tail?14276_ _rest14295_)))))
            (if (__AST-pair? _$e14282_)
                (let* ((_$tgt1428614300_ (__AST-e _$e14282_))
                       (_$hd1428714303_ (##car _$tgt1428614300_))
                       (_$tl1428814306_ (##cdr _$tgt1428614300_)))
                  (let ((_rest14310_ _$tl1428814306_))
                    (_lp14278_ _rest14310_)))
                (_$E1428414297_))))))
    (define __AST-list?__0
      (lambda (_stx14315_)
        (let ((_tail?14317_ __AST-null?))
          (__AST-list?__% _stx14315_ _tail?14317_))))
    (define __AST-list?
      (lambda _g14754_
        (let ((_g14753_ (##length _g14754_)))
          (cond ((##fx= _g14753_ 1)
                 (apply (lambda (_stx14315_) (__AST-list?__0 _stx14315_))
                        _g14754_))
                ((##fx= _g14753_ 2)
                 (apply (lambda (_stx14319_ _tail?14320_)
                          (__AST-list?__% _stx14319_ _tail?14320_))
                        _g14754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14754_))))))
    (define __AST->list
      (lambda (_stx14240_)
        (let* ((_$e14242_ _stx14240_)
               (_$E1424414257_
                (lambda ()
                  (let* ((_$E1424514252_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _$e14242_)))
                         (_rest14255_ _$e14242_))
                    (__AST-e _rest14255_)))))
          (if (__AST-pair? _$e14242_)
              (let* ((_$tgt1424614260_ (__AST-e _$e14242_))
                     (_$hd1424714263_ (##car _$tgt1424614260_))
                     (_$tl1424814266_ (##cdr _$tgt1424614260_)))
                (let* ((_hd14270_ _$hd1424714263_)
                       (_rest14272_ _$tl1424814266_))
                  (cons _hd14270_ (__AST->list _rest14272_))))
              (_$E1424414257_)))))
    (define __AST->datum
      (lambda (_stx14238_)
        (if (##structure-instance-of? _stx14238_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14238_))
            (if (pair? _stx14238_)
                (cons (__AST->datum (car _stx14238_))
                      (__AST->datum (cdr _stx14238_)))
                (if (vector? _stx14238_)
                    (vector-map __AST->datum _stx14238_)
                    (if (box? _stx14238_)
                        (box (__AST->datum (unbox _stx14238_)))
                        _stx14238_))))))
    (define get-readenv
      (lambda (_port14236_)
        (##make-readenv
         _port14236_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14224_)
        (let ((_e14226_ (##read-datum-or-eof (get-readenv _in14224_))))
          (if (eof-object? (__AST-e _e14226_)) (__AST-e _e14226_) _e14226_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14232_ (current-input-port))) (read-syntax__% _in14232_))))
    (define read-syntax
      (lambda _g14756_
        (let ((_g14755_ (##length _g14756_)))
          (cond ((##fx= _g14755_ 0)
                 (apply (lambda () (read-syntax__0)) _g14756_))
                ((##fx= _g14755_ 1)
                 (apply (lambda (_in14234_) (read-syntax__% _in14234_))
                        _g14756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14756_))))))
    (define read-syntax-from-file
      (lambda (_path14219_)
        (let ((_r14221_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14219_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14221_)
              (cdr (__AST-e (vector-ref _r14221_ '1)))
              (error (err-code->string _r14221_) _path14219_)))))
    (define __wrap-syntax
      (lambda (_re14216_ _e14217_)
        (if (eof-object? _e14217_)
            _e14217_
            (##structure AST::t _e14217_ (##readenv->locat _re14216_)))))
    (define __unwrap-syntax (lambda (_re14213_ _e14214_) (__AST-e _e14214_)))
    (define __pp-syntax (lambda (_stx14211_) (pp (__AST->datum _stx14211_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14209_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14209_ '#t)
          (macro-readtable-bracket-handler-set! _rt14209_ '@list)
          (macro-readtable-brace-handler-set! _rt14209_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14209_
           '#\!
           __read-sharp-bang)
          _rt14209_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14205_ _kw14206_)
        (macro-readtable-bracket-handler-set! _rt14205_ _kw14206_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14202_ _kw14203_)
        (macro-readtable-brace-handler-set! _rt14202_ _kw14203_)))
    (define __read-sharp-bang
      (lambda (_re14193_ _next14194_ _start-pos14195_)
        (if (eq? _start-pos14195_ '0)
            (let* ((_line14197_
                    (##read-line
                     (macro-readenv-port _re14193_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14199_
                    (substring _line14197_ '1 (string-length _line14197_))))
              (macro-readenv-script-line-set! _re14193_ _script-line14199_)
              (##script-marker))
            (##read-sharp-bang _re14193_ _next14194_ _start-pos14195_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14191_)
        (if (source-location? _obj14191_)
            (string? (##locat-container _obj14191_))
            '#f)))
    (define source-location-path
      (lambda (_obj14189_)
        (if (##locat? _obj14189_)
            (##container->path (##locat-container _obj14189_))
            '#f)))))
