(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707651232)
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
      (lambda _$args101705_
        (apply make-class-instance SyntaxError::t _$args101705_)))
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
      (lambda (_self101608_ _port101609_)
        (letrec ((_location101611_
                  (lambda ()
                    (let _lp101665_ ((_rest101667_
                                      (##unchecked-structure-ref
                                       _self101608_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest101668101676_ _rest101667_)
                             (_else101670101684_ (lambda () '#f))
                             (_K101672101693_
                              (lambda (_rest101687_ _hd101688_)
                                (let ((_$e101690_ (__AST-source _hd101688_)))
                                  (if _$e101690_
                                      _$e101690_
                                      (_lp101665_ _rest101687_))))))
                        (if (##pair? _rest101668101676_)
                            (let ((_hd101673101696_ (##car _rest101668101676_))
                                  (_tl101674101698_
                                   (##cdr _rest101668101676_)))
                              (let* ((_hd101701_ _hd101673101696_)
                                     (_rest101703_ _tl101674101698_))
                                (_K101672101693_ _rest101703_ _hd101701_)))
                            (_else101670101684_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e101614_ (_location101611_)))
               (if _$e101614_
                   ((lambda (_where101617_)
                      (##display-locat
                       _where101617_
                       '#t
                       (current-output-port)))
                    _$e101614_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e101619_
                    (##unchecked-structure-ref
                     _self101608_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e101619_
                   ((lambda (_where101622_)
                      (displayln
                       '" at "
                       _where101622_
                       '": "
                       (##unchecked-structure-ref
                        _self101608_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e101619_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self101608_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g101623101631_
                     (##unchecked-structure-ref
                      _self101608_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else101625101639_ (lambda () '#!void))
                    (_K101627101652_
                     (lambda (_rest101642_ _stx101643_)
                       (display '"... form:   ")
                       (__pp-syntax _stx101643_)
                       (for-each
                        (lambda (_detail101645_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail101645_))
                          (let ((_$e101647_ (__AST-source _detail101645_)))
                            (if _$e101647_
                                ((lambda (_loc101650_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc101650_
                                    '#t
                                    (current-output-port)))
                                 _$e101647_)
                                '#!void))
                          (newline))
                        _rest101642_))))
               (if (##pair? _g101623101631_)
                   (let ((_hd101628101655_ (##car _g101623101631_))
                         (_tl101629101657_ (##cdr _g101623101631_)))
                     (let* ((_stx101660_ _hd101628101655_)
                            (_rest101662_ _tl101629101657_))
                       (_K101627101652_ _rest101662_ _stx101660_)))
                   '#!void)))
           current-output-port
           _port101609_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101479_
               _irritants101480_
               _where101481_
               _context101482_
               _marks101483_
               _phi101484_)
        (let ((__obj106268
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106268
           _message101479_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106268
           _irritants101480_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106268
           _where101481_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106268
           _context101482_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106268
           _marks101483_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106268
           _phi101484_
           '5
           SyntaxError::t
           '#f)
          __obj106268)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101474_ _message101475_ _stx101476_ . _details101477_)
        (raise (make-syntax-error
                _message101475_
                (cons _stx101476_ _details101477_)
                _where101474_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-class-type 'gerbil#AST::t 'syntax (list) '(e source) '() '#f))
    (define AST? (make-class-predicate AST::t))
    (define make-AST
      (lambda _$args101471_ (apply make-class-instance AST::t _$args101471_)))
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
      (lambda (_stx101469_)
        (if (class-instance? AST::t _stx101469_)
            (unchecked-slot-ref _stx101469_ 'e)
            _stx101469_)))
    (define __AST-source
      (lambda (_stx101463_)
        (let _lp101465_ ((_src101467_ _stx101463_))
          (if (class-instance? AST::t _src101467_)
              (_lp101465_ (unchecked-slot-ref _src101467_ 'source))
              (if (##locat? _src101467_) _src101467_ '#f)))))
    (define __AST
      (lambda (_e101455_ _src-stx101456_)
        (let ((_src101458_ (__AST-source _src-stx101456_)))
          (if (or (class-instance? AST::t _e101455_) (not _src101458_))
              _e101455_
              (let ((__obj106270 (##structure AST::t '#f '#f)))
                (class-instance-init! __obj106270 _e101455_ _src101458_)
                __obj106270)))))
    (define __AST-eq?
      (lambda (_stx101452_ _obj101453_)
        (eq? (__AST-e _stx101452_) _obj101453_)))
    (define __AST-pair? (lambda (_stx101450_) (pair? (__AST-e _stx101450_))))
    (define __AST-null? (lambda (_stx101448_) (null? (__AST-e _stx101448_))))
    (define __AST-datum?
      (lambda (_stx101429_)
        (let* ((_e101431_ (__AST-e _stx101429_))
               (_$e101433_ (number? _e101431_)))
          (if _$e101433_
              _$e101433_
              (let ((_$e101436_ (string? _e101431_)))
                (if _$e101436_
                    _$e101436_
                    (let ((_$e101439_ (char? _e101431_)))
                      (if _$e101439_
                          _$e101439_
                          (let ((_$e101442_ (keyword? _e101431_)))
                            (if _$e101442_
                                _$e101442_
                                (let ((_$e101445_ (boolean? _e101431_)))
                                  (if _$e101445_
                                      _$e101445_
                                      (eq? _e101431_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101427_) (symbol? (__AST-e _stx101427_))))
    (define __AST-id-list?__%
      (lambda (_stx101378_ _tail?101379_)
        (let _lp101381_ ((_rest101383_ _stx101378_))
          (let* ((_$e101385_ _rest101383_)
                 (_$E101387101400_
                  (lambda ()
                    (let* ((_$E101388101395_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101385_)))
                           (_rest101398_ _$e101385_))
                      (_tail?101379_ _rest101398_)))))
            (if (__AST-pair? _$e101385_)
                (let* ((_$tgt101389101403_ (__AST-e _$e101385_))
                       (_$hd101390101406_ (##car _$tgt101389101403_))
                       (_$tl101391101409_ (##cdr _$tgt101389101403_)))
                  (let* ((_hd101413_ _$hd101390101406_)
                         (_rest101415_ _$tl101391101409_))
                    (if (__AST-id? _hd101413_) (_lp101381_ _rest101415_) '#f)))
                (_$E101387101400_))))))
    (define __AST-id-list?__0
      (lambda (_stx101420_)
        (let ((_tail?101422_ __AST-null?))
          (__AST-id-list?__% _stx101420_ _tail?101422_))))
    (define __AST-id-list?
      (lambda _g106273_
        (let ((_g106272_ (##length _g106273_)))
          (cond ((##fx= _g106272_ 1)
                 (apply (lambda (_stx101420_) (__AST-id-list?__0 _stx101420_))
                        _g106273_))
                ((##fx= _g106272_ 2)
                 (apply (lambda (_stx101424_ _tail?101425_)
                          (__AST-id-list?__% _stx101424_ _tail?101425_))
                        _g106273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106273_))))))
    (define __AST-bind-list?
      (lambda (_stx101370_)
        (__AST-id-list?__%
         _stx101370_
         (lambda (_e101372_)
           (let ((_$e101374_ (__AST-null? _e101372_)))
             (if _$e101374_ _$e101374_ (__AST-id? _e101372_)))))))
    (define __AST-list?__%
      (lambda (_stx101323_ _tail?101324_)
        (let _lp101326_ ((_rest101328_ _stx101323_))
          (let* ((_$e101330_ _rest101328_)
                 (_$E101332101345_
                  (lambda ()
                    (let* ((_$E101333101340_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101330_)))
                           (_rest101343_ _$e101330_))
                      (_tail?101324_ _rest101343_)))))
            (if (__AST-pair? _$e101330_)
                (let* ((_$tgt101334101348_ (__AST-e _$e101330_))
                       (_$hd101335101351_ (##car _$tgt101334101348_))
                       (_$tl101336101354_ (##cdr _$tgt101334101348_)))
                  (let ((_rest101358_ _$tl101336101354_))
                    (_lp101326_ _rest101358_)))
                (_$E101332101345_))))))
    (define __AST-list?__0
      (lambda (_stx101363_)
        (let ((_tail?101365_ __AST-null?))
          (__AST-list?__% _stx101363_ _tail?101365_))))
    (define __AST-list?
      (lambda _g106275_
        (let ((_g106274_ (##length _g106275_)))
          (cond ((##fx= _g106274_ 1)
                 (apply (lambda (_stx101363_) (__AST-list?__0 _stx101363_))
                        _g106275_))
                ((##fx= _g106274_ 2)
                 (apply (lambda (_stx101367_ _tail?101368_)
                          (__AST-list?__% _stx101367_ _tail?101368_))
                        _g106275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106275_))))))
    (define __AST->list
      (lambda (_stx101288_)
        (let* ((_$e101290_ _stx101288_)
               (_$E101292101305_
                (lambda ()
                  (let* ((_$E101293101300_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101290_)))
                         (_rest101303_ _$e101290_))
                    (__AST-e _rest101303_)))))
          (if (__AST-pair? _$e101290_)
              (let* ((_$tgt101294101308_ (__AST-e _$e101290_))
                     (_$hd101295101311_ (##car _$tgt101294101308_))
                     (_$tl101296101314_ (##cdr _$tgt101294101308_)))
                (let* ((_hd101318_ _$hd101295101311_)
                       (_rest101320_ _$tl101296101314_))
                  (cons _hd101318_ (__AST->list _rest101320_))))
              (_$E101292101305_)))))
    (define __AST->datum
      (lambda (_stx101286_)
        (if (class-instance? AST::t _stx101286_)
            (__AST->datum (__AST-e _stx101286_))
            (if (pair? _stx101286_)
                (cons (__AST->datum (car _stx101286_))
                      (__AST->datum (cdr _stx101286_)))
                (if (vector? _stx101286_)
                    (vector-map __AST->datum _stx101286_)
                    (if (box? _stx101286_)
                        (box (__AST->datum (unbox _stx101286_)))
                        _stx101286_))))))
    (define get-readenv
      (lambda (_port101284_)
        (##make-readenv
         _port101284_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101272_)
        (let ((_e101274_ (##read-datum-or-eof (get-readenv _in101272_))))
          (if (eof-object? (__AST-e _e101274_))
              (__AST-e _e101274_)
              _e101274_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101280_ (current-input-port))) (read-syntax__% _in101280_))))
    (define read-syntax
      (lambda _g106277_
        (let ((_g106276_ (##length _g106277_)))
          (cond ((##fx= _g106276_ 0)
                 (apply (lambda () (read-syntax__0)) _g106277_))
                ((##fx= _g106276_ 1)
                 (apply (lambda (_in101282_) (read-syntax__% _in101282_))
                        _g106277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106277_))))))
    (define read-syntax-from-file
      (lambda (_path101267_)
        (let ((_r101269_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101267_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101269_)
              (cdr (__AST-e (vector-ref _r101269_ '1)))
              (error (err-code->string _r101269_) _path101267_)))))
    (define __wrap-syntax
      (lambda (_re101264_ _e101265_)
        (if (eof-object? _e101265_)
            _e101265_
            (let ((__obj106271 (##structure AST::t '#f '#f)))
              (class-instance-init!
               __obj106271
               _e101265_
               (##readenv->locat _re101264_))
              __obj106271))))
    (define __unwrap-syntax
      (lambda (_re101261_ _e101262_) (__AST-e _e101262_)))
    (define __pp-syntax (lambda (_stx101259_) (pp (__AST->datum _stx101259_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101257_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101257_ '#t)
          (macro-readtable-bracket-handler-set! _rt101257_ '@list)
          (macro-readtable-brace-handler-set! _rt101257_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101257_
           '#\!
           __read-sharp-bang)
          _rt101257_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101253_ _kw101254_)
        (macro-readtable-bracket-handler-set! _rt101253_ _kw101254_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101250_ _kw101251_)
        (macro-readtable-brace-handler-set! _rt101250_ _kw101251_)))
    (define __read-sharp-bang
      (lambda (_re101241_ _next101242_ _start-pos101243_)
        (if (eq? _start-pos101243_ '0)
            (let* ((_line101245_
                    (##read-line
                     (macro-readenv-port _re101241_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101247_
                    (substring _line101245_ '1 (string-length _line101245_))))
              (macro-readenv-script-line-set! _re101241_ _script-line101247_)
              (##script-marker))
            (##read-sharp-bang _re101241_ _next101242_ _start-pos101243_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101239_)
        (if (source-location? _obj101239_)
            (string? (##locat-container _obj101239_))
            '#f)))
    (define source-location-path
      (lambda (_obj101237_)
        (if (##locat? _obj101237_)
            (##container->path (##locat-container _obj101237_))
            '#f)))))
