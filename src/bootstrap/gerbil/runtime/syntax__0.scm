(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707742539)
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
      (lambda _$args102649_
        (apply make-instance SyntaxError::t _$args102649_)))
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
      (lambda (_self102552_ _port102553_)
        (letrec ((_location102555_
                  (lambda ()
                    (let _lp102609_ ((_rest102611_
                                      (##unchecked-structure-ref
                                       _self102552_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102612102620_ _rest102611_)
                             (_else102614102628_ (lambda () '#f))
                             (_K102616102637_
                              (lambda (_rest102631_ _hd102632_)
                                (let ((_$e102634_ (__AST-source _hd102632_)))
                                  (if _$e102634_
                                      _$e102634_
                                      (_lp102609_ _rest102631_))))))
                        (if (##pair? _rest102612102620_)
                            (let ((_hd102617102640_ (##car _rest102612102620_))
                                  (_tl102618102642_
                                   (##cdr _rest102612102620_)))
                              (let* ((_hd102645_ _hd102617102640_)
                                     (_rest102647_ _tl102618102642_))
                                (_K102616102637_ _rest102647_ _hd102645_)))
                            (_else102614102628_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102558_ (_location102555_)))
               (if _$e102558_
                   ((lambda (_where102561_)
                      (##display-locat
                       _where102561_
                       '#t
                       (current-output-port)))
                    _$e102558_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102563_
                    (##unchecked-structure-ref
                     _self102552_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102563_
                   ((lambda (_where102566_)
                      (displayln
                       '" at "
                       _where102566_
                       '": "
                       (##unchecked-structure-ref
                        _self102552_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102563_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102552_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102567102575_
                     (##unchecked-structure-ref
                      _self102552_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102569102583_ (lambda () '#!void))
                    (_K102571102596_
                     (lambda (_rest102586_ _stx102587_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102587_)
                       (for-each
                        (lambda (_detail102589_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102589_))
                          (let ((_$e102591_ (__AST-source _detail102589_)))
                            (if _$e102591_
                                ((lambda (_loc102594_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102594_
                                    '#t
                                    (current-output-port)))
                                 _$e102591_)
                                '#!void))
                          (newline))
                        _rest102586_))))
               (if (##pair? _g102567102575_)
                   (let ((_hd102572102599_ (##car _g102567102575_))
                         (_tl102573102601_ (##cdr _g102567102575_)))
                     (let* ((_stx102604_ _hd102572102599_)
                            (_rest102606_ _tl102573102601_))
                       (_K102571102596_ _rest102606_ _stx102604_)))
                   '#!void)))
           current-output-port
           _port102553_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message102423_
               _irritants102424_
               _where102425_
               _context102426_
               _marks102427_
               _phi102428_)
        (let ((__obj107312
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj107312
           _message102423_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107312
           _irritants102424_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107312
           _where102425_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107312
           _context102426_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107312
           _marks102427_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107312
           _phi102428_
           '5
           SyntaxError::t
           '#f)
          __obj107312)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where102418_ _message102419_ _stx102420_ . _details102421_)
        (raise (make-syntax-error
                _message102419_
                (cons _stx102420_ _details102421_)
                _where102418_
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
      (lambda _$args102415_ (apply make-instance AST::t _$args102415_)))
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
      (lambda (_stx102413_)
        (if (##structure-instance-of? _stx102413_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx102413_ '1 AST::t '#f)
            _stx102413_)))
    (define __AST-source
      (lambda (_stx102407_)
        (let _lp102409_ ((_src102411_ _stx102407_))
          (if (##structure-instance-of? _src102411_ 'gerbil#AST::t)
              (_lp102409_
               (##unchecked-structure-ref _src102411_ '2 AST::t '#f))
              (if (##locat? _src102411_) _src102411_ '#f)))))
    (define __AST
      (lambda (_e102399_ _src-stx102400_)
        (let ((_src102402_ (__AST-source _src-stx102400_)))
          (if (or (##structure-instance-of? _e102399_ 'gerbil#AST::t)
                  (not _src102402_))
              _e102399_
              (##structure AST::t _e102399_ _src102402_)))))
    (define __AST-eq?
      (lambda (_stx102396_ _obj102397_)
        (eq? (__AST-e _stx102396_) _obj102397_)))
    (define __AST-pair? (lambda (_stx102394_) (pair? (__AST-e _stx102394_))))
    (define __AST-null? (lambda (_stx102392_) (null? (__AST-e _stx102392_))))
    (define __AST-datum?
      (lambda (_stx102373_)
        (let* ((_e102375_ (__AST-e _stx102373_))
               (_$e102377_ (number? _e102375_)))
          (if _$e102377_
              _$e102377_
              (let ((_$e102380_ (string? _e102375_)))
                (if _$e102380_
                    _$e102380_
                    (let ((_$e102383_ (char? _e102375_)))
                      (if _$e102383_
                          _$e102383_
                          (let ((_$e102386_ (keyword? _e102375_)))
                            (if _$e102386_
                                _$e102386_
                                (let ((_$e102389_ (boolean? _e102375_)))
                                  (if _$e102389_
                                      _$e102389_
                                      (eq? _e102375_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx102371_) (symbol? (__AST-e _stx102371_))))
    (define __AST-id-list?__%
      (lambda (_stx102322_ _tail?102323_)
        (let _lp102325_ ((_rest102327_ _stx102322_))
          (let* ((_$e102329_ _rest102327_)
                 (_$E102331102344_
                  (lambda ()
                    (let* ((_$E102332102339_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102329_)))
                           (_rest102342_ _$e102329_))
                      (_tail?102323_ _rest102342_)))))
            (if (__AST-pair? _$e102329_)
                (let* ((_$tgt102333102347_ (__AST-e _$e102329_))
                       (_$hd102334102350_ (##car _$tgt102333102347_))
                       (_$tl102335102353_ (##cdr _$tgt102333102347_)))
                  (let* ((_hd102357_ _$hd102334102350_)
                         (_rest102359_ _$tl102335102353_))
                    (if (__AST-id? _hd102357_) (_lp102325_ _rest102359_) '#f)))
                (_$E102331102344_))))))
    (define __AST-id-list?__0
      (lambda (_stx102364_)
        (let ((_tail?102366_ __AST-null?))
          (__AST-id-list?__% _stx102364_ _tail?102366_))))
    (define __AST-id-list?
      (lambda _g107315_
        (let ((_g107314_ (##length _g107315_)))
          (cond ((##fx= _g107314_ 1)
                 (apply (lambda (_stx102364_) (__AST-id-list?__0 _stx102364_))
                        _g107315_))
                ((##fx= _g107314_ 2)
                 (apply (lambda (_stx102368_ _tail?102369_)
                          (__AST-id-list?__% _stx102368_ _tail?102369_))
                        _g107315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g107315_))))))
    (define __AST-bind-list?
      (lambda (_stx102314_)
        (__AST-id-list?__%
         _stx102314_
         (lambda (_e102316_)
           (let ((_$e102318_ (__AST-null? _e102316_)))
             (if _$e102318_ _$e102318_ (__AST-id? _e102316_)))))))
    (define __AST-list?__%
      (lambda (_stx102267_ _tail?102268_)
        (let _lp102270_ ((_rest102272_ _stx102267_))
          (let* ((_$e102274_ _rest102272_)
                 (_$E102276102289_
                  (lambda ()
                    (let* ((_$E102277102284_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102274_)))
                           (_rest102287_ _$e102274_))
                      (_tail?102268_ _rest102287_)))))
            (if (__AST-pair? _$e102274_)
                (let* ((_$tgt102278102292_ (__AST-e _$e102274_))
                       (_$hd102279102295_ (##car _$tgt102278102292_))
                       (_$tl102280102298_ (##cdr _$tgt102278102292_)))
                  (let ((_rest102302_ _$tl102280102298_))
                    (_lp102270_ _rest102302_)))
                (_$E102276102289_))))))
    (define __AST-list?__0
      (lambda (_stx102307_)
        (let ((_tail?102309_ __AST-null?))
          (__AST-list?__% _stx102307_ _tail?102309_))))
    (define __AST-list?
      (lambda _g107317_
        (let ((_g107316_ (##length _g107317_)))
          (cond ((##fx= _g107316_ 1)
                 (apply (lambda (_stx102307_) (__AST-list?__0 _stx102307_))
                        _g107317_))
                ((##fx= _g107316_ 2)
                 (apply (lambda (_stx102311_ _tail?102312_)
                          (__AST-list?__% _stx102311_ _tail?102312_))
                        _g107317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g107317_))))))
    (define __AST->list
      (lambda (_stx102232_)
        (let* ((_$e102234_ _stx102232_)
               (_$E102236102249_
                (lambda ()
                  (let* ((_$E102237102244_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e102234_)))
                         (_rest102247_ _$e102234_))
                    (__AST-e _rest102247_)))))
          (if (__AST-pair? _$e102234_)
              (let* ((_$tgt102238102252_ (__AST-e _$e102234_))
                     (_$hd102239102255_ (##car _$tgt102238102252_))
                     (_$tl102240102258_ (##cdr _$tgt102238102252_)))
                (let* ((_hd102262_ _$hd102239102255_)
                       (_rest102264_ _$tl102240102258_))
                  (cons _hd102262_ (__AST->list _rest102264_))))
              (_$E102236102249_)))))
    (define __AST->datum
      (lambda (_stx102230_)
        (if (##structure-instance-of? _stx102230_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx102230_))
            (if (pair? _stx102230_)
                (cons (__AST->datum (car _stx102230_))
                      (__AST->datum (cdr _stx102230_)))
                (if (vector? _stx102230_)
                    (vector-map __AST->datum _stx102230_)
                    (if (box? _stx102230_)
                        (box (__AST->datum (unbox _stx102230_)))
                        _stx102230_))))))
    (define get-readenv
      (lambda (_port102228_)
        (##make-readenv
         _port102228_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in102216_)
        (let ((_e102218_ (##read-datum-or-eof (get-readenv _in102216_))))
          (if (eof-object? (__AST-e _e102218_))
              (__AST-e _e102218_)
              _e102218_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in102224_ (current-input-port))) (read-syntax__% _in102224_))))
    (define read-syntax
      (lambda _g107319_
        (let ((_g107318_ (##length _g107319_)))
          (cond ((##fx= _g107318_ 0)
                 (apply (lambda () (read-syntax__0)) _g107319_))
                ((##fx= _g107318_ 1)
                 (apply (lambda (_in102226_) (read-syntax__% _in102226_))
                        _g107319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g107319_))))))
    (define read-syntax-from-file
      (lambda (_path102211_)
        (let ((_r102213_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path102211_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r102213_)
              (cdr (__AST-e (vector-ref _r102213_ '1)))
              (error (err-code->string _r102213_) _path102211_)))))
    (define __wrap-syntax
      (lambda (_re102208_ _e102209_)
        (if (eof-object? _e102209_)
            _e102209_
            (##structure AST::t _e102209_ (##readenv->locat _re102208_)))))
    (define __unwrap-syntax
      (lambda (_re102205_ _e102206_) (__AST-e _e102206_)))
    (define __pp-syntax (lambda (_stx102203_) (pp (__AST->datum _stx102203_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt102201_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt102201_ '#t)
          (macro-readtable-bracket-handler-set! _rt102201_ '@list)
          (macro-readtable-brace-handler-set! _rt102201_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt102201_
           '#\!
           __read-sharp-bang)
          _rt102201_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt102197_ _kw102198_)
        (macro-readtable-bracket-handler-set! _rt102197_ _kw102198_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt102194_ _kw102195_)
        (macro-readtable-brace-handler-set! _rt102194_ _kw102195_)))
    (define __read-sharp-bang
      (lambda (_re102185_ _next102186_ _start-pos102187_)
        (if (eq? _start-pos102187_ '0)
            (let* ((_line102189_
                    (##read-line
                     (macro-readenv-port _re102185_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line102191_
                    (substring _line102189_ '1 (string-length _line102189_))))
              (macro-readenv-script-line-set! _re102185_ _script-line102191_)
              (##script-marker))
            (##read-sharp-bang _re102185_ _next102186_ _start-pos102187_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj102183_)
        (if (source-location? _obj102183_)
            (string? (##locat-container _obj102183_))
            '#f)))
    (define source-location-path
      (lambda (_obj102181_)
        (if (##locat? _obj102181_)
            (##container->path (##locat-container _obj102181_))
            '#f)))))
