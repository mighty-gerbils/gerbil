(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1695392652)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       (cons Exception::t '())
       '(message irritants where context phi marks)
       'SyntaxError
       '((final: . #t))
       '#f))
    (define SyntaxError? (make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _$args14669_
        (apply make-class-instance SyntaxError::t _$args14669_)))
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
      (lambda (_self14572_ _port14573_)
        (letrec ((_location14575_
                  (lambda ()
                    (let _lp14629_ ((_rest14631_
                                     (slot-ref _self14572_ 'irritants)))
                      (let* ((_rest1463214640_ _rest14631_)
                             (_else1463414648_ (lambda () '#f))
                             (_K1463614657_
                              (lambda (_rest14651_ _hd14652_)
                                (let ((_$e14654_ (__AST-source _hd14652_)))
                                  (if _$e14654_
                                      _$e14654_
                                      (_lp14629_ _rest14651_))))))
                        (if (##pair? _rest1463214640_)
                            (let ((_hd1463714660_ (##car _rest1463214640_))
                                  (_tl1463814662_ (##cdr _rest1463214640_)))
                              (let* ((_hd14665_ _hd1463714660_)
                                     (_rest14667_ _tl1463814662_))
                                (_K1463614657_ _rest14667_ _hd14665_)))
                            (_else1463414648_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14578_ (_location14575_)))
               (if _$e14578_
                   ((lambda (_where14581_)
                      (##display-locat _where14581_ '#t (current-output-port)))
                    _$e14578_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14583_ (slot-ref _self14572_ 'where)))
               (if _$e14583_
                   ((lambda (_where14586_)
                      (displayln
                       '" at "
                       _where14586_
                       '": "
                       (slot-ref _self14572_ 'message)))
                    _$e14583_)
                   (displayln '": " (slot-ref _self14572_ 'message))))
             (let* ((_g1458714595_ (slot-ref _self14572_ 'irritants))
                    (_else1458914603_ (lambda () '#!void))
                    (_K1459114616_
                     (lambda (_rest14606_ _stx14607_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14607_)
                       (for-each
                        (lambda (_detail14609_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14609_))
                          (let ((_$e14611_ (__AST-source _detail14609_)))
                            (if _$e14611_
                                ((lambda (_loc14614_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14614_
                                    '#t
                                    (current-output-port)))
                                 _$e14611_)
                                '#!void))
                          (newline))
                        _rest14606_))))
               (if (##pair? _g1458714595_)
                   (let ((_hd1459214619_ (##car _g1458714595_))
                         (_tl1459314621_ (##cdr _g1458714595_)))
                     (let* ((_stx14624_ _hd1459214619_)
                            (_rest14626_ _tl1459314621_))
                       (_K1459114616_ _rest14626_ _stx14624_)))
                   '#!void)))
           current-output-port
           _port14573_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14443_
               _irritants14444_
               _where14445_
               _context14446_
               _marks14447_
               _phi14448_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14443_
         'irritants:
         _irritants14444_
         'where:
         _where14445_
         'context:
         _context14446_
         'marks:
         _marks14447_
         'phi:
         _phi14448_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14438_ _message14439_ _stx14440_ . _details14441_)
        (raise (make-syntax-error
                _message14439_
                (cons _stx14440_ _details14441_)
                _where14438_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14435_ (apply make-struct-instance AST::t _$args14435_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14433_)
        (if (##structure-instance-of? _stx14433_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14433_ '1 AST::t '#f)
            _stx14433_)))
    (define __AST-source
      (lambda (_stx14427_)
        (let _lp14429_ ((_src14431_ _stx14427_))
          (if (##structure-instance-of? _src14431_ 'gerbil#AST::t)
              (_lp14429_ (##unchecked-structure-ref _src14431_ '2 AST::t '#f))
              (if (##locat? _src14431_) _src14431_ '#f)))))
    (define __AST
      (lambda (_e14419_ _src-stx14420_)
        (let ((_src14422_ (__AST-source _src-stx14420_)))
          (if (or (##structure-instance-of? _e14419_ 'gerbil#AST::t)
                  (not _src14422_))
              _e14419_
              (##structure AST::t _e14419_ _src14422_)))))
    (define __AST-eq?
      (lambda (_stx14416_ _obj14417_) (eq? (__AST-e _stx14416_) _obj14417_)))
    (define __AST-pair? (lambda (_stx14414_) (pair? (__AST-e _stx14414_))))
    (define __AST-null? (lambda (_stx14412_) (null? (__AST-e _stx14412_))))
    (define __AST-datum?
      (lambda (_stx14393_)
        (let* ((_e14395_ (__AST-e _stx14393_)) (_$e14397_ (number? _e14395_)))
          (if _$e14397_
              _$e14397_
              (let ((_$e14400_ (string? _e14395_)))
                (if _$e14400_
                    _$e14400_
                    (let ((_$e14403_ (char? _e14395_)))
                      (if _$e14403_
                          _$e14403_
                          (let ((_$e14406_ (keyword? _e14395_)))
                            (if _$e14406_
                                _$e14406_
                                (let ((_$e14409_ (boolean? _e14395_)))
                                  (if _$e14409_
                                      _$e14409_
                                      (eq? _e14395_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14391_) (symbol? (__AST-e _stx14391_))))
    (define __AST-id-list?__%
      (lambda (_stx14342_ _tail?14343_)
        (let _lp14345_ ((_rest14347_ _stx14342_))
          (let* ((_$e14349_ _rest14347_)
                 (_$E1435114364_
                  (lambda ()
                    (let* ((_$E1435214359_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14349_)))
                           (_rest14362_ _$e14349_))
                      (_tail?14343_ _rest14362_)))))
            (if (__AST-pair? _$e14349_)
                (let* ((_$tgt1435314367_ (__AST-e _$e14349_))
                       (_$hd1435414370_ (##car _$tgt1435314367_))
                       (_$tl1435514373_ (##cdr _$tgt1435314367_)))
                  (let* ((_hd14377_ _$hd1435414370_)
                         (_rest14379_ _$tl1435514373_))
                    (if (__AST-id? _hd14377_) (_lp14345_ _rest14379_) '#f)))
                (_$E1435114364_))))))
    (define __AST-id-list?__0
      (lambda (_stx14384_)
        (let ((_tail?14386_ __AST-null?))
          (__AST-id-list?__% _stx14384_ _tail?14386_))))
    (define __AST-id-list?
      (lambda _g14764_
        (let ((_g14763_ (##length _g14764_)))
          (cond ((##fx= _g14763_ 1)
                 (apply (lambda (_stx14384_) (__AST-id-list?__0 _stx14384_))
                        _g14764_))
                ((##fx= _g14763_ 2)
                 (apply (lambda (_stx14388_ _tail?14389_)
                          (__AST-id-list?__% _stx14388_ _tail?14389_))
                        _g14764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14764_))))))
    (define __AST-bind-list?
      (lambda (_stx14334_)
        (__AST-id-list?__%
         _stx14334_
         (lambda (_e14336_)
           (let ((_$e14338_ (__AST-null? _e14336_)))
             (if _$e14338_ _$e14338_ (__AST-id? _e14336_)))))))
    (define __AST-list?__%
      (lambda (_stx14287_ _tail?14288_)
        (let _lp14290_ ((_rest14292_ _stx14287_))
          (let* ((_$e14294_ _rest14292_)
                 (_$E1429614309_
                  (lambda ()
                    (let* ((_$E1429714304_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14294_)))
                           (_rest14307_ _$e14294_))
                      (_tail?14288_ _rest14307_)))))
            (if (__AST-pair? _$e14294_)
                (let* ((_$tgt1429814312_ (__AST-e _$e14294_))
                       (_$hd1429914315_ (##car _$tgt1429814312_))
                       (_$tl1430014318_ (##cdr _$tgt1429814312_)))
                  (let ((_rest14322_ _$tl1430014318_))
                    (_lp14290_ _rest14322_)))
                (_$E1429614309_))))))
    (define __AST-list?__0
      (lambda (_stx14327_)
        (let ((_tail?14329_ __AST-null?))
          (__AST-list?__% _stx14327_ _tail?14329_))))
    (define __AST-list?
      (lambda _g14766_
        (let ((_g14765_ (##length _g14766_)))
          (cond ((##fx= _g14765_ 1)
                 (apply (lambda (_stx14327_) (__AST-list?__0 _stx14327_))
                        _g14766_))
                ((##fx= _g14765_ 2)
                 (apply (lambda (_stx14331_ _tail?14332_)
                          (__AST-list?__% _stx14331_ _tail?14332_))
                        _g14766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14766_))))))
    (define __AST->list
      (lambda (_stx14252_)
        (let* ((_$e14254_ _stx14252_)
               (_$E1425614269_
                (lambda ()
                  (let* ((_$E1425714264_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _$e14254_)))
                         (_rest14267_ _$e14254_))
                    (__AST-e _rest14267_)))))
          (if (__AST-pair? _$e14254_)
              (let* ((_$tgt1425814272_ (__AST-e _$e14254_))
                     (_$hd1425914275_ (##car _$tgt1425814272_))
                     (_$tl1426014278_ (##cdr _$tgt1425814272_)))
                (let* ((_hd14282_ _$hd1425914275_)
                       (_rest14284_ _$tl1426014278_))
                  (cons _hd14282_ (__AST->list _rest14284_))))
              (_$E1425614269_)))))
    (define __AST->datum
      (lambda (_stx14250_)
        (if (##structure-instance-of? _stx14250_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14250_))
            (if (pair? _stx14250_)
                (cons (__AST->datum (car _stx14250_))
                      (__AST->datum (cdr _stx14250_)))
                (if (vector? _stx14250_)
                    (vector-map __AST->datum _stx14250_)
                    (if (box? _stx14250_)
                        (box (__AST->datum (unbox _stx14250_)))
                        _stx14250_))))))
    (define get-readenv
      (lambda (_port14248_)
        (##make-readenv
         _port14248_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14236_)
        (let ((_e14238_ (##read-datum-or-eof (get-readenv _in14236_))))
          (if (eof-object? (__AST-e _e14238_)) (__AST-e _e14238_) _e14238_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14244_ (current-input-port))) (read-syntax__% _in14244_))))
    (define read-syntax
      (lambda _g14768_
        (let ((_g14767_ (##length _g14768_)))
          (cond ((##fx= _g14767_ 0)
                 (apply (lambda () (read-syntax__0)) _g14768_))
                ((##fx= _g14767_ 1)
                 (apply (lambda (_in14246_) (read-syntax__% _in14246_))
                        _g14768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14768_))))))
    (define read-syntax-from-file
      (lambda (_path14231_)
        (let ((_r14233_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14231_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14233_)
              (cdr (__AST-e (vector-ref _r14233_ '1)))
              (error (err-code->string _r14233_) _path14231_)))))
    (define __wrap-syntax
      (lambda (_re14228_ _e14229_)
        (if (eof-object? _e14229_)
            _e14229_
            (##structure AST::t _e14229_ (##readenv->locat _re14228_)))))
    (define __unwrap-syntax (lambda (_re14225_ _e14226_) (__AST-e _e14226_)))
    (define __pp-syntax (lambda (_stx14223_) (pp (__AST->datum _stx14223_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14221_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14221_ '#t)
          (macro-readtable-bracket-handler-set! _rt14221_ '@list)
          (macro-readtable-brace-handler-set! _rt14221_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14221_
           '#\!
           __read-sharp-bang)
          _rt14221_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14217_ _kw14218_)
        (macro-readtable-bracket-handler-set! _rt14217_ _kw14218_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14214_ _kw14215_)
        (macro-readtable-brace-handler-set! _rt14214_ _kw14215_)))
    (define __read-sharp-bang
      (lambda (_re14205_ _next14206_ _start-pos14207_)
        (if (eq? _start-pos14207_ '0)
            (let* ((_line14209_
                    (##read-line
                     (macro-readenv-port _re14205_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14211_
                    (substring _line14209_ '1 (string-length _line14209_))))
              (macro-readenv-script-line-set! _re14205_ _script-line14211_)
              (##script-marker))
            (##read-sharp-bang _re14205_ _next14206_ _start-pos14207_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14203_)
        (if (source-location? _obj14203_)
            (string? (##locat-container _obj14203_))
            '#f)))
    (define source-location-path
      (lambda (_obj14201_)
        (if (##locat? _obj14201_)
            (##container->path (##locat-container _obj14201_))
            '#f)))))
