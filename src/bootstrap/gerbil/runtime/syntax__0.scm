(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710687284)
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
      (lambda _$args76143_ (apply make-instance SyntaxError::t _$args76143_)))
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
      (lambda (_self76046_ _port76047_)
        (letrec ((_location76049_
                  (lambda ()
                    (let _lp76103_ ((_rest76105_
                                     (##unchecked-structure-ref
                                      _self76046_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7610676114_ _rest76105_)
                             (_else7610876122_ (lambda () '#f))
                             (_K7611076131_
                              (lambda (_rest76125_ _hd76126_)
                                (let ((_$e76128_ (__AST-source _hd76126_)))
                                  (if _$e76128_
                                      _$e76128_
                                      (_lp76103_ _rest76125_))))))
                        (if (##pair? _rest7610676114_)
                            (let ((_hd7611176134_ (##car _rest7610676114_))
                                  (_tl7611276136_ (##cdr _rest7610676114_)))
                              (let* ((_hd76139_ _hd7611176134_)
                                     (_rest76141_ _tl7611276136_))
                                (_K7611076131_ _rest76141_ _hd76139_)))
                            (_else7610876122_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e76052_ (_location76049_)))
               (if _$e76052_
                   ((lambda (_where76055_)
                      (##display-locat _where76055_ '#t (current-output-port)))
                    _$e76052_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e76057_
                    (##unchecked-structure-ref
                     _self76046_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e76057_
                   ((lambda (_where76060_)
                      (displayln
                       '" at "
                       _where76060_
                       '": "
                       (##unchecked-structure-ref
                        _self76046_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e76057_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self76046_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7606176069_
                     (##unchecked-structure-ref
                      _self76046_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7606376077_ (lambda () '#!void))
                    (_K7606576090_
                     (lambda (_rest76080_ _stx76081_)
                       (display '"... form:   ")
                       (__pp-syntax _stx76081_)
                       (for-each
                        (lambda (_detail76083_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail76083_))
                          (let ((_$e76085_ (__AST-source _detail76083_)))
                            (if _$e76085_
                                ((lambda (_loc76088_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc76088_
                                    '#t
                                    (current-output-port)))
                                 _$e76085_)
                                '#!void))
                          (newline))
                        _rest76080_))))
               (if (##pair? _g7606176069_)
                   (let ((_hd7606676093_ (##car _g7606176069_))
                         (_tl7606776095_ (##cdr _g7606176069_)))
                     (let* ((_stx76098_ _hd7606676093_)
                            (_rest76100_ _tl7606776095_))
                       (_K7606576090_ _rest76100_ _stx76098_)))
                   '#!void)))
           current-output-port
           _port76047_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message75917_
               _irritants75918_
               _where75919_
               _context75920_
               _marks75921_
               _phi75922_)
        (let ((__obj76238
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj76238
           _message75917_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76238
           _irritants75918_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76238
           _where75919_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76238
           _context75920_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76238
           _marks75921_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76238
           _phi75922_
           '5
           SyntaxError::t
           '#f)
          __obj76238)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where75912_ _message75913_ _stx75914_ . _details75915_)
        (raise (make-syntax-error
                _message75913_
                (cons _stx75914_ _details75915_)
                _where75912_
                '#f
                '#f
                '#f))))
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
      (lambda _$args75909_ (apply make-instance AST::t _$args75909_)))
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
      (lambda (_stx75907_)
        (if (##structure-instance-of? _stx75907_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx75907_ '1 AST::t '#f)
            _stx75907_)))
    (define __AST-source
      (lambda (_stx75901_)
        (let _lp75903_ ((_src75905_ _stx75901_))
          (if (##structure-instance-of? _src75905_ 'gerbil#AST::t)
              (_lp75903_ (##unchecked-structure-ref _src75905_ '2 AST::t '#f))
              (if (##locat? _src75905_) _src75905_ '#f)))))
    (define __AST
      (lambda (_e75893_ _src-stx75894_)
        (let ((_src75896_ (__AST-source _src-stx75894_)))
          (if (or (##structure-instance-of? _e75893_ 'gerbil#AST::t)
                  (not _src75896_))
              _e75893_
              (##structure AST::t _e75893_ _src75896_)))))
    (define __AST-eq?
      (lambda (_stx75890_ _obj75891_) (eq? (__AST-e _stx75890_) _obj75891_)))
    (define __AST-pair? (lambda (_stx75888_) (pair? (__AST-e _stx75888_))))
    (define __AST-null? (lambda (_stx75886_) (null? (__AST-e _stx75886_))))
    (define __AST-datum?
      (lambda (_stx75867_)
        (let* ((_e75869_ (__AST-e _stx75867_)) (_$e75871_ (number? _e75869_)))
          (if _$e75871_
              _$e75871_
              (let ((_$e75874_ (string? _e75869_)))
                (if _$e75874_
                    _$e75874_
                    (let ((_$e75877_ (char? _e75869_)))
                      (if _$e75877_
                          _$e75877_
                          (let ((_$e75880_ (keyword? _e75869_)))
                            (if _$e75880_
                                _$e75880_
                                (let ((_$e75883_ (boolean? _e75869_)))
                                  (if _$e75883_
                                      _$e75883_
                                      (eq? _e75869_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx75865_) (symbol? (__AST-e _stx75865_))))
    (define __AST-id-list?__%
      (lambda (_stx75816_ _tail?75817_)
        (let _lp75819_ ((_rest75821_ _stx75816_))
          (let* ((_$e75823_ _rest75821_)
                 (_$E7582575838_
                  (lambda ()
                    (let* ((_$E7582675833_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e75823_)))
                           (_rest75836_ _$e75823_))
                      (_tail?75817_ _rest75836_)))))
            (if (__AST-pair? _$e75823_)
                (let* ((_$tgt7582775841_ (__AST-e _$e75823_))
                       (_$hd7582875844_ (##car _$tgt7582775841_))
                       (_$tl7582975847_ (##cdr _$tgt7582775841_)))
                  (let* ((_hd75851_ _$hd7582875844_)
                         (_rest75853_ _$tl7582975847_))
                    (if (__AST-id? _hd75851_) (_lp75819_ _rest75853_) '#f)))
                (_$E7582575838_))))))
    (define __AST-id-list?__0
      (lambda (_stx75858_)
        (let ((_tail?75860_ __AST-null?))
          (__AST-id-list?__% _stx75858_ _tail?75860_))))
    (define __AST-id-list?
      (lambda _g76241_
        (let ((_g76240_ (##length _g76241_)))
          (cond ((##fx= _g76240_ 1)
                 (apply (lambda (_stx75858_) (__AST-id-list?__0 _stx75858_))
                        _g76241_))
                ((##fx= _g76240_ 2)
                 (apply (lambda (_stx75862_ _tail?75863_)
                          (__AST-id-list?__% _stx75862_ _tail?75863_))
                        _g76241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g76241_))))))
    (define __AST-bind-list?
      (lambda (_stx75808_)
        (__AST-id-list?__%
         _stx75808_
         (lambda (_e75810_)
           (let ((_$e75812_ (__AST-null? _e75810_)))
             (if _$e75812_ _$e75812_ (__AST-id? _e75810_)))))))
    (define __AST-list?__%
      (lambda (_stx75761_ _tail?75762_)
        (let _lp75764_ ((_rest75766_ _stx75761_))
          (let* ((_$e75768_ _rest75766_)
                 (_$E7577075783_
                  (lambda ()
                    (let* ((_$E7577175778_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e75768_)))
                           (_rest75781_ _$e75768_))
                      (_tail?75762_ _rest75781_)))))
            (if (__AST-pair? _$e75768_)
                (let* ((_$tgt7577275786_ (__AST-e _$e75768_))
                       (_$hd7577375789_ (##car _$tgt7577275786_))
                       (_$tl7577475792_ (##cdr _$tgt7577275786_)))
                  (let ((_rest75796_ _$tl7577475792_))
                    (_lp75764_ _rest75796_)))
                (_$E7577075783_))))))
    (define __AST-list?__0
      (lambda (_stx75801_)
        (let ((_tail?75803_ __AST-null?))
          (__AST-list?__% _stx75801_ _tail?75803_))))
    (define __AST-list?
      (lambda _g76243_
        (let ((_g76242_ (##length _g76243_)))
          (cond ((##fx= _g76242_ 1)
                 (apply (lambda (_stx75801_) (__AST-list?__0 _stx75801_))
                        _g76243_))
                ((##fx= _g76242_ 2)
                 (apply (lambda (_stx75805_ _tail?75806_)
                          (__AST-list?__% _stx75805_ _tail?75806_))
                        _g76243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g76243_))))))
    (define __AST->list
      (lambda (_stx75726_)
        (let* ((_$e75728_ _stx75726_)
               (_$E7573075743_
                (lambda ()
                  (let* ((_$E7573175738_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e75728_)))
                         (_rest75741_ _$e75728_))
                    (__AST-e _rest75741_)))))
          (if (__AST-pair? _$e75728_)
              (let* ((_$tgt7573275746_ (__AST-e _$e75728_))
                     (_$hd7573375749_ (##car _$tgt7573275746_))
                     (_$tl7573475752_ (##cdr _$tgt7573275746_)))
                (let* ((_hd75756_ _$hd7573375749_)
                       (_rest75758_ _$tl7573475752_))
                  (cons _hd75756_ (__AST->list _rest75758_))))
              (_$E7573075743_)))))
    (define __AST->datum
      (lambda (_stx75724_)
        (if (##structure-instance-of? _stx75724_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx75724_))
            (if (pair? _stx75724_)
                (cons (__AST->datum (car _stx75724_))
                      (__AST->datum (cdr _stx75724_)))
                (if (vector? _stx75724_)
                    (vector-map __AST->datum _stx75724_)
                    (if (box? _stx75724_)
                        (box (__AST->datum (unbox _stx75724_)))
                        _stx75724_))))))
    (define get-readenv
      (lambda (_port75722_)
        (##make-readenv
         _port75722_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in75710_)
        (let ((_e75712_ (##read-datum-or-eof (get-readenv _in75710_))))
          (if (eof-object? (__AST-e _e75712_)) (__AST-e _e75712_) _e75712_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in75718_ (current-input-port))) (read-syntax__% _in75718_))))
    (define read-syntax
      (lambda _g76245_
        (let ((_g76244_ (##length _g76245_)))
          (cond ((##fx= _g76244_ 0)
                 (apply (lambda () (read-syntax__0)) _g76245_))
                ((##fx= _g76244_ 1)
                 (apply (lambda (_in75720_) (read-syntax__% _in75720_))
                        _g76245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g76245_))))))
    (define read-syntax-from-file
      (lambda (_path75705_)
        (let ((_r75707_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path75705_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r75707_)
              (cdr (__AST-e (vector-ref _r75707_ '1)))
              (error (err-code->string _r75707_) _path75705_)))))
    (define __wrap-syntax
      (lambda (_re75702_ _e75703_)
        (if (eof-object? _e75703_)
            _e75703_
            (##structure AST::t _e75703_ (##readenv->locat _re75702_)))))
    (define __unwrap-syntax (lambda (_re75699_ _e75700_) (__AST-e _e75700_)))
    (define __pp-syntax (lambda (_stx75697_) (pp (__AST->datum _stx75697_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt75695_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt75695_ '#t)
          (macro-readtable-bracket-handler-set! _rt75695_ '@list)
          (macro-readtable-brace-handler-set! _rt75695_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt75695_
           '#\!
           __read-sharp-bang)
          _rt75695_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt75691_ _kw75692_)
        (macro-readtable-bracket-handler-set! _rt75691_ _kw75692_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt75688_ _kw75689_)
        (macro-readtable-brace-handler-set! _rt75688_ _kw75689_)))
    (define __read-sharp-bang
      (lambda (_re75679_ _next75680_ _start-pos75681_)
        (if (eq? _start-pos75681_ '0)
            (let* ((_line75683_
                    (##read-line
                     (macro-readenv-port _re75679_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line75685_
                    (substring _line75683_ '1 (string-length _line75683_))))
              (macro-readenv-script-line-set! _re75679_ _script-line75685_)
              (##script-marker))
            (##read-sharp-bang _re75679_ _next75680_ _start-pos75681_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj75677_)
        (if (source-location? _obj75677_)
            (string? (##locat-container _obj75677_))
            '#f)))
    (define source-location-path
      (lambda (_obj75675_)
        (if (##locat? _obj75675_)
            (##container->path (##locat-container _obj75675_))
            '#f)))))
