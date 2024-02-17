(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708194419)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _$args100959_
        (apply make-instance SyntaxError::t _$args100959_)))
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
      (lambda (_self100862_ _port100863_)
        (letrec ((_location100865_
                  (lambda ()
                    (let _lp100919_ ((_rest100921_
                                      (##unchecked-structure-ref
                                       _self100862_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest100922100930_ _rest100921_)
                             (_else100924100938_ (lambda () '#f))
                             (_K100926100947_
                              (lambda (_rest100941_ _hd100942_)
                                (let ((_$e100944_ (__AST-source _hd100942_)))
                                  (if _$e100944_
                                      _$e100944_
                                      (_lp100919_ _rest100941_))))))
                        (if (##pair? _rest100922100930_)
                            (let ((_hd100927100950_ (##car _rest100922100930_))
                                  (_tl100928100952_
                                   (##cdr _rest100922100930_)))
                              (let* ((_hd100955_ _hd100927100950_)
                                     (_rest100957_ _tl100928100952_))
                                (_K100926100947_ _rest100957_ _hd100955_)))
                            (_else100924100938_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e100868_ (_location100865_)))
               (if _$e100868_
                   ((lambda (_where100871_)
                      (##display-locat
                       _where100871_
                       '#t
                       (current-output-port)))
                    _$e100868_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e100873_
                    (##unchecked-structure-ref
                     _self100862_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e100873_
                   ((lambda (_where100876_)
                      (displayln
                       '" at "
                       _where100876_
                       '": "
                       (##unchecked-structure-ref
                        _self100862_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e100873_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self100862_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g100877100885_
                     (##unchecked-structure-ref
                      _self100862_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else100879100893_ (lambda () '#!void))
                    (_K100881100906_
                     (lambda (_rest100896_ _stx100897_)
                       (display '"... form:   ")
                       (__pp-syntax _stx100897_)
                       (for-each
                        (lambda (_detail100899_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail100899_))
                          (let ((_$e100901_ (__AST-source _detail100899_)))
                            (if _$e100901_
                                ((lambda (_loc100904_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc100904_
                                    '#t
                                    (current-output-port)))
                                 _$e100901_)
                                '#!void))
                          (newline))
                        _rest100896_))))
               (if (##pair? _g100877100885_)
                   (let ((_hd100882100909_ (##car _g100877100885_))
                         (_tl100883100911_ (##cdr _g100877100885_)))
                     (let* ((_stx100914_ _hd100882100909_)
                            (_rest100916_ _tl100883100911_))
                       (_K100881100906_ _rest100916_ _stx100914_)))
                   '#!void)))
           current-output-port
           _port100863_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message100733_
               _irritants100734_
               _where100735_
               _context100736_
               _marks100737_
               _phi100738_)
        (let ((__obj105121
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj105121
           _message100733_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105121
           _irritants100734_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105121
           _where100735_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105121
           _context100736_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105121
           _marks100737_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105121
           _phi100738_
           '5
           SyntaxError::t
           '#f)
          __obj105121)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where100728_ _message100729_ _stx100730_ . _details100731_)
        (raise (make-syntax-error
                _message100729_
                (cons _stx100730_ _details100731_)
                _where100728_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (make-class-predicate AST::t))
    (define make-AST
      (lambda _$args100725_ (apply make-instance AST::t _$args100725_)))
    (define AST-e (make-class-slot-accessor AST::t 'e))
    (define AST-source (make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (make-class-slot-mutator AST::t 'source))
    (define &AST-e (make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_stx100723_)
        (if (##structure-instance-of? _stx100723_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx100723_ '1 AST::t '#f)
            _stx100723_)))
    (define __AST-source
      (lambda (_stx100717_)
        (let _lp100719_ ((_src100721_ _stx100717_))
          (if (##structure-instance-of? _src100721_ 'gerbil#AST::t)
              (_lp100719_
               (##unchecked-structure-ref _src100721_ '2 AST::t '#f))
              (if (##locat? _src100721_) _src100721_ '#f)))))
    (define __AST
      (lambda (_e100709_ _src-stx100710_)
        (let ((_src100712_ (__AST-source _src-stx100710_)))
          (if (or (##structure-instance-of? _e100709_ 'gerbil#AST::t)
                  (not _src100712_))
              _e100709_
              (##structure AST::t _e100709_ _src100712_)))))
    (define __AST-eq?
      (lambda (_stx100706_ _obj100707_)
        (eq? (__AST-e _stx100706_) _obj100707_)))
    (define __AST-pair? (lambda (_stx100704_) (pair? (__AST-e _stx100704_))))
    (define __AST-null? (lambda (_stx100702_) (null? (__AST-e _stx100702_))))
    (define __AST-datum?
      (lambda (_stx100683_)
        (let* ((_e100685_ (__AST-e _stx100683_))
               (_$e100687_ (number? _e100685_)))
          (if _$e100687_
              _$e100687_
              (let ((_$e100690_ (string? _e100685_)))
                (if _$e100690_
                    _$e100690_
                    (let ((_$e100693_ (char? _e100685_)))
                      (if _$e100693_
                          _$e100693_
                          (let ((_$e100696_ (keyword? _e100685_)))
                            (if _$e100696_
                                _$e100696_
                                (let ((_$e100699_ (boolean? _e100685_)))
                                  (if _$e100699_
                                      _$e100699_
                                      (eq? _e100685_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx100681_) (symbol? (__AST-e _stx100681_))))
    (define __AST-id-list?__%
      (lambda (_stx100632_ _tail?100633_)
        (let _lp100635_ ((_rest100637_ _stx100632_))
          (let* ((_$e100639_ _rest100637_)
                 (_$E100641100654_
                  (lambda ()
                    (let* ((_$E100642100649_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e100639_)))
                           (_rest100652_ _$e100639_))
                      (_tail?100633_ _rest100652_)))))
            (if (__AST-pair? _$e100639_)
                (let* ((_$tgt100643100657_ (__AST-e _$e100639_))
                       (_$hd100644100660_ (##car _$tgt100643100657_))
                       (_$tl100645100663_ (##cdr _$tgt100643100657_)))
                  (let* ((_hd100667_ _$hd100644100660_)
                         (_rest100669_ _$tl100645100663_))
                    (if (__AST-id? _hd100667_) (_lp100635_ _rest100669_) '#f)))
                (_$E100641100654_))))))
    (define __AST-id-list?__0
      (lambda (_stx100674_)
        (let ((_tail?100676_ __AST-null?))
          (__AST-id-list?__% _stx100674_ _tail?100676_))))
    (define __AST-id-list?
      (lambda _g105124_
        (let ((_g105123_ (##length _g105124_)))
          (cond ((##fx= _g105123_ 1)
                 (apply (lambda (_stx100674_) (__AST-id-list?__0 _stx100674_))
                        _g105124_))
                ((##fx= _g105123_ 2)
                 (apply (lambda (_stx100678_ _tail?100679_)
                          (__AST-id-list?__% _stx100678_ _tail?100679_))
                        _g105124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g105124_))))))
    (define __AST-bind-list?
      (lambda (_stx100624_)
        (__AST-id-list?__%
         _stx100624_
         (lambda (_e100626_)
           (let ((_$e100628_ (__AST-null? _e100626_)))
             (if _$e100628_ _$e100628_ (__AST-id? _e100626_)))))))
    (define __AST-list?__%
      (lambda (_stx100577_ _tail?100578_)
        (let _lp100580_ ((_rest100582_ _stx100577_))
          (let* ((_$e100584_ _rest100582_)
                 (_$E100586100599_
                  (lambda ()
                    (let* ((_$E100587100594_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e100584_)))
                           (_rest100597_ _$e100584_))
                      (_tail?100578_ _rest100597_)))))
            (if (__AST-pair? _$e100584_)
                (let* ((_$tgt100588100602_ (__AST-e _$e100584_))
                       (_$hd100589100605_ (##car _$tgt100588100602_))
                       (_$tl100590100608_ (##cdr _$tgt100588100602_)))
                  (let ((_rest100612_ _$tl100590100608_))
                    (_lp100580_ _rest100612_)))
                (_$E100586100599_))))))
    (define __AST-list?__0
      (lambda (_stx100617_)
        (let ((_tail?100619_ __AST-null?))
          (__AST-list?__% _stx100617_ _tail?100619_))))
    (define __AST-list?
      (lambda _g105126_
        (let ((_g105125_ (##length _g105126_)))
          (cond ((##fx= _g105125_ 1)
                 (apply (lambda (_stx100617_) (__AST-list?__0 _stx100617_))
                        _g105126_))
                ((##fx= _g105125_ 2)
                 (apply (lambda (_stx100621_ _tail?100622_)
                          (__AST-list?__% _stx100621_ _tail?100622_))
                        _g105126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g105126_))))))
    (define __AST->list
      (lambda (_stx100542_)
        (let* ((_$e100544_ _stx100542_)
               (_$E100546100559_
                (lambda ()
                  (let* ((_$E100547100554_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e100544_)))
                         (_rest100557_ _$e100544_))
                    (__AST-e _rest100557_)))))
          (if (__AST-pair? _$e100544_)
              (let* ((_$tgt100548100562_ (__AST-e _$e100544_))
                     (_$hd100549100565_ (##car _$tgt100548100562_))
                     (_$tl100550100568_ (##cdr _$tgt100548100562_)))
                (let* ((_hd100572_ _$hd100549100565_)
                       (_rest100574_ _$tl100550100568_))
                  (cons _hd100572_ (__AST->list _rest100574_))))
              (_$E100546100559_)))))
    (define __AST->datum
      (lambda (_stx100540_)
        (if (##structure-instance-of? _stx100540_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx100540_))
            (if (pair? _stx100540_)
                (cons (__AST->datum (car _stx100540_))
                      (__AST->datum (cdr _stx100540_)))
                (if (vector? _stx100540_)
                    (vector-map __AST->datum _stx100540_)
                    (if (box? _stx100540_)
                        (box (__AST->datum (unbox _stx100540_)))
                        _stx100540_))))))
    (define get-readenv
      (lambda (_port100538_)
        (##make-readenv
         _port100538_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in100526_)
        (let ((_e100528_ (##read-datum-or-eof (get-readenv _in100526_))))
          (if (eof-object? (__AST-e _e100528_))
              (__AST-e _e100528_)
              _e100528_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in100534_ (current-input-port))) (read-syntax__% _in100534_))))
    (define read-syntax
      (lambda _g105128_
        (let ((_g105127_ (##length _g105128_)))
          (cond ((##fx= _g105127_ 0)
                 (apply (lambda () (read-syntax__0)) _g105128_))
                ((##fx= _g105127_ 1)
                 (apply (lambda (_in100536_) (read-syntax__% _in100536_))
                        _g105128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g105128_))))))
    (define read-syntax-from-file
      (lambda (_path100521_)
        (let ((_r100523_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path100521_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r100523_)
              (cdr (__AST-e (vector-ref _r100523_ '1)))
              (error (err-code->string _r100523_) _path100521_)))))
    (define __wrap-syntax
      (lambda (_re100518_ _e100519_)
        (if (eof-object? _e100519_)
            _e100519_
            (##structure AST::t _e100519_ (##readenv->locat _re100518_)))))
    (define __unwrap-syntax
      (lambda (_re100515_ _e100516_) (__AST-e _e100516_)))
    (define __pp-syntax (lambda (_stx100513_) (pp (__AST->datum _stx100513_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt100511_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt100511_ '#t)
          (macro-readtable-bracket-handler-set! _rt100511_ '@list)
          (macro-readtable-brace-handler-set! _rt100511_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt100511_
           '#\!
           __read-sharp-bang)
          _rt100511_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt100507_ _kw100508_)
        (macro-readtable-bracket-handler-set! _rt100507_ _kw100508_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt100504_ _kw100505_)
        (macro-readtable-brace-handler-set! _rt100504_ _kw100505_)))
    (define __read-sharp-bang
      (lambda (_re100495_ _next100496_ _start-pos100497_)
        (if (eq? _start-pos100497_ '0)
            (let* ((_line100499_
                    (##read-line
                     (macro-readenv-port _re100495_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line100501_
                    (substring _line100499_ '1 (string-length _line100499_))))
              (macro-readenv-script-line-set! _re100495_ _script-line100501_)
              (##script-marker))
            (##read-sharp-bang _re100495_ _next100496_ _start-pos100497_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj100493_)
        (if (source-location? _obj100493_)
            (string? (##locat-container _obj100493_))
            '#f)))
    (define source-location-path
      (lambda (_obj100491_)
        (if (##locat? _obj100491_)
            (##container->path (##locat-container _obj100491_))
            '#f)))))
