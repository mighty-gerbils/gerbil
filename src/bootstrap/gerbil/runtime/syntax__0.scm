(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707555132)
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
      (lambda _$args99162_
        (apply make-class-instance SyntaxError::t _$args99162_)))
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
      (lambda (_self99065_ _port99066_)
        (letrec ((_location99068_
                  (lambda ()
                    (let _lp99122_ ((_rest99124_
                                     (##unchecked-structure-ref
                                      _self99065_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest9912599133_ _rest99124_)
                             (_else9912799141_ (lambda () '#f))
                             (_K9912999150_
                              (lambda (_rest99144_ _hd99145_)
                                (let ((_$e99147_ (__AST-source _hd99145_)))
                                  (if _$e99147_
                                      _$e99147_
                                      (_lp99122_ _rest99144_))))))
                        (if (##pair? _rest9912599133_)
                            (let ((_hd9913099153_ (##car _rest9912599133_))
                                  (_tl9913199155_ (##cdr _rest9912599133_)))
                              (let* ((_hd99158_ _hd9913099153_)
                                     (_rest99160_ _tl9913199155_))
                                (_K9912999150_ _rest99160_ _hd99158_)))
                            (_else9912799141_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e99071_ (_location99068_)))
               (if _$e99071_
                   ((lambda (_where99074_)
                      (##display-locat _where99074_ '#t (current-output-port)))
                    _$e99071_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e99076_
                    (##unchecked-structure-ref
                     _self99065_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e99076_
                   ((lambda (_where99079_)
                      (displayln
                       '" at "
                       _where99079_
                       '": "
                       (##unchecked-structure-ref
                        _self99065_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e99076_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self99065_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g9908099088_
                     (##unchecked-structure-ref
                      _self99065_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else9908299096_ (lambda () '#!void))
                    (_K9908499109_
                     (lambda (_rest99099_ _stx99100_)
                       (display '"... form:   ")
                       (__pp-syntax _stx99100_)
                       (for-each
                        (lambda (_detail99102_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail99102_))
                          (let ((_$e99104_ (__AST-source _detail99102_)))
                            (if _$e99104_
                                ((lambda (_loc99107_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc99107_
                                    '#t
                                    (current-output-port)))
                                 _$e99104_)
                                '#!void))
                          (newline))
                        _rest99099_))))
               (if (##pair? _g9908099088_)
                   (let ((_hd9908599112_ (##car _g9908099088_))
                         (_tl9908699114_ (##cdr _g9908099088_)))
                     (let* ((_stx99117_ _hd9908599112_)
                            (_rest99119_ _tl9908699114_))
                       (_K9908499109_ _rest99119_ _stx99117_)))
                   '#!void)))
           current-output-port
           _port99066_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message98936_
               _irritants98937_
               _where98938_
               _context98939_
               _marks98940_
               _phi98941_)
        (let ((__obj103451 (make-object SyntaxError::t '7)))
          (##unchecked-structure-set!
           __obj103451
           _message98936_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103451
           _irritants98937_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103451
           _where98938_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103451
           _context98939_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103451
           _marks98940_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103451
           _phi98941_
           '5
           SyntaxError::t
           '#f)
          __obj103451)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where98931_ _message98932_ _stx98933_ . _details98934_)
        (raise (make-syntax-error
                _message98932_
                (cons _stx98933_ _details98934_)
                _where98931_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type
       'gerbil#AST::t
       'syntax
       '#f
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args98928_ (apply make-struct-instance AST::t _$args98928_)))
    (define AST-e (make-struct-slot-accessor AST::t 'e))
    (define AST-source (make-struct-slot-accessor AST::t 'source))
    (define AST-e-set! (make-struct-slot-mutator AST::t 'e))
    (define AST-source-set! (make-struct-slot-mutator AST::t 'source))
    (define &AST-e (make-struct-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (make-struct-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (make-struct-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (make-struct-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_stx98926_)
        (if (##structure-instance-of? _stx98926_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx98926_ '1 AST::t '#f)
            _stx98926_)))
    (define __AST-source
      (lambda (_stx98920_)
        (let _lp98922_ ((_src98924_ _stx98920_))
          (if (##structure-instance-of? _src98924_ 'gerbil#AST::t)
              (_lp98922_ (##unchecked-structure-ref _src98924_ '2 AST::t '#f))
              (if (##locat? _src98924_) _src98924_ '#f)))))
    (define __AST
      (lambda (_e98912_ _src-stx98913_)
        (let ((_src98915_ (__AST-source _src-stx98913_)))
          (if (or (##structure-instance-of? _e98912_ 'gerbil#AST::t)
                  (not _src98915_))
              _e98912_
              (##structure AST::t _e98912_ _src98915_)))))
    (define __AST-eq?
      (lambda (_stx98909_ _obj98910_) (eq? (__AST-e _stx98909_) _obj98910_)))
    (define __AST-pair? (lambda (_stx98907_) (pair? (__AST-e _stx98907_))))
    (define __AST-null? (lambda (_stx98905_) (null? (__AST-e _stx98905_))))
    (define __AST-datum?
      (lambda (_stx98886_)
        (let* ((_e98888_ (__AST-e _stx98886_)) (_$e98890_ (number? _e98888_)))
          (if _$e98890_
              _$e98890_
              (let ((_$e98893_ (string? _e98888_)))
                (if _$e98893_
                    _$e98893_
                    (let ((_$e98896_ (char? _e98888_)))
                      (if _$e98896_
                          _$e98896_
                          (let ((_$e98899_ (keyword? _e98888_)))
                            (if _$e98899_
                                _$e98899_
                                (let ((_$e98902_ (boolean? _e98888_)))
                                  (if _$e98902_
                                      _$e98902_
                                      (eq? _e98888_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx98884_) (symbol? (__AST-e _stx98884_))))
    (define __AST-id-list?__%
      (lambda (_stx98835_ _tail?98836_)
        (let _lp98838_ ((_rest98840_ _stx98835_))
          (let* ((_$e98842_ _rest98840_)
                 (_$E9884498857_
                  (lambda ()
                    (let* ((_$E9884598852_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e98842_)))
                           (_rest98855_ _$e98842_))
                      (_tail?98836_ _rest98855_)))))
            (if (__AST-pair? _$e98842_)
                (let* ((_$tgt9884698860_ (__AST-e _$e98842_))
                       (_$hd9884798863_ (##car _$tgt9884698860_))
                       (_$tl9884898866_ (##cdr _$tgt9884698860_)))
                  (let* ((_hd98870_ _$hd9884798863_)
                         (_rest98872_ _$tl9884898866_))
                    (if (__AST-id? _hd98870_) (_lp98838_ _rest98872_) '#f)))
                (_$E9884498857_))))))
    (define __AST-id-list?__0
      (lambda (_stx98877_)
        (let ((_tail?98879_ __AST-null?))
          (__AST-id-list?__% _stx98877_ _tail?98879_))))
    (define __AST-id-list?
      (lambda _g103454_
        (let ((_g103453_ (##length _g103454_)))
          (cond ((##fx= _g103453_ 1)
                 (apply (lambda (_stx98877_) (__AST-id-list?__0 _stx98877_))
                        _g103454_))
                ((##fx= _g103453_ 2)
                 (apply (lambda (_stx98881_ _tail?98882_)
                          (__AST-id-list?__% _stx98881_ _tail?98882_))
                        _g103454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g103454_))))))
    (define __AST-bind-list?
      (lambda (_stx98827_)
        (__AST-id-list?__%
         _stx98827_
         (lambda (_e98829_)
           (let ((_$e98831_ (__AST-null? _e98829_)))
             (if _$e98831_ _$e98831_ (__AST-id? _e98829_)))))))
    (define __AST-list?__%
      (lambda (_stx98780_ _tail?98781_)
        (let _lp98783_ ((_rest98785_ _stx98780_))
          (let* ((_$e98787_ _rest98785_)
                 (_$E9878998802_
                  (lambda ()
                    (let* ((_$E9879098797_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e98787_)))
                           (_rest98800_ _$e98787_))
                      (_tail?98781_ _rest98800_)))))
            (if (__AST-pair? _$e98787_)
                (let* ((_$tgt9879198805_ (__AST-e _$e98787_))
                       (_$hd9879298808_ (##car _$tgt9879198805_))
                       (_$tl9879398811_ (##cdr _$tgt9879198805_)))
                  (let ((_rest98815_ _$tl9879398811_))
                    (_lp98783_ _rest98815_)))
                (_$E9878998802_))))))
    (define __AST-list?__0
      (lambda (_stx98820_)
        (let ((_tail?98822_ __AST-null?))
          (__AST-list?__% _stx98820_ _tail?98822_))))
    (define __AST-list?
      (lambda _g103456_
        (let ((_g103455_ (##length _g103456_)))
          (cond ((##fx= _g103455_ 1)
                 (apply (lambda (_stx98820_) (__AST-list?__0 _stx98820_))
                        _g103456_))
                ((##fx= _g103455_ 2)
                 (apply (lambda (_stx98824_ _tail?98825_)
                          (__AST-list?__% _stx98824_ _tail?98825_))
                        _g103456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g103456_))))))
    (define __AST->list
      (lambda (_stx98745_)
        (let* ((_$e98747_ _stx98745_)
               (_$E9874998762_
                (lambda ()
                  (let* ((_$E9875098757_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e98747_)))
                         (_rest98760_ _$e98747_))
                    (__AST-e _rest98760_)))))
          (if (__AST-pair? _$e98747_)
              (let* ((_$tgt9875198765_ (__AST-e _$e98747_))
                     (_$hd9875298768_ (##car _$tgt9875198765_))
                     (_$tl9875398771_ (##cdr _$tgt9875198765_)))
                (let* ((_hd98775_ _$hd9875298768_)
                       (_rest98777_ _$tl9875398771_))
                  (cons _hd98775_ (__AST->list _rest98777_))))
              (_$E9874998762_)))))
    (define __AST->datum
      (lambda (_stx98743_)
        (if (##structure-instance-of? _stx98743_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx98743_))
            (if (pair? _stx98743_)
                (cons (__AST->datum (car _stx98743_))
                      (__AST->datum (cdr _stx98743_)))
                (if (vector? _stx98743_)
                    (vector-map __AST->datum _stx98743_)
                    (if (box? _stx98743_)
                        (box (__AST->datum (unbox _stx98743_)))
                        _stx98743_))))))
    (define get-readenv
      (lambda (_port98741_)
        (##make-readenv
         _port98741_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in98729_)
        (let ((_e98731_ (##read-datum-or-eof (get-readenv _in98729_))))
          (if (eof-object? (__AST-e _e98731_)) (__AST-e _e98731_) _e98731_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in98737_ (current-input-port))) (read-syntax__% _in98737_))))
    (define read-syntax
      (lambda _g103458_
        (let ((_g103457_ (##length _g103458_)))
          (cond ((##fx= _g103457_ 0)
                 (apply (lambda () (read-syntax__0)) _g103458_))
                ((##fx= _g103457_ 1)
                 (apply (lambda (_in98739_) (read-syntax__% _in98739_))
                        _g103458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g103458_))))))
    (define read-syntax-from-file
      (lambda (_path98724_)
        (let ((_r98726_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path98724_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r98726_)
              (cdr (__AST-e (vector-ref _r98726_ '1)))
              (error (err-code->string _r98726_) _path98724_)))))
    (define __wrap-syntax
      (lambda (_re98721_ _e98722_)
        (if (eof-object? _e98722_)
            _e98722_
            (##structure AST::t _e98722_ (##readenv->locat _re98721_)))))
    (define __unwrap-syntax (lambda (_re98718_ _e98719_) (__AST-e _e98719_)))
    (define __pp-syntax (lambda (_stx98716_) (pp (__AST->datum _stx98716_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt98714_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt98714_ '#t)
          (macro-readtable-bracket-handler-set! _rt98714_ '@list)
          (macro-readtable-brace-handler-set! _rt98714_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt98714_
           '#\!
           __read-sharp-bang)
          _rt98714_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt98710_ _kw98711_)
        (macro-readtable-bracket-handler-set! _rt98710_ _kw98711_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt98707_ _kw98708_)
        (macro-readtable-brace-handler-set! _rt98707_ _kw98708_)))
    (define __read-sharp-bang
      (lambda (_re98698_ _next98699_ _start-pos98700_)
        (if (eq? _start-pos98700_ '0)
            (let* ((_line98702_
                    (##read-line
                     (macro-readenv-port _re98698_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line98704_
                    (substring _line98702_ '1 (string-length _line98702_))))
              (macro-readenv-script-line-set! _re98698_ _script-line98704_)
              (##script-marker))
            (##read-sharp-bang _re98698_ _next98699_ _start-pos98700_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj98696_)
        (if (source-location? _obj98696_)
            (string? (##locat-container _obj98696_))
            '#f)))
    (define source-location-path
      (lambda (_obj98694_)
        (if (##locat? _obj98694_)
            (##container->path (##locat-container _obj98694_))
            '#f)))))
