(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708280332)
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
      (lambda _$args114487_
        (apply make-instance SyntaxError::t _$args114487_)))
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
      (lambda (_self114390_ _port114391_)
        (letrec ((_location114393_
                  (lambda ()
                    (let _lp114447_ ((_rest114449_
                                      (##unchecked-structure-ref
                                       _self114390_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest114450114458_ _rest114449_)
                             (_else114452114466_ (lambda () '#f))
                             (_K114454114475_
                              (lambda (_rest114469_ _hd114470_)
                                (let ((_$e114472_ (__AST-source _hd114470_)))
                                  (if _$e114472_
                                      _$e114472_
                                      (_lp114447_ _rest114469_))))))
                        (if (##pair? _rest114450114458_)
                            (let ((_hd114455114478_ (##car _rest114450114458_))
                                  (_tl114456114480_
                                   (##cdr _rest114450114458_)))
                              (let* ((_hd114483_ _hd114455114478_)
                                     (_rest114485_ _tl114456114480_))
                                (_K114454114475_ _rest114485_ _hd114483_)))
                            (_else114452114466_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e114396_ (_location114393_)))
               (if _$e114396_
                   ((lambda (_where114399_)
                      (##display-locat
                       _where114399_
                       '#t
                       (current-output-port)))
                    _$e114396_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e114401_
                    (##unchecked-structure-ref
                     _self114390_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e114401_
                   ((lambda (_where114404_)
                      (displayln
                       '" at "
                       _where114404_
                       '": "
                       (##unchecked-structure-ref
                        _self114390_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e114401_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self114390_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g114405114413_
                     (##unchecked-structure-ref
                      _self114390_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else114407114421_ (lambda () '#!void))
                    (_K114409114434_
                     (lambda (_rest114424_ _stx114425_)
                       (display '"... form:   ")
                       (__pp-syntax _stx114425_)
                       (for-each
                        (lambda (_detail114427_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail114427_))
                          (let ((_$e114429_ (__AST-source _detail114427_)))
                            (if _$e114429_
                                ((lambda (_loc114432_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc114432_
                                    '#t
                                    (current-output-port)))
                                 _$e114429_)
                                '#!void))
                          (newline))
                        _rest114424_))))
               (if (##pair? _g114405114413_)
                   (let ((_hd114410114437_ (##car _g114405114413_))
                         (_tl114411114439_ (##cdr _g114405114413_)))
                     (let* ((_stx114442_ _hd114410114437_)
                            (_rest114444_ _tl114411114439_))
                       (_K114409114434_ _rest114444_ _stx114442_)))
                   '#!void)))
           current-output-port
           _port114391_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message114261_
               _irritants114262_
               _where114263_
               _context114264_
               _marks114265_
               _phi114266_)
        (let ((__obj118649
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj118649
           _message114261_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118649
           _irritants114262_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118649
           _where114263_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118649
           _context114264_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118649
           _marks114265_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118649
           _phi114266_
           '5
           SyntaxError::t
           '#f)
          __obj118649)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where114256_ _message114257_ _stx114258_ . _details114259_)
        (raise (make-syntax-error
                _message114257_
                (cons _stx114258_ _details114259_)
                _where114256_
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
      (lambda _$args114253_ (apply make-instance AST::t _$args114253_)))
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
      (lambda (_stx114251_)
        (if (##structure-instance-of? _stx114251_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx114251_ '1 AST::t '#f)
            _stx114251_)))
    (define __AST-source
      (lambda (_stx114245_)
        (let _lp114247_ ((_src114249_ _stx114245_))
          (if (##structure-instance-of? _src114249_ 'gerbil#AST::t)
              (_lp114247_
               (##unchecked-structure-ref _src114249_ '2 AST::t '#f))
              (if (##locat? _src114249_) _src114249_ '#f)))))
    (define __AST
      (lambda (_e114237_ _src-stx114238_)
        (let ((_src114240_ (__AST-source _src-stx114238_)))
          (if (or (##structure-instance-of? _e114237_ 'gerbil#AST::t)
                  (not _src114240_))
              _e114237_
              (##structure AST::t _e114237_ _src114240_)))))
    (define __AST-eq?
      (lambda (_stx114234_ _obj114235_)
        (eq? (__AST-e _stx114234_) _obj114235_)))
    (define __AST-pair? (lambda (_stx114232_) (pair? (__AST-e _stx114232_))))
    (define __AST-null? (lambda (_stx114230_) (null? (__AST-e _stx114230_))))
    (define __AST-datum?
      (lambda (_stx114211_)
        (let* ((_e114213_ (__AST-e _stx114211_))
               (_$e114215_ (number? _e114213_)))
          (if _$e114215_
              _$e114215_
              (let ((_$e114218_ (string? _e114213_)))
                (if _$e114218_
                    _$e114218_
                    (let ((_$e114221_ (char? _e114213_)))
                      (if _$e114221_
                          _$e114221_
                          (let ((_$e114224_ (keyword? _e114213_)))
                            (if _$e114224_
                                _$e114224_
                                (let ((_$e114227_ (boolean? _e114213_)))
                                  (if _$e114227_
                                      _$e114227_
                                      (eq? _e114213_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx114209_) (symbol? (__AST-e _stx114209_))))
    (define __AST-id-list?__%
      (lambda (_stx114160_ _tail?114161_)
        (let _lp114163_ ((_rest114165_ _stx114160_))
          (let* ((_$e114167_ _rest114165_)
                 (_$E114169114182_
                  (lambda ()
                    (let* ((_$E114170114177_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e114167_)))
                           (_rest114180_ _$e114167_))
                      (_tail?114161_ _rest114180_)))))
            (if (__AST-pair? _$e114167_)
                (let* ((_$tgt114171114185_ (__AST-e _$e114167_))
                       (_$hd114172114188_ (##car _$tgt114171114185_))
                       (_$tl114173114191_ (##cdr _$tgt114171114185_)))
                  (let* ((_hd114195_ _$hd114172114188_)
                         (_rest114197_ _$tl114173114191_))
                    (if (__AST-id? _hd114195_) (_lp114163_ _rest114197_) '#f)))
                (_$E114169114182_))))))
    (define __AST-id-list?__0
      (lambda (_stx114202_)
        (let ((_tail?114204_ __AST-null?))
          (__AST-id-list?__% _stx114202_ _tail?114204_))))
    (define __AST-id-list?
      (lambda _g118652_
        (let ((_g118651_ (##length _g118652_)))
          (cond ((##fx= _g118651_ 1)
                 (apply (lambda (_stx114202_) (__AST-id-list?__0 _stx114202_))
                        _g118652_))
                ((##fx= _g118651_ 2)
                 (apply (lambda (_stx114206_ _tail?114207_)
                          (__AST-id-list?__% _stx114206_ _tail?114207_))
                        _g118652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g118652_))))))
    (define __AST-bind-list?
      (lambda (_stx114152_)
        (__AST-id-list?__%
         _stx114152_
         (lambda (_e114154_)
           (let ((_$e114156_ (__AST-null? _e114154_)))
             (if _$e114156_ _$e114156_ (__AST-id? _e114154_)))))))
    (define __AST-list?__%
      (lambda (_stx114105_ _tail?114106_)
        (let _lp114108_ ((_rest114110_ _stx114105_))
          (let* ((_$e114112_ _rest114110_)
                 (_$E114114114127_
                  (lambda ()
                    (let* ((_$E114115114122_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e114112_)))
                           (_rest114125_ _$e114112_))
                      (_tail?114106_ _rest114125_)))))
            (if (__AST-pair? _$e114112_)
                (let* ((_$tgt114116114130_ (__AST-e _$e114112_))
                       (_$hd114117114133_ (##car _$tgt114116114130_))
                       (_$tl114118114136_ (##cdr _$tgt114116114130_)))
                  (let ((_rest114140_ _$tl114118114136_))
                    (_lp114108_ _rest114140_)))
                (_$E114114114127_))))))
    (define __AST-list?__0
      (lambda (_stx114145_)
        (let ((_tail?114147_ __AST-null?))
          (__AST-list?__% _stx114145_ _tail?114147_))))
    (define __AST-list?
      (lambda _g118654_
        (let ((_g118653_ (##length _g118654_)))
          (cond ((##fx= _g118653_ 1)
                 (apply (lambda (_stx114145_) (__AST-list?__0 _stx114145_))
                        _g118654_))
                ((##fx= _g118653_ 2)
                 (apply (lambda (_stx114149_ _tail?114150_)
                          (__AST-list?__% _stx114149_ _tail?114150_))
                        _g118654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g118654_))))))
    (define __AST->list
      (lambda (_stx114070_)
        (let* ((_$e114072_ _stx114070_)
               (_$E114074114087_
                (lambda ()
                  (let* ((_$E114075114082_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e114072_)))
                         (_rest114085_ _$e114072_))
                    (__AST-e _rest114085_)))))
          (if (__AST-pair? _$e114072_)
              (let* ((_$tgt114076114090_ (__AST-e _$e114072_))
                     (_$hd114077114093_ (##car _$tgt114076114090_))
                     (_$tl114078114096_ (##cdr _$tgt114076114090_)))
                (let* ((_hd114100_ _$hd114077114093_)
                       (_rest114102_ _$tl114078114096_))
                  (cons _hd114100_ (__AST->list _rest114102_))))
              (_$E114074114087_)))))
    (define __AST->datum
      (lambda (_stx114068_)
        (if (##structure-instance-of? _stx114068_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx114068_))
            (if (pair? _stx114068_)
                (cons (__AST->datum (car _stx114068_))
                      (__AST->datum (cdr _stx114068_)))
                (if (vector? _stx114068_)
                    (vector-map __AST->datum _stx114068_)
                    (if (box? _stx114068_)
                        (box (__AST->datum (unbox _stx114068_)))
                        _stx114068_))))))
    (define get-readenv
      (lambda (_port114066_)
        (##make-readenv
         _port114066_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in114054_)
        (let ((_e114056_ (##read-datum-or-eof (get-readenv _in114054_))))
          (if (eof-object? (__AST-e _e114056_))
              (__AST-e _e114056_)
              _e114056_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in114062_ (current-input-port))) (read-syntax__% _in114062_))))
    (define read-syntax
      (lambda _g118656_
        (let ((_g118655_ (##length _g118656_)))
          (cond ((##fx= _g118655_ 0)
                 (apply (lambda () (read-syntax__0)) _g118656_))
                ((##fx= _g118655_ 1)
                 (apply (lambda (_in114064_) (read-syntax__% _in114064_))
                        _g118656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g118656_))))))
    (define read-syntax-from-file
      (lambda (_path114049_)
        (let ((_r114051_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path114049_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r114051_)
              (cdr (__AST-e (vector-ref _r114051_ '1)))
              (error (err-code->string _r114051_) _path114049_)))))
    (define __wrap-syntax
      (lambda (_re114046_ _e114047_)
        (if (eof-object? _e114047_)
            _e114047_
            (##structure AST::t _e114047_ (##readenv->locat _re114046_)))))
    (define __unwrap-syntax
      (lambda (_re114043_ _e114044_) (__AST-e _e114044_)))
    (define __pp-syntax (lambda (_stx114041_) (pp (__AST->datum _stx114041_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt114039_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt114039_ '#t)
          (macro-readtable-bracket-handler-set! _rt114039_ '@list)
          (macro-readtable-brace-handler-set! _rt114039_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt114039_
           '#\!
           __read-sharp-bang)
          _rt114039_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt114035_ _kw114036_)
        (macro-readtable-bracket-handler-set! _rt114035_ _kw114036_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt114032_ _kw114033_)
        (macro-readtable-brace-handler-set! _rt114032_ _kw114033_)))
    (define __read-sharp-bang
      (lambda (_re114023_ _next114024_ _start-pos114025_)
        (if (eq? _start-pos114025_ '0)
            (let* ((_line114027_
                    (##read-line
                     (macro-readenv-port _re114023_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line114029_
                    (substring _line114027_ '1 (string-length _line114027_))))
              (macro-readenv-script-line-set! _re114023_ _script-line114029_)
              (##script-marker))
            (##read-sharp-bang _re114023_ _next114024_ _start-pos114025_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj114021_)
        (if (source-location? _obj114021_)
            (string? (##locat-container _obj114021_))
            '#f)))
    (define source-location-path
      (lambda (_obj114019_)
        (if (##locat? _obj114019_)
            (##container->path (##locat-container _obj114019_))
            '#f)))))
