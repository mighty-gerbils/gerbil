(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708210939)
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
      (lambda _$args101134_
        (apply make-instance SyntaxError::t _$args101134_)))
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
      (lambda (_self101037_ _port101038_)
        (letrec ((_location101040_
                  (lambda ()
                    (let _lp101094_ ((_rest101096_
                                      (##unchecked-structure-ref
                                       _self101037_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest101097101105_ _rest101096_)
                             (_else101099101113_ (lambda () '#f))
                             (_K101101101122_
                              (lambda (_rest101116_ _hd101117_)
                                (let ((_$e101119_ (__AST-source _hd101117_)))
                                  (if _$e101119_
                                      _$e101119_
                                      (_lp101094_ _rest101116_))))))
                        (if (##pair? _rest101097101105_)
                            (let ((_hd101102101125_ (##car _rest101097101105_))
                                  (_tl101103101127_
                                   (##cdr _rest101097101105_)))
                              (let* ((_hd101130_ _hd101102101125_)
                                     (_rest101132_ _tl101103101127_))
                                (_K101101101122_ _rest101132_ _hd101130_)))
                            (_else101099101113_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e101043_ (_location101040_)))
               (if _$e101043_
                   ((lambda (_where101046_)
                      (##display-locat
                       _where101046_
                       '#t
                       (current-output-port)))
                    _$e101043_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e101048_
                    (##unchecked-structure-ref
                     _self101037_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e101048_
                   ((lambda (_where101051_)
                      (displayln
                       '" at "
                       _where101051_
                       '": "
                       (##unchecked-structure-ref
                        _self101037_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e101048_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self101037_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g101052101060_
                     (##unchecked-structure-ref
                      _self101037_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else101054101068_ (lambda () '#!void))
                    (_K101056101081_
                     (lambda (_rest101071_ _stx101072_)
                       (display '"... form:   ")
                       (__pp-syntax _stx101072_)
                       (for-each
                        (lambda (_detail101074_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail101074_))
                          (let ((_$e101076_ (__AST-source _detail101074_)))
                            (if _$e101076_
                                ((lambda (_loc101079_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc101079_
                                    '#t
                                    (current-output-port)))
                                 _$e101076_)
                                '#!void))
                          (newline))
                        _rest101071_))))
               (if (##pair? _g101052101060_)
                   (let ((_hd101057101084_ (##car _g101052101060_))
                         (_tl101058101086_ (##cdr _g101052101060_)))
                     (let* ((_stx101089_ _hd101057101084_)
                            (_rest101091_ _tl101058101086_))
                       (_K101056101081_ _rest101091_ _stx101089_)))
                   '#!void)))
           current-output-port
           _port101038_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message100908_
               _irritants100909_
               _where100910_
               _context100911_
               _marks100912_
               _phi100913_)
        (let ((__obj105296
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj105296
           _message100908_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105296
           _irritants100909_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105296
           _where100910_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105296
           _context100911_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105296
           _marks100912_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj105296
           _phi100913_
           '5
           SyntaxError::t
           '#f)
          __obj105296)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where100903_ _message100904_ _stx100905_ . _details100906_)
        (raise (make-syntax-error
                _message100904_
                (cons _stx100905_ _details100906_)
                _where100903_
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
      (lambda _$args100900_ (apply make-instance AST::t _$args100900_)))
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
      (lambda (_stx100898_)
        (if (##structure-instance-of? _stx100898_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx100898_ '1 AST::t '#f)
            _stx100898_)))
    (define __AST-source
      (lambda (_stx100892_)
        (let _lp100894_ ((_src100896_ _stx100892_))
          (if (##structure-instance-of? _src100896_ 'gerbil#AST::t)
              (_lp100894_
               (##unchecked-structure-ref _src100896_ '2 AST::t '#f))
              (if (##locat? _src100896_) _src100896_ '#f)))))
    (define __AST
      (lambda (_e100884_ _src-stx100885_)
        (let ((_src100887_ (__AST-source _src-stx100885_)))
          (if (or (##structure-instance-of? _e100884_ 'gerbil#AST::t)
                  (not _src100887_))
              _e100884_
              (##structure AST::t _e100884_ _src100887_)))))
    (define __AST-eq?
      (lambda (_stx100881_ _obj100882_)
        (eq? (__AST-e _stx100881_) _obj100882_)))
    (define __AST-pair? (lambda (_stx100879_) (pair? (__AST-e _stx100879_))))
    (define __AST-null? (lambda (_stx100877_) (null? (__AST-e _stx100877_))))
    (define __AST-datum?
      (lambda (_stx100858_)
        (let* ((_e100860_ (__AST-e _stx100858_))
               (_$e100862_ (number? _e100860_)))
          (if _$e100862_
              _$e100862_
              (let ((_$e100865_ (string? _e100860_)))
                (if _$e100865_
                    _$e100865_
                    (let ((_$e100868_ (char? _e100860_)))
                      (if _$e100868_
                          _$e100868_
                          (let ((_$e100871_ (keyword? _e100860_)))
                            (if _$e100871_
                                _$e100871_
                                (let ((_$e100874_ (boolean? _e100860_)))
                                  (if _$e100874_
                                      _$e100874_
                                      (eq? _e100860_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx100856_) (symbol? (__AST-e _stx100856_))))
    (define __AST-id-list?__%
      (lambda (_stx100807_ _tail?100808_)
        (let _lp100810_ ((_rest100812_ _stx100807_))
          (let* ((_$e100814_ _rest100812_)
                 (_$E100816100829_
                  (lambda ()
                    (let* ((_$E100817100824_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e100814_)))
                           (_rest100827_ _$e100814_))
                      (_tail?100808_ _rest100827_)))))
            (if (__AST-pair? _$e100814_)
                (let* ((_$tgt100818100832_ (__AST-e _$e100814_))
                       (_$hd100819100835_ (##car _$tgt100818100832_))
                       (_$tl100820100838_ (##cdr _$tgt100818100832_)))
                  (let* ((_hd100842_ _$hd100819100835_)
                         (_rest100844_ _$tl100820100838_))
                    (if (__AST-id? _hd100842_) (_lp100810_ _rest100844_) '#f)))
                (_$E100816100829_))))))
    (define __AST-id-list?__0
      (lambda (_stx100849_)
        (let ((_tail?100851_ __AST-null?))
          (__AST-id-list?__% _stx100849_ _tail?100851_))))
    (define __AST-id-list?
      (lambda _g105299_
        (let ((_g105298_ (##length _g105299_)))
          (cond ((##fx= _g105298_ 1)
                 (apply (lambda (_stx100849_) (__AST-id-list?__0 _stx100849_))
                        _g105299_))
                ((##fx= _g105298_ 2)
                 (apply (lambda (_stx100853_ _tail?100854_)
                          (__AST-id-list?__% _stx100853_ _tail?100854_))
                        _g105299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g105299_))))))
    (define __AST-bind-list?
      (lambda (_stx100799_)
        (__AST-id-list?__%
         _stx100799_
         (lambda (_e100801_)
           (let ((_$e100803_ (__AST-null? _e100801_)))
             (if _$e100803_ _$e100803_ (__AST-id? _e100801_)))))))
    (define __AST-list?__%
      (lambda (_stx100752_ _tail?100753_)
        (let _lp100755_ ((_rest100757_ _stx100752_))
          (let* ((_$e100759_ _rest100757_)
                 (_$E100761100774_
                  (lambda ()
                    (let* ((_$E100762100769_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e100759_)))
                           (_rest100772_ _$e100759_))
                      (_tail?100753_ _rest100772_)))))
            (if (__AST-pair? _$e100759_)
                (let* ((_$tgt100763100777_ (__AST-e _$e100759_))
                       (_$hd100764100780_ (##car _$tgt100763100777_))
                       (_$tl100765100783_ (##cdr _$tgt100763100777_)))
                  (let ((_rest100787_ _$tl100765100783_))
                    (_lp100755_ _rest100787_)))
                (_$E100761100774_))))))
    (define __AST-list?__0
      (lambda (_stx100792_)
        (let ((_tail?100794_ __AST-null?))
          (__AST-list?__% _stx100792_ _tail?100794_))))
    (define __AST-list?
      (lambda _g105301_
        (let ((_g105300_ (##length _g105301_)))
          (cond ((##fx= _g105300_ 1)
                 (apply (lambda (_stx100792_) (__AST-list?__0 _stx100792_))
                        _g105301_))
                ((##fx= _g105300_ 2)
                 (apply (lambda (_stx100796_ _tail?100797_)
                          (__AST-list?__% _stx100796_ _tail?100797_))
                        _g105301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g105301_))))))
    (define __AST->list
      (lambda (_stx100717_)
        (let* ((_$e100719_ _stx100717_)
               (_$E100721100734_
                (lambda ()
                  (let* ((_$E100722100729_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e100719_)))
                         (_rest100732_ _$e100719_))
                    (__AST-e _rest100732_)))))
          (if (__AST-pair? _$e100719_)
              (let* ((_$tgt100723100737_ (__AST-e _$e100719_))
                     (_$hd100724100740_ (##car _$tgt100723100737_))
                     (_$tl100725100743_ (##cdr _$tgt100723100737_)))
                (let* ((_hd100747_ _$hd100724100740_)
                       (_rest100749_ _$tl100725100743_))
                  (cons _hd100747_ (__AST->list _rest100749_))))
              (_$E100721100734_)))))
    (define __AST->datum
      (lambda (_stx100715_)
        (if (##structure-instance-of? _stx100715_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx100715_))
            (if (pair? _stx100715_)
                (cons (__AST->datum (car _stx100715_))
                      (__AST->datum (cdr _stx100715_)))
                (if (vector? _stx100715_)
                    (vector-map __AST->datum _stx100715_)
                    (if (box? _stx100715_)
                        (box (__AST->datum (unbox _stx100715_)))
                        _stx100715_))))))
    (define get-readenv
      (lambda (_port100713_)
        (##make-readenv
         _port100713_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in100701_)
        (let ((_e100703_ (##read-datum-or-eof (get-readenv _in100701_))))
          (if (eof-object? (__AST-e _e100703_))
              (__AST-e _e100703_)
              _e100703_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in100709_ (current-input-port))) (read-syntax__% _in100709_))))
    (define read-syntax
      (lambda _g105303_
        (let ((_g105302_ (##length _g105303_)))
          (cond ((##fx= _g105302_ 0)
                 (apply (lambda () (read-syntax__0)) _g105303_))
                ((##fx= _g105302_ 1)
                 (apply (lambda (_in100711_) (read-syntax__% _in100711_))
                        _g105303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g105303_))))))
    (define read-syntax-from-file
      (lambda (_path100696_)
        (let ((_r100698_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path100696_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r100698_)
              (cdr (__AST-e (vector-ref _r100698_ '1)))
              (error (err-code->string _r100698_) _path100696_)))))
    (define __wrap-syntax
      (lambda (_re100693_ _e100694_)
        (if (eof-object? _e100694_)
            _e100694_
            (##structure AST::t _e100694_ (##readenv->locat _re100693_)))))
    (define __unwrap-syntax
      (lambda (_re100690_ _e100691_) (__AST-e _e100691_)))
    (define __pp-syntax (lambda (_stx100688_) (pp (__AST->datum _stx100688_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt100686_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt100686_ '#t)
          (macro-readtable-bracket-handler-set! _rt100686_ '@list)
          (macro-readtable-brace-handler-set! _rt100686_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt100686_
           '#\!
           __read-sharp-bang)
          _rt100686_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt100682_ _kw100683_)
        (macro-readtable-bracket-handler-set! _rt100682_ _kw100683_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt100679_ _kw100680_)
        (macro-readtable-brace-handler-set! _rt100679_ _kw100680_)))
    (define __read-sharp-bang
      (lambda (_re100670_ _next100671_ _start-pos100672_)
        (if (eq? _start-pos100672_ '0)
            (let* ((_line100674_
                    (##read-line
                     (macro-readenv-port _re100670_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line100676_
                    (substring _line100674_ '1 (string-length _line100674_))))
              (macro-readenv-script-line-set! _re100670_ _script-line100676_)
              (##script-marker))
            (##read-sharp-bang _re100670_ _next100671_ _start-pos100672_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj100668_)
        (if (source-location? _obj100668_)
            (string? (##locat-container _obj100668_))
            '#f)))
    (define source-location-path
      (lambda (_obj100666_)
        (if (##locat? _obj100666_)
            (##container->path (##locat-container _obj100666_))
            '#f)))))
