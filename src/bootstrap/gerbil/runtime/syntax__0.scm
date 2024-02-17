(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708203244)
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
      (lambda _$args101131_
        (apply make-instance SyntaxError::t _$args101131_)))
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
      (lambda (_self101034_ _port101035_)
        (letrec ((_location101037_
                  (lambda ()
                    (let _lp101091_ ((_rest101093_
                                      (##unchecked-structure-ref
                                       _self101034_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest101094101102_ _rest101093_)
                             (_else101096101110_ (lambda () '#f))
                             (_K101098101119_
                              (lambda (_rest101113_ _hd101114_)
                                (let ((_$e101116_ (__AST-source _hd101114_)))
                                  (if _$e101116_
                                      _$e101116_
                                      (_lp101091_ _rest101113_))))))
                        (if (##pair? _rest101094101102_)
                            (let ((_hd101099101122_ (##car _rest101094101102_))
                                  (_tl101100101124_
                                   (##cdr _rest101094101102_)))
                              (let* ((_hd101127_ _hd101099101122_)
                                     (_rest101129_ _tl101100101124_))
                                (_K101098101119_ _rest101129_ _hd101127_)))
                            (_else101096101110_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e101040_ (_location101037_)))
               (if _$e101040_
                   ((lambda (_where101043_)
                      (##display-locat
                       _where101043_
                       '#t
                       (current-output-port)))
                    _$e101040_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e101045_
                    (##unchecked-structure-ref
                     _self101034_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e101045_
                   ((lambda (_where101048_)
                      (displayln
                       '" at "
                       _where101048_
                       '": "
                       (##unchecked-structure-ref
                        _self101034_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e101045_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self101034_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g101049101057_
                     (##unchecked-structure-ref
                      _self101034_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else101051101065_ (lambda () '#!void))
                    (_K101053101078_
                     (lambda (_rest101068_ _stx101069_)
                       (display '"... form:   ")
                       (__pp-syntax _stx101069_)
                       (for-each
                        (lambda (_detail101071_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail101071_))
                          (let ((_$e101073_ (__AST-source _detail101071_)))
                            (if _$e101073_
                                ((lambda (_loc101076_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc101076_
                                    '#t
                                    (current-output-port)))
                                 _$e101073_)
                                '#!void))
                          (newline))
                        _rest101068_))))
               (if (##pair? _g101049101057_)
                   (let ((_hd101054101081_ (##car _g101049101057_))
                         (_tl101055101083_ (##cdr _g101049101057_)))
                     (let* ((_stx101086_ _hd101054101081_)
                            (_rest101088_ _tl101055101083_))
                       (_K101053101078_ _rest101088_ _stx101086_)))
                   '#!void)))
           current-output-port
           _port101035_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message100905_
               _irritants100906_
               _where100907_
               _context100908_
               _marks100909_
               _phi100910_)
        (let ((__obj105293
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj105293
           _message100905_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105293
           _irritants100906_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105293
           _where100907_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105293
           _context100908_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105293
           _marks100909_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105293
           _phi100910_
           '5
           SyntaxError::t
           '#f)
          __obj105293)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where100900_ _message100901_ _stx100902_ . _details100903_)
        (raise (make-syntax-error
                _message100901_
                (cons _stx100902_ _details100903_)
                _where100900_
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
      (lambda _$args100897_ (apply make-instance AST::t _$args100897_)))
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
      (lambda (_stx100895_)
        (if (##structure-instance-of? _stx100895_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx100895_ '1 AST::t '#f)
            _stx100895_)))
    (define __AST-source
      (lambda (_stx100889_)
        (let _lp100891_ ((_src100893_ _stx100889_))
          (if (##structure-instance-of? _src100893_ 'gerbil#AST::t)
              (_lp100891_
               (##unchecked-structure-ref _src100893_ '2 AST::t '#f))
              (if (##locat? _src100893_) _src100893_ '#f)))))
    (define __AST
      (lambda (_e100881_ _src-stx100882_)
        (let ((_src100884_ (__AST-source _src-stx100882_)))
          (if (or (##structure-instance-of? _e100881_ 'gerbil#AST::t)
                  (not _src100884_))
              _e100881_
              (##structure AST::t _e100881_ _src100884_)))))
    (define __AST-eq?
      (lambda (_stx100878_ _obj100879_)
        (eq? (__AST-e _stx100878_) _obj100879_)))
    (define __AST-pair? (lambda (_stx100876_) (pair? (__AST-e _stx100876_))))
    (define __AST-null? (lambda (_stx100874_) (null? (__AST-e _stx100874_))))
    (define __AST-datum?
      (lambda (_stx100855_)
        (let* ((_e100857_ (__AST-e _stx100855_))
               (_$e100859_ (number? _e100857_)))
          (if _$e100859_
              _$e100859_
              (let ((_$e100862_ (string? _e100857_)))
                (if _$e100862_
                    _$e100862_
                    (let ((_$e100865_ (char? _e100857_)))
                      (if _$e100865_
                          _$e100865_
                          (let ((_$e100868_ (keyword? _e100857_)))
                            (if _$e100868_
                                _$e100868_
                                (let ((_$e100871_ (boolean? _e100857_)))
                                  (if _$e100871_
                                      _$e100871_
                                      (eq? _e100857_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx100853_) (symbol? (__AST-e _stx100853_))))
    (define __AST-id-list?__%
      (lambda (_stx100804_ _tail?100805_)
        (let _lp100807_ ((_rest100809_ _stx100804_))
          (let* ((_$e100811_ _rest100809_)
                 (_$E100813100826_
                  (lambda ()
                    (let* ((_$E100814100821_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e100811_)))
                           (_rest100824_ _$e100811_))
                      (_tail?100805_ _rest100824_)))))
            (if (__AST-pair? _$e100811_)
                (let* ((_$tgt100815100829_ (__AST-e _$e100811_))
                       (_$hd100816100832_ (##car _$tgt100815100829_))
                       (_$tl100817100835_ (##cdr _$tgt100815100829_)))
                  (let* ((_hd100839_ _$hd100816100832_)
                         (_rest100841_ _$tl100817100835_))
                    (if (__AST-id? _hd100839_) (_lp100807_ _rest100841_) '#f)))
                (_$E100813100826_))))))
    (define __AST-id-list?__0
      (lambda (_stx100846_)
        (let ((_tail?100848_ __AST-null?))
          (__AST-id-list?__% _stx100846_ _tail?100848_))))
    (define __AST-id-list?
      (lambda _g105296_
        (let ((_g105295_ (##length _g105296_)))
          (cond ((##fx= _g105295_ 1)
                 (apply (lambda (_stx100846_) (__AST-id-list?__0 _stx100846_))
                        _g105296_))
                ((##fx= _g105295_ 2)
                 (apply (lambda (_stx100850_ _tail?100851_)
                          (__AST-id-list?__% _stx100850_ _tail?100851_))
                        _g105296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g105296_))))))
    (define __AST-bind-list?
      (lambda (_stx100796_)
        (__AST-id-list?__%
         _stx100796_
         (lambda (_e100798_)
           (let ((_$e100800_ (__AST-null? _e100798_)))
             (if _$e100800_ _$e100800_ (__AST-id? _e100798_)))))))
    (define __AST-list?__%
      (lambda (_stx100749_ _tail?100750_)
        (let _lp100752_ ((_rest100754_ _stx100749_))
          (let* ((_$e100756_ _rest100754_)
                 (_$E100758100771_
                  (lambda ()
                    (let* ((_$E100759100766_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e100756_)))
                           (_rest100769_ _$e100756_))
                      (_tail?100750_ _rest100769_)))))
            (if (__AST-pair? _$e100756_)
                (let* ((_$tgt100760100774_ (__AST-e _$e100756_))
                       (_$hd100761100777_ (##car _$tgt100760100774_))
                       (_$tl100762100780_ (##cdr _$tgt100760100774_)))
                  (let ((_rest100784_ _$tl100762100780_))
                    (_lp100752_ _rest100784_)))
                (_$E100758100771_))))))
    (define __AST-list?__0
      (lambda (_stx100789_)
        (let ((_tail?100791_ __AST-null?))
          (__AST-list?__% _stx100789_ _tail?100791_))))
    (define __AST-list?
      (lambda _g105298_
        (let ((_g105297_ (##length _g105298_)))
          (cond ((##fx= _g105297_ 1)
                 (apply (lambda (_stx100789_) (__AST-list?__0 _stx100789_))
                        _g105298_))
                ((##fx= _g105297_ 2)
                 (apply (lambda (_stx100793_ _tail?100794_)
                          (__AST-list?__% _stx100793_ _tail?100794_))
                        _g105298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g105298_))))))
    (define __AST->list
      (lambda (_stx100714_)
        (let* ((_$e100716_ _stx100714_)
               (_$E100718100731_
                (lambda ()
                  (let* ((_$E100719100726_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e100716_)))
                         (_rest100729_ _$e100716_))
                    (__AST-e _rest100729_)))))
          (if (__AST-pair? _$e100716_)
              (let* ((_$tgt100720100734_ (__AST-e _$e100716_))
                     (_$hd100721100737_ (##car _$tgt100720100734_))
                     (_$tl100722100740_ (##cdr _$tgt100720100734_)))
                (let* ((_hd100744_ _$hd100721100737_)
                       (_rest100746_ _$tl100722100740_))
                  (cons _hd100744_ (__AST->list _rest100746_))))
              (_$E100718100731_)))))
    (define __AST->datum
      (lambda (_stx100712_)
        (if (##structure-instance-of? _stx100712_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx100712_))
            (if (pair? _stx100712_)
                (cons (__AST->datum (car _stx100712_))
                      (__AST->datum (cdr _stx100712_)))
                (if (vector? _stx100712_)
                    (vector-map __AST->datum _stx100712_)
                    (if (box? _stx100712_)
                        (box (__AST->datum (unbox _stx100712_)))
                        _stx100712_))))))
    (define get-readenv
      (lambda (_port100710_)
        (##make-readenv
         _port100710_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in100698_)
        (let ((_e100700_ (##read-datum-or-eof (get-readenv _in100698_))))
          (if (eof-object? (__AST-e _e100700_))
              (__AST-e _e100700_)
              _e100700_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in100706_ (current-input-port))) (read-syntax__% _in100706_))))
    (define read-syntax
      (lambda _g105300_
        (let ((_g105299_ (##length _g105300_)))
          (cond ((##fx= _g105299_ 0)
                 (apply (lambda () (read-syntax__0)) _g105300_))
                ((##fx= _g105299_ 1)
                 (apply (lambda (_in100708_) (read-syntax__% _in100708_))
                        _g105300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g105300_))))))
    (define read-syntax-from-file
      (lambda (_path100693_)
        (let ((_r100695_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path100693_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r100695_)
              (cdr (__AST-e (vector-ref _r100695_ '1)))
              (error (err-code->string _r100695_) _path100693_)))))
    (define __wrap-syntax
      (lambda (_re100690_ _e100691_)
        (if (eof-object? _e100691_)
            _e100691_
            (##structure AST::t _e100691_ (##readenv->locat _re100690_)))))
    (define __unwrap-syntax
      (lambda (_re100687_ _e100688_) (__AST-e _e100688_)))
    (define __pp-syntax (lambda (_stx100685_) (pp (__AST->datum _stx100685_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt100683_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt100683_ '#t)
          (macro-readtable-bracket-handler-set! _rt100683_ '@list)
          (macro-readtable-brace-handler-set! _rt100683_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt100683_
           '#\!
           __read-sharp-bang)
          _rt100683_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt100679_ _kw100680_)
        (macro-readtable-bracket-handler-set! _rt100679_ _kw100680_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt100676_ _kw100677_)
        (macro-readtable-brace-handler-set! _rt100676_ _kw100677_)))
    (define __read-sharp-bang
      (lambda (_re100667_ _next100668_ _start-pos100669_)
        (if (eq? _start-pos100669_ '0)
            (let* ((_line100671_
                    (##read-line
                     (macro-readenv-port _re100667_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line100673_
                    (substring _line100671_ '1 (string-length _line100671_))))
              (macro-readenv-script-line-set! _re100667_ _script-line100673_)
              (##script-marker))
            (##read-sharp-bang _re100667_ _next100668_ _start-pos100669_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj100665_)
        (if (source-location? _obj100665_)
            (string? (##locat-container _obj100665_))
            '#f)))
    (define source-location-path
      (lambda (_obj100663_)
        (if (##locat? _obj100663_)
            (##container->path (##locat-container _obj100663_))
            '#f)))))
