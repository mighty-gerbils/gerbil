(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1709213449)
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
      (lambda _$args75057_ (apply make-instance SyntaxError::t _$args75057_)))
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
      (lambda (_self74960_ _port74961_)
        (letrec ((_location74963_
                  (lambda ()
                    (let _lp75017_ ((_rest75019_
                                     (##unchecked-structure-ref
                                      _self74960_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7502075028_ _rest75019_)
                             (_else7502275036_ (lambda () '#f))
                             (_K7502475045_
                              (lambda (_rest75039_ _hd75040_)
                                (let ((_$e75042_ (__AST-source _hd75040_)))
                                  (if _$e75042_
                                      _$e75042_
                                      (_lp75017_ _rest75039_))))))
                        (if (##pair? _rest7502075028_)
                            (let ((_hd7502575048_ (##car _rest7502075028_))
                                  (_tl7502675050_ (##cdr _rest7502075028_)))
                              (let* ((_hd75053_ _hd7502575048_)
                                     (_rest75055_ _tl7502675050_))
                                (_K7502475045_ _rest75055_ _hd75053_)))
                            (_else7502275036_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e74966_ (_location74963_)))
               (if _$e74966_
                   ((lambda (_where74969_)
                      (##display-locat _where74969_ '#t (current-output-port)))
                    _$e74966_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e74971_
                    (##unchecked-structure-ref
                     _self74960_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e74971_
                   ((lambda (_where74974_)
                      (displayln
                       '" at "
                       _where74974_
                       '": "
                       (##unchecked-structure-ref
                        _self74960_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e74971_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self74960_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7497574983_
                     (##unchecked-structure-ref
                      _self74960_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7497774991_ (lambda () '#!void))
                    (_K7497975004_
                     (lambda (_rest74994_ _stx74995_)
                       (display '"... form:   ")
                       (__pp-syntax _stx74995_)
                       (for-each
                        (lambda (_detail74997_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail74997_))
                          (let ((_$e74999_ (__AST-source _detail74997_)))
                            (if _$e74999_
                                ((lambda (_loc75002_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc75002_
                                    '#t
                                    (current-output-port)))
                                 _$e74999_)
                                '#!void))
                          (newline))
                        _rest74994_))))
               (if (##pair? _g7497574983_)
                   (let ((_hd7498075007_ (##car _g7497574983_))
                         (_tl7498175009_ (##cdr _g7497574983_)))
                     (let* ((_stx75012_ _hd7498075007_)
                            (_rest75014_ _tl7498175009_))
                       (_K7497975004_ _rest75014_ _stx75012_)))
                   '#!void)))
           current-output-port
           _port74961_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74831_
               _irritants74832_
               _where74833_
               _context74834_
               _marks74835_
               _phi74836_)
        (let ((__obj75152
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj75152
           _message74831_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75152
           _irritants74832_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75152
           _where74833_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75152
           _context74834_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75152
           _marks74835_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75152
           _phi74836_
           '5
           SyntaxError::t
           '#f)
          __obj75152)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74826_ _message74827_ _stx74828_ . _details74829_)
        (raise (make-syntax-error
                _message74827_
                (cons _stx74828_ _details74829_)
                _where74826_
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
      (lambda _$args74823_ (apply make-instance AST::t _$args74823_)))
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
      (lambda (_stx74821_)
        (if (##structure-instance-of? _stx74821_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74821_ '1 AST::t '#f)
            _stx74821_)))
    (define __AST-source
      (lambda (_stx74815_)
        (let _lp74817_ ((_src74819_ _stx74815_))
          (if (##structure-instance-of? _src74819_ 'gerbil#AST::t)
              (_lp74817_ (##unchecked-structure-ref _src74819_ '2 AST::t '#f))
              (if (##locat? _src74819_) _src74819_ '#f)))))
    (define __AST
      (lambda (_e74807_ _src-stx74808_)
        (let ((_src74810_ (__AST-source _src-stx74808_)))
          (if (or (##structure-instance-of? _e74807_ 'gerbil#AST::t)
                  (not _src74810_))
              _e74807_
              (##structure AST::t _e74807_ _src74810_)))))
    (define __AST-eq?
      (lambda (_stx74804_ _obj74805_) (eq? (__AST-e _stx74804_) _obj74805_)))
    (define __AST-pair? (lambda (_stx74802_) (pair? (__AST-e _stx74802_))))
    (define __AST-null? (lambda (_stx74800_) (null? (__AST-e _stx74800_))))
    (define __AST-datum?
      (lambda (_stx74781_)
        (let* ((_e74783_ (__AST-e _stx74781_)) (_$e74785_ (number? _e74783_)))
          (if _$e74785_
              _$e74785_
              (let ((_$e74788_ (string? _e74783_)))
                (if _$e74788_
                    _$e74788_
                    (let ((_$e74791_ (char? _e74783_)))
                      (if _$e74791_
                          _$e74791_
                          (let ((_$e74794_ (keyword? _e74783_)))
                            (if _$e74794_
                                _$e74794_
                                (let ((_$e74797_ (boolean? _e74783_)))
                                  (if _$e74797_
                                      _$e74797_
                                      (eq? _e74783_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74779_) (symbol? (__AST-e _stx74779_))))
    (define __AST-id-list?__%
      (lambda (_stx74730_ _tail?74731_)
        (let _lp74733_ ((_rest74735_ _stx74730_))
          (let* ((_$e74737_ _rest74735_)
                 (_$E7473974752_
                  (lambda ()
                    (let* ((_$E7474074747_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74737_)))
                           (_rest74750_ _$e74737_))
                      (_tail?74731_ _rest74750_)))))
            (if (__AST-pair? _$e74737_)
                (let* ((_$tgt7474174755_ (__AST-e _$e74737_))
                       (_$hd7474274758_ (##car _$tgt7474174755_))
                       (_$tl7474374761_ (##cdr _$tgt7474174755_)))
                  (let* ((_hd74765_ _$hd7474274758_)
                         (_rest74767_ _$tl7474374761_))
                    (if (__AST-id? _hd74765_) (_lp74733_ _rest74767_) '#f)))
                (_$E7473974752_))))))
    (define __AST-id-list?__0
      (lambda (_stx74772_)
        (let ((_tail?74774_ __AST-null?))
          (__AST-id-list?__% _stx74772_ _tail?74774_))))
    (define __AST-id-list?
      (lambda _g75155_
        (let ((_g75154_ (##length _g75155_)))
          (cond ((##fx= _g75154_ 1)
                 (apply (lambda (_stx74772_) (__AST-id-list?__0 _stx74772_))
                        _g75155_))
                ((##fx= _g75154_ 2)
                 (apply (lambda (_stx74776_ _tail?74777_)
                          (__AST-id-list?__% _stx74776_ _tail?74777_))
                        _g75155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g75155_))))))
    (define __AST-bind-list?
      (lambda (_stx74722_)
        (__AST-id-list?__%
         _stx74722_
         (lambda (_e74724_)
           (let ((_$e74726_ (__AST-null? _e74724_)))
             (if _$e74726_ _$e74726_ (__AST-id? _e74724_)))))))
    (define __AST-list?__%
      (lambda (_stx74675_ _tail?74676_)
        (let _lp74678_ ((_rest74680_ _stx74675_))
          (let* ((_$e74682_ _rest74680_)
                 (_$E7468474697_
                  (lambda ()
                    (let* ((_$E7468574692_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74682_)))
                           (_rest74695_ _$e74682_))
                      (_tail?74676_ _rest74695_)))))
            (if (__AST-pair? _$e74682_)
                (let* ((_$tgt7468674700_ (__AST-e _$e74682_))
                       (_$hd7468774703_ (##car _$tgt7468674700_))
                       (_$tl7468874706_ (##cdr _$tgt7468674700_)))
                  (let ((_rest74710_ _$tl7468874706_))
                    (_lp74678_ _rest74710_)))
                (_$E7468474697_))))))
    (define __AST-list?__0
      (lambda (_stx74715_)
        (let ((_tail?74717_ __AST-null?))
          (__AST-list?__% _stx74715_ _tail?74717_))))
    (define __AST-list?
      (lambda _g75157_
        (let ((_g75156_ (##length _g75157_)))
          (cond ((##fx= _g75156_ 1)
                 (apply (lambda (_stx74715_) (__AST-list?__0 _stx74715_))
                        _g75157_))
                ((##fx= _g75156_ 2)
                 (apply (lambda (_stx74719_ _tail?74720_)
                          (__AST-list?__% _stx74719_ _tail?74720_))
                        _g75157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g75157_))))))
    (define __AST->list
      (lambda (_stx74640_)
        (let* ((_$e74642_ _stx74640_)
               (_$E7464474657_
                (lambda ()
                  (let* ((_$E7464574652_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74642_)))
                         (_rest74655_ _$e74642_))
                    (__AST-e _rest74655_)))))
          (if (__AST-pair? _$e74642_)
              (let* ((_$tgt7464674660_ (__AST-e _$e74642_))
                     (_$hd7464774663_ (##car _$tgt7464674660_))
                     (_$tl7464874666_ (##cdr _$tgt7464674660_)))
                (let* ((_hd74670_ _$hd7464774663_)
                       (_rest74672_ _$tl7464874666_))
                  (cons _hd74670_ (__AST->list _rest74672_))))
              (_$E7464474657_)))))
    (define __AST->datum
      (lambda (_stx74638_)
        (if (##structure-instance-of? _stx74638_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74638_))
            (if (pair? _stx74638_)
                (cons (__AST->datum (car _stx74638_))
                      (__AST->datum (cdr _stx74638_)))
                (if (vector? _stx74638_)
                    (vector-map __AST->datum _stx74638_)
                    (if (box? _stx74638_)
                        (box (__AST->datum (unbox _stx74638_)))
                        _stx74638_))))))
    (define get-readenv
      (lambda (_port74636_)
        (##make-readenv
         _port74636_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74624_)
        (let ((_e74626_ (##read-datum-or-eof (get-readenv _in74624_))))
          (if (eof-object? (__AST-e _e74626_)) (__AST-e _e74626_) _e74626_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74632_ (current-input-port))) (read-syntax__% _in74632_))))
    (define read-syntax
      (lambda _g75159_
        (let ((_g75158_ (##length _g75159_)))
          (cond ((##fx= _g75158_ 0)
                 (apply (lambda () (read-syntax__0)) _g75159_))
                ((##fx= _g75158_ 1)
                 (apply (lambda (_in74634_) (read-syntax__% _in74634_))
                        _g75159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g75159_))))))
    (define read-syntax-from-file
      (lambda (_path74619_)
        (let ((_r74621_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74619_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74621_)
              (cdr (__AST-e (vector-ref _r74621_ '1)))
              (error (err-code->string _r74621_) _path74619_)))))
    (define __wrap-syntax
      (lambda (_re74616_ _e74617_)
        (if (eof-object? _e74617_)
            _e74617_
            (##structure AST::t _e74617_ (##readenv->locat _re74616_)))))
    (define __unwrap-syntax (lambda (_re74613_ _e74614_) (__AST-e _e74614_)))
    (define __pp-syntax (lambda (_stx74611_) (pp (__AST->datum _stx74611_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74609_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74609_ '#t)
          (macro-readtable-bracket-handler-set! _rt74609_ '@list)
          (macro-readtable-brace-handler-set! _rt74609_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74609_
           '#\!
           __read-sharp-bang)
          _rt74609_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74605_ _kw74606_)
        (macro-readtable-bracket-handler-set! _rt74605_ _kw74606_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74602_ _kw74603_)
        (macro-readtable-brace-handler-set! _rt74602_ _kw74603_)))
    (define __read-sharp-bang
      (lambda (_re74593_ _next74594_ _start-pos74595_)
        (if (eq? _start-pos74595_ '0)
            (let* ((_line74597_
                    (##read-line
                     (macro-readenv-port _re74593_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74599_
                    (substring _line74597_ '1 (string-length _line74597_))))
              (macro-readenv-script-line-set! _re74593_ _script-line74599_)
              (##script-marker))
            (##read-sharp-bang _re74593_ _next74594_ _start-pos74595_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74591_)
        (if (source-location? _obj74591_)
            (string? (##locat-container _obj74591_))
            '#f)))
    (define source-location-path
      (lambda (_obj74589_)
        (if (##locat? _obj74589_)
            (##container->path (##locat-container _obj74589_))
            '#f)))))
