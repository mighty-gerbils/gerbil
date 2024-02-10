(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707573210)
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
      (lambda _$args101906_
        (apply make-class-instance SyntaxError::t _$args101906_)))
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
      (lambda (_self101809_ _port101810_)
        (letrec ((_location101812_
                  (lambda ()
                    (let _lp101866_ ((_rest101868_
                                      (##unchecked-structure-ref
                                       _self101809_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest101869101877_ _rest101868_)
                             (_else101871101885_ (lambda () '#f))
                             (_K101873101894_
                              (lambda (_rest101888_ _hd101889_)
                                (let ((_$e101891_ (__AST-source _hd101889_)))
                                  (if _$e101891_
                                      _$e101891_
                                      (_lp101866_ _rest101888_))))))
                        (if (##pair? _rest101869101877_)
                            (let ((_hd101874101897_ (##car _rest101869101877_))
                                  (_tl101875101899_
                                   (##cdr _rest101869101877_)))
                              (let* ((_hd101902_ _hd101874101897_)
                                     (_rest101904_ _tl101875101899_))
                                (_K101873101894_ _rest101904_ _hd101902_)))
                            (_else101871101885_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e101815_ (_location101812_)))
               (if _$e101815_
                   ((lambda (_where101818_)
                      (##display-locat
                       _where101818_
                       '#t
                       (current-output-port)))
                    _$e101815_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e101820_
                    (##unchecked-structure-ref
                     _self101809_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e101820_
                   ((lambda (_where101823_)
                      (displayln
                       '" at "
                       _where101823_
                       '": "
                       (##unchecked-structure-ref
                        _self101809_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e101820_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self101809_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g101824101832_
                     (##unchecked-structure-ref
                      _self101809_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else101826101840_ (lambda () '#!void))
                    (_K101828101853_
                     (lambda (_rest101843_ _stx101844_)
                       (display '"... form:   ")
                       (__pp-syntax _stx101844_)
                       (for-each
                        (lambda (_detail101846_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail101846_))
                          (let ((_$e101848_ (__AST-source _detail101846_)))
                            (if _$e101848_
                                ((lambda (_loc101851_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc101851_
                                    '#t
                                    (current-output-port)))
                                 _$e101848_)
                                '#!void))
                          (newline))
                        _rest101843_))))
               (if (##pair? _g101824101832_)
                   (let ((_hd101829101856_ (##car _g101824101832_))
                         (_tl101830101858_ (##cdr _g101824101832_)))
                     (let* ((_stx101861_ _hd101829101856_)
                            (_rest101863_ _tl101830101858_))
                       (_K101828101853_ _rest101863_ _stx101861_)))
                   '#!void)))
           current-output-port
           _port101810_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101680_
               _irritants101681_
               _where101682_
               _context101683_
               _marks101684_
               _phi101685_)
        (let ((__obj106469
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106469
           _message101680_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106469
           _irritants101681_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106469
           _where101682_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106469
           _context101683_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106469
           _marks101684_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106469
           _phi101685_
           '5
           SyntaxError::t
           '#f)
          __obj106469)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101675_ _message101676_ _stx101677_ . _details101678_)
        (raise (make-syntax-error
                _message101676_
                (cons _stx101677_ _details101678_)
                _where101675_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type
       'gerbil#AST::t
       'syntax
       '#f
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args101672_ (apply make-struct-instance AST::t _$args101672_)))
    (define AST-e (make-struct-slot-accessor AST::t 'e))
    (define AST-source (make-struct-slot-accessor AST::t 'source))
    (define AST-e-set! (make-struct-slot-mutator AST::t 'e))
    (define AST-source-set! (make-struct-slot-mutator AST::t 'source))
    (define &AST-e (make-struct-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (make-struct-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (make-struct-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (make-struct-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_stx101670_)
        (if (##structure-instance-of? _stx101670_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx101670_ '1 AST::t '#f)
            _stx101670_)))
    (define __AST-source
      (lambda (_stx101664_)
        (let _lp101666_ ((_src101668_ _stx101664_))
          (if (##structure-instance-of? _src101668_ 'gerbil#AST::t)
              (_lp101666_
               (##unchecked-structure-ref _src101668_ '2 AST::t '#f))
              (if (##locat? _src101668_) _src101668_ '#f)))))
    (define __AST
      (lambda (_e101656_ _src-stx101657_)
        (let ((_src101659_ (__AST-source _src-stx101657_)))
          (if (or (##structure-instance-of? _e101656_ 'gerbil#AST::t)
                  (not _src101659_))
              _e101656_
              (##structure AST::t _e101656_ _src101659_)))))
    (define __AST-eq?
      (lambda (_stx101653_ _obj101654_)
        (eq? (__AST-e _stx101653_) _obj101654_)))
    (define __AST-pair? (lambda (_stx101651_) (pair? (__AST-e _stx101651_))))
    (define __AST-null? (lambda (_stx101649_) (null? (__AST-e _stx101649_))))
    (define __AST-datum?
      (lambda (_stx101630_)
        (let* ((_e101632_ (__AST-e _stx101630_))
               (_$e101634_ (number? _e101632_)))
          (if _$e101634_
              _$e101634_
              (let ((_$e101637_ (string? _e101632_)))
                (if _$e101637_
                    _$e101637_
                    (let ((_$e101640_ (char? _e101632_)))
                      (if _$e101640_
                          _$e101640_
                          (let ((_$e101643_ (keyword? _e101632_)))
                            (if _$e101643_
                                _$e101643_
                                (let ((_$e101646_ (boolean? _e101632_)))
                                  (if _$e101646_
                                      _$e101646_
                                      (eq? _e101632_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101628_) (symbol? (__AST-e _stx101628_))))
    (define __AST-id-list?__%
      (lambda (_stx101579_ _tail?101580_)
        (let _lp101582_ ((_rest101584_ _stx101579_))
          (let* ((_$e101586_ _rest101584_)
                 (_$E101588101601_
                  (lambda ()
                    (let* ((_$E101589101596_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101586_)))
                           (_rest101599_ _$e101586_))
                      (_tail?101580_ _rest101599_)))))
            (if (__AST-pair? _$e101586_)
                (let* ((_$tgt101590101604_ (__AST-e _$e101586_))
                       (_$hd101591101607_ (##car _$tgt101590101604_))
                       (_$tl101592101610_ (##cdr _$tgt101590101604_)))
                  (let* ((_hd101614_ _$hd101591101607_)
                         (_rest101616_ _$tl101592101610_))
                    (if (__AST-id? _hd101614_) (_lp101582_ _rest101616_) '#f)))
                (_$E101588101601_))))))
    (define __AST-id-list?__0
      (lambda (_stx101621_)
        (let ((_tail?101623_ __AST-null?))
          (__AST-id-list?__% _stx101621_ _tail?101623_))))
    (define __AST-id-list?
      (lambda _g106472_
        (let ((_g106471_ (##length _g106472_)))
          (cond ((##fx= _g106471_ 1)
                 (apply (lambda (_stx101621_) (__AST-id-list?__0 _stx101621_))
                        _g106472_))
                ((##fx= _g106471_ 2)
                 (apply (lambda (_stx101625_ _tail?101626_)
                          (__AST-id-list?__% _stx101625_ _tail?101626_))
                        _g106472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106472_))))))
    (define __AST-bind-list?
      (lambda (_stx101571_)
        (__AST-id-list?__%
         _stx101571_
         (lambda (_e101573_)
           (let ((_$e101575_ (__AST-null? _e101573_)))
             (if _$e101575_ _$e101575_ (__AST-id? _e101573_)))))))
    (define __AST-list?__%
      (lambda (_stx101524_ _tail?101525_)
        (let _lp101527_ ((_rest101529_ _stx101524_))
          (let* ((_$e101531_ _rest101529_)
                 (_$E101533101546_
                  (lambda ()
                    (let* ((_$E101534101541_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101531_)))
                           (_rest101544_ _$e101531_))
                      (_tail?101525_ _rest101544_)))))
            (if (__AST-pair? _$e101531_)
                (let* ((_$tgt101535101549_ (__AST-e _$e101531_))
                       (_$hd101536101552_ (##car _$tgt101535101549_))
                       (_$tl101537101555_ (##cdr _$tgt101535101549_)))
                  (let ((_rest101559_ _$tl101537101555_))
                    (_lp101527_ _rest101559_)))
                (_$E101533101546_))))))
    (define __AST-list?__0
      (lambda (_stx101564_)
        (let ((_tail?101566_ __AST-null?))
          (__AST-list?__% _stx101564_ _tail?101566_))))
    (define __AST-list?
      (lambda _g106474_
        (let ((_g106473_ (##length _g106474_)))
          (cond ((##fx= _g106473_ 1)
                 (apply (lambda (_stx101564_) (__AST-list?__0 _stx101564_))
                        _g106474_))
                ((##fx= _g106473_ 2)
                 (apply (lambda (_stx101568_ _tail?101569_)
                          (__AST-list?__% _stx101568_ _tail?101569_))
                        _g106474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106474_))))))
    (define __AST->list
      (lambda (_stx101489_)
        (let* ((_$e101491_ _stx101489_)
               (_$E101493101506_
                (lambda ()
                  (let* ((_$E101494101501_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101491_)))
                         (_rest101504_ _$e101491_))
                    (__AST-e _rest101504_)))))
          (if (__AST-pair? _$e101491_)
              (let* ((_$tgt101495101509_ (__AST-e _$e101491_))
                     (_$hd101496101512_ (##car _$tgt101495101509_))
                     (_$tl101497101515_ (##cdr _$tgt101495101509_)))
                (let* ((_hd101519_ _$hd101496101512_)
                       (_rest101521_ _$tl101497101515_))
                  (cons _hd101519_ (__AST->list _rest101521_))))
              (_$E101493101506_)))))
    (define __AST->datum
      (lambda (_stx101487_)
        (if (##structure-instance-of? _stx101487_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx101487_))
            (if (pair? _stx101487_)
                (cons (__AST->datum (car _stx101487_))
                      (__AST->datum (cdr _stx101487_)))
                (if (vector? _stx101487_)
                    (vector-map __AST->datum _stx101487_)
                    (if (box? _stx101487_)
                        (box (__AST->datum (unbox _stx101487_)))
                        _stx101487_))))))
    (define get-readenv
      (lambda (_port101485_)
        (##make-readenv
         _port101485_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101473_)
        (let ((_e101475_ (##read-datum-or-eof (get-readenv _in101473_))))
          (if (eof-object? (__AST-e _e101475_))
              (__AST-e _e101475_)
              _e101475_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101481_ (current-input-port))) (read-syntax__% _in101481_))))
    (define read-syntax
      (lambda _g106476_
        (let ((_g106475_ (##length _g106476_)))
          (cond ((##fx= _g106475_ 0)
                 (apply (lambda () (read-syntax__0)) _g106476_))
                ((##fx= _g106475_ 1)
                 (apply (lambda (_in101483_) (read-syntax__% _in101483_))
                        _g106476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106476_))))))
    (define read-syntax-from-file
      (lambda (_path101468_)
        (let ((_r101470_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101468_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101470_)
              (cdr (__AST-e (vector-ref _r101470_ '1)))
              (error (err-code->string _r101470_) _path101468_)))))
    (define __wrap-syntax
      (lambda (_re101465_ _e101466_)
        (if (eof-object? _e101466_)
            _e101466_
            (##structure AST::t _e101466_ (##readenv->locat _re101465_)))))
    (define __unwrap-syntax
      (lambda (_re101462_ _e101463_) (__AST-e _e101463_)))
    (define __pp-syntax (lambda (_stx101460_) (pp (__AST->datum _stx101460_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101458_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101458_ '#t)
          (macro-readtable-bracket-handler-set! _rt101458_ '@list)
          (macro-readtable-brace-handler-set! _rt101458_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101458_
           '#\!
           __read-sharp-bang)
          _rt101458_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101454_ _kw101455_)
        (macro-readtable-bracket-handler-set! _rt101454_ _kw101455_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101451_ _kw101452_)
        (macro-readtable-brace-handler-set! _rt101451_ _kw101452_)))
    (define __read-sharp-bang
      (lambda (_re101442_ _next101443_ _start-pos101444_)
        (if (eq? _start-pos101444_ '0)
            (let* ((_line101446_
                    (##read-line
                     (macro-readenv-port _re101442_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101448_
                    (substring _line101446_ '1 (string-length _line101446_))))
              (macro-readenv-script-line-set! _re101442_ _script-line101448_)
              (##script-marker))
            (##read-sharp-bang _re101442_ _next101443_ _start-pos101444_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101440_)
        (if (source-location? _obj101440_)
            (string? (##locat-container _obj101440_))
            '#f)))
    (define source-location-path
      (lambda (_obj101438_)
        (if (##locat? _obj101438_)
            (##container->path (##locat-container _obj101438_))
            '#f)))))
