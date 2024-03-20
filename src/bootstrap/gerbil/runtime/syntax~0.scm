(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710954836)
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
      (lambda _$args76514_ (apply make-instance SyntaxError::t _$args76514_)))
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
      (lambda (_self76417_ _port76418_)
        (letrec ((_location76420_
                  (lambda ()
                    (let _lp76474_ ((_rest76476_
                                     (##unchecked-structure-ref
                                      _self76417_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7647776485_ _rest76476_)
                             (_else7647976493_ (lambda () '#f))
                             (_K7648176502_
                              (lambda (_rest76496_ _hd76497_)
                                (let ((_$e76499_ (__AST-source _hd76497_)))
                                  (if _$e76499_
                                      _$e76499_
                                      (_lp76474_ _rest76496_))))))
                        (if (##pair? _rest7647776485_)
                            (let ((_hd7648276505_ (##car _rest7647776485_))
                                  (_tl7648376507_ (##cdr _rest7647776485_)))
                              (let* ((_hd76510_ _hd7648276505_)
                                     (_rest76512_ _tl7648376507_))
                                (_K7648176502_ _rest76512_ _hd76510_)))
                            (_else7647976493_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e76423_ (_location76420_)))
               (if _$e76423_
                   ((lambda (_where76426_)
                      (##display-locat _where76426_ '#t (current-output-port)))
                    _$e76423_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e76428_
                    (##unchecked-structure-ref
                     _self76417_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e76428_
                   ((lambda (_where76431_)
                      (displayln
                       '" at "
                       _where76431_
                       '": "
                       (##unchecked-structure-ref
                        _self76417_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e76428_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self76417_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7643276440_
                     (##unchecked-structure-ref
                      _self76417_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7643476448_ (lambda () '#!void))
                    (_K7643676461_
                     (lambda (_rest76451_ _stx76452_)
                       (display '"... form:   ")
                       (__pp-syntax _stx76452_)
                       (for-each
                        (lambda (_detail76454_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail76454_))
                          (let ((_$e76456_ (__AST-source _detail76454_)))
                            (if _$e76456_
                                ((lambda (_loc76459_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc76459_
                                    '#t
                                    (current-output-port)))
                                 _$e76456_)
                                '#!void))
                          (newline))
                        _rest76451_))))
               (if (##pair? _g7643276440_)
                   (let ((_hd7643776464_ (##car _g7643276440_))
                         (_tl7643876466_ (##cdr _g7643276440_)))
                     (let* ((_stx76469_ _hd7643776464_)
                            (_rest76471_ _tl7643876466_))
                       (_K7643676461_ _rest76471_ _stx76469_)))
                   '#!void)))
           current-output-port
           _port76418_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message76288_
               _irritants76289_
               _where76290_
               _context76291_
               _marks76292_
               _phi76293_)
        (let ((__obj76609
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj76609
           _message76288_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76609
           _irritants76289_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76609
           _where76290_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76609
           _context76291_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76609
           _marks76292_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76609
           _phi76293_
           '5
           SyntaxError::t
           '#f)
          __obj76609)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where76283_ _message76284_ _stx76285_ . _details76286_)
        (raise (make-syntax-error
                _message76284_
                (cons _stx76285_ _details76286_)
                _where76283_
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
      (lambda _$args76280_ (apply make-instance AST::t _$args76280_)))
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
      (lambda (_stx76278_)
        (if (##structure-instance-of? _stx76278_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx76278_ '1 AST::t '#f)
            _stx76278_)))
    (define __AST-source
      (lambda (_stx76272_)
        (let _lp76274_ ((_src76276_ _stx76272_))
          (if (##structure-instance-of? _src76276_ 'gerbil#AST::t)
              (_lp76274_ (##unchecked-structure-ref _src76276_ '2 AST::t '#f))
              (if (##locat? _src76276_) _src76276_ '#f)))))
    (define __AST
      (lambda (_e76264_ _src-stx76265_)
        (let ((_src76267_ (__AST-source _src-stx76265_)))
          (if (or (##structure-instance-of? _e76264_ 'gerbil#AST::t)
                  (not _src76267_))
              _e76264_
              (##structure AST::t _e76264_ _src76267_)))))
    (define __AST-eq?
      (lambda (_stx76261_ _obj76262_) (eq? (__AST-e _stx76261_) _obj76262_)))
    (define __AST-pair? (lambda (_stx76259_) (pair? (__AST-e _stx76259_))))
    (define __AST-null? (lambda (_stx76257_) (null? (__AST-e _stx76257_))))
    (define __AST-datum?
      (lambda (_stx76238_)
        (let* ((_e76240_ (__AST-e _stx76238_)) (_$e76242_ (number? _e76240_)))
          (if _$e76242_
              _$e76242_
              (let ((_$e76245_ (string? _e76240_)))
                (if _$e76245_
                    _$e76245_
                    (let ((_$e76248_ (char? _e76240_)))
                      (if _$e76248_
                          _$e76248_
                          (let ((_$e76251_ (keyword? _e76240_)))
                            (if _$e76251_
                                _$e76251_
                                (let ((_$e76254_ (boolean? _e76240_)))
                                  (if _$e76254_
                                      _$e76254_
                                      (eq? _e76240_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx76236_) (symbol? (__AST-e _stx76236_))))
    (define __AST-id-list?__%
      (lambda (_stx76187_ _tail?76188_)
        (let _lp76190_ ((_rest76192_ _stx76187_))
          (let* ((_$e76194_ _rest76192_)
                 (_$E7619676209_
                  (lambda ()
                    (let* ((_$E7619776204_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76194_)))
                           (_rest76207_ _$e76194_))
                      (_tail?76188_ _rest76207_)))))
            (if (__AST-pair? _$e76194_)
                (let* ((_$tgt7619876212_ (__AST-e _$e76194_))
                       (_$hd7619976215_ (##car _$tgt7619876212_))
                       (_$tl7620076218_ (##cdr _$tgt7619876212_)))
                  (let* ((_hd76222_ _$hd7619976215_)
                         (_rest76224_ _$tl7620076218_))
                    (if (__AST-id? _hd76222_) (_lp76190_ _rest76224_) '#f)))
                (_$E7619676209_))))))
    (define __AST-id-list?__0
      (lambda (_stx76229_)
        (let ((_tail?76231_ __AST-null?))
          (__AST-id-list?__% _stx76229_ _tail?76231_))))
    (define __AST-id-list?
      (lambda _g76612_
        (let ((_g76611_ (##length _g76612_)))
          (cond ((##fx= _g76611_ 1)
                 (apply (lambda (_stx76229_) (__AST-id-list?__0 _stx76229_))
                        _g76612_))
                ((##fx= _g76611_ 2)
                 (apply (lambda (_stx76233_ _tail?76234_)
                          (__AST-id-list?__% _stx76233_ _tail?76234_))
                        _g76612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g76612_))))))
    (define __AST-bind-list?
      (lambda (_stx76179_)
        (__AST-id-list?__%
         _stx76179_
         (lambda (_e76181_)
           (let ((_$e76183_ (__AST-null? _e76181_)))
             (if _$e76183_ _$e76183_ (__AST-id? _e76181_)))))))
    (define __AST-list?__%
      (lambda (_stx76132_ _tail?76133_)
        (let _lp76135_ ((_rest76137_ _stx76132_))
          (let* ((_$e76139_ _rest76137_)
                 (_$E7614176154_
                  (lambda ()
                    (let* ((_$E7614276149_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76139_)))
                           (_rest76152_ _$e76139_))
                      (_tail?76133_ _rest76152_)))))
            (if (__AST-pair? _$e76139_)
                (let* ((_$tgt7614376157_ (__AST-e _$e76139_))
                       (_$hd7614476160_ (##car _$tgt7614376157_))
                       (_$tl7614576163_ (##cdr _$tgt7614376157_)))
                  (let ((_rest76167_ _$tl7614576163_))
                    (_lp76135_ _rest76167_)))
                (_$E7614176154_))))))
    (define __AST-list?__0
      (lambda (_stx76172_)
        (let ((_tail?76174_ __AST-null?))
          (__AST-list?__% _stx76172_ _tail?76174_))))
    (define __AST-list?
      (lambda _g76614_
        (let ((_g76613_ (##length _g76614_)))
          (cond ((##fx= _g76613_ 1)
                 (apply (lambda (_stx76172_) (__AST-list?__0 _stx76172_))
                        _g76614_))
                ((##fx= _g76613_ 2)
                 (apply (lambda (_stx76176_ _tail?76177_)
                          (__AST-list?__% _stx76176_ _tail?76177_))
                        _g76614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g76614_))))))
    (define __AST->list
      (lambda (_stx76097_)
        (let* ((_$e76099_ _stx76097_)
               (_$E7610176114_
                (lambda ()
                  (let* ((_$E7610276109_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e76099_)))
                         (_rest76112_ _$e76099_))
                    (__AST-e _rest76112_)))))
          (if (__AST-pair? _$e76099_)
              (let* ((_$tgt7610376117_ (__AST-e _$e76099_))
                     (_$hd7610476120_ (##car _$tgt7610376117_))
                     (_$tl7610576123_ (##cdr _$tgt7610376117_)))
                (let* ((_hd76127_ _$hd7610476120_)
                       (_rest76129_ _$tl7610576123_))
                  (cons _hd76127_ (__AST->list _rest76129_))))
              (_$E7610176114_)))))
    (define __AST->datum
      (lambda (_stx76095_)
        (if (##structure-instance-of? _stx76095_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx76095_))
            (if (pair? _stx76095_)
                (cons (__AST->datum (car _stx76095_))
                      (__AST->datum (cdr _stx76095_)))
                (if (vector? _stx76095_)
                    (vector-map __AST->datum _stx76095_)
                    (if (box? _stx76095_)
                        (box (__AST->datum (unbox _stx76095_)))
                        _stx76095_))))))
    (define get-readenv
      (lambda (_port76093_)
        (##make-readenv
         _port76093_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in76081_)
        (let ((_e76083_ (##read-datum-or-eof (get-readenv _in76081_))))
          (if (eof-object? (__AST-e _e76083_)) (__AST-e _e76083_) _e76083_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in76089_ (current-input-port))) (read-syntax__% _in76089_))))
    (define read-syntax
      (lambda _g76616_
        (let ((_g76615_ (##length _g76616_)))
          (cond ((##fx= _g76615_ 0)
                 (apply (lambda () (read-syntax__0)) _g76616_))
                ((##fx= _g76615_ 1)
                 (apply (lambda (_in76091_) (read-syntax__% _in76091_))
                        _g76616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g76616_))))))
    (define read-syntax-from-file
      (lambda (_path76076_)
        (let ((_r76078_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path76076_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r76078_)
              (cdr (__AST-e (vector-ref _r76078_ '1)))
              (error (err-code->string _r76078_) _path76076_)))))
    (define __wrap-syntax
      (lambda (_re76073_ _e76074_)
        (if (eof-object? _e76074_)
            _e76074_
            (##structure AST::t _e76074_ (##readenv->locat _re76073_)))))
    (define __unwrap-syntax (lambda (_re76070_ _e76071_) (__AST-e _e76071_)))
    (define __pp-syntax (lambda (_stx76068_) (pp (__AST->datum _stx76068_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt76066_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt76066_ '#t)
          (macro-readtable-bracket-handler-set! _rt76066_ '@list)
          (macro-readtable-brace-handler-set! _rt76066_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt76066_
           '#\!
           __read-sharp-bang)
          _rt76066_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt76062_ _kw76063_)
        (macro-readtable-bracket-handler-set! _rt76062_ _kw76063_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt76059_ _kw76060_)
        (macro-readtable-brace-handler-set! _rt76059_ _kw76060_)))
    (define __read-sharp-bang
      (lambda (_re76050_ _next76051_ _start-pos76052_)
        (if (eq? _start-pos76052_ '0)
            (let* ((_line76054_
                    (##read-line
                     (macro-readenv-port _re76050_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line76056_
                    (substring _line76054_ '1 (string-length _line76054_))))
              (macro-readenv-script-line-set! _re76050_ _script-line76056_)
              (##script-marker))
            (##read-sharp-bang _re76050_ _next76051_ _start-pos76052_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj76048_)
        (if (source-location? _obj76048_)
            (string? (##locat-container _obj76048_))
            '#f)))
    (define source-location-path
      (lambda (_obj76046_)
        (if (##locat? _obj76046_)
            (##container->path (##locat-container _obj76046_))
            '#f)))))
