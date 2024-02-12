(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707740666)
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
      (lambda _$args102651_
        (apply make-instance SyntaxError::t _$args102651_)))
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
      (lambda (_self102554_ _port102555_)
        (letrec ((_location102557_
                  (lambda ()
                    (let _lp102611_ ((_rest102613_
                                      (##unchecked-structure-ref
                                       _self102554_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102614102622_ _rest102613_)
                             (_else102616102630_ (lambda () '#f))
                             (_K102618102639_
                              (lambda (_rest102633_ _hd102634_)
                                (let ((_$e102636_ (__AST-source _hd102634_)))
                                  (if _$e102636_
                                      _$e102636_
                                      (_lp102611_ _rest102633_))))))
                        (if (##pair? _rest102614102622_)
                            (let ((_hd102619102642_ (##car _rest102614102622_))
                                  (_tl102620102644_
                                   (##cdr _rest102614102622_)))
                              (let* ((_hd102647_ _hd102619102642_)
                                     (_rest102649_ _tl102620102644_))
                                (_K102618102639_ _rest102649_ _hd102647_)))
                            (_else102616102630_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102560_ (_location102557_)))
               (if _$e102560_
                   ((lambda (_where102563_)
                      (##display-locat
                       _where102563_
                       '#t
                       (current-output-port)))
                    _$e102560_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102565_
                    (##unchecked-structure-ref
                     _self102554_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102565_
                   ((lambda (_where102568_)
                      (displayln
                       '" at "
                       _where102568_
                       '": "
                       (##unchecked-structure-ref
                        _self102554_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102565_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102554_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102569102577_
                     (##unchecked-structure-ref
                      _self102554_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102571102585_ (lambda () '#!void))
                    (_K102573102598_
                     (lambda (_rest102588_ _stx102589_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102589_)
                       (for-each
                        (lambda (_detail102591_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102591_))
                          (let ((_$e102593_ (__AST-source _detail102591_)))
                            (if _$e102593_
                                ((lambda (_loc102596_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102596_
                                    '#t
                                    (current-output-port)))
                                 _$e102593_)
                                '#!void))
                          (newline))
                        _rest102588_))))
               (if (##pair? _g102569102577_)
                   (let ((_hd102574102601_ (##car _g102569102577_))
                         (_tl102575102603_ (##cdr _g102569102577_)))
                     (let* ((_stx102606_ _hd102574102601_)
                            (_rest102608_ _tl102575102603_))
                       (_K102573102598_ _rest102608_ _stx102606_)))
                   '#!void)))
           current-output-port
           _port102555_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message102425_
               _irritants102426_
               _where102427_
               _context102428_
               _marks102429_
               _phi102430_)
        (let ((__obj107314
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj107314
           _message102425_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107314
           _irritants102426_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107314
           _where102427_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107314
           _context102428_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107314
           _marks102429_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107314
           _phi102430_
           '5
           SyntaxError::t
           '#f)
          __obj107314)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where102420_ _message102421_ _stx102422_ . _details102423_)
        (raise (make-syntax-error
                _message102421_
                (cons _stx102422_ _details102423_)
                _where102420_
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
      (lambda _$args102417_ (apply make-instance AST::t _$args102417_)))
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
      (lambda (_stx102415_)
        (if (##structure-instance-of? _stx102415_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx102415_ '1 AST::t '#f)
            _stx102415_)))
    (define __AST-source
      (lambda (_stx102409_)
        (let _lp102411_ ((_src102413_ _stx102409_))
          (if (##structure-instance-of? _src102413_ 'gerbil#AST::t)
              (_lp102411_
               (##unchecked-structure-ref _src102413_ '2 AST::t '#f))
              (if (##locat? _src102413_) _src102413_ '#f)))))
    (define __AST
      (lambda (_e102401_ _src-stx102402_)
        (let ((_src102404_ (__AST-source _src-stx102402_)))
          (if (or (##structure-instance-of? _e102401_ 'gerbil#AST::t)
                  (not _src102404_))
              _e102401_
              (##structure AST::t _e102401_ _src102404_)))))
    (define __AST-eq?
      (lambda (_stx102398_ _obj102399_)
        (eq? (__AST-e _stx102398_) _obj102399_)))
    (define __AST-pair? (lambda (_stx102396_) (pair? (__AST-e _stx102396_))))
    (define __AST-null? (lambda (_stx102394_) (null? (__AST-e _stx102394_))))
    (define __AST-datum?
      (lambda (_stx102375_)
        (let* ((_e102377_ (__AST-e _stx102375_))
               (_$e102379_ (number? _e102377_)))
          (if _$e102379_
              _$e102379_
              (let ((_$e102382_ (string? _e102377_)))
                (if _$e102382_
                    _$e102382_
                    (let ((_$e102385_ (char? _e102377_)))
                      (if _$e102385_
                          _$e102385_
                          (let ((_$e102388_ (keyword? _e102377_)))
                            (if _$e102388_
                                _$e102388_
                                (let ((_$e102391_ (boolean? _e102377_)))
                                  (if _$e102391_
                                      _$e102391_
                                      (eq? _e102377_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx102373_) (symbol? (__AST-e _stx102373_))))
    (define __AST-id-list?__%
      (lambda (_stx102324_ _tail?102325_)
        (let _lp102327_ ((_rest102329_ _stx102324_))
          (let* ((_$e102331_ _rest102329_)
                 (_$E102333102346_
                  (lambda ()
                    (let* ((_$E102334102341_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102331_)))
                           (_rest102344_ _$e102331_))
                      (_tail?102325_ _rest102344_)))))
            (if (__AST-pair? _$e102331_)
                (let* ((_$tgt102335102349_ (__AST-e _$e102331_))
                       (_$hd102336102352_ (##car _$tgt102335102349_))
                       (_$tl102337102355_ (##cdr _$tgt102335102349_)))
                  (let* ((_hd102359_ _$hd102336102352_)
                         (_rest102361_ _$tl102337102355_))
                    (if (__AST-id? _hd102359_) (_lp102327_ _rest102361_) '#f)))
                (_$E102333102346_))))))
    (define __AST-id-list?__0
      (lambda (_stx102366_)
        (let ((_tail?102368_ __AST-null?))
          (__AST-id-list?__% _stx102366_ _tail?102368_))))
    (define __AST-id-list?
      (lambda _g107317_
        (let ((_g107316_ (##length _g107317_)))
          (cond ((##fx= _g107316_ 1)
                 (apply (lambda (_stx102366_) (__AST-id-list?__0 _stx102366_))
                        _g107317_))
                ((##fx= _g107316_ 2)
                 (apply (lambda (_stx102370_ _tail?102371_)
                          (__AST-id-list?__% _stx102370_ _tail?102371_))
                        _g107317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g107317_))))))
    (define __AST-bind-list?
      (lambda (_stx102316_)
        (__AST-id-list?__%
         _stx102316_
         (lambda (_e102318_)
           (let ((_$e102320_ (__AST-null? _e102318_)))
             (if _$e102320_ _$e102320_ (__AST-id? _e102318_)))))))
    (define __AST-list?__%
      (lambda (_stx102269_ _tail?102270_)
        (let _lp102272_ ((_rest102274_ _stx102269_))
          (let* ((_$e102276_ _rest102274_)
                 (_$E102278102291_
                  (lambda ()
                    (let* ((_$E102279102286_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102276_)))
                           (_rest102289_ _$e102276_))
                      (_tail?102270_ _rest102289_)))))
            (if (__AST-pair? _$e102276_)
                (let* ((_$tgt102280102294_ (__AST-e _$e102276_))
                       (_$hd102281102297_ (##car _$tgt102280102294_))
                       (_$tl102282102300_ (##cdr _$tgt102280102294_)))
                  (let ((_rest102304_ _$tl102282102300_))
                    (_lp102272_ _rest102304_)))
                (_$E102278102291_))))))
    (define __AST-list?__0
      (lambda (_stx102309_)
        (let ((_tail?102311_ __AST-null?))
          (__AST-list?__% _stx102309_ _tail?102311_))))
    (define __AST-list?
      (lambda _g107319_
        (let ((_g107318_ (##length _g107319_)))
          (cond ((##fx= _g107318_ 1)
                 (apply (lambda (_stx102309_) (__AST-list?__0 _stx102309_))
                        _g107319_))
                ((##fx= _g107318_ 2)
                 (apply (lambda (_stx102313_ _tail?102314_)
                          (__AST-list?__% _stx102313_ _tail?102314_))
                        _g107319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g107319_))))))
    (define __AST->list
      (lambda (_stx102234_)
        (let* ((_$e102236_ _stx102234_)
               (_$E102238102251_
                (lambda ()
                  (let* ((_$E102239102246_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e102236_)))
                         (_rest102249_ _$e102236_))
                    (__AST-e _rest102249_)))))
          (if (__AST-pair? _$e102236_)
              (let* ((_$tgt102240102254_ (__AST-e _$e102236_))
                     (_$hd102241102257_ (##car _$tgt102240102254_))
                     (_$tl102242102260_ (##cdr _$tgt102240102254_)))
                (let* ((_hd102264_ _$hd102241102257_)
                       (_rest102266_ _$tl102242102260_))
                  (cons _hd102264_ (__AST->list _rest102266_))))
              (_$E102238102251_)))))
    (define __AST->datum
      (lambda (_stx102232_)
        (if (##structure-instance-of? _stx102232_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx102232_))
            (if (pair? _stx102232_)
                (cons (__AST->datum (car _stx102232_))
                      (__AST->datum (cdr _stx102232_)))
                (if (vector? _stx102232_)
                    (vector-map __AST->datum _stx102232_)
                    (if (box? _stx102232_)
                        (box (__AST->datum (unbox _stx102232_)))
                        _stx102232_))))))
    (define get-readenv
      (lambda (_port102230_)
        (##make-readenv
         _port102230_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in102218_)
        (let ((_e102220_ (##read-datum-or-eof (get-readenv _in102218_))))
          (if (eof-object? (__AST-e _e102220_))
              (__AST-e _e102220_)
              _e102220_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in102226_ (current-input-port))) (read-syntax__% _in102226_))))
    (define read-syntax
      (lambda _g107321_
        (let ((_g107320_ (##length _g107321_)))
          (cond ((##fx= _g107320_ 0)
                 (apply (lambda () (read-syntax__0)) _g107321_))
                ((##fx= _g107320_ 1)
                 (apply (lambda (_in102228_) (read-syntax__% _in102228_))
                        _g107321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g107321_))))))
    (define read-syntax-from-file
      (lambda (_path102213_)
        (let ((_r102215_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path102213_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r102215_)
              (cdr (__AST-e (vector-ref _r102215_ '1)))
              (error (err-code->string _r102215_) _path102213_)))))
    (define __wrap-syntax
      (lambda (_re102210_ _e102211_)
        (if (eof-object? _e102211_)
            _e102211_
            (##structure AST::t _e102211_ (##readenv->locat _re102210_)))))
    (define __unwrap-syntax
      (lambda (_re102207_ _e102208_) (__AST-e _e102208_)))
    (define __pp-syntax (lambda (_stx102205_) (pp (__AST->datum _stx102205_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt102203_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt102203_ '#t)
          (macro-readtable-bracket-handler-set! _rt102203_ '@list)
          (macro-readtable-brace-handler-set! _rt102203_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt102203_
           '#\!
           __read-sharp-bang)
          _rt102203_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt102199_ _kw102200_)
        (macro-readtable-bracket-handler-set! _rt102199_ _kw102200_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt102196_ _kw102197_)
        (macro-readtable-brace-handler-set! _rt102196_ _kw102197_)))
    (define __read-sharp-bang
      (lambda (_re102187_ _next102188_ _start-pos102189_)
        (if (eq? _start-pos102189_ '0)
            (let* ((_line102191_
                    (##read-line
                     (macro-readenv-port _re102187_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line102193_
                    (substring _line102191_ '1 (string-length _line102191_))))
              (macro-readenv-script-line-set! _re102187_ _script-line102193_)
              (##script-marker))
            (##read-sharp-bang _re102187_ _next102188_ _start-pos102189_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj102185_)
        (if (source-location? _obj102185_)
            (string? (##locat-container _obj102185_))
            '#f)))
    (define source-location-path
      (lambda (_obj102183_)
        (if (##locat? _obj102183_)
            (##container->path (##locat-container _obj102183_))
            '#f)))))
