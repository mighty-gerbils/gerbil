(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1705947033)
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
      (lambda _$args14685_
        (apply make-class-instance SyntaxError::t _$args14685_)))
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
      (lambda (_self14588_ _port14589_)
        (letrec ((_location14591_
                  (lambda ()
                    (let _lp14645_ ((_rest14647_
                                     (slot-ref _self14588_ 'irritants)))
                      (let* ((_rest1464814656_ _rest14647_)
                             (_else1465014664_ (lambda () '#f))
                             (_K1465214673_
                              (lambda (_rest14667_ _hd14668_)
                                (let ((_$e14670_ (__AST-source _hd14668_)))
                                  (if _$e14670_
                                      _$e14670_
                                      (_lp14645_ _rest14667_))))))
                        (if (##pair? _rest1464814656_)
                            (let ((_hd1465314676_ (##car _rest1464814656_))
                                  (_tl1465414678_ (##cdr _rest1464814656_)))
                              (let* ((_hd14681_ _hd1465314676_)
                                     (_rest14683_ _tl1465414678_))
                                (_K1465214673_ _rest14683_ _hd14681_)))
                            (_else1465014664_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14594_ (_location14591_)))
               (if _$e14594_
                   ((lambda (_where14597_)
                      (##display-locat _where14597_ '#t (current-output-port)))
                    _$e14594_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14599_ (slot-ref _self14588_ 'where)))
               (if _$e14599_
                   ((lambda (_where14602_)
                      (displayln
                       '" at "
                       _where14602_
                       '": "
                       (slot-ref _self14588_ 'message)))
                    _$e14599_)
                   (displayln '": " (slot-ref _self14588_ 'message))))
             (let* ((_g1460314611_ (slot-ref _self14588_ 'irritants))
                    (_else1460514619_ (lambda () '#!void))
                    (_K1460714632_
                     (lambda (_rest14622_ _stx14623_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14623_)
                       (for-each
                        (lambda (_detail14625_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14625_))
                          (let ((_$e14627_ (__AST-source _detail14625_)))
                            (if _$e14627_
                                ((lambda (_loc14630_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14630_
                                    '#t
                                    (current-output-port)))
                                 _$e14627_)
                                '#!void))
                          (newline))
                        _rest14622_))))
               (if (##pair? _g1460314611_)
                   (let ((_hd1460814635_ (##car _g1460314611_))
                         (_tl1460914637_ (##cdr _g1460314611_)))
                     (let* ((_stx14640_ _hd1460814635_)
                            (_rest14642_ _tl1460914637_))
                       (_K1460714632_ _rest14642_ _stx14640_)))
                   '#!void)))
           current-output-port
           _port14589_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14459_
               _irritants14460_
               _where14461_
               _context14462_
               _marks14463_
               _phi14464_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14459_
         'irritants:
         _irritants14460_
         'where:
         _where14461_
         'context:
         _context14462_
         'marks:
         _marks14463_
         'phi:
         _phi14464_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14454_ _message14455_ _stx14456_ . _details14457_)
        (raise (make-syntax-error
                _message14455_
                (cons _stx14456_ _details14457_)
                _where14454_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14451_ (apply make-struct-instance AST::t _$args14451_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14449_)
        (if (##structure-instance-of? _stx14449_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14449_ '1 AST::t '#f)
            _stx14449_)))
    (define __AST-source
      (lambda (_stx14443_)
        (let _lp14445_ ((_src14447_ _stx14443_))
          (if (##structure-instance-of? _src14447_ 'gerbil#AST::t)
              (_lp14445_ (##unchecked-structure-ref _src14447_ '2 AST::t '#f))
              (if (##locat? _src14447_) _src14447_ '#f)))))
    (define __AST
      (lambda (_e14435_ _src-stx14436_)
        (let ((_src14438_ (__AST-source _src-stx14436_)))
          (if (or (##structure-instance-of? _e14435_ 'gerbil#AST::t)
                  (not _src14438_))
              _e14435_
              (##structure AST::t _e14435_ _src14438_)))))
    (define __AST-eq?
      (lambda (_stx14432_ _obj14433_) (eq? (__AST-e _stx14432_) _obj14433_)))
    (define __AST-pair? (lambda (_stx14430_) (pair? (__AST-e _stx14430_))))
    (define __AST-null? (lambda (_stx14428_) (null? (__AST-e _stx14428_))))
    (define __AST-datum?
      (lambda (_stx14409_)
        (let* ((_e14411_ (__AST-e _stx14409_)) (_$e14413_ (number? _e14411_)))
          (if _$e14413_
              _$e14413_
              (let ((_$e14416_ (string? _e14411_)))
                (if _$e14416_
                    _$e14416_
                    (let ((_$e14419_ (char? _e14411_)))
                      (if _$e14419_
                          _$e14419_
                          (let ((_$e14422_ (keyword? _e14411_)))
                            (if _$e14422_
                                _$e14422_
                                (let ((_$e14425_ (boolean? _e14411_)))
                                  (if _$e14425_
                                      _$e14425_
                                      (eq? _e14411_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14407_) (symbol? (__AST-e _stx14407_))))
    (define __AST-id-list?__%
      (lambda (_stx14358_ _tail?14359_)
        (let _lp14361_ ((_rest14363_ _stx14358_))
          (let* ((_$e14365_ _rest14363_)
                 (_$E1436714380_
                  (lambda ()
                    (let* ((_$E1436814375_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e14365_)))
                           (_rest14378_ _$e14365_))
                      (_tail?14359_ _rest14378_)))))
            (if (__AST-pair? _$e14365_)
                (let* ((_$tgt1436914383_ (__AST-e _$e14365_))
                       (_$hd1437014386_ (##car _$tgt1436914383_))
                       (_$tl1437114389_ (##cdr _$tgt1436914383_)))
                  (let* ((_hd14393_ _$hd1437014386_)
                         (_rest14395_ _$tl1437114389_))
                    (if (__AST-id? _hd14393_) (_lp14361_ _rest14395_) '#f)))
                (_$E1436714380_))))))
    (define __AST-id-list?__0
      (lambda (_stx14400_)
        (let ((_tail?14402_ __AST-null?))
          (__AST-id-list?__% _stx14400_ _tail?14402_))))
    (define __AST-id-list?
      (lambda _g14780_
        (let ((_g14779_ (##length _g14780_)))
          (cond ((##fx= _g14779_ 1)
                 (apply (lambda (_stx14400_) (__AST-id-list?__0 _stx14400_))
                        _g14780_))
                ((##fx= _g14779_ 2)
                 (apply (lambda (_stx14404_ _tail?14405_)
                          (__AST-id-list?__% _stx14404_ _tail?14405_))
                        _g14780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14780_))))))
    (define __AST-bind-list?
      (lambda (_stx14350_)
        (__AST-id-list?__%
         _stx14350_
         (lambda (_e14352_)
           (let ((_$e14354_ (__AST-null? _e14352_)))
             (if _$e14354_ _$e14354_ (__AST-id? _e14352_)))))))
    (define __AST-list?__%
      (lambda (_stx14303_ _tail?14304_)
        (let _lp14306_ ((_rest14308_ _stx14303_))
          (let* ((_$e14310_ _rest14308_)
                 (_$E1431214325_
                  (lambda ()
                    (let* ((_$E1431314320_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e14310_)))
                           (_rest14323_ _$e14310_))
                      (_tail?14304_ _rest14323_)))))
            (if (__AST-pair? _$e14310_)
                (let* ((_$tgt1431414328_ (__AST-e _$e14310_))
                       (_$hd1431514331_ (##car _$tgt1431414328_))
                       (_$tl1431614334_ (##cdr _$tgt1431414328_)))
                  (let ((_rest14338_ _$tl1431614334_))
                    (_lp14306_ _rest14338_)))
                (_$E1431214325_))))))
    (define __AST-list?__0
      (lambda (_stx14343_)
        (let ((_tail?14345_ __AST-null?))
          (__AST-list?__% _stx14343_ _tail?14345_))))
    (define __AST-list?
      (lambda _g14782_
        (let ((_g14781_ (##length _g14782_)))
          (cond ((##fx= _g14781_ 1)
                 (apply (lambda (_stx14343_) (__AST-list?__0 _stx14343_))
                        _g14782_))
                ((##fx= _g14781_ 2)
                 (apply (lambda (_stx14347_ _tail?14348_)
                          (__AST-list?__% _stx14347_ _tail?14348_))
                        _g14782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14782_))))))
    (define __AST->list
      (lambda (_stx14268_)
        (let* ((_$e14270_ _stx14268_)
               (_$E1427214285_
                (lambda ()
                  (let* ((_$E1427314280_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e14270_)))
                         (_rest14283_ _$e14270_))
                    (__AST-e _rest14283_)))))
          (if (__AST-pair? _$e14270_)
              (let* ((_$tgt1427414288_ (__AST-e _$e14270_))
                     (_$hd1427514291_ (##car _$tgt1427414288_))
                     (_$tl1427614294_ (##cdr _$tgt1427414288_)))
                (let* ((_hd14298_ _$hd1427514291_)
                       (_rest14300_ _$tl1427614294_))
                  (cons _hd14298_ (__AST->list _rest14300_))))
              (_$E1427214285_)))))
    (define __AST->datum
      (lambda (_stx14266_)
        (if (##structure-instance-of? _stx14266_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14266_))
            (if (pair? _stx14266_)
                (cons (__AST->datum (car _stx14266_))
                      (__AST->datum (cdr _stx14266_)))
                (if (vector? _stx14266_)
                    (vector-map __AST->datum _stx14266_)
                    (if (box? _stx14266_)
                        (box (__AST->datum (unbox _stx14266_)))
                        _stx14266_))))))
    (define get-readenv
      (lambda (_port14264_)
        (##make-readenv
         _port14264_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14252_)
        (let ((_e14254_ (##read-datum-or-eof (get-readenv _in14252_))))
          (if (eof-object? (__AST-e _e14254_)) (__AST-e _e14254_) _e14254_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14260_ (current-input-port))) (read-syntax__% _in14260_))))
    (define read-syntax
      (lambda _g14784_
        (let ((_g14783_ (##length _g14784_)))
          (cond ((##fx= _g14783_ 0)
                 (apply (lambda () (read-syntax__0)) _g14784_))
                ((##fx= _g14783_ 1)
                 (apply (lambda (_in14262_) (read-syntax__% _in14262_))
                        _g14784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14784_))))))
    (define read-syntax-from-file
      (lambda (_path14247_)
        (let ((_r14249_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14247_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14249_)
              (cdr (__AST-e (vector-ref _r14249_ '1)))
              (error (err-code->string _r14249_) _path14247_)))))
    (define __wrap-syntax
      (lambda (_re14244_ _e14245_)
        (if (eof-object? _e14245_)
            _e14245_
            (##structure AST::t _e14245_ (##readenv->locat _re14244_)))))
    (define __unwrap-syntax (lambda (_re14241_ _e14242_) (__AST-e _e14242_)))
    (define __pp-syntax (lambda (_stx14239_) (pp (__AST->datum _stx14239_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14237_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14237_ '#t)
          (macro-readtable-bracket-handler-set! _rt14237_ '@list)
          (macro-readtable-brace-handler-set! _rt14237_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14237_
           '#\!
           __read-sharp-bang)
          _rt14237_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14233_ _kw14234_)
        (macro-readtable-bracket-handler-set! _rt14233_ _kw14234_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14230_ _kw14231_)
        (macro-readtable-brace-handler-set! _rt14230_ _kw14231_)))
    (define __read-sharp-bang
      (lambda (_re14221_ _next14222_ _start-pos14223_)
        (if (eq? _start-pos14223_ '0)
            (let* ((_line14225_
                    (##read-line
                     (macro-readenv-port _re14221_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14227_
                    (substring _line14225_ '1 (string-length _line14225_))))
              (macro-readenv-script-line-set! _re14221_ _script-line14227_)
              (##script-marker))
            (##read-sharp-bang _re14221_ _next14222_ _start-pos14223_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14219_)
        (if (source-location? _obj14219_)
            (string? (##locat-container _obj14219_))
            '#f)))
    (define source-location-path
      (lambda (_obj14217_)
        (if (##locat? _obj14217_)
            (##container->path (##locat-container _obj14217_))
            '#f)))))
