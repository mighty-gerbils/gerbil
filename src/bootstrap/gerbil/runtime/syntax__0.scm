(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707767842)
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
      (lambda _$args102678_
        (apply make-instance SyntaxError::t _$args102678_)))
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
      (lambda (_self102581_ _port102582_)
        (letrec ((_location102584_
                  (lambda ()
                    (let _lp102638_ ((_rest102640_
                                      (##unchecked-structure-ref
                                       _self102581_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102641102649_ _rest102640_)
                             (_else102643102657_ (lambda () '#f))
                             (_K102645102666_
                              (lambda (_rest102660_ _hd102661_)
                                (let ((_$e102663_ (__AST-source _hd102661_)))
                                  (if _$e102663_
                                      _$e102663_
                                      (_lp102638_ _rest102660_))))))
                        (if (##pair? _rest102641102649_)
                            (let ((_hd102646102669_ (##car _rest102641102649_))
                                  (_tl102647102671_
                                   (##cdr _rest102641102649_)))
                              (let* ((_hd102674_ _hd102646102669_)
                                     (_rest102676_ _tl102647102671_))
                                (_K102645102666_ _rest102676_ _hd102674_)))
                            (_else102643102657_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102587_ (_location102584_)))
               (if _$e102587_
                   ((lambda (_where102590_)
                      (##display-locat
                       _where102590_
                       '#t
                       (current-output-port)))
                    _$e102587_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102592_
                    (##unchecked-structure-ref
                     _self102581_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102592_
                   ((lambda (_where102595_)
                      (displayln
                       '" at "
                       _where102595_
                       '": "
                       (##unchecked-structure-ref
                        _self102581_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102592_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102581_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102596102604_
                     (##unchecked-structure-ref
                      _self102581_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102598102612_ (lambda () '#!void))
                    (_K102600102625_
                     (lambda (_rest102615_ _stx102616_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102616_)
                       (for-each
                        (lambda (_detail102618_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102618_))
                          (let ((_$e102620_ (__AST-source _detail102618_)))
                            (if _$e102620_
                                ((lambda (_loc102623_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102623_
                                    '#t
                                    (current-output-port)))
                                 _$e102620_)
                                '#!void))
                          (newline))
                        _rest102615_))))
               (if (##pair? _g102596102604_)
                   (let ((_hd102601102628_ (##car _g102596102604_))
                         (_tl102602102630_ (##cdr _g102596102604_)))
                     (let* ((_stx102633_ _hd102601102628_)
                            (_rest102635_ _tl102602102630_))
                       (_K102600102625_ _rest102635_ _stx102633_)))
                   '#!void)))
           current-output-port
           _port102582_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message102452_
               _irritants102453_
               _where102454_
               _context102455_
               _marks102456_
               _phi102457_)
        (let ((__obj107341
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj107341
           _message102452_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107341
           _irritants102453_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107341
           _where102454_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107341
           _context102455_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107341
           _marks102456_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107341
           _phi102457_
           '5
           SyntaxError::t
           '#f)
          __obj107341)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where102447_ _message102448_ _stx102449_ . _details102450_)
        (raise (make-syntax-error
                _message102448_
                (cons _stx102449_ _details102450_)
                _where102447_
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
      (lambda _$args102444_ (apply make-instance AST::t _$args102444_)))
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
      (lambda (_stx102442_)
        (if (##structure-instance-of? _stx102442_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx102442_ '1 AST::t '#f)
            _stx102442_)))
    (define __AST-source
      (lambda (_stx102436_)
        (let _lp102438_ ((_src102440_ _stx102436_))
          (if (##structure-instance-of? _src102440_ 'gerbil#AST::t)
              (_lp102438_
               (##unchecked-structure-ref _src102440_ '2 AST::t '#f))
              (if (##locat? _src102440_) _src102440_ '#f)))))
    (define __AST
      (lambda (_e102428_ _src-stx102429_)
        (let ((_src102431_ (__AST-source _src-stx102429_)))
          (if (or (##structure-instance-of? _e102428_ 'gerbil#AST::t)
                  (not _src102431_))
              _e102428_
              (##structure AST::t _e102428_ _src102431_)))))
    (define __AST-eq?
      (lambda (_stx102425_ _obj102426_)
        (eq? (__AST-e _stx102425_) _obj102426_)))
    (define __AST-pair? (lambda (_stx102423_) (pair? (__AST-e _stx102423_))))
    (define __AST-null? (lambda (_stx102421_) (null? (__AST-e _stx102421_))))
    (define __AST-datum?
      (lambda (_stx102402_)
        (let* ((_e102404_ (__AST-e _stx102402_))
               (_$e102406_ (number? _e102404_)))
          (if _$e102406_
              _$e102406_
              (let ((_$e102409_ (string? _e102404_)))
                (if _$e102409_
                    _$e102409_
                    (let ((_$e102412_ (char? _e102404_)))
                      (if _$e102412_
                          _$e102412_
                          (let ((_$e102415_ (keyword? _e102404_)))
                            (if _$e102415_
                                _$e102415_
                                (let ((_$e102418_ (boolean? _e102404_)))
                                  (if _$e102418_
                                      _$e102418_
                                      (eq? _e102404_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx102400_) (symbol? (__AST-e _stx102400_))))
    (define __AST-id-list?__%
      (lambda (_stx102351_ _tail?102352_)
        (let _lp102354_ ((_rest102356_ _stx102351_))
          (let* ((_$e102358_ _rest102356_)
                 (_$E102360102373_
                  (lambda ()
                    (let* ((_$E102361102368_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102358_)))
                           (_rest102371_ _$e102358_))
                      (_tail?102352_ _rest102371_)))))
            (if (__AST-pair? _$e102358_)
                (let* ((_$tgt102362102376_ (__AST-e _$e102358_))
                       (_$hd102363102379_ (##car _$tgt102362102376_))
                       (_$tl102364102382_ (##cdr _$tgt102362102376_)))
                  (let* ((_hd102386_ _$hd102363102379_)
                         (_rest102388_ _$tl102364102382_))
                    (if (__AST-id? _hd102386_) (_lp102354_ _rest102388_) '#f)))
                (_$E102360102373_))))))
    (define __AST-id-list?__0
      (lambda (_stx102393_)
        (let ((_tail?102395_ __AST-null?))
          (__AST-id-list?__% _stx102393_ _tail?102395_))))
    (define __AST-id-list?
      (lambda _g107344_
        (let ((_g107343_ (##length _g107344_)))
          (cond ((##fx= _g107343_ 1)
                 (apply (lambda (_stx102393_) (__AST-id-list?__0 _stx102393_))
                        _g107344_))
                ((##fx= _g107343_ 2)
                 (apply (lambda (_stx102397_ _tail?102398_)
                          (__AST-id-list?__% _stx102397_ _tail?102398_))
                        _g107344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g107344_))))))
    (define __AST-bind-list?
      (lambda (_stx102343_)
        (__AST-id-list?__%
         _stx102343_
         (lambda (_e102345_)
           (let ((_$e102347_ (__AST-null? _e102345_)))
             (if _$e102347_ _$e102347_ (__AST-id? _e102345_)))))))
    (define __AST-list?__%
      (lambda (_stx102296_ _tail?102297_)
        (let _lp102299_ ((_rest102301_ _stx102296_))
          (let* ((_$e102303_ _rest102301_)
                 (_$E102305102318_
                  (lambda ()
                    (let* ((_$E102306102313_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102303_)))
                           (_rest102316_ _$e102303_))
                      (_tail?102297_ _rest102316_)))))
            (if (__AST-pair? _$e102303_)
                (let* ((_$tgt102307102321_ (__AST-e _$e102303_))
                       (_$hd102308102324_ (##car _$tgt102307102321_))
                       (_$tl102309102327_ (##cdr _$tgt102307102321_)))
                  (let ((_rest102331_ _$tl102309102327_))
                    (_lp102299_ _rest102331_)))
                (_$E102305102318_))))))
    (define __AST-list?__0
      (lambda (_stx102336_)
        (let ((_tail?102338_ __AST-null?))
          (__AST-list?__% _stx102336_ _tail?102338_))))
    (define __AST-list?
      (lambda _g107346_
        (let ((_g107345_ (##length _g107346_)))
          (cond ((##fx= _g107345_ 1)
                 (apply (lambda (_stx102336_) (__AST-list?__0 _stx102336_))
                        _g107346_))
                ((##fx= _g107345_ 2)
                 (apply (lambda (_stx102340_ _tail?102341_)
                          (__AST-list?__% _stx102340_ _tail?102341_))
                        _g107346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g107346_))))))
    (define __AST->list
      (lambda (_stx102261_)
        (let* ((_$e102263_ _stx102261_)
               (_$E102265102278_
                (lambda ()
                  (let* ((_$E102266102273_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e102263_)))
                         (_rest102276_ _$e102263_))
                    (__AST-e _rest102276_)))))
          (if (__AST-pair? _$e102263_)
              (let* ((_$tgt102267102281_ (__AST-e _$e102263_))
                     (_$hd102268102284_ (##car _$tgt102267102281_))
                     (_$tl102269102287_ (##cdr _$tgt102267102281_)))
                (let* ((_hd102291_ _$hd102268102284_)
                       (_rest102293_ _$tl102269102287_))
                  (cons _hd102291_ (__AST->list _rest102293_))))
              (_$E102265102278_)))))
    (define __AST->datum
      (lambda (_stx102259_)
        (if (##structure-instance-of? _stx102259_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx102259_))
            (if (pair? _stx102259_)
                (cons (__AST->datum (car _stx102259_))
                      (__AST->datum (cdr _stx102259_)))
                (if (vector? _stx102259_)
                    (vector-map __AST->datum _stx102259_)
                    (if (box? _stx102259_)
                        (box (__AST->datum (unbox _stx102259_)))
                        _stx102259_))))))
    (define get-readenv
      (lambda (_port102257_)
        (##make-readenv
         _port102257_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in102245_)
        (let ((_e102247_ (##read-datum-or-eof (get-readenv _in102245_))))
          (if (eof-object? (__AST-e _e102247_))
              (__AST-e _e102247_)
              _e102247_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in102253_ (current-input-port))) (read-syntax__% _in102253_))))
    (define read-syntax
      (lambda _g107348_
        (let ((_g107347_ (##length _g107348_)))
          (cond ((##fx= _g107347_ 0)
                 (apply (lambda () (read-syntax__0)) _g107348_))
                ((##fx= _g107347_ 1)
                 (apply (lambda (_in102255_) (read-syntax__% _in102255_))
                        _g107348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g107348_))))))
    (define read-syntax-from-file
      (lambda (_path102240_)
        (let ((_r102242_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path102240_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r102242_)
              (cdr (__AST-e (vector-ref _r102242_ '1)))
              (error (err-code->string _r102242_) _path102240_)))))
    (define __wrap-syntax
      (lambda (_re102237_ _e102238_)
        (if (eof-object? _e102238_)
            _e102238_
            (##structure AST::t _e102238_ (##readenv->locat _re102237_)))))
    (define __unwrap-syntax
      (lambda (_re102234_ _e102235_) (__AST-e _e102235_)))
    (define __pp-syntax (lambda (_stx102232_) (pp (__AST->datum _stx102232_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt102230_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt102230_ '#t)
          (macro-readtable-bracket-handler-set! _rt102230_ '@list)
          (macro-readtable-brace-handler-set! _rt102230_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt102230_
           '#\!
           __read-sharp-bang)
          _rt102230_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt102226_ _kw102227_)
        (macro-readtable-bracket-handler-set! _rt102226_ _kw102227_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt102223_ _kw102224_)
        (macro-readtable-brace-handler-set! _rt102223_ _kw102224_)))
    (define __read-sharp-bang
      (lambda (_re102214_ _next102215_ _start-pos102216_)
        (if (eq? _start-pos102216_ '0)
            (let* ((_line102218_
                    (##read-line
                     (macro-readenv-port _re102214_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line102220_
                    (substring _line102218_ '1 (string-length _line102218_))))
              (macro-readenv-script-line-set! _re102214_ _script-line102220_)
              (##script-marker))
            (##read-sharp-bang _re102214_ _next102215_ _start-pos102216_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj102212_)
        (if (source-location? _obj102212_)
            (string? (##locat-container _obj102212_))
            '#f)))
    (define source-location-path
      (lambda (_obj102210_)
        (if (##locat? _obj102210_)
            (##container->path (##locat-container _obj102210_))
            '#f)))))
