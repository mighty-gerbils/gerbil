(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707674930)
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
      (lambda _$args102641_
        (apply make-instance SyntaxError::t _$args102641_)))
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
      (lambda (_self102544_ _port102545_)
        (letrec ((_location102547_
                  (lambda ()
                    (let _lp102601_ ((_rest102603_
                                      (##unchecked-structure-ref
                                       _self102544_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102604102612_ _rest102603_)
                             (_else102606102620_ (lambda () '#f))
                             (_K102608102629_
                              (lambda (_rest102623_ _hd102624_)
                                (let ((_$e102626_ (__AST-source _hd102624_)))
                                  (if _$e102626_
                                      _$e102626_
                                      (_lp102601_ _rest102623_))))))
                        (if (##pair? _rest102604102612_)
                            (let ((_hd102609102632_ (##car _rest102604102612_))
                                  (_tl102610102634_
                                   (##cdr _rest102604102612_)))
                              (let* ((_hd102637_ _hd102609102632_)
                                     (_rest102639_ _tl102610102634_))
                                (_K102608102629_ _rest102639_ _hd102637_)))
                            (_else102606102620_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102550_ (_location102547_)))
               (if _$e102550_
                   ((lambda (_where102553_)
                      (##display-locat
                       _where102553_
                       '#t
                       (current-output-port)))
                    _$e102550_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102555_
                    (##unchecked-structure-ref
                     _self102544_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102555_
                   ((lambda (_where102558_)
                      (displayln
                       '" at "
                       _where102558_
                       '": "
                       (##unchecked-structure-ref
                        _self102544_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102555_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102544_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102559102567_
                     (##unchecked-structure-ref
                      _self102544_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102561102575_ (lambda () '#!void))
                    (_K102563102588_
                     (lambda (_rest102578_ _stx102579_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102579_)
                       (for-each
                        (lambda (_detail102581_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102581_))
                          (let ((_$e102583_ (__AST-source _detail102581_)))
                            (if _$e102583_
                                ((lambda (_loc102586_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102586_
                                    '#t
                                    (current-output-port)))
                                 _$e102583_)
                                '#!void))
                          (newline))
                        _rest102578_))))
               (if (##pair? _g102559102567_)
                   (let ((_hd102564102591_ (##car _g102559102567_))
                         (_tl102565102593_ (##cdr _g102559102567_)))
                     (let* ((_stx102596_ _hd102564102591_)
                            (_rest102598_ _tl102565102593_))
                       (_K102563102588_ _rest102598_ _stx102596_)))
                   '#!void)))
           current-output-port
           _port102545_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message102415_
               _irritants102416_
               _where102417_
               _context102418_
               _marks102419_
               _phi102420_)
        (let ((__obj107304
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj107304
           _message102415_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107304
           _irritants102416_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107304
           _where102417_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107304
           _context102418_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107304
           _marks102419_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107304
           _phi102420_
           '5
           SyntaxError::t
           '#f)
          __obj107304)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where102410_ _message102411_ _stx102412_ . _details102413_)
        (raise (make-syntax-error
                _message102411_
                (cons _stx102412_ _details102413_)
                _where102410_
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
      (lambda _$args102407_ (apply make-instance AST::t _$args102407_)))
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
      (lambda (_stx102405_)
        (if (##structure-instance-of? _stx102405_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx102405_ '1 AST::t '#f)
            _stx102405_)))
    (define __AST-source
      (lambda (_stx102399_)
        (let _lp102401_ ((_src102403_ _stx102399_))
          (if (##structure-instance-of? _src102403_ 'gerbil#AST::t)
              (_lp102401_
               (##unchecked-structure-ref _src102403_ '2 AST::t '#f))
              (if (##locat? _src102403_) _src102403_ '#f)))))
    (define __AST
      (lambda (_e102391_ _src-stx102392_)
        (let ((_src102394_ (__AST-source _src-stx102392_)))
          (if (or (##structure-instance-of? _e102391_ 'gerbil#AST::t)
                  (not _src102394_))
              _e102391_
              (##structure AST::t _e102391_ _src102394_)))))
    (define __AST-eq?
      (lambda (_stx102388_ _obj102389_)
        (eq? (__AST-e _stx102388_) _obj102389_)))
    (define __AST-pair? (lambda (_stx102386_) (pair? (__AST-e _stx102386_))))
    (define __AST-null? (lambda (_stx102384_) (null? (__AST-e _stx102384_))))
    (define __AST-datum?
      (lambda (_stx102365_)
        (let* ((_e102367_ (__AST-e _stx102365_))
               (_$e102369_ (number? _e102367_)))
          (if _$e102369_
              _$e102369_
              (let ((_$e102372_ (string? _e102367_)))
                (if _$e102372_
                    _$e102372_
                    (let ((_$e102375_ (char? _e102367_)))
                      (if _$e102375_
                          _$e102375_
                          (let ((_$e102378_ (keyword? _e102367_)))
                            (if _$e102378_
                                _$e102378_
                                (let ((_$e102381_ (boolean? _e102367_)))
                                  (if _$e102381_
                                      _$e102381_
                                      (eq? _e102367_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx102363_) (symbol? (__AST-e _stx102363_))))
    (define __AST-id-list?__%
      (lambda (_stx102314_ _tail?102315_)
        (let _lp102317_ ((_rest102319_ _stx102314_))
          (let* ((_$e102321_ _rest102319_)
                 (_$E102323102336_
                  (lambda ()
                    (let* ((_$E102324102331_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102321_)))
                           (_rest102334_ _$e102321_))
                      (_tail?102315_ _rest102334_)))))
            (if (__AST-pair? _$e102321_)
                (let* ((_$tgt102325102339_ (__AST-e _$e102321_))
                       (_$hd102326102342_ (##car _$tgt102325102339_))
                       (_$tl102327102345_ (##cdr _$tgt102325102339_)))
                  (let* ((_hd102349_ _$hd102326102342_)
                         (_rest102351_ _$tl102327102345_))
                    (if (__AST-id? _hd102349_) (_lp102317_ _rest102351_) '#f)))
                (_$E102323102336_))))))
    (define __AST-id-list?__0
      (lambda (_stx102356_)
        (let ((_tail?102358_ __AST-null?))
          (__AST-id-list?__% _stx102356_ _tail?102358_))))
    (define __AST-id-list?
      (lambda _g107307_
        (let ((_g107306_ (##length _g107307_)))
          (cond ((##fx= _g107306_ 1)
                 (apply (lambda (_stx102356_) (__AST-id-list?__0 _stx102356_))
                        _g107307_))
                ((##fx= _g107306_ 2)
                 (apply (lambda (_stx102360_ _tail?102361_)
                          (__AST-id-list?__% _stx102360_ _tail?102361_))
                        _g107307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g107307_))))))
    (define __AST-bind-list?
      (lambda (_stx102306_)
        (__AST-id-list?__%
         _stx102306_
         (lambda (_e102308_)
           (let ((_$e102310_ (__AST-null? _e102308_)))
             (if _$e102310_ _$e102310_ (__AST-id? _e102308_)))))))
    (define __AST-list?__%
      (lambda (_stx102259_ _tail?102260_)
        (let _lp102262_ ((_rest102264_ _stx102259_))
          (let* ((_$e102266_ _rest102264_)
                 (_$E102268102281_
                  (lambda ()
                    (let* ((_$E102269102276_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102266_)))
                           (_rest102279_ _$e102266_))
                      (_tail?102260_ _rest102279_)))))
            (if (__AST-pair? _$e102266_)
                (let* ((_$tgt102270102284_ (__AST-e _$e102266_))
                       (_$hd102271102287_ (##car _$tgt102270102284_))
                       (_$tl102272102290_ (##cdr _$tgt102270102284_)))
                  (let ((_rest102294_ _$tl102272102290_))
                    (_lp102262_ _rest102294_)))
                (_$E102268102281_))))))
    (define __AST-list?__0
      (lambda (_stx102299_)
        (let ((_tail?102301_ __AST-null?))
          (__AST-list?__% _stx102299_ _tail?102301_))))
    (define __AST-list?
      (lambda _g107309_
        (let ((_g107308_ (##length _g107309_)))
          (cond ((##fx= _g107308_ 1)
                 (apply (lambda (_stx102299_) (__AST-list?__0 _stx102299_))
                        _g107309_))
                ((##fx= _g107308_ 2)
                 (apply (lambda (_stx102303_ _tail?102304_)
                          (__AST-list?__% _stx102303_ _tail?102304_))
                        _g107309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g107309_))))))
    (define __AST->list
      (lambda (_stx102224_)
        (let* ((_$e102226_ _stx102224_)
               (_$E102228102241_
                (lambda ()
                  (let* ((_$E102229102236_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e102226_)))
                         (_rest102239_ _$e102226_))
                    (__AST-e _rest102239_)))))
          (if (__AST-pair? _$e102226_)
              (let* ((_$tgt102230102244_ (__AST-e _$e102226_))
                     (_$hd102231102247_ (##car _$tgt102230102244_))
                     (_$tl102232102250_ (##cdr _$tgt102230102244_)))
                (let* ((_hd102254_ _$hd102231102247_)
                       (_rest102256_ _$tl102232102250_))
                  (cons _hd102254_ (__AST->list _rest102256_))))
              (_$E102228102241_)))))
    (define __AST->datum
      (lambda (_stx102222_)
        (if (##structure-instance-of? _stx102222_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx102222_))
            (if (pair? _stx102222_)
                (cons (__AST->datum (car _stx102222_))
                      (__AST->datum (cdr _stx102222_)))
                (if (vector? _stx102222_)
                    (vector-map __AST->datum _stx102222_)
                    (if (box? _stx102222_)
                        (box (__AST->datum (unbox _stx102222_)))
                        _stx102222_))))))
    (define get-readenv
      (lambda (_port102220_)
        (##make-readenv
         _port102220_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in102208_)
        (let ((_e102210_ (##read-datum-or-eof (get-readenv _in102208_))))
          (if (eof-object? (__AST-e _e102210_))
              (__AST-e _e102210_)
              _e102210_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in102216_ (current-input-port))) (read-syntax__% _in102216_))))
    (define read-syntax
      (lambda _g107311_
        (let ((_g107310_ (##length _g107311_)))
          (cond ((##fx= _g107310_ 0)
                 (apply (lambda () (read-syntax__0)) _g107311_))
                ((##fx= _g107310_ 1)
                 (apply (lambda (_in102218_) (read-syntax__% _in102218_))
                        _g107311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g107311_))))))
    (define read-syntax-from-file
      (lambda (_path102203_)
        (let ((_r102205_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path102203_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r102205_)
              (cdr (__AST-e (vector-ref _r102205_ '1)))
              (error (err-code->string _r102205_) _path102203_)))))
    (define __wrap-syntax
      (lambda (_re102200_ _e102201_)
        (if (eof-object? _e102201_)
            _e102201_
            (##structure AST::t _e102201_ (##readenv->locat _re102200_)))))
    (define __unwrap-syntax
      (lambda (_re102197_ _e102198_) (__AST-e _e102198_)))
    (define __pp-syntax (lambda (_stx102195_) (pp (__AST->datum _stx102195_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt102193_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt102193_ '#t)
          (macro-readtable-bracket-handler-set! _rt102193_ '@list)
          (macro-readtable-brace-handler-set! _rt102193_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt102193_
           '#\!
           __read-sharp-bang)
          _rt102193_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt102189_ _kw102190_)
        (macro-readtable-bracket-handler-set! _rt102189_ _kw102190_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt102186_ _kw102187_)
        (macro-readtable-brace-handler-set! _rt102186_ _kw102187_)))
    (define __read-sharp-bang
      (lambda (_re102177_ _next102178_ _start-pos102179_)
        (if (eq? _start-pos102179_ '0)
            (let* ((_line102181_
                    (##read-line
                     (macro-readenv-port _re102177_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line102183_
                    (substring _line102181_ '1 (string-length _line102181_))))
              (macro-readenv-script-line-set! _re102177_ _script-line102183_)
              (##script-marker))
            (##read-sharp-bang _re102177_ _next102178_ _start-pos102179_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj102175_)
        (if (source-location? _obj102175_)
            (string? (##locat-container _obj102175_))
            '#f)))
    (define source-location-path
      (lambda (_obj102173_)
        (if (##locat? _obj102173_)
            (##container->path (##locat-container _obj102173_))
            '#f)))))
