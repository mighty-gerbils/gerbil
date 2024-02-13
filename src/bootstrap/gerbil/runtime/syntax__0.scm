(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707831894)
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
      (lambda _$args103383_
        (apply make-instance SyntaxError::t _$args103383_)))
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
      (lambda (_self103286_ _port103287_)
        (letrec ((_location103289_
                  (lambda ()
                    (let _lp103343_ ((_rest103345_
                                      (##unchecked-structure-ref
                                       _self103286_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest103346103354_ _rest103345_)
                             (_else103348103362_ (lambda () '#f))
                             (_K103350103371_
                              (lambda (_rest103365_ _hd103366_)
                                (let ((_$e103368_ (__AST-source _hd103366_)))
                                  (if _$e103368_
                                      _$e103368_
                                      (_lp103343_ _rest103365_))))))
                        (if (##pair? _rest103346103354_)
                            (let ((_hd103351103374_ (##car _rest103346103354_))
                                  (_tl103352103376_
                                   (##cdr _rest103346103354_)))
                              (let* ((_hd103379_ _hd103351103374_)
                                     (_rest103381_ _tl103352103376_))
                                (_K103350103371_ _rest103381_ _hd103379_)))
                            (_else103348103362_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e103292_ (_location103289_)))
               (if _$e103292_
                   ((lambda (_where103295_)
                      (##display-locat
                       _where103295_
                       '#t
                       (current-output-port)))
                    _$e103292_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e103297_
                    (##unchecked-structure-ref
                     _self103286_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e103297_
                   ((lambda (_where103300_)
                      (displayln
                       '" at "
                       _where103300_
                       '": "
                       (##unchecked-structure-ref
                        _self103286_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e103297_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self103286_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g103301103309_
                     (##unchecked-structure-ref
                      _self103286_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else103303103317_ (lambda () '#!void))
                    (_K103305103330_
                     (lambda (_rest103320_ _stx103321_)
                       (display '"... form:   ")
                       (__pp-syntax _stx103321_)
                       (for-each
                        (lambda (_detail103323_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail103323_))
                          (let ((_$e103325_ (__AST-source _detail103323_)))
                            (if _$e103325_
                                ((lambda (_loc103328_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc103328_
                                    '#t
                                    (current-output-port)))
                                 _$e103325_)
                                '#!void))
                          (newline))
                        _rest103320_))))
               (if (##pair? _g103301103309_)
                   (let ((_hd103306103333_ (##car _g103301103309_))
                         (_tl103307103335_ (##cdr _g103301103309_)))
                     (let* ((_stx103338_ _hd103306103333_)
                            (_rest103340_ _tl103307103335_))
                       (_K103305103330_ _rest103340_ _stx103338_)))
                   '#!void)))
           current-output-port
           _port103287_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message103157_
               _irritants103158_
               _where103159_
               _context103160_
               _marks103161_
               _phi103162_)
        (let ((__obj108046
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj108046
           _message103157_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108046
           _irritants103158_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108046
           _where103159_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108046
           _context103160_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108046
           _marks103161_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108046
           _phi103162_
           '5
           SyntaxError::t
           '#f)
          __obj108046)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where103152_ _message103153_ _stx103154_ . _details103155_)
        (raise (make-syntax-error
                _message103153_
                (cons _stx103154_ _details103155_)
                _where103152_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
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
      (lambda _$args103149_ (apply make-instance AST::t _$args103149_)))
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
      (lambda (_stx103147_)
        (if (##structure-instance-of? _stx103147_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx103147_ '1 AST::t '#f)
            _stx103147_)))
    (define __AST-source
      (lambda (_stx103141_)
        (let _lp103143_ ((_src103145_ _stx103141_))
          (if (##structure-instance-of? _src103145_ 'gerbil#AST::t)
              (_lp103143_
               (##unchecked-structure-ref _src103145_ '2 AST::t '#f))
              (if (##locat? _src103145_) _src103145_ '#f)))))
    (define __AST
      (lambda (_e103133_ _src-stx103134_)
        (let ((_src103136_ (__AST-source _src-stx103134_)))
          (if (or (##structure-instance-of? _e103133_ 'gerbil#AST::t)
                  (not _src103136_))
              _e103133_
              (##structure AST::t _e103133_ _src103136_)))))
    (define __AST-eq?
      (lambda (_stx103130_ _obj103131_)
        (eq? (__AST-e _stx103130_) _obj103131_)))
    (define __AST-pair? (lambda (_stx103128_) (pair? (__AST-e _stx103128_))))
    (define __AST-null? (lambda (_stx103126_) (null? (__AST-e _stx103126_))))
    (define __AST-datum?
      (lambda (_stx103107_)
        (let* ((_e103109_ (__AST-e _stx103107_))
               (_$e103111_ (number? _e103109_)))
          (if _$e103111_
              _$e103111_
              (let ((_$e103114_ (string? _e103109_)))
                (if _$e103114_
                    _$e103114_
                    (let ((_$e103117_ (char? _e103109_)))
                      (if _$e103117_
                          _$e103117_
                          (let ((_$e103120_ (keyword? _e103109_)))
                            (if _$e103120_
                                _$e103120_
                                (let ((_$e103123_ (boolean? _e103109_)))
                                  (if _$e103123_
                                      _$e103123_
                                      (eq? _e103109_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx103105_) (symbol? (__AST-e _stx103105_))))
    (define __AST-id-list?__%
      (lambda (_stx103056_ _tail?103057_)
        (let _lp103059_ ((_rest103061_ _stx103056_))
          (let* ((_$e103063_ _rest103061_)
                 (_$E103065103078_
                  (lambda ()
                    (let* ((_$E103066103073_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103063_)))
                           (_rest103076_ _$e103063_))
                      (_tail?103057_ _rest103076_)))))
            (if (__AST-pair? _$e103063_)
                (let* ((_$tgt103067103081_ (__AST-e _$e103063_))
                       (_$hd103068103084_ (##car _$tgt103067103081_))
                       (_$tl103069103087_ (##cdr _$tgt103067103081_)))
                  (let* ((_hd103091_ _$hd103068103084_)
                         (_rest103093_ _$tl103069103087_))
                    (if (__AST-id? _hd103091_) (_lp103059_ _rest103093_) '#f)))
                (_$E103065103078_))))))
    (define __AST-id-list?__0
      (lambda (_stx103098_)
        (let ((_tail?103100_ __AST-null?))
          (__AST-id-list?__% _stx103098_ _tail?103100_))))
    (define __AST-id-list?
      (lambda _g108049_
        (let ((_g108048_ (##length _g108049_)))
          (cond ((##fx= _g108048_ 1)
                 (apply (lambda (_stx103098_) (__AST-id-list?__0 _stx103098_))
                        _g108049_))
                ((##fx= _g108048_ 2)
                 (apply (lambda (_stx103102_ _tail?103103_)
                          (__AST-id-list?__% _stx103102_ _tail?103103_))
                        _g108049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108049_))))))
    (define __AST-bind-list?
      (lambda (_stx103048_)
        (__AST-id-list?__%
         _stx103048_
         (lambda (_e103050_)
           (let ((_$e103052_ (__AST-null? _e103050_)))
             (if _$e103052_ _$e103052_ (__AST-id? _e103050_)))))))
    (define __AST-list?__%
      (lambda (_stx103001_ _tail?103002_)
        (let _lp103004_ ((_rest103006_ _stx103001_))
          (let* ((_$e103008_ _rest103006_)
                 (_$E103010103023_
                  (lambda ()
                    (let* ((_$E103011103018_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103008_)))
                           (_rest103021_ _$e103008_))
                      (_tail?103002_ _rest103021_)))))
            (if (__AST-pair? _$e103008_)
                (let* ((_$tgt103012103026_ (__AST-e _$e103008_))
                       (_$hd103013103029_ (##car _$tgt103012103026_))
                       (_$tl103014103032_ (##cdr _$tgt103012103026_)))
                  (let ((_rest103036_ _$tl103014103032_))
                    (_lp103004_ _rest103036_)))
                (_$E103010103023_))))))
    (define __AST-list?__0
      (lambda (_stx103041_)
        (let ((_tail?103043_ __AST-null?))
          (__AST-list?__% _stx103041_ _tail?103043_))))
    (define __AST-list?
      (lambda _g108051_
        (let ((_g108050_ (##length _g108051_)))
          (cond ((##fx= _g108050_ 1)
                 (apply (lambda (_stx103041_) (__AST-list?__0 _stx103041_))
                        _g108051_))
                ((##fx= _g108050_ 2)
                 (apply (lambda (_stx103045_ _tail?103046_)
                          (__AST-list?__% _stx103045_ _tail?103046_))
                        _g108051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108051_))))))
    (define __AST->list
      (lambda (_stx102966_)
        (let* ((_$e102968_ _stx102966_)
               (_$E102970102983_
                (lambda ()
                  (let* ((_$E102971102978_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e102968_)))
                         (_rest102981_ _$e102968_))
                    (__AST-e _rest102981_)))))
          (if (__AST-pair? _$e102968_)
              (let* ((_$tgt102972102986_ (__AST-e _$e102968_))
                     (_$hd102973102989_ (##car _$tgt102972102986_))
                     (_$tl102974102992_ (##cdr _$tgt102972102986_)))
                (let* ((_hd102996_ _$hd102973102989_)
                       (_rest102998_ _$tl102974102992_))
                  (cons _hd102996_ (__AST->list _rest102998_))))
              (_$E102970102983_)))))
    (define __AST->datum
      (lambda (_stx102964_)
        (if (##structure-instance-of? _stx102964_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx102964_))
            (if (pair? _stx102964_)
                (cons (__AST->datum (car _stx102964_))
                      (__AST->datum (cdr _stx102964_)))
                (if (vector? _stx102964_)
                    (vector-map __AST->datum _stx102964_)
                    (if (box? _stx102964_)
                        (box (__AST->datum (unbox _stx102964_)))
                        _stx102964_))))))
    (define get-readenv
      (lambda (_port102962_)
        (##make-readenv
         _port102962_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in102950_)
        (let ((_e102952_ (##read-datum-or-eof (get-readenv _in102950_))))
          (if (eof-object? (__AST-e _e102952_))
              (__AST-e _e102952_)
              _e102952_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in102958_ (current-input-port))) (read-syntax__% _in102958_))))
    (define read-syntax
      (lambda _g108053_
        (let ((_g108052_ (##length _g108053_)))
          (cond ((##fx= _g108052_ 0)
                 (apply (lambda () (read-syntax__0)) _g108053_))
                ((##fx= _g108052_ 1)
                 (apply (lambda (_in102960_) (read-syntax__% _in102960_))
                        _g108053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108053_))))))
    (define read-syntax-from-file
      (lambda (_path102945_)
        (let ((_r102947_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path102945_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r102947_)
              (cdr (__AST-e (vector-ref _r102947_ '1)))
              (error (err-code->string _r102947_) _path102945_)))))
    (define __wrap-syntax
      (lambda (_re102942_ _e102943_)
        (if (eof-object? _e102943_)
            _e102943_
            (##structure AST::t _e102943_ (##readenv->locat _re102942_)))))
    (define __unwrap-syntax
      (lambda (_re102939_ _e102940_) (__AST-e _e102940_)))
    (define __pp-syntax (lambda (_stx102937_) (pp (__AST->datum _stx102937_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt102935_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt102935_ '#t)
          (macro-readtable-bracket-handler-set! _rt102935_ '@list)
          (macro-readtable-brace-handler-set! _rt102935_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt102935_
           '#\!
           __read-sharp-bang)
          _rt102935_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt102931_ _kw102932_)
        (macro-readtable-bracket-handler-set! _rt102931_ _kw102932_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt102928_ _kw102929_)
        (macro-readtable-brace-handler-set! _rt102928_ _kw102929_)))
    (define __read-sharp-bang
      (lambda (_re102919_ _next102920_ _start-pos102921_)
        (if (eq? _start-pos102921_ '0)
            (let* ((_line102923_
                    (##read-line
                     (macro-readenv-port _re102919_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line102925_
                    (substring _line102923_ '1 (string-length _line102923_))))
              (macro-readenv-script-line-set! _re102919_ _script-line102925_)
              (##script-marker))
            (##read-sharp-bang _re102919_ _next102920_ _start-pos102921_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj102917_)
        (if (source-location? _obj102917_)
            (string? (##locat-container _obj102917_))
            '#f)))
    (define source-location-path
      (lambda (_obj102915_)
        (if (##locat? _obj102915_)
            (##container->path (##locat-container _obj102915_))
            '#f)))))
