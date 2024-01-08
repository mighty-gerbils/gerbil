(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1704735467)
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
      (lambda _$args14687_
        (apply make-class-instance SyntaxError::t _$args14687_)))
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
      (lambda (_self14590_ _port14591_)
        (letrec ((_location14593_
                  (lambda ()
                    (let _lp14647_ ((_rest14649_
                                     (slot-ref _self14590_ 'irritants)))
                      (let* ((_rest1465014658_ _rest14649_)
                             (_else1465214666_ (lambda () '#f))
                             (_K1465414675_
                              (lambda (_rest14669_ _hd14670_)
                                (let ((_$e14672_ (__AST-source _hd14670_)))
                                  (if _$e14672_
                                      _$e14672_
                                      (_lp14647_ _rest14669_))))))
                        (if (##pair? _rest1465014658_)
                            (let ((_hd1465514678_ (##car _rest1465014658_))
                                  (_tl1465614680_ (##cdr _rest1465014658_)))
                              (let* ((_hd14683_ _hd1465514678_)
                                     (_rest14685_ _tl1465614680_))
                                (_K1465414675_ _rest14685_ _hd14683_)))
                            (_else1465214666_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14596_ (_location14593_)))
               (if _$e14596_
                   ((lambda (_where14599_)
                      (##display-locat _where14599_ '#t (current-output-port)))
                    _$e14596_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14601_ (slot-ref _self14590_ 'where)))
               (if _$e14601_
                   ((lambda (_where14604_)
                      (displayln
                       '" at "
                       _where14604_
                       '": "
                       (slot-ref _self14590_ 'message)))
                    _$e14601_)
                   (displayln '": " (slot-ref _self14590_ 'message))))
             (let* ((_g1460514613_ (slot-ref _self14590_ 'irritants))
                    (_else1460714621_ (lambda () '#!void))
                    (_K1460914634_
                     (lambda (_rest14624_ _stx14625_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14625_)
                       (for-each
                        (lambda (_detail14627_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14627_))
                          (let ((_$e14629_ (__AST-source _detail14627_)))
                            (if _$e14629_
                                ((lambda (_loc14632_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14632_
                                    '#t
                                    (current-output-port)))
                                 _$e14629_)
                                '#!void))
                          (newline))
                        _rest14624_))))
               (if (##pair? _g1460514613_)
                   (let ((_hd1461014637_ (##car _g1460514613_))
                         (_tl1461114639_ (##cdr _g1460514613_)))
                     (let* ((_stx14642_ _hd1461014637_)
                            (_rest14644_ _tl1461114639_))
                       (_K1460914634_ _rest14644_ _stx14642_)))
                   '#!void)))
           current-output-port
           _port14591_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14461_
               _irritants14462_
               _where14463_
               _context14464_
               _marks14465_
               _phi14466_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14461_
         'irritants:
         _irritants14462_
         'where:
         _where14463_
         'context:
         _context14464_
         'marks:
         _marks14465_
         'phi:
         _phi14466_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14456_ _message14457_ _stx14458_ . _details14459_)
        (raise (make-syntax-error
                _message14457_
                (cons _stx14458_ _details14459_)
                _where14456_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14453_ (apply make-struct-instance AST::t _$args14453_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14451_)
        (if (##structure-instance-of? _stx14451_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14451_ '1 AST::t '#f)
            _stx14451_)))
    (define __AST-source
      (lambda (_stx14445_)
        (let _lp14447_ ((_src14449_ _stx14445_))
          (if (##structure-instance-of? _src14449_ 'gerbil#AST::t)
              (_lp14447_ (##unchecked-structure-ref _src14449_ '2 AST::t '#f))
              (if (##locat? _src14449_) _src14449_ '#f)))))
    (define __AST
      (lambda (_e14437_ _src-stx14438_)
        (let ((_src14440_ (__AST-source _src-stx14438_)))
          (if (or (##structure-instance-of? _e14437_ 'gerbil#AST::t)
                  (not _src14440_))
              _e14437_
              (##structure AST::t _e14437_ _src14440_)))))
    (define __AST-eq?
      (lambda (_stx14434_ _obj14435_) (eq? (__AST-e _stx14434_) _obj14435_)))
    (define __AST-pair? (lambda (_stx14432_) (pair? (__AST-e _stx14432_))))
    (define __AST-null? (lambda (_stx14430_) (null? (__AST-e _stx14430_))))
    (define __AST-datum?
      (lambda (_stx14411_)
        (let* ((_e14413_ (__AST-e _stx14411_)) (_$e14415_ (number? _e14413_)))
          (if _$e14415_
              _$e14415_
              (let ((_$e14418_ (string? _e14413_)))
                (if _$e14418_
                    _$e14418_
                    (let ((_$e14421_ (char? _e14413_)))
                      (if _$e14421_
                          _$e14421_
                          (let ((_$e14424_ (keyword? _e14413_)))
                            (if _$e14424_
                                _$e14424_
                                (let ((_$e14427_ (boolean? _e14413_)))
                                  (if _$e14427_
                                      _$e14427_
                                      (eq? _e14413_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14409_) (symbol? (__AST-e _stx14409_))))
    (define __AST-id-list?__%
      (lambda (_stx14360_ _tail?14361_)
        (let _lp14363_ ((_rest14365_ _stx14360_))
          (let* ((_$e14367_ _rest14365_)
                 (_$E1436914382_
                  (lambda ()
                    (let* ((_$E1437014377_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e14367_)))
                           (_rest14380_ _$e14367_))
                      (_tail?14361_ _rest14380_)))))
            (if (__AST-pair? _$e14367_)
                (let* ((_$tgt1437114385_ (__AST-e _$e14367_))
                       (_$hd1437214388_ (##car _$tgt1437114385_))
                       (_$tl1437314391_ (##cdr _$tgt1437114385_)))
                  (let* ((_hd14395_ _$hd1437214388_)
                         (_rest14397_ _$tl1437314391_))
                    (if (__AST-id? _hd14395_) (_lp14363_ _rest14397_) '#f)))
                (_$E1436914382_))))))
    (define __AST-id-list?__0
      (lambda (_stx14402_)
        (let ((_tail?14404_ __AST-null?))
          (__AST-id-list?__% _stx14402_ _tail?14404_))))
    (define __AST-id-list?
      (lambda _g14782_
        (let ((_g14781_ (##length _g14782_)))
          (cond ((##fx= _g14781_ 1)
                 (apply (lambda (_stx14402_) (__AST-id-list?__0 _stx14402_))
                        _g14782_))
                ((##fx= _g14781_ 2)
                 (apply (lambda (_stx14406_ _tail?14407_)
                          (__AST-id-list?__% _stx14406_ _tail?14407_))
                        _g14782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14782_))))))
    (define __AST-bind-list?
      (lambda (_stx14352_)
        (__AST-id-list?__%
         _stx14352_
         (lambda (_e14354_)
           (let ((_$e14356_ (__AST-null? _e14354_)))
             (if _$e14356_ _$e14356_ (__AST-id? _e14354_)))))))
    (define __AST-list?__%
      (lambda (_stx14305_ _tail?14306_)
        (let _lp14308_ ((_rest14310_ _stx14305_))
          (let* ((_$e14312_ _rest14310_)
                 (_$E1431414327_
                  (lambda ()
                    (let* ((_$E1431514322_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e14312_)))
                           (_rest14325_ _$e14312_))
                      (_tail?14306_ _rest14325_)))))
            (if (__AST-pair? _$e14312_)
                (let* ((_$tgt1431614330_ (__AST-e _$e14312_))
                       (_$hd1431714333_ (##car _$tgt1431614330_))
                       (_$tl1431814336_ (##cdr _$tgt1431614330_)))
                  (let ((_rest14340_ _$tl1431814336_))
                    (_lp14308_ _rest14340_)))
                (_$E1431414327_))))))
    (define __AST-list?__0
      (lambda (_stx14345_)
        (let ((_tail?14347_ __AST-null?))
          (__AST-list?__% _stx14345_ _tail?14347_))))
    (define __AST-list?
      (lambda _g14784_
        (let ((_g14783_ (##length _g14784_)))
          (cond ((##fx= _g14783_ 1)
                 (apply (lambda (_stx14345_) (__AST-list?__0 _stx14345_))
                        _g14784_))
                ((##fx= _g14783_ 2)
                 (apply (lambda (_stx14349_ _tail?14350_)
                          (__AST-list?__% _stx14349_ _tail?14350_))
                        _g14784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14784_))))))
    (define __AST->list
      (lambda (_stx14270_)
        (let* ((_$e14272_ _stx14270_)
               (_$E1427414287_
                (lambda ()
                  (let* ((_$E1427514282_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e14272_)))
                         (_rest14285_ _$e14272_))
                    (__AST-e _rest14285_)))))
          (if (__AST-pair? _$e14272_)
              (let* ((_$tgt1427614290_ (__AST-e _$e14272_))
                     (_$hd1427714293_ (##car _$tgt1427614290_))
                     (_$tl1427814296_ (##cdr _$tgt1427614290_)))
                (let* ((_hd14300_ _$hd1427714293_)
                       (_rest14302_ _$tl1427814296_))
                  (cons _hd14300_ (__AST->list _rest14302_))))
              (_$E1427414287_)))))
    (define __AST->datum
      (lambda (_stx14268_)
        (if (##structure-instance-of? _stx14268_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14268_))
            (if (pair? _stx14268_)
                (cons (__AST->datum (car _stx14268_))
                      (__AST->datum (cdr _stx14268_)))
                (if (vector? _stx14268_)
                    (vector-map __AST->datum _stx14268_)
                    (if (box? _stx14268_)
                        (box (__AST->datum (unbox _stx14268_)))
                        _stx14268_))))))
    (define get-readenv
      (lambda (_port14266_)
        (##make-readenv
         _port14266_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14254_)
        (let ((_e14256_ (##read-datum-or-eof (get-readenv _in14254_))))
          (if (eof-object? (__AST-e _e14256_)) (__AST-e _e14256_) _e14256_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14262_ (current-input-port))) (read-syntax__% _in14262_))))
    (define read-syntax
      (lambda _g14786_
        (let ((_g14785_ (##length _g14786_)))
          (cond ((##fx= _g14785_ 0)
                 (apply (lambda () (read-syntax__0)) _g14786_))
                ((##fx= _g14785_ 1)
                 (apply (lambda (_in14264_) (read-syntax__% _in14264_))
                        _g14786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14786_))))))
    (define read-syntax-from-file
      (lambda (_path14249_)
        (let ((_r14251_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14249_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14251_)
              (cdr (__AST-e (vector-ref _r14251_ '1)))
              (error (err-code->string _r14251_) _path14249_)))))
    (define __wrap-syntax
      (lambda (_re14246_ _e14247_)
        (if (eof-object? _e14247_)
            _e14247_
            (##structure AST::t _e14247_ (##readenv->locat _re14246_)))))
    (define __unwrap-syntax (lambda (_re14243_ _e14244_) (__AST-e _e14244_)))
    (define __pp-syntax (lambda (_stx14241_) (pp (__AST->datum _stx14241_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14239_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14239_ '#t)
          (macro-readtable-bracket-handler-set! _rt14239_ '@list)
          (macro-readtable-brace-handler-set! _rt14239_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14239_
           '#\!
           __read-sharp-bang)
          _rt14239_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14235_ _kw14236_)
        (macro-readtable-bracket-handler-set! _rt14235_ _kw14236_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14232_ _kw14233_)
        (macro-readtable-brace-handler-set! _rt14232_ _kw14233_)))
    (define __read-sharp-bang
      (lambda (_re14223_ _next14224_ _start-pos14225_)
        (if (eq? _start-pos14225_ '0)
            (let* ((_line14227_
                    (##read-line
                     (macro-readenv-port _re14223_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14229_
                    (substring _line14227_ '1 (string-length _line14227_))))
              (macro-readenv-script-line-set! _re14223_ _script-line14229_)
              (##script-marker))
            (##read-sharp-bang _re14223_ _next14224_ _start-pos14225_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14221_)
        (if (source-location? _obj14221_)
            (string? (##locat-container _obj14221_))
            '#f)))
    (define source-location-path
      (lambda (_obj14219_)
        (if (##locat? _obj14219_)
            (##container->path (##locat-container _obj14219_))
            '#f)))))
