(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707601715)
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
      (lambda _$args102081_
        (apply make-class-instance SyntaxError::t _$args102081_)))
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
      (lambda (_self101984_ _port101985_)
        (letrec ((_location101987_
                  (lambda ()
                    (let _lp102041_ ((_rest102043_
                                      (##unchecked-structure-ref
                                       _self101984_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102044102052_ _rest102043_)
                             (_else102046102060_ (lambda () '#f))
                             (_K102048102069_
                              (lambda (_rest102063_ _hd102064_)
                                (let ((_$e102066_ (__AST-source _hd102064_)))
                                  (if _$e102066_
                                      _$e102066_
                                      (_lp102041_ _rest102063_))))))
                        (if (##pair? _rest102044102052_)
                            (let ((_hd102049102072_ (##car _rest102044102052_))
                                  (_tl102050102074_
                                   (##cdr _rest102044102052_)))
                              (let* ((_hd102077_ _hd102049102072_)
                                     (_rest102079_ _tl102050102074_))
                                (_K102048102069_ _rest102079_ _hd102077_)))
                            (_else102046102060_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e101990_ (_location101987_)))
               (if _$e101990_
                   ((lambda (_where101993_)
                      (##display-locat
                       _where101993_
                       '#t
                       (current-output-port)))
                    _$e101990_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e101995_
                    (##unchecked-structure-ref
                     _self101984_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e101995_
                   ((lambda (_where101998_)
                      (displayln
                       '" at "
                       _where101998_
                       '": "
                       (##unchecked-structure-ref
                        _self101984_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e101995_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self101984_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g101999102007_
                     (##unchecked-structure-ref
                      _self101984_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102001102015_ (lambda () '#!void))
                    (_K102003102028_
                     (lambda (_rest102018_ _stx102019_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102019_)
                       (for-each
                        (lambda (_detail102021_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102021_))
                          (let ((_$e102023_ (__AST-source _detail102021_)))
                            (if _$e102023_
                                ((lambda (_loc102026_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102026_
                                    '#t
                                    (current-output-port)))
                                 _$e102023_)
                                '#!void))
                          (newline))
                        _rest102018_))))
               (if (##pair? _g101999102007_)
                   (let ((_hd102004102031_ (##car _g101999102007_))
                         (_tl102005102033_ (##cdr _g101999102007_)))
                     (let* ((_stx102036_ _hd102004102031_)
                            (_rest102038_ _tl102005102033_))
                       (_K102003102028_ _rest102038_ _stx102036_)))
                   '#!void)))
           current-output-port
           _port101985_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101855_
               _irritants101856_
               _where101857_
               _context101858_
               _marks101859_
               _phi101860_)
        (let ((__obj106644
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106644
           _message101855_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106644
           _irritants101856_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106644
           _where101857_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106644
           _context101858_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106644
           _marks101859_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106644
           _phi101860_
           '5
           SyntaxError::t
           '#f)
          __obj106644)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101850_ _message101851_ _stx101852_ . _details101853_)
        (raise (make-syntax-error
                _message101851_
                (cons _stx101852_ _details101853_)
                _where101850_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type
       'gerbil#AST::t
       'syntax
       '#f
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args101847_ (apply make-struct-instance AST::t _$args101847_)))
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
      (lambda (_stx101845_)
        (if (##structure-instance-of? _stx101845_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx101845_ '1 AST::t '#f)
            _stx101845_)))
    (define __AST-source
      (lambda (_stx101839_)
        (let _lp101841_ ((_src101843_ _stx101839_))
          (if (##structure-instance-of? _src101843_ 'gerbil#AST::t)
              (_lp101841_
               (##unchecked-structure-ref _src101843_ '2 AST::t '#f))
              (if (##locat? _src101843_) _src101843_ '#f)))))
    (define __AST
      (lambda (_e101831_ _src-stx101832_)
        (let ((_src101834_ (__AST-source _src-stx101832_)))
          (if (or (##structure-instance-of? _e101831_ 'gerbil#AST::t)
                  (not _src101834_))
              _e101831_
              (##structure AST::t _e101831_ _src101834_)))))
    (define __AST-eq?
      (lambda (_stx101828_ _obj101829_)
        (eq? (__AST-e _stx101828_) _obj101829_)))
    (define __AST-pair? (lambda (_stx101826_) (pair? (__AST-e _stx101826_))))
    (define __AST-null? (lambda (_stx101824_) (null? (__AST-e _stx101824_))))
    (define __AST-datum?
      (lambda (_stx101805_)
        (let* ((_e101807_ (__AST-e _stx101805_))
               (_$e101809_ (number? _e101807_)))
          (if _$e101809_
              _$e101809_
              (let ((_$e101812_ (string? _e101807_)))
                (if _$e101812_
                    _$e101812_
                    (let ((_$e101815_ (char? _e101807_)))
                      (if _$e101815_
                          _$e101815_
                          (let ((_$e101818_ (keyword? _e101807_)))
                            (if _$e101818_
                                _$e101818_
                                (let ((_$e101821_ (boolean? _e101807_)))
                                  (if _$e101821_
                                      _$e101821_
                                      (eq? _e101807_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101803_) (symbol? (__AST-e _stx101803_))))
    (define __AST-id-list?__%
      (lambda (_stx101754_ _tail?101755_)
        (let _lp101757_ ((_rest101759_ _stx101754_))
          (let* ((_$e101761_ _rest101759_)
                 (_$E101763101776_
                  (lambda ()
                    (let* ((_$E101764101771_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101761_)))
                           (_rest101774_ _$e101761_))
                      (_tail?101755_ _rest101774_)))))
            (if (__AST-pair? _$e101761_)
                (let* ((_$tgt101765101779_ (__AST-e _$e101761_))
                       (_$hd101766101782_ (##car _$tgt101765101779_))
                       (_$tl101767101785_ (##cdr _$tgt101765101779_)))
                  (let* ((_hd101789_ _$hd101766101782_)
                         (_rest101791_ _$tl101767101785_))
                    (if (__AST-id? _hd101789_) (_lp101757_ _rest101791_) '#f)))
                (_$E101763101776_))))))
    (define __AST-id-list?__0
      (lambda (_stx101796_)
        (let ((_tail?101798_ __AST-null?))
          (__AST-id-list?__% _stx101796_ _tail?101798_))))
    (define __AST-id-list?
      (lambda _g106647_
        (let ((_g106646_ (##length _g106647_)))
          (cond ((##fx= _g106646_ 1)
                 (apply (lambda (_stx101796_) (__AST-id-list?__0 _stx101796_))
                        _g106647_))
                ((##fx= _g106646_ 2)
                 (apply (lambda (_stx101800_ _tail?101801_)
                          (__AST-id-list?__% _stx101800_ _tail?101801_))
                        _g106647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106647_))))))
    (define __AST-bind-list?
      (lambda (_stx101746_)
        (__AST-id-list?__%
         _stx101746_
         (lambda (_e101748_)
           (let ((_$e101750_ (__AST-null? _e101748_)))
             (if _$e101750_ _$e101750_ (__AST-id? _e101748_)))))))
    (define __AST-list?__%
      (lambda (_stx101699_ _tail?101700_)
        (let _lp101702_ ((_rest101704_ _stx101699_))
          (let* ((_$e101706_ _rest101704_)
                 (_$E101708101721_
                  (lambda ()
                    (let* ((_$E101709101716_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101706_)))
                           (_rest101719_ _$e101706_))
                      (_tail?101700_ _rest101719_)))))
            (if (__AST-pair? _$e101706_)
                (let* ((_$tgt101710101724_ (__AST-e _$e101706_))
                       (_$hd101711101727_ (##car _$tgt101710101724_))
                       (_$tl101712101730_ (##cdr _$tgt101710101724_)))
                  (let ((_rest101734_ _$tl101712101730_))
                    (_lp101702_ _rest101734_)))
                (_$E101708101721_))))))
    (define __AST-list?__0
      (lambda (_stx101739_)
        (let ((_tail?101741_ __AST-null?))
          (__AST-list?__% _stx101739_ _tail?101741_))))
    (define __AST-list?
      (lambda _g106649_
        (let ((_g106648_ (##length _g106649_)))
          (cond ((##fx= _g106648_ 1)
                 (apply (lambda (_stx101739_) (__AST-list?__0 _stx101739_))
                        _g106649_))
                ((##fx= _g106648_ 2)
                 (apply (lambda (_stx101743_ _tail?101744_)
                          (__AST-list?__% _stx101743_ _tail?101744_))
                        _g106649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106649_))))))
    (define __AST->list
      (lambda (_stx101664_)
        (let* ((_$e101666_ _stx101664_)
               (_$E101668101681_
                (lambda ()
                  (let* ((_$E101669101676_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101666_)))
                         (_rest101679_ _$e101666_))
                    (__AST-e _rest101679_)))))
          (if (__AST-pair? _$e101666_)
              (let* ((_$tgt101670101684_ (__AST-e _$e101666_))
                     (_$hd101671101687_ (##car _$tgt101670101684_))
                     (_$tl101672101690_ (##cdr _$tgt101670101684_)))
                (let* ((_hd101694_ _$hd101671101687_)
                       (_rest101696_ _$tl101672101690_))
                  (cons _hd101694_ (__AST->list _rest101696_))))
              (_$E101668101681_)))))
    (define __AST->datum
      (lambda (_stx101662_)
        (if (##structure-instance-of? _stx101662_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx101662_))
            (if (pair? _stx101662_)
                (cons (__AST->datum (car _stx101662_))
                      (__AST->datum (cdr _stx101662_)))
                (if (vector? _stx101662_)
                    (vector-map __AST->datum _stx101662_)
                    (if (box? _stx101662_)
                        (box (__AST->datum (unbox _stx101662_)))
                        _stx101662_))))))
    (define get-readenv
      (lambda (_port101660_)
        (##make-readenv
         _port101660_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101648_)
        (let ((_e101650_ (##read-datum-or-eof (get-readenv _in101648_))))
          (if (eof-object? (__AST-e _e101650_))
              (__AST-e _e101650_)
              _e101650_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101656_ (current-input-port))) (read-syntax__% _in101656_))))
    (define read-syntax
      (lambda _g106651_
        (let ((_g106650_ (##length _g106651_)))
          (cond ((##fx= _g106650_ 0)
                 (apply (lambda () (read-syntax__0)) _g106651_))
                ((##fx= _g106650_ 1)
                 (apply (lambda (_in101658_) (read-syntax__% _in101658_))
                        _g106651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106651_))))))
    (define read-syntax-from-file
      (lambda (_path101643_)
        (let ((_r101645_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101643_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101645_)
              (cdr (__AST-e (vector-ref _r101645_ '1)))
              (error (err-code->string _r101645_) _path101643_)))))
    (define __wrap-syntax
      (lambda (_re101640_ _e101641_)
        (if (eof-object? _e101641_)
            _e101641_
            (##structure AST::t _e101641_ (##readenv->locat _re101640_)))))
    (define __unwrap-syntax
      (lambda (_re101637_ _e101638_) (__AST-e _e101638_)))
    (define __pp-syntax (lambda (_stx101635_) (pp (__AST->datum _stx101635_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101633_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101633_ '#t)
          (macro-readtable-bracket-handler-set! _rt101633_ '@list)
          (macro-readtable-brace-handler-set! _rt101633_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101633_
           '#\!
           __read-sharp-bang)
          _rt101633_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101629_ _kw101630_)
        (macro-readtable-bracket-handler-set! _rt101629_ _kw101630_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101626_ _kw101627_)
        (macro-readtable-brace-handler-set! _rt101626_ _kw101627_)))
    (define __read-sharp-bang
      (lambda (_re101617_ _next101618_ _start-pos101619_)
        (if (eq? _start-pos101619_ '0)
            (let* ((_line101621_
                    (##read-line
                     (macro-readenv-port _re101617_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101623_
                    (substring _line101621_ '1 (string-length _line101621_))))
              (macro-readenv-script-line-set! _re101617_ _script-line101623_)
              (##script-marker))
            (##read-sharp-bang _re101617_ _next101618_ _start-pos101619_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101615_)
        (if (source-location? _obj101615_)
            (string? (##locat-container _obj101615_))
            '#f)))
    (define source-location-path
      (lambda (_obj101613_)
        (if (##locat? _obj101613_)
            (##container->path (##locat-container _obj101613_))
            '#f)))))
