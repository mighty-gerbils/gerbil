(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707734701)
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
      (lambda _$args102650_
        (apply make-instance SyntaxError::t _$args102650_)))
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
      (lambda (_self102553_ _port102554_)
        (letrec ((_location102556_
                  (lambda ()
                    (let _lp102610_ ((_rest102612_
                                      (##unchecked-structure-ref
                                       _self102553_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102613102621_ _rest102612_)
                             (_else102615102629_ (lambda () '#f))
                             (_K102617102638_
                              (lambda (_rest102632_ _hd102633_)
                                (let ((_$e102635_ (__AST-source _hd102633_)))
                                  (if _$e102635_
                                      _$e102635_
                                      (_lp102610_ _rest102632_))))))
                        (if (##pair? _rest102613102621_)
                            (let ((_hd102618102641_ (##car _rest102613102621_))
                                  (_tl102619102643_
                                   (##cdr _rest102613102621_)))
                              (let* ((_hd102646_ _hd102618102641_)
                                     (_rest102648_ _tl102619102643_))
                                (_K102617102638_ _rest102648_ _hd102646_)))
                            (_else102615102629_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102559_ (_location102556_)))
               (if _$e102559_
                   ((lambda (_where102562_)
                      (##display-locat
                       _where102562_
                       '#t
                       (current-output-port)))
                    _$e102559_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102564_
                    (##unchecked-structure-ref
                     _self102553_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102564_
                   ((lambda (_where102567_)
                      (displayln
                       '" at "
                       _where102567_
                       '": "
                       (##unchecked-structure-ref
                        _self102553_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102564_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102553_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102568102576_
                     (##unchecked-structure-ref
                      _self102553_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102570102584_ (lambda () '#!void))
                    (_K102572102597_
                     (lambda (_rest102587_ _stx102588_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102588_)
                       (for-each
                        (lambda (_detail102590_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102590_))
                          (let ((_$e102592_ (__AST-source _detail102590_)))
                            (if _$e102592_
                                ((lambda (_loc102595_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102595_
                                    '#t
                                    (current-output-port)))
                                 _$e102592_)
                                '#!void))
                          (newline))
                        _rest102587_))))
               (if (##pair? _g102568102576_)
                   (let ((_hd102573102600_ (##car _g102568102576_))
                         (_tl102574102602_ (##cdr _g102568102576_)))
                     (let* ((_stx102605_ _hd102573102600_)
                            (_rest102607_ _tl102574102602_))
                       (_K102572102597_ _rest102607_ _stx102605_)))
                   '#!void)))
           current-output-port
           _port102554_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message102424_
               _irritants102425_
               _where102426_
               _context102427_
               _marks102428_
               _phi102429_)
        (let ((__obj107313
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj107313
           _message102424_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107313
           _irritants102425_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107313
           _where102426_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107313
           _context102427_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107313
           _marks102428_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107313
           _phi102429_
           '5
           SyntaxError::t
           '#f)
          __obj107313)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where102419_ _message102420_ _stx102421_ . _details102422_)
        (raise (make-syntax-error
                _message102420_
                (cons _stx102421_ _details102422_)
                _where102419_
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
      (lambda _$args102416_ (apply make-instance AST::t _$args102416_)))
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
      (lambda (_stx102414_)
        (if (##structure-instance-of? _stx102414_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx102414_ '1 AST::t '#f)
            _stx102414_)))
    (define __AST-source
      (lambda (_stx102408_)
        (let _lp102410_ ((_src102412_ _stx102408_))
          (if (##structure-instance-of? _src102412_ 'gerbil#AST::t)
              (_lp102410_
               (##unchecked-structure-ref _src102412_ '2 AST::t '#f))
              (if (##locat? _src102412_) _src102412_ '#f)))))
    (define __AST
      (lambda (_e102400_ _src-stx102401_)
        (let ((_src102403_ (__AST-source _src-stx102401_)))
          (if (or (##structure-instance-of? _e102400_ 'gerbil#AST::t)
                  (not _src102403_))
              _e102400_
              (##structure AST::t _e102400_ _src102403_)))))
    (define __AST-eq?
      (lambda (_stx102397_ _obj102398_)
        (eq? (__AST-e _stx102397_) _obj102398_)))
    (define __AST-pair? (lambda (_stx102395_) (pair? (__AST-e _stx102395_))))
    (define __AST-null? (lambda (_stx102393_) (null? (__AST-e _stx102393_))))
    (define __AST-datum?
      (lambda (_stx102374_)
        (let* ((_e102376_ (__AST-e _stx102374_))
               (_$e102378_ (number? _e102376_)))
          (if _$e102378_
              _$e102378_
              (let ((_$e102381_ (string? _e102376_)))
                (if _$e102381_
                    _$e102381_
                    (let ((_$e102384_ (char? _e102376_)))
                      (if _$e102384_
                          _$e102384_
                          (let ((_$e102387_ (keyword? _e102376_)))
                            (if _$e102387_
                                _$e102387_
                                (let ((_$e102390_ (boolean? _e102376_)))
                                  (if _$e102390_
                                      _$e102390_
                                      (eq? _e102376_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx102372_) (symbol? (__AST-e _stx102372_))))
    (define __AST-id-list?__%
      (lambda (_stx102323_ _tail?102324_)
        (let _lp102326_ ((_rest102328_ _stx102323_))
          (let* ((_$e102330_ _rest102328_)
                 (_$E102332102345_
                  (lambda ()
                    (let* ((_$E102333102340_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102330_)))
                           (_rest102343_ _$e102330_))
                      (_tail?102324_ _rest102343_)))))
            (if (__AST-pair? _$e102330_)
                (let* ((_$tgt102334102348_ (__AST-e _$e102330_))
                       (_$hd102335102351_ (##car _$tgt102334102348_))
                       (_$tl102336102354_ (##cdr _$tgt102334102348_)))
                  (let* ((_hd102358_ _$hd102335102351_)
                         (_rest102360_ _$tl102336102354_))
                    (if (__AST-id? _hd102358_) (_lp102326_ _rest102360_) '#f)))
                (_$E102332102345_))))))
    (define __AST-id-list?__0
      (lambda (_stx102365_)
        (let ((_tail?102367_ __AST-null?))
          (__AST-id-list?__% _stx102365_ _tail?102367_))))
    (define __AST-id-list?
      (lambda _g107316_
        (let ((_g107315_ (##length _g107316_)))
          (cond ((##fx= _g107315_ 1)
                 (apply (lambda (_stx102365_) (__AST-id-list?__0 _stx102365_))
                        _g107316_))
                ((##fx= _g107315_ 2)
                 (apply (lambda (_stx102369_ _tail?102370_)
                          (__AST-id-list?__% _stx102369_ _tail?102370_))
                        _g107316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g107316_))))))
    (define __AST-bind-list?
      (lambda (_stx102315_)
        (__AST-id-list?__%
         _stx102315_
         (lambda (_e102317_)
           (let ((_$e102319_ (__AST-null? _e102317_)))
             (if _$e102319_ _$e102319_ (__AST-id? _e102317_)))))))
    (define __AST-list?__%
      (lambda (_stx102268_ _tail?102269_)
        (let _lp102271_ ((_rest102273_ _stx102268_))
          (let* ((_$e102275_ _rest102273_)
                 (_$E102277102290_
                  (lambda ()
                    (let* ((_$E102278102285_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102275_)))
                           (_rest102288_ _$e102275_))
                      (_tail?102269_ _rest102288_)))))
            (if (__AST-pair? _$e102275_)
                (let* ((_$tgt102279102293_ (__AST-e _$e102275_))
                       (_$hd102280102296_ (##car _$tgt102279102293_))
                       (_$tl102281102299_ (##cdr _$tgt102279102293_)))
                  (let ((_rest102303_ _$tl102281102299_))
                    (_lp102271_ _rest102303_)))
                (_$E102277102290_))))))
    (define __AST-list?__0
      (lambda (_stx102308_)
        (let ((_tail?102310_ __AST-null?))
          (__AST-list?__% _stx102308_ _tail?102310_))))
    (define __AST-list?
      (lambda _g107318_
        (let ((_g107317_ (##length _g107318_)))
          (cond ((##fx= _g107317_ 1)
                 (apply (lambda (_stx102308_) (__AST-list?__0 _stx102308_))
                        _g107318_))
                ((##fx= _g107317_ 2)
                 (apply (lambda (_stx102312_ _tail?102313_)
                          (__AST-list?__% _stx102312_ _tail?102313_))
                        _g107318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g107318_))))))
    (define __AST->list
      (lambda (_stx102233_)
        (let* ((_$e102235_ _stx102233_)
               (_$E102237102250_
                (lambda ()
                  (let* ((_$E102238102245_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e102235_)))
                         (_rest102248_ _$e102235_))
                    (__AST-e _rest102248_)))))
          (if (__AST-pair? _$e102235_)
              (let* ((_$tgt102239102253_ (__AST-e _$e102235_))
                     (_$hd102240102256_ (##car _$tgt102239102253_))
                     (_$tl102241102259_ (##cdr _$tgt102239102253_)))
                (let* ((_hd102263_ _$hd102240102256_)
                       (_rest102265_ _$tl102241102259_))
                  (cons _hd102263_ (__AST->list _rest102265_))))
              (_$E102237102250_)))))
    (define __AST->datum
      (lambda (_stx102231_)
        (if (##structure-instance-of? _stx102231_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx102231_))
            (if (pair? _stx102231_)
                (cons (__AST->datum (car _stx102231_))
                      (__AST->datum (cdr _stx102231_)))
                (if (vector? _stx102231_)
                    (vector-map __AST->datum _stx102231_)
                    (if (box? _stx102231_)
                        (box (__AST->datum (unbox _stx102231_)))
                        _stx102231_))))))
    (define get-readenv
      (lambda (_port102229_)
        (##make-readenv
         _port102229_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in102217_)
        (let ((_e102219_ (##read-datum-or-eof (get-readenv _in102217_))))
          (if (eof-object? (__AST-e _e102219_))
              (__AST-e _e102219_)
              _e102219_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in102225_ (current-input-port))) (read-syntax__% _in102225_))))
    (define read-syntax
      (lambda _g107320_
        (let ((_g107319_ (##length _g107320_)))
          (cond ((##fx= _g107319_ 0)
                 (apply (lambda () (read-syntax__0)) _g107320_))
                ((##fx= _g107319_ 1)
                 (apply (lambda (_in102227_) (read-syntax__% _in102227_))
                        _g107320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g107320_))))))
    (define read-syntax-from-file
      (lambda (_path102212_)
        (let ((_r102214_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path102212_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r102214_)
              (cdr (__AST-e (vector-ref _r102214_ '1)))
              (error (err-code->string _r102214_) _path102212_)))))
    (define __wrap-syntax
      (lambda (_re102209_ _e102210_)
        (if (eof-object? _e102210_)
            _e102210_
            (##structure AST::t _e102210_ (##readenv->locat _re102209_)))))
    (define __unwrap-syntax
      (lambda (_re102206_ _e102207_) (__AST-e _e102207_)))
    (define __pp-syntax (lambda (_stx102204_) (pp (__AST->datum _stx102204_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt102202_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt102202_ '#t)
          (macro-readtable-bracket-handler-set! _rt102202_ '@list)
          (macro-readtable-brace-handler-set! _rt102202_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt102202_
           '#\!
           __read-sharp-bang)
          _rt102202_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt102198_ _kw102199_)
        (macro-readtable-bracket-handler-set! _rt102198_ _kw102199_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt102195_ _kw102196_)
        (macro-readtable-brace-handler-set! _rt102195_ _kw102196_)))
    (define __read-sharp-bang
      (lambda (_re102186_ _next102187_ _start-pos102188_)
        (if (eq? _start-pos102188_ '0)
            (let* ((_line102190_
                    (##read-line
                     (macro-readenv-port _re102186_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line102192_
                    (substring _line102190_ '1 (string-length _line102190_))))
              (macro-readenv-script-line-set! _re102186_ _script-line102192_)
              (##script-marker))
            (##read-sharp-bang _re102186_ _next102187_ _start-pos102188_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj102184_)
        (if (source-location? _obj102184_)
            (string? (##locat-container _obj102184_))
            '#f)))
    (define source-location-path
      (lambda (_obj102182_)
        (if (##locat? _obj102182_)
            (##container->path (##locat-container _obj102182_))
            '#f)))))
