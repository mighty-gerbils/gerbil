(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707620169)
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
      (lambda _$args102127_
        (apply make-class-instance SyntaxError::t _$args102127_)))
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
      (lambda (_self102030_ _port102031_)
        (letrec ((_location102033_
                  (lambda ()
                    (let _lp102087_ ((_rest102089_
                                      (##unchecked-structure-ref
                                       _self102030_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102090102098_ _rest102089_)
                             (_else102092102106_ (lambda () '#f))
                             (_K102094102115_
                              (lambda (_rest102109_ _hd102110_)
                                (let ((_$e102112_ (__AST-source _hd102110_)))
                                  (if _$e102112_
                                      _$e102112_
                                      (_lp102087_ _rest102109_))))))
                        (if (##pair? _rest102090102098_)
                            (let ((_hd102095102118_ (##car _rest102090102098_))
                                  (_tl102096102120_
                                   (##cdr _rest102090102098_)))
                              (let* ((_hd102123_ _hd102095102118_)
                                     (_rest102125_ _tl102096102120_))
                                (_K102094102115_ _rest102125_ _hd102123_)))
                            (_else102092102106_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102036_ (_location102033_)))
               (if _$e102036_
                   ((lambda (_where102039_)
                      (##display-locat
                       _where102039_
                       '#t
                       (current-output-port)))
                    _$e102036_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102041_
                    (##unchecked-structure-ref
                     _self102030_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102041_
                   ((lambda (_where102044_)
                      (displayln
                       '" at "
                       _where102044_
                       '": "
                       (##unchecked-structure-ref
                        _self102030_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102041_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102030_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102045102053_
                     (##unchecked-structure-ref
                      _self102030_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102047102061_ (lambda () '#!void))
                    (_K102049102074_
                     (lambda (_rest102064_ _stx102065_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102065_)
                       (for-each
                        (lambda (_detail102067_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102067_))
                          (let ((_$e102069_ (__AST-source _detail102067_)))
                            (if _$e102069_
                                ((lambda (_loc102072_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102072_
                                    '#t
                                    (current-output-port)))
                                 _$e102069_)
                                '#!void))
                          (newline))
                        _rest102064_))))
               (if (##pair? _g102045102053_)
                   (let ((_hd102050102077_ (##car _g102045102053_))
                         (_tl102051102079_ (##cdr _g102045102053_)))
                     (let* ((_stx102082_ _hd102050102077_)
                            (_rest102084_ _tl102051102079_))
                       (_K102049102074_ _rest102084_ _stx102082_)))
                   '#!void)))
           current-output-port
           _port102031_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101901_
               _irritants101902_
               _where101903_
               _context101904_
               _marks101905_
               _phi101906_)
        (let ((__obj106690
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106690
           _message101901_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106690
           _irritants101902_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106690
           _where101903_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106690
           _context101904_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106690
           _marks101905_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106690
           _phi101906_
           '5
           SyntaxError::t
           '#f)
          __obj106690)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101896_ _message101897_ _stx101898_ . _details101899_)
        (raise (make-syntax-error
                _message101897_
                (cons _stx101898_ _details101899_)
                _where101896_
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
      (lambda _$args101893_ (apply make-struct-instance AST::t _$args101893_)))
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
      (lambda (_stx101891_)
        (if (##structure-instance-of? _stx101891_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx101891_ '1 AST::t '#f)
            _stx101891_)))
    (define __AST-source
      (lambda (_stx101885_)
        (let _lp101887_ ((_src101889_ _stx101885_))
          (if (##structure-instance-of? _src101889_ 'gerbil#AST::t)
              (_lp101887_
               (##unchecked-structure-ref _src101889_ '2 AST::t '#f))
              (if (##locat? _src101889_) _src101889_ '#f)))))
    (define __AST
      (lambda (_e101877_ _src-stx101878_)
        (let ((_src101880_ (__AST-source _src-stx101878_)))
          (if (or (##structure-instance-of? _e101877_ 'gerbil#AST::t)
                  (not _src101880_))
              _e101877_
              (##structure AST::t _e101877_ _src101880_)))))
    (define __AST-eq?
      (lambda (_stx101874_ _obj101875_)
        (eq? (__AST-e _stx101874_) _obj101875_)))
    (define __AST-pair? (lambda (_stx101872_) (pair? (__AST-e _stx101872_))))
    (define __AST-null? (lambda (_stx101870_) (null? (__AST-e _stx101870_))))
    (define __AST-datum?
      (lambda (_stx101851_)
        (let* ((_e101853_ (__AST-e _stx101851_))
               (_$e101855_ (number? _e101853_)))
          (if _$e101855_
              _$e101855_
              (let ((_$e101858_ (string? _e101853_)))
                (if _$e101858_
                    _$e101858_
                    (let ((_$e101861_ (char? _e101853_)))
                      (if _$e101861_
                          _$e101861_
                          (let ((_$e101864_ (keyword? _e101853_)))
                            (if _$e101864_
                                _$e101864_
                                (let ((_$e101867_ (boolean? _e101853_)))
                                  (if _$e101867_
                                      _$e101867_
                                      (eq? _e101853_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101849_) (symbol? (__AST-e _stx101849_))))
    (define __AST-id-list?__%
      (lambda (_stx101800_ _tail?101801_)
        (let _lp101803_ ((_rest101805_ _stx101800_))
          (let* ((_$e101807_ _rest101805_)
                 (_$E101809101822_
                  (lambda ()
                    (let* ((_$E101810101817_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101807_)))
                           (_rest101820_ _$e101807_))
                      (_tail?101801_ _rest101820_)))))
            (if (__AST-pair? _$e101807_)
                (let* ((_$tgt101811101825_ (__AST-e _$e101807_))
                       (_$hd101812101828_ (##car _$tgt101811101825_))
                       (_$tl101813101831_ (##cdr _$tgt101811101825_)))
                  (let* ((_hd101835_ _$hd101812101828_)
                         (_rest101837_ _$tl101813101831_))
                    (if (__AST-id? _hd101835_) (_lp101803_ _rest101837_) '#f)))
                (_$E101809101822_))))))
    (define __AST-id-list?__0
      (lambda (_stx101842_)
        (let ((_tail?101844_ __AST-null?))
          (__AST-id-list?__% _stx101842_ _tail?101844_))))
    (define __AST-id-list?
      (lambda _g106693_
        (let ((_g106692_ (##length _g106693_)))
          (cond ((##fx= _g106692_ 1)
                 (apply (lambda (_stx101842_) (__AST-id-list?__0 _stx101842_))
                        _g106693_))
                ((##fx= _g106692_ 2)
                 (apply (lambda (_stx101846_ _tail?101847_)
                          (__AST-id-list?__% _stx101846_ _tail?101847_))
                        _g106693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106693_))))))
    (define __AST-bind-list?
      (lambda (_stx101792_)
        (__AST-id-list?__%
         _stx101792_
         (lambda (_e101794_)
           (let ((_$e101796_ (__AST-null? _e101794_)))
             (if _$e101796_ _$e101796_ (__AST-id? _e101794_)))))))
    (define __AST-list?__%
      (lambda (_stx101745_ _tail?101746_)
        (let _lp101748_ ((_rest101750_ _stx101745_))
          (let* ((_$e101752_ _rest101750_)
                 (_$E101754101767_
                  (lambda ()
                    (let* ((_$E101755101762_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101752_)))
                           (_rest101765_ _$e101752_))
                      (_tail?101746_ _rest101765_)))))
            (if (__AST-pair? _$e101752_)
                (let* ((_$tgt101756101770_ (__AST-e _$e101752_))
                       (_$hd101757101773_ (##car _$tgt101756101770_))
                       (_$tl101758101776_ (##cdr _$tgt101756101770_)))
                  (let ((_rest101780_ _$tl101758101776_))
                    (_lp101748_ _rest101780_)))
                (_$E101754101767_))))))
    (define __AST-list?__0
      (lambda (_stx101785_)
        (let ((_tail?101787_ __AST-null?))
          (__AST-list?__% _stx101785_ _tail?101787_))))
    (define __AST-list?
      (lambda _g106695_
        (let ((_g106694_ (##length _g106695_)))
          (cond ((##fx= _g106694_ 1)
                 (apply (lambda (_stx101785_) (__AST-list?__0 _stx101785_))
                        _g106695_))
                ((##fx= _g106694_ 2)
                 (apply (lambda (_stx101789_ _tail?101790_)
                          (__AST-list?__% _stx101789_ _tail?101790_))
                        _g106695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106695_))))))
    (define __AST->list
      (lambda (_stx101710_)
        (let* ((_$e101712_ _stx101710_)
               (_$E101714101727_
                (lambda ()
                  (let* ((_$E101715101722_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101712_)))
                         (_rest101725_ _$e101712_))
                    (__AST-e _rest101725_)))))
          (if (__AST-pair? _$e101712_)
              (let* ((_$tgt101716101730_ (__AST-e _$e101712_))
                     (_$hd101717101733_ (##car _$tgt101716101730_))
                     (_$tl101718101736_ (##cdr _$tgt101716101730_)))
                (let* ((_hd101740_ _$hd101717101733_)
                       (_rest101742_ _$tl101718101736_))
                  (cons _hd101740_ (__AST->list _rest101742_))))
              (_$E101714101727_)))))
    (define __AST->datum
      (lambda (_stx101708_)
        (if (##structure-instance-of? _stx101708_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx101708_))
            (if (pair? _stx101708_)
                (cons (__AST->datum (car _stx101708_))
                      (__AST->datum (cdr _stx101708_)))
                (if (vector? _stx101708_)
                    (vector-map __AST->datum _stx101708_)
                    (if (box? _stx101708_)
                        (box (__AST->datum (unbox _stx101708_)))
                        _stx101708_))))))
    (define get-readenv
      (lambda (_port101706_)
        (##make-readenv
         _port101706_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101694_)
        (let ((_e101696_ (##read-datum-or-eof (get-readenv _in101694_))))
          (if (eof-object? (__AST-e _e101696_))
              (__AST-e _e101696_)
              _e101696_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101702_ (current-input-port))) (read-syntax__% _in101702_))))
    (define read-syntax
      (lambda _g106697_
        (let ((_g106696_ (##length _g106697_)))
          (cond ((##fx= _g106696_ 0)
                 (apply (lambda () (read-syntax__0)) _g106697_))
                ((##fx= _g106696_ 1)
                 (apply (lambda (_in101704_) (read-syntax__% _in101704_))
                        _g106697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106697_))))))
    (define read-syntax-from-file
      (lambda (_path101689_)
        (let ((_r101691_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101689_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101691_)
              (cdr (__AST-e (vector-ref _r101691_ '1)))
              (error (err-code->string _r101691_) _path101689_)))))
    (define __wrap-syntax
      (lambda (_re101686_ _e101687_)
        (if (eof-object? _e101687_)
            _e101687_
            (##structure AST::t _e101687_ (##readenv->locat _re101686_)))))
    (define __unwrap-syntax
      (lambda (_re101683_ _e101684_) (__AST-e _e101684_)))
    (define __pp-syntax (lambda (_stx101681_) (pp (__AST->datum _stx101681_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101679_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101679_ '#t)
          (macro-readtable-bracket-handler-set! _rt101679_ '@list)
          (macro-readtable-brace-handler-set! _rt101679_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101679_
           '#\!
           __read-sharp-bang)
          _rt101679_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101675_ _kw101676_)
        (macro-readtable-bracket-handler-set! _rt101675_ _kw101676_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101672_ _kw101673_)
        (macro-readtable-brace-handler-set! _rt101672_ _kw101673_)))
    (define __read-sharp-bang
      (lambda (_re101663_ _next101664_ _start-pos101665_)
        (if (eq? _start-pos101665_ '0)
            (let* ((_line101667_
                    (##read-line
                     (macro-readenv-port _re101663_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101669_
                    (substring _line101667_ '1 (string-length _line101667_))))
              (macro-readenv-script-line-set! _re101663_ _script-line101669_)
              (##script-marker))
            (##read-sharp-bang _re101663_ _next101664_ _start-pos101665_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101661_)
        (if (source-location? _obj101661_)
            (string? (##locat-container _obj101661_))
            '#f)))
    (define source-location-path
      (lambda (_obj101659_)
        (if (##locat? _obj101659_)
            (##container->path (##locat-container _obj101659_))
            '#f)))))
