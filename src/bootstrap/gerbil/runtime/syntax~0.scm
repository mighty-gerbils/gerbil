(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710781148)
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
      (lambda _$args76528_ (apply make-instance SyntaxError::t _$args76528_)))
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
      (lambda (_self76431_ _port76432_)
        (letrec ((_location76434_
                  (lambda ()
                    (let _lp76488_ ((_rest76490_
                                     (##unchecked-structure-ref
                                      _self76431_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7649176499_ _rest76490_)
                             (_else7649376507_ (lambda () '#f))
                             (_K7649576516_
                              (lambda (_rest76510_ _hd76511_)
                                (let ((_$e76513_ (__AST-source _hd76511_)))
                                  (if _$e76513_
                                      _$e76513_
                                      (_lp76488_ _rest76510_))))))
                        (if (##pair? _rest7649176499_)
                            (let ((_hd7649676519_ (##car _rest7649176499_))
                                  (_tl7649776521_ (##cdr _rest7649176499_)))
                              (let* ((_hd76524_ _hd7649676519_)
                                     (_rest76526_ _tl7649776521_))
                                (_K7649576516_ _rest76526_ _hd76524_)))
                            (_else7649376507_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e76437_ (_location76434_)))
               (if _$e76437_
                   ((lambda (_where76440_)
                      (##display-locat _where76440_ '#t (current-output-port)))
                    _$e76437_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e76442_
                    (##unchecked-structure-ref
                     _self76431_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e76442_
                   ((lambda (_where76445_)
                      (displayln
                       '" at "
                       _where76445_
                       '": "
                       (##unchecked-structure-ref
                        _self76431_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e76442_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self76431_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7644676454_
                     (##unchecked-structure-ref
                      _self76431_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7644876462_ (lambda () '#!void))
                    (_K7645076475_
                     (lambda (_rest76465_ _stx76466_)
                       (display '"... form:   ")
                       (__pp-syntax _stx76466_)
                       (for-each
                        (lambda (_detail76468_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail76468_))
                          (let ((_$e76470_ (__AST-source _detail76468_)))
                            (if _$e76470_
                                ((lambda (_loc76473_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc76473_
                                    '#t
                                    (current-output-port)))
                                 _$e76470_)
                                '#!void))
                          (newline))
                        _rest76465_))))
               (if (##pair? _g7644676454_)
                   (let ((_hd7645176478_ (##car _g7644676454_))
                         (_tl7645276480_ (##cdr _g7644676454_)))
                     (let* ((_stx76483_ _hd7645176478_)
                            (_rest76485_ _tl7645276480_))
                       (_K7645076475_ _rest76485_ _stx76483_)))
                   '#!void)))
           current-output-port
           _port76432_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message76302_
               _irritants76303_
               _where76304_
               _context76305_
               _marks76306_
               _phi76307_)
        (let ((__obj76623
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj76623
           _message76302_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76623
           _irritants76303_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76623
           _where76304_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76623
           _context76305_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76623
           _marks76306_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76623
           _phi76307_
           '5
           SyntaxError::t
           '#f)
          __obj76623)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where76297_ _message76298_ _stx76299_ . _details76300_)
        (raise (make-syntax-error
                _message76298_
                (cons _stx76299_ _details76300_)
                _where76297_
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
      (lambda _$args76294_ (apply make-instance AST::t _$args76294_)))
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
      (lambda (_stx76292_)
        (if (##structure-instance-of? _stx76292_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx76292_ '1 AST::t '#f)
            _stx76292_)))
    (define __AST-source
      (lambda (_stx76286_)
        (let _lp76288_ ((_src76290_ _stx76286_))
          (if (##structure-instance-of? _src76290_ 'gerbil#AST::t)
              (_lp76288_ (##unchecked-structure-ref _src76290_ '2 AST::t '#f))
              (if (##locat? _src76290_) _src76290_ '#f)))))
    (define __AST
      (lambda (_e76278_ _src-stx76279_)
        (let ((_src76281_ (__AST-source _src-stx76279_)))
          (if (or (##structure-instance-of? _e76278_ 'gerbil#AST::t)
                  (not _src76281_))
              _e76278_
              (##structure AST::t _e76278_ _src76281_)))))
    (define __AST-eq?
      (lambda (_stx76275_ _obj76276_) (eq? (__AST-e _stx76275_) _obj76276_)))
    (define __AST-pair? (lambda (_stx76273_) (pair? (__AST-e _stx76273_))))
    (define __AST-null? (lambda (_stx76271_) (null? (__AST-e _stx76271_))))
    (define __AST-datum?
      (lambda (_stx76252_)
        (let* ((_e76254_ (__AST-e _stx76252_)) (_$e76256_ (number? _e76254_)))
          (if _$e76256_
              _$e76256_
              (let ((_$e76259_ (string? _e76254_)))
                (if _$e76259_
                    _$e76259_
                    (let ((_$e76262_ (char? _e76254_)))
                      (if _$e76262_
                          _$e76262_
                          (let ((_$e76265_ (keyword? _e76254_)))
                            (if _$e76265_
                                _$e76265_
                                (let ((_$e76268_ (boolean? _e76254_)))
                                  (if _$e76268_
                                      _$e76268_
                                      (eq? _e76254_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx76250_) (symbol? (__AST-e _stx76250_))))
    (define __AST-id-list?__%
      (lambda (_stx76201_ _tail?76202_)
        (let _lp76204_ ((_rest76206_ _stx76201_))
          (let* ((_$e76208_ _rest76206_)
                 (_$E7621076223_
                  (lambda ()
                    (let* ((_$E7621176218_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76208_)))
                           (_rest76221_ _$e76208_))
                      (_tail?76202_ _rest76221_)))))
            (if (__AST-pair? _$e76208_)
                (let* ((_$tgt7621276226_ (__AST-e _$e76208_))
                       (_$hd7621376229_ (##car _$tgt7621276226_))
                       (_$tl7621476232_ (##cdr _$tgt7621276226_)))
                  (let* ((_hd76236_ _$hd7621376229_)
                         (_rest76238_ _$tl7621476232_))
                    (if (__AST-id? _hd76236_) (_lp76204_ _rest76238_) '#f)))
                (_$E7621076223_))))))
    (define __AST-id-list?__0
      (lambda (_stx76243_)
        (let ((_tail?76245_ __AST-null?))
          (__AST-id-list?__% _stx76243_ _tail?76245_))))
    (define __AST-id-list?
      (lambda _g76626_
        (let ((_g76625_ (##length _g76626_)))
          (cond ((##fx= _g76625_ 1)
                 (apply (lambda (_stx76243_) (__AST-id-list?__0 _stx76243_))
                        _g76626_))
                ((##fx= _g76625_ 2)
                 (apply (lambda (_stx76247_ _tail?76248_)
                          (__AST-id-list?__% _stx76247_ _tail?76248_))
                        _g76626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g76626_))))))
    (define __AST-bind-list?
      (lambda (_stx76193_)
        (__AST-id-list?__%
         _stx76193_
         (lambda (_e76195_)
           (let ((_$e76197_ (__AST-null? _e76195_)))
             (if _$e76197_ _$e76197_ (__AST-id? _e76195_)))))))
    (define __AST-list?__%
      (lambda (_stx76146_ _tail?76147_)
        (let _lp76149_ ((_rest76151_ _stx76146_))
          (let* ((_$e76153_ _rest76151_)
                 (_$E7615576168_
                  (lambda ()
                    (let* ((_$E7615676163_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76153_)))
                           (_rest76166_ _$e76153_))
                      (_tail?76147_ _rest76166_)))))
            (if (__AST-pair? _$e76153_)
                (let* ((_$tgt7615776171_ (__AST-e _$e76153_))
                       (_$hd7615876174_ (##car _$tgt7615776171_))
                       (_$tl7615976177_ (##cdr _$tgt7615776171_)))
                  (let ((_rest76181_ _$tl7615976177_))
                    (_lp76149_ _rest76181_)))
                (_$E7615576168_))))))
    (define __AST-list?__0
      (lambda (_stx76186_)
        (let ((_tail?76188_ __AST-null?))
          (__AST-list?__% _stx76186_ _tail?76188_))))
    (define __AST-list?
      (lambda _g76628_
        (let ((_g76627_ (##length _g76628_)))
          (cond ((##fx= _g76627_ 1)
                 (apply (lambda (_stx76186_) (__AST-list?__0 _stx76186_))
                        _g76628_))
                ((##fx= _g76627_ 2)
                 (apply (lambda (_stx76190_ _tail?76191_)
                          (__AST-list?__% _stx76190_ _tail?76191_))
                        _g76628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g76628_))))))
    (define __AST->list
      (lambda (_stx76111_)
        (let* ((_$e76113_ _stx76111_)
               (_$E7611576128_
                (lambda ()
                  (let* ((_$E7611676123_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e76113_)))
                         (_rest76126_ _$e76113_))
                    (__AST-e _rest76126_)))))
          (if (__AST-pair? _$e76113_)
              (let* ((_$tgt7611776131_ (__AST-e _$e76113_))
                     (_$hd7611876134_ (##car _$tgt7611776131_))
                     (_$tl7611976137_ (##cdr _$tgt7611776131_)))
                (let* ((_hd76141_ _$hd7611876134_)
                       (_rest76143_ _$tl7611976137_))
                  (cons _hd76141_ (__AST->list _rest76143_))))
              (_$E7611576128_)))))
    (define __AST->datum
      (lambda (_stx76109_)
        (if (##structure-instance-of? _stx76109_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx76109_))
            (if (pair? _stx76109_)
                (cons (__AST->datum (car _stx76109_))
                      (__AST->datum (cdr _stx76109_)))
                (if (vector? _stx76109_)
                    (vector-map __AST->datum _stx76109_)
                    (if (box? _stx76109_)
                        (box (__AST->datum (unbox _stx76109_)))
                        _stx76109_))))))
    (define get-readenv
      (lambda (_port76107_)
        (##make-readenv
         _port76107_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in76095_)
        (let ((_e76097_ (##read-datum-or-eof (get-readenv _in76095_))))
          (if (eof-object? (__AST-e _e76097_)) (__AST-e _e76097_) _e76097_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in76103_ (current-input-port))) (read-syntax__% _in76103_))))
    (define read-syntax
      (lambda _g76630_
        (let ((_g76629_ (##length _g76630_)))
          (cond ((##fx= _g76629_ 0)
                 (apply (lambda () (read-syntax__0)) _g76630_))
                ((##fx= _g76629_ 1)
                 (apply (lambda (_in76105_) (read-syntax__% _in76105_))
                        _g76630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g76630_))))))
    (define read-syntax-from-file
      (lambda (_path76090_)
        (let ((_r76092_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path76090_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r76092_)
              (cdr (__AST-e (vector-ref _r76092_ '1)))
              (error (err-code->string _r76092_) _path76090_)))))
    (define __wrap-syntax
      (lambda (_re76087_ _e76088_)
        (if (eof-object? _e76088_)
            _e76088_
            (##structure AST::t _e76088_ (##readenv->locat _re76087_)))))
    (define __unwrap-syntax (lambda (_re76084_ _e76085_) (__AST-e _e76085_)))
    (define __pp-syntax (lambda (_stx76082_) (pp (__AST->datum _stx76082_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt76080_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt76080_ '#t)
          (macro-readtable-bracket-handler-set! _rt76080_ '@list)
          (macro-readtable-brace-handler-set! _rt76080_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt76080_
           '#\!
           __read-sharp-bang)
          _rt76080_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt76076_ _kw76077_)
        (macro-readtable-bracket-handler-set! _rt76076_ _kw76077_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt76073_ _kw76074_)
        (macro-readtable-brace-handler-set! _rt76073_ _kw76074_)))
    (define __read-sharp-bang
      (lambda (_re76064_ _next76065_ _start-pos76066_)
        (if (eq? _start-pos76066_ '0)
            (let* ((_line76068_
                    (##read-line
                     (macro-readenv-port _re76064_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line76070_
                    (substring _line76068_ '1 (string-length _line76068_))))
              (macro-readenv-script-line-set! _re76064_ _script-line76070_)
              (##script-marker))
            (##read-sharp-bang _re76064_ _next76065_ _start-pos76066_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj76062_)
        (if (source-location? _obj76062_)
            (string? (##locat-container _obj76062_))
            '#f)))
    (define source-location-path
      (lambda (_obj76060_)
        (if (##locat? _obj76060_)
            (##container->path (##locat-container _obj76060_))
            '#f)))))
