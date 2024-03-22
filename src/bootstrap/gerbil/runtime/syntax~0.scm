(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1711108655)
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
      (lambda _$args76523_ (apply make-instance SyntaxError::t _$args76523_)))
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
      (lambda (_self76426_ _port76427_)
        (letrec ((_location76429_
                  (lambda ()
                    (let _lp76483_ ((_rest76485_
                                     (##unchecked-structure-ref
                                      _self76426_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7648676494_ _rest76485_)
                             (_else7648876502_ (lambda () '#f))
                             (_K7649076511_
                              (lambda (_rest76505_ _hd76506_)
                                (let ((_$e76508_ (__AST-source _hd76506_)))
                                  (if _$e76508_
                                      _$e76508_
                                      (_lp76483_ _rest76505_))))))
                        (if (##pair? _rest7648676494_)
                            (let ((_hd7649176514_ (##car _rest7648676494_))
                                  (_tl7649276516_ (##cdr _rest7648676494_)))
                              (let* ((_hd76519_ _hd7649176514_)
                                     (_rest76521_ _tl7649276516_))
                                (_K7649076511_ _rest76521_ _hd76519_)))
                            (_else7648876502_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e76432_ (_location76429_)))
               (if _$e76432_
                   ((lambda (_where76435_)
                      (##display-locat _where76435_ '#t (current-output-port)))
                    _$e76432_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e76437_
                    (##unchecked-structure-ref
                     _self76426_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e76437_
                   ((lambda (_where76440_)
                      (displayln
                       '" at "
                       _where76440_
                       '": "
                       (##unchecked-structure-ref
                        _self76426_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e76437_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self76426_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7644176449_
                     (##unchecked-structure-ref
                      _self76426_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7644376457_ (lambda () '#!void))
                    (_K7644576470_
                     (lambda (_rest76460_ _stx76461_)
                       (display '"... form:   ")
                       (__pp-syntax _stx76461_)
                       (for-each
                        (lambda (_detail76463_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail76463_))
                          (let ((_$e76465_ (__AST-source _detail76463_)))
                            (if _$e76465_
                                ((lambda (_loc76468_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc76468_
                                    '#t
                                    (current-output-port)))
                                 _$e76465_)
                                '#!void))
                          (newline))
                        _rest76460_))))
               (if (##pair? _g7644176449_)
                   (let ((_hd7644676473_ (##car _g7644176449_))
                         (_tl7644776475_ (##cdr _g7644176449_)))
                     (let* ((_stx76478_ _hd7644676473_)
                            (_rest76480_ _tl7644776475_))
                       (_K7644576470_ _rest76480_ _stx76478_)))
                   '#!void)))
           current-output-port
           _port76427_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message76297_
               _irritants76298_
               _where76299_
               _context76300_
               _marks76301_
               _phi76302_)
        (let ((__obj76618
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj76618
           _message76297_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76618
           _irritants76298_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76618
           _where76299_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76618
           _context76300_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76618
           _marks76301_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76618
           _phi76302_
           '5
           SyntaxError::t
           '#f)
          __obj76618)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where76292_ _message76293_ _stx76294_ . _details76295_)
        (raise (make-syntax-error
                _message76293_
                (cons _stx76294_ _details76295_)
                _where76292_
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
      (lambda _$args76289_ (apply make-instance AST::t _$args76289_)))
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
      (lambda (_stx76287_)
        (if (##structure-instance-of? _stx76287_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx76287_ '1 AST::t '#f)
            _stx76287_)))
    (define __AST-source
      (lambda (_stx76281_)
        (let _lp76283_ ((_src76285_ _stx76281_))
          (if (##structure-instance-of? _src76285_ 'gerbil#AST::t)
              (_lp76283_ (##unchecked-structure-ref _src76285_ '2 AST::t '#f))
              (if (##locat? _src76285_) _src76285_ '#f)))))
    (define __AST
      (lambda (_e76273_ _src-stx76274_)
        (let ((_src76276_ (__AST-source _src-stx76274_)))
          (if (or (##structure-instance-of? _e76273_ 'gerbil#AST::t)
                  (not _src76276_))
              _e76273_
              (##structure AST::t _e76273_ _src76276_)))))
    (define __AST-eq?
      (lambda (_stx76270_ _obj76271_) (eq? (__AST-e _stx76270_) _obj76271_)))
    (define __AST-pair? (lambda (_stx76268_) (pair? (__AST-e _stx76268_))))
    (define __AST-null? (lambda (_stx76266_) (null? (__AST-e _stx76266_))))
    (define __AST-datum?
      (lambda (_stx76247_)
        (let* ((_e76249_ (__AST-e _stx76247_)) (_$e76251_ (number? _e76249_)))
          (if _$e76251_
              _$e76251_
              (let ((_$e76254_ (string? _e76249_)))
                (if _$e76254_
                    _$e76254_
                    (let ((_$e76257_ (char? _e76249_)))
                      (if _$e76257_
                          _$e76257_
                          (let ((_$e76260_ (keyword? _e76249_)))
                            (if _$e76260_
                                _$e76260_
                                (let ((_$e76263_ (boolean? _e76249_)))
                                  (if _$e76263_
                                      _$e76263_
                                      (eq? _e76249_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx76245_) (symbol? (__AST-e _stx76245_))))
    (define __AST-id-list?__%
      (lambda (_stx76196_ _tail?76197_)
        (let _lp76199_ ((_rest76201_ _stx76196_))
          (let* ((_$e76203_ _rest76201_)
                 (_$E7620576218_
                  (lambda ()
                    (let* ((_$E7620676213_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76203_)))
                           (_rest76216_ _$e76203_))
                      (_tail?76197_ _rest76216_)))))
            (if (__AST-pair? _$e76203_)
                (let* ((_$tgt7620776221_ (__AST-e _$e76203_))
                       (_$hd7620876224_ (##car _$tgt7620776221_))
                       (_$tl7620976227_ (##cdr _$tgt7620776221_)))
                  (let* ((_hd76231_ _$hd7620876224_)
                         (_rest76233_ _$tl7620976227_))
                    (if (__AST-id? _hd76231_) (_lp76199_ _rest76233_) '#f)))
                (_$E7620576218_))))))
    (define __AST-id-list?__0
      (lambda (_stx76238_)
        (let ((_tail?76240_ __AST-null?))
          (__AST-id-list?__% _stx76238_ _tail?76240_))))
    (define __AST-id-list?
      (lambda _g76621_
        (let ((_g76620_ (##length _g76621_)))
          (cond ((##fx= _g76620_ 1)
                 (apply (lambda (_stx76238_) (__AST-id-list?__0 _stx76238_))
                        _g76621_))
                ((##fx= _g76620_ 2)
                 (apply (lambda (_stx76242_ _tail?76243_)
                          (__AST-id-list?__% _stx76242_ _tail?76243_))
                        _g76621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g76621_))))))
    (define __AST-bind-list?
      (lambda (_stx76188_)
        (__AST-id-list?__%
         _stx76188_
         (lambda (_e76190_)
           (let ((_$e76192_ (__AST-null? _e76190_)))
             (if _$e76192_ _$e76192_ (__AST-id? _e76190_)))))))
    (define __AST-list?__%
      (lambda (_stx76141_ _tail?76142_)
        (let _lp76144_ ((_rest76146_ _stx76141_))
          (let* ((_$e76148_ _rest76146_)
                 (_$E7615076163_
                  (lambda ()
                    (let* ((_$E7615176158_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e76148_)))
                           (_rest76161_ _$e76148_))
                      (_tail?76142_ _rest76161_)))))
            (if (__AST-pair? _$e76148_)
                (let* ((_$tgt7615276166_ (__AST-e _$e76148_))
                       (_$hd7615376169_ (##car _$tgt7615276166_))
                       (_$tl7615476172_ (##cdr _$tgt7615276166_)))
                  (let ((_rest76176_ _$tl7615476172_))
                    (_lp76144_ _rest76176_)))
                (_$E7615076163_))))))
    (define __AST-list?__0
      (lambda (_stx76181_)
        (let ((_tail?76183_ __AST-null?))
          (__AST-list?__% _stx76181_ _tail?76183_))))
    (define __AST-list?
      (lambda _g76623_
        (let ((_g76622_ (##length _g76623_)))
          (cond ((##fx= _g76622_ 1)
                 (apply (lambda (_stx76181_) (__AST-list?__0 _stx76181_))
                        _g76623_))
                ((##fx= _g76622_ 2)
                 (apply (lambda (_stx76185_ _tail?76186_)
                          (__AST-list?__% _stx76185_ _tail?76186_))
                        _g76623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g76623_))))))
    (define __AST->list
      (lambda (_stx76106_)
        (let* ((_$e76108_ _stx76106_)
               (_$E7611076123_
                (lambda ()
                  (let* ((_$E7611176118_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e76108_)))
                         (_rest76121_ _$e76108_))
                    (__AST-e _rest76121_)))))
          (if (__AST-pair? _$e76108_)
              (let* ((_$tgt7611276126_ (__AST-e _$e76108_))
                     (_$hd7611376129_ (##car _$tgt7611276126_))
                     (_$tl7611476132_ (##cdr _$tgt7611276126_)))
                (let* ((_hd76136_ _$hd7611376129_)
                       (_rest76138_ _$tl7611476132_))
                  (cons _hd76136_ (__AST->list _rest76138_))))
              (_$E7611076123_)))))
    (define __AST->datum
      (lambda (_stx76104_)
        (if (##structure-instance-of? _stx76104_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx76104_))
            (if (pair? _stx76104_)
                (cons (__AST->datum (car _stx76104_))
                      (__AST->datum (cdr _stx76104_)))
                (if (vector? _stx76104_)
                    (vector-map __AST->datum _stx76104_)
                    (if (box? _stx76104_)
                        (box (__AST->datum (unbox _stx76104_)))
                        _stx76104_))))))
    (define get-readenv
      (lambda (_port76102_)
        (##make-readenv
         _port76102_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in76090_)
        (let ((_e76092_ (##read-datum-or-eof (get-readenv _in76090_))))
          (if (eof-object? (__AST-e _e76092_)) (__AST-e _e76092_) _e76092_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in76098_ (current-input-port))) (read-syntax__% _in76098_))))
    (define read-syntax
      (lambda _g76625_
        (let ((_g76624_ (##length _g76625_)))
          (cond ((##fx= _g76624_ 0)
                 (apply (lambda () (read-syntax__0)) _g76625_))
                ((##fx= _g76624_ 1)
                 (apply (lambda (_in76100_) (read-syntax__% _in76100_))
                        _g76625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g76625_))))))
    (define read-syntax-from-file
      (lambda (_path76085_)
        (let ((_r76087_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path76085_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r76087_)
              (cdr (__AST-e (vector-ref _r76087_ '1)))
              (error (err-code->string _r76087_) _path76085_)))))
    (define __wrap-syntax
      (lambda (_re76082_ _e76083_)
        (if (eof-object? _e76083_)
            _e76083_
            (##structure AST::t _e76083_ (##readenv->locat _re76082_)))))
    (define __unwrap-syntax (lambda (_re76079_ _e76080_) (__AST-e _e76080_)))
    (define __pp-syntax (lambda (_stx76077_) (pp (__AST->datum _stx76077_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt76075_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt76075_ '#t)
          (macro-readtable-bracket-handler-set! _rt76075_ '@list)
          (macro-readtable-brace-handler-set! _rt76075_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt76075_
           '#\!
           __read-sharp-bang)
          _rt76075_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt76071_ _kw76072_)
        (macro-readtable-bracket-handler-set! _rt76071_ _kw76072_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt76068_ _kw76069_)
        (macro-readtable-brace-handler-set! _rt76068_ _kw76069_)))
    (define __read-sharp-bang
      (lambda (_re76059_ _next76060_ _start-pos76061_)
        (if (eq? _start-pos76061_ '0)
            (let* ((_line76063_
                    (##read-line
                     (macro-readenv-port _re76059_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line76065_
                    (substring _line76063_ '1 (string-length _line76063_))))
              (macro-readenv-script-line-set! _re76059_ _script-line76065_)
              (##script-marker))
            (##read-sharp-bang _re76059_ _next76060_ _start-pos76061_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj76057_)
        (if (source-location? _obj76057_)
            (string? (##locat-container _obj76057_))
            '#f)))
    (define source-location-path
      (lambda (_obj76055_)
        (if (##locat? _obj76055_)
            (##container->path (##locat-container _obj76055_))
            '#f)))))
