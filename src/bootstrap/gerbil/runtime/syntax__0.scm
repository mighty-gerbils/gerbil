(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707840754)
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
      (lambda _$args104136_
        (apply make-instance SyntaxError::t _$args104136_)))
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
      (lambda (_self104039_ _port104040_)
        (letrec ((_location104042_
                  (lambda ()
                    (let _lp104096_ ((_rest104098_
                                      (##unchecked-structure-ref
                                       _self104039_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest104099104107_ _rest104098_)
                             (_else104101104115_ (lambda () '#f))
                             (_K104103104124_
                              (lambda (_rest104118_ _hd104119_)
                                (let ((_$e104121_ (__AST-source _hd104119_)))
                                  (if _$e104121_
                                      _$e104121_
                                      (_lp104096_ _rest104118_))))))
                        (if (##pair? _rest104099104107_)
                            (let ((_hd104104104127_ (##car _rest104099104107_))
                                  (_tl104105104129_
                                   (##cdr _rest104099104107_)))
                              (let* ((_hd104132_ _hd104104104127_)
                                     (_rest104134_ _tl104105104129_))
                                (_K104103104124_ _rest104134_ _hd104132_)))
                            (_else104101104115_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e104045_ (_location104042_)))
               (if _$e104045_
                   ((lambda (_where104048_)
                      (##display-locat
                       _where104048_
                       '#t
                       (current-output-port)))
                    _$e104045_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e104050_
                    (##unchecked-structure-ref
                     _self104039_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e104050_
                   ((lambda (_where104053_)
                      (displayln
                       '" at "
                       _where104053_
                       '": "
                       (##unchecked-structure-ref
                        _self104039_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e104050_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self104039_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g104054104062_
                     (##unchecked-structure-ref
                      _self104039_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else104056104070_ (lambda () '#!void))
                    (_K104058104083_
                     (lambda (_rest104073_ _stx104074_)
                       (display '"... form:   ")
                       (__pp-syntax _stx104074_)
                       (for-each
                        (lambda (_detail104076_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail104076_))
                          (let ((_$e104078_ (__AST-source _detail104076_)))
                            (if _$e104078_
                                ((lambda (_loc104081_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc104081_
                                    '#t
                                    (current-output-port)))
                                 _$e104078_)
                                '#!void))
                          (newline))
                        _rest104073_))))
               (if (##pair? _g104054104062_)
                   (let ((_hd104059104086_ (##car _g104054104062_))
                         (_tl104060104088_ (##cdr _g104054104062_)))
                     (let* ((_stx104091_ _hd104059104086_)
                            (_rest104093_ _tl104060104088_))
                       (_K104058104083_ _rest104093_ _stx104091_)))
                   '#!void)))
           current-output-port
           _port104040_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message103910_
               _irritants103911_
               _where103912_
               _context103913_
               _marks103914_
               _phi103915_)
        (let ((__obj108799
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj108799
           _message103910_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108799
           _irritants103911_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108799
           _where103912_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108799
           _context103913_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108799
           _marks103914_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj108799
           _phi103915_
           '5
           SyntaxError::t
           '#f)
          __obj108799)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where103905_ _message103906_ _stx103907_ . _details103908_)
        (raise (make-syntax-error
                _message103906_
                (cons _stx103907_ _details103908_)
                _where103905_
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
      (lambda _$args103902_ (apply make-instance AST::t _$args103902_)))
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
      (lambda (_stx103900_)
        (if (##structure-instance-of? _stx103900_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx103900_ '1 AST::t '#f)
            _stx103900_)))
    (define __AST-source
      (lambda (_stx103894_)
        (let _lp103896_ ((_src103898_ _stx103894_))
          (if (##structure-instance-of? _src103898_ 'gerbil#AST::t)
              (_lp103896_
               (##unchecked-structure-ref _src103898_ '2 AST::t '#f))
              (if (##locat? _src103898_) _src103898_ '#f)))))
    (define __AST
      (lambda (_e103886_ _src-stx103887_)
        (let ((_src103889_ (__AST-source _src-stx103887_)))
          (if (or (##structure-instance-of? _e103886_ 'gerbil#AST::t)
                  (not _src103889_))
              _e103886_
              (##structure AST::t _e103886_ _src103889_)))))
    (define __AST-eq?
      (lambda (_stx103883_ _obj103884_)
        (eq? (__AST-e _stx103883_) _obj103884_)))
    (define __AST-pair? (lambda (_stx103881_) (pair? (__AST-e _stx103881_))))
    (define __AST-null? (lambda (_stx103879_) (null? (__AST-e _stx103879_))))
    (define __AST-datum?
      (lambda (_stx103860_)
        (let* ((_e103862_ (__AST-e _stx103860_))
               (_$e103864_ (number? _e103862_)))
          (if _$e103864_
              _$e103864_
              (let ((_$e103867_ (string? _e103862_)))
                (if _$e103867_
                    _$e103867_
                    (let ((_$e103870_ (char? _e103862_)))
                      (if _$e103870_
                          _$e103870_
                          (let ((_$e103873_ (keyword? _e103862_)))
                            (if _$e103873_
                                _$e103873_
                                (let ((_$e103876_ (boolean? _e103862_)))
                                  (if _$e103876_
                                      _$e103876_
                                      (eq? _e103862_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx103858_) (symbol? (__AST-e _stx103858_))))
    (define __AST-id-list?__%
      (lambda (_stx103809_ _tail?103810_)
        (let _lp103812_ ((_rest103814_ _stx103809_))
          (let* ((_$e103816_ _rest103814_)
                 (_$E103818103831_
                  (lambda ()
                    (let* ((_$E103819103826_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103816_)))
                           (_rest103829_ _$e103816_))
                      (_tail?103810_ _rest103829_)))))
            (if (__AST-pair? _$e103816_)
                (let* ((_$tgt103820103834_ (__AST-e _$e103816_))
                       (_$hd103821103837_ (##car _$tgt103820103834_))
                       (_$tl103822103840_ (##cdr _$tgt103820103834_)))
                  (let* ((_hd103844_ _$hd103821103837_)
                         (_rest103846_ _$tl103822103840_))
                    (if (__AST-id? _hd103844_) (_lp103812_ _rest103846_) '#f)))
                (_$E103818103831_))))))
    (define __AST-id-list?__0
      (lambda (_stx103851_)
        (let ((_tail?103853_ __AST-null?))
          (__AST-id-list?__% _stx103851_ _tail?103853_))))
    (define __AST-id-list?
      (lambda _g108802_
        (let ((_g108801_ (##length _g108802_)))
          (cond ((##fx= _g108801_ 1)
                 (apply (lambda (_stx103851_) (__AST-id-list?__0 _stx103851_))
                        _g108802_))
                ((##fx= _g108801_ 2)
                 (apply (lambda (_stx103855_ _tail?103856_)
                          (__AST-id-list?__% _stx103855_ _tail?103856_))
                        _g108802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108802_))))))
    (define __AST-bind-list?
      (lambda (_stx103801_)
        (__AST-id-list?__%
         _stx103801_
         (lambda (_e103803_)
           (let ((_$e103805_ (__AST-null? _e103803_)))
             (if _$e103805_ _$e103805_ (__AST-id? _e103803_)))))))
    (define __AST-list?__%
      (lambda (_stx103754_ _tail?103755_)
        (let _lp103757_ ((_rest103759_ _stx103754_))
          (let* ((_$e103761_ _rest103759_)
                 (_$E103763103776_
                  (lambda ()
                    (let* ((_$E103764103771_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e103761_)))
                           (_rest103774_ _$e103761_))
                      (_tail?103755_ _rest103774_)))))
            (if (__AST-pair? _$e103761_)
                (let* ((_$tgt103765103779_ (__AST-e _$e103761_))
                       (_$hd103766103782_ (##car _$tgt103765103779_))
                       (_$tl103767103785_ (##cdr _$tgt103765103779_)))
                  (let ((_rest103789_ _$tl103767103785_))
                    (_lp103757_ _rest103789_)))
                (_$E103763103776_))))))
    (define __AST-list?__0
      (lambda (_stx103794_)
        (let ((_tail?103796_ __AST-null?))
          (__AST-list?__% _stx103794_ _tail?103796_))))
    (define __AST-list?
      (lambda _g108804_
        (let ((_g108803_ (##length _g108804_)))
          (cond ((##fx= _g108803_ 1)
                 (apply (lambda (_stx103794_) (__AST-list?__0 _stx103794_))
                        _g108804_))
                ((##fx= _g108803_ 2)
                 (apply (lambda (_stx103798_ _tail?103799_)
                          (__AST-list?__% _stx103798_ _tail?103799_))
                        _g108804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108804_))))))
    (define __AST->list
      (lambda (_stx103719_)
        (let* ((_$e103721_ _stx103719_)
               (_$E103723103736_
                (lambda ()
                  (let* ((_$E103724103731_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e103721_)))
                         (_rest103734_ _$e103721_))
                    (__AST-e _rest103734_)))))
          (if (__AST-pair? _$e103721_)
              (let* ((_$tgt103725103739_ (__AST-e _$e103721_))
                     (_$hd103726103742_ (##car _$tgt103725103739_))
                     (_$tl103727103745_ (##cdr _$tgt103725103739_)))
                (let* ((_hd103749_ _$hd103726103742_)
                       (_rest103751_ _$tl103727103745_))
                  (cons _hd103749_ (__AST->list _rest103751_))))
              (_$E103723103736_)))))
    (define __AST->datum
      (lambda (_stx103717_)
        (if (##structure-instance-of? _stx103717_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx103717_))
            (if (pair? _stx103717_)
                (cons (__AST->datum (car _stx103717_))
                      (__AST->datum (cdr _stx103717_)))
                (if (vector? _stx103717_)
                    (vector-map __AST->datum _stx103717_)
                    (if (box? _stx103717_)
                        (box (__AST->datum (unbox _stx103717_)))
                        _stx103717_))))))
    (define get-readenv
      (lambda (_port103715_)
        (##make-readenv
         _port103715_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in103703_)
        (let ((_e103705_ (##read-datum-or-eof (get-readenv _in103703_))))
          (if (eof-object? (__AST-e _e103705_))
              (__AST-e _e103705_)
              _e103705_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in103711_ (current-input-port))) (read-syntax__% _in103711_))))
    (define read-syntax
      (lambda _g108806_
        (let ((_g108805_ (##length _g108806_)))
          (cond ((##fx= _g108805_ 0)
                 (apply (lambda () (read-syntax__0)) _g108806_))
                ((##fx= _g108805_ 1)
                 (apply (lambda (_in103713_) (read-syntax__% _in103713_))
                        _g108806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108806_))))))
    (define read-syntax-from-file
      (lambda (_path103698_)
        (let ((_r103700_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path103698_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r103700_)
              (cdr (__AST-e (vector-ref _r103700_ '1)))
              (error (err-code->string _r103700_) _path103698_)))))
    (define __wrap-syntax
      (lambda (_re103695_ _e103696_)
        (if (eof-object? _e103696_)
            _e103696_
            (##structure AST::t _e103696_ (##readenv->locat _re103695_)))))
    (define __unwrap-syntax
      (lambda (_re103692_ _e103693_) (__AST-e _e103693_)))
    (define __pp-syntax (lambda (_stx103690_) (pp (__AST->datum _stx103690_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt103688_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt103688_ '#t)
          (macro-readtable-bracket-handler-set! _rt103688_ '@list)
          (macro-readtable-brace-handler-set! _rt103688_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt103688_
           '#\!
           __read-sharp-bang)
          _rt103688_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt103684_ _kw103685_)
        (macro-readtable-bracket-handler-set! _rt103684_ _kw103685_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt103681_ _kw103682_)
        (macro-readtable-brace-handler-set! _rt103681_ _kw103682_)))
    (define __read-sharp-bang
      (lambda (_re103672_ _next103673_ _start-pos103674_)
        (if (eq? _start-pos103674_ '0)
            (let* ((_line103676_
                    (##read-line
                     (macro-readenv-port _re103672_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line103678_
                    (substring _line103676_ '1 (string-length _line103676_))))
              (macro-readenv-script-line-set! _re103672_ _script-line103678_)
              (##script-marker))
            (##read-sharp-bang _re103672_ _next103673_ _start-pos103674_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj103670_)
        (if (source-location? _obj103670_)
            (string? (##locat-container _obj103670_))
            '#f)))
    (define source-location-path
      (lambda (_obj103668_)
        (if (##locat? _obj103668_)
            (##container->path (##locat-container _obj103668_))
            '#f)))))
