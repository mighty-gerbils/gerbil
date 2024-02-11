(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707647932)
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
      (lambda _$args101826_
        (apply make-class-instance SyntaxError::t _$args101826_)))
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
      (lambda (_self101729_ _port101730_)
        (letrec ((_location101732_
                  (lambda ()
                    (let _lp101786_ ((_rest101788_
                                      (##unchecked-structure-ref
                                       _self101729_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest101789101797_ _rest101788_)
                             (_else101791101805_ (lambda () '#f))
                             (_K101793101814_
                              (lambda (_rest101808_ _hd101809_)
                                (let ((_$e101811_ (__AST-source _hd101809_)))
                                  (if _$e101811_
                                      _$e101811_
                                      (_lp101786_ _rest101808_))))))
                        (if (##pair? _rest101789101797_)
                            (let ((_hd101794101817_ (##car _rest101789101797_))
                                  (_tl101795101819_
                                   (##cdr _rest101789101797_)))
                              (let* ((_hd101822_ _hd101794101817_)
                                     (_rest101824_ _tl101795101819_))
                                (_K101793101814_ _rest101824_ _hd101822_)))
                            (_else101791101805_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e101735_ (_location101732_)))
               (if _$e101735_
                   ((lambda (_where101738_)
                      (##display-locat
                       _where101738_
                       '#t
                       (current-output-port)))
                    _$e101735_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e101740_
                    (##unchecked-structure-ref
                     _self101729_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e101740_
                   ((lambda (_where101743_)
                      (displayln
                       '" at "
                       _where101743_
                       '": "
                       (##unchecked-structure-ref
                        _self101729_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e101740_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self101729_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g101744101752_
                     (##unchecked-structure-ref
                      _self101729_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else101746101760_ (lambda () '#!void))
                    (_K101748101773_
                     (lambda (_rest101763_ _stx101764_)
                       (display '"... form:   ")
                       (__pp-syntax _stx101764_)
                       (for-each
                        (lambda (_detail101766_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail101766_))
                          (let ((_$e101768_ (__AST-source _detail101766_)))
                            (if _$e101768_
                                ((lambda (_loc101771_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc101771_
                                    '#t
                                    (current-output-port)))
                                 _$e101768_)
                                '#!void))
                          (newline))
                        _rest101763_))))
               (if (##pair? _g101744101752_)
                   (let ((_hd101749101776_ (##car _g101744101752_))
                         (_tl101750101778_ (##cdr _g101744101752_)))
                     (let* ((_stx101781_ _hd101749101776_)
                            (_rest101783_ _tl101750101778_))
                       (_K101748101773_ _rest101783_ _stx101781_)))
                   '#!void)))
           current-output-port
           _port101730_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101600_
               _irritants101601_
               _where101602_
               _context101603_
               _marks101604_
               _phi101605_)
        (let ((__obj106389
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106389
           _message101600_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106389
           _irritants101601_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106389
           _where101602_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106389
           _context101603_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106389
           _marks101604_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106389
           _phi101605_
           '5
           SyntaxError::t
           '#f)
          __obj106389)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101595_ _message101596_ _stx101597_ . _details101598_)
        (raise (make-syntax-error
                _message101596_
                (cons _stx101597_ _details101598_)
                _where101595_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-class-type 'gerbil#AST::t 'syntax (list) '(e source) '() '#f))
    (define AST? (make-class-predicate AST::t))
    (define make-AST
      (lambda _$args101592_ (apply make-class-instance AST::t _$args101592_)))
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
      (lambda (_stx101590_)
        (if (class-instance? AST::t _stx101590_)
            (unchecked-slot-ref _stx101590_ 'e)
            _stx101590_)))
    (define __AST-source
      (lambda (_stx101584_)
        (let _lp101586_ ((_src101588_ _stx101584_))
          (if (class-instance? AST::t _src101588_)
              (_lp101586_ (unchecked-slot-ref _src101588_ 'source))
              (if (##locat? _src101588_) _src101588_ '#f)))))
    (define __AST
      (lambda (_e101576_ _src-stx101577_)
        (let ((_src101579_ (__AST-source _src-stx101577_)))
          (if (or (class-instance? AST::t _e101576_) (not _src101579_))
              _e101576_
              (let ((__obj106391 (##structure AST::t '#f '#f)))
                (class-instance-init! __obj106391 _e101576_ _src101579_)
                __obj106391)))))
    (define __AST-eq?
      (lambda (_stx101573_ _obj101574_)
        (eq? (__AST-e _stx101573_) _obj101574_)))
    (define __AST-pair? (lambda (_stx101571_) (pair? (__AST-e _stx101571_))))
    (define __AST-null? (lambda (_stx101569_) (null? (__AST-e _stx101569_))))
    (define __AST-datum?
      (lambda (_stx101550_)
        (let* ((_e101552_ (__AST-e _stx101550_))
               (_$e101554_ (number? _e101552_)))
          (if _$e101554_
              _$e101554_
              (let ((_$e101557_ (string? _e101552_)))
                (if _$e101557_
                    _$e101557_
                    (let ((_$e101560_ (char? _e101552_)))
                      (if _$e101560_
                          _$e101560_
                          (let ((_$e101563_ (keyword? _e101552_)))
                            (if _$e101563_
                                _$e101563_
                                (let ((_$e101566_ (boolean? _e101552_)))
                                  (if _$e101566_
                                      _$e101566_
                                      (eq? _e101552_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101548_) (symbol? (__AST-e _stx101548_))))
    (define __AST-id-list?__%
      (lambda (_stx101499_ _tail?101500_)
        (let _lp101502_ ((_rest101504_ _stx101499_))
          (let* ((_$e101506_ _rest101504_)
                 (_$E101508101521_
                  (lambda ()
                    (let* ((_$E101509101516_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101506_)))
                           (_rest101519_ _$e101506_))
                      (_tail?101500_ _rest101519_)))))
            (if (__AST-pair? _$e101506_)
                (let* ((_$tgt101510101524_ (__AST-e _$e101506_))
                       (_$hd101511101527_ (##car _$tgt101510101524_))
                       (_$tl101512101530_ (##cdr _$tgt101510101524_)))
                  (let* ((_hd101534_ _$hd101511101527_)
                         (_rest101536_ _$tl101512101530_))
                    (if (__AST-id? _hd101534_) (_lp101502_ _rest101536_) '#f)))
                (_$E101508101521_))))))
    (define __AST-id-list?__0
      (lambda (_stx101541_)
        (let ((_tail?101543_ __AST-null?))
          (__AST-id-list?__% _stx101541_ _tail?101543_))))
    (define __AST-id-list?
      (lambda _g106394_
        (let ((_g106393_ (##length _g106394_)))
          (cond ((##fx= _g106393_ 1)
                 (apply (lambda (_stx101541_) (__AST-id-list?__0 _stx101541_))
                        _g106394_))
                ((##fx= _g106393_ 2)
                 (apply (lambda (_stx101545_ _tail?101546_)
                          (__AST-id-list?__% _stx101545_ _tail?101546_))
                        _g106394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106394_))))))
    (define __AST-bind-list?
      (lambda (_stx101491_)
        (__AST-id-list?__%
         _stx101491_
         (lambda (_e101493_)
           (let ((_$e101495_ (__AST-null? _e101493_)))
             (if _$e101495_ _$e101495_ (__AST-id? _e101493_)))))))
    (define __AST-list?__%
      (lambda (_stx101444_ _tail?101445_)
        (let _lp101447_ ((_rest101449_ _stx101444_))
          (let* ((_$e101451_ _rest101449_)
                 (_$E101453101466_
                  (lambda ()
                    (let* ((_$E101454101461_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101451_)))
                           (_rest101464_ _$e101451_))
                      (_tail?101445_ _rest101464_)))))
            (if (__AST-pair? _$e101451_)
                (let* ((_$tgt101455101469_ (__AST-e _$e101451_))
                       (_$hd101456101472_ (##car _$tgt101455101469_))
                       (_$tl101457101475_ (##cdr _$tgt101455101469_)))
                  (let ((_rest101479_ _$tl101457101475_))
                    (_lp101447_ _rest101479_)))
                (_$E101453101466_))))))
    (define __AST-list?__0
      (lambda (_stx101484_)
        (let ((_tail?101486_ __AST-null?))
          (__AST-list?__% _stx101484_ _tail?101486_))))
    (define __AST-list?
      (lambda _g106396_
        (let ((_g106395_ (##length _g106396_)))
          (cond ((##fx= _g106395_ 1)
                 (apply (lambda (_stx101484_) (__AST-list?__0 _stx101484_))
                        _g106396_))
                ((##fx= _g106395_ 2)
                 (apply (lambda (_stx101488_ _tail?101489_)
                          (__AST-list?__% _stx101488_ _tail?101489_))
                        _g106396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106396_))))))
    (define __AST->list
      (lambda (_stx101409_)
        (let* ((_$e101411_ _stx101409_)
               (_$E101413101426_
                (lambda ()
                  (let* ((_$E101414101421_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101411_)))
                         (_rest101424_ _$e101411_))
                    (__AST-e _rest101424_)))))
          (if (__AST-pair? _$e101411_)
              (let* ((_$tgt101415101429_ (__AST-e _$e101411_))
                     (_$hd101416101432_ (##car _$tgt101415101429_))
                     (_$tl101417101435_ (##cdr _$tgt101415101429_)))
                (let* ((_hd101439_ _$hd101416101432_)
                       (_rest101441_ _$tl101417101435_))
                  (cons _hd101439_ (__AST->list _rest101441_))))
              (_$E101413101426_)))))
    (define __AST->datum
      (lambda (_stx101407_)
        (if (class-instance? AST::t _stx101407_)
            (__AST->datum (__AST-e _stx101407_))
            (if (pair? _stx101407_)
                (cons (__AST->datum (car _stx101407_))
                      (__AST->datum (cdr _stx101407_)))
                (if (vector? _stx101407_)
                    (vector-map __AST->datum _stx101407_)
                    (if (box? _stx101407_)
                        (box (__AST->datum (unbox _stx101407_)))
                        _stx101407_))))))
    (define get-readenv
      (lambda (_port101405_)
        (##make-readenv
         _port101405_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101393_)
        (let ((_e101395_ (##read-datum-or-eof (get-readenv _in101393_))))
          (if (eof-object? (__AST-e _e101395_))
              (__AST-e _e101395_)
              _e101395_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101401_ (current-input-port))) (read-syntax__% _in101401_))))
    (define read-syntax
      (lambda _g106398_
        (let ((_g106397_ (##length _g106398_)))
          (cond ((##fx= _g106397_ 0)
                 (apply (lambda () (read-syntax__0)) _g106398_))
                ((##fx= _g106397_ 1)
                 (apply (lambda (_in101403_) (read-syntax__% _in101403_))
                        _g106398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106398_))))))
    (define read-syntax-from-file
      (lambda (_path101388_)
        (let ((_r101390_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101388_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101390_)
              (cdr (__AST-e (vector-ref _r101390_ '1)))
              (error (err-code->string _r101390_) _path101388_)))))
    (define __wrap-syntax
      (lambda (_re101385_ _e101386_)
        (if (eof-object? _e101386_)
            _e101386_
            (let ((__obj106392 (##structure AST::t '#f '#f)))
              (class-instance-init!
               __obj106392
               _e101386_
               (##readenv->locat _re101385_))
              __obj106392))))
    (define __unwrap-syntax
      (lambda (_re101382_ _e101383_) (__AST-e _e101383_)))
    (define __pp-syntax (lambda (_stx101380_) (pp (__AST->datum _stx101380_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101378_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101378_ '#t)
          (macro-readtable-bracket-handler-set! _rt101378_ '@list)
          (macro-readtable-brace-handler-set! _rt101378_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101378_
           '#\!
           __read-sharp-bang)
          _rt101378_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101374_ _kw101375_)
        (macro-readtable-bracket-handler-set! _rt101374_ _kw101375_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101371_ _kw101372_)
        (macro-readtable-brace-handler-set! _rt101371_ _kw101372_)))
    (define __read-sharp-bang
      (lambda (_re101362_ _next101363_ _start-pos101364_)
        (if (eq? _start-pos101364_ '0)
            (let* ((_line101366_
                    (##read-line
                     (macro-readenv-port _re101362_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101368_
                    (substring _line101366_ '1 (string-length _line101366_))))
              (macro-readenv-script-line-set! _re101362_ _script-line101368_)
              (##script-marker))
            (##read-sharp-bang _re101362_ _next101363_ _start-pos101364_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101360_)
        (if (source-location? _obj101360_)
            (string? (##locat-container _obj101360_))
            '#f)))
    (define source-location-path
      (lambda (_obj101358_)
        (if (##locat? _obj101358_)
            (##container->path (##locat-container _obj101358_))
            '#f)))))
