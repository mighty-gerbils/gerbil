(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708289479)
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
      (lambda _$args116002_
        (apply make-instance SyntaxError::t _$args116002_)))
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
      (lambda (_self115905_ _port115906_)
        (letrec ((_location115908_
                  (lambda ()
                    (let _lp115962_ ((_rest115964_
                                      (##unchecked-structure-ref
                                       _self115905_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest115965115973_ _rest115964_)
                             (_else115967115981_ (lambda () '#f))
                             (_K115969115990_
                              (lambda (_rest115984_ _hd115985_)
                                (let ((_$e115987_ (__AST-source _hd115985_)))
                                  (if _$e115987_
                                      _$e115987_
                                      (_lp115962_ _rest115984_))))))
                        (if (##pair? _rest115965115973_)
                            (let ((_hd115970115993_ (##car _rest115965115973_))
                                  (_tl115971115995_
                                   (##cdr _rest115965115973_)))
                              (let* ((_hd115998_ _hd115970115993_)
                                     (_rest116000_ _tl115971115995_))
                                (_K115969115990_ _rest116000_ _hd115998_)))
                            (_else115967115981_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e115911_ (_location115908_)))
               (if _$e115911_
                   ((lambda (_where115914_)
                      (##display-locat
                       _where115914_
                       '#t
                       (current-output-port)))
                    _$e115911_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e115916_
                    (##unchecked-structure-ref
                     _self115905_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e115916_
                   ((lambda (_where115919_)
                      (displayln
                       '" at "
                       _where115919_
                       '": "
                       (##unchecked-structure-ref
                        _self115905_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e115916_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self115905_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g115920115928_
                     (##unchecked-structure-ref
                      _self115905_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else115922115936_ (lambda () '#!void))
                    (_K115924115949_
                     (lambda (_rest115939_ _stx115940_)
                       (display '"... form:   ")
                       (__pp-syntax _stx115940_)
                       (for-each
                        (lambda (_detail115942_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail115942_))
                          (let ((_$e115944_ (__AST-source _detail115942_)))
                            (if _$e115944_
                                ((lambda (_loc115947_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc115947_
                                    '#t
                                    (current-output-port)))
                                 _$e115944_)
                                '#!void))
                          (newline))
                        _rest115939_))))
               (if (##pair? _g115920115928_)
                   (let ((_hd115925115952_ (##car _g115920115928_))
                         (_tl115926115954_ (##cdr _g115920115928_)))
                     (let* ((_stx115957_ _hd115925115952_)
                            (_rest115959_ _tl115926115954_))
                       (_K115924115949_ _rest115959_ _stx115957_)))
                   '#!void)))
           current-output-port
           _port115906_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message115776_
               _irritants115777_
               _where115778_
               _context115779_
               _marks115780_
               _phi115781_)
        (let ((__obj120164
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj120164
           _message115776_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120164
           _irritants115777_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120164
           _where115778_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120164
           _context115779_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120164
           _marks115780_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj120164
           _phi115781_
           '5
           SyntaxError::t
           '#f)
          __obj120164)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where115771_ _message115772_ _stx115773_ . _details115774_)
        (raise (make-syntax-error
                _message115772_
                (cons _stx115773_ _details115774_)
                _where115771_
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
      (lambda _$args115768_ (apply make-instance AST::t _$args115768_)))
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
      (lambda (_stx115766_)
        (if (##structure-instance-of? _stx115766_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx115766_ '1 AST::t '#f)
            _stx115766_)))
    (define __AST-source
      (lambda (_stx115760_)
        (let _lp115762_ ((_src115764_ _stx115760_))
          (if (##structure-instance-of? _src115764_ 'gerbil#AST::t)
              (_lp115762_
               (##unchecked-structure-ref _src115764_ '2 AST::t '#f))
              (if (##locat? _src115764_) _src115764_ '#f)))))
    (define __AST
      (lambda (_e115752_ _src-stx115753_)
        (let ((_src115755_ (__AST-source _src-stx115753_)))
          (if (or (##structure-instance-of? _e115752_ 'gerbil#AST::t)
                  (not _src115755_))
              _e115752_
              (##structure AST::t _e115752_ _src115755_)))))
    (define __AST-eq?
      (lambda (_stx115749_ _obj115750_)
        (eq? (__AST-e _stx115749_) _obj115750_)))
    (define __AST-pair? (lambda (_stx115747_) (pair? (__AST-e _stx115747_))))
    (define __AST-null? (lambda (_stx115745_) (null? (__AST-e _stx115745_))))
    (define __AST-datum?
      (lambda (_stx115726_)
        (let* ((_e115728_ (__AST-e _stx115726_))
               (_$e115730_ (number? _e115728_)))
          (if _$e115730_
              _$e115730_
              (let ((_$e115733_ (string? _e115728_)))
                (if _$e115733_
                    _$e115733_
                    (let ((_$e115736_ (char? _e115728_)))
                      (if _$e115736_
                          _$e115736_
                          (let ((_$e115739_ (keyword? _e115728_)))
                            (if _$e115739_
                                _$e115739_
                                (let ((_$e115742_ (boolean? _e115728_)))
                                  (if _$e115742_
                                      _$e115742_
                                      (eq? _e115728_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx115724_) (symbol? (__AST-e _stx115724_))))
    (define __AST-id-list?__%
      (lambda (_stx115675_ _tail?115676_)
        (let _lp115678_ ((_rest115680_ _stx115675_))
          (let* ((_$e115682_ _rest115680_)
                 (_$E115684115697_
                  (lambda ()
                    (let* ((_$E115685115692_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e115682_)))
                           (_rest115695_ _$e115682_))
                      (_tail?115676_ _rest115695_)))))
            (if (__AST-pair? _$e115682_)
                (let* ((_$tgt115686115700_ (__AST-e _$e115682_))
                       (_$hd115687115703_ (##car _$tgt115686115700_))
                       (_$tl115688115706_ (##cdr _$tgt115686115700_)))
                  (let* ((_hd115710_ _$hd115687115703_)
                         (_rest115712_ _$tl115688115706_))
                    (if (__AST-id? _hd115710_) (_lp115678_ _rest115712_) '#f)))
                (_$E115684115697_))))))
    (define __AST-id-list?__0
      (lambda (_stx115717_)
        (let ((_tail?115719_ __AST-null?))
          (__AST-id-list?__% _stx115717_ _tail?115719_))))
    (define __AST-id-list?
      (lambda _g120167_
        (let ((_g120166_ (##length _g120167_)))
          (cond ((##fx= _g120166_ 1)
                 (apply (lambda (_stx115717_) (__AST-id-list?__0 _stx115717_))
                        _g120167_))
                ((##fx= _g120166_ 2)
                 (apply (lambda (_stx115721_ _tail?115722_)
                          (__AST-id-list?__% _stx115721_ _tail?115722_))
                        _g120167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g120167_))))))
    (define __AST-bind-list?
      (lambda (_stx115667_)
        (__AST-id-list?__%
         _stx115667_
         (lambda (_e115669_)
           (let ((_$e115671_ (__AST-null? _e115669_)))
             (if _$e115671_ _$e115671_ (__AST-id? _e115669_)))))))
    (define __AST-list?__%
      (lambda (_stx115620_ _tail?115621_)
        (let _lp115623_ ((_rest115625_ _stx115620_))
          (let* ((_$e115627_ _rest115625_)
                 (_$E115629115642_
                  (lambda ()
                    (let* ((_$E115630115637_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e115627_)))
                           (_rest115640_ _$e115627_))
                      (_tail?115621_ _rest115640_)))))
            (if (__AST-pair? _$e115627_)
                (let* ((_$tgt115631115645_ (__AST-e _$e115627_))
                       (_$hd115632115648_ (##car _$tgt115631115645_))
                       (_$tl115633115651_ (##cdr _$tgt115631115645_)))
                  (let ((_rest115655_ _$tl115633115651_))
                    (_lp115623_ _rest115655_)))
                (_$E115629115642_))))))
    (define __AST-list?__0
      (lambda (_stx115660_)
        (let ((_tail?115662_ __AST-null?))
          (__AST-list?__% _stx115660_ _tail?115662_))))
    (define __AST-list?
      (lambda _g120169_
        (let ((_g120168_ (##length _g120169_)))
          (cond ((##fx= _g120168_ 1)
                 (apply (lambda (_stx115660_) (__AST-list?__0 _stx115660_))
                        _g120169_))
                ((##fx= _g120168_ 2)
                 (apply (lambda (_stx115664_ _tail?115665_)
                          (__AST-list?__% _stx115664_ _tail?115665_))
                        _g120169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g120169_))))))
    (define __AST->list
      (lambda (_stx115585_)
        (let* ((_$e115587_ _stx115585_)
               (_$E115589115602_
                (lambda ()
                  (let* ((_$E115590115597_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e115587_)))
                         (_rest115600_ _$e115587_))
                    (__AST-e _rest115600_)))))
          (if (__AST-pair? _$e115587_)
              (let* ((_$tgt115591115605_ (__AST-e _$e115587_))
                     (_$hd115592115608_ (##car _$tgt115591115605_))
                     (_$tl115593115611_ (##cdr _$tgt115591115605_)))
                (let* ((_hd115615_ _$hd115592115608_)
                       (_rest115617_ _$tl115593115611_))
                  (cons _hd115615_ (__AST->list _rest115617_))))
              (_$E115589115602_)))))
    (define __AST->datum
      (lambda (_stx115583_)
        (if (##structure-instance-of? _stx115583_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx115583_))
            (if (pair? _stx115583_)
                (cons (__AST->datum (car _stx115583_))
                      (__AST->datum (cdr _stx115583_)))
                (if (vector? _stx115583_)
                    (vector-map __AST->datum _stx115583_)
                    (if (box? _stx115583_)
                        (box (__AST->datum (unbox _stx115583_)))
                        _stx115583_))))))
    (define get-readenv
      (lambda (_port115581_)
        (##make-readenv
         _port115581_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in115569_)
        (let ((_e115571_ (##read-datum-or-eof (get-readenv _in115569_))))
          (if (eof-object? (__AST-e _e115571_))
              (__AST-e _e115571_)
              _e115571_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in115577_ (current-input-port))) (read-syntax__% _in115577_))))
    (define read-syntax
      (lambda _g120171_
        (let ((_g120170_ (##length _g120171_)))
          (cond ((##fx= _g120170_ 0)
                 (apply (lambda () (read-syntax__0)) _g120171_))
                ((##fx= _g120170_ 1)
                 (apply (lambda (_in115579_) (read-syntax__% _in115579_))
                        _g120171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g120171_))))))
    (define read-syntax-from-file
      (lambda (_path115564_)
        (let ((_r115566_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path115564_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r115566_)
              (cdr (__AST-e (vector-ref _r115566_ '1)))
              (error (err-code->string _r115566_) _path115564_)))))
    (define __wrap-syntax
      (lambda (_re115561_ _e115562_)
        (if (eof-object? _e115562_)
            _e115562_
            (##structure AST::t _e115562_ (##readenv->locat _re115561_)))))
    (define __unwrap-syntax
      (lambda (_re115558_ _e115559_) (__AST-e _e115559_)))
    (define __pp-syntax (lambda (_stx115556_) (pp (__AST->datum _stx115556_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt115554_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt115554_ '#t)
          (macro-readtable-bracket-handler-set! _rt115554_ '@list)
          (macro-readtable-brace-handler-set! _rt115554_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt115554_
           '#\!
           __read-sharp-bang)
          _rt115554_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt115550_ _kw115551_)
        (macro-readtable-bracket-handler-set! _rt115550_ _kw115551_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt115547_ _kw115548_)
        (macro-readtable-brace-handler-set! _rt115547_ _kw115548_)))
    (define __read-sharp-bang
      (lambda (_re115538_ _next115539_ _start-pos115540_)
        (if (eq? _start-pos115540_ '0)
            (let* ((_line115542_
                    (##read-line
                     (macro-readenv-port _re115538_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line115544_
                    (substring _line115542_ '1 (string-length _line115542_))))
              (macro-readenv-script-line-set! _re115538_ _script-line115544_)
              (##script-marker))
            (##read-sharp-bang _re115538_ _next115539_ _start-pos115540_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj115536_)
        (if (source-location? _obj115536_)
            (string? (##locat-container _obj115536_))
            '#f)))
    (define source-location-path
      (lambda (_obj115534_)
        (if (##locat? _obj115534_)
            (##container->path (##locat-container _obj115534_))
            '#f)))))
