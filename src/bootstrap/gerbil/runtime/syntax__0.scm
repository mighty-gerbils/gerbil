(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707616236)
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
      (lambda _$args102117_
        (apply make-class-instance SyntaxError::t _$args102117_)))
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
      (lambda (_self102020_ _port102021_)
        (letrec ((_location102023_
                  (lambda ()
                    (let _lp102077_ ((_rest102079_
                                      (##unchecked-structure-ref
                                       _self102020_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102080102088_ _rest102079_)
                             (_else102082102096_ (lambda () '#f))
                             (_K102084102105_
                              (lambda (_rest102099_ _hd102100_)
                                (let ((_$e102102_ (__AST-source _hd102100_)))
                                  (if _$e102102_
                                      _$e102102_
                                      (_lp102077_ _rest102099_))))))
                        (if (##pair? _rest102080102088_)
                            (let ((_hd102085102108_ (##car _rest102080102088_))
                                  (_tl102086102110_
                                   (##cdr _rest102080102088_)))
                              (let* ((_hd102113_ _hd102085102108_)
                                     (_rest102115_ _tl102086102110_))
                                (_K102084102105_ _rest102115_ _hd102113_)))
                            (_else102082102096_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102026_ (_location102023_)))
               (if _$e102026_
                   ((lambda (_where102029_)
                      (##display-locat
                       _where102029_
                       '#t
                       (current-output-port)))
                    _$e102026_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102031_
                    (##unchecked-structure-ref
                     _self102020_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102031_
                   ((lambda (_where102034_)
                      (displayln
                       '" at "
                       _where102034_
                       '": "
                       (##unchecked-structure-ref
                        _self102020_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102031_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102020_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102035102043_
                     (##unchecked-structure-ref
                      _self102020_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102037102051_ (lambda () '#!void))
                    (_K102039102064_
                     (lambda (_rest102054_ _stx102055_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102055_)
                       (for-each
                        (lambda (_detail102057_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102057_))
                          (let ((_$e102059_ (__AST-source _detail102057_)))
                            (if _$e102059_
                                ((lambda (_loc102062_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102062_
                                    '#t
                                    (current-output-port)))
                                 _$e102059_)
                                '#!void))
                          (newline))
                        _rest102054_))))
               (if (##pair? _g102035102043_)
                   (let ((_hd102040102067_ (##car _g102035102043_))
                         (_tl102041102069_ (##cdr _g102035102043_)))
                     (let* ((_stx102072_ _hd102040102067_)
                            (_rest102074_ _tl102041102069_))
                       (_K102039102064_ _rest102074_ _stx102072_)))
                   '#!void)))
           current-output-port
           _port102021_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101891_
               _irritants101892_
               _where101893_
               _context101894_
               _marks101895_
               _phi101896_)
        (let ((__obj106680
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106680
           _message101891_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106680
           _irritants101892_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106680
           _where101893_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106680
           _context101894_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106680
           _marks101895_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106680
           _phi101896_
           '5
           SyntaxError::t
           '#f)
          __obj106680)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101886_ _message101887_ _stx101888_ . _details101889_)
        (raise (make-syntax-error
                _message101887_
                (cons _stx101888_ _details101889_)
                _where101886_
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
      (lambda _$args101883_ (apply make-struct-instance AST::t _$args101883_)))
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
      (lambda (_stx101881_)
        (if (##structure-instance-of? _stx101881_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx101881_ '1 AST::t '#f)
            _stx101881_)))
    (define __AST-source
      (lambda (_stx101875_)
        (let _lp101877_ ((_src101879_ _stx101875_))
          (if (##structure-instance-of? _src101879_ 'gerbil#AST::t)
              (_lp101877_
               (##unchecked-structure-ref _src101879_ '2 AST::t '#f))
              (if (##locat? _src101879_) _src101879_ '#f)))))
    (define __AST
      (lambda (_e101867_ _src-stx101868_)
        (let ((_src101870_ (__AST-source _src-stx101868_)))
          (if (or (##structure-instance-of? _e101867_ 'gerbil#AST::t)
                  (not _src101870_))
              _e101867_
              (##structure AST::t _e101867_ _src101870_)))))
    (define __AST-eq?
      (lambda (_stx101864_ _obj101865_)
        (eq? (__AST-e _stx101864_) _obj101865_)))
    (define __AST-pair? (lambda (_stx101862_) (pair? (__AST-e _stx101862_))))
    (define __AST-null? (lambda (_stx101860_) (null? (__AST-e _stx101860_))))
    (define __AST-datum?
      (lambda (_stx101841_)
        (let* ((_e101843_ (__AST-e _stx101841_))
               (_$e101845_ (number? _e101843_)))
          (if _$e101845_
              _$e101845_
              (let ((_$e101848_ (string? _e101843_)))
                (if _$e101848_
                    _$e101848_
                    (let ((_$e101851_ (char? _e101843_)))
                      (if _$e101851_
                          _$e101851_
                          (let ((_$e101854_ (keyword? _e101843_)))
                            (if _$e101854_
                                _$e101854_
                                (let ((_$e101857_ (boolean? _e101843_)))
                                  (if _$e101857_
                                      _$e101857_
                                      (eq? _e101843_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101839_) (symbol? (__AST-e _stx101839_))))
    (define __AST-id-list?__%
      (lambda (_stx101790_ _tail?101791_)
        (let _lp101793_ ((_rest101795_ _stx101790_))
          (let* ((_$e101797_ _rest101795_)
                 (_$E101799101812_
                  (lambda ()
                    (let* ((_$E101800101807_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101797_)))
                           (_rest101810_ _$e101797_))
                      (_tail?101791_ _rest101810_)))))
            (if (__AST-pair? _$e101797_)
                (let* ((_$tgt101801101815_ (__AST-e _$e101797_))
                       (_$hd101802101818_ (##car _$tgt101801101815_))
                       (_$tl101803101821_ (##cdr _$tgt101801101815_)))
                  (let* ((_hd101825_ _$hd101802101818_)
                         (_rest101827_ _$tl101803101821_))
                    (if (__AST-id? _hd101825_) (_lp101793_ _rest101827_) '#f)))
                (_$E101799101812_))))))
    (define __AST-id-list?__0
      (lambda (_stx101832_)
        (let ((_tail?101834_ __AST-null?))
          (__AST-id-list?__% _stx101832_ _tail?101834_))))
    (define __AST-id-list?
      (lambda _g106683_
        (let ((_g106682_ (##length _g106683_)))
          (cond ((##fx= _g106682_ 1)
                 (apply (lambda (_stx101832_) (__AST-id-list?__0 _stx101832_))
                        _g106683_))
                ((##fx= _g106682_ 2)
                 (apply (lambda (_stx101836_ _tail?101837_)
                          (__AST-id-list?__% _stx101836_ _tail?101837_))
                        _g106683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106683_))))))
    (define __AST-bind-list?
      (lambda (_stx101782_)
        (__AST-id-list?__%
         _stx101782_
         (lambda (_e101784_)
           (let ((_$e101786_ (__AST-null? _e101784_)))
             (if _$e101786_ _$e101786_ (__AST-id? _e101784_)))))))
    (define __AST-list?__%
      (lambda (_stx101735_ _tail?101736_)
        (let _lp101738_ ((_rest101740_ _stx101735_))
          (let* ((_$e101742_ _rest101740_)
                 (_$E101744101757_
                  (lambda ()
                    (let* ((_$E101745101752_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101742_)))
                           (_rest101755_ _$e101742_))
                      (_tail?101736_ _rest101755_)))))
            (if (__AST-pair? _$e101742_)
                (let* ((_$tgt101746101760_ (__AST-e _$e101742_))
                       (_$hd101747101763_ (##car _$tgt101746101760_))
                       (_$tl101748101766_ (##cdr _$tgt101746101760_)))
                  (let ((_rest101770_ _$tl101748101766_))
                    (_lp101738_ _rest101770_)))
                (_$E101744101757_))))))
    (define __AST-list?__0
      (lambda (_stx101775_)
        (let ((_tail?101777_ __AST-null?))
          (__AST-list?__% _stx101775_ _tail?101777_))))
    (define __AST-list?
      (lambda _g106685_
        (let ((_g106684_ (##length _g106685_)))
          (cond ((##fx= _g106684_ 1)
                 (apply (lambda (_stx101775_) (__AST-list?__0 _stx101775_))
                        _g106685_))
                ((##fx= _g106684_ 2)
                 (apply (lambda (_stx101779_ _tail?101780_)
                          (__AST-list?__% _stx101779_ _tail?101780_))
                        _g106685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106685_))))))
    (define __AST->list
      (lambda (_stx101700_)
        (let* ((_$e101702_ _stx101700_)
               (_$E101704101717_
                (lambda ()
                  (let* ((_$E101705101712_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101702_)))
                         (_rest101715_ _$e101702_))
                    (__AST-e _rest101715_)))))
          (if (__AST-pair? _$e101702_)
              (let* ((_$tgt101706101720_ (__AST-e _$e101702_))
                     (_$hd101707101723_ (##car _$tgt101706101720_))
                     (_$tl101708101726_ (##cdr _$tgt101706101720_)))
                (let* ((_hd101730_ _$hd101707101723_)
                       (_rest101732_ _$tl101708101726_))
                  (cons _hd101730_ (__AST->list _rest101732_))))
              (_$E101704101717_)))))
    (define __AST->datum
      (lambda (_stx101698_)
        (if (##structure-instance-of? _stx101698_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx101698_))
            (if (pair? _stx101698_)
                (cons (__AST->datum (car _stx101698_))
                      (__AST->datum (cdr _stx101698_)))
                (if (vector? _stx101698_)
                    (vector-map __AST->datum _stx101698_)
                    (if (box? _stx101698_)
                        (box (__AST->datum (unbox _stx101698_)))
                        _stx101698_))))))
    (define get-readenv
      (lambda (_port101696_)
        (##make-readenv
         _port101696_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101684_)
        (let ((_e101686_ (##read-datum-or-eof (get-readenv _in101684_))))
          (if (eof-object? (__AST-e _e101686_))
              (__AST-e _e101686_)
              _e101686_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101692_ (current-input-port))) (read-syntax__% _in101692_))))
    (define read-syntax
      (lambda _g106687_
        (let ((_g106686_ (##length _g106687_)))
          (cond ((##fx= _g106686_ 0)
                 (apply (lambda () (read-syntax__0)) _g106687_))
                ((##fx= _g106686_ 1)
                 (apply (lambda (_in101694_) (read-syntax__% _in101694_))
                        _g106687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106687_))))))
    (define read-syntax-from-file
      (lambda (_path101679_)
        (let ((_r101681_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101679_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101681_)
              (cdr (__AST-e (vector-ref _r101681_ '1)))
              (error (err-code->string _r101681_) _path101679_)))))
    (define __wrap-syntax
      (lambda (_re101676_ _e101677_)
        (if (eof-object? _e101677_)
            _e101677_
            (##structure AST::t _e101677_ (##readenv->locat _re101676_)))))
    (define __unwrap-syntax
      (lambda (_re101673_ _e101674_) (__AST-e _e101674_)))
    (define __pp-syntax (lambda (_stx101671_) (pp (__AST->datum _stx101671_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101669_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101669_ '#t)
          (macro-readtable-bracket-handler-set! _rt101669_ '@list)
          (macro-readtable-brace-handler-set! _rt101669_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101669_
           '#\!
           __read-sharp-bang)
          _rt101669_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101665_ _kw101666_)
        (macro-readtable-bracket-handler-set! _rt101665_ _kw101666_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101662_ _kw101663_)
        (macro-readtable-brace-handler-set! _rt101662_ _kw101663_)))
    (define __read-sharp-bang
      (lambda (_re101653_ _next101654_ _start-pos101655_)
        (if (eq? _start-pos101655_ '0)
            (let* ((_line101657_
                    (##read-line
                     (macro-readenv-port _re101653_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101659_
                    (substring _line101657_ '1 (string-length _line101657_))))
              (macro-readenv-script-line-set! _re101653_ _script-line101659_)
              (##script-marker))
            (##read-sharp-bang _re101653_ _next101654_ _start-pos101655_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101651_)
        (if (source-location? _obj101651_)
            (string? (##locat-container _obj101651_))
            '#f)))
    (define source-location-path
      (lambda (_obj101649_)
        (if (##locat? _obj101649_)
            (##container->path (##locat-container _obj101649_))
            '#f)))))
