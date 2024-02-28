(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1709128371)
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
      (lambda _$args75047_ (apply make-instance SyntaxError::t _$args75047_)))
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
      (lambda (_self74950_ _port74951_)
        (letrec ((_location74953_
                  (lambda ()
                    (let _lp75007_ ((_rest75009_
                                     (##unchecked-structure-ref
                                      _self74950_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7501075018_ _rest75009_)
                             (_else7501275026_ (lambda () '#f))
                             (_K7501475035_
                              (lambda (_rest75029_ _hd75030_)
                                (let ((_$e75032_ (__AST-source _hd75030_)))
                                  (if _$e75032_
                                      _$e75032_
                                      (_lp75007_ _rest75029_))))))
                        (if (##pair? _rest7501075018_)
                            (let ((_hd7501575038_ (##car _rest7501075018_))
                                  (_tl7501675040_ (##cdr _rest7501075018_)))
                              (let* ((_hd75043_ _hd7501575038_)
                                     (_rest75045_ _tl7501675040_))
                                (_K7501475035_ _rest75045_ _hd75043_)))
                            (_else7501275026_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e74956_ (_location74953_)))
               (if _$e74956_
                   ((lambda (_where74959_)
                      (##display-locat _where74959_ '#t (current-output-port)))
                    _$e74956_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e74961_
                    (##unchecked-structure-ref
                     _self74950_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e74961_
                   ((lambda (_where74964_)
                      (displayln
                       '" at "
                       _where74964_
                       '": "
                       (##unchecked-structure-ref
                        _self74950_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e74961_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self74950_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7496574973_
                     (##unchecked-structure-ref
                      _self74950_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7496774981_ (lambda () '#!void))
                    (_K7496974994_
                     (lambda (_rest74984_ _stx74985_)
                       (display '"... form:   ")
                       (__pp-syntax _stx74985_)
                       (for-each
                        (lambda (_detail74987_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail74987_))
                          (let ((_$e74989_ (__AST-source _detail74987_)))
                            (if _$e74989_
                                ((lambda (_loc74992_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc74992_
                                    '#t
                                    (current-output-port)))
                                 _$e74989_)
                                '#!void))
                          (newline))
                        _rest74984_))))
               (if (##pair? _g7496574973_)
                   (let ((_hd7497074997_ (##car _g7496574973_))
                         (_tl7497174999_ (##cdr _g7496574973_)))
                     (let* ((_stx75002_ _hd7497074997_)
                            (_rest75004_ _tl7497174999_))
                       (_K7496974994_ _rest75004_ _stx75002_)))
                   '#!void)))
           current-output-port
           _port74951_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74821_
               _irritants74822_
               _where74823_
               _context74824_
               _marks74825_
               _phi74826_)
        (let ((__obj75142
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj75142
           _message74821_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75142
           _irritants74822_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75142
           _where74823_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75142
           _context74824_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75142
           _marks74825_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75142
           _phi74826_
           '5
           SyntaxError::t
           '#f)
          __obj75142)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74816_ _message74817_ _stx74818_ . _details74819_)
        (raise (make-syntax-error
                _message74817_
                (cons _stx74818_ _details74819_)
                _where74816_
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
      (lambda _$args74813_ (apply make-instance AST::t _$args74813_)))
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
      (lambda (_stx74811_)
        (if (##structure-instance-of? _stx74811_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74811_ '1 AST::t '#f)
            _stx74811_)))
    (define __AST-source
      (lambda (_stx74805_)
        (let _lp74807_ ((_src74809_ _stx74805_))
          (if (##structure-instance-of? _src74809_ 'gerbil#AST::t)
              (_lp74807_ (##unchecked-structure-ref _src74809_ '2 AST::t '#f))
              (if (##locat? _src74809_) _src74809_ '#f)))))
    (define __AST
      (lambda (_e74797_ _src-stx74798_)
        (let ((_src74800_ (__AST-source _src-stx74798_)))
          (if (or (##structure-instance-of? _e74797_ 'gerbil#AST::t)
                  (not _src74800_))
              _e74797_
              (##structure AST::t _e74797_ _src74800_)))))
    (define __AST-eq?
      (lambda (_stx74794_ _obj74795_) (eq? (__AST-e _stx74794_) _obj74795_)))
    (define __AST-pair? (lambda (_stx74792_) (pair? (__AST-e _stx74792_))))
    (define __AST-null? (lambda (_stx74790_) (null? (__AST-e _stx74790_))))
    (define __AST-datum?
      (lambda (_stx74771_)
        (let* ((_e74773_ (__AST-e _stx74771_)) (_$e74775_ (number? _e74773_)))
          (if _$e74775_
              _$e74775_
              (let ((_$e74778_ (string? _e74773_)))
                (if _$e74778_
                    _$e74778_
                    (let ((_$e74781_ (char? _e74773_)))
                      (if _$e74781_
                          _$e74781_
                          (let ((_$e74784_ (keyword? _e74773_)))
                            (if _$e74784_
                                _$e74784_
                                (let ((_$e74787_ (boolean? _e74773_)))
                                  (if _$e74787_
                                      _$e74787_
                                      (eq? _e74773_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74769_) (symbol? (__AST-e _stx74769_))))
    (define __AST-id-list?__%
      (lambda (_stx74720_ _tail?74721_)
        (let _lp74723_ ((_rest74725_ _stx74720_))
          (let* ((_$e74727_ _rest74725_)
                 (_$E7472974742_
                  (lambda ()
                    (let* ((_$E7473074737_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74727_)))
                           (_rest74740_ _$e74727_))
                      (_tail?74721_ _rest74740_)))))
            (if (__AST-pair? _$e74727_)
                (let* ((_$tgt7473174745_ (__AST-e _$e74727_))
                       (_$hd7473274748_ (##car _$tgt7473174745_))
                       (_$tl7473374751_ (##cdr _$tgt7473174745_)))
                  (let* ((_hd74755_ _$hd7473274748_)
                         (_rest74757_ _$tl7473374751_))
                    (if (__AST-id? _hd74755_) (_lp74723_ _rest74757_) '#f)))
                (_$E7472974742_))))))
    (define __AST-id-list?__0
      (lambda (_stx74762_)
        (let ((_tail?74764_ __AST-null?))
          (__AST-id-list?__% _stx74762_ _tail?74764_))))
    (define __AST-id-list?
      (lambda _g75145_
        (let ((_g75144_ (##length _g75145_)))
          (cond ((##fx= _g75144_ 1)
                 (apply (lambda (_stx74762_) (__AST-id-list?__0 _stx74762_))
                        _g75145_))
                ((##fx= _g75144_ 2)
                 (apply (lambda (_stx74766_ _tail?74767_)
                          (__AST-id-list?__% _stx74766_ _tail?74767_))
                        _g75145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g75145_))))))
    (define __AST-bind-list?
      (lambda (_stx74712_)
        (__AST-id-list?__%
         _stx74712_
         (lambda (_e74714_)
           (let ((_$e74716_ (__AST-null? _e74714_)))
             (if _$e74716_ _$e74716_ (__AST-id? _e74714_)))))))
    (define __AST-list?__%
      (lambda (_stx74665_ _tail?74666_)
        (let _lp74668_ ((_rest74670_ _stx74665_))
          (let* ((_$e74672_ _rest74670_)
                 (_$E7467474687_
                  (lambda ()
                    (let* ((_$E7467574682_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74672_)))
                           (_rest74685_ _$e74672_))
                      (_tail?74666_ _rest74685_)))))
            (if (__AST-pair? _$e74672_)
                (let* ((_$tgt7467674690_ (__AST-e _$e74672_))
                       (_$hd7467774693_ (##car _$tgt7467674690_))
                       (_$tl7467874696_ (##cdr _$tgt7467674690_)))
                  (let ((_rest74700_ _$tl7467874696_))
                    (_lp74668_ _rest74700_)))
                (_$E7467474687_))))))
    (define __AST-list?__0
      (lambda (_stx74705_)
        (let ((_tail?74707_ __AST-null?))
          (__AST-list?__% _stx74705_ _tail?74707_))))
    (define __AST-list?
      (lambda _g75147_
        (let ((_g75146_ (##length _g75147_)))
          (cond ((##fx= _g75146_ 1)
                 (apply (lambda (_stx74705_) (__AST-list?__0 _stx74705_))
                        _g75147_))
                ((##fx= _g75146_ 2)
                 (apply (lambda (_stx74709_ _tail?74710_)
                          (__AST-list?__% _stx74709_ _tail?74710_))
                        _g75147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g75147_))))))
    (define __AST->list
      (lambda (_stx74630_)
        (let* ((_$e74632_ _stx74630_)
               (_$E7463474647_
                (lambda ()
                  (let* ((_$E7463574642_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74632_)))
                         (_rest74645_ _$e74632_))
                    (__AST-e _rest74645_)))))
          (if (__AST-pair? _$e74632_)
              (let* ((_$tgt7463674650_ (__AST-e _$e74632_))
                     (_$hd7463774653_ (##car _$tgt7463674650_))
                     (_$tl7463874656_ (##cdr _$tgt7463674650_)))
                (let* ((_hd74660_ _$hd7463774653_)
                       (_rest74662_ _$tl7463874656_))
                  (cons _hd74660_ (__AST->list _rest74662_))))
              (_$E7463474647_)))))
    (define __AST->datum
      (lambda (_stx74628_)
        (if (##structure-instance-of? _stx74628_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74628_))
            (if (pair? _stx74628_)
                (cons (__AST->datum (car _stx74628_))
                      (__AST->datum (cdr _stx74628_)))
                (if (vector? _stx74628_)
                    (vector-map __AST->datum _stx74628_)
                    (if (box? _stx74628_)
                        (box (__AST->datum (unbox _stx74628_)))
                        _stx74628_))))))
    (define get-readenv
      (lambda (_port74626_)
        (##make-readenv
         _port74626_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74614_)
        (let ((_e74616_ (##read-datum-or-eof (get-readenv _in74614_))))
          (if (eof-object? (__AST-e _e74616_)) (__AST-e _e74616_) _e74616_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74622_ (current-input-port))) (read-syntax__% _in74622_))))
    (define read-syntax
      (lambda _g75149_
        (let ((_g75148_ (##length _g75149_)))
          (cond ((##fx= _g75148_ 0)
                 (apply (lambda () (read-syntax__0)) _g75149_))
                ((##fx= _g75148_ 1)
                 (apply (lambda (_in74624_) (read-syntax__% _in74624_))
                        _g75149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g75149_))))))
    (define read-syntax-from-file
      (lambda (_path74609_)
        (let ((_r74611_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74609_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74611_)
              (cdr (__AST-e (vector-ref _r74611_ '1)))
              (error (err-code->string _r74611_) _path74609_)))))
    (define __wrap-syntax
      (lambda (_re74606_ _e74607_)
        (if (eof-object? _e74607_)
            _e74607_
            (##structure AST::t _e74607_ (##readenv->locat _re74606_)))))
    (define __unwrap-syntax (lambda (_re74603_ _e74604_) (__AST-e _e74604_)))
    (define __pp-syntax (lambda (_stx74601_) (pp (__AST->datum _stx74601_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74599_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74599_ '#t)
          (macro-readtable-bracket-handler-set! _rt74599_ '@list)
          (macro-readtable-brace-handler-set! _rt74599_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74599_
           '#\!
           __read-sharp-bang)
          _rt74599_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74595_ _kw74596_)
        (macro-readtable-bracket-handler-set! _rt74595_ _kw74596_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74592_ _kw74593_)
        (macro-readtable-brace-handler-set! _rt74592_ _kw74593_)))
    (define __read-sharp-bang
      (lambda (_re74583_ _next74584_ _start-pos74585_)
        (if (eq? _start-pos74585_ '0)
            (let* ((_line74587_
                    (##read-line
                     (macro-readenv-port _re74583_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74589_
                    (substring _line74587_ '1 (string-length _line74587_))))
              (macro-readenv-script-line-set! _re74583_ _script-line74589_)
              (##script-marker))
            (##read-sharp-bang _re74583_ _next74584_ _start-pos74585_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74581_)
        (if (source-location? _obj74581_)
            (string? (##locat-container _obj74581_))
            '#f)))
    (define source-location-path
      (lambda (_obj74579_)
        (if (##locat? _obj74579_)
            (##container->path (##locat-container _obj74579_))
            '#f)))))
