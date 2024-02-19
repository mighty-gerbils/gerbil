(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708370113)
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
      (lambda _$args73978_ (apply make-instance SyntaxError::t _$args73978_)))
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
      (lambda (_self73881_ _port73882_)
        (letrec ((_location73884_
                  (lambda ()
                    (let _lp73938_ ((_rest73940_
                                     (##unchecked-structure-ref
                                      _self73881_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7394173949_ _rest73940_)
                             (_else7394373957_ (lambda () '#f))
                             (_K7394573966_
                              (lambda (_rest73960_ _hd73961_)
                                (let ((_$e73963_ (__AST-source _hd73961_)))
                                  (if _$e73963_
                                      _$e73963_
                                      (_lp73938_ _rest73960_))))))
                        (if (##pair? _rest7394173949_)
                            (let ((_hd7394673969_ (##car _rest7394173949_))
                                  (_tl7394773971_ (##cdr _rest7394173949_)))
                              (let* ((_hd73974_ _hd7394673969_)
                                     (_rest73976_ _tl7394773971_))
                                (_K7394573966_ _rest73976_ _hd73974_)))
                            (_else7394373957_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e73887_ (_location73884_)))
               (if _$e73887_
                   ((lambda (_where73890_)
                      (##display-locat _where73890_ '#t (current-output-port)))
                    _$e73887_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e73892_
                    (##unchecked-structure-ref
                     _self73881_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e73892_
                   ((lambda (_where73895_)
                      (displayln
                       '" at "
                       _where73895_
                       '": "
                       (##unchecked-structure-ref
                        _self73881_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e73892_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self73881_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7389673904_
                     (##unchecked-structure-ref
                      _self73881_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7389873912_ (lambda () '#!void))
                    (_K7390073925_
                     (lambda (_rest73915_ _stx73916_)
                       (display '"... form:   ")
                       (__pp-syntax _stx73916_)
                       (for-each
                        (lambda (_detail73918_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail73918_))
                          (let ((_$e73920_ (__AST-source _detail73918_)))
                            (if _$e73920_
                                ((lambda (_loc73923_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc73923_
                                    '#t
                                    (current-output-port)))
                                 _$e73920_)
                                '#!void))
                          (newline))
                        _rest73915_))))
               (if (##pair? _g7389673904_)
                   (let ((_hd7390173928_ (##car _g7389673904_))
                         (_tl7390273930_ (##cdr _g7389673904_)))
                     (let* ((_stx73933_ _hd7390173928_)
                            (_rest73935_ _tl7390273930_))
                       (_K7390073925_ _rest73935_ _stx73933_)))
                   '#!void)))
           current-output-port
           _port73882_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message73752_
               _irritants73753_
               _where73754_
               _context73755_
               _marks73756_
               _phi73757_)
        (let ((__obj74073
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj74073
           _message73752_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74073
           _irritants73753_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74073
           _where73754_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74073
           _context73755_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74073
           _marks73756_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74073
           _phi73757_
           '5
           SyntaxError::t
           '#f)
          __obj74073)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where73747_ _message73748_ _stx73749_ . _details73750_)
        (raise (make-syntax-error
                _message73748_
                (cons _stx73749_ _details73750_)
                _where73747_
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
      (lambda _$args73744_ (apply make-instance AST::t _$args73744_)))
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
      (lambda (_stx73742_)
        (if (##structure-instance-of? _stx73742_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx73742_ '1 AST::t '#f)
            _stx73742_)))
    (define __AST-source
      (lambda (_stx73736_)
        (let _lp73738_ ((_src73740_ _stx73736_))
          (if (##structure-instance-of? _src73740_ 'gerbil#AST::t)
              (_lp73738_ (##unchecked-structure-ref _src73740_ '2 AST::t '#f))
              (if (##locat? _src73740_) _src73740_ '#f)))))
    (define __AST
      (lambda (_e73728_ _src-stx73729_)
        (let ((_src73731_ (__AST-source _src-stx73729_)))
          (if (or (##structure-instance-of? _e73728_ 'gerbil#AST::t)
                  (not _src73731_))
              _e73728_
              (##structure AST::t _e73728_ _src73731_)))))
    (define __AST-eq?
      (lambda (_stx73725_ _obj73726_) (eq? (__AST-e _stx73725_) _obj73726_)))
    (define __AST-pair? (lambda (_stx73723_) (pair? (__AST-e _stx73723_))))
    (define __AST-null? (lambda (_stx73721_) (null? (__AST-e _stx73721_))))
    (define __AST-datum?
      (lambda (_stx73702_)
        (let* ((_e73704_ (__AST-e _stx73702_)) (_$e73706_ (number? _e73704_)))
          (if _$e73706_
              _$e73706_
              (let ((_$e73709_ (string? _e73704_)))
                (if _$e73709_
                    _$e73709_
                    (let ((_$e73712_ (char? _e73704_)))
                      (if _$e73712_
                          _$e73712_
                          (let ((_$e73715_ (keyword? _e73704_)))
                            (if _$e73715_
                                _$e73715_
                                (let ((_$e73718_ (boolean? _e73704_)))
                                  (if _$e73718_
                                      _$e73718_
                                      (eq? _e73704_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx73700_) (symbol? (__AST-e _stx73700_))))
    (define __AST-id-list?__%
      (lambda (_stx73651_ _tail?73652_)
        (let _lp73654_ ((_rest73656_ _stx73651_))
          (let* ((_$e73658_ _rest73656_)
                 (_$E7366073673_
                  (lambda ()
                    (let* ((_$E7366173668_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73658_)))
                           (_rest73671_ _$e73658_))
                      (_tail?73652_ _rest73671_)))))
            (if (__AST-pair? _$e73658_)
                (let* ((_$tgt7366273676_ (__AST-e _$e73658_))
                       (_$hd7366373679_ (##car _$tgt7366273676_))
                       (_$tl7366473682_ (##cdr _$tgt7366273676_)))
                  (let* ((_hd73686_ _$hd7366373679_)
                         (_rest73688_ _$tl7366473682_))
                    (if (__AST-id? _hd73686_) (_lp73654_ _rest73688_) '#f)))
                (_$E7366073673_))))))
    (define __AST-id-list?__0
      (lambda (_stx73693_)
        (let ((_tail?73695_ __AST-null?))
          (__AST-id-list?__% _stx73693_ _tail?73695_))))
    (define __AST-id-list?
      (lambda _g74076_
        (let ((_g74075_ (##length _g74076_)))
          (cond ((##fx= _g74075_ 1)
                 (apply (lambda (_stx73693_) (__AST-id-list?__0 _stx73693_))
                        _g74076_))
                ((##fx= _g74075_ 2)
                 (apply (lambda (_stx73697_ _tail?73698_)
                          (__AST-id-list?__% _stx73697_ _tail?73698_))
                        _g74076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g74076_))))))
    (define __AST-bind-list?
      (lambda (_stx73643_)
        (__AST-id-list?__%
         _stx73643_
         (lambda (_e73645_)
           (let ((_$e73647_ (__AST-null? _e73645_)))
             (if _$e73647_ _$e73647_ (__AST-id? _e73645_)))))))
    (define __AST-list?__%
      (lambda (_stx73596_ _tail?73597_)
        (let _lp73599_ ((_rest73601_ _stx73596_))
          (let* ((_$e73603_ _rest73601_)
                 (_$E7360573618_
                  (lambda ()
                    (let* ((_$E7360673613_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73603_)))
                           (_rest73616_ _$e73603_))
                      (_tail?73597_ _rest73616_)))))
            (if (__AST-pair? _$e73603_)
                (let* ((_$tgt7360773621_ (__AST-e _$e73603_))
                       (_$hd7360873624_ (##car _$tgt7360773621_))
                       (_$tl7360973627_ (##cdr _$tgt7360773621_)))
                  (let ((_rest73631_ _$tl7360973627_))
                    (_lp73599_ _rest73631_)))
                (_$E7360573618_))))))
    (define __AST-list?__0
      (lambda (_stx73636_)
        (let ((_tail?73638_ __AST-null?))
          (__AST-list?__% _stx73636_ _tail?73638_))))
    (define __AST-list?
      (lambda _g74078_
        (let ((_g74077_ (##length _g74078_)))
          (cond ((##fx= _g74077_ 1)
                 (apply (lambda (_stx73636_) (__AST-list?__0 _stx73636_))
                        _g74078_))
                ((##fx= _g74077_ 2)
                 (apply (lambda (_stx73640_ _tail?73641_)
                          (__AST-list?__% _stx73640_ _tail?73641_))
                        _g74078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g74078_))))))
    (define __AST->list
      (lambda (_stx73561_)
        (let* ((_$e73563_ _stx73561_)
               (_$E7356573578_
                (lambda ()
                  (let* ((_$E7356673573_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e73563_)))
                         (_rest73576_ _$e73563_))
                    (__AST-e _rest73576_)))))
          (if (__AST-pair? _$e73563_)
              (let* ((_$tgt7356773581_ (__AST-e _$e73563_))
                     (_$hd7356873584_ (##car _$tgt7356773581_))
                     (_$tl7356973587_ (##cdr _$tgt7356773581_)))
                (let* ((_hd73591_ _$hd7356873584_)
                       (_rest73593_ _$tl7356973587_))
                  (cons _hd73591_ (__AST->list _rest73593_))))
              (_$E7356573578_)))))
    (define __AST->datum
      (lambda (_stx73559_)
        (if (##structure-instance-of? _stx73559_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx73559_))
            (if (pair? _stx73559_)
                (cons (__AST->datum (car _stx73559_))
                      (__AST->datum (cdr _stx73559_)))
                (if (vector? _stx73559_)
                    (vector-map __AST->datum _stx73559_)
                    (if (box? _stx73559_)
                        (box (__AST->datum (unbox _stx73559_)))
                        _stx73559_))))))
    (define get-readenv
      (lambda (_port73557_)
        (##make-readenv
         _port73557_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in73545_)
        (let ((_e73547_ (##read-datum-or-eof (get-readenv _in73545_))))
          (if (eof-object? (__AST-e _e73547_)) (__AST-e _e73547_) _e73547_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in73553_ (current-input-port))) (read-syntax__% _in73553_))))
    (define read-syntax
      (lambda _g74080_
        (let ((_g74079_ (##length _g74080_)))
          (cond ((##fx= _g74079_ 0)
                 (apply (lambda () (read-syntax__0)) _g74080_))
                ((##fx= _g74079_ 1)
                 (apply (lambda (_in73555_) (read-syntax__% _in73555_))
                        _g74080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g74080_))))))
    (define read-syntax-from-file
      (lambda (_path73540_)
        (let ((_r73542_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path73540_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r73542_)
              (cdr (__AST-e (vector-ref _r73542_ '1)))
              (error (err-code->string _r73542_) _path73540_)))))
    (define __wrap-syntax
      (lambda (_re73537_ _e73538_)
        (if (eof-object? _e73538_)
            _e73538_
            (##structure AST::t _e73538_ (##readenv->locat _re73537_)))))
    (define __unwrap-syntax (lambda (_re73534_ _e73535_) (__AST-e _e73535_)))
    (define __pp-syntax (lambda (_stx73532_) (pp (__AST->datum _stx73532_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt73530_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt73530_ '#t)
          (macro-readtable-bracket-handler-set! _rt73530_ '@list)
          (macro-readtable-brace-handler-set! _rt73530_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt73530_
           '#\!
           __read-sharp-bang)
          _rt73530_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt73526_ _kw73527_)
        (macro-readtable-bracket-handler-set! _rt73526_ _kw73527_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt73523_ _kw73524_)
        (macro-readtable-brace-handler-set! _rt73523_ _kw73524_)))
    (define __read-sharp-bang
      (lambda (_re73514_ _next73515_ _start-pos73516_)
        (if (eq? _start-pos73516_ '0)
            (let* ((_line73518_
                    (##read-line
                     (macro-readenv-port _re73514_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line73520_
                    (substring _line73518_ '1 (string-length _line73518_))))
              (macro-readenv-script-line-set! _re73514_ _script-line73520_)
              (##script-marker))
            (##read-sharp-bang _re73514_ _next73515_ _start-pos73516_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj73512_)
        (if (source-location? _obj73512_)
            (string? (##locat-container _obj73512_))
            '#f)))
    (define source-location-path
      (lambda (_obj73510_)
        (if (##locat? _obj73510_)
            (##container->path (##locat-container _obj73510_))
            '#f)))))
