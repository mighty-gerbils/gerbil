(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710488240)
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
      (lambda _$args74646_ (apply make-instance SyntaxError::t _$args74646_)))
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
      (lambda (_self74549_ _port74550_)
        (letrec ((_location74552_
                  (lambda ()
                    (let _lp74606_ ((_rest74608_
                                     (##unchecked-structure-ref
                                      _self74549_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7460974617_ _rest74608_)
                             (_else7461174625_ (lambda () '#f))
                             (_K7461374634_
                              (lambda (_rest74628_ _hd74629_)
                                (let ((_$e74631_ (__AST-source _hd74629_)))
                                  (if _$e74631_
                                      _$e74631_
                                      (_lp74606_ _rest74628_))))))
                        (if (##pair? _rest7460974617_)
                            (let ((_hd7461474637_ (##car _rest7460974617_))
                                  (_tl7461574639_ (##cdr _rest7460974617_)))
                              (let* ((_hd74642_ _hd7461474637_)
                                     (_rest74644_ _tl7461574639_))
                                (_K7461374634_ _rest74644_ _hd74642_)))
                            (_else7461174625_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e74555_ (_location74552_)))
               (if _$e74555_
                   ((lambda (_where74558_)
                      (##display-locat _where74558_ '#t (current-output-port)))
                    _$e74555_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e74560_
                    (##unchecked-structure-ref
                     _self74549_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e74560_
                   ((lambda (_where74563_)
                      (displayln
                       '" at "
                       _where74563_
                       '": "
                       (##unchecked-structure-ref
                        _self74549_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e74560_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self74549_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7456474572_
                     (##unchecked-structure-ref
                      _self74549_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7456674580_ (lambda () '#!void))
                    (_K7456874593_
                     (lambda (_rest74583_ _stx74584_)
                       (display '"... form:   ")
                       (__pp-syntax _stx74584_)
                       (for-each
                        (lambda (_detail74586_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail74586_))
                          (let ((_$e74588_ (__AST-source _detail74586_)))
                            (if _$e74588_
                                ((lambda (_loc74591_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc74591_
                                    '#t
                                    (current-output-port)))
                                 _$e74588_)
                                '#!void))
                          (newline))
                        _rest74583_))))
               (if (##pair? _g7456474572_)
                   (let ((_hd7456974596_ (##car _g7456474572_))
                         (_tl7457074598_ (##cdr _g7456474572_)))
                     (let* ((_stx74601_ _hd7456974596_)
                            (_rest74603_ _tl7457074598_))
                       (_K7456874593_ _rest74603_ _stx74601_)))
                   '#!void)))
           current-output-port
           _port74550_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74420_
               _irritants74421_
               _where74422_
               _context74423_
               _marks74424_
               _phi74425_)
        (let ((__obj74741
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj74741
           _message74420_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74741
           _irritants74421_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74741
           _where74422_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74741
           _context74423_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74741
           _marks74424_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74741
           _phi74425_
           '5
           SyntaxError::t
           '#f)
          __obj74741)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74415_ _message74416_ _stx74417_ . _details74418_)
        (raise (make-syntax-error
                _message74416_
                (cons _stx74417_ _details74418_)
                _where74415_
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
      (lambda _$args74412_ (apply make-instance AST::t _$args74412_)))
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
      (lambda (_stx74410_)
        (if (##structure-instance-of? _stx74410_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74410_ '1 AST::t '#f)
            _stx74410_)))
    (define __AST-source
      (lambda (_stx74404_)
        (let _lp74406_ ((_src74408_ _stx74404_))
          (if (##structure-instance-of? _src74408_ 'gerbil#AST::t)
              (_lp74406_ (##unchecked-structure-ref _src74408_ '2 AST::t '#f))
              (if (##locat? _src74408_) _src74408_ '#f)))))
    (define __AST
      (lambda (_e74396_ _src-stx74397_)
        (let ((_src74399_ (__AST-source _src-stx74397_)))
          (if (or (##structure-instance-of? _e74396_ 'gerbil#AST::t)
                  (not _src74399_))
              _e74396_
              (##structure AST::t _e74396_ _src74399_)))))
    (define __AST-eq?
      (lambda (_stx74393_ _obj74394_) (eq? (__AST-e _stx74393_) _obj74394_)))
    (define __AST-pair? (lambda (_stx74391_) (pair? (__AST-e _stx74391_))))
    (define __AST-null? (lambda (_stx74389_) (null? (__AST-e _stx74389_))))
    (define __AST-datum?
      (lambda (_stx74370_)
        (let* ((_e74372_ (__AST-e _stx74370_)) (_$e74374_ (number? _e74372_)))
          (if _$e74374_
              _$e74374_
              (let ((_$e74377_ (string? _e74372_)))
                (if _$e74377_
                    _$e74377_
                    (let ((_$e74380_ (char? _e74372_)))
                      (if _$e74380_
                          _$e74380_
                          (let ((_$e74383_ (keyword? _e74372_)))
                            (if _$e74383_
                                _$e74383_
                                (let ((_$e74386_ (boolean? _e74372_)))
                                  (if _$e74386_
                                      _$e74386_
                                      (eq? _e74372_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74368_) (symbol? (__AST-e _stx74368_))))
    (define __AST-id-list?__%
      (lambda (_stx74319_ _tail?74320_)
        (let _lp74322_ ((_rest74324_ _stx74319_))
          (let* ((_$e74326_ _rest74324_)
                 (_$E7432874341_
                  (lambda ()
                    (let* ((_$E7432974336_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74326_)))
                           (_rest74339_ _$e74326_))
                      (_tail?74320_ _rest74339_)))))
            (if (__AST-pair? _$e74326_)
                (let* ((_$tgt7433074344_ (__AST-e _$e74326_))
                       (_$hd7433174347_ (##car _$tgt7433074344_))
                       (_$tl7433274350_ (##cdr _$tgt7433074344_)))
                  (let* ((_hd74354_ _$hd7433174347_)
                         (_rest74356_ _$tl7433274350_))
                    (if (__AST-id? _hd74354_) (_lp74322_ _rest74356_) '#f)))
                (_$E7432874341_))))))
    (define __AST-id-list?__0
      (lambda (_stx74361_)
        (let ((_tail?74363_ __AST-null?))
          (__AST-id-list?__% _stx74361_ _tail?74363_))))
    (define __AST-id-list?
      (lambda _g74744_
        (let ((_g74743_ (##length _g74744_)))
          (cond ((##fx= _g74743_ 1)
                 (apply (lambda (_stx74361_) (__AST-id-list?__0 _stx74361_))
                        _g74744_))
                ((##fx= _g74743_ 2)
                 (apply (lambda (_stx74365_ _tail?74366_)
                          (__AST-id-list?__% _stx74365_ _tail?74366_))
                        _g74744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g74744_))))))
    (define __AST-bind-list?
      (lambda (_stx74311_)
        (__AST-id-list?__%
         _stx74311_
         (lambda (_e74313_)
           (let ((_$e74315_ (__AST-null? _e74313_)))
             (if _$e74315_ _$e74315_ (__AST-id? _e74313_)))))))
    (define __AST-list?__%
      (lambda (_stx74264_ _tail?74265_)
        (let _lp74267_ ((_rest74269_ _stx74264_))
          (let* ((_$e74271_ _rest74269_)
                 (_$E7427374286_
                  (lambda ()
                    (let* ((_$E7427474281_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74271_)))
                           (_rest74284_ _$e74271_))
                      (_tail?74265_ _rest74284_)))))
            (if (__AST-pair? _$e74271_)
                (let* ((_$tgt7427574289_ (__AST-e _$e74271_))
                       (_$hd7427674292_ (##car _$tgt7427574289_))
                       (_$tl7427774295_ (##cdr _$tgt7427574289_)))
                  (let ((_rest74299_ _$tl7427774295_))
                    (_lp74267_ _rest74299_)))
                (_$E7427374286_))))))
    (define __AST-list?__0
      (lambda (_stx74304_)
        (let ((_tail?74306_ __AST-null?))
          (__AST-list?__% _stx74304_ _tail?74306_))))
    (define __AST-list?
      (lambda _g74746_
        (let ((_g74745_ (##length _g74746_)))
          (cond ((##fx= _g74745_ 1)
                 (apply (lambda (_stx74304_) (__AST-list?__0 _stx74304_))
                        _g74746_))
                ((##fx= _g74745_ 2)
                 (apply (lambda (_stx74308_ _tail?74309_)
                          (__AST-list?__% _stx74308_ _tail?74309_))
                        _g74746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g74746_))))))
    (define __AST->list
      (lambda (_stx74229_)
        (let* ((_$e74231_ _stx74229_)
               (_$E7423374246_
                (lambda ()
                  (let* ((_$E7423474241_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74231_)))
                         (_rest74244_ _$e74231_))
                    (__AST-e _rest74244_)))))
          (if (__AST-pair? _$e74231_)
              (let* ((_$tgt7423574249_ (__AST-e _$e74231_))
                     (_$hd7423674252_ (##car _$tgt7423574249_))
                     (_$tl7423774255_ (##cdr _$tgt7423574249_)))
                (let* ((_hd74259_ _$hd7423674252_)
                       (_rest74261_ _$tl7423774255_))
                  (cons _hd74259_ (__AST->list _rest74261_))))
              (_$E7423374246_)))))
    (define __AST->datum
      (lambda (_stx74227_)
        (if (##structure-instance-of? _stx74227_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74227_))
            (if (pair? _stx74227_)
                (cons (__AST->datum (car _stx74227_))
                      (__AST->datum (cdr _stx74227_)))
                (if (vector? _stx74227_)
                    (vector-map __AST->datum _stx74227_)
                    (if (box? _stx74227_)
                        (box (__AST->datum (unbox _stx74227_)))
                        _stx74227_))))))
    (define get-readenv
      (lambda (_port74225_)
        (##make-readenv
         _port74225_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74213_)
        (let ((_e74215_ (##read-datum-or-eof (get-readenv _in74213_))))
          (if (eof-object? (__AST-e _e74215_)) (__AST-e _e74215_) _e74215_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74221_ (current-input-port))) (read-syntax__% _in74221_))))
    (define read-syntax
      (lambda _g74748_
        (let ((_g74747_ (##length _g74748_)))
          (cond ((##fx= _g74747_ 0)
                 (apply (lambda () (read-syntax__0)) _g74748_))
                ((##fx= _g74747_ 1)
                 (apply (lambda (_in74223_) (read-syntax__% _in74223_))
                        _g74748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g74748_))))))
    (define read-syntax-from-file
      (lambda (_path74208_)
        (let ((_r74210_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74208_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74210_)
              (cdr (__AST-e (vector-ref _r74210_ '1)))
              (error (err-code->string _r74210_) _path74208_)))))
    (define __wrap-syntax
      (lambda (_re74205_ _e74206_)
        (if (eof-object? _e74206_)
            _e74206_
            (##structure AST::t _e74206_ (##readenv->locat _re74205_)))))
    (define __unwrap-syntax (lambda (_re74202_ _e74203_) (__AST-e _e74203_)))
    (define __pp-syntax (lambda (_stx74200_) (pp (__AST->datum _stx74200_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74198_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74198_ '#t)
          (macro-readtable-bracket-handler-set! _rt74198_ '@list)
          (macro-readtable-brace-handler-set! _rt74198_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74198_
           '#\!
           __read-sharp-bang)
          _rt74198_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74194_ _kw74195_)
        (macro-readtable-bracket-handler-set! _rt74194_ _kw74195_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74191_ _kw74192_)
        (macro-readtable-brace-handler-set! _rt74191_ _kw74192_)))
    (define __read-sharp-bang
      (lambda (_re74182_ _next74183_ _start-pos74184_)
        (if (eq? _start-pos74184_ '0)
            (let* ((_line74186_
                    (##read-line
                     (macro-readenv-port _re74182_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74188_
                    (substring _line74186_ '1 (string-length _line74186_))))
              (macro-readenv-script-line-set! _re74182_ _script-line74188_)
              (##script-marker))
            (##read-sharp-bang _re74182_ _next74183_ _start-pos74184_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74180_)
        (if (source-location? _obj74180_)
            (string? (##locat-container _obj74180_))
            '#f)))
    (define source-location-path
      (lambda (_obj74178_)
        (if (##locat? _obj74178_)
            (##container->path (##locat-container _obj74178_))
            '#f)))))
