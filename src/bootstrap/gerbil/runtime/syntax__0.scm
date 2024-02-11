(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707610212)
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
      (lambda _$args102113_
        (apply make-class-instance SyntaxError::t _$args102113_)))
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
      (lambda (_self102016_ _port102017_)
        (letrec ((_location102019_
                  (lambda ()
                    (let _lp102073_ ((_rest102075_
                                      (##unchecked-structure-ref
                                       _self102016_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102076102084_ _rest102075_)
                             (_else102078102092_ (lambda () '#f))
                             (_K102080102101_
                              (lambda (_rest102095_ _hd102096_)
                                (let ((_$e102098_ (__AST-source _hd102096_)))
                                  (if _$e102098_
                                      _$e102098_
                                      (_lp102073_ _rest102095_))))))
                        (if (##pair? _rest102076102084_)
                            (let ((_hd102081102104_ (##car _rest102076102084_))
                                  (_tl102082102106_
                                   (##cdr _rest102076102084_)))
                              (let* ((_hd102109_ _hd102081102104_)
                                     (_rest102111_ _tl102082102106_))
                                (_K102080102101_ _rest102111_ _hd102109_)))
                            (_else102078102092_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102022_ (_location102019_)))
               (if _$e102022_
                   ((lambda (_where102025_)
                      (##display-locat
                       _where102025_
                       '#t
                       (current-output-port)))
                    _$e102022_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102027_
                    (##unchecked-structure-ref
                     _self102016_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102027_
                   ((lambda (_where102030_)
                      (displayln
                       '" at "
                       _where102030_
                       '": "
                       (##unchecked-structure-ref
                        _self102016_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102027_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102016_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102031102039_
                     (##unchecked-structure-ref
                      _self102016_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102033102047_ (lambda () '#!void))
                    (_K102035102060_
                     (lambda (_rest102050_ _stx102051_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102051_)
                       (for-each
                        (lambda (_detail102053_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102053_))
                          (let ((_$e102055_ (__AST-source _detail102053_)))
                            (if _$e102055_
                                ((lambda (_loc102058_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102058_
                                    '#t
                                    (current-output-port)))
                                 _$e102055_)
                                '#!void))
                          (newline))
                        _rest102050_))))
               (if (##pair? _g102031102039_)
                   (let ((_hd102036102063_ (##car _g102031102039_))
                         (_tl102037102065_ (##cdr _g102031102039_)))
                     (let* ((_stx102068_ _hd102036102063_)
                            (_rest102070_ _tl102037102065_))
                       (_K102035102060_ _rest102070_ _stx102068_)))
                   '#!void)))
           current-output-port
           _port102017_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101887_
               _irritants101888_
               _where101889_
               _context101890_
               _marks101891_
               _phi101892_)
        (let ((__obj106676
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106676
           _message101887_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106676
           _irritants101888_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106676
           _where101889_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106676
           _context101890_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106676
           _marks101891_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106676
           _phi101892_
           '5
           SyntaxError::t
           '#f)
          __obj106676)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101882_ _message101883_ _stx101884_ . _details101885_)
        (raise (make-syntax-error
                _message101883_
                (cons _stx101884_ _details101885_)
                _where101882_
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
      (lambda _$args101879_ (apply make-struct-instance AST::t _$args101879_)))
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
      (lambda (_stx101877_)
        (if (##structure-instance-of? _stx101877_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx101877_ '1 AST::t '#f)
            _stx101877_)))
    (define __AST-source
      (lambda (_stx101871_)
        (let _lp101873_ ((_src101875_ _stx101871_))
          (if (##structure-instance-of? _src101875_ 'gerbil#AST::t)
              (_lp101873_
               (##unchecked-structure-ref _src101875_ '2 AST::t '#f))
              (if (##locat? _src101875_) _src101875_ '#f)))))
    (define __AST
      (lambda (_e101863_ _src-stx101864_)
        (let ((_src101866_ (__AST-source _src-stx101864_)))
          (if (or (##structure-instance-of? _e101863_ 'gerbil#AST::t)
                  (not _src101866_))
              _e101863_
              (##structure AST::t _e101863_ _src101866_)))))
    (define __AST-eq?
      (lambda (_stx101860_ _obj101861_)
        (eq? (__AST-e _stx101860_) _obj101861_)))
    (define __AST-pair? (lambda (_stx101858_) (pair? (__AST-e _stx101858_))))
    (define __AST-null? (lambda (_stx101856_) (null? (__AST-e _stx101856_))))
    (define __AST-datum?
      (lambda (_stx101837_)
        (let* ((_e101839_ (__AST-e _stx101837_))
               (_$e101841_ (number? _e101839_)))
          (if _$e101841_
              _$e101841_
              (let ((_$e101844_ (string? _e101839_)))
                (if _$e101844_
                    _$e101844_
                    (let ((_$e101847_ (char? _e101839_)))
                      (if _$e101847_
                          _$e101847_
                          (let ((_$e101850_ (keyword? _e101839_)))
                            (if _$e101850_
                                _$e101850_
                                (let ((_$e101853_ (boolean? _e101839_)))
                                  (if _$e101853_
                                      _$e101853_
                                      (eq? _e101839_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101835_) (symbol? (__AST-e _stx101835_))))
    (define __AST-id-list?__%
      (lambda (_stx101786_ _tail?101787_)
        (let _lp101789_ ((_rest101791_ _stx101786_))
          (let* ((_$e101793_ _rest101791_)
                 (_$E101795101808_
                  (lambda ()
                    (let* ((_$E101796101803_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101793_)))
                           (_rest101806_ _$e101793_))
                      (_tail?101787_ _rest101806_)))))
            (if (__AST-pair? _$e101793_)
                (let* ((_$tgt101797101811_ (__AST-e _$e101793_))
                       (_$hd101798101814_ (##car _$tgt101797101811_))
                       (_$tl101799101817_ (##cdr _$tgt101797101811_)))
                  (let* ((_hd101821_ _$hd101798101814_)
                         (_rest101823_ _$tl101799101817_))
                    (if (__AST-id? _hd101821_) (_lp101789_ _rest101823_) '#f)))
                (_$E101795101808_))))))
    (define __AST-id-list?__0
      (lambda (_stx101828_)
        (let ((_tail?101830_ __AST-null?))
          (__AST-id-list?__% _stx101828_ _tail?101830_))))
    (define __AST-id-list?
      (lambda _g106679_
        (let ((_g106678_ (##length _g106679_)))
          (cond ((##fx= _g106678_ 1)
                 (apply (lambda (_stx101828_) (__AST-id-list?__0 _stx101828_))
                        _g106679_))
                ((##fx= _g106678_ 2)
                 (apply (lambda (_stx101832_ _tail?101833_)
                          (__AST-id-list?__% _stx101832_ _tail?101833_))
                        _g106679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106679_))))))
    (define __AST-bind-list?
      (lambda (_stx101778_)
        (__AST-id-list?__%
         _stx101778_
         (lambda (_e101780_)
           (let ((_$e101782_ (__AST-null? _e101780_)))
             (if _$e101782_ _$e101782_ (__AST-id? _e101780_)))))))
    (define __AST-list?__%
      (lambda (_stx101731_ _tail?101732_)
        (let _lp101734_ ((_rest101736_ _stx101731_))
          (let* ((_$e101738_ _rest101736_)
                 (_$E101740101753_
                  (lambda ()
                    (let* ((_$E101741101748_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101738_)))
                           (_rest101751_ _$e101738_))
                      (_tail?101732_ _rest101751_)))))
            (if (__AST-pair? _$e101738_)
                (let* ((_$tgt101742101756_ (__AST-e _$e101738_))
                       (_$hd101743101759_ (##car _$tgt101742101756_))
                       (_$tl101744101762_ (##cdr _$tgt101742101756_)))
                  (let ((_rest101766_ _$tl101744101762_))
                    (_lp101734_ _rest101766_)))
                (_$E101740101753_))))))
    (define __AST-list?__0
      (lambda (_stx101771_)
        (let ((_tail?101773_ __AST-null?))
          (__AST-list?__% _stx101771_ _tail?101773_))))
    (define __AST-list?
      (lambda _g106681_
        (let ((_g106680_ (##length _g106681_)))
          (cond ((##fx= _g106680_ 1)
                 (apply (lambda (_stx101771_) (__AST-list?__0 _stx101771_))
                        _g106681_))
                ((##fx= _g106680_ 2)
                 (apply (lambda (_stx101775_ _tail?101776_)
                          (__AST-list?__% _stx101775_ _tail?101776_))
                        _g106681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106681_))))))
    (define __AST->list
      (lambda (_stx101696_)
        (let* ((_$e101698_ _stx101696_)
               (_$E101700101713_
                (lambda ()
                  (let* ((_$E101701101708_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101698_)))
                         (_rest101711_ _$e101698_))
                    (__AST-e _rest101711_)))))
          (if (__AST-pair? _$e101698_)
              (let* ((_$tgt101702101716_ (__AST-e _$e101698_))
                     (_$hd101703101719_ (##car _$tgt101702101716_))
                     (_$tl101704101722_ (##cdr _$tgt101702101716_)))
                (let* ((_hd101726_ _$hd101703101719_)
                       (_rest101728_ _$tl101704101722_))
                  (cons _hd101726_ (__AST->list _rest101728_))))
              (_$E101700101713_)))))
    (define __AST->datum
      (lambda (_stx101694_)
        (if (##structure-instance-of? _stx101694_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx101694_))
            (if (pair? _stx101694_)
                (cons (__AST->datum (car _stx101694_))
                      (__AST->datum (cdr _stx101694_)))
                (if (vector? _stx101694_)
                    (vector-map __AST->datum _stx101694_)
                    (if (box? _stx101694_)
                        (box (__AST->datum (unbox _stx101694_)))
                        _stx101694_))))))
    (define get-readenv
      (lambda (_port101692_)
        (##make-readenv
         _port101692_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101680_)
        (let ((_e101682_ (##read-datum-or-eof (get-readenv _in101680_))))
          (if (eof-object? (__AST-e _e101682_))
              (__AST-e _e101682_)
              _e101682_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101688_ (current-input-port))) (read-syntax__% _in101688_))))
    (define read-syntax
      (lambda _g106683_
        (let ((_g106682_ (##length _g106683_)))
          (cond ((##fx= _g106682_ 0)
                 (apply (lambda () (read-syntax__0)) _g106683_))
                ((##fx= _g106682_ 1)
                 (apply (lambda (_in101690_) (read-syntax__% _in101690_))
                        _g106683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106683_))))))
    (define read-syntax-from-file
      (lambda (_path101675_)
        (let ((_r101677_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101675_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101677_)
              (cdr (__AST-e (vector-ref _r101677_ '1)))
              (error (err-code->string _r101677_) _path101675_)))))
    (define __wrap-syntax
      (lambda (_re101672_ _e101673_)
        (if (eof-object? _e101673_)
            _e101673_
            (##structure AST::t _e101673_ (##readenv->locat _re101672_)))))
    (define __unwrap-syntax
      (lambda (_re101669_ _e101670_) (__AST-e _e101670_)))
    (define __pp-syntax (lambda (_stx101667_) (pp (__AST->datum _stx101667_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101665_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101665_ '#t)
          (macro-readtable-bracket-handler-set! _rt101665_ '@list)
          (macro-readtable-brace-handler-set! _rt101665_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101665_
           '#\!
           __read-sharp-bang)
          _rt101665_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101661_ _kw101662_)
        (macro-readtable-bracket-handler-set! _rt101661_ _kw101662_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101658_ _kw101659_)
        (macro-readtable-brace-handler-set! _rt101658_ _kw101659_)))
    (define __read-sharp-bang
      (lambda (_re101649_ _next101650_ _start-pos101651_)
        (if (eq? _start-pos101651_ '0)
            (let* ((_line101653_
                    (##read-line
                     (macro-readenv-port _re101649_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101655_
                    (substring _line101653_ '1 (string-length _line101653_))))
              (macro-readenv-script-line-set! _re101649_ _script-line101655_)
              (##script-marker))
            (##read-sharp-bang _re101649_ _next101650_ _start-pos101651_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101647_)
        (if (source-location? _obj101647_)
            (string? (##locat-container _obj101647_))
            '#f)))
    (define source-location-path
      (lambda (_obj101645_)
        (if (##locat? _obj101645_)
            (##container->path (##locat-container _obj101645_))
            '#f)))))
