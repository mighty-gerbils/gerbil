(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707415535)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type*
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _$args99226_
        (apply make-class-instance SyntaxError::t _$args99226_)))
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
      (lambda (_self99129_ _port99130_)
        (letrec ((_location99132_
                  (lambda ()
                    (let _lp99186_ ((_rest99188_
                                     (##unchecked-structure-ref
                                      _self99129_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest9918999197_ _rest99188_)
                             (_else9919199205_ (lambda () '#f))
                             (_K9919399214_
                              (lambda (_rest99208_ _hd99209_)
                                (let ((_$e99211_ (__AST-source _hd99209_)))
                                  (if _$e99211_
                                      _$e99211_
                                      (_lp99186_ _rest99208_))))))
                        (if (##pair? _rest9918999197_)
                            (let ((_hd9919499217_ (##car _rest9918999197_))
                                  (_tl9919599219_ (##cdr _rest9918999197_)))
                              (let* ((_hd99222_ _hd9919499217_)
                                     (_rest99224_ _tl9919599219_))
                                (_K9919399214_ _rest99224_ _hd99222_)))
                            (_else9919199205_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e99135_ (_location99132_)))
               (if _$e99135_
                   ((lambda (_where99138_)
                      (##display-locat _where99138_ '#t (current-output-port)))
                    _$e99135_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e99140_
                    (##unchecked-structure-ref
                     _self99129_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e99140_
                   ((lambda (_where99143_)
                      (displayln
                       '" at "
                       _where99143_
                       '": "
                       (##unchecked-structure-ref
                        _self99129_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e99140_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self99129_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g9914499152_
                     (##unchecked-structure-ref
                      _self99129_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else9914699160_ (lambda () '#!void))
                    (_K9914899173_
                     (lambda (_rest99163_ _stx99164_)
                       (display '"... form:   ")
                       (__pp-syntax _stx99164_)
                       (for-each
                        (lambda (_detail99166_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail99166_))
                          (let ((_$e99168_ (__AST-source _detail99166_)))
                            (if _$e99168_
                                ((lambda (_loc99171_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc99171_
                                    '#t
                                    (current-output-port)))
                                 _$e99168_)
                                '#!void))
                          (newline))
                        _rest99163_))))
               (if (##pair? _g9914499152_)
                   (let ((_hd9914999176_ (##car _g9914499152_))
                         (_tl9915099178_ (##cdr _g9914499152_)))
                     (let* ((_stx99181_ _hd9914999176_)
                            (_rest99183_ _tl9915099178_))
                       (_K9914899173_ _rest99183_ _stx99181_)))
                   '#!void)))
           current-output-port
           _port99130_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message99000_
               _irritants99001_
               _where99002_
               _context99003_
               _marks99004_
               _phi99005_)
        (let ((__obj103515 (make-object* SyntaxError::t '7)))
          (##unchecked-structure-set!
           __obj103515
           _message99000_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103515
           _irritants99001_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103515
           _where99002_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103515
           _context99003_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103515
           _marks99004_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103515
           _phi99005_
           '5
           SyntaxError::t
           '#f)
          __obj103515)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where98995_ _message98996_ _stx98997_ . _details98998_)
        (raise (make-syntax-error
                _message98996_
                (cons _stx98997_ _details98998_)
                _where98995_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type*
       'gerbil#AST::t
       'syntax
       '#f
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args98992_ (apply make-struct-instance AST::t _$args98992_)))
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
      (lambda (_stx98990_)
        (if (##structure-instance-of? _stx98990_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx98990_ '1 AST::t '#f)
            _stx98990_)))
    (define __AST-source
      (lambda (_stx98984_)
        (let _lp98986_ ((_src98988_ _stx98984_))
          (if (##structure-instance-of? _src98988_ 'gerbil#AST::t)
              (_lp98986_ (##unchecked-structure-ref _src98988_ '2 AST::t '#f))
              (if (##locat? _src98988_) _src98988_ '#f)))))
    (define __AST
      (lambda (_e98976_ _src-stx98977_)
        (let ((_src98979_ (__AST-source _src-stx98977_)))
          (if (or (##structure-instance-of? _e98976_ 'gerbil#AST::t)
                  (not _src98979_))
              _e98976_
              (##structure AST::t _e98976_ _src98979_)))))
    (define __AST-eq?
      (lambda (_stx98973_ _obj98974_) (eq? (__AST-e _stx98973_) _obj98974_)))
    (define __AST-pair? (lambda (_stx98971_) (pair? (__AST-e _stx98971_))))
    (define __AST-null? (lambda (_stx98969_) (null? (__AST-e _stx98969_))))
    (define __AST-datum?
      (lambda (_stx98950_)
        (let* ((_e98952_ (__AST-e _stx98950_)) (_$e98954_ (number? _e98952_)))
          (if _$e98954_
              _$e98954_
              (let ((_$e98957_ (string? _e98952_)))
                (if _$e98957_
                    _$e98957_
                    (let ((_$e98960_ (char? _e98952_)))
                      (if _$e98960_
                          _$e98960_
                          (let ((_$e98963_ (keyword? _e98952_)))
                            (if _$e98963_
                                _$e98963_
                                (let ((_$e98966_ (boolean? _e98952_)))
                                  (if _$e98966_
                                      _$e98966_
                                      (eq? _e98952_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx98948_) (symbol? (__AST-e _stx98948_))))
    (define __AST-id-list?__%
      (lambda (_stx98899_ _tail?98900_)
        (let _lp98902_ ((_rest98904_ _stx98899_))
          (let* ((_$e98906_ _rest98904_)
                 (_$E9890898921_
                  (lambda ()
                    (let* ((_$E9890998916_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e98906_)))
                           (_rest98919_ _$e98906_))
                      (_tail?98900_ _rest98919_)))))
            (if (__AST-pair? _$e98906_)
                (let* ((_$tgt9891098924_ (__AST-e _$e98906_))
                       (_$hd9891198927_ (##car _$tgt9891098924_))
                       (_$tl9891298930_ (##cdr _$tgt9891098924_)))
                  (let* ((_hd98934_ _$hd9891198927_)
                         (_rest98936_ _$tl9891298930_))
                    (if (__AST-id? _hd98934_) (_lp98902_ _rest98936_) '#f)))
                (_$E9890898921_))))))
    (define __AST-id-list?__0
      (lambda (_stx98941_)
        (let ((_tail?98943_ __AST-null?))
          (__AST-id-list?__% _stx98941_ _tail?98943_))))
    (define __AST-id-list?
      (lambda _g103518_
        (let ((_g103517_ (##length _g103518_)))
          (cond ((##fx= _g103517_ 1)
                 (apply (lambda (_stx98941_) (__AST-id-list?__0 _stx98941_))
                        _g103518_))
                ((##fx= _g103517_ 2)
                 (apply (lambda (_stx98945_ _tail?98946_)
                          (__AST-id-list?__% _stx98945_ _tail?98946_))
                        _g103518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g103518_))))))
    (define __AST-bind-list?
      (lambda (_stx98891_)
        (__AST-id-list?__%
         _stx98891_
         (lambda (_e98893_)
           (let ((_$e98895_ (__AST-null? _e98893_)))
             (if _$e98895_ _$e98895_ (__AST-id? _e98893_)))))))
    (define __AST-list?__%
      (lambda (_stx98844_ _tail?98845_)
        (let _lp98847_ ((_rest98849_ _stx98844_))
          (let* ((_$e98851_ _rest98849_)
                 (_$E9885398866_
                  (lambda ()
                    (let* ((_$E9885498861_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e98851_)))
                           (_rest98864_ _$e98851_))
                      (_tail?98845_ _rest98864_)))))
            (if (__AST-pair? _$e98851_)
                (let* ((_$tgt9885598869_ (__AST-e _$e98851_))
                       (_$hd9885698872_ (##car _$tgt9885598869_))
                       (_$tl9885798875_ (##cdr _$tgt9885598869_)))
                  (let ((_rest98879_ _$tl9885798875_))
                    (_lp98847_ _rest98879_)))
                (_$E9885398866_))))))
    (define __AST-list?__0
      (lambda (_stx98884_)
        (let ((_tail?98886_ __AST-null?))
          (__AST-list?__% _stx98884_ _tail?98886_))))
    (define __AST-list?
      (lambda _g103520_
        (let ((_g103519_ (##length _g103520_)))
          (cond ((##fx= _g103519_ 1)
                 (apply (lambda (_stx98884_) (__AST-list?__0 _stx98884_))
                        _g103520_))
                ((##fx= _g103519_ 2)
                 (apply (lambda (_stx98888_ _tail?98889_)
                          (__AST-list?__% _stx98888_ _tail?98889_))
                        _g103520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g103520_))))))
    (define __AST->list
      (lambda (_stx98809_)
        (let* ((_$e98811_ _stx98809_)
               (_$E9881398826_
                (lambda ()
                  (let* ((_$E9881498821_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e98811_)))
                         (_rest98824_ _$e98811_))
                    (__AST-e _rest98824_)))))
          (if (__AST-pair? _$e98811_)
              (let* ((_$tgt9881598829_ (__AST-e _$e98811_))
                     (_$hd9881698832_ (##car _$tgt9881598829_))
                     (_$tl9881798835_ (##cdr _$tgt9881598829_)))
                (let* ((_hd98839_ _$hd9881698832_)
                       (_rest98841_ _$tl9881798835_))
                  (cons _hd98839_ (__AST->list _rest98841_))))
              (_$E9881398826_)))))
    (define __AST->datum
      (lambda (_stx98807_)
        (if (##structure-instance-of? _stx98807_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx98807_))
            (if (pair? _stx98807_)
                (cons (__AST->datum (car _stx98807_))
                      (__AST->datum (cdr _stx98807_)))
                (if (vector? _stx98807_)
                    (vector-map __AST->datum _stx98807_)
                    (if (box? _stx98807_)
                        (box (__AST->datum (unbox _stx98807_)))
                        _stx98807_))))))
    (define get-readenv
      (lambda (_port98805_)
        (##make-readenv
         _port98805_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in98793_)
        (let ((_e98795_ (##read-datum-or-eof (get-readenv _in98793_))))
          (if (eof-object? (__AST-e _e98795_)) (__AST-e _e98795_) _e98795_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in98801_ (current-input-port))) (read-syntax__% _in98801_))))
    (define read-syntax
      (lambda _g103522_
        (let ((_g103521_ (##length _g103522_)))
          (cond ((##fx= _g103521_ 0)
                 (apply (lambda () (read-syntax__0)) _g103522_))
                ((##fx= _g103521_ 1)
                 (apply (lambda (_in98803_) (read-syntax__% _in98803_))
                        _g103522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g103522_))))))
    (define read-syntax-from-file
      (lambda (_path98788_)
        (let ((_r98790_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path98788_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r98790_)
              (cdr (__AST-e (vector-ref _r98790_ '1)))
              (error (err-code->string _r98790_) _path98788_)))))
    (define __wrap-syntax
      (lambda (_re98785_ _e98786_)
        (if (eof-object? _e98786_)
            _e98786_
            (##structure AST::t _e98786_ (##readenv->locat _re98785_)))))
    (define __unwrap-syntax (lambda (_re98782_ _e98783_) (__AST-e _e98783_)))
    (define __pp-syntax (lambda (_stx98780_) (pp (__AST->datum _stx98780_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt98778_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt98778_ '#t)
          (macro-readtable-bracket-handler-set! _rt98778_ '@list)
          (macro-readtable-brace-handler-set! _rt98778_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt98778_
           '#\!
           __read-sharp-bang)
          _rt98778_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt98774_ _kw98775_)
        (macro-readtable-bracket-handler-set! _rt98774_ _kw98775_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt98771_ _kw98772_)
        (macro-readtable-brace-handler-set! _rt98771_ _kw98772_)))
    (define __read-sharp-bang
      (lambda (_re98762_ _next98763_ _start-pos98764_)
        (if (eq? _start-pos98764_ '0)
            (let* ((_line98766_
                    (##read-line
                     (macro-readenv-port _re98762_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line98768_
                    (substring _line98766_ '1 (string-length _line98766_))))
              (macro-readenv-script-line-set! _re98762_ _script-line98768_)
              (##script-marker))
            (##read-sharp-bang _re98762_ _next98763_ _start-pos98764_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj98760_)
        (if (source-location? _obj98760_)
            (string? (##locat-container _obj98760_))
            '#f)))
    (define source-location-path
      (lambda (_obj98758_)
        (if (##locat? _obj98758_)
            (##container->path (##locat-container _obj98758_))
            '#f)))))
