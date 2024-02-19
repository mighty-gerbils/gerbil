(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708334573)
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
      (lambda _$args116156_
        (apply make-instance SyntaxError::t _$args116156_)))
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
      (lambda (_self116059_ _port116060_)
        (letrec ((_location116062_
                  (lambda ()
                    (let _lp116116_ ((_rest116118_
                                      (##unchecked-structure-ref
                                       _self116059_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest116119116127_ _rest116118_)
                             (_else116121116135_ (lambda () '#f))
                             (_K116123116144_
                              (lambda (_rest116138_ _hd116139_)
                                (let ((_$e116141_ (__AST-source _hd116139_)))
                                  (if _$e116141_
                                      _$e116141_
                                      (_lp116116_ _rest116138_))))))
                        (if (##pair? _rest116119116127_)
                            (let ((_hd116124116147_ (##car _rest116119116127_))
                                  (_tl116125116149_
                                   (##cdr _rest116119116127_)))
                              (let* ((_hd116152_ _hd116124116147_)
                                     (_rest116154_ _tl116125116149_))
                                (_K116123116144_ _rest116154_ _hd116152_)))
                            (_else116121116135_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e116065_ (_location116062_)))
               (if _$e116065_
                   ((lambda (_where116068_)
                      (##display-locat
                       _where116068_
                       '#t
                       (current-output-port)))
                    _$e116065_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e116070_
                    (##unchecked-structure-ref
                     _self116059_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e116070_
                   ((lambda (_where116073_)
                      (displayln
                       '" at "
                       _where116073_
                       '": "
                       (##unchecked-structure-ref
                        _self116059_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e116070_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self116059_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g116074116082_
                     (##unchecked-structure-ref
                      _self116059_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else116076116090_ (lambda () '#!void))
                    (_K116078116103_
                     (lambda (_rest116093_ _stx116094_)
                       (display '"... form:   ")
                       (__pp-syntax _stx116094_)
                       (for-each
                        (lambda (_detail116096_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail116096_))
                          (let ((_$e116098_ (__AST-source _detail116096_)))
                            (if _$e116098_
                                ((lambda (_loc116101_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc116101_
                                    '#t
                                    (current-output-port)))
                                 _$e116098_)
                                '#!void))
                          (newline))
                        _rest116093_))))
               (if (##pair? _g116074116082_)
                   (let ((_hd116079116106_ (##car _g116074116082_))
                         (_tl116080116108_ (##cdr _g116074116082_)))
                     (let* ((_stx116111_ _hd116079116106_)
                            (_rest116113_ _tl116080116108_))
                       (_K116078116103_ _rest116113_ _stx116111_)))
                   '#!void)))
           current-output-port
           _port116060_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message115930_
               _irritants115931_
               _where115932_
               _context115933_
               _marks115934_
               _phi115935_)
        (let ((__obj120318
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj120318
           _message115930_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120318
           _irritants115931_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120318
           _where115932_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120318
           _context115933_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120318
           _marks115934_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120318
           _phi115935_
           '5
           SyntaxError::t
           '#f)
          __obj120318)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where115925_ _message115926_ _stx115927_ . _details115928_)
        (raise (make-syntax-error
                _message115926_
                (cons _stx115927_ _details115928_)
                _where115925_
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
      (lambda _$args115922_ (apply make-instance AST::t _$args115922_)))
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
      (lambda (_stx115920_)
        (if (##structure-instance-of? _stx115920_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx115920_ '1 AST::t '#f)
            _stx115920_)))
    (define __AST-source
      (lambda (_stx115914_)
        (let _lp115916_ ((_src115918_ _stx115914_))
          (if (##structure-instance-of? _src115918_ 'gerbil#AST::t)
              (_lp115916_
               (##unchecked-structure-ref _src115918_ '2 AST::t '#f))
              (if (##locat? _src115918_) _src115918_ '#f)))))
    (define __AST
      (lambda (_e115906_ _src-stx115907_)
        (let ((_src115909_ (__AST-source _src-stx115907_)))
          (if (or (##structure-instance-of? _e115906_ 'gerbil#AST::t)
                  (not _src115909_))
              _e115906_
              (##structure AST::t _e115906_ _src115909_)))))
    (define __AST-eq?
      (lambda (_stx115903_ _obj115904_)
        (eq? (__AST-e _stx115903_) _obj115904_)))
    (define __AST-pair? (lambda (_stx115901_) (pair? (__AST-e _stx115901_))))
    (define __AST-null? (lambda (_stx115899_) (null? (__AST-e _stx115899_))))
    (define __AST-datum?
      (lambda (_stx115880_)
        (let* ((_e115882_ (__AST-e _stx115880_))
               (_$e115884_ (number? _e115882_)))
          (if _$e115884_
              _$e115884_
              (let ((_$e115887_ (string? _e115882_)))
                (if _$e115887_
                    _$e115887_
                    (let ((_$e115890_ (char? _e115882_)))
                      (if _$e115890_
                          _$e115890_
                          (let ((_$e115893_ (keyword? _e115882_)))
                            (if _$e115893_
                                _$e115893_
                                (let ((_$e115896_ (boolean? _e115882_)))
                                  (if _$e115896_
                                      _$e115896_
                                      (eq? _e115882_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx115878_) (symbol? (__AST-e _stx115878_))))
    (define __AST-id-list?__%
      (lambda (_stx115829_ _tail?115830_)
        (let _lp115832_ ((_rest115834_ _stx115829_))
          (let* ((_$e115836_ _rest115834_)
                 (_$E115838115851_
                  (lambda ()
                    (let* ((_$E115839115846_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e115836_)))
                           (_rest115849_ _$e115836_))
                      (_tail?115830_ _rest115849_)))))
            (if (__AST-pair? _$e115836_)
                (let* ((_$tgt115840115854_ (__AST-e _$e115836_))
                       (_$hd115841115857_ (##car _$tgt115840115854_))
                       (_$tl115842115860_ (##cdr _$tgt115840115854_)))
                  (let* ((_hd115864_ _$hd115841115857_)
                         (_rest115866_ _$tl115842115860_))
                    (if (__AST-id? _hd115864_) (_lp115832_ _rest115866_) '#f)))
                (_$E115838115851_))))))
    (define __AST-id-list?__0
      (lambda (_stx115871_)
        (let ((_tail?115873_ __AST-null?))
          (__AST-id-list?__% _stx115871_ _tail?115873_))))
    (define __AST-id-list?
      (lambda _g120321_
        (let ((_g120320_ (##length _g120321_)))
          (cond ((##fx= _g120320_ 1)
                 (apply (lambda (_stx115871_) (__AST-id-list?__0 _stx115871_))
                        _g120321_))
                ((##fx= _g120320_ 2)
                 (apply (lambda (_stx115875_ _tail?115876_)
                          (__AST-id-list?__% _stx115875_ _tail?115876_))
                        _g120321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g120321_))))))
    (define __AST-bind-list?
      (lambda (_stx115821_)
        (__AST-id-list?__%
         _stx115821_
         (lambda (_e115823_)
           (let ((_$e115825_ (__AST-null? _e115823_)))
             (if _$e115825_ _$e115825_ (__AST-id? _e115823_)))))))
    (define __AST-list?__%
      (lambda (_stx115774_ _tail?115775_)
        (let _lp115777_ ((_rest115779_ _stx115774_))
          (let* ((_$e115781_ _rest115779_)
                 (_$E115783115796_
                  (lambda ()
                    (let* ((_$E115784115791_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e115781_)))
                           (_rest115794_ _$e115781_))
                      (_tail?115775_ _rest115794_)))))
            (if (__AST-pair? _$e115781_)
                (let* ((_$tgt115785115799_ (__AST-e _$e115781_))
                       (_$hd115786115802_ (##car _$tgt115785115799_))
                       (_$tl115787115805_ (##cdr _$tgt115785115799_)))
                  (let ((_rest115809_ _$tl115787115805_))
                    (_lp115777_ _rest115809_)))
                (_$E115783115796_))))))
    (define __AST-list?__0
      (lambda (_stx115814_)
        (let ((_tail?115816_ __AST-null?))
          (__AST-list?__% _stx115814_ _tail?115816_))))
    (define __AST-list?
      (lambda _g120323_
        (let ((_g120322_ (##length _g120323_)))
          (cond ((##fx= _g120322_ 1)
                 (apply (lambda (_stx115814_) (__AST-list?__0 _stx115814_))
                        _g120323_))
                ((##fx= _g120322_ 2)
                 (apply (lambda (_stx115818_ _tail?115819_)
                          (__AST-list?__% _stx115818_ _tail?115819_))
                        _g120323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g120323_))))))
    (define __AST->list
      (lambda (_stx115739_)
        (let* ((_$e115741_ _stx115739_)
               (_$E115743115756_
                (lambda ()
                  (let* ((_$E115744115751_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e115741_)))
                         (_rest115754_ _$e115741_))
                    (__AST-e _rest115754_)))))
          (if (__AST-pair? _$e115741_)
              (let* ((_$tgt115745115759_ (__AST-e _$e115741_))
                     (_$hd115746115762_ (##car _$tgt115745115759_))
                     (_$tl115747115765_ (##cdr _$tgt115745115759_)))
                (let* ((_hd115769_ _$hd115746115762_)
                       (_rest115771_ _$tl115747115765_))
                  (cons _hd115769_ (__AST->list _rest115771_))))
              (_$E115743115756_)))))
    (define __AST->datum
      (lambda (_stx115737_)
        (if (##structure-instance-of? _stx115737_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx115737_))
            (if (pair? _stx115737_)
                (cons (__AST->datum (car _stx115737_))
                      (__AST->datum (cdr _stx115737_)))
                (if (vector? _stx115737_)
                    (vector-map __AST->datum _stx115737_)
                    (if (box? _stx115737_)
                        (box (__AST->datum (unbox _stx115737_)))
                        _stx115737_))))))
    (define get-readenv
      (lambda (_port115735_)
        (##make-readenv
         _port115735_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in115723_)
        (let ((_e115725_ (##read-datum-or-eof (get-readenv _in115723_))))
          (if (eof-object? (__AST-e _e115725_))
              (__AST-e _e115725_)
              _e115725_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in115731_ (current-input-port))) (read-syntax__% _in115731_))))
    (define read-syntax
      (lambda _g120325_
        (let ((_g120324_ (##length _g120325_)))
          (cond ((##fx= _g120324_ 0)
                 (apply (lambda () (read-syntax__0)) _g120325_))
                ((##fx= _g120324_ 1)
                 (apply (lambda (_in115733_) (read-syntax__% _in115733_))
                        _g120325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g120325_))))))
    (define read-syntax-from-file
      (lambda (_path115718_)
        (let ((_r115720_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path115718_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r115720_)
              (cdr (__AST-e (vector-ref _r115720_ '1)))
              (error (err-code->string _r115720_) _path115718_)))))
    (define __wrap-syntax
      (lambda (_re115715_ _e115716_)
        (if (eof-object? _e115716_)
            _e115716_
            (##structure AST::t _e115716_ (##readenv->locat _re115715_)))))
    (define __unwrap-syntax
      (lambda (_re115712_ _e115713_) (__AST-e _e115713_)))
    (define __pp-syntax (lambda (_stx115710_) (pp (__AST->datum _stx115710_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt115708_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt115708_ '#t)
          (macro-readtable-bracket-handler-set! _rt115708_ '@list)
          (macro-readtable-brace-handler-set! _rt115708_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt115708_
           '#\!
           __read-sharp-bang)
          _rt115708_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt115704_ _kw115705_)
        (macro-readtable-bracket-handler-set! _rt115704_ _kw115705_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt115701_ _kw115702_)
        (macro-readtable-brace-handler-set! _rt115701_ _kw115702_)))
    (define __read-sharp-bang
      (lambda (_re115692_ _next115693_ _start-pos115694_)
        (if (eq? _start-pos115694_ '0)
            (let* ((_line115696_
                    (##read-line
                     (macro-readenv-port _re115692_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line115698_
                    (substring _line115696_ '1 (string-length _line115696_))))
              (macro-readenv-script-line-set! _re115692_ _script-line115698_)
              (##script-marker))
            (##read-sharp-bang _re115692_ _next115693_ _start-pos115694_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj115690_)
        (if (source-location? _obj115690_)
            (string? (##locat-container _obj115690_))
            '#f)))
    (define source-location-path
      (lambda (_obj115688_)
        (if (##locat? _obj115688_)
            (##container->path (##locat-container _obj115688_))
            '#f)))))
