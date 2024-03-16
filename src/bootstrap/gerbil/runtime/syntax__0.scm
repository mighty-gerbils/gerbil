(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710617601)
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
      (lambda _$args73457_ (apply make-instance SyntaxError::t _$args73457_)))
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
      (lambda (_self73360_ _port73361_)
        (letrec ((_location73363_
                  (lambda ()
                    (let _lp73417_ ((_rest73419_
                                     (##unchecked-structure-ref
                                      _self73360_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7342073428_ _rest73419_)
                             (_else7342273436_ (lambda () '#f))
                             (_K7342473445_
                              (lambda (_rest73439_ _hd73440_)
                                (let ((_$e73442_ (__AST-source _hd73440_)))
                                  (if _$e73442_
                                      _$e73442_
                                      (_lp73417_ _rest73439_))))))
                        (if (##pair? _rest7342073428_)
                            (let ((_hd7342573448_ (##car _rest7342073428_))
                                  (_tl7342673450_ (##cdr _rest7342073428_)))
                              (let* ((_hd73453_ _hd7342573448_)
                                     (_rest73455_ _tl7342673450_))
                                (_K7342473445_ _rest73455_ _hd73453_)))
                            (_else7342273436_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e73366_ (_location73363_)))
               (if _$e73366_
                   ((lambda (_where73369_)
                      (##display-locat _where73369_ '#t (current-output-port)))
                    _$e73366_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e73371_
                    (##unchecked-structure-ref
                     _self73360_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e73371_
                   ((lambda (_where73374_)
                      (displayln
                       '" at "
                       _where73374_
                       '": "
                       (##unchecked-structure-ref
                        _self73360_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e73371_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self73360_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7337573383_
                     (##unchecked-structure-ref
                      _self73360_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7337773391_ (lambda () '#!void))
                    (_K7337973404_
                     (lambda (_rest73394_ _stx73395_)
                       (display '"... form:   ")
                       (__pp-syntax _stx73395_)
                       (for-each
                        (lambda (_detail73397_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail73397_))
                          (let ((_$e73399_ (__AST-source _detail73397_)))
                            (if _$e73399_
                                ((lambda (_loc73402_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc73402_
                                    '#t
                                    (current-output-port)))
                                 _$e73399_)
                                '#!void))
                          (newline))
                        _rest73394_))))
               (if (##pair? _g7337573383_)
                   (let ((_hd7338073407_ (##car _g7337573383_))
                         (_tl7338173409_ (##cdr _g7337573383_)))
                     (let* ((_stx73412_ _hd7338073407_)
                            (_rest73414_ _tl7338173409_))
                       (_K7337973404_ _rest73414_ _stx73412_)))
                   '#!void)))
           current-output-port
           _port73361_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message73231_
               _irritants73232_
               _where73233_
               _context73234_
               _marks73235_
               _phi73236_)
        (let ((__obj73552
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj73552
           _message73231_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73552
           _irritants73232_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73552
           _where73233_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73552
           _context73234_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73552
           _marks73235_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73552
           _phi73236_
           '5
           SyntaxError::t
           '#f)
          __obj73552)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where73226_ _message73227_ _stx73228_ . _details73229_)
        (raise (make-syntax-error
                _message73227_
                (cons _stx73228_ _details73229_)
                _where73226_
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
      (lambda _$args73223_ (apply make-instance AST::t _$args73223_)))
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
      (lambda (_stx73221_)
        (if (##structure-instance-of? _stx73221_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx73221_ '1 AST::t '#f)
            _stx73221_)))
    (define __AST-source
      (lambda (_stx73215_)
        (let _lp73217_ ((_src73219_ _stx73215_))
          (if (##structure-instance-of? _src73219_ 'gerbil#AST::t)
              (_lp73217_ (##unchecked-structure-ref _src73219_ '2 AST::t '#f))
              (if (##locat? _src73219_) _src73219_ '#f)))))
    (define __AST
      (lambda (_e73207_ _src-stx73208_)
        (let ((_src73210_ (__AST-source _src-stx73208_)))
          (if (or (##structure-instance-of? _e73207_ 'gerbil#AST::t)
                  (not _src73210_))
              _e73207_
              (##structure AST::t _e73207_ _src73210_)))))
    (define __AST-eq?
      (lambda (_stx73204_ _obj73205_) (eq? (__AST-e _stx73204_) _obj73205_)))
    (define __AST-pair? (lambda (_stx73202_) (pair? (__AST-e _stx73202_))))
    (define __AST-null? (lambda (_stx73200_) (null? (__AST-e _stx73200_))))
    (define __AST-datum?
      (lambda (_stx73181_)
        (let* ((_e73183_ (__AST-e _stx73181_)) (_$e73185_ (number? _e73183_)))
          (if _$e73185_
              _$e73185_
              (let ((_$e73188_ (string? _e73183_)))
                (if _$e73188_
                    _$e73188_
                    (let ((_$e73191_ (char? _e73183_)))
                      (if _$e73191_
                          _$e73191_
                          (let ((_$e73194_ (keyword? _e73183_)))
                            (if _$e73194_
                                _$e73194_
                                (let ((_$e73197_ (boolean? _e73183_)))
                                  (if _$e73197_
                                      _$e73197_
                                      (eq? _e73183_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx73179_) (symbol? (__AST-e _stx73179_))))
    (define __AST-id-list?__%
      (lambda (_stx73130_ _tail?73131_)
        (let _lp73133_ ((_rest73135_ _stx73130_))
          (let* ((_$e73137_ _rest73135_)
                 (_$E7313973152_
                  (lambda ()
                    (let* ((_$E7314073147_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73137_)))
                           (_rest73150_ _$e73137_))
                      (_tail?73131_ _rest73150_)))))
            (if (__AST-pair? _$e73137_)
                (let* ((_$tgt7314173155_ (__AST-e _$e73137_))
                       (_$hd7314273158_ (##car _$tgt7314173155_))
                       (_$tl7314373161_ (##cdr _$tgt7314173155_)))
                  (let* ((_hd73165_ _$hd7314273158_)
                         (_rest73167_ _$tl7314373161_))
                    (if (__AST-id? _hd73165_) (_lp73133_ _rest73167_) '#f)))
                (_$E7313973152_))))))
    (define __AST-id-list?__0
      (lambda (_stx73172_)
        (let ((_tail?73174_ __AST-null?))
          (__AST-id-list?__% _stx73172_ _tail?73174_))))
    (define __AST-id-list?
      (lambda _g73555_
        (let ((_g73554_ (##length _g73555_)))
          (cond ((##fx= _g73554_ 1)
                 (apply (lambda (_stx73172_) (__AST-id-list?__0 _stx73172_))
                        _g73555_))
                ((##fx= _g73554_ 2)
                 (apply (lambda (_stx73176_ _tail?73177_)
                          (__AST-id-list?__% _stx73176_ _tail?73177_))
                        _g73555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g73555_))))))
    (define __AST-bind-list?
      (lambda (_stx73122_)
        (__AST-id-list?__%
         _stx73122_
         (lambda (_e73124_)
           (let ((_$e73126_ (__AST-null? _e73124_)))
             (if _$e73126_ _$e73126_ (__AST-id? _e73124_)))))))
    (define __AST-list?__%
      (lambda (_stx73075_ _tail?73076_)
        (let _lp73078_ ((_rest73080_ _stx73075_))
          (let* ((_$e73082_ _rest73080_)
                 (_$E7308473097_
                  (lambda ()
                    (let* ((_$E7308573092_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73082_)))
                           (_rest73095_ _$e73082_))
                      (_tail?73076_ _rest73095_)))))
            (if (__AST-pair? _$e73082_)
                (let* ((_$tgt7308673100_ (__AST-e _$e73082_))
                       (_$hd7308773103_ (##car _$tgt7308673100_))
                       (_$tl7308873106_ (##cdr _$tgt7308673100_)))
                  (let ((_rest73110_ _$tl7308873106_))
                    (_lp73078_ _rest73110_)))
                (_$E7308473097_))))))
    (define __AST-list?__0
      (lambda (_stx73115_)
        (let ((_tail?73117_ __AST-null?))
          (__AST-list?__% _stx73115_ _tail?73117_))))
    (define __AST-list?
      (lambda _g73557_
        (let ((_g73556_ (##length _g73557_)))
          (cond ((##fx= _g73556_ 1)
                 (apply (lambda (_stx73115_) (__AST-list?__0 _stx73115_))
                        _g73557_))
                ((##fx= _g73556_ 2)
                 (apply (lambda (_stx73119_ _tail?73120_)
                          (__AST-list?__% _stx73119_ _tail?73120_))
                        _g73557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g73557_))))))
    (define __AST->list
      (lambda (_stx73040_)
        (let* ((_$e73042_ _stx73040_)
               (_$E7304473057_
                (lambda ()
                  (let* ((_$E7304573052_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e73042_)))
                         (_rest73055_ _$e73042_))
                    (__AST-e _rest73055_)))))
          (if (__AST-pair? _$e73042_)
              (let* ((_$tgt7304673060_ (__AST-e _$e73042_))
                     (_$hd7304773063_ (##car _$tgt7304673060_))
                     (_$tl7304873066_ (##cdr _$tgt7304673060_)))
                (let* ((_hd73070_ _$hd7304773063_)
                       (_rest73072_ _$tl7304873066_))
                  (cons _hd73070_ (__AST->list _rest73072_))))
              (_$E7304473057_)))))
    (define __AST->datum
      (lambda (_stx73038_)
        (if (##structure-instance-of? _stx73038_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx73038_))
            (if (pair? _stx73038_)
                (cons (__AST->datum (car _stx73038_))
                      (__AST->datum (cdr _stx73038_)))
                (if (vector? _stx73038_)
                    (vector-map __AST->datum _stx73038_)
                    (if (box? _stx73038_)
                        (box (__AST->datum (unbox _stx73038_)))
                        _stx73038_))))))
    (define get-readenv
      (lambda (_port73036_)
        (##make-readenv
         _port73036_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in73024_)
        (let ((_e73026_ (##read-datum-or-eof (get-readenv _in73024_))))
          (if (eof-object? (__AST-e _e73026_)) (__AST-e _e73026_) _e73026_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in73032_ (current-input-port))) (read-syntax__% _in73032_))))
    (define read-syntax
      (lambda _g73559_
        (let ((_g73558_ (##length _g73559_)))
          (cond ((##fx= _g73558_ 0)
                 (apply (lambda () (read-syntax__0)) _g73559_))
                ((##fx= _g73558_ 1)
                 (apply (lambda (_in73034_) (read-syntax__% _in73034_))
                        _g73559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g73559_))))))
    (define read-syntax-from-file
      (lambda (_path73019_)
        (let ((_r73021_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path73019_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r73021_)
              (cdr (__AST-e (vector-ref _r73021_ '1)))
              (error (err-code->string _r73021_) _path73019_)))))
    (define __wrap-syntax
      (lambda (_re73016_ _e73017_)
        (if (eof-object? _e73017_)
            _e73017_
            (##structure AST::t _e73017_ (##readenv->locat _re73016_)))))
    (define __unwrap-syntax (lambda (_re73013_ _e73014_) (__AST-e _e73014_)))
    (define __pp-syntax (lambda (_stx73011_) (pp (__AST->datum _stx73011_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt73009_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt73009_ '#t)
          (macro-readtable-bracket-handler-set! _rt73009_ '@list)
          (macro-readtable-brace-handler-set! _rt73009_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt73009_
           '#\!
           __read-sharp-bang)
          _rt73009_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt73005_ _kw73006_)
        (macro-readtable-bracket-handler-set! _rt73005_ _kw73006_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt73002_ _kw73003_)
        (macro-readtable-brace-handler-set! _rt73002_ _kw73003_)))
    (define __read-sharp-bang
      (lambda (_re72993_ _next72994_ _start-pos72995_)
        (if (eq? _start-pos72995_ '0)
            (let* ((_line72997_
                    (##read-line
                     (macro-readenv-port _re72993_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line72999_
                    (substring _line72997_ '1 (string-length _line72997_))))
              (macro-readenv-script-line-set! _re72993_ _script-line72999_)
              (##script-marker))
            (##read-sharp-bang _re72993_ _next72994_ _start-pos72995_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj72991_)
        (if (source-location? _obj72991_)
            (string? (##locat-container _obj72991_))
            '#f)))
    (define source-location-path
      (lambda (_obj72989_)
        (if (##locat? _obj72989_)
            (##container->path (##locat-container _obj72989_))
            '#f)))))
