(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708337964)
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
      (lambda _$args115116_
        (apply make-instance SyntaxError::t _$args115116_)))
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
      (lambda (_self115019_ _port115020_)
        (letrec ((_location115022_
                  (lambda ()
                    (let _lp115076_ ((_rest115078_
                                      (##unchecked-structure-ref
                                       _self115019_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest115079115087_ _rest115078_)
                             (_else115081115095_ (lambda () '#f))
                             (_K115083115104_
                              (lambda (_rest115098_ _hd115099_)
                                (let ((_$e115101_ (__AST-source _hd115099_)))
                                  (if _$e115101_
                                      _$e115101_
                                      (_lp115076_ _rest115098_))))))
                        (if (##pair? _rest115079115087_)
                            (let ((_hd115084115107_ (##car _rest115079115087_))
                                  (_tl115085115109_
                                   (##cdr _rest115079115087_)))
                              (let* ((_hd115112_ _hd115084115107_)
                                     (_rest115114_ _tl115085115109_))
                                (_K115083115104_ _rest115114_ _hd115112_)))
                            (_else115081115095_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e115025_ (_location115022_)))
               (if _$e115025_
                   ((lambda (_where115028_)
                      (##display-locat
                       _where115028_
                       '#t
                       (current-output-port)))
                    _$e115025_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e115030_
                    (##unchecked-structure-ref
                     _self115019_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e115030_
                   ((lambda (_where115033_)
                      (displayln
                       '" at "
                       _where115033_
                       '": "
                       (##unchecked-structure-ref
                        _self115019_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e115030_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self115019_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g115034115042_
                     (##unchecked-structure-ref
                      _self115019_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else115036115050_ (lambda () '#!void))
                    (_K115038115063_
                     (lambda (_rest115053_ _stx115054_)
                       (display '"... form:   ")
                       (__pp-syntax _stx115054_)
                       (for-each
                        (lambda (_detail115056_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail115056_))
                          (let ((_$e115058_ (__AST-source _detail115056_)))
                            (if _$e115058_
                                ((lambda (_loc115061_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc115061_
                                    '#t
                                    (current-output-port)))
                                 _$e115058_)
                                '#!void))
                          (newline))
                        _rest115053_))))
               (if (##pair? _g115034115042_)
                   (let ((_hd115039115066_ (##car _g115034115042_))
                         (_tl115040115068_ (##cdr _g115034115042_)))
                     (let* ((_stx115071_ _hd115039115066_)
                            (_rest115073_ _tl115040115068_))
                       (_K115038115063_ _rest115073_ _stx115071_)))
                   '#!void)))
           current-output-port
           _port115020_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message114890_
               _irritants114891_
               _where114892_
               _context114893_
               _marks114894_
               _phi114895_)
        (let ((__obj119197
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj119197
           _message114890_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj119197
           _irritants114891_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj119197
           _where114892_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj119197
           _context114893_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj119197
           _marks114894_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj119197
           _phi114895_
           '5
           SyntaxError::t
           '#f)
          __obj119197)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where114885_ _message114886_ _stx114887_ . _details114888_)
        (raise (make-syntax-error
                _message114886_
                (cons _stx114887_ _details114888_)
                _where114885_
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
      (lambda _$args114882_ (apply make-instance AST::t _$args114882_)))
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
      (lambda (_stx114880_)
        (if (##structure-instance-of? _stx114880_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx114880_ '1 AST::t '#f)
            _stx114880_)))
    (define __AST-source
      (lambda (_stx114874_)
        (let _lp114876_ ((_src114878_ _stx114874_))
          (if (##structure-instance-of? _src114878_ 'gerbil#AST::t)
              (_lp114876_
               (##unchecked-structure-ref _src114878_ '2 AST::t '#f))
              (if (##locat? _src114878_) _src114878_ '#f)))))
    (define __AST
      (lambda (_e114866_ _src-stx114867_)
        (let ((_src114869_ (__AST-source _src-stx114867_)))
          (if (or (##structure-instance-of? _e114866_ 'gerbil#AST::t)
                  (not _src114869_))
              _e114866_
              (##structure AST::t _e114866_ _src114869_)))))
    (define __AST-eq?
      (lambda (_stx114863_ _obj114864_)
        (eq? (__AST-e _stx114863_) _obj114864_)))
    (define __AST-pair? (lambda (_stx114861_) (pair? (__AST-e _stx114861_))))
    (define __AST-null? (lambda (_stx114859_) (null? (__AST-e _stx114859_))))
    (define __AST-datum?
      (lambda (_stx114840_)
        (let* ((_e114842_ (__AST-e _stx114840_))
               (_$e114844_ (number? _e114842_)))
          (if _$e114844_
              _$e114844_
              (let ((_$e114847_ (string? _e114842_)))
                (if _$e114847_
                    _$e114847_
                    (let ((_$e114850_ (char? _e114842_)))
                      (if _$e114850_
                          _$e114850_
                          (let ((_$e114853_ (keyword? _e114842_)))
                            (if _$e114853_
                                _$e114853_
                                (let ((_$e114856_ (boolean? _e114842_)))
                                  (if _$e114856_
                                      _$e114856_
                                      (eq? _e114842_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx114838_) (symbol? (__AST-e _stx114838_))))
    (define __AST-id-list?__%
      (lambda (_stx114789_ _tail?114790_)
        (let _lp114792_ ((_rest114794_ _stx114789_))
          (let* ((_$e114796_ _rest114794_)
                 (_$E114798114811_
                  (lambda ()
                    (let* ((_$E114799114806_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e114796_)))
                           (_rest114809_ _$e114796_))
                      (_tail?114790_ _rest114809_)))))
            (if (__AST-pair? _$e114796_)
                (let* ((_$tgt114800114814_ (__AST-e _$e114796_))
                       (_$hd114801114817_ (##car _$tgt114800114814_))
                       (_$tl114802114820_ (##cdr _$tgt114800114814_)))
                  (let* ((_hd114824_ _$hd114801114817_)
                         (_rest114826_ _$tl114802114820_))
                    (if (__AST-id? _hd114824_) (_lp114792_ _rest114826_) '#f)))
                (_$E114798114811_))))))
    (define __AST-id-list?__0
      (lambda (_stx114831_)
        (let ((_tail?114833_ __AST-null?))
          (__AST-id-list?__% _stx114831_ _tail?114833_))))
    (define __AST-id-list?
      (lambda _g119200_
        (let ((_g119199_ (##length _g119200_)))
          (cond ((##fx= _g119199_ 1)
                 (apply (lambda (_stx114831_) (__AST-id-list?__0 _stx114831_))
                        _g119200_))
                ((##fx= _g119199_ 2)
                 (apply (lambda (_stx114835_ _tail?114836_)
                          (__AST-id-list?__% _stx114835_ _tail?114836_))
                        _g119200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g119200_))))))
    (define __AST-bind-list?
      (lambda (_stx114781_)
        (__AST-id-list?__%
         _stx114781_
         (lambda (_e114783_)
           (let ((_$e114785_ (__AST-null? _e114783_)))
             (if _$e114785_ _$e114785_ (__AST-id? _e114783_)))))))
    (define __AST-list?__%
      (lambda (_stx114734_ _tail?114735_)
        (let _lp114737_ ((_rest114739_ _stx114734_))
          (let* ((_$e114741_ _rest114739_)
                 (_$E114743114756_
                  (lambda ()
                    (let* ((_$E114744114751_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e114741_)))
                           (_rest114754_ _$e114741_))
                      (_tail?114735_ _rest114754_)))))
            (if (__AST-pair? _$e114741_)
                (let* ((_$tgt114745114759_ (__AST-e _$e114741_))
                       (_$hd114746114762_ (##car _$tgt114745114759_))
                       (_$tl114747114765_ (##cdr _$tgt114745114759_)))
                  (let ((_rest114769_ _$tl114747114765_))
                    (_lp114737_ _rest114769_)))
                (_$E114743114756_))))))
    (define __AST-list?__0
      (lambda (_stx114774_)
        (let ((_tail?114776_ __AST-null?))
          (__AST-list?__% _stx114774_ _tail?114776_))))
    (define __AST-list?
      (lambda _g119202_
        (let ((_g119201_ (##length _g119202_)))
          (cond ((##fx= _g119201_ 1)
                 (apply (lambda (_stx114774_) (__AST-list?__0 _stx114774_))
                        _g119202_))
                ((##fx= _g119201_ 2)
                 (apply (lambda (_stx114778_ _tail?114779_)
                          (__AST-list?__% _stx114778_ _tail?114779_))
                        _g119202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g119202_))))))
    (define __AST->list
      (lambda (_stx114699_)
        (let* ((_$e114701_ _stx114699_)
               (_$E114703114716_
                (lambda ()
                  (let* ((_$E114704114711_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e114701_)))
                         (_rest114714_ _$e114701_))
                    (__AST-e _rest114714_)))))
          (if (__AST-pair? _$e114701_)
              (let* ((_$tgt114705114719_ (__AST-e _$e114701_))
                     (_$hd114706114722_ (##car _$tgt114705114719_))
                     (_$tl114707114725_ (##cdr _$tgt114705114719_)))
                (let* ((_hd114729_ _$hd114706114722_)
                       (_rest114731_ _$tl114707114725_))
                  (cons _hd114729_ (__AST->list _rest114731_))))
              (_$E114703114716_)))))
    (define __AST->datum
      (lambda (_stx114697_)
        (if (##structure-instance-of? _stx114697_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx114697_))
            (if (pair? _stx114697_)
                (cons (__AST->datum (car _stx114697_))
                      (__AST->datum (cdr _stx114697_)))
                (if (vector? _stx114697_)
                    (vector-map __AST->datum _stx114697_)
                    (if (box? _stx114697_)
                        (box (__AST->datum (unbox _stx114697_)))
                        _stx114697_))))))
    (define get-readenv
      (lambda (_port114695_)
        (##make-readenv
         _port114695_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in114683_)
        (let ((_e114685_ (##read-datum-or-eof (get-readenv _in114683_))))
          (if (eof-object? (__AST-e _e114685_))
              (__AST-e _e114685_)
              _e114685_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in114691_ (current-input-port))) (read-syntax__% _in114691_))))
    (define read-syntax
      (lambda _g119204_
        (let ((_g119203_ (##length _g119204_)))
          (cond ((##fx= _g119203_ 0)
                 (apply (lambda () (read-syntax__0)) _g119204_))
                ((##fx= _g119203_ 1)
                 (apply (lambda (_in114693_) (read-syntax__% _in114693_))
                        _g119204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g119204_))))))
    (define read-syntax-from-file
      (lambda (_path114678_)
        (let ((_r114680_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path114678_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r114680_)
              (cdr (__AST-e (vector-ref _r114680_ '1)))
              (error (err-code->string _r114680_) _path114678_)))))
    (define __wrap-syntax
      (lambda (_re114675_ _e114676_)
        (if (eof-object? _e114676_)
            _e114676_
            (##structure AST::t _e114676_ (##readenv->locat _re114675_)))))
    (define __unwrap-syntax
      (lambda (_re114672_ _e114673_) (__AST-e _e114673_)))
    (define __pp-syntax (lambda (_stx114670_) (pp (__AST->datum _stx114670_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt114668_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt114668_ '#t)
          (macro-readtable-bracket-handler-set! _rt114668_ '@list)
          (macro-readtable-brace-handler-set! _rt114668_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt114668_
           '#\!
           __read-sharp-bang)
          _rt114668_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt114664_ _kw114665_)
        (macro-readtable-bracket-handler-set! _rt114664_ _kw114665_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt114661_ _kw114662_)
        (macro-readtable-brace-handler-set! _rt114661_ _kw114662_)))
    (define __read-sharp-bang
      (lambda (_re114652_ _next114653_ _start-pos114654_)
        (if (eq? _start-pos114654_ '0)
            (let* ((_line114656_
                    (##read-line
                     (macro-readenv-port _re114652_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line114658_
                    (substring _line114656_ '1 (string-length _line114656_))))
              (macro-readenv-script-line-set! _re114652_ _script-line114658_)
              (##script-marker))
            (##read-sharp-bang _re114652_ _next114653_ _start-pos114654_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj114650_)
        (if (source-location? _obj114650_)
            (string? (##locat-container _obj114650_))
            '#f)))
    (define source-location-path
      (lambda (_obj114648_)
        (if (##locat? _obj114648_)
            (##container->path (##locat-container _obj114648_))
            '#f)))))
