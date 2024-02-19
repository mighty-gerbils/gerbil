(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708352924)
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
      (lambda _$args73979_ (apply make-instance SyntaxError::t _$args73979_)))
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
      (lambda (_self73882_ _port73883_)
        (letrec ((_location73885_
                  (lambda ()
                    (let _lp73939_ ((_rest73941_
                                     (##unchecked-structure-ref
                                      _self73882_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7394273950_ _rest73941_)
                             (_else7394473958_ (lambda () '#f))
                             (_K7394673967_
                              (lambda (_rest73961_ _hd73962_)
                                (let ((_$e73964_ (__AST-source _hd73962_)))
                                  (if _$e73964_
                                      _$e73964_
                                      (_lp73939_ _rest73961_))))))
                        (if (##pair? _rest7394273950_)
                            (let ((_hd7394773970_ (##car _rest7394273950_))
                                  (_tl7394873972_ (##cdr _rest7394273950_)))
                              (let* ((_hd73975_ _hd7394773970_)
                                     (_rest73977_ _tl7394873972_))
                                (_K7394673967_ _rest73977_ _hd73975_)))
                            (_else7394473958_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e73888_ (_location73885_)))
               (if _$e73888_
                   ((lambda (_where73891_)
                      (##display-locat _where73891_ '#t (current-output-port)))
                    _$e73888_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e73893_
                    (##unchecked-structure-ref
                     _self73882_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e73893_
                   ((lambda (_where73896_)
                      (displayln
                       '" at "
                       _where73896_
                       '": "
                       (##unchecked-structure-ref
                        _self73882_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e73893_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self73882_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7389773905_
                     (##unchecked-structure-ref
                      _self73882_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7389973913_ (lambda () '#!void))
                    (_K7390173926_
                     (lambda (_rest73916_ _stx73917_)
                       (display '"... form:   ")
                       (__pp-syntax _stx73917_)
                       (for-each
                        (lambda (_detail73919_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail73919_))
                          (let ((_$e73921_ (__AST-source _detail73919_)))
                            (if _$e73921_
                                ((lambda (_loc73924_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc73924_
                                    '#t
                                    (current-output-port)))
                                 _$e73921_)
                                '#!void))
                          (newline))
                        _rest73916_))))
               (if (##pair? _g7389773905_)
                   (let ((_hd7390273929_ (##car _g7389773905_))
                         (_tl7390373931_ (##cdr _g7389773905_)))
                     (let* ((_stx73934_ _hd7390273929_)
                            (_rest73936_ _tl7390373931_))
                       (_K7390173926_ _rest73936_ _stx73934_)))
                   '#!void)))
           current-output-port
           _port73883_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message73753_
               _irritants73754_
               _where73755_
               _context73756_
               _marks73757_
               _phi73758_)
        (let ((__obj74074
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj74074
           _message73753_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74074
           _irritants73754_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74074
           _where73755_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74074
           _context73756_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74074
           _marks73757_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74074
           _phi73758_
           '5
           SyntaxError::t
           '#f)
          __obj74074)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where73748_ _message73749_ _stx73750_ . _details73751_)
        (raise (make-syntax-error
                _message73749_
                (cons _stx73750_ _details73751_)
                _where73748_
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
      (lambda _$args73745_ (apply make-instance AST::t _$args73745_)))
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
      (lambda (_stx73743_)
        (if (##structure-instance-of? _stx73743_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx73743_ '1 AST::t '#f)
            _stx73743_)))
    (define __AST-source
      (lambda (_stx73737_)
        (let _lp73739_ ((_src73741_ _stx73737_))
          (if (##structure-instance-of? _src73741_ 'gerbil#AST::t)
              (_lp73739_ (##unchecked-structure-ref _src73741_ '2 AST::t '#f))
              (if (##locat? _src73741_) _src73741_ '#f)))))
    (define __AST
      (lambda (_e73729_ _src-stx73730_)
        (let ((_src73732_ (__AST-source _src-stx73730_)))
          (if (or (##structure-instance-of? _e73729_ 'gerbil#AST::t)
                  (not _src73732_))
              _e73729_
              (##structure AST::t _e73729_ _src73732_)))))
    (define __AST-eq?
      (lambda (_stx73726_ _obj73727_) (eq? (__AST-e _stx73726_) _obj73727_)))
    (define __AST-pair? (lambda (_stx73724_) (pair? (__AST-e _stx73724_))))
    (define __AST-null? (lambda (_stx73722_) (null? (__AST-e _stx73722_))))
    (define __AST-datum?
      (lambda (_stx73703_)
        (let* ((_e73705_ (__AST-e _stx73703_)) (_$e73707_ (number? _e73705_)))
          (if _$e73707_
              _$e73707_
              (let ((_$e73710_ (string? _e73705_)))
                (if _$e73710_
                    _$e73710_
                    (let ((_$e73713_ (char? _e73705_)))
                      (if _$e73713_
                          _$e73713_
                          (let ((_$e73716_ (keyword? _e73705_)))
                            (if _$e73716_
                                _$e73716_
                                (let ((_$e73719_ (boolean? _e73705_)))
                                  (if _$e73719_
                                      _$e73719_
                                      (eq? _e73705_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx73701_) (symbol? (__AST-e _stx73701_))))
    (define __AST-id-list?__%
      (lambda (_stx73652_ _tail?73653_)
        (let _lp73655_ ((_rest73657_ _stx73652_))
          (let* ((_$e73659_ _rest73657_)
                 (_$E7366173674_
                  (lambda ()
                    (let* ((_$E7366273669_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73659_)))
                           (_rest73672_ _$e73659_))
                      (_tail?73653_ _rest73672_)))))
            (if (__AST-pair? _$e73659_)
                (let* ((_$tgt7366373677_ (__AST-e _$e73659_))
                       (_$hd7366473680_ (##car _$tgt7366373677_))
                       (_$tl7366573683_ (##cdr _$tgt7366373677_)))
                  (let* ((_hd73687_ _$hd7366473680_)
                         (_rest73689_ _$tl7366573683_))
                    (if (__AST-id? _hd73687_) (_lp73655_ _rest73689_) '#f)))
                (_$E7366173674_))))))
    (define __AST-id-list?__0
      (lambda (_stx73694_)
        (let ((_tail?73696_ __AST-null?))
          (__AST-id-list?__% _stx73694_ _tail?73696_))))
    (define __AST-id-list?
      (lambda _g74077_
        (let ((_g74076_ (##length _g74077_)))
          (cond ((##fx= _g74076_ 1)
                 (apply (lambda (_stx73694_) (__AST-id-list?__0 _stx73694_))
                        _g74077_))
                ((##fx= _g74076_ 2)
                 (apply (lambda (_stx73698_ _tail?73699_)
                          (__AST-id-list?__% _stx73698_ _tail?73699_))
                        _g74077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g74077_))))))
    (define __AST-bind-list?
      (lambda (_stx73644_)
        (__AST-id-list?__%
         _stx73644_
         (lambda (_e73646_)
           (let ((_$e73648_ (__AST-null? _e73646_)))
             (if _$e73648_ _$e73648_ (__AST-id? _e73646_)))))))
    (define __AST-list?__%
      (lambda (_stx73597_ _tail?73598_)
        (let _lp73600_ ((_rest73602_ _stx73597_))
          (let* ((_$e73604_ _rest73602_)
                 (_$E7360673619_
                  (lambda ()
                    (let* ((_$E7360773614_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73604_)))
                           (_rest73617_ _$e73604_))
                      (_tail?73598_ _rest73617_)))))
            (if (__AST-pair? _$e73604_)
                (let* ((_$tgt7360873622_ (__AST-e _$e73604_))
                       (_$hd7360973625_ (##car _$tgt7360873622_))
                       (_$tl7361073628_ (##cdr _$tgt7360873622_)))
                  (let ((_rest73632_ _$tl7361073628_))
                    (_lp73600_ _rest73632_)))
                (_$E7360673619_))))))
    (define __AST-list?__0
      (lambda (_stx73637_)
        (let ((_tail?73639_ __AST-null?))
          (__AST-list?__% _stx73637_ _tail?73639_))))
    (define __AST-list?
      (lambda _g74079_
        (let ((_g74078_ (##length _g74079_)))
          (cond ((##fx= _g74078_ 1)
                 (apply (lambda (_stx73637_) (__AST-list?__0 _stx73637_))
                        _g74079_))
                ((##fx= _g74078_ 2)
                 (apply (lambda (_stx73641_ _tail?73642_)
                          (__AST-list?__% _stx73641_ _tail?73642_))
                        _g74079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g74079_))))))
    (define __AST->list
      (lambda (_stx73562_)
        (let* ((_$e73564_ _stx73562_)
               (_$E7356673579_
                (lambda ()
                  (let* ((_$E7356773574_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e73564_)))
                         (_rest73577_ _$e73564_))
                    (__AST-e _rest73577_)))))
          (if (__AST-pair? _$e73564_)
              (let* ((_$tgt7356873582_ (__AST-e _$e73564_))
                     (_$hd7356973585_ (##car _$tgt7356873582_))
                     (_$tl7357073588_ (##cdr _$tgt7356873582_)))
                (let* ((_hd73592_ _$hd7356973585_)
                       (_rest73594_ _$tl7357073588_))
                  (cons _hd73592_ (__AST->list _rest73594_))))
              (_$E7356673579_)))))
    (define __AST->datum
      (lambda (_stx73560_)
        (if (##structure-instance-of? _stx73560_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx73560_))
            (if (pair? _stx73560_)
                (cons (__AST->datum (car _stx73560_))
                      (__AST->datum (cdr _stx73560_)))
                (if (vector? _stx73560_)
                    (vector-map __AST->datum _stx73560_)
                    (if (box? _stx73560_)
                        (box (__AST->datum (unbox _stx73560_)))
                        _stx73560_))))))
    (define get-readenv
      (lambda (_port73558_)
        (##make-readenv
         _port73558_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in73546_)
        (let ((_e73548_ (##read-datum-or-eof (get-readenv _in73546_))))
          (if (eof-object? (__AST-e _e73548_)) (__AST-e _e73548_) _e73548_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in73554_ (current-input-port))) (read-syntax__% _in73554_))))
    (define read-syntax
      (lambda _g74081_
        (let ((_g74080_ (##length _g74081_)))
          (cond ((##fx= _g74080_ 0)
                 (apply (lambda () (read-syntax__0)) _g74081_))
                ((##fx= _g74080_ 1)
                 (apply (lambda (_in73556_) (read-syntax__% _in73556_))
                        _g74081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g74081_))))))
    (define read-syntax-from-file
      (lambda (_path73541_)
        (let ((_r73543_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path73541_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r73543_)
              (cdr (__AST-e (vector-ref _r73543_ '1)))
              (error (err-code->string _r73543_) _path73541_)))))
    (define __wrap-syntax
      (lambda (_re73538_ _e73539_)
        (if (eof-object? _e73539_)
            _e73539_
            (##structure AST::t _e73539_ (##readenv->locat _re73538_)))))
    (define __unwrap-syntax (lambda (_re73535_ _e73536_) (__AST-e _e73536_)))
    (define __pp-syntax (lambda (_stx73533_) (pp (__AST->datum _stx73533_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt73531_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt73531_ '#t)
          (macro-readtable-bracket-handler-set! _rt73531_ '@list)
          (macro-readtable-brace-handler-set! _rt73531_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt73531_
           '#\!
           __read-sharp-bang)
          _rt73531_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt73527_ _kw73528_)
        (macro-readtable-bracket-handler-set! _rt73527_ _kw73528_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt73524_ _kw73525_)
        (macro-readtable-brace-handler-set! _rt73524_ _kw73525_)))
    (define __read-sharp-bang
      (lambda (_re73515_ _next73516_ _start-pos73517_)
        (if (eq? _start-pos73517_ '0)
            (let* ((_line73519_
                    (##read-line
                     (macro-readenv-port _re73515_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line73521_
                    (substring _line73519_ '1 (string-length _line73519_))))
              (macro-readenv-script-line-set! _re73515_ _script-line73521_)
              (##script-marker))
            (##read-sharp-bang _re73515_ _next73516_ _start-pos73517_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj73513_)
        (if (source-location? _obj73513_)
            (string? (##locat-container _obj73513_))
            '#f)))
    (define source-location-path
      (lambda (_obj73511_)
        (if (##locat? _obj73511_)
            (##container->path (##locat-container _obj73511_))
            '#f)))))
