(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707844654)
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
      (lambda _$args104034_
        (apply make-instance SyntaxError::t _$args104034_)))
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
      (lambda (_self103937_ _port103938_)
        (letrec ((_location103940_
                  (lambda ()
                    (let _lp103994_ ((_rest103996_
                                      (##unchecked-structure-ref
                                       _self103937_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest103997104005_ _rest103996_)
                             (_else103999104013_ (lambda () '#f))
                             (_K104001104022_
                              (lambda (_rest104016_ _hd104017_)
                                (let ((_$e104019_ (__AST-source _hd104017_)))
                                  (if _$e104019_
                                      _$e104019_
                                      (_lp103994_ _rest104016_))))))
                        (if (##pair? _rest103997104005_)
                            (let ((_hd104002104025_ (##car _rest103997104005_))
                                  (_tl104003104027_
                                   (##cdr _rest103997104005_)))
                              (let* ((_hd104030_ _hd104002104025_)
                                     (_rest104032_ _tl104003104027_))
                                (_K104001104022_ _rest104032_ _hd104030_)))
                            (_else103999104013_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e103943_ (_location103940_)))
               (if _$e103943_
                   ((lambda (_where103946_)
                      (##display-locat
                       _where103946_
                       '#t
                       (current-output-port)))
                    _$e103943_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e103948_
                    (##unchecked-structure-ref
                     _self103937_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e103948_
                   ((lambda (_where103951_)
                      (displayln
                       '" at "
                       _where103951_
                       '": "
                       (##unchecked-structure-ref
                        _self103937_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e103948_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self103937_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g103952103960_
                     (##unchecked-structure-ref
                      _self103937_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else103954103968_ (lambda () '#!void))
                    (_K103956103981_
                     (lambda (_rest103971_ _stx103972_)
                       (display '"... form:   ")
                       (__pp-syntax _stx103972_)
                       (for-each
                        (lambda (_detail103974_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail103974_))
                          (let ((_$e103976_ (__AST-source _detail103974_)))
                            (if _$e103976_
                                ((lambda (_loc103979_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc103979_
                                    '#t
                                    (current-output-port)))
                                 _$e103976_)
                                '#!void))
                          (newline))
                        _rest103971_))))
               (if (##pair? _g103952103960_)
                   (let ((_hd103957103984_ (##car _g103952103960_))
                         (_tl103958103986_ (##cdr _g103952103960_)))
                     (let* ((_stx103989_ _hd103957103984_)
                            (_rest103991_ _tl103958103986_))
                       (_K103956103981_ _rest103991_ _stx103989_)))
                   '#!void)))
           current-output-port
           _port103938_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message103808_
               _irritants103809_
               _where103810_
               _context103811_
               _marks103812_
               _phi103813_)
        (let ((__obj108697
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj108697
           _message103808_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108697
           _irritants103809_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108697
           _where103810_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108697
           _context103811_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108697
           _marks103812_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108697
           _phi103813_
           '5
           SyntaxError::t
           '#f)
          __obj108697)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where103803_ _message103804_ _stx103805_ . _details103806_)
        (raise (make-syntax-error
                _message103804_
                (cons _stx103805_ _details103806_)
                _where103803_
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
      (lambda _$args103800_ (apply make-instance AST::t _$args103800_)))
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
      (lambda (_stx103798_)
        (if (##structure-instance-of? _stx103798_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx103798_ '1 AST::t '#f)
            _stx103798_)))
    (define __AST-source
      (lambda (_stx103792_)
        (let _lp103794_ ((_src103796_ _stx103792_))
          (if (##structure-instance-of? _src103796_ 'gerbil#AST::t)
              (_lp103794_
               (##unchecked-structure-ref _src103796_ '2 AST::t '#f))
              (if (##locat? _src103796_) _src103796_ '#f)))))
    (define __AST
      (lambda (_e103784_ _src-stx103785_)
        (let ((_src103787_ (__AST-source _src-stx103785_)))
          (if (or (##structure-instance-of? _e103784_ 'gerbil#AST::t)
                  (not _src103787_))
              _e103784_
              (##structure AST::t _e103784_ _src103787_)))))
    (define __AST-eq?
      (lambda (_stx103781_ _obj103782_)
        (eq? (__AST-e _stx103781_) _obj103782_)))
    (define __AST-pair? (lambda (_stx103779_) (pair? (__AST-e _stx103779_))))
    (define __AST-null? (lambda (_stx103777_) (null? (__AST-e _stx103777_))))
    (define __AST-datum?
      (lambda (_stx103758_)
        (let* ((_e103760_ (__AST-e _stx103758_))
               (_$e103762_ (number? _e103760_)))
          (if _$e103762_
              _$e103762_
              (let ((_$e103765_ (string? _e103760_)))
                (if _$e103765_
                    _$e103765_
                    (let ((_$e103768_ (char? _e103760_)))
                      (if _$e103768_
                          _$e103768_
                          (let ((_$e103771_ (keyword? _e103760_)))
                            (if _$e103771_
                                _$e103771_
                                (let ((_$e103774_ (boolean? _e103760_)))
                                  (if _$e103774_
                                      _$e103774_
                                      (eq? _e103760_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx103756_) (symbol? (__AST-e _stx103756_))))
    (define __AST-id-list?__%
      (lambda (_stx103707_ _tail?103708_)
        (let _lp103710_ ((_rest103712_ _stx103707_))
          (let* ((_$e103714_ _rest103712_)
                 (_$E103716103729_
                  (lambda ()
                    (let* ((_$E103717103724_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103714_)))
                           (_rest103727_ _$e103714_))
                      (_tail?103708_ _rest103727_)))))
            (if (__AST-pair? _$e103714_)
                (let* ((_$tgt103718103732_ (__AST-e _$e103714_))
                       (_$hd103719103735_ (##car _$tgt103718103732_))
                       (_$tl103720103738_ (##cdr _$tgt103718103732_)))
                  (let* ((_hd103742_ _$hd103719103735_)
                         (_rest103744_ _$tl103720103738_))
                    (if (__AST-id? _hd103742_) (_lp103710_ _rest103744_) '#f)))
                (_$E103716103729_))))))
    (define __AST-id-list?__0
      (lambda (_stx103749_)
        (let ((_tail?103751_ __AST-null?))
          (__AST-id-list?__% _stx103749_ _tail?103751_))))
    (define __AST-id-list?
      (lambda _g108700_
        (let ((_g108699_ (##length _g108700_)))
          (cond ((##fx= _g108699_ 1)
                 (apply (lambda (_stx103749_) (__AST-id-list?__0 _stx103749_))
                        _g108700_))
                ((##fx= _g108699_ 2)
                 (apply (lambda (_stx103753_ _tail?103754_)
                          (__AST-id-list?__% _stx103753_ _tail?103754_))
                        _g108700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108700_))))))
    (define __AST-bind-list?
      (lambda (_stx103699_)
        (__AST-id-list?__%
         _stx103699_
         (lambda (_e103701_)
           (let ((_$e103703_ (__AST-null? _e103701_)))
             (if _$e103703_ _$e103703_ (__AST-id? _e103701_)))))))
    (define __AST-list?__%
      (lambda (_stx103652_ _tail?103653_)
        (let _lp103655_ ((_rest103657_ _stx103652_))
          (let* ((_$e103659_ _rest103657_)
                 (_$E103661103674_
                  (lambda ()
                    (let* ((_$E103662103669_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103659_)))
                           (_rest103672_ _$e103659_))
                      (_tail?103653_ _rest103672_)))))
            (if (__AST-pair? _$e103659_)
                (let* ((_$tgt103663103677_ (__AST-e _$e103659_))
                       (_$hd103664103680_ (##car _$tgt103663103677_))
                       (_$tl103665103683_ (##cdr _$tgt103663103677_)))
                  (let ((_rest103687_ _$tl103665103683_))
                    (_lp103655_ _rest103687_)))
                (_$E103661103674_))))))
    (define __AST-list?__0
      (lambda (_stx103692_)
        (let ((_tail?103694_ __AST-null?))
          (__AST-list?__% _stx103692_ _tail?103694_))))
    (define __AST-list?
      (lambda _g108702_
        (let ((_g108701_ (##length _g108702_)))
          (cond ((##fx= _g108701_ 1)
                 (apply (lambda (_stx103692_) (__AST-list?__0 _stx103692_))
                        _g108702_))
                ((##fx= _g108701_ 2)
                 (apply (lambda (_stx103696_ _tail?103697_)
                          (__AST-list?__% _stx103696_ _tail?103697_))
                        _g108702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108702_))))))
    (define __AST->list
      (lambda (_stx103617_)
        (let* ((_$e103619_ _stx103617_)
               (_$E103621103634_
                (lambda ()
                  (let* ((_$E103622103629_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e103619_)))
                         (_rest103632_ _$e103619_))
                    (__AST-e _rest103632_)))))
          (if (__AST-pair? _$e103619_)
              (let* ((_$tgt103623103637_ (__AST-e _$e103619_))
                     (_$hd103624103640_ (##car _$tgt103623103637_))
                     (_$tl103625103643_ (##cdr _$tgt103623103637_)))
                (let* ((_hd103647_ _$hd103624103640_)
                       (_rest103649_ _$tl103625103643_))
                  (cons _hd103647_ (__AST->list _rest103649_))))
              (_$E103621103634_)))))
    (define __AST->datum
      (lambda (_stx103615_)
        (if (##structure-instance-of? _stx103615_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx103615_))
            (if (pair? _stx103615_)
                (cons (__AST->datum (car _stx103615_))
                      (__AST->datum (cdr _stx103615_)))
                (if (vector? _stx103615_)
                    (vector-map __AST->datum _stx103615_)
                    (if (box? _stx103615_)
                        (box (__AST->datum (unbox _stx103615_)))
                        _stx103615_))))))
    (define get-readenv
      (lambda (_port103613_)
        (##make-readenv
         _port103613_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in103601_)
        (let ((_e103603_ (##read-datum-or-eof (get-readenv _in103601_))))
          (if (eof-object? (__AST-e _e103603_))
              (__AST-e _e103603_)
              _e103603_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in103609_ (current-input-port))) (read-syntax__% _in103609_))))
    (define read-syntax
      (lambda _g108704_
        (let ((_g108703_ (##length _g108704_)))
          (cond ((##fx= _g108703_ 0)
                 (apply (lambda () (read-syntax__0)) _g108704_))
                ((##fx= _g108703_ 1)
                 (apply (lambda (_in103611_) (read-syntax__% _in103611_))
                        _g108704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108704_))))))
    (define read-syntax-from-file
      (lambda (_path103596_)
        (let ((_r103598_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path103596_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r103598_)
              (cdr (__AST-e (vector-ref _r103598_ '1)))
              (error (err-code->string _r103598_) _path103596_)))))
    (define __wrap-syntax
      (lambda (_re103593_ _e103594_)
        (if (eof-object? _e103594_)
            _e103594_
            (##structure AST::t _e103594_ (##readenv->locat _re103593_)))))
    (define __unwrap-syntax
      (lambda (_re103590_ _e103591_) (__AST-e _e103591_)))
    (define __pp-syntax (lambda (_stx103588_) (pp (__AST->datum _stx103588_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt103586_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt103586_ '#t)
          (macro-readtable-bracket-handler-set! _rt103586_ '@list)
          (macro-readtable-brace-handler-set! _rt103586_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt103586_
           '#\!
           __read-sharp-bang)
          _rt103586_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt103582_ _kw103583_)
        (macro-readtable-bracket-handler-set! _rt103582_ _kw103583_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt103579_ _kw103580_)
        (macro-readtable-brace-handler-set! _rt103579_ _kw103580_)))
    (define __read-sharp-bang
      (lambda (_re103570_ _next103571_ _start-pos103572_)
        (if (eq? _start-pos103572_ '0)
            (let* ((_line103574_
                    (##read-line
                     (macro-readenv-port _re103570_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line103576_
                    (substring _line103574_ '1 (string-length _line103574_))))
              (macro-readenv-script-line-set! _re103570_ _script-line103576_)
              (##script-marker))
            (##read-sharp-bang _re103570_ _next103571_ _start-pos103572_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj103568_)
        (if (source-location? _obj103568_)
            (string? (##locat-container _obj103568_))
            '#f)))
    (define source-location-path
      (lambda (_obj103566_)
        (if (##locat? _obj103566_)
            (##container->path (##locat-container _obj103566_))
            '#f)))))
