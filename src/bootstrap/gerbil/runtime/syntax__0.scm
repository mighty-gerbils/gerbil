(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707847726)
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
      (lambda _$args104035_
        (apply make-instance SyntaxError::t _$args104035_)))
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
      (lambda (_self103938_ _port103939_)
        (letrec ((_location103941_
                  (lambda ()
                    (let _lp103995_ ((_rest103997_
                                      (##unchecked-structure-ref
                                       _self103938_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest103998104006_ _rest103997_)
                             (_else104000104014_ (lambda () '#f))
                             (_K104002104023_
                              (lambda (_rest104017_ _hd104018_)
                                (let ((_$e104020_ (__AST-source _hd104018_)))
                                  (if _$e104020_
                                      _$e104020_
                                      (_lp103995_ _rest104017_))))))
                        (if (##pair? _rest103998104006_)
                            (let ((_hd104003104026_ (##car _rest103998104006_))
                                  (_tl104004104028_
                                   (##cdr _rest103998104006_)))
                              (let* ((_hd104031_ _hd104003104026_)
                                     (_rest104033_ _tl104004104028_))
                                (_K104002104023_ _rest104033_ _hd104031_)))
                            (_else104000104014_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e103944_ (_location103941_)))
               (if _$e103944_
                   ((lambda (_where103947_)
                      (##display-locat
                       _where103947_
                       '#t
                       (current-output-port)))
                    _$e103944_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e103949_
                    (##unchecked-structure-ref
                     _self103938_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e103949_
                   ((lambda (_where103952_)
                      (displayln
                       '" at "
                       _where103952_
                       '": "
                       (##unchecked-structure-ref
                        _self103938_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e103949_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self103938_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g103953103961_
                     (##unchecked-structure-ref
                      _self103938_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else103955103969_ (lambda () '#!void))
                    (_K103957103982_
                     (lambda (_rest103972_ _stx103973_)
                       (display '"... form:   ")
                       (__pp-syntax _stx103973_)
                       (for-each
                        (lambda (_detail103975_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail103975_))
                          (let ((_$e103977_ (__AST-source _detail103975_)))
                            (if _$e103977_
                                ((lambda (_loc103980_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc103980_
                                    '#t
                                    (current-output-port)))
                                 _$e103977_)
                                '#!void))
                          (newline))
                        _rest103972_))))
               (if (##pair? _g103953103961_)
                   (let ((_hd103958103985_ (##car _g103953103961_))
                         (_tl103959103987_ (##cdr _g103953103961_)))
                     (let* ((_stx103990_ _hd103958103985_)
                            (_rest103992_ _tl103959103987_))
                       (_K103957103982_ _rest103992_ _stx103990_)))
                   '#!void)))
           current-output-port
           _port103939_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message103809_
               _irritants103810_
               _where103811_
               _context103812_
               _marks103813_
               _phi103814_)
        (let ((__obj108698
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj108698
           _message103809_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108698
           _irritants103810_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108698
           _where103811_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108698
           _context103812_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108698
           _marks103813_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108698
           _phi103814_
           '5
           SyntaxError::t
           '#f)
          __obj108698)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where103804_ _message103805_ _stx103806_ . _details103807_)
        (raise (make-syntax-error
                _message103805_
                (cons _stx103806_ _details103807_)
                _where103804_
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
      (lambda _$args103801_ (apply make-instance AST::t _$args103801_)))
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
      (lambda (_stx103799_)
        (if (##structure-instance-of? _stx103799_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx103799_ '1 AST::t '#f)
            _stx103799_)))
    (define __AST-source
      (lambda (_stx103793_)
        (let _lp103795_ ((_src103797_ _stx103793_))
          (if (##structure-instance-of? _src103797_ 'gerbil#AST::t)
              (_lp103795_
               (##unchecked-structure-ref _src103797_ '2 AST::t '#f))
              (if (##locat? _src103797_) _src103797_ '#f)))))
    (define __AST
      (lambda (_e103785_ _src-stx103786_)
        (let ((_src103788_ (__AST-source _src-stx103786_)))
          (if (or (##structure-instance-of? _e103785_ 'gerbil#AST::t)
                  (not _src103788_))
              _e103785_
              (##structure AST::t _e103785_ _src103788_)))))
    (define __AST-eq?
      (lambda (_stx103782_ _obj103783_)
        (eq? (__AST-e _stx103782_) _obj103783_)))
    (define __AST-pair? (lambda (_stx103780_) (pair? (__AST-e _stx103780_))))
    (define __AST-null? (lambda (_stx103778_) (null? (__AST-e _stx103778_))))
    (define __AST-datum?
      (lambda (_stx103759_)
        (let* ((_e103761_ (__AST-e _stx103759_))
               (_$e103763_ (number? _e103761_)))
          (if _$e103763_
              _$e103763_
              (let ((_$e103766_ (string? _e103761_)))
                (if _$e103766_
                    _$e103766_
                    (let ((_$e103769_ (char? _e103761_)))
                      (if _$e103769_
                          _$e103769_
                          (let ((_$e103772_ (keyword? _e103761_)))
                            (if _$e103772_
                                _$e103772_
                                (let ((_$e103775_ (boolean? _e103761_)))
                                  (if _$e103775_
                                      _$e103775_
                                      (eq? _e103761_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx103757_) (symbol? (__AST-e _stx103757_))))
    (define __AST-id-list?__%
      (lambda (_stx103708_ _tail?103709_)
        (let _lp103711_ ((_rest103713_ _stx103708_))
          (let* ((_$e103715_ _rest103713_)
                 (_$E103717103730_
                  (lambda ()
                    (let* ((_$E103718103725_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103715_)))
                           (_rest103728_ _$e103715_))
                      (_tail?103709_ _rest103728_)))))
            (if (__AST-pair? _$e103715_)
                (let* ((_$tgt103719103733_ (__AST-e _$e103715_))
                       (_$hd103720103736_ (##car _$tgt103719103733_))
                       (_$tl103721103739_ (##cdr _$tgt103719103733_)))
                  (let* ((_hd103743_ _$hd103720103736_)
                         (_rest103745_ _$tl103721103739_))
                    (if (__AST-id? _hd103743_) (_lp103711_ _rest103745_) '#f)))
                (_$E103717103730_))))))
    (define __AST-id-list?__0
      (lambda (_stx103750_)
        (let ((_tail?103752_ __AST-null?))
          (__AST-id-list?__% _stx103750_ _tail?103752_))))
    (define __AST-id-list?
      (lambda _g108701_
        (let ((_g108700_ (##length _g108701_)))
          (cond ((##fx= _g108700_ 1)
                 (apply (lambda (_stx103750_) (__AST-id-list?__0 _stx103750_))
                        _g108701_))
                ((##fx= _g108700_ 2)
                 (apply (lambda (_stx103754_ _tail?103755_)
                          (__AST-id-list?__% _stx103754_ _tail?103755_))
                        _g108701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108701_))))))
    (define __AST-bind-list?
      (lambda (_stx103700_)
        (__AST-id-list?__%
         _stx103700_
         (lambda (_e103702_)
           (let ((_$e103704_ (__AST-null? _e103702_)))
             (if _$e103704_ _$e103704_ (__AST-id? _e103702_)))))))
    (define __AST-list?__%
      (lambda (_stx103653_ _tail?103654_)
        (let _lp103656_ ((_rest103658_ _stx103653_))
          (let* ((_$e103660_ _rest103658_)
                 (_$E103662103675_
                  (lambda ()
                    (let* ((_$E103663103670_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103660_)))
                           (_rest103673_ _$e103660_))
                      (_tail?103654_ _rest103673_)))))
            (if (__AST-pair? _$e103660_)
                (let* ((_$tgt103664103678_ (__AST-e _$e103660_))
                       (_$hd103665103681_ (##car _$tgt103664103678_))
                       (_$tl103666103684_ (##cdr _$tgt103664103678_)))
                  (let ((_rest103688_ _$tl103666103684_))
                    (_lp103656_ _rest103688_)))
                (_$E103662103675_))))))
    (define __AST-list?__0
      (lambda (_stx103693_)
        (let ((_tail?103695_ __AST-null?))
          (__AST-list?__% _stx103693_ _tail?103695_))))
    (define __AST-list?
      (lambda _g108703_
        (let ((_g108702_ (##length _g108703_)))
          (cond ((##fx= _g108702_ 1)
                 (apply (lambda (_stx103693_) (__AST-list?__0 _stx103693_))
                        _g108703_))
                ((##fx= _g108702_ 2)
                 (apply (lambda (_stx103697_ _tail?103698_)
                          (__AST-list?__% _stx103697_ _tail?103698_))
                        _g108703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108703_))))))
    (define __AST->list
      (lambda (_stx103618_)
        (let* ((_$e103620_ _stx103618_)
               (_$E103622103635_
                (lambda ()
                  (let* ((_$E103623103630_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e103620_)))
                         (_rest103633_ _$e103620_))
                    (__AST-e _rest103633_)))))
          (if (__AST-pair? _$e103620_)
              (let* ((_$tgt103624103638_ (__AST-e _$e103620_))
                     (_$hd103625103641_ (##car _$tgt103624103638_))
                     (_$tl103626103644_ (##cdr _$tgt103624103638_)))
                (let* ((_hd103648_ _$hd103625103641_)
                       (_rest103650_ _$tl103626103644_))
                  (cons _hd103648_ (__AST->list _rest103650_))))
              (_$E103622103635_)))))
    (define __AST->datum
      (lambda (_stx103616_)
        (if (##structure-instance-of? _stx103616_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx103616_))
            (if (pair? _stx103616_)
                (cons (__AST->datum (car _stx103616_))
                      (__AST->datum (cdr _stx103616_)))
                (if (vector? _stx103616_)
                    (vector-map __AST->datum _stx103616_)
                    (if (box? _stx103616_)
                        (box (__AST->datum (unbox _stx103616_)))
                        _stx103616_))))))
    (define get-readenv
      (lambda (_port103614_)
        (##make-readenv
         _port103614_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in103602_)
        (let ((_e103604_ (##read-datum-or-eof (get-readenv _in103602_))))
          (if (eof-object? (__AST-e _e103604_))
              (__AST-e _e103604_)
              _e103604_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in103610_ (current-input-port))) (read-syntax__% _in103610_))))
    (define read-syntax
      (lambda _g108705_
        (let ((_g108704_ (##length _g108705_)))
          (cond ((##fx= _g108704_ 0)
                 (apply (lambda () (read-syntax__0)) _g108705_))
                ((##fx= _g108704_ 1)
                 (apply (lambda (_in103612_) (read-syntax__% _in103612_))
                        _g108705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108705_))))))
    (define read-syntax-from-file
      (lambda (_path103597_)
        (let ((_r103599_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path103597_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r103599_)
              (cdr (__AST-e (vector-ref _r103599_ '1)))
              (error (err-code->string _r103599_) _path103597_)))))
    (define __wrap-syntax
      (lambda (_re103594_ _e103595_)
        (if (eof-object? _e103595_)
            _e103595_
            (##structure AST::t _e103595_ (##readenv->locat _re103594_)))))
    (define __unwrap-syntax
      (lambda (_re103591_ _e103592_) (__AST-e _e103592_)))
    (define __pp-syntax (lambda (_stx103589_) (pp (__AST->datum _stx103589_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt103587_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt103587_ '#t)
          (macro-readtable-bracket-handler-set! _rt103587_ '@list)
          (macro-readtable-brace-handler-set! _rt103587_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt103587_
           '#\!
           __read-sharp-bang)
          _rt103587_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt103583_ _kw103584_)
        (macro-readtable-bracket-handler-set! _rt103583_ _kw103584_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt103580_ _kw103581_)
        (macro-readtable-brace-handler-set! _rt103580_ _kw103581_)))
    (define __read-sharp-bang
      (lambda (_re103571_ _next103572_ _start-pos103573_)
        (if (eq? _start-pos103573_ '0)
            (let* ((_line103575_
                    (##read-line
                     (macro-readenv-port _re103571_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line103577_
                    (substring _line103575_ '1 (string-length _line103575_))))
              (macro-readenv-script-line-set! _re103571_ _script-line103577_)
              (##script-marker))
            (##read-sharp-bang _re103571_ _next103572_ _start-pos103573_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj103569_)
        (if (source-location? _obj103569_)
            (string? (##locat-container _obj103569_))
            '#f)))
    (define source-location-path
      (lambda (_obj103567_)
        (if (##locat? _obj103567_)
            (##container->path (##locat-container _obj103567_))
            '#f)))))
