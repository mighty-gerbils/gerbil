(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1695292370)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       (cons Exception::t '())
       '(message irritants where context phi marks)
       'SyntaxError
       '((final: . #t))
       '#f))
    (define SyntaxError? (make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _$args14151_
        (apply make-class-instance SyntaxError::t _$args14151_)))
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
      (lambda (_self14054_ _port14055_)
        (letrec ((_location14057_
                  (lambda ()
                    (let _lp14111_ ((_rest14113_
                                     (slot-ref _self14054_ 'irritants)))
                      (let* ((_rest1411414122_ _rest14113_)
                             (_else1411614130_ (lambda () '#f))
                             (_K1411814139_
                              (lambda (_rest14133_ _hd14134_)
                                (let ((_$e14136_ (__AST-source _hd14134_)))
                                  (if _$e14136_
                                      _$e14136_
                                      (_lp14111_ _rest14133_))))))
                        (if (##pair? _rest1411414122_)
                            (let ((_hd1411914142_ (##car _rest1411414122_))
                                  (_tl1412014144_ (##cdr _rest1411414122_)))
                              (let* ((_hd14147_ _hd1411914142_)
                                     (_rest14149_ _tl1412014144_))
                                (_K1411814139_ _rest14149_ _hd14147_)))
                            (_else1411614130_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14060_ (_location14057_)))
               (if _$e14060_
                   ((lambda (_where14063_)
                      (##display-locat _where14063_ '#t (current-output-port)))
                    _$e14060_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14065_ (slot-ref _self14054_ 'where)))
               (if _$e14065_
                   ((lambda (_where14068_)
                      (displayln
                       '" at "
                       _where14068_
                       '": "
                       (slot-ref _self14054_ 'message)))
                    _$e14065_)
                   (displayln '": " (slot-ref _self14054_ 'message))))
             (let* ((_g1406914077_ (slot-ref _self14054_ 'irritants))
                    (_else1407114085_ (lambda () '#!void))
                    (_K1407314098_
                     (lambda (_rest14088_ _stx14089_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14089_)
                       (for-each
                        (lambda (_detail14091_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14091_))
                          (let ((_$e14093_ (__AST-source _detail14091_)))
                            (if _$e14093_
                                ((lambda (_loc14096_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14096_
                                    '#t
                                    (current-output-port)))
                                 _$e14093_)
                                '#!void))
                          (newline))
                        _rest14088_))))
               (if (##pair? _g1406914077_)
                   (let ((_hd1407414101_ (##car _g1406914077_))
                         (_tl1407514103_ (##cdr _g1406914077_)))
                     (let* ((_stx14106_ _hd1407414101_)
                            (_rest14108_ _tl1407514103_))
                       (_K1407314098_ _rest14108_ _stx14106_)))
                   '#!void)))
           current-output-port
           _port14055_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message13925_
               _irritants13926_
               _where13927_
               _context13928_
               _marks13929_
               _phi13930_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message13925_
         'irritants:
         _irritants13926_
         'where:
         _where13927_
         'context:
         _context13928_
         'marks:
         _marks13929_
         'phi:
         _phi13930_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where13920_ _message13921_ _stx13922_ . _details13923_)
        (raise (make-syntax-error
                _message13921_
                (cons _stx13922_ _details13923_)
                _where13920_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args13917_ (apply make-struct-instance AST::t _$args13917_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx13915_)
        (if (##structure-instance-of? _stx13915_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx13915_ '1 AST::t '#f)
            _stx13915_)))
    (define __AST-source
      (lambda (_stx13909_)
        (let _lp13911_ ((_src13913_ _stx13909_))
          (if (##structure-instance-of? _src13913_ 'gerbil#AST::t)
              (_lp13911_ (##unchecked-structure-ref _src13913_ '2 AST::t '#f))
              (if (##locat? _src13913_) _src13913_ '#f)))))
    (define __AST
      (lambda (_e13901_ _src-stx13902_)
        (let ((_src13904_ (__AST-source _src-stx13902_)))
          (if (or (##structure-instance-of? _e13901_ 'gerbil#AST::t)
                  (not _src13904_))
              _e13901_
              (##structure AST::t _e13901_ _src13904_)))))
    (define __AST-eq?
      (lambda (_stx13898_ _obj13899_) (eq? (__AST-e _stx13898_) _obj13899_)))
    (define __AST-pair? (lambda (_stx13896_) (pair? (__AST-e _stx13896_))))
    (define __AST-null? (lambda (_stx13894_) (null? (__AST-e _stx13894_))))
    (define __AST-datum?
      (lambda (_stx13875_)
        (let* ((_e13877_ (__AST-e _stx13875_)) (_$e13879_ (number? _e13877_)))
          (if _$e13879_
              _$e13879_
              (let ((_$e13882_ (string? _e13877_)))
                (if _$e13882_
                    _$e13882_
                    (let ((_$e13885_ (char? _e13877_)))
                      (if _$e13885_
                          _$e13885_
                          (let ((_$e13888_ (keyword? _e13877_)))
                            (if _$e13888_
                                _$e13888_
                                (let ((_$e13891_ (boolean? _e13877_)))
                                  (if _$e13891_
                                      _$e13891_
                                      (eq? _e13877_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx13873_) (symbol? (__AST-e _stx13873_))))
    (define __AST-id-list?__%
      (lambda (_stx13824_ _tail?13825_)
        (let _lp13827_ ((_rest13829_ _stx13824_))
          (let* ((_$e13831_ _rest13829_)
                 (_$E1383313846_
                  (lambda ()
                    (let* ((_$E1383413841_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e13831_)))
                           (_rest13844_ _$e13831_))
                      (_tail?13825_ _rest13844_)))))
            (if (__AST-pair? _$e13831_)
                (let* ((_$tgt1383513849_ (__AST-e _$e13831_))
                       (_$hd1383613852_ (##car _$tgt1383513849_))
                       (_$tl1383713855_ (##cdr _$tgt1383513849_)))
                  (let* ((_hd13859_ _$hd1383613852_)
                         (_rest13861_ _$tl1383713855_))
                    (if (__AST-id? _hd13859_) (_lp13827_ _rest13861_) '#f)))
                (_$E1383313846_))))))
    (define __AST-id-list?__0
      (lambda (_stx13866_)
        (let ((_tail?13868_ __AST-null?))
          (__AST-id-list?__% _stx13866_ _tail?13868_))))
    (define __AST-id-list?
      (lambda _g14246_
        (let ((_g14245_ (##length _g14246_)))
          (cond ((##fx= _g14245_ 1)
                 (apply (lambda (_stx13866_) (__AST-id-list?__0 _stx13866_))
                        _g14246_))
                ((##fx= _g14245_ 2)
                 (apply (lambda (_stx13870_ _tail?13871_)
                          (__AST-id-list?__% _stx13870_ _tail?13871_))
                        _g14246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14246_))))))
    (define __AST-bind-list?
      (lambda (_stx13816_)
        (__AST-id-list?__%
         _stx13816_
         (lambda (_e13818_)
           (let ((_$e13820_ (__AST-null? _e13818_)))
             (if _$e13820_ _$e13820_ (__AST-id? _e13818_)))))))
    (define __AST-list?__%
      (lambda (_stx13769_ _tail?13770_)
        (let _lp13772_ ((_rest13774_ _stx13769_))
          (let* ((_$e13776_ _rest13774_)
                 (_$E1377813791_
                  (lambda ()
                    (let* ((_$E1377913786_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e13776_)))
                           (_rest13789_ _$e13776_))
                      (_tail?13770_ _rest13789_)))))
            (if (__AST-pair? _$e13776_)
                (let* ((_$tgt1378013794_ (__AST-e _$e13776_))
                       (_$hd1378113797_ (##car _$tgt1378013794_))
                       (_$tl1378213800_ (##cdr _$tgt1378013794_)))
                  (let ((_rest13804_ _$tl1378213800_))
                    (_lp13772_ _rest13804_)))
                (_$E1377813791_))))))
    (define __AST-list?__0
      (lambda (_stx13809_)
        (let ((_tail?13811_ __AST-null?))
          (__AST-list?__% _stx13809_ _tail?13811_))))
    (define __AST-list?
      (lambda _g14248_
        (let ((_g14247_ (##length _g14248_)))
          (cond ((##fx= _g14247_ 1)
                 (apply (lambda (_stx13809_) (__AST-list?__0 _stx13809_))
                        _g14248_))
                ((##fx= _g14247_ 2)
                 (apply (lambda (_stx13813_ _tail?13814_)
                          (__AST-list?__% _stx13813_ _tail?13814_))
                        _g14248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14248_))))))
    (define __AST->list
      (lambda (_stx13734_)
        (let* ((_$e13736_ _stx13734_)
               (_$E1373813751_
                (lambda ()
                  (let* ((_$E1373913746_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _$e13736_)))
                         (_rest13749_ _$e13736_))
                    (__AST-e _rest13749_)))))
          (if (__AST-pair? _$e13736_)
              (let* ((_$tgt1374013754_ (__AST-e _$e13736_))
                     (_$hd1374113757_ (##car _$tgt1374013754_))
                     (_$tl1374213760_ (##cdr _$tgt1374013754_)))
                (let* ((_hd13764_ _$hd1374113757_)
                       (_rest13766_ _$tl1374213760_))
                  (cons _hd13764_ (__AST->list _rest13766_))))
              (_$E1373813751_)))))
    (define __AST->datum
      (lambda (_stx13732_)
        (if (##structure-instance-of? _stx13732_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx13732_))
            (if (pair? _stx13732_)
                (cons (__AST->datum (car _stx13732_))
                      (__AST->datum (cdr _stx13732_)))
                (if (vector? _stx13732_)
                    (vector-map __AST->datum _stx13732_)
                    (if (box? _stx13732_)
                        (box (__AST->datum (unbox _stx13732_)))
                        _stx13732_))))))
    (define get-readenv
      (lambda (_port13730_)
        (##make-readenv
         _port13730_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in13718_)
        (let ((_e13720_ (##read-datum-or-eof (get-readenv _in13718_))))
          (if (eof-object? (__AST-e _e13720_)) (__AST-e _e13720_) _e13720_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in13726_ (current-input-port))) (read-syntax__% _in13726_))))
    (define read-syntax
      (lambda _g14250_
        (let ((_g14249_ (##length _g14250_)))
          (cond ((##fx= _g14249_ 0)
                 (apply (lambda () (read-syntax__0)) _g14250_))
                ((##fx= _g14249_ 1)
                 (apply (lambda (_in13728_) (read-syntax__% _in13728_))
                        _g14250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14250_))))))
    (define read-syntax-from-file
      (lambda (_path13713_)
        (let ((_r13715_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path13713_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r13715_)
              (cdr (__AST-e (vector-ref _r13715_ '1)))
              (error (err-code->string _r13715_) _path13713_)))))
    (define __wrap-syntax
      (lambda (_re13710_ _e13711_)
        (if (eof-object? _e13711_)
            _e13711_
            (##structure AST::t _e13711_ (##readenv->locat _re13710_)))))
    (define __unwrap-syntax (lambda (_re13707_ _e13708_) (__AST-e _e13708_)))
    (define __pp-syntax (lambda (_stx13705_) (pp (__AST->datum _stx13705_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt13703_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt13703_ '#t)
          (macro-readtable-bracket-handler-set! _rt13703_ '@list)
          (macro-readtable-brace-handler-set! _rt13703_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt13703_
           '#\!
           __read-sharp-bang)
          _rt13703_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt13699_ _kw13700_)
        (macro-readtable-bracket-handler-set! _rt13699_ _kw13700_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt13696_ _kw13697_)
        (macro-readtable-brace-handler-set! _rt13696_ _kw13697_)))
    (define __read-sharp-bang
      (lambda (_re13687_ _next13688_ _start-pos13689_)
        (if (eq? _start-pos13689_ '0)
            (let* ((_line13691_
                    (##read-line
                     (macro-readenv-port _re13687_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line13693_
                    (substring _line13691_ '1 (string-length _line13691_))))
              (macro-readenv-script-line-set! _re13687_ _script-line13693_)
              (##script-marker))
            (##read-sharp-bang _re13687_ _next13688_ _start-pos13689_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj13685_)
        (if (source-location? _obj13685_)
            (string? (##locat-container _obj13685_))
            '#f)))
    (define source-location-path
      (lambda (_obj13683_)
        (if (##locat? _obj13683_)
            (##container->path (##locat-container _obj13683_))
            '#f)))))
