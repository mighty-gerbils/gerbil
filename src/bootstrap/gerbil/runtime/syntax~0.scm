(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710774316)
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
      (lambda _$args76481_ (apply make-instance SyntaxError::t _$args76481_)))
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
      (lambda (_self76384_ _port76385_)
        (letrec ((_location76387_
                  (lambda ()
                    (let _lp76441_ ((_rest76443_
                                     (##unchecked-structure-ref
                                      _self76384_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7644476452_ _rest76443_)
                             (_else7644676460_ (lambda () '#f))
                             (_K7644876469_
                              (lambda (_rest76463_ _hd76464_)
                                (let ((_$e76466_ (__AST-source _hd76464_)))
                                  (if _$e76466_
                                      _$e76466_
                                      (_lp76441_ _rest76463_))))))
                        (if (##pair? _rest7644476452_)
                            (let ((_hd7644976472_ (##car _rest7644476452_))
                                  (_tl7645076474_ (##cdr _rest7644476452_)))
                              (let* ((_hd76477_ _hd7644976472_)
                                     (_rest76479_ _tl7645076474_))
                                (_K7644876469_ _rest76479_ _hd76477_)))
                            (_else7644676460_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e76390_ (_location76387_)))
               (if _$e76390_
                   ((lambda (_where76393_)
                      (##display-locat _where76393_ '#t (current-output-port)))
                    _$e76390_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e76395_
                    (##unchecked-structure-ref
                     _self76384_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e76395_
                   ((lambda (_where76398_)
                      (displayln
                       '" at "
                       _where76398_
                       '": "
                       (##unchecked-structure-ref
                        _self76384_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e76395_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self76384_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7639976407_
                     (##unchecked-structure-ref
                      _self76384_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7640176415_ (lambda () '#!void))
                    (_K7640376428_
                     (lambda (_rest76418_ _stx76419_)
                       (display '"... form:   ")
                       (__pp-syntax _stx76419_)
                       (for-each
                        (lambda (_detail76421_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail76421_))
                          (let ((_$e76423_ (__AST-source _detail76421_)))
                            (if _$e76423_
                                ((lambda (_loc76426_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc76426_
                                    '#t
                                    (current-output-port)))
                                 _$e76423_)
                                '#!void))
                          (newline))
                        _rest76418_))))
               (if (##pair? _g7639976407_)
                   (let ((_hd7640476431_ (##car _g7639976407_))
                         (_tl7640576433_ (##cdr _g7639976407_)))
                     (let* ((_stx76436_ _hd7640476431_)
                            (_rest76438_ _tl7640576433_))
                       (_K7640376428_ _rest76438_ _stx76436_)))
                   '#!void)))
           current-output-port
           _port76385_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message76255_
               _irritants76256_
               _where76257_
               _context76258_
               _marks76259_
               _phi76260_)
        (let ((__obj76576
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj76576
           _message76255_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76576
           _irritants76256_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76576
           _where76257_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76576
           _context76258_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76576
           _marks76259_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76576
           _phi76260_
           '5
           SyntaxError::t
           '#f)
          __obj76576)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where76250_ _message76251_ _stx76252_ . _details76253_)
        (raise (make-syntax-error
                _message76251_
                (cons _stx76252_ _details76253_)
                _where76250_
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
      (lambda _$args76247_ (apply make-instance AST::t _$args76247_)))
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
      (lambda (_stx76245_)
        (if (##structure-instance-of? _stx76245_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx76245_ '1 AST::t '#f)
            _stx76245_)))
    (define __AST-source
      (lambda (_stx76239_)
        (let _lp76241_ ((_src76243_ _stx76239_))
          (if (##structure-instance-of? _src76243_ 'gerbil#AST::t)
              (_lp76241_ (##unchecked-structure-ref _src76243_ '2 AST::t '#f))
              (if (##locat? _src76243_) _src76243_ '#f)))))
    (define __AST
      (lambda (_e76231_ _src-stx76232_)
        (let ((_src76234_ (__AST-source _src-stx76232_)))
          (if (or (##structure-instance-of? _e76231_ 'gerbil#AST::t)
                  (not _src76234_))
              _e76231_
              (##structure AST::t _e76231_ _src76234_)))))
    (define __AST-eq?
      (lambda (_stx76228_ _obj76229_) (eq? (__AST-e _stx76228_) _obj76229_)))
    (define __AST-pair? (lambda (_stx76226_) (pair? (__AST-e _stx76226_))))
    (define __AST-null? (lambda (_stx76224_) (null? (__AST-e _stx76224_))))
    (define __AST-datum?
      (lambda (_stx76205_)
        (let* ((_e76207_ (__AST-e _stx76205_)) (_$e76209_ (number? _e76207_)))
          (if _$e76209_
              _$e76209_
              (let ((_$e76212_ (string? _e76207_)))
                (if _$e76212_
                    _$e76212_
                    (let ((_$e76215_ (char? _e76207_)))
                      (if _$e76215_
                          _$e76215_
                          (let ((_$e76218_ (keyword? _e76207_)))
                            (if _$e76218_
                                _$e76218_
                                (let ((_$e76221_ (boolean? _e76207_)))
                                  (if _$e76221_
                                      _$e76221_
                                      (eq? _e76207_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx76203_) (symbol? (__AST-e _stx76203_))))
    (define __AST-id-list?__%
      (lambda (_stx76154_ _tail?76155_)
        (let _lp76157_ ((_rest76159_ _stx76154_))
          (let* ((_$e76161_ _rest76159_)
                 (_$E7616376176_
                  (lambda ()
                    (let* ((_$E7616476171_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76161_)))
                           (_rest76174_ _$e76161_))
                      (_tail?76155_ _rest76174_)))))
            (if (__AST-pair? _$e76161_)
                (let* ((_$tgt7616576179_ (__AST-e _$e76161_))
                       (_$hd7616676182_ (##car _$tgt7616576179_))
                       (_$tl7616776185_ (##cdr _$tgt7616576179_)))
                  (let* ((_hd76189_ _$hd7616676182_)
                         (_rest76191_ _$tl7616776185_))
                    (if (__AST-id? _hd76189_) (_lp76157_ _rest76191_) '#f)))
                (_$E7616376176_))))))
    (define __AST-id-list?__0
      (lambda (_stx76196_)
        (let ((_tail?76198_ __AST-null?))
          (__AST-id-list?__% _stx76196_ _tail?76198_))))
    (define __AST-id-list?
      (lambda _g76579_
        (let ((_g76578_ (##length _g76579_)))
          (cond ((##fx= _g76578_ 1)
                 (apply (lambda (_stx76196_) (__AST-id-list?__0 _stx76196_))
                        _g76579_))
                ((##fx= _g76578_ 2)
                 (apply (lambda (_stx76200_ _tail?76201_)
                          (__AST-id-list?__% _stx76200_ _tail?76201_))
                        _g76579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g76579_))))))
    (define __AST-bind-list?
      (lambda (_stx76146_)
        (__AST-id-list?__%
         _stx76146_
         (lambda (_e76148_)
           (let ((_$e76150_ (__AST-null? _e76148_)))
             (if _$e76150_ _$e76150_ (__AST-id? _e76148_)))))))
    (define __AST-list?__%
      (lambda (_stx76099_ _tail?76100_)
        (let _lp76102_ ((_rest76104_ _stx76099_))
          (let* ((_$e76106_ _rest76104_)
                 (_$E7610876121_
                  (lambda ()
                    (let* ((_$E7610976116_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76106_)))
                           (_rest76119_ _$e76106_))
                      (_tail?76100_ _rest76119_)))))
            (if (__AST-pair? _$e76106_)
                (let* ((_$tgt7611076124_ (__AST-e _$e76106_))
                       (_$hd7611176127_ (##car _$tgt7611076124_))
                       (_$tl7611276130_ (##cdr _$tgt7611076124_)))
                  (let ((_rest76134_ _$tl7611276130_))
                    (_lp76102_ _rest76134_)))
                (_$E7610876121_))))))
    (define __AST-list?__0
      (lambda (_stx76139_)
        (let ((_tail?76141_ __AST-null?))
          (__AST-list?__% _stx76139_ _tail?76141_))))
    (define __AST-list?
      (lambda _g76581_
        (let ((_g76580_ (##length _g76581_)))
          (cond ((##fx= _g76580_ 1)
                 (apply (lambda (_stx76139_) (__AST-list?__0 _stx76139_))
                        _g76581_))
                ((##fx= _g76580_ 2)
                 (apply (lambda (_stx76143_ _tail?76144_)
                          (__AST-list?__% _stx76143_ _tail?76144_))
                        _g76581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g76581_))))))
    (define __AST->list
      (lambda (_stx76064_)
        (let* ((_$e76066_ _stx76064_)
               (_$E7606876081_
                (lambda ()
                  (let* ((_$E7606976076_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e76066_)))
                         (_rest76079_ _$e76066_))
                    (__AST-e _rest76079_)))))
          (if (__AST-pair? _$e76066_)
              (let* ((_$tgt7607076084_ (__AST-e _$e76066_))
                     (_$hd7607176087_ (##car _$tgt7607076084_))
                     (_$tl7607276090_ (##cdr _$tgt7607076084_)))
                (let* ((_hd76094_ _$hd7607176087_)
                       (_rest76096_ _$tl7607276090_))
                  (cons _hd76094_ (__AST->list _rest76096_))))
              (_$E7606876081_)))))
    (define __AST->datum
      (lambda (_stx76062_)
        (if (##structure-instance-of? _stx76062_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx76062_))
            (if (pair? _stx76062_)
                (cons (__AST->datum (car _stx76062_))
                      (__AST->datum (cdr _stx76062_)))
                (if (vector? _stx76062_)
                    (vector-map __AST->datum _stx76062_)
                    (if (box? _stx76062_)
                        (box (__AST->datum (unbox _stx76062_)))
                        _stx76062_))))))
    (define get-readenv
      (lambda (_port76060_)
        (##make-readenv
         _port76060_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in76048_)
        (let ((_e76050_ (##read-datum-or-eof (get-readenv _in76048_))))
          (if (eof-object? (__AST-e _e76050_)) (__AST-e _e76050_) _e76050_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in76056_ (current-input-port))) (read-syntax__% _in76056_))))
    (define read-syntax
      (lambda _g76583_
        (let ((_g76582_ (##length _g76583_)))
          (cond ((##fx= _g76582_ 0)
                 (apply (lambda () (read-syntax__0)) _g76583_))
                ((##fx= _g76582_ 1)
                 (apply (lambda (_in76058_) (read-syntax__% _in76058_))
                        _g76583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g76583_))))))
    (define read-syntax-from-file
      (lambda (_path76043_)
        (let ((_r76045_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path76043_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r76045_)
              (cdr (__AST-e (vector-ref _r76045_ '1)))
              (error (err-code->string _r76045_) _path76043_)))))
    (define __wrap-syntax
      (lambda (_re76040_ _e76041_)
        (if (eof-object? _e76041_)
            _e76041_
            (##structure AST::t _e76041_ (##readenv->locat _re76040_)))))
    (define __unwrap-syntax (lambda (_re76037_ _e76038_) (__AST-e _e76038_)))
    (define __pp-syntax (lambda (_stx76035_) (pp (__AST->datum _stx76035_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt76033_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt76033_ '#t)
          (macro-readtable-bracket-handler-set! _rt76033_ '@list)
          (macro-readtable-brace-handler-set! _rt76033_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt76033_
           '#\!
           __read-sharp-bang)
          _rt76033_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt76029_ _kw76030_)
        (macro-readtable-bracket-handler-set! _rt76029_ _kw76030_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt76026_ _kw76027_)
        (macro-readtable-brace-handler-set! _rt76026_ _kw76027_)))
    (define __read-sharp-bang
      (lambda (_re76017_ _next76018_ _start-pos76019_)
        (if (eq? _start-pos76019_ '0)
            (let* ((_line76021_
                    (##read-line
                     (macro-readenv-port _re76017_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line76023_
                    (substring _line76021_ '1 (string-length _line76021_))))
              (macro-readenv-script-line-set! _re76017_ _script-line76023_)
              (##script-marker))
            (##read-sharp-bang _re76017_ _next76018_ _start-pos76019_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj76015_)
        (if (source-location? _obj76015_)
            (string? (##locat-container _obj76015_))
            '#f)))
    (define source-location-path
      (lambda (_obj76013_)
        (if (##locat? _obj76013_)
            (##container->path (##locat-container _obj76013_))
            '#f)))))
