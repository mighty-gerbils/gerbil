(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708271949)
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
      (lambda _$args114459_
        (apply make-instance SyntaxError::t _$args114459_)))
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
      (lambda (_self114362_ _port114363_)
        (letrec ((_location114365_
                  (lambda ()
                    (let _lp114419_ ((_rest114421_
                                      (##unchecked-structure-ref
                                       _self114362_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest114422114430_ _rest114421_)
                             (_else114424114438_ (lambda () '#f))
                             (_K114426114447_
                              (lambda (_rest114441_ _hd114442_)
                                (let ((_$e114444_ (__AST-source _hd114442_)))
                                  (if _$e114444_
                                      _$e114444_
                                      (_lp114419_ _rest114441_))))))
                        (if (##pair? _rest114422114430_)
                            (let ((_hd114427114450_ (##car _rest114422114430_))
                                  (_tl114428114452_
                                   (##cdr _rest114422114430_)))
                              (let* ((_hd114455_ _hd114427114450_)
                                     (_rest114457_ _tl114428114452_))
                                (_K114426114447_ _rest114457_ _hd114455_)))
                            (_else114424114438_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e114368_ (_location114365_)))
               (if _$e114368_
                   ((lambda (_where114371_)
                      (##display-locat
                       _where114371_
                       '#t
                       (current-output-port)))
                    _$e114368_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e114373_
                    (##unchecked-structure-ref
                     _self114362_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e114373_
                   ((lambda (_where114376_)
                      (displayln
                       '" at "
                       _where114376_
                       '": "
                       (##unchecked-structure-ref
                        _self114362_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e114373_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self114362_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g114377114385_
                     (##unchecked-structure-ref
                      _self114362_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else114379114393_ (lambda () '#!void))
                    (_K114381114406_
                     (lambda (_rest114396_ _stx114397_)
                       (display '"... form:   ")
                       (__pp-syntax _stx114397_)
                       (for-each
                        (lambda (_detail114399_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail114399_))
                          (let ((_$e114401_ (__AST-source _detail114399_)))
                            (if _$e114401_
                                ((lambda (_loc114404_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc114404_
                                    '#t
                                    (current-output-port)))
                                 _$e114401_)
                                '#!void))
                          (newline))
                        _rest114396_))))
               (if (##pair? _g114377114385_)
                   (let ((_hd114382114409_ (##car _g114377114385_))
                         (_tl114383114411_ (##cdr _g114377114385_)))
                     (let* ((_stx114414_ _hd114382114409_)
                            (_rest114416_ _tl114383114411_))
                       (_K114381114406_ _rest114416_ _stx114414_)))
                   '#!void)))
           current-output-port
           _port114363_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message114233_
               _irritants114234_
               _where114235_
               _context114236_
               _marks114237_
               _phi114238_)
        (let ((__obj118621
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj118621
           _message114233_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118621
           _irritants114234_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118621
           _where114235_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118621
           _context114236_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118621
           _marks114237_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj118621
           _phi114238_
           '5
           SyntaxError::t
           '#f)
          __obj118621)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where114228_ _message114229_ _stx114230_ . _details114231_)
        (raise (make-syntax-error
                _message114229_
                (cons _stx114230_ _details114231_)
                _where114228_
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
      (lambda _$args114225_ (apply make-instance AST::t _$args114225_)))
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
      (lambda (_stx114223_)
        (if (##structure-instance-of? _stx114223_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx114223_ '1 AST::t '#f)
            _stx114223_)))
    (define __AST-source
      (lambda (_stx114217_)
        (let _lp114219_ ((_src114221_ _stx114217_))
          (if (##structure-instance-of? _src114221_ 'gerbil#AST::t)
              (_lp114219_
               (##unchecked-structure-ref _src114221_ '2 AST::t '#f))
              (if (##locat? _src114221_) _src114221_ '#f)))))
    (define __AST
      (lambda (_e114209_ _src-stx114210_)
        (let ((_src114212_ (__AST-source _src-stx114210_)))
          (if (or (##structure-instance-of? _e114209_ 'gerbil#AST::t)
                  (not _src114212_))
              _e114209_
              (##structure AST::t _e114209_ _src114212_)))))
    (define __AST-eq?
      (lambda (_stx114206_ _obj114207_)
        (eq? (__AST-e _stx114206_) _obj114207_)))
    (define __AST-pair? (lambda (_stx114204_) (pair? (__AST-e _stx114204_))))
    (define __AST-null? (lambda (_stx114202_) (null? (__AST-e _stx114202_))))
    (define __AST-datum?
      (lambda (_stx114183_)
        (let* ((_e114185_ (__AST-e _stx114183_))
               (_$e114187_ (number? _e114185_)))
          (if _$e114187_
              _$e114187_
              (let ((_$e114190_ (string? _e114185_)))
                (if _$e114190_
                    _$e114190_
                    (let ((_$e114193_ (char? _e114185_)))
                      (if _$e114193_
                          _$e114193_
                          (let ((_$e114196_ (keyword? _e114185_)))
                            (if _$e114196_
                                _$e114196_
                                (let ((_$e114199_ (boolean? _e114185_)))
                                  (if _$e114199_
                                      _$e114199_
                                      (eq? _e114185_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx114181_) (symbol? (__AST-e _stx114181_))))
    (define __AST-id-list?__%
      (lambda (_stx114132_ _tail?114133_)
        (let _lp114135_ ((_rest114137_ _stx114132_))
          (let* ((_$e114139_ _rest114137_)
                 (_$E114141114154_
                  (lambda ()
                    (let* ((_$E114142114149_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e114139_)))
                           (_rest114152_ _$e114139_))
                      (_tail?114133_ _rest114152_)))))
            (if (__AST-pair? _$e114139_)
                (let* ((_$tgt114143114157_ (__AST-e _$e114139_))
                       (_$hd114144114160_ (##car _$tgt114143114157_))
                       (_$tl114145114163_ (##cdr _$tgt114143114157_)))
                  (let* ((_hd114167_ _$hd114144114160_)
                         (_rest114169_ _$tl114145114163_))
                    (if (__AST-id? _hd114167_) (_lp114135_ _rest114169_) '#f)))
                (_$E114141114154_))))))
    (define __AST-id-list?__0
      (lambda (_stx114174_)
        (let ((_tail?114176_ __AST-null?))
          (__AST-id-list?__% _stx114174_ _tail?114176_))))
    (define __AST-id-list?
      (lambda _g118624_
        (let ((_g118623_ (##length _g118624_)))
          (cond ((##fx= _g118623_ 1)
                 (apply (lambda (_stx114174_) (__AST-id-list?__0 _stx114174_))
                        _g118624_))
                ((##fx= _g118623_ 2)
                 (apply (lambda (_stx114178_ _tail?114179_)
                          (__AST-id-list?__% _stx114178_ _tail?114179_))
                        _g118624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g118624_))))))
    (define __AST-bind-list?
      (lambda (_stx114124_)
        (__AST-id-list?__%
         _stx114124_
         (lambda (_e114126_)
           (let ((_$e114128_ (__AST-null? _e114126_)))
             (if _$e114128_ _$e114128_ (__AST-id? _e114126_)))))))
    (define __AST-list?__%
      (lambda (_stx114077_ _tail?114078_)
        (let _lp114080_ ((_rest114082_ _stx114077_))
          (let* ((_$e114084_ _rest114082_)
                 (_$E114086114099_
                  (lambda ()
                    (let* ((_$E114087114094_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e114084_)))
                           (_rest114097_ _$e114084_))
                      (_tail?114078_ _rest114097_)))))
            (if (__AST-pair? _$e114084_)
                (let* ((_$tgt114088114102_ (__AST-e _$e114084_))
                       (_$hd114089114105_ (##car _$tgt114088114102_))
                       (_$tl114090114108_ (##cdr _$tgt114088114102_)))
                  (let ((_rest114112_ _$tl114090114108_))
                    (_lp114080_ _rest114112_)))
                (_$E114086114099_))))))
    (define __AST-list?__0
      (lambda (_stx114117_)
        (let ((_tail?114119_ __AST-null?))
          (__AST-list?__% _stx114117_ _tail?114119_))))
    (define __AST-list?
      (lambda _g118626_
        (let ((_g118625_ (##length _g118626_)))
          (cond ((##fx= _g118625_ 1)
                 (apply (lambda (_stx114117_) (__AST-list?__0 _stx114117_))
                        _g118626_))
                ((##fx= _g118625_ 2)
                 (apply (lambda (_stx114121_ _tail?114122_)
                          (__AST-list?__% _stx114121_ _tail?114122_))
                        _g118626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g118626_))))))
    (define __AST->list
      (lambda (_stx114042_)
        (let* ((_$e114044_ _stx114042_)
               (_$E114046114059_
                (lambda ()
                  (let* ((_$E114047114054_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e114044_)))
                         (_rest114057_ _$e114044_))
                    (__AST-e _rest114057_)))))
          (if (__AST-pair? _$e114044_)
              (let* ((_$tgt114048114062_ (__AST-e _$e114044_))
                     (_$hd114049114065_ (##car _$tgt114048114062_))
                     (_$tl114050114068_ (##cdr _$tgt114048114062_)))
                (let* ((_hd114072_ _$hd114049114065_)
                       (_rest114074_ _$tl114050114068_))
                  (cons _hd114072_ (__AST->list _rest114074_))))
              (_$E114046114059_)))))
    (define __AST->datum
      (lambda (_stx114040_)
        (if (##structure-instance-of? _stx114040_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx114040_))
            (if (pair? _stx114040_)
                (cons (__AST->datum (car _stx114040_))
                      (__AST->datum (cdr _stx114040_)))
                (if (vector? _stx114040_)
                    (vector-map __AST->datum _stx114040_)
                    (if (box? _stx114040_)
                        (box (__AST->datum (unbox _stx114040_)))
                        _stx114040_))))))
    (define get-readenv
      (lambda (_port114038_)
        (##make-readenv
         _port114038_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in114026_)
        (let ((_e114028_ (##read-datum-or-eof (get-readenv _in114026_))))
          (if (eof-object? (__AST-e _e114028_))
              (__AST-e _e114028_)
              _e114028_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in114034_ (current-input-port))) (read-syntax__% _in114034_))))
    (define read-syntax
      (lambda _g118628_
        (let ((_g118627_ (##length _g118628_)))
          (cond ((##fx= _g118627_ 0)
                 (apply (lambda () (read-syntax__0)) _g118628_))
                ((##fx= _g118627_ 1)
                 (apply (lambda (_in114036_) (read-syntax__% _in114036_))
                        _g118628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g118628_))))))
    (define read-syntax-from-file
      (lambda (_path114021_)
        (let ((_r114023_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path114021_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r114023_)
              (cdr (__AST-e (vector-ref _r114023_ '1)))
              (error (err-code->string _r114023_) _path114021_)))))
    (define __wrap-syntax
      (lambda (_re114018_ _e114019_)
        (if (eof-object? _e114019_)
            _e114019_
            (##structure AST::t _e114019_ (##readenv->locat _re114018_)))))
    (define __unwrap-syntax
      (lambda (_re114015_ _e114016_) (__AST-e _e114016_)))
    (define __pp-syntax (lambda (_stx114013_) (pp (__AST->datum _stx114013_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt114011_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt114011_ '#t)
          (macro-readtable-bracket-handler-set! _rt114011_ '@list)
          (macro-readtable-brace-handler-set! _rt114011_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt114011_
           '#\!
           __read-sharp-bang)
          _rt114011_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt114007_ _kw114008_)
        (macro-readtable-bracket-handler-set! _rt114007_ _kw114008_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt114004_ _kw114005_)
        (macro-readtable-brace-handler-set! _rt114004_ _kw114005_)))
    (define __read-sharp-bang
      (lambda (_re113995_ _next113996_ _start-pos113997_)
        (if (eq? _start-pos113997_ '0)
            (let* ((_line113999_
                    (##read-line
                     (macro-readenv-port _re113995_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line114001_
                    (substring _line113999_ '1 (string-length _line113999_))))
              (macro-readenv-script-line-set! _re113995_ _script-line114001_)
              (##script-marker))
            (##read-sharp-bang _re113995_ _next113996_ _start-pos113997_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj113993_)
        (if (source-location? _obj113993_)
            (string? (##locat-container _obj113993_))
            '#f)))
    (define source-location-path
      (lambda (_obj113991_)
        (if (##locat? _obj113991_)
            (##container->path (##locat-container _obj113991_))
            '#f)))))
