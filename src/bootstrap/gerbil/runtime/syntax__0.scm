(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707565658)
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
      (lambda _$args99156_
        (apply make-class-instance SyntaxError::t _$args99156_)))
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
      (lambda (_self99059_ _port99060_)
        (letrec ((_location99062_
                  (lambda ()
                    (let _lp99116_ ((_rest99118_
                                     (##unchecked-structure-ref
                                      _self99059_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest9911999127_ _rest99118_)
                             (_else9912199135_ (lambda () '#f))
                             (_K9912399144_
                              (lambda (_rest99138_ _hd99139_)
                                (let ((_$e99141_ (__AST-source _hd99139_)))
                                  (if _$e99141_
                                      _$e99141_
                                      (_lp99116_ _rest99138_))))))
                        (if (##pair? _rest9911999127_)
                            (let ((_hd9912499147_ (##car _rest9911999127_))
                                  (_tl9912599149_ (##cdr _rest9911999127_)))
                              (let* ((_hd99152_ _hd9912499147_)
                                     (_rest99154_ _tl9912599149_))
                                (_K9912399144_ _rest99154_ _hd99152_)))
                            (_else9912199135_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e99065_ (_location99062_)))
               (if _$e99065_
                   ((lambda (_where99068_)
                      (##display-locat _where99068_ '#t (current-output-port)))
                    _$e99065_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e99070_
                    (##unchecked-structure-ref
                     _self99059_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e99070_
                   ((lambda (_where99073_)
                      (displayln
                       '" at "
                       _where99073_
                       '": "
                       (##unchecked-structure-ref
                        _self99059_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e99070_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self99059_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g9907499082_
                     (##unchecked-structure-ref
                      _self99059_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else9907699090_ (lambda () '#!void))
                    (_K9907899103_
                     (lambda (_rest99093_ _stx99094_)
                       (display '"... form:   ")
                       (__pp-syntax _stx99094_)
                       (for-each
                        (lambda (_detail99096_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail99096_))
                          (let ((_$e99098_ (__AST-source _detail99096_)))
                            (if _$e99098_
                                ((lambda (_loc99101_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc99101_
                                    '#t
                                    (current-output-port)))
                                 _$e99098_)
                                '#!void))
                          (newline))
                        _rest99093_))))
               (if (##pair? _g9907499082_)
                   (let ((_hd9907999106_ (##car _g9907499082_))
                         (_tl9908099108_ (##cdr _g9907499082_)))
                     (let* ((_stx99111_ _hd9907999106_)
                            (_rest99113_ _tl9908099108_))
                       (_K9907899103_ _rest99113_ _stx99111_)))
                   '#!void)))
           current-output-port
           _port99060_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message98930_
               _irritants98931_
               _where98932_
               _context98933_
               _marks98934_
               _phi98935_)
        (let ((__obj103445 (make-object SyntaxError::t '7)))
          (##unchecked-structure-set!
           __obj103445
           _message98930_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103445
           _irritants98931_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103445
           _where98932_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103445
           _context98933_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103445
           _marks98934_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103445
           _phi98935_
           '5
           SyntaxError::t
           '#f)
          __obj103445)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where98925_ _message98926_ _stx98927_ . _details98928_)
        (raise (make-syntax-error
                _message98926_
                (cons _stx98927_ _details98928_)
                _where98925_
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
      (lambda _$args98922_ (apply make-struct-instance AST::t _$args98922_)))
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
      (lambda (_stx98920_)
        (if (##structure-instance-of? _stx98920_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx98920_ '1 AST::t '#f)
            _stx98920_)))
    (define __AST-source
      (lambda (_stx98914_)
        (let _lp98916_ ((_src98918_ _stx98914_))
          (if (##structure-instance-of? _src98918_ 'gerbil#AST::t)
              (_lp98916_ (##unchecked-structure-ref _src98918_ '2 AST::t '#f))
              (if (##locat? _src98918_) _src98918_ '#f)))))
    (define __AST
      (lambda (_e98906_ _src-stx98907_)
        (let ((_src98909_ (__AST-source _src-stx98907_)))
          (if (or (##structure-instance-of? _e98906_ 'gerbil#AST::t)
                  (not _src98909_))
              _e98906_
              (##structure AST::t _e98906_ _src98909_)))))
    (define __AST-eq?
      (lambda (_stx98903_ _obj98904_) (eq? (__AST-e _stx98903_) _obj98904_)))
    (define __AST-pair? (lambda (_stx98901_) (pair? (__AST-e _stx98901_))))
    (define __AST-null? (lambda (_stx98899_) (null? (__AST-e _stx98899_))))
    (define __AST-datum?
      (lambda (_stx98880_)
        (let* ((_e98882_ (__AST-e _stx98880_)) (_$e98884_ (number? _e98882_)))
          (if _$e98884_
              _$e98884_
              (let ((_$e98887_ (string? _e98882_)))
                (if _$e98887_
                    _$e98887_
                    (let ((_$e98890_ (char? _e98882_)))
                      (if _$e98890_
                          _$e98890_
                          (let ((_$e98893_ (keyword? _e98882_)))
                            (if _$e98893_
                                _$e98893_
                                (let ((_$e98896_ (boolean? _e98882_)))
                                  (if _$e98896_
                                      _$e98896_
                                      (eq? _e98882_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx98878_) (symbol? (__AST-e _stx98878_))))
    (define __AST-id-list?__%
      (lambda (_stx98829_ _tail?98830_)
        (let _lp98832_ ((_rest98834_ _stx98829_))
          (let* ((_$e98836_ _rest98834_)
                 (_$E9883898851_
                  (lambda ()
                    (let* ((_$E9883998846_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e98836_)))
                           (_rest98849_ _$e98836_))
                      (_tail?98830_ _rest98849_)))))
            (if (__AST-pair? _$e98836_)
                (let* ((_$tgt9884098854_ (__AST-e _$e98836_))
                       (_$hd9884198857_ (##car _$tgt9884098854_))
                       (_$tl9884298860_ (##cdr _$tgt9884098854_)))
                  (let* ((_hd98864_ _$hd9884198857_)
                         (_rest98866_ _$tl9884298860_))
                    (if (__AST-id? _hd98864_) (_lp98832_ _rest98866_) '#f)))
                (_$E9883898851_))))))
    (define __AST-id-list?__0
      (lambda (_stx98871_)
        (let ((_tail?98873_ __AST-null?))
          (__AST-id-list?__% _stx98871_ _tail?98873_))))
    (define __AST-id-list?
      (lambda _g103448_
        (let ((_g103447_ (##length _g103448_)))
          (cond ((##fx= _g103447_ 1)
                 (apply (lambda (_stx98871_) (__AST-id-list?__0 _stx98871_))
                        _g103448_))
                ((##fx= _g103447_ 2)
                 (apply (lambda (_stx98875_ _tail?98876_)
                          (__AST-id-list?__% _stx98875_ _tail?98876_))
                        _g103448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g103448_))))))
    (define __AST-bind-list?
      (lambda (_stx98821_)
        (__AST-id-list?__%
         _stx98821_
         (lambda (_e98823_)
           (let ((_$e98825_ (__AST-null? _e98823_)))
             (if _$e98825_ _$e98825_ (__AST-id? _e98823_)))))))
    (define __AST-list?__%
      (lambda (_stx98774_ _tail?98775_)
        (let _lp98777_ ((_rest98779_ _stx98774_))
          (let* ((_$e98781_ _rest98779_)
                 (_$E9878398796_
                  (lambda ()
                    (let* ((_$E9878498791_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e98781_)))
                           (_rest98794_ _$e98781_))
                      (_tail?98775_ _rest98794_)))))
            (if (__AST-pair? _$e98781_)
                (let* ((_$tgt9878598799_ (__AST-e _$e98781_))
                       (_$hd9878698802_ (##car _$tgt9878598799_))
                       (_$tl9878798805_ (##cdr _$tgt9878598799_)))
                  (let ((_rest98809_ _$tl9878798805_))
                    (_lp98777_ _rest98809_)))
                (_$E9878398796_))))))
    (define __AST-list?__0
      (lambda (_stx98814_)
        (let ((_tail?98816_ __AST-null?))
          (__AST-list?__% _stx98814_ _tail?98816_))))
    (define __AST-list?
      (lambda _g103450_
        (let ((_g103449_ (##length _g103450_)))
          (cond ((##fx= _g103449_ 1)
                 (apply (lambda (_stx98814_) (__AST-list?__0 _stx98814_))
                        _g103450_))
                ((##fx= _g103449_ 2)
                 (apply (lambda (_stx98818_ _tail?98819_)
                          (__AST-list?__% _stx98818_ _tail?98819_))
                        _g103450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g103450_))))))
    (define __AST->list
      (lambda (_stx98739_)
        (let* ((_$e98741_ _stx98739_)
               (_$E9874398756_
                (lambda ()
                  (let* ((_$E9874498751_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e98741_)))
                         (_rest98754_ _$e98741_))
                    (__AST-e _rest98754_)))))
          (if (__AST-pair? _$e98741_)
              (let* ((_$tgt9874598759_ (__AST-e _$e98741_))
                     (_$hd9874698762_ (##car _$tgt9874598759_))
                     (_$tl9874798765_ (##cdr _$tgt9874598759_)))
                (let* ((_hd98769_ _$hd9874698762_)
                       (_rest98771_ _$tl9874798765_))
                  (cons _hd98769_ (__AST->list _rest98771_))))
              (_$E9874398756_)))))
    (define __AST->datum
      (lambda (_stx98737_)
        (if (##structure-instance-of? _stx98737_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx98737_))
            (if (pair? _stx98737_)
                (cons (__AST->datum (car _stx98737_))
                      (__AST->datum (cdr _stx98737_)))
                (if (vector? _stx98737_)
                    (vector-map __AST->datum _stx98737_)
                    (if (box? _stx98737_)
                        (box (__AST->datum (unbox _stx98737_)))
                        _stx98737_))))))
    (define get-readenv
      (lambda (_port98735_)
        (##make-readenv
         _port98735_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in98723_)
        (let ((_e98725_ (##read-datum-or-eof (get-readenv _in98723_))))
          (if (eof-object? (__AST-e _e98725_)) (__AST-e _e98725_) _e98725_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in98731_ (current-input-port))) (read-syntax__% _in98731_))))
    (define read-syntax
      (lambda _g103452_
        (let ((_g103451_ (##length _g103452_)))
          (cond ((##fx= _g103451_ 0)
                 (apply (lambda () (read-syntax__0)) _g103452_))
                ((##fx= _g103451_ 1)
                 (apply (lambda (_in98733_) (read-syntax__% _in98733_))
                        _g103452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g103452_))))))
    (define read-syntax-from-file
      (lambda (_path98718_)
        (let ((_r98720_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path98718_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r98720_)
              (cdr (__AST-e (vector-ref _r98720_ '1)))
              (error (err-code->string _r98720_) _path98718_)))))
    (define __wrap-syntax
      (lambda (_re98715_ _e98716_)
        (if (eof-object? _e98716_)
            _e98716_
            (##structure AST::t _e98716_ (##readenv->locat _re98715_)))))
    (define __unwrap-syntax (lambda (_re98712_ _e98713_) (__AST-e _e98713_)))
    (define __pp-syntax (lambda (_stx98710_) (pp (__AST->datum _stx98710_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt98708_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt98708_ '#t)
          (macro-readtable-bracket-handler-set! _rt98708_ '@list)
          (macro-readtable-brace-handler-set! _rt98708_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt98708_
           '#\!
           __read-sharp-bang)
          _rt98708_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt98704_ _kw98705_)
        (macro-readtable-bracket-handler-set! _rt98704_ _kw98705_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt98701_ _kw98702_)
        (macro-readtable-brace-handler-set! _rt98701_ _kw98702_)))
    (define __read-sharp-bang
      (lambda (_re98692_ _next98693_ _start-pos98694_)
        (if (eq? _start-pos98694_ '0)
            (let* ((_line98696_
                    (##read-line
                     (macro-readenv-port _re98692_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line98698_
                    (substring _line98696_ '1 (string-length _line98696_))))
              (macro-readenv-script-line-set! _re98692_ _script-line98698_)
              (##script-marker))
            (##read-sharp-bang _re98692_ _next98693_ _start-pos98694_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj98690_)
        (if (source-location? _obj98690_)
            (string? (##locat-container _obj98690_))
            '#f)))
    (define source-location-path
      (lambda (_obj98688_)
        (if (##locat? _obj98688_)
            (##container->path (##locat-container _obj98688_))
            '#f)))))
