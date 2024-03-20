(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710943025)
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
      (lambda _$args76533_ (apply make-instance SyntaxError::t _$args76533_)))
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
      (lambda (_self76436_ _port76437_)
        (letrec ((_location76439_
                  (lambda ()
                    (let _lp76493_ ((_rest76495_
                                     (##unchecked-structure-ref
                                      _self76436_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7649676504_ _rest76495_)
                             (_else7649876512_ (lambda () '#f))
                             (_K7650076521_
                              (lambda (_rest76515_ _hd76516_)
                                (let ((_$e76518_ (__AST-source _hd76516_)))
                                  (if _$e76518_
                                      _$e76518_
                                      (_lp76493_ _rest76515_))))))
                        (if (##pair? _rest7649676504_)
                            (let ((_hd7650176524_ (##car _rest7649676504_))
                                  (_tl7650276526_ (##cdr _rest7649676504_)))
                              (let* ((_hd76529_ _hd7650176524_)
                                     (_rest76531_ _tl7650276526_))
                                (_K7650076521_ _rest76531_ _hd76529_)))
                            (_else7649876512_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e76442_ (_location76439_)))
               (if _$e76442_
                   ((lambda (_where76445_)
                      (##display-locat _where76445_ '#t (current-output-port)))
                    _$e76442_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e76447_
                    (##unchecked-structure-ref
                     _self76436_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e76447_
                   ((lambda (_where76450_)
                      (displayln
                       '" at "
                       _where76450_
                       '": "
                       (##unchecked-structure-ref
                        _self76436_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e76447_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self76436_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7645176459_
                     (##unchecked-structure-ref
                      _self76436_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7645376467_ (lambda () '#!void))
                    (_K7645576480_
                     (lambda (_rest76470_ _stx76471_)
                       (display '"... form:   ")
                       (__pp-syntax _stx76471_)
                       (for-each
                        (lambda (_detail76473_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail76473_))
                          (let ((_$e76475_ (__AST-source _detail76473_)))
                            (if _$e76475_
                                ((lambda (_loc76478_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc76478_
                                    '#t
                                    (current-output-port)))
                                 _$e76475_)
                                '#!void))
                          (newline))
                        _rest76470_))))
               (if (##pair? _g7645176459_)
                   (let ((_hd7645676483_ (##car _g7645176459_))
                         (_tl7645776485_ (##cdr _g7645176459_)))
                     (let* ((_stx76488_ _hd7645676483_)
                            (_rest76490_ _tl7645776485_))
                       (_K7645576480_ _rest76490_ _stx76488_)))
                   '#!void)))
           current-output-port
           _port76437_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message76307_
               _irritants76308_
               _where76309_
               _context76310_
               _marks76311_
               _phi76312_)
        (let ((__obj76628
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj76628
           _message76307_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76628
           _irritants76308_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76628
           _where76309_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76628
           _context76310_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76628
           _marks76311_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76628
           _phi76312_
           '5
           SyntaxError::t
           '#f)
          __obj76628)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where76302_ _message76303_ _stx76304_ . _details76305_)
        (raise (make-syntax-error
                _message76303_
                (cons _stx76304_ _details76305_)
                _where76302_
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
      (lambda _$args76299_ (apply make-instance AST::t _$args76299_)))
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
      (lambda (_stx76297_)
        (if (##structure-instance-of? _stx76297_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx76297_ '1 AST::t '#f)
            _stx76297_)))
    (define __AST-source
      (lambda (_stx76291_)
        (let _lp76293_ ((_src76295_ _stx76291_))
          (if (##structure-instance-of? _src76295_ 'gerbil#AST::t)
              (_lp76293_ (##unchecked-structure-ref _src76295_ '2 AST::t '#f))
              (if (##locat? _src76295_) _src76295_ '#f)))))
    (define __AST
      (lambda (_e76283_ _src-stx76284_)
        (let ((_src76286_ (__AST-source _src-stx76284_)))
          (if (or (##structure-instance-of? _e76283_ 'gerbil#AST::t)
                  (not _src76286_))
              _e76283_
              (##structure AST::t _e76283_ _src76286_)))))
    (define __AST-eq?
      (lambda (_stx76280_ _obj76281_) (eq? (__AST-e _stx76280_) _obj76281_)))
    (define __AST-pair? (lambda (_stx76278_) (pair? (__AST-e _stx76278_))))
    (define __AST-null? (lambda (_stx76276_) (null? (__AST-e _stx76276_))))
    (define __AST-datum?
      (lambda (_stx76257_)
        (let* ((_e76259_ (__AST-e _stx76257_)) (_$e76261_ (number? _e76259_)))
          (if _$e76261_
              _$e76261_
              (let ((_$e76264_ (string? _e76259_)))
                (if _$e76264_
                    _$e76264_
                    (let ((_$e76267_ (char? _e76259_)))
                      (if _$e76267_
                          _$e76267_
                          (let ((_$e76270_ (keyword? _e76259_)))
                            (if _$e76270_
                                _$e76270_
                                (let ((_$e76273_ (boolean? _e76259_)))
                                  (if _$e76273_
                                      _$e76273_
                                      (eq? _e76259_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx76255_) (symbol? (__AST-e _stx76255_))))
    (define __AST-id-list?__%
      (lambda (_stx76206_ _tail?76207_)
        (let _lp76209_ ((_rest76211_ _stx76206_))
          (let* ((_$e76213_ _rest76211_)
                 (_$E7621576228_
                  (lambda ()
                    (let* ((_$E7621676223_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76213_)))
                           (_rest76226_ _$e76213_))
                      (_tail?76207_ _rest76226_)))))
            (if (__AST-pair? _$e76213_)
                (let* ((_$tgt7621776231_ (__AST-e _$e76213_))
                       (_$hd7621876234_ (##car _$tgt7621776231_))
                       (_$tl7621976237_ (##cdr _$tgt7621776231_)))
                  (let* ((_hd76241_ _$hd7621876234_)
                         (_rest76243_ _$tl7621976237_))
                    (if (__AST-id? _hd76241_) (_lp76209_ _rest76243_) '#f)))
                (_$E7621576228_))))))
    (define __AST-id-list?__0
      (lambda (_stx76248_)
        (let ((_tail?76250_ __AST-null?))
          (__AST-id-list?__% _stx76248_ _tail?76250_))))
    (define __AST-id-list?
      (lambda _g76631_
        (let ((_g76630_ (##length _g76631_)))
          (cond ((##fx= _g76630_ 1)
                 (apply (lambda (_stx76248_) (__AST-id-list?__0 _stx76248_))
                        _g76631_))
                ((##fx= _g76630_ 2)
                 (apply (lambda (_stx76252_ _tail?76253_)
                          (__AST-id-list?__% _stx76252_ _tail?76253_))
                        _g76631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g76631_))))))
    (define __AST-bind-list?
      (lambda (_stx76198_)
        (__AST-id-list?__%
         _stx76198_
         (lambda (_e76200_)
           (let ((_$e76202_ (__AST-null? _e76200_)))
             (if _$e76202_ _$e76202_ (__AST-id? _e76200_)))))))
    (define __AST-list?__%
      (lambda (_stx76151_ _tail?76152_)
        (let _lp76154_ ((_rest76156_ _stx76151_))
          (let* ((_$e76158_ _rest76156_)
                 (_$E7616076173_
                  (lambda ()
                    (let* ((_$E7616176168_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76158_)))
                           (_rest76171_ _$e76158_))
                      (_tail?76152_ _rest76171_)))))
            (if (__AST-pair? _$e76158_)
                (let* ((_$tgt7616276176_ (__AST-e _$e76158_))
                       (_$hd7616376179_ (##car _$tgt7616276176_))
                       (_$tl7616476182_ (##cdr _$tgt7616276176_)))
                  (let ((_rest76186_ _$tl7616476182_))
                    (_lp76154_ _rest76186_)))
                (_$E7616076173_))))))
    (define __AST-list?__0
      (lambda (_stx76191_)
        (let ((_tail?76193_ __AST-null?))
          (__AST-list?__% _stx76191_ _tail?76193_))))
    (define __AST-list?
      (lambda _g76633_
        (let ((_g76632_ (##length _g76633_)))
          (cond ((##fx= _g76632_ 1)
                 (apply (lambda (_stx76191_) (__AST-list?__0 _stx76191_))
                        _g76633_))
                ((##fx= _g76632_ 2)
                 (apply (lambda (_stx76195_ _tail?76196_)
                          (__AST-list?__% _stx76195_ _tail?76196_))
                        _g76633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g76633_))))))
    (define __AST->list
      (lambda (_stx76116_)
        (let* ((_$e76118_ _stx76116_)
               (_$E7612076133_
                (lambda ()
                  (let* ((_$E7612176128_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e76118_)))
                         (_rest76131_ _$e76118_))
                    (__AST-e _rest76131_)))))
          (if (__AST-pair? _$e76118_)
              (let* ((_$tgt7612276136_ (__AST-e _$e76118_))
                     (_$hd7612376139_ (##car _$tgt7612276136_))
                     (_$tl7612476142_ (##cdr _$tgt7612276136_)))
                (let* ((_hd76146_ _$hd7612376139_)
                       (_rest76148_ _$tl7612476142_))
                  (cons _hd76146_ (__AST->list _rest76148_))))
              (_$E7612076133_)))))
    (define __AST->datum
      (lambda (_stx76114_)
        (if (##structure-instance-of? _stx76114_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx76114_))
            (if (pair? _stx76114_)
                (cons (__AST->datum (car _stx76114_))
                      (__AST->datum (cdr _stx76114_)))
                (if (vector? _stx76114_)
                    (vector-map __AST->datum _stx76114_)
                    (if (box? _stx76114_)
                        (box (__AST->datum (unbox _stx76114_)))
                        _stx76114_))))))
    (define get-readenv
      (lambda (_port76112_)
        (##make-readenv
         _port76112_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in76100_)
        (let ((_e76102_ (##read-datum-or-eof (get-readenv _in76100_))))
          (if (eof-object? (__AST-e _e76102_)) (__AST-e _e76102_) _e76102_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in76108_ (current-input-port))) (read-syntax__% _in76108_))))
    (define read-syntax
      (lambda _g76635_
        (let ((_g76634_ (##length _g76635_)))
          (cond ((##fx= _g76634_ 0)
                 (apply (lambda () (read-syntax__0)) _g76635_))
                ((##fx= _g76634_ 1)
                 (apply (lambda (_in76110_) (read-syntax__% _in76110_))
                        _g76635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g76635_))))))
    (define read-syntax-from-file
      (lambda (_path76095_)
        (let ((_r76097_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path76095_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r76097_)
              (cdr (__AST-e (vector-ref _r76097_ '1)))
              (error (err-code->string _r76097_) _path76095_)))))
    (define __wrap-syntax
      (lambda (_re76092_ _e76093_)
        (if (eof-object? _e76093_)
            _e76093_
            (##structure AST::t _e76093_ (##readenv->locat _re76092_)))))
    (define __unwrap-syntax (lambda (_re76089_ _e76090_) (__AST-e _e76090_)))
    (define __pp-syntax (lambda (_stx76087_) (pp (__AST->datum _stx76087_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt76085_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt76085_ '#t)
          (macro-readtable-bracket-handler-set! _rt76085_ '@list)
          (macro-readtable-brace-handler-set! _rt76085_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt76085_
           '#\!
           __read-sharp-bang)
          _rt76085_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt76081_ _kw76082_)
        (macro-readtable-bracket-handler-set! _rt76081_ _kw76082_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt76078_ _kw76079_)
        (macro-readtable-brace-handler-set! _rt76078_ _kw76079_)))
    (define __read-sharp-bang
      (lambda (_re76069_ _next76070_ _start-pos76071_)
        (if (eq? _start-pos76071_ '0)
            (let* ((_line76073_
                    (##read-line
                     (macro-readenv-port _re76069_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line76075_
                    (substring _line76073_ '1 (string-length _line76073_))))
              (macro-readenv-script-line-set! _re76069_ _script-line76075_)
              (##script-marker))
            (##read-sharp-bang _re76069_ _next76070_ _start-pos76071_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj76067_)
        (if (source-location? _obj76067_)
            (string? (##locat-container _obj76067_))
            '#f)))
    (define source-location-path
      (lambda (_obj76065_)
        (if (##locat? _obj76065_)
            (##container->path (##locat-container _obj76065_))
            '#f)))))
