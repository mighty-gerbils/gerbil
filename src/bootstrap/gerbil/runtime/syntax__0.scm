(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707841978)
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
      (lambda _$args104030_
        (apply make-instance SyntaxError::t _$args104030_)))
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
      (lambda (_self103933_ _port103934_)
        (letrec ((_location103936_
                  (lambda ()
                    (let _lp103990_ ((_rest103992_
                                      (##unchecked-structure-ref
                                       _self103933_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest103993104001_ _rest103992_)
                             (_else103995104009_ (lambda () '#f))
                             (_K103997104018_
                              (lambda (_rest104012_ _hd104013_)
                                (let ((_$e104015_ (__AST-source _hd104013_)))
                                  (if _$e104015_
                                      _$e104015_
                                      (_lp103990_ _rest104012_))))))
                        (if (##pair? _rest103993104001_)
                            (let ((_hd103998104021_ (##car _rest103993104001_))
                                  (_tl103999104023_
                                   (##cdr _rest103993104001_)))
                              (let* ((_hd104026_ _hd103998104021_)
                                     (_rest104028_ _tl103999104023_))
                                (_K103997104018_ _rest104028_ _hd104026_)))
                            (_else103995104009_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e103939_ (_location103936_)))
               (if _$e103939_
                   ((lambda (_where103942_)
                      (##display-locat
                       _where103942_
                       '#t
                       (current-output-port)))
                    _$e103939_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e103944_
                    (##unchecked-structure-ref
                     _self103933_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e103944_
                   ((lambda (_where103947_)
                      (displayln
                       '" at "
                       _where103947_
                       '": "
                       (##unchecked-structure-ref
                        _self103933_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e103944_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self103933_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g103948103956_
                     (##unchecked-structure-ref
                      _self103933_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else103950103964_ (lambda () '#!void))
                    (_K103952103977_
                     (lambda (_rest103967_ _stx103968_)
                       (display '"... form:   ")
                       (__pp-syntax _stx103968_)
                       (for-each
                        (lambda (_detail103970_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail103970_))
                          (let ((_$e103972_ (__AST-source _detail103970_)))
                            (if _$e103972_
                                ((lambda (_loc103975_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc103975_
                                    '#t
                                    (current-output-port)))
                                 _$e103972_)
                                '#!void))
                          (newline))
                        _rest103967_))))
               (if (##pair? _g103948103956_)
                   (let ((_hd103953103980_ (##car _g103948103956_))
                         (_tl103954103982_ (##cdr _g103948103956_)))
                     (let* ((_stx103985_ _hd103953103980_)
                            (_rest103987_ _tl103954103982_))
                       (_K103952103977_ _rest103987_ _stx103985_)))
                   '#!void)))
           current-output-port
           _port103934_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message103804_
               _irritants103805_
               _where103806_
               _context103807_
               _marks103808_
               _phi103809_)
        (let ((__obj108693
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj108693
           _message103804_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108693
           _irritants103805_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108693
           _where103806_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108693
           _context103807_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108693
           _marks103808_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108693
           _phi103809_
           '5
           SyntaxError::t
           '#f)
          __obj108693)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where103799_ _message103800_ _stx103801_ . _details103802_)
        (raise (make-syntax-error
                _message103800_
                (cons _stx103801_ _details103802_)
                _where103799_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
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
      (lambda _$args103796_ (apply make-instance AST::t _$args103796_)))
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
      (lambda (_stx103794_)
        (if (##structure-instance-of? _stx103794_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx103794_ '1 AST::t '#f)
            _stx103794_)))
    (define __AST-source
      (lambda (_stx103788_)
        (let _lp103790_ ((_src103792_ _stx103788_))
          (if (##structure-instance-of? _src103792_ 'gerbil#AST::t)
              (_lp103790_
               (##unchecked-structure-ref _src103792_ '2 AST::t '#f))
              (if (##locat? _src103792_) _src103792_ '#f)))))
    (define __AST
      (lambda (_e103780_ _src-stx103781_)
        (let ((_src103783_ (__AST-source _src-stx103781_)))
          (if (or (##structure-instance-of? _e103780_ 'gerbil#AST::t)
                  (not _src103783_))
              _e103780_
              (##structure AST::t _e103780_ _src103783_)))))
    (define __AST-eq?
      (lambda (_stx103777_ _obj103778_)
        (eq? (__AST-e _stx103777_) _obj103778_)))
    (define __AST-pair? (lambda (_stx103775_) (pair? (__AST-e _stx103775_))))
    (define __AST-null? (lambda (_stx103773_) (null? (__AST-e _stx103773_))))
    (define __AST-datum?
      (lambda (_stx103754_)
        (let* ((_e103756_ (__AST-e _stx103754_))
               (_$e103758_ (number? _e103756_)))
          (if _$e103758_
              _$e103758_
              (let ((_$e103761_ (string? _e103756_)))
                (if _$e103761_
                    _$e103761_
                    (let ((_$e103764_ (char? _e103756_)))
                      (if _$e103764_
                          _$e103764_
                          (let ((_$e103767_ (keyword? _e103756_)))
                            (if _$e103767_
                                _$e103767_
                                (let ((_$e103770_ (boolean? _e103756_)))
                                  (if _$e103770_
                                      _$e103770_
                                      (eq? _e103756_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx103752_) (symbol? (__AST-e _stx103752_))))
    (define __AST-id-list?__%
      (lambda (_stx103703_ _tail?103704_)
        (let _lp103706_ ((_rest103708_ _stx103703_))
          (let* ((_$e103710_ _rest103708_)
                 (_$E103712103725_
                  (lambda ()
                    (let* ((_$E103713103720_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103710_)))
                           (_rest103723_ _$e103710_))
                      (_tail?103704_ _rest103723_)))))
            (if (__AST-pair? _$e103710_)
                (let* ((_$tgt103714103728_ (__AST-e _$e103710_))
                       (_$hd103715103731_ (##car _$tgt103714103728_))
                       (_$tl103716103734_ (##cdr _$tgt103714103728_)))
                  (let* ((_hd103738_ _$hd103715103731_)
                         (_rest103740_ _$tl103716103734_))
                    (if (__AST-id? _hd103738_) (_lp103706_ _rest103740_) '#f)))
                (_$E103712103725_))))))
    (define __AST-id-list?__0
      (lambda (_stx103745_)
        (let ((_tail?103747_ __AST-null?))
          (__AST-id-list?__% _stx103745_ _tail?103747_))))
    (define __AST-id-list?
      (lambda _g108696_
        (let ((_g108695_ (##length _g108696_)))
          (cond ((##fx= _g108695_ 1)
                 (apply (lambda (_stx103745_) (__AST-id-list?__0 _stx103745_))
                        _g108696_))
                ((##fx= _g108695_ 2)
                 (apply (lambda (_stx103749_ _tail?103750_)
                          (__AST-id-list?__% _stx103749_ _tail?103750_))
                        _g108696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108696_))))))
    (define __AST-bind-list?
      (lambda (_stx103695_)
        (__AST-id-list?__%
         _stx103695_
         (lambda (_e103697_)
           (let ((_$e103699_ (__AST-null? _e103697_)))
             (if _$e103699_ _$e103699_ (__AST-id? _e103697_)))))))
    (define __AST-list?__%
      (lambda (_stx103648_ _tail?103649_)
        (let _lp103651_ ((_rest103653_ _stx103648_))
          (let* ((_$e103655_ _rest103653_)
                 (_$E103657103670_
                  (lambda ()
                    (let* ((_$E103658103665_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103655_)))
                           (_rest103668_ _$e103655_))
                      (_tail?103649_ _rest103668_)))))
            (if (__AST-pair? _$e103655_)
                (let* ((_$tgt103659103673_ (__AST-e _$e103655_))
                       (_$hd103660103676_ (##car _$tgt103659103673_))
                       (_$tl103661103679_ (##cdr _$tgt103659103673_)))
                  (let ((_rest103683_ _$tl103661103679_))
                    (_lp103651_ _rest103683_)))
                (_$E103657103670_))))))
    (define __AST-list?__0
      (lambda (_stx103688_)
        (let ((_tail?103690_ __AST-null?))
          (__AST-list?__% _stx103688_ _tail?103690_))))
    (define __AST-list?
      (lambda _g108698_
        (let ((_g108697_ (##length _g108698_)))
          (cond ((##fx= _g108697_ 1)
                 (apply (lambda (_stx103688_) (__AST-list?__0 _stx103688_))
                        _g108698_))
                ((##fx= _g108697_ 2)
                 (apply (lambda (_stx103692_ _tail?103693_)
                          (__AST-list?__% _stx103692_ _tail?103693_))
                        _g108698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108698_))))))
    (define __AST->list
      (lambda (_stx103613_)
        (let* ((_$e103615_ _stx103613_)
               (_$E103617103630_
                (lambda ()
                  (let* ((_$E103618103625_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e103615_)))
                         (_rest103628_ _$e103615_))
                    (__AST-e _rest103628_)))))
          (if (__AST-pair? _$e103615_)
              (let* ((_$tgt103619103633_ (__AST-e _$e103615_))
                     (_$hd103620103636_ (##car _$tgt103619103633_))
                     (_$tl103621103639_ (##cdr _$tgt103619103633_)))
                (let* ((_hd103643_ _$hd103620103636_)
                       (_rest103645_ _$tl103621103639_))
                  (cons _hd103643_ (__AST->list _rest103645_))))
              (_$E103617103630_)))))
    (define __AST->datum
      (lambda (_stx103611_)
        (if (##structure-instance-of? _stx103611_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx103611_))
            (if (pair? _stx103611_)
                (cons (__AST->datum (car _stx103611_))
                      (__AST->datum (cdr _stx103611_)))
                (if (vector? _stx103611_)
                    (vector-map __AST->datum _stx103611_)
                    (if (box? _stx103611_)
                        (box (__AST->datum (unbox _stx103611_)))
                        _stx103611_))))))
    (define get-readenv
      (lambda (_port103609_)
        (##make-readenv
         _port103609_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in103597_)
        (let ((_e103599_ (##read-datum-or-eof (get-readenv _in103597_))))
          (if (eof-object? (__AST-e _e103599_))
              (__AST-e _e103599_)
              _e103599_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in103605_ (current-input-port))) (read-syntax__% _in103605_))))
    (define read-syntax
      (lambda _g108700_
        (let ((_g108699_ (##length _g108700_)))
          (cond ((##fx= _g108699_ 0)
                 (apply (lambda () (read-syntax__0)) _g108700_))
                ((##fx= _g108699_ 1)
                 (apply (lambda (_in103607_) (read-syntax__% _in103607_))
                        _g108700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108700_))))))
    (define read-syntax-from-file
      (lambda (_path103592_)
        (let ((_r103594_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path103592_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r103594_)
              (cdr (__AST-e (vector-ref _r103594_ '1)))
              (error (err-code->string _r103594_) _path103592_)))))
    (define __wrap-syntax
      (lambda (_re103589_ _e103590_)
        (if (eof-object? _e103590_)
            _e103590_
            (##structure AST::t _e103590_ (##readenv->locat _re103589_)))))
    (define __unwrap-syntax
      (lambda (_re103586_ _e103587_) (__AST-e _e103587_)))
    (define __pp-syntax (lambda (_stx103584_) (pp (__AST->datum _stx103584_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt103582_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt103582_ '#t)
          (macro-readtable-bracket-handler-set! _rt103582_ '@list)
          (macro-readtable-brace-handler-set! _rt103582_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt103582_
           '#\!
           __read-sharp-bang)
          _rt103582_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt103578_ _kw103579_)
        (macro-readtable-bracket-handler-set! _rt103578_ _kw103579_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt103575_ _kw103576_)
        (macro-readtable-brace-handler-set! _rt103575_ _kw103576_)))
    (define __read-sharp-bang
      (lambda (_re103566_ _next103567_ _start-pos103568_)
        (if (eq? _start-pos103568_ '0)
            (let* ((_line103570_
                    (##read-line
                     (macro-readenv-port _re103566_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line103572_
                    (substring _line103570_ '1 (string-length _line103570_))))
              (macro-readenv-script-line-set! _re103566_ _script-line103572_)
              (##script-marker))
            (##read-sharp-bang _re103566_ _next103567_ _start-pos103568_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj103564_)
        (if (source-location? _obj103564_)
            (string? (##locat-container _obj103564_))
            '#f)))
    (define source-location-path
      (lambda (_obj103562_)
        (if (##locat? _obj103562_)
            (##container->path (##locat-container _obj103562_))
            '#f)))))
