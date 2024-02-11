(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707659877)
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
      (lambda _$args101636_
        (apply make-instance SyntaxError::t _$args101636_)))
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
      (lambda (_self101539_ _port101540_)
        (letrec ((_location101542_
                  (lambda ()
                    (let _lp101596_ ((_rest101598_
                                      (##unchecked-structure-ref
                                       _self101539_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest101599101607_ _rest101598_)
                             (_else101601101615_ (lambda () '#f))
                             (_K101603101624_
                              (lambda (_rest101618_ _hd101619_)
                                (let ((_$e101621_ (__AST-source _hd101619_)))
                                  (if _$e101621_
                                      _$e101621_
                                      (_lp101596_ _rest101618_))))))
                        (if (##pair? _rest101599101607_)
                            (let ((_hd101604101627_ (##car _rest101599101607_))
                                  (_tl101605101629_
                                   (##cdr _rest101599101607_)))
                              (let* ((_hd101632_ _hd101604101627_)
                                     (_rest101634_ _tl101605101629_))
                                (_K101603101624_ _rest101634_ _hd101632_)))
                            (_else101601101615_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e101545_ (_location101542_)))
               (if _$e101545_
                   ((lambda (_where101548_)
                      (##display-locat
                       _where101548_
                       '#t
                       (current-output-port)))
                    _$e101545_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e101550_
                    (##unchecked-structure-ref
                     _self101539_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e101550_
                   ((lambda (_where101553_)
                      (displayln
                       '" at "
                       _where101553_
                       '": "
                       (##unchecked-structure-ref
                        _self101539_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e101550_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self101539_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g101554101562_
                     (##unchecked-structure-ref
                      _self101539_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else101556101570_ (lambda () '#!void))
                    (_K101558101583_
                     (lambda (_rest101573_ _stx101574_)
                       (display '"... form:   ")
                       (__pp-syntax _stx101574_)
                       (for-each
                        (lambda (_detail101576_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail101576_))
                          (let ((_$e101578_ (__AST-source _detail101576_)))
                            (if _$e101578_
                                ((lambda (_loc101581_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc101581_
                                    '#t
                                    (current-output-port)))
                                 _$e101578_)
                                '#!void))
                          (newline))
                        _rest101573_))))
               (if (##pair? _g101554101562_)
                   (let ((_hd101559101586_ (##car _g101554101562_))
                         (_tl101560101588_ (##cdr _g101554101562_)))
                     (let* ((_stx101591_ _hd101559101586_)
                            (_rest101593_ _tl101560101588_))
                       (_K101558101583_ _rest101593_ _stx101591_)))
                   '#!void)))
           current-output-port
           _port101540_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101410_
               _irritants101411_
               _where101412_
               _context101413_
               _marks101414_
               _phi101415_)
        (let ((__obj106199
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106199
           _message101410_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106199
           _irritants101411_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106199
           _where101412_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106199
           _context101413_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106199
           _marks101414_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106199
           _phi101415_
           '5
           SyntaxError::t
           '#f)
          __obj106199)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101405_ _message101406_ _stx101407_ . _details101408_)
        (raise (make-syntax-error
                _message101406_
                (cons _stx101407_ _details101408_)
                _where101405_
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
      (lambda _$args101402_ (apply make-instance AST::t _$args101402_)))
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
      (lambda (_stx101400_)
        (if (##structure-instance-of? _stx101400_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx101400_ '1 AST::t '#f)
            _stx101400_)))
    (define __AST-source
      (lambda (_stx101394_)
        (let _lp101396_ ((_src101398_ _stx101394_))
          (if (##structure-instance-of? _src101398_ 'gerbil#AST::t)
              (_lp101396_
               (##unchecked-structure-ref _src101398_ '2 AST::t '#f))
              (if (##locat? _src101398_) _src101398_ '#f)))))
    (define __AST
      (lambda (_e101386_ _src-stx101387_)
        (let ((_src101389_ (__AST-source _src-stx101387_)))
          (if (or (##structure-instance-of? _e101386_ 'gerbil#AST::t)
                  (not _src101389_))
              _e101386_
              (##structure AST::t _e101386_ _src101389_)))))
    (define __AST-eq?
      (lambda (_stx101383_ _obj101384_)
        (eq? (__AST-e _stx101383_) _obj101384_)))
    (define __AST-pair? (lambda (_stx101381_) (pair? (__AST-e _stx101381_))))
    (define __AST-null? (lambda (_stx101379_) (null? (__AST-e _stx101379_))))
    (define __AST-datum?
      (lambda (_stx101360_)
        (let* ((_e101362_ (__AST-e _stx101360_))
               (_$e101364_ (number? _e101362_)))
          (if _$e101364_
              _$e101364_
              (let ((_$e101367_ (string? _e101362_)))
                (if _$e101367_
                    _$e101367_
                    (let ((_$e101370_ (char? _e101362_)))
                      (if _$e101370_
                          _$e101370_
                          (let ((_$e101373_ (keyword? _e101362_)))
                            (if _$e101373_
                                _$e101373_
                                (let ((_$e101376_ (boolean? _e101362_)))
                                  (if _$e101376_
                                      _$e101376_
                                      (eq? _e101362_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101358_) (symbol? (__AST-e _stx101358_))))
    (define __AST-id-list?__%
      (lambda (_stx101309_ _tail?101310_)
        (let _lp101312_ ((_rest101314_ _stx101309_))
          (let* ((_$e101316_ _rest101314_)
                 (_$E101318101331_
                  (lambda ()
                    (let* ((_$E101319101326_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101316_)))
                           (_rest101329_ _$e101316_))
                      (_tail?101310_ _rest101329_)))))
            (if (__AST-pair? _$e101316_)
                (let* ((_$tgt101320101334_ (__AST-e _$e101316_))
                       (_$hd101321101337_ (##car _$tgt101320101334_))
                       (_$tl101322101340_ (##cdr _$tgt101320101334_)))
                  (let* ((_hd101344_ _$hd101321101337_)
                         (_rest101346_ _$tl101322101340_))
                    (if (__AST-id? _hd101344_) (_lp101312_ _rest101346_) '#f)))
                (_$E101318101331_))))))
    (define __AST-id-list?__0
      (lambda (_stx101351_)
        (let ((_tail?101353_ __AST-null?))
          (__AST-id-list?__% _stx101351_ _tail?101353_))))
    (define __AST-id-list?
      (lambda _g106202_
        (let ((_g106201_ (##length _g106202_)))
          (cond ((##fx= _g106201_ 1)
                 (apply (lambda (_stx101351_) (__AST-id-list?__0 _stx101351_))
                        _g106202_))
                ((##fx= _g106201_ 2)
                 (apply (lambda (_stx101355_ _tail?101356_)
                          (__AST-id-list?__% _stx101355_ _tail?101356_))
                        _g106202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106202_))))))
    (define __AST-bind-list?
      (lambda (_stx101301_)
        (__AST-id-list?__%
         _stx101301_
         (lambda (_e101303_)
           (let ((_$e101305_ (__AST-null? _e101303_)))
             (if _$e101305_ _$e101305_ (__AST-id? _e101303_)))))))
    (define __AST-list?__%
      (lambda (_stx101254_ _tail?101255_)
        (let _lp101257_ ((_rest101259_ _stx101254_))
          (let* ((_$e101261_ _rest101259_)
                 (_$E101263101276_
                  (lambda ()
                    (let* ((_$E101264101271_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101261_)))
                           (_rest101274_ _$e101261_))
                      (_tail?101255_ _rest101274_)))))
            (if (__AST-pair? _$e101261_)
                (let* ((_$tgt101265101279_ (__AST-e _$e101261_))
                       (_$hd101266101282_ (##car _$tgt101265101279_))
                       (_$tl101267101285_ (##cdr _$tgt101265101279_)))
                  (let ((_rest101289_ _$tl101267101285_))
                    (_lp101257_ _rest101289_)))
                (_$E101263101276_))))))
    (define __AST-list?__0
      (lambda (_stx101294_)
        (let ((_tail?101296_ __AST-null?))
          (__AST-list?__% _stx101294_ _tail?101296_))))
    (define __AST-list?
      (lambda _g106204_
        (let ((_g106203_ (##length _g106204_)))
          (cond ((##fx= _g106203_ 1)
                 (apply (lambda (_stx101294_) (__AST-list?__0 _stx101294_))
                        _g106204_))
                ((##fx= _g106203_ 2)
                 (apply (lambda (_stx101298_ _tail?101299_)
                          (__AST-list?__% _stx101298_ _tail?101299_))
                        _g106204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106204_))))))
    (define __AST->list
      (lambda (_stx101219_)
        (let* ((_$e101221_ _stx101219_)
               (_$E101223101236_
                (lambda ()
                  (let* ((_$E101224101231_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101221_)))
                         (_rest101234_ _$e101221_))
                    (__AST-e _rest101234_)))))
          (if (__AST-pair? _$e101221_)
              (let* ((_$tgt101225101239_ (__AST-e _$e101221_))
                     (_$hd101226101242_ (##car _$tgt101225101239_))
                     (_$tl101227101245_ (##cdr _$tgt101225101239_)))
                (let* ((_hd101249_ _$hd101226101242_)
                       (_rest101251_ _$tl101227101245_))
                  (cons _hd101249_ (__AST->list _rest101251_))))
              (_$E101223101236_)))))
    (define __AST->datum
      (lambda (_stx101217_)
        (if (##structure-instance-of? _stx101217_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx101217_))
            (if (pair? _stx101217_)
                (cons (__AST->datum (car _stx101217_))
                      (__AST->datum (cdr _stx101217_)))
                (if (vector? _stx101217_)
                    (vector-map __AST->datum _stx101217_)
                    (if (box? _stx101217_)
                        (box (__AST->datum (unbox _stx101217_)))
                        _stx101217_))))))
    (define get-readenv
      (lambda (_port101215_)
        (##make-readenv
         _port101215_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101203_)
        (let ((_e101205_ (##read-datum-or-eof (get-readenv _in101203_))))
          (if (eof-object? (__AST-e _e101205_))
              (__AST-e _e101205_)
              _e101205_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101211_ (current-input-port))) (read-syntax__% _in101211_))))
    (define read-syntax
      (lambda _g106206_
        (let ((_g106205_ (##length _g106206_)))
          (cond ((##fx= _g106205_ 0)
                 (apply (lambda () (read-syntax__0)) _g106206_))
                ((##fx= _g106205_ 1)
                 (apply (lambda (_in101213_) (read-syntax__% _in101213_))
                        _g106206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106206_))))))
    (define read-syntax-from-file
      (lambda (_path101198_)
        (let ((_r101200_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101198_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101200_)
              (cdr (__AST-e (vector-ref _r101200_ '1)))
              (error (err-code->string _r101200_) _path101198_)))))
    (define __wrap-syntax
      (lambda (_re101195_ _e101196_)
        (if (eof-object? _e101196_)
            _e101196_
            (##structure AST::t _e101196_ (##readenv->locat _re101195_)))))
    (define __unwrap-syntax
      (lambda (_re101192_ _e101193_) (__AST-e _e101193_)))
    (define __pp-syntax (lambda (_stx101190_) (pp (__AST->datum _stx101190_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101188_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101188_ '#t)
          (macro-readtable-bracket-handler-set! _rt101188_ '@list)
          (macro-readtable-brace-handler-set! _rt101188_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101188_
           '#\!
           __read-sharp-bang)
          _rt101188_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101184_ _kw101185_)
        (macro-readtable-bracket-handler-set! _rt101184_ _kw101185_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101181_ _kw101182_)
        (macro-readtable-brace-handler-set! _rt101181_ _kw101182_)))
    (define __read-sharp-bang
      (lambda (_re101172_ _next101173_ _start-pos101174_)
        (if (eq? _start-pos101174_ '0)
            (let* ((_line101176_
                    (##read-line
                     (macro-readenv-port _re101172_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101178_
                    (substring _line101176_ '1 (string-length _line101176_))))
              (macro-readenv-script-line-set! _re101172_ _script-line101178_)
              (##script-marker))
            (##read-sharp-bang _re101172_ _next101173_ _start-pos101174_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101170_)
        (if (source-location? _obj101170_)
            (string? (##locat-container _obj101170_))
            '#f)))
    (define source-location-path
      (lambda (_obj101168_)
        (if (##locat? _obj101168_)
            (##container->path (##locat-container _obj101168_))
            '#f)))))
