(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1709159706)
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
      (lambda _$args75049_ (apply make-instance SyntaxError::t _$args75049_)))
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
      (lambda (_self74952_ _port74953_)
        (letrec ((_location74955_
                  (lambda ()
                    (let _lp75009_ ((_rest75011_
                                     (##unchecked-structure-ref
                                      _self74952_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7501275020_ _rest75011_)
                             (_else7501475028_ (lambda () '#f))
                             (_K7501675037_
                              (lambda (_rest75031_ _hd75032_)
                                (let ((_$e75034_ (__AST-source _hd75032_)))
                                  (if _$e75034_
                                      _$e75034_
                                      (_lp75009_ _rest75031_))))))
                        (if (##pair? _rest7501275020_)
                            (let ((_hd7501775040_ (##car _rest7501275020_))
                                  (_tl7501875042_ (##cdr _rest7501275020_)))
                              (let* ((_hd75045_ _hd7501775040_)
                                     (_rest75047_ _tl7501875042_))
                                (_K7501675037_ _rest75047_ _hd75045_)))
                            (_else7501475028_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e74958_ (_location74955_)))
               (if _$e74958_
                   ((lambda (_where74961_)
                      (##display-locat _where74961_ '#t (current-output-port)))
                    _$e74958_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e74963_
                    (##unchecked-structure-ref
                     _self74952_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e74963_
                   ((lambda (_where74966_)
                      (displayln
                       '" at "
                       _where74966_
                       '": "
                       (##unchecked-structure-ref
                        _self74952_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e74963_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self74952_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7496774975_
                     (##unchecked-structure-ref
                      _self74952_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7496974983_ (lambda () '#!void))
                    (_K7497174996_
                     (lambda (_rest74986_ _stx74987_)
                       (display '"... form:   ")
                       (__pp-syntax _stx74987_)
                       (for-each
                        (lambda (_detail74989_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail74989_))
                          (let ((_$e74991_ (__AST-source _detail74989_)))
                            (if _$e74991_
                                ((lambda (_loc74994_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc74994_
                                    '#t
                                    (current-output-port)))
                                 _$e74991_)
                                '#!void))
                          (newline))
                        _rest74986_))))
               (if (##pair? _g7496774975_)
                   (let ((_hd7497274999_ (##car _g7496774975_))
                         (_tl7497375001_ (##cdr _g7496774975_)))
                     (let* ((_stx75004_ _hd7497274999_)
                            (_rest75006_ _tl7497375001_))
                       (_K7497174996_ _rest75006_ _stx75004_)))
                   '#!void)))
           current-output-port
           _port74953_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74823_
               _irritants74824_
               _where74825_
               _context74826_
               _marks74827_
               _phi74828_)
        (let ((__obj75144
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj75144
           _message74823_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75144
           _irritants74824_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75144
           _where74825_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75144
           _context74826_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75144
           _marks74827_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75144
           _phi74828_
           '5
           SyntaxError::t
           '#f)
          __obj75144)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74818_ _message74819_ _stx74820_ . _details74821_)
        (raise (make-syntax-error
                _message74819_
                (cons _stx74820_ _details74821_)
                _where74818_
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
      (lambda _$args74815_ (apply make-instance AST::t _$args74815_)))
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
      (lambda (_stx74813_)
        (if (##structure-instance-of? _stx74813_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74813_ '1 AST::t '#f)
            _stx74813_)))
    (define __AST-source
      (lambda (_stx74807_)
        (let _lp74809_ ((_src74811_ _stx74807_))
          (if (##structure-instance-of? _src74811_ 'gerbil#AST::t)
              (_lp74809_ (##unchecked-structure-ref _src74811_ '2 AST::t '#f))
              (if (##locat? _src74811_) _src74811_ '#f)))))
    (define __AST
      (lambda (_e74799_ _src-stx74800_)
        (let ((_src74802_ (__AST-source _src-stx74800_)))
          (if (or (##structure-instance-of? _e74799_ 'gerbil#AST::t)
                  (not _src74802_))
              _e74799_
              (##structure AST::t _e74799_ _src74802_)))))
    (define __AST-eq?
      (lambda (_stx74796_ _obj74797_) (eq? (__AST-e _stx74796_) _obj74797_)))
    (define __AST-pair? (lambda (_stx74794_) (pair? (__AST-e _stx74794_))))
    (define __AST-null? (lambda (_stx74792_) (null? (__AST-e _stx74792_))))
    (define __AST-datum?
      (lambda (_stx74773_)
        (let* ((_e74775_ (__AST-e _stx74773_)) (_$e74777_ (number? _e74775_)))
          (if _$e74777_
              _$e74777_
              (let ((_$e74780_ (string? _e74775_)))
                (if _$e74780_
                    _$e74780_
                    (let ((_$e74783_ (char? _e74775_)))
                      (if _$e74783_
                          _$e74783_
                          (let ((_$e74786_ (keyword? _e74775_)))
                            (if _$e74786_
                                _$e74786_
                                (let ((_$e74789_ (boolean? _e74775_)))
                                  (if _$e74789_
                                      _$e74789_
                                      (eq? _e74775_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74771_) (symbol? (__AST-e _stx74771_))))
    (define __AST-id-list?__%
      (lambda (_stx74722_ _tail?74723_)
        (let _lp74725_ ((_rest74727_ _stx74722_))
          (let* ((_$e74729_ _rest74727_)
                 (_$E7473174744_
                  (lambda ()
                    (let* ((_$E7473274739_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74729_)))
                           (_rest74742_ _$e74729_))
                      (_tail?74723_ _rest74742_)))))
            (if (__AST-pair? _$e74729_)
                (let* ((_$tgt7473374747_ (__AST-e _$e74729_))
                       (_$hd7473474750_ (##car _$tgt7473374747_))
                       (_$tl7473574753_ (##cdr _$tgt7473374747_)))
                  (let* ((_hd74757_ _$hd7473474750_)
                         (_rest74759_ _$tl7473574753_))
                    (if (__AST-id? _hd74757_) (_lp74725_ _rest74759_) '#f)))
                (_$E7473174744_))))))
    (define __AST-id-list?__0
      (lambda (_stx74764_)
        (let ((_tail?74766_ __AST-null?))
          (__AST-id-list?__% _stx74764_ _tail?74766_))))
    (define __AST-id-list?
      (lambda _g75147_
        (let ((_g75146_ (##length _g75147_)))
          (cond ((##fx= _g75146_ 1)
                 (apply (lambda (_stx74764_) (__AST-id-list?__0 _stx74764_))
                        _g75147_))
                ((##fx= _g75146_ 2)
                 (apply (lambda (_stx74768_ _tail?74769_)
                          (__AST-id-list?__% _stx74768_ _tail?74769_))
                        _g75147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g75147_))))))
    (define __AST-bind-list?
      (lambda (_stx74714_)
        (__AST-id-list?__%
         _stx74714_
         (lambda (_e74716_)
           (let ((_$e74718_ (__AST-null? _e74716_)))
             (if _$e74718_ _$e74718_ (__AST-id? _e74716_)))))))
    (define __AST-list?__%
      (lambda (_stx74667_ _tail?74668_)
        (let _lp74670_ ((_rest74672_ _stx74667_))
          (let* ((_$e74674_ _rest74672_)
                 (_$E7467674689_
                  (lambda ()
                    (let* ((_$E7467774684_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74674_)))
                           (_rest74687_ _$e74674_))
                      (_tail?74668_ _rest74687_)))))
            (if (__AST-pair? _$e74674_)
                (let* ((_$tgt7467874692_ (__AST-e _$e74674_))
                       (_$hd7467974695_ (##car _$tgt7467874692_))
                       (_$tl7468074698_ (##cdr _$tgt7467874692_)))
                  (let ((_rest74702_ _$tl7468074698_))
                    (_lp74670_ _rest74702_)))
                (_$E7467674689_))))))
    (define __AST-list?__0
      (lambda (_stx74707_)
        (let ((_tail?74709_ __AST-null?))
          (__AST-list?__% _stx74707_ _tail?74709_))))
    (define __AST-list?
      (lambda _g75149_
        (let ((_g75148_ (##length _g75149_)))
          (cond ((##fx= _g75148_ 1)
                 (apply (lambda (_stx74707_) (__AST-list?__0 _stx74707_))
                        _g75149_))
                ((##fx= _g75148_ 2)
                 (apply (lambda (_stx74711_ _tail?74712_)
                          (__AST-list?__% _stx74711_ _tail?74712_))
                        _g75149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g75149_))))))
    (define __AST->list
      (lambda (_stx74632_)
        (let* ((_$e74634_ _stx74632_)
               (_$E7463674649_
                (lambda ()
                  (let* ((_$E7463774644_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74634_)))
                         (_rest74647_ _$e74634_))
                    (__AST-e _rest74647_)))))
          (if (__AST-pair? _$e74634_)
              (let* ((_$tgt7463874652_ (__AST-e _$e74634_))
                     (_$hd7463974655_ (##car _$tgt7463874652_))
                     (_$tl7464074658_ (##cdr _$tgt7463874652_)))
                (let* ((_hd74662_ _$hd7463974655_)
                       (_rest74664_ _$tl7464074658_))
                  (cons _hd74662_ (__AST->list _rest74664_))))
              (_$E7463674649_)))))
    (define __AST->datum
      (lambda (_stx74630_)
        (if (##structure-instance-of? _stx74630_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74630_))
            (if (pair? _stx74630_)
                (cons (__AST->datum (car _stx74630_))
                      (__AST->datum (cdr _stx74630_)))
                (if (vector? _stx74630_)
                    (vector-map __AST->datum _stx74630_)
                    (if (box? _stx74630_)
                        (box (__AST->datum (unbox _stx74630_)))
                        _stx74630_))))))
    (define get-readenv
      (lambda (_port74628_)
        (##make-readenv
         _port74628_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74616_)
        (let ((_e74618_ (##read-datum-or-eof (get-readenv _in74616_))))
          (if (eof-object? (__AST-e _e74618_)) (__AST-e _e74618_) _e74618_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74624_ (current-input-port))) (read-syntax__% _in74624_))))
    (define read-syntax
      (lambda _g75151_
        (let ((_g75150_ (##length _g75151_)))
          (cond ((##fx= _g75150_ 0)
                 (apply (lambda () (read-syntax__0)) _g75151_))
                ((##fx= _g75150_ 1)
                 (apply (lambda (_in74626_) (read-syntax__% _in74626_))
                        _g75151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g75151_))))))
    (define read-syntax-from-file
      (lambda (_path74611_)
        (let ((_r74613_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74611_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74613_)
              (cdr (__AST-e (vector-ref _r74613_ '1)))
              (error (err-code->string _r74613_) _path74611_)))))
    (define __wrap-syntax
      (lambda (_re74608_ _e74609_)
        (if (eof-object? _e74609_)
            _e74609_
            (##structure AST::t _e74609_ (##readenv->locat _re74608_)))))
    (define __unwrap-syntax (lambda (_re74605_ _e74606_) (__AST-e _e74606_)))
    (define __pp-syntax (lambda (_stx74603_) (pp (__AST->datum _stx74603_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74601_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74601_ '#t)
          (macro-readtable-bracket-handler-set! _rt74601_ '@list)
          (macro-readtable-brace-handler-set! _rt74601_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74601_
           '#\!
           __read-sharp-bang)
          _rt74601_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74597_ _kw74598_)
        (macro-readtable-bracket-handler-set! _rt74597_ _kw74598_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74594_ _kw74595_)
        (macro-readtable-brace-handler-set! _rt74594_ _kw74595_)))
    (define __read-sharp-bang
      (lambda (_re74585_ _next74586_ _start-pos74587_)
        (if (eq? _start-pos74587_ '0)
            (let* ((_line74589_
                    (##read-line
                     (macro-readenv-port _re74585_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74591_
                    (substring _line74589_ '1 (string-length _line74589_))))
              (macro-readenv-script-line-set! _re74585_ _script-line74591_)
              (##script-marker))
            (##read-sharp-bang _re74585_ _next74586_ _start-pos74587_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74583_)
        (if (source-location? _obj74583_)
            (string? (##locat-container _obj74583_))
            '#f)))
    (define source-location-path
      (lambda (_obj74581_)
        (if (##locat? _obj74581_)
            (##container->path (##locat-container _obj74581_))
            '#f)))))
