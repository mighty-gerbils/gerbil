(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707552286)
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
      (lambda _$args99157_
        (apply make-class-instance SyntaxError::t _$args99157_)))
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
      (lambda (_self99060_ _port99061_)
        (letrec ((_location99063_
                  (lambda ()
                    (let _lp99117_ ((_rest99119_
                                     (##unchecked-structure-ref
                                      _self99060_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest9912099128_ _rest99119_)
                             (_else9912299136_ (lambda () '#f))
                             (_K9912499145_
                              (lambda (_rest99139_ _hd99140_)
                                (let ((_$e99142_ (__AST-source _hd99140_)))
                                  (if _$e99142_
                                      _$e99142_
                                      (_lp99117_ _rest99139_))))))
                        (if (##pair? _rest9912099128_)
                            (let ((_hd9912599148_ (##car _rest9912099128_))
                                  (_tl9912699150_ (##cdr _rest9912099128_)))
                              (let* ((_hd99153_ _hd9912599148_)
                                     (_rest99155_ _tl9912699150_))
                                (_K9912499145_ _rest99155_ _hd99153_)))
                            (_else9912299136_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e99066_ (_location99063_)))
               (if _$e99066_
                   ((lambda (_where99069_)
                      (##display-locat _where99069_ '#t (current-output-port)))
                    _$e99066_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e99071_
                    (##unchecked-structure-ref
                     _self99060_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e99071_
                   ((lambda (_where99074_)
                      (displayln
                       '" at "
                       _where99074_
                       '": "
                       (##unchecked-structure-ref
                        _self99060_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e99071_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self99060_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g9907599083_
                     (##unchecked-structure-ref
                      _self99060_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else9907799091_ (lambda () '#!void))
                    (_K9907999104_
                     (lambda (_rest99094_ _stx99095_)
                       (display '"... form:   ")
                       (__pp-syntax _stx99095_)
                       (for-each
                        (lambda (_detail99097_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail99097_))
                          (let ((_$e99099_ (__AST-source _detail99097_)))
                            (if _$e99099_
                                ((lambda (_loc99102_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc99102_
                                    '#t
                                    (current-output-port)))
                                 _$e99099_)
                                '#!void))
                          (newline))
                        _rest99094_))))
               (if (##pair? _g9907599083_)
                   (let ((_hd9908099107_ (##car _g9907599083_))
                         (_tl9908199109_ (##cdr _g9907599083_)))
                     (let* ((_stx99112_ _hd9908099107_)
                            (_rest99114_ _tl9908199109_))
                       (_K9907999104_ _rest99114_ _stx99112_)))
                   '#!void)))
           current-output-port
           _port99061_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message98931_
               _irritants98932_
               _where98933_
               _context98934_
               _marks98935_
               _phi98936_)
        (let ((__obj103446 (make-object SyntaxError::t '7)))
          (##unchecked-structure-set!
           __obj103446
           _message98931_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103446
           _irritants98932_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103446
           _where98933_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103446
           _context98934_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103446
           _marks98935_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj103446
           _phi98936_
           '5
           SyntaxError::t
           '#f)
          __obj103446)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where98926_ _message98927_ _stx98928_ . _details98929_)
        (raise (make-syntax-error
                _message98927_
                (cons _stx98928_ _details98929_)
                _where98926_
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
      (lambda _$args98923_ (apply make-struct-instance AST::t _$args98923_)))
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
      (lambda (_stx98921_)
        (if (##structure-instance-of? _stx98921_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx98921_ '1 AST::t '#f)
            _stx98921_)))
    (define __AST-source
      (lambda (_stx98915_)
        (let _lp98917_ ((_src98919_ _stx98915_))
          (if (##structure-instance-of? _src98919_ 'gerbil#AST::t)
              (_lp98917_ (##unchecked-structure-ref _src98919_ '2 AST::t '#f))
              (if (##locat? _src98919_) _src98919_ '#f)))))
    (define __AST
      (lambda (_e98907_ _src-stx98908_)
        (let ((_src98910_ (__AST-source _src-stx98908_)))
          (if (or (##structure-instance-of? _e98907_ 'gerbil#AST::t)
                  (not _src98910_))
              _e98907_
              (##structure AST::t _e98907_ _src98910_)))))
    (define __AST-eq?
      (lambda (_stx98904_ _obj98905_) (eq? (__AST-e _stx98904_) _obj98905_)))
    (define __AST-pair? (lambda (_stx98902_) (pair? (__AST-e _stx98902_))))
    (define __AST-null? (lambda (_stx98900_) (null? (__AST-e _stx98900_))))
    (define __AST-datum?
      (lambda (_stx98881_)
        (let* ((_e98883_ (__AST-e _stx98881_)) (_$e98885_ (number? _e98883_)))
          (if _$e98885_
              _$e98885_
              (let ((_$e98888_ (string? _e98883_)))
                (if _$e98888_
                    _$e98888_
                    (let ((_$e98891_ (char? _e98883_)))
                      (if _$e98891_
                          _$e98891_
                          (let ((_$e98894_ (keyword? _e98883_)))
                            (if _$e98894_
                                _$e98894_
                                (let ((_$e98897_ (boolean? _e98883_)))
                                  (if _$e98897_
                                      _$e98897_
                                      (eq? _e98883_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx98879_) (symbol? (__AST-e _stx98879_))))
    (define __AST-id-list?__%
      (lambda (_stx98830_ _tail?98831_)
        (let _lp98833_ ((_rest98835_ _stx98830_))
          (let* ((_$e98837_ _rest98835_)
                 (_$E9883998852_
                  (lambda ()
                    (let* ((_$E9884098847_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e98837_)))
                           (_rest98850_ _$e98837_))
                      (_tail?98831_ _rest98850_)))))
            (if (__AST-pair? _$e98837_)
                (let* ((_$tgt9884198855_ (__AST-e _$e98837_))
                       (_$hd9884298858_ (##car _$tgt9884198855_))
                       (_$tl9884398861_ (##cdr _$tgt9884198855_)))
                  (let* ((_hd98865_ _$hd9884298858_)
                         (_rest98867_ _$tl9884398861_))
                    (if (__AST-id? _hd98865_) (_lp98833_ _rest98867_) '#f)))
                (_$E9883998852_))))))
    (define __AST-id-list?__0
      (lambda (_stx98872_)
        (let ((_tail?98874_ __AST-null?))
          (__AST-id-list?__% _stx98872_ _tail?98874_))))
    (define __AST-id-list?
      (lambda _g103449_
        (let ((_g103448_ (##length _g103449_)))
          (cond ((##fx= _g103448_ 1)
                 (apply (lambda (_stx98872_) (__AST-id-list?__0 _stx98872_))
                        _g103449_))
                ((##fx= _g103448_ 2)
                 (apply (lambda (_stx98876_ _tail?98877_)
                          (__AST-id-list?__% _stx98876_ _tail?98877_))
                        _g103449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g103449_))))))
    (define __AST-bind-list?
      (lambda (_stx98822_)
        (__AST-id-list?__%
         _stx98822_
         (lambda (_e98824_)
           (let ((_$e98826_ (__AST-null? _e98824_)))
             (if _$e98826_ _$e98826_ (__AST-id? _e98824_)))))))
    (define __AST-list?__%
      (lambda (_stx98775_ _tail?98776_)
        (let _lp98778_ ((_rest98780_ _stx98775_))
          (let* ((_$e98782_ _rest98780_)
                 (_$E9878498797_
                  (lambda ()
                    (let* ((_$E9878598792_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e98782_)))
                           (_rest98795_ _$e98782_))
                      (_tail?98776_ _rest98795_)))))
            (if (__AST-pair? _$e98782_)
                (let* ((_$tgt9878698800_ (__AST-e _$e98782_))
                       (_$hd9878798803_ (##car _$tgt9878698800_))
                       (_$tl9878898806_ (##cdr _$tgt9878698800_)))
                  (let ((_rest98810_ _$tl9878898806_))
                    (_lp98778_ _rest98810_)))
                (_$E9878498797_))))))
    (define __AST-list?__0
      (lambda (_stx98815_)
        (let ((_tail?98817_ __AST-null?))
          (__AST-list?__% _stx98815_ _tail?98817_))))
    (define __AST-list?
      (lambda _g103451_
        (let ((_g103450_ (##length _g103451_)))
          (cond ((##fx= _g103450_ 1)
                 (apply (lambda (_stx98815_) (__AST-list?__0 _stx98815_))
                        _g103451_))
                ((##fx= _g103450_ 2)
                 (apply (lambda (_stx98819_ _tail?98820_)
                          (__AST-list?__% _stx98819_ _tail?98820_))
                        _g103451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g103451_))))))
    (define __AST->list
      (lambda (_stx98740_)
        (let* ((_$e98742_ _stx98740_)
               (_$E9874498757_
                (lambda ()
                  (let* ((_$E9874598752_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e98742_)))
                         (_rest98755_ _$e98742_))
                    (__AST-e _rest98755_)))))
          (if (__AST-pair? _$e98742_)
              (let* ((_$tgt9874698760_ (__AST-e _$e98742_))
                     (_$hd9874798763_ (##car _$tgt9874698760_))
                     (_$tl9874898766_ (##cdr _$tgt9874698760_)))
                (let* ((_hd98770_ _$hd9874798763_)
                       (_rest98772_ _$tl9874898766_))
                  (cons _hd98770_ (__AST->list _rest98772_))))
              (_$E9874498757_)))))
    (define __AST->datum
      (lambda (_stx98738_)
        (if (##structure-instance-of? _stx98738_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx98738_))
            (if (pair? _stx98738_)
                (cons (__AST->datum (car _stx98738_))
                      (__AST->datum (cdr _stx98738_)))
                (if (vector? _stx98738_)
                    (vector-map __AST->datum _stx98738_)
                    (if (box? _stx98738_)
                        (box (__AST->datum (unbox _stx98738_)))
                        _stx98738_))))))
    (define get-readenv
      (lambda (_port98736_)
        (##make-readenv
         _port98736_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in98724_)
        (let ((_e98726_ (##read-datum-or-eof (get-readenv _in98724_))))
          (if (eof-object? (__AST-e _e98726_)) (__AST-e _e98726_) _e98726_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in98732_ (current-input-port))) (read-syntax__% _in98732_))))
    (define read-syntax
      (lambda _g103453_
        (let ((_g103452_ (##length _g103453_)))
          (cond ((##fx= _g103452_ 0)
                 (apply (lambda () (read-syntax__0)) _g103453_))
                ((##fx= _g103452_ 1)
                 (apply (lambda (_in98734_) (read-syntax__% _in98734_))
                        _g103453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g103453_))))))
    (define read-syntax-from-file
      (lambda (_path98719_)
        (let ((_r98721_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path98719_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r98721_)
              (cdr (__AST-e (vector-ref _r98721_ '1)))
              (error (err-code->string _r98721_) _path98719_)))))
    (define __wrap-syntax
      (lambda (_re98716_ _e98717_)
        (if (eof-object? _e98717_)
            _e98717_
            (##structure AST::t _e98717_ (##readenv->locat _re98716_)))))
    (define __unwrap-syntax (lambda (_re98713_ _e98714_) (__AST-e _e98714_)))
    (define __pp-syntax (lambda (_stx98711_) (pp (__AST->datum _stx98711_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt98709_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt98709_ '#t)
          (macro-readtable-bracket-handler-set! _rt98709_ '@list)
          (macro-readtable-brace-handler-set! _rt98709_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt98709_
           '#\!
           __read-sharp-bang)
          _rt98709_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt98705_ _kw98706_)
        (macro-readtable-bracket-handler-set! _rt98705_ _kw98706_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt98702_ _kw98703_)
        (macro-readtable-brace-handler-set! _rt98702_ _kw98703_)))
    (define __read-sharp-bang
      (lambda (_re98693_ _next98694_ _start-pos98695_)
        (if (eq? _start-pos98695_ '0)
            (let* ((_line98697_
                    (##read-line
                     (macro-readenv-port _re98693_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line98699_
                    (substring _line98697_ '1 (string-length _line98697_))))
              (macro-readenv-script-line-set! _re98693_ _script-line98699_)
              (##script-marker))
            (##read-sharp-bang _re98693_ _next98694_ _start-pos98695_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj98691_)
        (if (source-location? _obj98691_)
            (string? (##locat-container _obj98691_))
            '#f)))
    (define source-location-path
      (lambda (_obj98689_)
        (if (##locat? _obj98689_)
            (##container->path (##locat-container _obj98689_))
            '#f)))))
