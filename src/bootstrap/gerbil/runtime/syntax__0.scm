(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710699091)
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
      (lambda _$args76150_ (apply make-instance SyntaxError::t _$args76150_)))
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
      (lambda (_self76053_ _port76054_)
        (letrec ((_location76056_
                  (lambda ()
                    (let _lp76110_ ((_rest76112_
                                     (##unchecked-structure-ref
                                      _self76053_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7611376121_ _rest76112_)
                             (_else7611576129_ (lambda () '#f))
                             (_K7611776138_
                              (lambda (_rest76132_ _hd76133_)
                                (let ((_$e76135_ (__AST-source _hd76133_)))
                                  (if _$e76135_
                                      _$e76135_
                                      (_lp76110_ _rest76132_))))))
                        (if (##pair? _rest7611376121_)
                            (let ((_hd7611876141_ (##car _rest7611376121_))
                                  (_tl7611976143_ (##cdr _rest7611376121_)))
                              (let* ((_hd76146_ _hd7611876141_)
                                     (_rest76148_ _tl7611976143_))
                                (_K7611776138_ _rest76148_ _hd76146_)))
                            (_else7611576129_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e76059_ (_location76056_)))
               (if _$e76059_
                   ((lambda (_where76062_)
                      (##display-locat _where76062_ '#t (current-output-port)))
                    _$e76059_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e76064_
                    (##unchecked-structure-ref
                     _self76053_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e76064_
                   ((lambda (_where76067_)
                      (displayln
                       '" at "
                       _where76067_
                       '": "
                       (##unchecked-structure-ref
                        _self76053_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e76064_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self76053_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7606876076_
                     (##unchecked-structure-ref
                      _self76053_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7607076084_ (lambda () '#!void))
                    (_K7607276097_
                     (lambda (_rest76087_ _stx76088_)
                       (display '"... form:   ")
                       (__pp-syntax _stx76088_)
                       (for-each
                        (lambda (_detail76090_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail76090_))
                          (let ((_$e76092_ (__AST-source _detail76090_)))
                            (if _$e76092_
                                ((lambda (_loc76095_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc76095_
                                    '#t
                                    (current-output-port)))
                                 _$e76092_)
                                '#!void))
                          (newline))
                        _rest76087_))))
               (if (##pair? _g7606876076_)
                   (let ((_hd7607376100_ (##car _g7606876076_))
                         (_tl7607476102_ (##cdr _g7606876076_)))
                     (let* ((_stx76105_ _hd7607376100_)
                            (_rest76107_ _tl7607476102_))
                       (_K7607276097_ _rest76107_ _stx76105_)))
                   '#!void)))
           current-output-port
           _port76054_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message75924_
               _irritants75925_
               _where75926_
               _context75927_
               _marks75928_
               _phi75929_)
        (let ((__obj76245
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj76245
           _message75924_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76245
           _irritants75925_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76245
           _where75926_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76245
           _context75927_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76245
           _marks75928_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj76245
           _phi75929_
           '5
           SyntaxError::t
           '#f)
          __obj76245)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where75919_ _message75920_ _stx75921_ . _details75922_)
        (raise (make-syntax-error
                _message75920_
                (cons _stx75921_ _details75922_)
                _where75919_
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
      (lambda _$args75916_ (apply make-instance AST::t _$args75916_)))
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
      (lambda (_stx75914_)
        (if (##structure-instance-of? _stx75914_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx75914_ '1 AST::t '#f)
            _stx75914_)))
    (define __AST-source
      (lambda (_stx75908_)
        (let _lp75910_ ((_src75912_ _stx75908_))
          (if (##structure-instance-of? _src75912_ 'gerbil#AST::t)
              (_lp75910_ (##unchecked-structure-ref _src75912_ '2 AST::t '#f))
              (if (##locat? _src75912_) _src75912_ '#f)))))
    (define __AST
      (lambda (_e75900_ _src-stx75901_)
        (let ((_src75903_ (__AST-source _src-stx75901_)))
          (if (or (##structure-instance-of? _e75900_ 'gerbil#AST::t)
                  (not _src75903_))
              _e75900_
              (##structure AST::t _e75900_ _src75903_)))))
    (define __AST-eq?
      (lambda (_stx75897_ _obj75898_) (eq? (__AST-e _stx75897_) _obj75898_)))
    (define __AST-pair? (lambda (_stx75895_) (pair? (__AST-e _stx75895_))))
    (define __AST-null? (lambda (_stx75893_) (null? (__AST-e _stx75893_))))
    (define __AST-datum?
      (lambda (_stx75874_)
        (let* ((_e75876_ (__AST-e _stx75874_)) (_$e75878_ (number? _e75876_)))
          (if _$e75878_
              _$e75878_
              (let ((_$e75881_ (string? _e75876_)))
                (if _$e75881_
                    _$e75881_
                    (let ((_$e75884_ (char? _e75876_)))
                      (if _$e75884_
                          _$e75884_
                          (let ((_$e75887_ (keyword? _e75876_)))
                            (if _$e75887_
                                _$e75887_
                                (let ((_$e75890_ (boolean? _e75876_)))
                                  (if _$e75890_
                                      _$e75890_
                                      (eq? _e75876_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx75872_) (symbol? (__AST-e _stx75872_))))
    (define __AST-id-list?__%
      (lambda (_stx75823_ _tail?75824_)
        (let _lp75826_ ((_rest75828_ _stx75823_))
          (let* ((_$e75830_ _rest75828_)
                 (_$E7583275845_
                  (lambda ()
                    (let* ((_$E7583375840_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e75830_)))
                           (_rest75843_ _$e75830_))
                      (_tail?75824_ _rest75843_)))))
            (if (__AST-pair? _$e75830_)
                (let* ((_$tgt7583475848_ (__AST-e _$e75830_))
                       (_$hd7583575851_ (##car _$tgt7583475848_))
                       (_$tl7583675854_ (##cdr _$tgt7583475848_)))
                  (let* ((_hd75858_ _$hd7583575851_)
                         (_rest75860_ _$tl7583675854_))
                    (if (__AST-id? _hd75858_) (_lp75826_ _rest75860_) '#f)))
                (_$E7583275845_))))))
    (define __AST-id-list?__0
      (lambda (_stx75865_)
        (let ((_tail?75867_ __AST-null?))
          (__AST-id-list?__% _stx75865_ _tail?75867_))))
    (define __AST-id-list?
      (lambda _g76248_
        (let ((_g76247_ (##length _g76248_)))
          (cond ((##fx= _g76247_ 1)
                 (apply (lambda (_stx75865_) (__AST-id-list?__0 _stx75865_))
                        _g76248_))
                ((##fx= _g76247_ 2)
                 (apply (lambda (_stx75869_ _tail?75870_)
                          (__AST-id-list?__% _stx75869_ _tail?75870_))
                        _g76248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g76248_))))))
    (define __AST-bind-list?
      (lambda (_stx75815_)
        (__AST-id-list?__%
         _stx75815_
         (lambda (_e75817_)
           (let ((_$e75819_ (__AST-null? _e75817_)))
             (if _$e75819_ _$e75819_ (__AST-id? _e75817_)))))))
    (define __AST-list?__%
      (lambda (_stx75768_ _tail?75769_)
        (let _lp75771_ ((_rest75773_ _stx75768_))
          (let* ((_$e75775_ _rest75773_)
                 (_$E7577775790_
                  (lambda ()
                    (let* ((_$E7577875785_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e75775_)))
                           (_rest75788_ _$e75775_))
                      (_tail?75769_ _rest75788_)))))
            (if (__AST-pair? _$e75775_)
                (let* ((_$tgt7577975793_ (__AST-e _$e75775_))
                       (_$hd7578075796_ (##car _$tgt7577975793_))
                       (_$tl7578175799_ (##cdr _$tgt7577975793_)))
                  (let ((_rest75803_ _$tl7578175799_))
                    (_lp75771_ _rest75803_)))
                (_$E7577775790_))))))
    (define __AST-list?__0
      (lambda (_stx75808_)
        (let ((_tail?75810_ __AST-null?))
          (__AST-list?__% _stx75808_ _tail?75810_))))
    (define __AST-list?
      (lambda _g76250_
        (let ((_g76249_ (##length _g76250_)))
          (cond ((##fx= _g76249_ 1)
                 (apply (lambda (_stx75808_) (__AST-list?__0 _stx75808_))
                        _g76250_))
                ((##fx= _g76249_ 2)
                 (apply (lambda (_stx75812_ _tail?75813_)
                          (__AST-list?__% _stx75812_ _tail?75813_))
                        _g76250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g76250_))))))
    (define __AST->list
      (lambda (_stx75733_)
        (let* ((_$e75735_ _stx75733_)
               (_$E7573775750_
                (lambda ()
                  (let* ((_$E7573875745_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e75735_)))
                         (_rest75748_ _$e75735_))
                    (__AST-e _rest75748_)))))
          (if (__AST-pair? _$e75735_)
              (let* ((_$tgt7573975753_ (__AST-e _$e75735_))
                     (_$hd7574075756_ (##car _$tgt7573975753_))
                     (_$tl7574175759_ (##cdr _$tgt7573975753_)))
                (let* ((_hd75763_ _$hd7574075756_)
                       (_rest75765_ _$tl7574175759_))
                  (cons _hd75763_ (__AST->list _rest75765_))))
              (_$E7573775750_)))))
    (define __AST->datum
      (lambda (_stx75731_)
        (if (##structure-instance-of? _stx75731_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx75731_))
            (if (pair? _stx75731_)
                (cons (__AST->datum (car _stx75731_))
                      (__AST->datum (cdr _stx75731_)))
                (if (vector? _stx75731_)
                    (vector-map __AST->datum _stx75731_)
                    (if (box? _stx75731_)
                        (box (__AST->datum (unbox _stx75731_)))
                        _stx75731_))))))
    (define get-readenv
      (lambda (_port75729_)
        (##make-readenv
         _port75729_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in75717_)
        (let ((_e75719_ (##read-datum-or-eof (get-readenv _in75717_))))
          (if (eof-object? (__AST-e _e75719_)) (__AST-e _e75719_) _e75719_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in75725_ (current-input-port))) (read-syntax__% _in75725_))))
    (define read-syntax
      (lambda _g76252_
        (let ((_g76251_ (##length _g76252_)))
          (cond ((##fx= _g76251_ 0)
                 (apply (lambda () (read-syntax__0)) _g76252_))
                ((##fx= _g76251_ 1)
                 (apply (lambda (_in75727_) (read-syntax__% _in75727_))
                        _g76252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g76252_))))))
    (define read-syntax-from-file
      (lambda (_path75712_)
        (let ((_r75714_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path75712_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r75714_)
              (cdr (__AST-e (vector-ref _r75714_ '1)))
              (error (err-code->string _r75714_) _path75712_)))))
    (define __wrap-syntax
      (lambda (_re75709_ _e75710_)
        (if (eof-object? _e75710_)
            _e75710_
            (##structure AST::t _e75710_ (##readenv->locat _re75709_)))))
    (define __unwrap-syntax (lambda (_re75706_ _e75707_) (__AST-e _e75707_)))
    (define __pp-syntax (lambda (_stx75704_) (pp (__AST->datum _stx75704_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt75702_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt75702_ '#t)
          (macro-readtable-bracket-handler-set! _rt75702_ '@list)
          (macro-readtable-brace-handler-set! _rt75702_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt75702_
           '#\!
           __read-sharp-bang)
          _rt75702_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt75698_ _kw75699_)
        (macro-readtable-bracket-handler-set! _rt75698_ _kw75699_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt75695_ _kw75696_)
        (macro-readtable-brace-handler-set! _rt75695_ _kw75696_)))
    (define __read-sharp-bang
      (lambda (_re75686_ _next75687_ _start-pos75688_)
        (if (eq? _start-pos75688_ '0)
            (let* ((_line75690_
                    (##read-line
                     (macro-readenv-port _re75686_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line75692_
                    (substring _line75690_ '1 (string-length _line75690_))))
              (macro-readenv-script-line-set! _re75686_ _script-line75692_)
              (##script-marker))
            (##read-sharp-bang _re75686_ _next75687_ _start-pos75688_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj75684_)
        (if (source-location? _obj75684_)
            (string? (##locat-container _obj75684_))
            '#f)))
    (define source-location-path
      (lambda (_obj75682_)
        (if (##locat? _obj75682_)
            (##container->path (##locat-container _obj75682_))
            '#f)))))
