(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1709111635)
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
      (lambda _$args74630_ (apply make-instance SyntaxError::t _$args74630_)))
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
      (lambda (_self74533_ _port74534_)
        (letrec ((_location74536_
                  (lambda ()
                    (let _lp74590_ ((_rest74592_
                                     (##unchecked-structure-ref
                                      _self74533_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7459374601_ _rest74592_)
                             (_else7459574609_ (lambda () '#f))
                             (_K7459774618_
                              (lambda (_rest74612_ _hd74613_)
                                (let ((_$e74615_ (__AST-source _hd74613_)))
                                  (if _$e74615_
                                      _$e74615_
                                      (_lp74590_ _rest74612_))))))
                        (if (##pair? _rest7459374601_)
                            (let ((_hd7459874621_ (##car _rest7459374601_))
                                  (_tl7459974623_ (##cdr _rest7459374601_)))
                              (let* ((_hd74626_ _hd7459874621_)
                                     (_rest74628_ _tl7459974623_))
                                (_K7459774618_ _rest74628_ _hd74626_)))
                            (_else7459574609_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e74539_ (_location74536_)))
               (if _$e74539_
                   ((lambda (_where74542_)
                      (##display-locat _where74542_ '#t (current-output-port)))
                    _$e74539_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e74544_
                    (##unchecked-structure-ref
                     _self74533_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e74544_
                   ((lambda (_where74547_)
                      (displayln
                       '" at "
                       _where74547_
                       '": "
                       (##unchecked-structure-ref
                        _self74533_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e74544_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self74533_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7454874556_
                     (##unchecked-structure-ref
                      _self74533_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7455074564_ (lambda () '#!void))
                    (_K7455274577_
                     (lambda (_rest74567_ _stx74568_)
                       (display '"... form:   ")
                       (__pp-syntax _stx74568_)
                       (for-each
                        (lambda (_detail74570_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail74570_))
                          (let ((_$e74572_ (__AST-source _detail74570_)))
                            (if _$e74572_
                                ((lambda (_loc74575_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc74575_
                                    '#t
                                    (current-output-port)))
                                 _$e74572_)
                                '#!void))
                          (newline))
                        _rest74567_))))
               (if (##pair? _g7454874556_)
                   (let ((_hd7455374580_ (##car _g7454874556_))
                         (_tl7455474582_ (##cdr _g7454874556_)))
                     (let* ((_stx74585_ _hd7455374580_)
                            (_rest74587_ _tl7455474582_))
                       (_K7455274577_ _rest74587_ _stx74585_)))
                   '#!void)))
           current-output-port
           _port74534_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74404_
               _irritants74405_
               _where74406_
               _context74407_
               _marks74408_
               _phi74409_)
        (let ((__obj74725
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj74725
           _message74404_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74725
           _irritants74405_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74725
           _where74406_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74725
           _context74407_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74725
           _marks74408_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74725
           _phi74409_
           '5
           SyntaxError::t
           '#f)
          __obj74725)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74399_ _message74400_ _stx74401_ . _details74402_)
        (raise (make-syntax-error
                _message74400_
                (cons _stx74401_ _details74402_)
                _where74399_
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
      (lambda _$args74396_ (apply make-instance AST::t _$args74396_)))
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
      (lambda (_stx74394_)
        (if (##structure-instance-of? _stx74394_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74394_ '1 AST::t '#f)
            _stx74394_)))
    (define __AST-source
      (lambda (_stx74388_)
        (let _lp74390_ ((_src74392_ _stx74388_))
          (if (##structure-instance-of? _src74392_ 'gerbil#AST::t)
              (_lp74390_ (##unchecked-structure-ref _src74392_ '2 AST::t '#f))
              (if (##locat? _src74392_) _src74392_ '#f)))))
    (define __AST
      (lambda (_e74380_ _src-stx74381_)
        (let ((_src74383_ (__AST-source _src-stx74381_)))
          (if (or (##structure-instance-of? _e74380_ 'gerbil#AST::t)
                  (not _src74383_))
              _e74380_
              (##structure AST::t _e74380_ _src74383_)))))
    (define __AST-eq?
      (lambda (_stx74377_ _obj74378_) (eq? (__AST-e _stx74377_) _obj74378_)))
    (define __AST-pair? (lambda (_stx74375_) (pair? (__AST-e _stx74375_))))
    (define __AST-null? (lambda (_stx74373_) (null? (__AST-e _stx74373_))))
    (define __AST-datum?
      (lambda (_stx74354_)
        (let* ((_e74356_ (__AST-e _stx74354_)) (_$e74358_ (number? _e74356_)))
          (if _$e74358_
              _$e74358_
              (let ((_$e74361_ (string? _e74356_)))
                (if _$e74361_
                    _$e74361_
                    (let ((_$e74364_ (char? _e74356_)))
                      (if _$e74364_
                          _$e74364_
                          (let ((_$e74367_ (keyword? _e74356_)))
                            (if _$e74367_
                                _$e74367_
                                (let ((_$e74370_ (boolean? _e74356_)))
                                  (if _$e74370_
                                      _$e74370_
                                      (eq? _e74356_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74352_) (symbol? (__AST-e _stx74352_))))
    (define __AST-id-list?__%
      (lambda (_stx74303_ _tail?74304_)
        (let _lp74306_ ((_rest74308_ _stx74303_))
          (let* ((_$e74310_ _rest74308_)
                 (_$E7431274325_
                  (lambda ()
                    (let* ((_$E7431374320_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74310_)))
                           (_rest74323_ _$e74310_))
                      (_tail?74304_ _rest74323_)))))
            (if (__AST-pair? _$e74310_)
                (let* ((_$tgt7431474328_ (__AST-e _$e74310_))
                       (_$hd7431574331_ (##car _$tgt7431474328_))
                       (_$tl7431674334_ (##cdr _$tgt7431474328_)))
                  (let* ((_hd74338_ _$hd7431574331_)
                         (_rest74340_ _$tl7431674334_))
                    (if (__AST-id? _hd74338_) (_lp74306_ _rest74340_) '#f)))
                (_$E7431274325_))))))
    (define __AST-id-list?__0
      (lambda (_stx74345_)
        (let ((_tail?74347_ __AST-null?))
          (__AST-id-list?__% _stx74345_ _tail?74347_))))
    (define __AST-id-list?
      (lambda _g74728_
        (let ((_g74727_ (##length _g74728_)))
          (cond ((##fx= _g74727_ 1)
                 (apply (lambda (_stx74345_) (__AST-id-list?__0 _stx74345_))
                        _g74728_))
                ((##fx= _g74727_ 2)
                 (apply (lambda (_stx74349_ _tail?74350_)
                          (__AST-id-list?__% _stx74349_ _tail?74350_))
                        _g74728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g74728_))))))
    (define __AST-bind-list?
      (lambda (_stx74295_)
        (__AST-id-list?__%
         _stx74295_
         (lambda (_e74297_)
           (let ((_$e74299_ (__AST-null? _e74297_)))
             (if _$e74299_ _$e74299_ (__AST-id? _e74297_)))))))
    (define __AST-list?__%
      (lambda (_stx74248_ _tail?74249_)
        (let _lp74251_ ((_rest74253_ _stx74248_))
          (let* ((_$e74255_ _rest74253_)
                 (_$E7425774270_
                  (lambda ()
                    (let* ((_$E7425874265_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74255_)))
                           (_rest74268_ _$e74255_))
                      (_tail?74249_ _rest74268_)))))
            (if (__AST-pair? _$e74255_)
                (let* ((_$tgt7425974273_ (__AST-e _$e74255_))
                       (_$hd7426074276_ (##car _$tgt7425974273_))
                       (_$tl7426174279_ (##cdr _$tgt7425974273_)))
                  (let ((_rest74283_ _$tl7426174279_))
                    (_lp74251_ _rest74283_)))
                (_$E7425774270_))))))
    (define __AST-list?__0
      (lambda (_stx74288_)
        (let ((_tail?74290_ __AST-null?))
          (__AST-list?__% _stx74288_ _tail?74290_))))
    (define __AST-list?
      (lambda _g74730_
        (let ((_g74729_ (##length _g74730_)))
          (cond ((##fx= _g74729_ 1)
                 (apply (lambda (_stx74288_) (__AST-list?__0 _stx74288_))
                        _g74730_))
                ((##fx= _g74729_ 2)
                 (apply (lambda (_stx74292_ _tail?74293_)
                          (__AST-list?__% _stx74292_ _tail?74293_))
                        _g74730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g74730_))))))
    (define __AST->list
      (lambda (_stx74213_)
        (let* ((_$e74215_ _stx74213_)
               (_$E7421774230_
                (lambda ()
                  (let* ((_$E7421874225_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74215_)))
                         (_rest74228_ _$e74215_))
                    (__AST-e _rest74228_)))))
          (if (__AST-pair? _$e74215_)
              (let* ((_$tgt7421974233_ (__AST-e _$e74215_))
                     (_$hd7422074236_ (##car _$tgt7421974233_))
                     (_$tl7422174239_ (##cdr _$tgt7421974233_)))
                (let* ((_hd74243_ _$hd7422074236_)
                       (_rest74245_ _$tl7422174239_))
                  (cons _hd74243_ (__AST->list _rest74245_))))
              (_$E7421774230_)))))
    (define __AST->datum
      (lambda (_stx74211_)
        (if (##structure-instance-of? _stx74211_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74211_))
            (if (pair? _stx74211_)
                (cons (__AST->datum (car _stx74211_))
                      (__AST->datum (cdr _stx74211_)))
                (if (vector? _stx74211_)
                    (vector-map __AST->datum _stx74211_)
                    (if (box? _stx74211_)
                        (box (__AST->datum (unbox _stx74211_)))
                        _stx74211_))))))
    (define get-readenv
      (lambda (_port74209_)
        (##make-readenv
         _port74209_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74197_)
        (let ((_e74199_ (##read-datum-or-eof (get-readenv _in74197_))))
          (if (eof-object? (__AST-e _e74199_)) (__AST-e _e74199_) _e74199_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74205_ (current-input-port))) (read-syntax__% _in74205_))))
    (define read-syntax
      (lambda _g74732_
        (let ((_g74731_ (##length _g74732_)))
          (cond ((##fx= _g74731_ 0)
                 (apply (lambda () (read-syntax__0)) _g74732_))
                ((##fx= _g74731_ 1)
                 (apply (lambda (_in74207_) (read-syntax__% _in74207_))
                        _g74732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g74732_))))))
    (define read-syntax-from-file
      (lambda (_path74192_)
        (let ((_r74194_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74192_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74194_)
              (cdr (__AST-e (vector-ref _r74194_ '1)))
              (error (err-code->string _r74194_) _path74192_)))))
    (define __wrap-syntax
      (lambda (_re74189_ _e74190_)
        (if (eof-object? _e74190_)
            _e74190_
            (##structure AST::t _e74190_ (##readenv->locat _re74189_)))))
    (define __unwrap-syntax (lambda (_re74186_ _e74187_) (__AST-e _e74187_)))
    (define __pp-syntax (lambda (_stx74184_) (pp (__AST->datum _stx74184_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74182_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74182_ '#t)
          (macro-readtable-bracket-handler-set! _rt74182_ '@list)
          (macro-readtable-brace-handler-set! _rt74182_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74182_
           '#\!
           __read-sharp-bang)
          _rt74182_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74178_ _kw74179_)
        (macro-readtable-bracket-handler-set! _rt74178_ _kw74179_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74175_ _kw74176_)
        (macro-readtable-brace-handler-set! _rt74175_ _kw74176_)))
    (define __read-sharp-bang
      (lambda (_re74166_ _next74167_ _start-pos74168_)
        (if (eq? _start-pos74168_ '0)
            (let* ((_line74170_
                    (##read-line
                     (macro-readenv-port _re74166_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74172_
                    (substring _line74170_ '1 (string-length _line74170_))))
              (macro-readenv-script-line-set! _re74166_ _script-line74172_)
              (##script-marker))
            (##read-sharp-bang _re74166_ _next74167_ _start-pos74168_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74164_)
        (if (source-location? _obj74164_)
            (string? (##locat-container _obj74164_))
            '#f)))
    (define source-location-path
      (lambda (_obj74162_)
        (if (##locat? _obj74162_)
            (##container->path (##locat-container _obj74162_))
            '#f)))))
