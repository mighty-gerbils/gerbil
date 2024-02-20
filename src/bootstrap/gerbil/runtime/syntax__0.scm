(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708418154)
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
      (lambda _$args74059_ (apply make-instance SyntaxError::t _$args74059_)))
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
      (lambda (_self73962_ _port73963_)
        (letrec ((_location73965_
                  (lambda ()
                    (let _lp74019_ ((_rest74021_
                                     (##unchecked-structure-ref
                                      _self73962_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7402274030_ _rest74021_)
                             (_else7402474038_ (lambda () '#f))
                             (_K7402674047_
                              (lambda (_rest74041_ _hd74042_)
                                (let ((_$e74044_ (__AST-source _hd74042_)))
                                  (if _$e74044_
                                      _$e74044_
                                      (_lp74019_ _rest74041_))))))
                        (if (##pair? _rest7402274030_)
                            (let ((_hd7402774050_ (##car _rest7402274030_))
                                  (_tl7402874052_ (##cdr _rest7402274030_)))
                              (let* ((_hd74055_ _hd7402774050_)
                                     (_rest74057_ _tl7402874052_))
                                (_K7402674047_ _rest74057_ _hd74055_)))
                            (_else7402474038_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e73968_ (_location73965_)))
               (if _$e73968_
                   ((lambda (_where73971_)
                      (##display-locat _where73971_ '#t (current-output-port)))
                    _$e73968_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e73973_
                    (##unchecked-structure-ref
                     _self73962_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e73973_
                   ((lambda (_where73976_)
                      (displayln
                       '" at "
                       _where73976_
                       '": "
                       (##unchecked-structure-ref
                        _self73962_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e73973_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self73962_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7397773985_
                     (##unchecked-structure-ref
                      _self73962_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7397973993_ (lambda () '#!void))
                    (_K7398174006_
                     (lambda (_rest73996_ _stx73997_)
                       (display '"... form:   ")
                       (__pp-syntax _stx73997_)
                       (for-each
                        (lambda (_detail73999_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail73999_))
                          (let ((_$e74001_ (__AST-source _detail73999_)))
                            (if _$e74001_
                                ((lambda (_loc74004_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc74004_
                                    '#t
                                    (current-output-port)))
                                 _$e74001_)
                                '#!void))
                          (newline))
                        _rest73996_))))
               (if (##pair? _g7397773985_)
                   (let ((_hd7398274009_ (##car _g7397773985_))
                         (_tl7398374011_ (##cdr _g7397773985_)))
                     (let* ((_stx74014_ _hd7398274009_)
                            (_rest74016_ _tl7398374011_))
                       (_K7398174006_ _rest74016_ _stx74014_)))
                   '#!void)))
           current-output-port
           _port73963_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message73833_
               _irritants73834_
               _where73835_
               _context73836_
               _marks73837_
               _phi73838_)
        (let ((__obj74154
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj74154
           _message73833_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74154
           _irritants73834_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74154
           _where73835_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74154
           _context73836_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74154
           _marks73837_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74154
           _phi73838_
           '5
           SyntaxError::t
           '#f)
          __obj74154)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where73828_ _message73829_ _stx73830_ . _details73831_)
        (raise (make-syntax-error
                _message73829_
                (cons _stx73830_ _details73831_)
                _where73828_
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
      (lambda _$args73825_ (apply make-instance AST::t _$args73825_)))
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
      (lambda (_stx73823_)
        (if (##structure-instance-of? _stx73823_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx73823_ '1 AST::t '#f)
            _stx73823_)))
    (define __AST-source
      (lambda (_stx73817_)
        (let _lp73819_ ((_src73821_ _stx73817_))
          (if (##structure-instance-of? _src73821_ 'gerbil#AST::t)
              (_lp73819_ (##unchecked-structure-ref _src73821_ '2 AST::t '#f))
              (if (##locat? _src73821_) _src73821_ '#f)))))
    (define __AST
      (lambda (_e73809_ _src-stx73810_)
        (let ((_src73812_ (__AST-source _src-stx73810_)))
          (if (or (##structure-instance-of? _e73809_ 'gerbil#AST::t)
                  (not _src73812_))
              _e73809_
              (##structure AST::t _e73809_ _src73812_)))))
    (define __AST-eq?
      (lambda (_stx73806_ _obj73807_) (eq? (__AST-e _stx73806_) _obj73807_)))
    (define __AST-pair? (lambda (_stx73804_) (pair? (__AST-e _stx73804_))))
    (define __AST-null? (lambda (_stx73802_) (null? (__AST-e _stx73802_))))
    (define __AST-datum?
      (lambda (_stx73783_)
        (let* ((_e73785_ (__AST-e _stx73783_)) (_$e73787_ (number? _e73785_)))
          (if _$e73787_
              _$e73787_
              (let ((_$e73790_ (string? _e73785_)))
                (if _$e73790_
                    _$e73790_
                    (let ((_$e73793_ (char? _e73785_)))
                      (if _$e73793_
                          _$e73793_
                          (let ((_$e73796_ (keyword? _e73785_)))
                            (if _$e73796_
                                _$e73796_
                                (let ((_$e73799_ (boolean? _e73785_)))
                                  (if _$e73799_
                                      _$e73799_
                                      (eq? _e73785_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx73781_) (symbol? (__AST-e _stx73781_))))
    (define __AST-id-list?__%
      (lambda (_stx73732_ _tail?73733_)
        (let _lp73735_ ((_rest73737_ _stx73732_))
          (let* ((_$e73739_ _rest73737_)
                 (_$E7374173754_
                  (lambda ()
                    (let* ((_$E7374273749_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73739_)))
                           (_rest73752_ _$e73739_))
                      (_tail?73733_ _rest73752_)))))
            (if (__AST-pair? _$e73739_)
                (let* ((_$tgt7374373757_ (__AST-e _$e73739_))
                       (_$hd7374473760_ (##car _$tgt7374373757_))
                       (_$tl7374573763_ (##cdr _$tgt7374373757_)))
                  (let* ((_hd73767_ _$hd7374473760_)
                         (_rest73769_ _$tl7374573763_))
                    (if (__AST-id? _hd73767_) (_lp73735_ _rest73769_) '#f)))
                (_$E7374173754_))))))
    (define __AST-id-list?__0
      (lambda (_stx73774_)
        (let ((_tail?73776_ __AST-null?))
          (__AST-id-list?__% _stx73774_ _tail?73776_))))
    (define __AST-id-list?
      (lambda _g74157_
        (let ((_g74156_ (##length _g74157_)))
          (cond ((##fx= _g74156_ 1)
                 (apply (lambda (_stx73774_) (__AST-id-list?__0 _stx73774_))
                        _g74157_))
                ((##fx= _g74156_ 2)
                 (apply (lambda (_stx73778_ _tail?73779_)
                          (__AST-id-list?__% _stx73778_ _tail?73779_))
                        _g74157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g74157_))))))
    (define __AST-bind-list?
      (lambda (_stx73724_)
        (__AST-id-list?__%
         _stx73724_
         (lambda (_e73726_)
           (let ((_$e73728_ (__AST-null? _e73726_)))
             (if _$e73728_ _$e73728_ (__AST-id? _e73726_)))))))
    (define __AST-list?__%
      (lambda (_stx73677_ _tail?73678_)
        (let _lp73680_ ((_rest73682_ _stx73677_))
          (let* ((_$e73684_ _rest73682_)
                 (_$E7368673699_
                  (lambda ()
                    (let* ((_$E7368773694_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73684_)))
                           (_rest73697_ _$e73684_))
                      (_tail?73678_ _rest73697_)))))
            (if (__AST-pair? _$e73684_)
                (let* ((_$tgt7368873702_ (__AST-e _$e73684_))
                       (_$hd7368973705_ (##car _$tgt7368873702_))
                       (_$tl7369073708_ (##cdr _$tgt7368873702_)))
                  (let ((_rest73712_ _$tl7369073708_))
                    (_lp73680_ _rest73712_)))
                (_$E7368673699_))))))
    (define __AST-list?__0
      (lambda (_stx73717_)
        (let ((_tail?73719_ __AST-null?))
          (__AST-list?__% _stx73717_ _tail?73719_))))
    (define __AST-list?
      (lambda _g74159_
        (let ((_g74158_ (##length _g74159_)))
          (cond ((##fx= _g74158_ 1)
                 (apply (lambda (_stx73717_) (__AST-list?__0 _stx73717_))
                        _g74159_))
                ((##fx= _g74158_ 2)
                 (apply (lambda (_stx73721_ _tail?73722_)
                          (__AST-list?__% _stx73721_ _tail?73722_))
                        _g74159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g74159_))))))
    (define __AST->list
      (lambda (_stx73642_)
        (let* ((_$e73644_ _stx73642_)
               (_$E7364673659_
                (lambda ()
                  (let* ((_$E7364773654_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e73644_)))
                         (_rest73657_ _$e73644_))
                    (__AST-e _rest73657_)))))
          (if (__AST-pair? _$e73644_)
              (let* ((_$tgt7364873662_ (__AST-e _$e73644_))
                     (_$hd7364973665_ (##car _$tgt7364873662_))
                     (_$tl7365073668_ (##cdr _$tgt7364873662_)))
                (let* ((_hd73672_ _$hd7364973665_)
                       (_rest73674_ _$tl7365073668_))
                  (cons _hd73672_ (__AST->list _rest73674_))))
              (_$E7364673659_)))))
    (define __AST->datum
      (lambda (_stx73640_)
        (if (##structure-instance-of? _stx73640_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx73640_))
            (if (pair? _stx73640_)
                (cons (__AST->datum (car _stx73640_))
                      (__AST->datum (cdr _stx73640_)))
                (if (vector? _stx73640_)
                    (vector-map __AST->datum _stx73640_)
                    (if (box? _stx73640_)
                        (box (__AST->datum (unbox _stx73640_)))
                        _stx73640_))))))
    (define get-readenv
      (lambda (_port73638_)
        (##make-readenv
         _port73638_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in73626_)
        (let ((_e73628_ (##read-datum-or-eof (get-readenv _in73626_))))
          (if (eof-object? (__AST-e _e73628_)) (__AST-e _e73628_) _e73628_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in73634_ (current-input-port))) (read-syntax__% _in73634_))))
    (define read-syntax
      (lambda _g74161_
        (let ((_g74160_ (##length _g74161_)))
          (cond ((##fx= _g74160_ 0)
                 (apply (lambda () (read-syntax__0)) _g74161_))
                ((##fx= _g74160_ 1)
                 (apply (lambda (_in73636_) (read-syntax__% _in73636_))
                        _g74161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g74161_))))))
    (define read-syntax-from-file
      (lambda (_path73621_)
        (let ((_r73623_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path73621_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r73623_)
              (cdr (__AST-e (vector-ref _r73623_ '1)))
              (error (err-code->string _r73623_) _path73621_)))))
    (define __wrap-syntax
      (lambda (_re73618_ _e73619_)
        (if (eof-object? _e73619_)
            _e73619_
            (##structure AST::t _e73619_ (##readenv->locat _re73618_)))))
    (define __unwrap-syntax (lambda (_re73615_ _e73616_) (__AST-e _e73616_)))
    (define __pp-syntax (lambda (_stx73613_) (pp (__AST->datum _stx73613_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt73611_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt73611_ '#t)
          (macro-readtable-bracket-handler-set! _rt73611_ '@list)
          (macro-readtable-brace-handler-set! _rt73611_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt73611_
           '#\!
           __read-sharp-bang)
          _rt73611_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt73607_ _kw73608_)
        (macro-readtable-bracket-handler-set! _rt73607_ _kw73608_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt73604_ _kw73605_)
        (macro-readtable-brace-handler-set! _rt73604_ _kw73605_)))
    (define __read-sharp-bang
      (lambda (_re73595_ _next73596_ _start-pos73597_)
        (if (eq? _start-pos73597_ '0)
            (let* ((_line73599_
                    (##read-line
                     (macro-readenv-port _re73595_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line73601_
                    (substring _line73599_ '1 (string-length _line73599_))))
              (macro-readenv-script-line-set! _re73595_ _script-line73601_)
              (##script-marker))
            (##read-sharp-bang _re73595_ _next73596_ _start-pos73597_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj73593_)
        (if (source-location? _obj73593_)
            (string? (##locat-container _obj73593_))
            '#f)))
    (define source-location-path
      (lambda (_obj73591_)
        (if (##locat? _obj73591_)
            (##container->path (##locat-container _obj73591_))
            '#f)))))
