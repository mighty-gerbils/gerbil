(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710064746)
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
      (lambda _$args72007_ (apply make-instance SyntaxError::t _$args72007_)))
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
      (lambda (_self71910_ _port71911_)
        (letrec ((_location71913_
                  (lambda ()
                    (let _lp71967_ ((_rest71969_
                                     (##unchecked-structure-ref
                                      _self71910_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7197071978_ _rest71969_)
                             (_else7197271986_ (lambda () '#f))
                             (_K7197471995_
                              (lambda (_rest71989_ _hd71990_)
                                (let ((_$e71992_ (__AST-source _hd71990_)))
                                  (if _$e71992_
                                      _$e71992_
                                      (_lp71967_ _rest71989_))))))
                        (if (##pair? _rest7197071978_)
                            (let ((_hd7197571998_ (##car _rest7197071978_))
                                  (_tl7197672000_ (##cdr _rest7197071978_)))
                              (let* ((_hd72003_ _hd7197571998_)
                                     (_rest72005_ _tl7197672000_))
                                (_K7197471995_ _rest72005_ _hd72003_)))
                            (_else7197271986_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e71916_ (_location71913_)))
               (if _$e71916_
                   ((lambda (_where71919_)
                      (##display-locat _where71919_ '#t (current-output-port)))
                    _$e71916_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e71921_
                    (##unchecked-structure-ref
                     _self71910_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e71921_
                   ((lambda (_where71924_)
                      (displayln
                       '" at "
                       _where71924_
                       '": "
                       (##unchecked-structure-ref
                        _self71910_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e71921_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self71910_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7192571933_
                     (##unchecked-structure-ref
                      _self71910_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7192771941_ (lambda () '#!void))
                    (_K7192971954_
                     (lambda (_rest71944_ _stx71945_)
                       (display '"... form:   ")
                       (__pp-syntax _stx71945_)
                       (for-each
                        (lambda (_detail71947_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail71947_))
                          (let ((_$e71949_ (__AST-source _detail71947_)))
                            (if _$e71949_
                                ((lambda (_loc71952_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc71952_
                                    '#t
                                    (current-output-port)))
                                 _$e71949_)
                                '#!void))
                          (newline))
                        _rest71944_))))
               (if (##pair? _g7192571933_)
                   (let ((_hd7193071957_ (##car _g7192571933_))
                         (_tl7193171959_ (##cdr _g7192571933_)))
                     (let* ((_stx71962_ _hd7193071957_)
                            (_rest71964_ _tl7193171959_))
                       (_K7192971954_ _rest71964_ _stx71962_)))
                   '#!void)))
           current-output-port
           _port71911_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message71781_
               _irritants71782_
               _where71783_
               _context71784_
               _marks71785_
               _phi71786_)
        (let ((__obj72102
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj72102
           _message71781_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj72102
           _irritants71782_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj72102
           _where71783_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj72102
           _context71784_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj72102
           _marks71785_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj72102
           _phi71786_
           '5
           SyntaxError::t
           '#f)
          __obj72102)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where71776_ _message71777_ _stx71778_ . _details71779_)
        (raise (make-syntax-error
                _message71777_
                (cons _stx71778_ _details71779_)
                _where71776_
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
      (lambda _$args71773_ (apply make-instance AST::t _$args71773_)))
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
      (lambda (_stx71771_)
        (if (##structure-instance-of? _stx71771_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx71771_ '1 AST::t '#f)
            _stx71771_)))
    (define __AST-source
      (lambda (_stx71765_)
        (let _lp71767_ ((_src71769_ _stx71765_))
          (if (##structure-instance-of? _src71769_ 'gerbil#AST::t)
              (_lp71767_ (##unchecked-structure-ref _src71769_ '2 AST::t '#f))
              (if (##locat? _src71769_) _src71769_ '#f)))))
    (define __AST
      (lambda (_e71757_ _src-stx71758_)
        (let ((_src71760_ (__AST-source _src-stx71758_)))
          (if (or (##structure-instance-of? _e71757_ 'gerbil#AST::t)
                  (not _src71760_))
              _e71757_
              (##structure AST::t _e71757_ _src71760_)))))
    (define __AST-eq?
      (lambda (_stx71754_ _obj71755_) (eq? (__AST-e _stx71754_) _obj71755_)))
    (define __AST-pair? (lambda (_stx71752_) (pair? (__AST-e _stx71752_))))
    (define __AST-null? (lambda (_stx71750_) (null? (__AST-e _stx71750_))))
    (define __AST-datum?
      (lambda (_stx71731_)
        (let* ((_e71733_ (__AST-e _stx71731_)) (_$e71735_ (number? _e71733_)))
          (if _$e71735_
              _$e71735_
              (let ((_$e71738_ (string? _e71733_)))
                (if _$e71738_
                    _$e71738_
                    (let ((_$e71741_ (char? _e71733_)))
                      (if _$e71741_
                          _$e71741_
                          (let ((_$e71744_ (keyword? _e71733_)))
                            (if _$e71744_
                                _$e71744_
                                (let ((_$e71747_ (boolean? _e71733_)))
                                  (if _$e71747_
                                      _$e71747_
                                      (eq? _e71733_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx71729_) (symbol? (__AST-e _stx71729_))))
    (define __AST-id-list?__%
      (lambda (_stx71680_ _tail?71681_)
        (let _lp71683_ ((_rest71685_ _stx71680_))
          (let* ((_$e71687_ _rest71685_)
                 (_$E7168971702_
                  (lambda ()
                    (let* ((_$E7169071697_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e71687_)))
                           (_rest71700_ _$e71687_))
                      (_tail?71681_ _rest71700_)))))
            (if (__AST-pair? _$e71687_)
                (let* ((_$tgt7169171705_ (__AST-e _$e71687_))
                       (_$hd7169271708_ (##car _$tgt7169171705_))
                       (_$tl7169371711_ (##cdr _$tgt7169171705_)))
                  (let* ((_hd71715_ _$hd7169271708_)
                         (_rest71717_ _$tl7169371711_))
                    (if (__AST-id? _hd71715_) (_lp71683_ _rest71717_) '#f)))
                (_$E7168971702_))))))
    (define __AST-id-list?__0
      (lambda (_stx71722_)
        (let ((_tail?71724_ __AST-null?))
          (__AST-id-list?__% _stx71722_ _tail?71724_))))
    (define __AST-id-list?
      (lambda _g72105_
        (let ((_g72104_ (##length _g72105_)))
          (cond ((##fx= _g72104_ 1)
                 (apply (lambda (_stx71722_) (__AST-id-list?__0 _stx71722_))
                        _g72105_))
                ((##fx= _g72104_ 2)
                 (apply (lambda (_stx71726_ _tail?71727_)
                          (__AST-id-list?__% _stx71726_ _tail?71727_))
                        _g72105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g72105_))))))
    (define __AST-bind-list?
      (lambda (_stx71672_)
        (__AST-id-list?__%
         _stx71672_
         (lambda (_e71674_)
           (let ((_$e71676_ (__AST-null? _e71674_)))
             (if _$e71676_ _$e71676_ (__AST-id? _e71674_)))))))
    (define __AST-list?__%
      (lambda (_stx71625_ _tail?71626_)
        (let _lp71628_ ((_rest71630_ _stx71625_))
          (let* ((_$e71632_ _rest71630_)
                 (_$E7163471647_
                  (lambda ()
                    (let* ((_$E7163571642_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e71632_)))
                           (_rest71645_ _$e71632_))
                      (_tail?71626_ _rest71645_)))))
            (if (__AST-pair? _$e71632_)
                (let* ((_$tgt7163671650_ (__AST-e _$e71632_))
                       (_$hd7163771653_ (##car _$tgt7163671650_))
                       (_$tl7163871656_ (##cdr _$tgt7163671650_)))
                  (let ((_rest71660_ _$tl7163871656_))
                    (_lp71628_ _rest71660_)))
                (_$E7163471647_))))))
    (define __AST-list?__0
      (lambda (_stx71665_)
        (let ((_tail?71667_ __AST-null?))
          (__AST-list?__% _stx71665_ _tail?71667_))))
    (define __AST-list?
      (lambda _g72107_
        (let ((_g72106_ (##length _g72107_)))
          (cond ((##fx= _g72106_ 1)
                 (apply (lambda (_stx71665_) (__AST-list?__0 _stx71665_))
                        _g72107_))
                ((##fx= _g72106_ 2)
                 (apply (lambda (_stx71669_ _tail?71670_)
                          (__AST-list?__% _stx71669_ _tail?71670_))
                        _g72107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g72107_))))))
    (define __AST->list
      (lambda (_stx71590_)
        (let* ((_$e71592_ _stx71590_)
               (_$E7159471607_
                (lambda ()
                  (let* ((_$E7159571602_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e71592_)))
                         (_rest71605_ _$e71592_))
                    (__AST-e _rest71605_)))))
          (if (__AST-pair? _$e71592_)
              (let* ((_$tgt7159671610_ (__AST-e _$e71592_))
                     (_$hd7159771613_ (##car _$tgt7159671610_))
                     (_$tl7159871616_ (##cdr _$tgt7159671610_)))
                (let* ((_hd71620_ _$hd7159771613_)
                       (_rest71622_ _$tl7159871616_))
                  (cons _hd71620_ (__AST->list _rest71622_))))
              (_$E7159471607_)))))
    (define __AST->datum
      (lambda (_stx71588_)
        (if (##structure-instance-of? _stx71588_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx71588_))
            (if (pair? _stx71588_)
                (cons (__AST->datum (car _stx71588_))
                      (__AST->datum (cdr _stx71588_)))
                (if (vector? _stx71588_)
                    (vector-map __AST->datum _stx71588_)
                    (if (box? _stx71588_)
                        (box (__AST->datum (unbox _stx71588_)))
                        _stx71588_))))))
    (define get-readenv
      (lambda (_port71586_)
        (##make-readenv
         _port71586_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in71574_)
        (let ((_e71576_ (##read-datum-or-eof (get-readenv _in71574_))))
          (if (eof-object? (__AST-e _e71576_)) (__AST-e _e71576_) _e71576_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in71582_ (current-input-port))) (read-syntax__% _in71582_))))
    (define read-syntax
      (lambda _g72109_
        (let ((_g72108_ (##length _g72109_)))
          (cond ((##fx= _g72108_ 0)
                 (apply (lambda () (read-syntax__0)) _g72109_))
                ((##fx= _g72108_ 1)
                 (apply (lambda (_in71584_) (read-syntax__% _in71584_))
                        _g72109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g72109_))))))
    (define read-syntax-from-file
      (lambda (_path71569_)
        (let ((_r71571_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path71569_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r71571_)
              (cdr (__AST-e (vector-ref _r71571_ '1)))
              (error (err-code->string _r71571_) _path71569_)))))
    (define __wrap-syntax
      (lambda (_re71566_ _e71567_)
        (if (eof-object? _e71567_)
            _e71567_
            (##structure AST::t _e71567_ (##readenv->locat _re71566_)))))
    (define __unwrap-syntax (lambda (_re71563_ _e71564_) (__AST-e _e71564_)))
    (define __pp-syntax (lambda (_stx71561_) (pp (__AST->datum _stx71561_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt71559_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt71559_ '#t)
          (macro-readtable-bracket-handler-set! _rt71559_ '@list)
          (macro-readtable-brace-handler-set! _rt71559_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt71559_
           '#\!
           __read-sharp-bang)
          _rt71559_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt71555_ _kw71556_)
        (macro-readtable-bracket-handler-set! _rt71555_ _kw71556_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt71552_ _kw71553_)
        (macro-readtable-brace-handler-set! _rt71552_ _kw71553_)))
    (define __read-sharp-bang
      (lambda (_re71543_ _next71544_ _start-pos71545_)
        (if (eq? _start-pos71545_ '0)
            (let* ((_line71547_
                    (##read-line
                     (macro-readenv-port _re71543_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line71549_
                    (substring _line71547_ '1 (string-length _line71547_))))
              (macro-readenv-script-line-set! _re71543_ _script-line71549_)
              (##script-marker))
            (##read-sharp-bang _re71543_ _next71544_ _start-pos71545_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj71541_)
        (if (source-location? _obj71541_)
            (string? (##locat-container _obj71541_))
            '#f)))
    (define source-location-path
      (lambda (_obj71539_)
        (if (##locat? _obj71539_)
            (##container->path (##locat-container _obj71539_))
            '#f)))))
