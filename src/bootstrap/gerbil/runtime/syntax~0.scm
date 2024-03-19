(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710833424)
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
      (lambda _$args76532_ (apply make-instance SyntaxError::t _$args76532_)))
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
      (lambda (_self76435_ _port76436_)
        (letrec ((_location76438_
                  (lambda ()
                    (let _lp76492_ ((_rest76494_
                                     (##unchecked-structure-ref
                                      _self76435_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7649576503_ _rest76494_)
                             (_else7649776511_ (lambda () '#f))
                             (_K7649976520_
                              (lambda (_rest76514_ _hd76515_)
                                (let ((_$e76517_ (__AST-source _hd76515_)))
                                  (if _$e76517_
                                      _$e76517_
                                      (_lp76492_ _rest76514_))))))
                        (if (##pair? _rest7649576503_)
                            (let ((_hd7650076523_ (##car _rest7649576503_))
                                  (_tl7650176525_ (##cdr _rest7649576503_)))
                              (let* ((_hd76528_ _hd7650076523_)
                                     (_rest76530_ _tl7650176525_))
                                (_K7649976520_ _rest76530_ _hd76528_)))
                            (_else7649776511_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e76441_ (_location76438_)))
               (if _$e76441_
                   ((lambda (_where76444_)
                      (##display-locat _where76444_ '#t (current-output-port)))
                    _$e76441_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e76446_
                    (##unchecked-structure-ref
                     _self76435_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e76446_
                   ((lambda (_where76449_)
                      (displayln
                       '" at "
                       _where76449_
                       '": "
                       (##unchecked-structure-ref
                        _self76435_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e76446_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self76435_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7645076458_
                     (##unchecked-structure-ref
                      _self76435_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7645276466_ (lambda () '#!void))
                    (_K7645476479_
                     (lambda (_rest76469_ _stx76470_)
                       (display '"... form:   ")
                       (__pp-syntax _stx76470_)
                       (for-each
                        (lambda (_detail76472_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail76472_))
                          (let ((_$e76474_ (__AST-source _detail76472_)))
                            (if _$e76474_
                                ((lambda (_loc76477_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc76477_
                                    '#t
                                    (current-output-port)))
                                 _$e76474_)
                                '#!void))
                          (newline))
                        _rest76469_))))
               (if (##pair? _g7645076458_)
                   (let ((_hd7645576482_ (##car _g7645076458_))
                         (_tl7645676484_ (##cdr _g7645076458_)))
                     (let* ((_stx76487_ _hd7645576482_)
                            (_rest76489_ _tl7645676484_))
                       (_K7645476479_ _rest76489_ _stx76487_)))
                   '#!void)))
           current-output-port
           _port76436_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message76306_
               _irritants76307_
               _where76308_
               _context76309_
               _marks76310_
               _phi76311_)
        (let ((__obj76627
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj76627
           _message76306_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76627
           _irritants76307_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76627
           _where76308_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76627
           _context76309_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76627
           _marks76310_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76627
           _phi76311_
           '5
           SyntaxError::t
           '#f)
          __obj76627)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where76301_ _message76302_ _stx76303_ . _details76304_)
        (raise (make-syntax-error
                _message76302_
                (cons _stx76303_ _details76304_)
                _where76301_
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
      (lambda _$args76298_ (apply make-instance AST::t _$args76298_)))
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
      (lambda (_stx76296_)
        (if (##structure-instance-of? _stx76296_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx76296_ '1 AST::t '#f)
            _stx76296_)))
    (define __AST-source
      (lambda (_stx76290_)
        (let _lp76292_ ((_src76294_ _stx76290_))
          (if (##structure-instance-of? _src76294_ 'gerbil#AST::t)
              (_lp76292_ (##unchecked-structure-ref _src76294_ '2 AST::t '#f))
              (if (##locat? _src76294_) _src76294_ '#f)))))
    (define __AST
      (lambda (_e76282_ _src-stx76283_)
        (let ((_src76285_ (__AST-source _src-stx76283_)))
          (if (or (##structure-instance-of? _e76282_ 'gerbil#AST::t)
                  (not _src76285_))
              _e76282_
              (##structure AST::t _e76282_ _src76285_)))))
    (define __AST-eq?
      (lambda (_stx76279_ _obj76280_) (eq? (__AST-e _stx76279_) _obj76280_)))
    (define __AST-pair? (lambda (_stx76277_) (pair? (__AST-e _stx76277_))))
    (define __AST-null? (lambda (_stx76275_) (null? (__AST-e _stx76275_))))
    (define __AST-datum?
      (lambda (_stx76256_)
        (let* ((_e76258_ (__AST-e _stx76256_)) (_$e76260_ (number? _e76258_)))
          (if _$e76260_
              _$e76260_
              (let ((_$e76263_ (string? _e76258_)))
                (if _$e76263_
                    _$e76263_
                    (let ((_$e76266_ (char? _e76258_)))
                      (if _$e76266_
                          _$e76266_
                          (let ((_$e76269_ (keyword? _e76258_)))
                            (if _$e76269_
                                _$e76269_
                                (let ((_$e76272_ (boolean? _e76258_)))
                                  (if _$e76272_
                                      _$e76272_
                                      (eq? _e76258_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx76254_) (symbol? (__AST-e _stx76254_))))
    (define __AST-id-list?__%
      (lambda (_stx76205_ _tail?76206_)
        (let _lp76208_ ((_rest76210_ _stx76205_))
          (let* ((_$e76212_ _rest76210_)
                 (_$E7621476227_
                  (lambda ()
                    (let* ((_$E7621576222_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76212_)))
                           (_rest76225_ _$e76212_))
                      (_tail?76206_ _rest76225_)))))
            (if (__AST-pair? _$e76212_)
                (let* ((_$tgt7621676230_ (__AST-e _$e76212_))
                       (_$hd7621776233_ (##car _$tgt7621676230_))
                       (_$tl7621876236_ (##cdr _$tgt7621676230_)))
                  (let* ((_hd76240_ _$hd7621776233_)
                         (_rest76242_ _$tl7621876236_))
                    (if (__AST-id? _hd76240_) (_lp76208_ _rest76242_) '#f)))
                (_$E7621476227_))))))
    (define __AST-id-list?__0
      (lambda (_stx76247_)
        (let ((_tail?76249_ __AST-null?))
          (__AST-id-list?__% _stx76247_ _tail?76249_))))
    (define __AST-id-list?
      (lambda _g76630_
        (let ((_g76629_ (##length _g76630_)))
          (cond ((##fx= _g76629_ 1)
                 (apply (lambda (_stx76247_) (__AST-id-list?__0 _stx76247_))
                        _g76630_))
                ((##fx= _g76629_ 2)
                 (apply (lambda (_stx76251_ _tail?76252_)
                          (__AST-id-list?__% _stx76251_ _tail?76252_))
                        _g76630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g76630_))))))
    (define __AST-bind-list?
      (lambda (_stx76197_)
        (__AST-id-list?__%
         _stx76197_
         (lambda (_e76199_)
           (let ((_$e76201_ (__AST-null? _e76199_)))
             (if _$e76201_ _$e76201_ (__AST-id? _e76199_)))))))
    (define __AST-list?__%
      (lambda (_stx76150_ _tail?76151_)
        (let _lp76153_ ((_rest76155_ _stx76150_))
          (let* ((_$e76157_ _rest76155_)
                 (_$E7615976172_
                  (lambda ()
                    (let* ((_$E7616076167_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76157_)))
                           (_rest76170_ _$e76157_))
                      (_tail?76151_ _rest76170_)))))
            (if (__AST-pair? _$e76157_)
                (let* ((_$tgt7616176175_ (__AST-e _$e76157_))
                       (_$hd7616276178_ (##car _$tgt7616176175_))
                       (_$tl7616376181_ (##cdr _$tgt7616176175_)))
                  (let ((_rest76185_ _$tl7616376181_))
                    (_lp76153_ _rest76185_)))
                (_$E7615976172_))))))
    (define __AST-list?__0
      (lambda (_stx76190_)
        (let ((_tail?76192_ __AST-null?))
          (__AST-list?__% _stx76190_ _tail?76192_))))
    (define __AST-list?
      (lambda _g76632_
        (let ((_g76631_ (##length _g76632_)))
          (cond ((##fx= _g76631_ 1)
                 (apply (lambda (_stx76190_) (__AST-list?__0 _stx76190_))
                        _g76632_))
                ((##fx= _g76631_ 2)
                 (apply (lambda (_stx76194_ _tail?76195_)
                          (__AST-list?__% _stx76194_ _tail?76195_))
                        _g76632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g76632_))))))
    (define __AST->list
      (lambda (_stx76115_)
        (let* ((_$e76117_ _stx76115_)
               (_$E7611976132_
                (lambda ()
                  (let* ((_$E7612076127_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e76117_)))
                         (_rest76130_ _$e76117_))
                    (__AST-e _rest76130_)))))
          (if (__AST-pair? _$e76117_)
              (let* ((_$tgt7612176135_ (__AST-e _$e76117_))
                     (_$hd7612276138_ (##car _$tgt7612176135_))
                     (_$tl7612376141_ (##cdr _$tgt7612176135_)))
                (let* ((_hd76145_ _$hd7612276138_)
                       (_rest76147_ _$tl7612376141_))
                  (cons _hd76145_ (__AST->list _rest76147_))))
              (_$E7611976132_)))))
    (define __AST->datum
      (lambda (_stx76113_)
        (if (##structure-instance-of? _stx76113_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx76113_))
            (if (pair? _stx76113_)
                (cons (__AST->datum (car _stx76113_))
                      (__AST->datum (cdr _stx76113_)))
                (if (vector? _stx76113_)
                    (vector-map __AST->datum _stx76113_)
                    (if (box? _stx76113_)
                        (box (__AST->datum (unbox _stx76113_)))
                        _stx76113_))))))
    (define get-readenv
      (lambda (_port76111_)
        (##make-readenv
         _port76111_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in76099_)
        (let ((_e76101_ (##read-datum-or-eof (get-readenv _in76099_))))
          (if (eof-object? (__AST-e _e76101_)) (__AST-e _e76101_) _e76101_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in76107_ (current-input-port))) (read-syntax__% _in76107_))))
    (define read-syntax
      (lambda _g76634_
        (let ((_g76633_ (##length _g76634_)))
          (cond ((##fx= _g76633_ 0)
                 (apply (lambda () (read-syntax__0)) _g76634_))
                ((##fx= _g76633_ 1)
                 (apply (lambda (_in76109_) (read-syntax__% _in76109_))
                        _g76634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g76634_))))))
    (define read-syntax-from-file
      (lambda (_path76094_)
        (let ((_r76096_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path76094_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r76096_)
              (cdr (__AST-e (vector-ref _r76096_ '1)))
              (error (err-code->string _r76096_) _path76094_)))))
    (define __wrap-syntax
      (lambda (_re76091_ _e76092_)
        (if (eof-object? _e76092_)
            _e76092_
            (##structure AST::t _e76092_ (##readenv->locat _re76091_)))))
    (define __unwrap-syntax (lambda (_re76088_ _e76089_) (__AST-e _e76089_)))
    (define __pp-syntax (lambda (_stx76086_) (pp (__AST->datum _stx76086_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt76084_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt76084_ '#t)
          (macro-readtable-bracket-handler-set! _rt76084_ '@list)
          (macro-readtable-brace-handler-set! _rt76084_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt76084_
           '#\!
           __read-sharp-bang)
          _rt76084_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt76080_ _kw76081_)
        (macro-readtable-bracket-handler-set! _rt76080_ _kw76081_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt76077_ _kw76078_)
        (macro-readtable-brace-handler-set! _rt76077_ _kw76078_)))
    (define __read-sharp-bang
      (lambda (_re76068_ _next76069_ _start-pos76070_)
        (if (eq? _start-pos76070_ '0)
            (let* ((_line76072_
                    (##read-line
                     (macro-readenv-port _re76068_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line76074_
                    (substring _line76072_ '1 (string-length _line76072_))))
              (macro-readenv-script-line-set! _re76068_ _script-line76074_)
              (##script-marker))
            (##read-sharp-bang _re76068_ _next76069_ _start-pos76070_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj76066_)
        (if (source-location? _obj76066_)
            (string? (##locat-container _obj76066_))
            '#f)))
    (define source-location-path
      (lambda (_obj76064_)
        (if (##locat? _obj76064_)
            (##container->path (##locat-container _obj76064_))
            '#f)))))
