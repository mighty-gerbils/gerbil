(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708451992)
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
      (lambda _$args71626_ (apply make-instance SyntaxError::t _$args71626_)))
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
      (lambda (_self71529_ _port71530_)
        (letrec ((_location71532_
                  (lambda ()
                    (let _lp71586_ ((_rest71588_
                                     (##unchecked-structure-ref
                                      _self71529_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7158971597_ _rest71588_)
                             (_else7159171605_ (lambda () '#f))
                             (_K7159371614_
                              (lambda (_rest71608_ _hd71609_)
                                (let ((_$e71611_ (__AST-source _hd71609_)))
                                  (if _$e71611_
                                      _$e71611_
                                      (_lp71586_ _rest71608_))))))
                        (if (##pair? _rest7158971597_)
                            (let ((_hd7159471617_ (##car _rest7158971597_))
                                  (_tl7159571619_ (##cdr _rest7158971597_)))
                              (let* ((_hd71622_ _hd7159471617_)
                                     (_rest71624_ _tl7159571619_))
                                (_K7159371614_ _rest71624_ _hd71622_)))
                            (_else7159171605_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e71535_ (_location71532_)))
               (if _$e71535_
                   ((lambda (_where71538_)
                      (##display-locat _where71538_ '#t (current-output-port)))
                    _$e71535_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e71540_
                    (##unchecked-structure-ref
                     _self71529_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e71540_
                   ((lambda (_where71543_)
                      (displayln
                       '" at "
                       _where71543_
                       '": "
                       (##unchecked-structure-ref
                        _self71529_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e71540_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self71529_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7154471552_
                     (##unchecked-structure-ref
                      _self71529_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7154671560_ (lambda () '#!void))
                    (_K7154871573_
                     (lambda (_rest71563_ _stx71564_)
                       (display '"... form:   ")
                       (__pp-syntax _stx71564_)
                       (for-each
                        (lambda (_detail71566_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail71566_))
                          (let ((_$e71568_ (__AST-source _detail71566_)))
                            (if _$e71568_
                                ((lambda (_loc71571_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc71571_
                                    '#t
                                    (current-output-port)))
                                 _$e71568_)
                                '#!void))
                          (newline))
                        _rest71563_))))
               (if (##pair? _g7154471552_)
                   (let ((_hd7154971576_ (##car _g7154471552_))
                         (_tl7155071578_ (##cdr _g7154471552_)))
                     (let* ((_stx71581_ _hd7154971576_)
                            (_rest71583_ _tl7155071578_))
                       (_K7154871573_ _rest71583_ _stx71581_)))
                   '#!void)))
           current-output-port
           _port71530_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message71400_
               _irritants71401_
               _where71402_
               _context71403_
               _marks71404_
               _phi71405_)
        (let ((__obj71721
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj71721
           _message71400_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj71721
           _irritants71401_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj71721
           _where71402_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj71721
           _context71403_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj71721
           _marks71404_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj71721
           _phi71405_
           '5
           SyntaxError::t
           '#f)
          __obj71721)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where71395_ _message71396_ _stx71397_ . _details71398_)
        (raise (make-syntax-error
                _message71396_
                (cons _stx71397_ _details71398_)
                _where71395_
                '#f
                '#f
                '#f))))
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
      (lambda _$args71392_ (apply make-instance AST::t _$args71392_)))
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
      (lambda (_stx71390_)
        (if (##structure-instance-of? _stx71390_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx71390_ '1 AST::t '#f)
            _stx71390_)))
    (define __AST-source
      (lambda (_stx71384_)
        (let _lp71386_ ((_src71388_ _stx71384_))
          (if (##structure-instance-of? _src71388_ 'gerbil#AST::t)
              (_lp71386_ (##unchecked-structure-ref _src71388_ '2 AST::t '#f))
              (if (##locat? _src71388_) _src71388_ '#f)))))
    (define __AST
      (lambda (_e71376_ _src-stx71377_)
        (let ((_src71379_ (__AST-source _src-stx71377_)))
          (if (or (##structure-instance-of? _e71376_ 'gerbil#AST::t)
                  (not _src71379_))
              _e71376_
              (##structure AST::t _e71376_ _src71379_)))))
    (define __AST-eq?
      (lambda (_stx71373_ _obj71374_) (eq? (__AST-e _stx71373_) _obj71374_)))
    (define __AST-pair? (lambda (_stx71371_) (pair? (__AST-e _stx71371_))))
    (define __AST-null? (lambda (_stx71369_) (null? (__AST-e _stx71369_))))
    (define __AST-datum?
      (lambda (_stx71350_)
        (let* ((_e71352_ (__AST-e _stx71350_)) (_$e71354_ (number? _e71352_)))
          (if _$e71354_
              _$e71354_
              (let ((_$e71357_ (string? _e71352_)))
                (if _$e71357_
                    _$e71357_
                    (let ((_$e71360_ (char? _e71352_)))
                      (if _$e71360_
                          _$e71360_
                          (let ((_$e71363_ (keyword? _e71352_)))
                            (if _$e71363_
                                _$e71363_
                                (let ((_$e71366_ (boolean? _e71352_)))
                                  (if _$e71366_
                                      _$e71366_
                                      (eq? _e71352_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx71348_) (symbol? (__AST-e _stx71348_))))
    (define __AST-id-list?__%
      (lambda (_stx71299_ _tail?71300_)
        (let _lp71302_ ((_rest71304_ _stx71299_))
          (let* ((_$e71306_ _rest71304_)
                 (_$E7130871321_
                  (lambda ()
                    (let* ((_$E7130971316_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e71306_)))
                           (_rest71319_ _$e71306_))
                      (_tail?71300_ _rest71319_)))))
            (if (__AST-pair? _$e71306_)
                (let* ((_$tgt7131071324_ (__AST-e _$e71306_))
                       (_$hd7131171327_ (##car _$tgt7131071324_))
                       (_$tl7131271330_ (##cdr _$tgt7131071324_)))
                  (let* ((_hd71334_ _$hd7131171327_)
                         (_rest71336_ _$tl7131271330_))
                    (if (__AST-id? _hd71334_) (_lp71302_ _rest71336_) '#f)))
                (_$E7130871321_))))))
    (define __AST-id-list?__0
      (lambda (_stx71341_)
        (let ((_tail?71343_ __AST-null?))
          (__AST-id-list?__% _stx71341_ _tail?71343_))))
    (define __AST-id-list?
      (lambda _g71724_
        (let ((_g71723_ (##length _g71724_)))
          (cond ((##fx= _g71723_ 1)
                 (apply (lambda (_stx71341_) (__AST-id-list?__0 _stx71341_))
                        _g71724_))
                ((##fx= _g71723_ 2)
                 (apply (lambda (_stx71345_ _tail?71346_)
                          (__AST-id-list?__% _stx71345_ _tail?71346_))
                        _g71724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g71724_))))))
    (define __AST-bind-list?
      (lambda (_stx71291_)
        (__AST-id-list?__%
         _stx71291_
         (lambda (_e71293_)
           (let ((_$e71295_ (__AST-null? _e71293_)))
             (if _$e71295_ _$e71295_ (__AST-id? _e71293_)))))))
    (define __AST-list?__%
      (lambda (_stx71244_ _tail?71245_)
        (let _lp71247_ ((_rest71249_ _stx71244_))
          (let* ((_$e71251_ _rest71249_)
                 (_$E7125371266_
                  (lambda ()
                    (let* ((_$E7125471261_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e71251_)))
                           (_rest71264_ _$e71251_))
                      (_tail?71245_ _rest71264_)))))
            (if (__AST-pair? _$e71251_)
                (let* ((_$tgt7125571269_ (__AST-e _$e71251_))
                       (_$hd7125671272_ (##car _$tgt7125571269_))
                       (_$tl7125771275_ (##cdr _$tgt7125571269_)))
                  (let ((_rest71279_ _$tl7125771275_))
                    (_lp71247_ _rest71279_)))
                (_$E7125371266_))))))
    (define __AST-list?__0
      (lambda (_stx71284_)
        (let ((_tail?71286_ __AST-null?))
          (__AST-list?__% _stx71284_ _tail?71286_))))
    (define __AST-list?
      (lambda _g71726_
        (let ((_g71725_ (##length _g71726_)))
          (cond ((##fx= _g71725_ 1)
                 (apply (lambda (_stx71284_) (__AST-list?__0 _stx71284_))
                        _g71726_))
                ((##fx= _g71725_ 2)
                 (apply (lambda (_stx71288_ _tail?71289_)
                          (__AST-list?__% _stx71288_ _tail?71289_))
                        _g71726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g71726_))))))
    (define __AST->list
      (lambda (_stx71209_)
        (let* ((_$e71211_ _stx71209_)
               (_$E7121371226_
                (lambda ()
                  (let* ((_$E7121471221_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e71211_)))
                         (_rest71224_ _$e71211_))
                    (__AST-e _rest71224_)))))
          (if (__AST-pair? _$e71211_)
              (let* ((_$tgt7121571229_ (__AST-e _$e71211_))
                     (_$hd7121671232_ (##car _$tgt7121571229_))
                     (_$tl7121771235_ (##cdr _$tgt7121571229_)))
                (let* ((_hd71239_ _$hd7121671232_)
                       (_rest71241_ _$tl7121771235_))
                  (cons _hd71239_ (__AST->list _rest71241_))))
              (_$E7121371226_)))))
    (define __AST->datum
      (lambda (_stx71207_)
        (if (##structure-instance-of? _stx71207_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx71207_))
            (if (pair? _stx71207_)
                (cons (__AST->datum (car _stx71207_))
                      (__AST->datum (cdr _stx71207_)))
                (if (vector? _stx71207_)
                    (vector-map __AST->datum _stx71207_)
                    (if (box? _stx71207_)
                        (box (__AST->datum (unbox _stx71207_)))
                        _stx71207_))))))
    (define get-readenv
      (lambda (_port71205_)
        (##make-readenv
         _port71205_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in71193_)
        (let ((_e71195_ (##read-datum-or-eof (get-readenv _in71193_))))
          (if (eof-object? (__AST-e _e71195_)) (__AST-e _e71195_) _e71195_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in71201_ (current-input-port))) (read-syntax__% _in71201_))))
    (define read-syntax
      (lambda _g71728_
        (let ((_g71727_ (##length _g71728_)))
          (cond ((##fx= _g71727_ 0)
                 (apply (lambda () (read-syntax__0)) _g71728_))
                ((##fx= _g71727_ 1)
                 (apply (lambda (_in71203_) (read-syntax__% _in71203_))
                        _g71728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g71728_))))))
    (define read-syntax-from-file
      (lambda (_path71188_)
        (let ((_r71190_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path71188_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r71190_)
              (cdr (__AST-e (vector-ref _r71190_ '1)))
              (error (err-code->string _r71190_) _path71188_)))))
    (define __wrap-syntax
      (lambda (_re71185_ _e71186_)
        (if (eof-object? _e71186_)
            _e71186_
            (##structure AST::t _e71186_ (##readenv->locat _re71185_)))))
    (define __unwrap-syntax (lambda (_re71182_ _e71183_) (__AST-e _e71183_)))
    (define __pp-syntax (lambda (_stx71180_) (pp (__AST->datum _stx71180_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt71178_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt71178_ '#t)
          (macro-readtable-bracket-handler-set! _rt71178_ '@list)
          (macro-readtable-brace-handler-set! _rt71178_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt71178_
           '#\!
           __read-sharp-bang)
          _rt71178_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt71174_ _kw71175_)
        (macro-readtable-bracket-handler-set! _rt71174_ _kw71175_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt71171_ _kw71172_)
        (macro-readtable-brace-handler-set! _rt71171_ _kw71172_)))
    (define __read-sharp-bang
      (lambda (_re71162_ _next71163_ _start-pos71164_)
        (if (eq? _start-pos71164_ '0)
            (let* ((_line71166_
                    (##read-line
                     (macro-readenv-port _re71162_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line71168_
                    (substring _line71166_ '1 (string-length _line71166_))))
              (macro-readenv-script-line-set! _re71162_ _script-line71168_)
              (##script-marker))
            (##read-sharp-bang _re71162_ _next71163_ _start-pos71164_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj71160_)
        (if (source-location? _obj71160_)
            (string? (##locat-container _obj71160_))
            '#f)))
    (define source-location-path
      (lambda (_obj71158_)
        (if (##locat? _obj71158_)
            (##container->path (##locat-container _obj71158_))
            '#f)))))
