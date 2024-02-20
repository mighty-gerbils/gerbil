(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708387688)
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
      (lambda _$args73990_ (apply make-instance SyntaxError::t _$args73990_)))
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
      (lambda (_self73893_ _port73894_)
        (letrec ((_location73896_
                  (lambda ()
                    (let _lp73950_ ((_rest73952_
                                     (##unchecked-structure-ref
                                      _self73893_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7395373961_ _rest73952_)
                             (_else7395573969_ (lambda () '#f))
                             (_K7395773978_
                              (lambda (_rest73972_ _hd73973_)
                                (let ((_$e73975_ (__AST-source _hd73973_)))
                                  (if _$e73975_
                                      _$e73975_
                                      (_lp73950_ _rest73972_))))))
                        (if (##pair? _rest7395373961_)
                            (let ((_hd7395873981_ (##car _rest7395373961_))
                                  (_tl7395973983_ (##cdr _rest7395373961_)))
                              (let* ((_hd73986_ _hd7395873981_)
                                     (_rest73988_ _tl7395973983_))
                                (_K7395773978_ _rest73988_ _hd73986_)))
                            (_else7395573969_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e73899_ (_location73896_)))
               (if _$e73899_
                   ((lambda (_where73902_)
                      (##display-locat _where73902_ '#t (current-output-port)))
                    _$e73899_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e73904_
                    (##unchecked-structure-ref
                     _self73893_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e73904_
                   ((lambda (_where73907_)
                      (displayln
                       '" at "
                       _where73907_
                       '": "
                       (##unchecked-structure-ref
                        _self73893_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e73904_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self73893_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7390873916_
                     (##unchecked-structure-ref
                      _self73893_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7391073924_ (lambda () '#!void))
                    (_K7391273937_
                     (lambda (_rest73927_ _stx73928_)
                       (display '"... form:   ")
                       (__pp-syntax _stx73928_)
                       (for-each
                        (lambda (_detail73930_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail73930_))
                          (let ((_$e73932_ (__AST-source _detail73930_)))
                            (if _$e73932_
                                ((lambda (_loc73935_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc73935_
                                    '#t
                                    (current-output-port)))
                                 _$e73932_)
                                '#!void))
                          (newline))
                        _rest73927_))))
               (if (##pair? _g7390873916_)
                   (let ((_hd7391373940_ (##car _g7390873916_))
                         (_tl7391473942_ (##cdr _g7390873916_)))
                     (let* ((_stx73945_ _hd7391373940_)
                            (_rest73947_ _tl7391473942_))
                       (_K7391273937_ _rest73947_ _stx73945_)))
                   '#!void)))
           current-output-port
           _port73894_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message73764_
               _irritants73765_
               _where73766_
               _context73767_
               _marks73768_
               _phi73769_)
        (let ((__obj74085
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj74085
           _message73764_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74085
           _irritants73765_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74085
           _where73766_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74085
           _context73767_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74085
           _marks73768_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74085
           _phi73769_
           '5
           SyntaxError::t
           '#f)
          __obj74085)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where73759_ _message73760_ _stx73761_ . _details73762_)
        (raise (make-syntax-error
                _message73760_
                (cons _stx73761_ _details73762_)
                _where73759_
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
      (lambda _$args73756_ (apply make-instance AST::t _$args73756_)))
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
      (lambda (_stx73754_)
        (if (##structure-instance-of? _stx73754_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx73754_ '1 AST::t '#f)
            _stx73754_)))
    (define __AST-source
      (lambda (_stx73748_)
        (let _lp73750_ ((_src73752_ _stx73748_))
          (if (##structure-instance-of? _src73752_ 'gerbil#AST::t)
              (_lp73750_ (##unchecked-structure-ref _src73752_ '2 AST::t '#f))
              (if (##locat? _src73752_) _src73752_ '#f)))))
    (define __AST
      (lambda (_e73740_ _src-stx73741_)
        (let ((_src73743_ (__AST-source _src-stx73741_)))
          (if (or (##structure-instance-of? _e73740_ 'gerbil#AST::t)
                  (not _src73743_))
              _e73740_
              (##structure AST::t _e73740_ _src73743_)))))
    (define __AST-eq?
      (lambda (_stx73737_ _obj73738_) (eq? (__AST-e _stx73737_) _obj73738_)))
    (define __AST-pair? (lambda (_stx73735_) (pair? (__AST-e _stx73735_))))
    (define __AST-null? (lambda (_stx73733_) (null? (__AST-e _stx73733_))))
    (define __AST-datum?
      (lambda (_stx73714_)
        (let* ((_e73716_ (__AST-e _stx73714_)) (_$e73718_ (number? _e73716_)))
          (if _$e73718_
              _$e73718_
              (let ((_$e73721_ (string? _e73716_)))
                (if _$e73721_
                    _$e73721_
                    (let ((_$e73724_ (char? _e73716_)))
                      (if _$e73724_
                          _$e73724_
                          (let ((_$e73727_ (keyword? _e73716_)))
                            (if _$e73727_
                                _$e73727_
                                (let ((_$e73730_ (boolean? _e73716_)))
                                  (if _$e73730_
                                      _$e73730_
                                      (eq? _e73716_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx73712_) (symbol? (__AST-e _stx73712_))))
    (define __AST-id-list?__%
      (lambda (_stx73663_ _tail?73664_)
        (let _lp73666_ ((_rest73668_ _stx73663_))
          (let* ((_$e73670_ _rest73668_)
                 (_$E7367273685_
                  (lambda ()
                    (let* ((_$E7367373680_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73670_)))
                           (_rest73683_ _$e73670_))
                      (_tail?73664_ _rest73683_)))))
            (if (__AST-pair? _$e73670_)
                (let* ((_$tgt7367473688_ (__AST-e _$e73670_))
                       (_$hd7367573691_ (##car _$tgt7367473688_))
                       (_$tl7367673694_ (##cdr _$tgt7367473688_)))
                  (let* ((_hd73698_ _$hd7367573691_)
                         (_rest73700_ _$tl7367673694_))
                    (if (__AST-id? _hd73698_) (_lp73666_ _rest73700_) '#f)))
                (_$E7367273685_))))))
    (define __AST-id-list?__0
      (lambda (_stx73705_)
        (let ((_tail?73707_ __AST-null?))
          (__AST-id-list?__% _stx73705_ _tail?73707_))))
    (define __AST-id-list?
      (lambda _g74088_
        (let ((_g74087_ (##length _g74088_)))
          (cond ((##fx= _g74087_ 1)
                 (apply (lambda (_stx73705_) (__AST-id-list?__0 _stx73705_))
                        _g74088_))
                ((##fx= _g74087_ 2)
                 (apply (lambda (_stx73709_ _tail?73710_)
                          (__AST-id-list?__% _stx73709_ _tail?73710_))
                        _g74088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g74088_))))))
    (define __AST-bind-list?
      (lambda (_stx73655_)
        (__AST-id-list?__%
         _stx73655_
         (lambda (_e73657_)
           (let ((_$e73659_ (__AST-null? _e73657_)))
             (if _$e73659_ _$e73659_ (__AST-id? _e73657_)))))))
    (define __AST-list?__%
      (lambda (_stx73608_ _tail?73609_)
        (let _lp73611_ ((_rest73613_ _stx73608_))
          (let* ((_$e73615_ _rest73613_)
                 (_$E7361773630_
                  (lambda ()
                    (let* ((_$E7361873625_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73615_)))
                           (_rest73628_ _$e73615_))
                      (_tail?73609_ _rest73628_)))))
            (if (__AST-pair? _$e73615_)
                (let* ((_$tgt7361973633_ (__AST-e _$e73615_))
                       (_$hd7362073636_ (##car _$tgt7361973633_))
                       (_$tl7362173639_ (##cdr _$tgt7361973633_)))
                  (let ((_rest73643_ _$tl7362173639_))
                    (_lp73611_ _rest73643_)))
                (_$E7361773630_))))))
    (define __AST-list?__0
      (lambda (_stx73648_)
        (let ((_tail?73650_ __AST-null?))
          (__AST-list?__% _stx73648_ _tail?73650_))))
    (define __AST-list?
      (lambda _g74090_
        (let ((_g74089_ (##length _g74090_)))
          (cond ((##fx= _g74089_ 1)
                 (apply (lambda (_stx73648_) (__AST-list?__0 _stx73648_))
                        _g74090_))
                ((##fx= _g74089_ 2)
                 (apply (lambda (_stx73652_ _tail?73653_)
                          (__AST-list?__% _stx73652_ _tail?73653_))
                        _g74090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g74090_))))))
    (define __AST->list
      (lambda (_stx73573_)
        (let* ((_$e73575_ _stx73573_)
               (_$E7357773590_
                (lambda ()
                  (let* ((_$E7357873585_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e73575_)))
                         (_rest73588_ _$e73575_))
                    (__AST-e _rest73588_)))))
          (if (__AST-pair? _$e73575_)
              (let* ((_$tgt7357973593_ (__AST-e _$e73575_))
                     (_$hd7358073596_ (##car _$tgt7357973593_))
                     (_$tl7358173599_ (##cdr _$tgt7357973593_)))
                (let* ((_hd73603_ _$hd7358073596_)
                       (_rest73605_ _$tl7358173599_))
                  (cons _hd73603_ (__AST->list _rest73605_))))
              (_$E7357773590_)))))
    (define __AST->datum
      (lambda (_stx73571_)
        (if (##structure-instance-of? _stx73571_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx73571_))
            (if (pair? _stx73571_)
                (cons (__AST->datum (car _stx73571_))
                      (__AST->datum (cdr _stx73571_)))
                (if (vector? _stx73571_)
                    (vector-map __AST->datum _stx73571_)
                    (if (box? _stx73571_)
                        (box (__AST->datum (unbox _stx73571_)))
                        _stx73571_))))))
    (define get-readenv
      (lambda (_port73569_)
        (##make-readenv
         _port73569_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in73557_)
        (let ((_e73559_ (##read-datum-or-eof (get-readenv _in73557_))))
          (if (eof-object? (__AST-e _e73559_)) (__AST-e _e73559_) _e73559_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in73565_ (current-input-port))) (read-syntax__% _in73565_))))
    (define read-syntax
      (lambda _g74092_
        (let ((_g74091_ (##length _g74092_)))
          (cond ((##fx= _g74091_ 0)
                 (apply (lambda () (read-syntax__0)) _g74092_))
                ((##fx= _g74091_ 1)
                 (apply (lambda (_in73567_) (read-syntax__% _in73567_))
                        _g74092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g74092_))))))
    (define read-syntax-from-file
      (lambda (_path73552_)
        (let ((_r73554_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path73552_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r73554_)
              (cdr (__AST-e (vector-ref _r73554_ '1)))
              (error (err-code->string _r73554_) _path73552_)))))
    (define __wrap-syntax
      (lambda (_re73549_ _e73550_)
        (if (eof-object? _e73550_)
            _e73550_
            (##structure AST::t _e73550_ (##readenv->locat _re73549_)))))
    (define __unwrap-syntax (lambda (_re73546_ _e73547_) (__AST-e _e73547_)))
    (define __pp-syntax (lambda (_stx73544_) (pp (__AST->datum _stx73544_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt73542_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt73542_ '#t)
          (macro-readtable-bracket-handler-set! _rt73542_ '@list)
          (macro-readtable-brace-handler-set! _rt73542_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt73542_
           '#\!
           __read-sharp-bang)
          _rt73542_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt73538_ _kw73539_)
        (macro-readtable-bracket-handler-set! _rt73538_ _kw73539_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt73535_ _kw73536_)
        (macro-readtable-brace-handler-set! _rt73535_ _kw73536_)))
    (define __read-sharp-bang
      (lambda (_re73526_ _next73527_ _start-pos73528_)
        (if (eq? _start-pos73528_ '0)
            (let* ((_line73530_
                    (##read-line
                     (macro-readenv-port _re73526_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line73532_
                    (substring _line73530_ '1 (string-length _line73530_))))
              (macro-readenv-script-line-set! _re73526_ _script-line73532_)
              (##script-marker))
            (##read-sharp-bang _re73526_ _next73527_ _start-pos73528_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj73524_)
        (if (source-location? _obj73524_)
            (string? (##locat-container _obj73524_))
            '#f)))
    (define source-location-path
      (lambda (_obj73522_)
        (if (##locat? _obj73522_)
            (##container->path (##locat-container _obj73522_))
            '#f)))))
