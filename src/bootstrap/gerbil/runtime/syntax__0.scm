(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707657569)
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
      (lambda _$args101763_
        (apply make-class-instance SyntaxError::t _$args101763_)))
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
      (lambda (_self101666_ _port101667_)
        (letrec ((_location101669_
                  (lambda ()
                    (let _lp101723_ ((_rest101725_
                                      (##unchecked-structure-ref
                                       _self101666_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest101726101734_ _rest101725_)
                             (_else101728101742_ (lambda () '#f))
                             (_K101730101751_
                              (lambda (_rest101745_ _hd101746_)
                                (let ((_$e101748_ (__AST-source _hd101746_)))
                                  (if _$e101748_
                                      _$e101748_
                                      (_lp101723_ _rest101745_))))))
                        (if (##pair? _rest101726101734_)
                            (let ((_hd101731101754_ (##car _rest101726101734_))
                                  (_tl101732101756_
                                   (##cdr _rest101726101734_)))
                              (let* ((_hd101759_ _hd101731101754_)
                                     (_rest101761_ _tl101732101756_))
                                (_K101730101751_ _rest101761_ _hd101759_)))
                            (_else101728101742_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e101672_ (_location101669_)))
               (if _$e101672_
                   ((lambda (_where101675_)
                      (##display-locat
                       _where101675_
                       '#t
                       (current-output-port)))
                    _$e101672_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e101677_
                    (##unchecked-structure-ref
                     _self101666_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e101677_
                   ((lambda (_where101680_)
                      (displayln
                       '" at "
                       _where101680_
                       '": "
                       (##unchecked-structure-ref
                        _self101666_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e101677_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self101666_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g101681101689_
                     (##unchecked-structure-ref
                      _self101666_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else101683101697_ (lambda () '#!void))
                    (_K101685101710_
                     (lambda (_rest101700_ _stx101701_)
                       (display '"... form:   ")
                       (__pp-syntax _stx101701_)
                       (for-each
                        (lambda (_detail101703_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail101703_))
                          (let ((_$e101705_ (__AST-source _detail101703_)))
                            (if _$e101705_
                                ((lambda (_loc101708_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc101708_
                                    '#t
                                    (current-output-port)))
                                 _$e101705_)
                                '#!void))
                          (newline))
                        _rest101700_))))
               (if (##pair? _g101681101689_)
                   (let ((_hd101686101713_ (##car _g101681101689_))
                         (_tl101687101715_ (##cdr _g101681101689_)))
                     (let* ((_stx101718_ _hd101686101713_)
                            (_rest101720_ _tl101687101715_))
                       (_K101685101710_ _rest101720_ _stx101718_)))
                   '#!void)))
           current-output-port
           _port101667_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101537_
               _irritants101538_
               _where101539_
               _context101540_
               _marks101541_
               _phi101542_)
        (let ((__obj106326
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106326
           _message101537_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106326
           _irritants101538_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106326
           _where101539_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106326
           _context101540_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106326
           _marks101541_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106326
           _phi101542_
           '5
           SyntaxError::t
           '#f)
          __obj106326)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101532_ _message101533_ _stx101534_ . _details101535_)
        (raise (make-syntax-error
                _message101533_
                (cons _stx101534_ _details101535_)
                _where101532_
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
      (lambda _$args101529_ (apply make-class-instance AST::t _$args101529_)))
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
      (lambda (_stx101527_)
        (if (##structure-instance-of? _stx101527_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx101527_ '1 AST::t '#f)
            _stx101527_)))
    (define __AST-source
      (lambda (_stx101521_)
        (let _lp101523_ ((_src101525_ _stx101521_))
          (if (##structure-instance-of? _src101525_ 'gerbil#AST::t)
              (_lp101523_
               (##unchecked-structure-ref _src101525_ '2 AST::t '#f))
              (if (##locat? _src101525_) _src101525_ '#f)))))
    (define __AST
      (lambda (_e101513_ _src-stx101514_)
        (let ((_src101516_ (__AST-source _src-stx101514_)))
          (if (or (##structure-instance-of? _e101513_ 'gerbil#AST::t)
                  (not _src101516_))
              _e101513_
              (##structure AST::t _e101513_ _src101516_)))))
    (define __AST-eq?
      (lambda (_stx101510_ _obj101511_)
        (eq? (__AST-e _stx101510_) _obj101511_)))
    (define __AST-pair? (lambda (_stx101508_) (pair? (__AST-e _stx101508_))))
    (define __AST-null? (lambda (_stx101506_) (null? (__AST-e _stx101506_))))
    (define __AST-datum?
      (lambda (_stx101487_)
        (let* ((_e101489_ (__AST-e _stx101487_))
               (_$e101491_ (number? _e101489_)))
          (if _$e101491_
              _$e101491_
              (let ((_$e101494_ (string? _e101489_)))
                (if _$e101494_
                    _$e101494_
                    (let ((_$e101497_ (char? _e101489_)))
                      (if _$e101497_
                          _$e101497_
                          (let ((_$e101500_ (keyword? _e101489_)))
                            (if _$e101500_
                                _$e101500_
                                (let ((_$e101503_ (boolean? _e101489_)))
                                  (if _$e101503_
                                      _$e101503_
                                      (eq? _e101489_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101485_) (symbol? (__AST-e _stx101485_))))
    (define __AST-id-list?__%
      (lambda (_stx101436_ _tail?101437_)
        (let _lp101439_ ((_rest101441_ _stx101436_))
          (let* ((_$e101443_ _rest101441_)
                 (_$E101445101458_
                  (lambda ()
                    (let* ((_$E101446101453_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101443_)))
                           (_rest101456_ _$e101443_))
                      (_tail?101437_ _rest101456_)))))
            (if (__AST-pair? _$e101443_)
                (let* ((_$tgt101447101461_ (__AST-e _$e101443_))
                       (_$hd101448101464_ (##car _$tgt101447101461_))
                       (_$tl101449101467_ (##cdr _$tgt101447101461_)))
                  (let* ((_hd101471_ _$hd101448101464_)
                         (_rest101473_ _$tl101449101467_))
                    (if (__AST-id? _hd101471_) (_lp101439_ _rest101473_) '#f)))
                (_$E101445101458_))))))
    (define __AST-id-list?__0
      (lambda (_stx101478_)
        (let ((_tail?101480_ __AST-null?))
          (__AST-id-list?__% _stx101478_ _tail?101480_))))
    (define __AST-id-list?
      (lambda _g106329_
        (let ((_g106328_ (##length _g106329_)))
          (cond ((##fx= _g106328_ 1)
                 (apply (lambda (_stx101478_) (__AST-id-list?__0 _stx101478_))
                        _g106329_))
                ((##fx= _g106328_ 2)
                 (apply (lambda (_stx101482_ _tail?101483_)
                          (__AST-id-list?__% _stx101482_ _tail?101483_))
                        _g106329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106329_))))))
    (define __AST-bind-list?
      (lambda (_stx101428_)
        (__AST-id-list?__%
         _stx101428_
         (lambda (_e101430_)
           (let ((_$e101432_ (__AST-null? _e101430_)))
             (if _$e101432_ _$e101432_ (__AST-id? _e101430_)))))))
    (define __AST-list?__%
      (lambda (_stx101381_ _tail?101382_)
        (let _lp101384_ ((_rest101386_ _stx101381_))
          (let* ((_$e101388_ _rest101386_)
                 (_$E101390101403_
                  (lambda ()
                    (let* ((_$E101391101398_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101388_)))
                           (_rest101401_ _$e101388_))
                      (_tail?101382_ _rest101401_)))))
            (if (__AST-pair? _$e101388_)
                (let* ((_$tgt101392101406_ (__AST-e _$e101388_))
                       (_$hd101393101409_ (##car _$tgt101392101406_))
                       (_$tl101394101412_ (##cdr _$tgt101392101406_)))
                  (let ((_rest101416_ _$tl101394101412_))
                    (_lp101384_ _rest101416_)))
                (_$E101390101403_))))))
    (define __AST-list?__0
      (lambda (_stx101421_)
        (let ((_tail?101423_ __AST-null?))
          (__AST-list?__% _stx101421_ _tail?101423_))))
    (define __AST-list?
      (lambda _g106331_
        (let ((_g106330_ (##length _g106331_)))
          (cond ((##fx= _g106330_ 1)
                 (apply (lambda (_stx101421_) (__AST-list?__0 _stx101421_))
                        _g106331_))
                ((##fx= _g106330_ 2)
                 (apply (lambda (_stx101425_ _tail?101426_)
                          (__AST-list?__% _stx101425_ _tail?101426_))
                        _g106331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106331_))))))
    (define __AST->list
      (lambda (_stx101346_)
        (let* ((_$e101348_ _stx101346_)
               (_$E101350101363_
                (lambda ()
                  (let* ((_$E101351101358_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101348_)))
                         (_rest101361_ _$e101348_))
                    (__AST-e _rest101361_)))))
          (if (__AST-pair? _$e101348_)
              (let* ((_$tgt101352101366_ (__AST-e _$e101348_))
                     (_$hd101353101369_ (##car _$tgt101352101366_))
                     (_$tl101354101372_ (##cdr _$tgt101352101366_)))
                (let* ((_hd101376_ _$hd101353101369_)
                       (_rest101378_ _$tl101354101372_))
                  (cons _hd101376_ (__AST->list _rest101378_))))
              (_$E101350101363_)))))
    (define __AST->datum
      (lambda (_stx101344_)
        (if (##structure-instance-of? _stx101344_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx101344_))
            (if (pair? _stx101344_)
                (cons (__AST->datum (car _stx101344_))
                      (__AST->datum (cdr _stx101344_)))
                (if (vector? _stx101344_)
                    (vector-map __AST->datum _stx101344_)
                    (if (box? _stx101344_)
                        (box (__AST->datum (unbox _stx101344_)))
                        _stx101344_))))))
    (define get-readenv
      (lambda (_port101342_)
        (##make-readenv
         _port101342_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101330_)
        (let ((_e101332_ (##read-datum-or-eof (get-readenv _in101330_))))
          (if (eof-object? (__AST-e _e101332_))
              (__AST-e _e101332_)
              _e101332_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101338_ (current-input-port))) (read-syntax__% _in101338_))))
    (define read-syntax
      (lambda _g106333_
        (let ((_g106332_ (##length _g106333_)))
          (cond ((##fx= _g106332_ 0)
                 (apply (lambda () (read-syntax__0)) _g106333_))
                ((##fx= _g106332_ 1)
                 (apply (lambda (_in101340_) (read-syntax__% _in101340_))
                        _g106333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106333_))))))
    (define read-syntax-from-file
      (lambda (_path101325_)
        (let ((_r101327_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101325_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101327_)
              (cdr (__AST-e (vector-ref _r101327_ '1)))
              (error (err-code->string _r101327_) _path101325_)))))
    (define __wrap-syntax
      (lambda (_re101322_ _e101323_)
        (if (eof-object? _e101323_)
            _e101323_
            (##structure AST::t _e101323_ (##readenv->locat _re101322_)))))
    (define __unwrap-syntax
      (lambda (_re101319_ _e101320_) (__AST-e _e101320_)))
    (define __pp-syntax (lambda (_stx101317_) (pp (__AST->datum _stx101317_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101315_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101315_ '#t)
          (macro-readtable-bracket-handler-set! _rt101315_ '@list)
          (macro-readtable-brace-handler-set! _rt101315_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101315_
           '#\!
           __read-sharp-bang)
          _rt101315_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101311_ _kw101312_)
        (macro-readtable-bracket-handler-set! _rt101311_ _kw101312_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101308_ _kw101309_)
        (macro-readtable-brace-handler-set! _rt101308_ _kw101309_)))
    (define __read-sharp-bang
      (lambda (_re101299_ _next101300_ _start-pos101301_)
        (if (eq? _start-pos101301_ '0)
            (let* ((_line101303_
                    (##read-line
                     (macro-readenv-port _re101299_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101305_
                    (substring _line101303_ '1 (string-length _line101303_))))
              (macro-readenv-script-line-set! _re101299_ _script-line101305_)
              (##script-marker))
            (##read-sharp-bang _re101299_ _next101300_ _start-pos101301_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101297_)
        (if (source-location? _obj101297_)
            (string? (##locat-container _obj101297_))
            '#f)))
    (define source-location-path
      (lambda (_obj101295_)
        (if (##locat? _obj101295_)
            (##container->path (##locat-container _obj101295_))
            '#f)))))
