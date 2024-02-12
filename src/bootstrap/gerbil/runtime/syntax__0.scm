(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707773068)
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
      (lambda _$args102874_
        (apply make-instance SyntaxError::t _$args102874_)))
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
      (lambda (_self102777_ _port102778_)
        (letrec ((_location102780_
                  (lambda ()
                    (let _lp102834_ ((_rest102836_
                                      (##unchecked-structure-ref
                                       _self102777_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102837102845_ _rest102836_)
                             (_else102839102853_ (lambda () '#f))
                             (_K102841102862_
                              (lambda (_rest102856_ _hd102857_)
                                (let ((_$e102859_ (__AST-source _hd102857_)))
                                  (if _$e102859_
                                      _$e102859_
                                      (_lp102834_ _rest102856_))))))
                        (if (##pair? _rest102837102845_)
                            (let ((_hd102842102865_ (##car _rest102837102845_))
                                  (_tl102843102867_
                                   (##cdr _rest102837102845_)))
                              (let* ((_hd102870_ _hd102842102865_)
                                     (_rest102872_ _tl102843102867_))
                                (_K102841102862_ _rest102872_ _hd102870_)))
                            (_else102839102853_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102783_ (_location102780_)))
               (if _$e102783_
                   ((lambda (_where102786_)
                      (##display-locat
                       _where102786_
                       '#t
                       (current-output-port)))
                    _$e102783_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102788_
                    (##unchecked-structure-ref
                     _self102777_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102788_
                   ((lambda (_where102791_)
                      (displayln
                       '" at "
                       _where102791_
                       '": "
                       (##unchecked-structure-ref
                        _self102777_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102788_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102777_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102792102800_
                     (##unchecked-structure-ref
                      _self102777_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102794102808_ (lambda () '#!void))
                    (_K102796102821_
                     (lambda (_rest102811_ _stx102812_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102812_)
                       (for-each
                        (lambda (_detail102814_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102814_))
                          (let ((_$e102816_ (__AST-source _detail102814_)))
                            (if _$e102816_
                                ((lambda (_loc102819_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102819_
                                    '#t
                                    (current-output-port)))
                                 _$e102816_)
                                '#!void))
                          (newline))
                        _rest102811_))))
               (if (##pair? _g102792102800_)
                   (let ((_hd102797102824_ (##car _g102792102800_))
                         (_tl102798102826_ (##cdr _g102792102800_)))
                     (let* ((_stx102829_ _hd102797102824_)
                            (_rest102831_ _tl102798102826_))
                       (_K102796102821_ _rest102831_ _stx102829_)))
                   '#!void)))
           current-output-port
           _port102778_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message102648_
               _irritants102649_
               _where102650_
               _context102651_
               _marks102652_
               _phi102653_)
        (let ((__obj107537
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj107537
           _message102648_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107537
           _irritants102649_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107537
           _where102650_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107537
           _context102651_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107537
           _marks102652_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj107537
           _phi102653_
           '5
           SyntaxError::t
           '#f)
          __obj107537)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where102643_ _message102644_ _stx102645_ . _details102646_)
        (raise (make-syntax-error
                _message102644_
                (cons _stx102645_ _details102646_)
                _where102643_
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
      (lambda _$args102640_ (apply make-instance AST::t _$args102640_)))
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
      (lambda (_stx102638_)
        (if (##structure-instance-of? _stx102638_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx102638_ '1 AST::t '#f)
            _stx102638_)))
    (define __AST-source
      (lambda (_stx102632_)
        (let _lp102634_ ((_src102636_ _stx102632_))
          (if (##structure-instance-of? _src102636_ 'gerbil#AST::t)
              (_lp102634_
               (##unchecked-structure-ref _src102636_ '2 AST::t '#f))
              (if (##locat? _src102636_) _src102636_ '#f)))))
    (define __AST
      (lambda (_e102624_ _src-stx102625_)
        (let ((_src102627_ (__AST-source _src-stx102625_)))
          (if (or (##structure-instance-of? _e102624_ 'gerbil#AST::t)
                  (not _src102627_))
              _e102624_
              (##structure AST::t _e102624_ _src102627_)))))
    (define __AST-eq?
      (lambda (_stx102621_ _obj102622_)
        (eq? (__AST-e _stx102621_) _obj102622_)))
    (define __AST-pair? (lambda (_stx102619_) (pair? (__AST-e _stx102619_))))
    (define __AST-null? (lambda (_stx102617_) (null? (__AST-e _stx102617_))))
    (define __AST-datum?
      (lambda (_stx102598_)
        (let* ((_e102600_ (__AST-e _stx102598_))
               (_$e102602_ (number? _e102600_)))
          (if _$e102602_
              _$e102602_
              (let ((_$e102605_ (string? _e102600_)))
                (if _$e102605_
                    _$e102605_
                    (let ((_$e102608_ (char? _e102600_)))
                      (if _$e102608_
                          _$e102608_
                          (let ((_$e102611_ (keyword? _e102600_)))
                            (if _$e102611_
                                _$e102611_
                                (let ((_$e102614_ (boolean? _e102600_)))
                                  (if _$e102614_
                                      _$e102614_
                                      (eq? _e102600_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx102596_) (symbol? (__AST-e _stx102596_))))
    (define __AST-id-list?__%
      (lambda (_stx102547_ _tail?102548_)
        (let _lp102550_ ((_rest102552_ _stx102547_))
          (let* ((_$e102554_ _rest102552_)
                 (_$E102556102569_
                  (lambda ()
                    (let* ((_$E102557102564_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102554_)))
                           (_rest102567_ _$e102554_))
                      (_tail?102548_ _rest102567_)))))
            (if (__AST-pair? _$e102554_)
                (let* ((_$tgt102558102572_ (__AST-e _$e102554_))
                       (_$hd102559102575_ (##car _$tgt102558102572_))
                       (_$tl102560102578_ (##cdr _$tgt102558102572_)))
                  (let* ((_hd102582_ _$hd102559102575_)
                         (_rest102584_ _$tl102560102578_))
                    (if (__AST-id? _hd102582_) (_lp102550_ _rest102584_) '#f)))
                (_$E102556102569_))))))
    (define __AST-id-list?__0
      (lambda (_stx102589_)
        (let ((_tail?102591_ __AST-null?))
          (__AST-id-list?__% _stx102589_ _tail?102591_))))
    (define __AST-id-list?
      (lambda _g107540_
        (let ((_g107539_ (##length _g107540_)))
          (cond ((##fx= _g107539_ 1)
                 (apply (lambda (_stx102589_) (__AST-id-list?__0 _stx102589_))
                        _g107540_))
                ((##fx= _g107539_ 2)
                 (apply (lambda (_stx102593_ _tail?102594_)
                          (__AST-id-list?__% _stx102593_ _tail?102594_))
                        _g107540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g107540_))))))
    (define __AST-bind-list?
      (lambda (_stx102539_)
        (__AST-id-list?__%
         _stx102539_
         (lambda (_e102541_)
           (let ((_$e102543_ (__AST-null? _e102541_)))
             (if _$e102543_ _$e102543_ (__AST-id? _e102541_)))))))
    (define __AST-list?__%
      (lambda (_stx102492_ _tail?102493_)
        (let _lp102495_ ((_rest102497_ _stx102492_))
          (let* ((_$e102499_ _rest102497_)
                 (_$E102501102514_
                  (lambda ()
                    (let* ((_$E102502102509_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e102499_)))
                           (_rest102512_ _$e102499_))
                      (_tail?102493_ _rest102512_)))))
            (if (__AST-pair? _$e102499_)
                (let* ((_$tgt102503102517_ (__AST-e _$e102499_))
                       (_$hd102504102520_ (##car _$tgt102503102517_))
                       (_$tl102505102523_ (##cdr _$tgt102503102517_)))
                  (let ((_rest102527_ _$tl102505102523_))
                    (_lp102495_ _rest102527_)))
                (_$E102501102514_))))))
    (define __AST-list?__0
      (lambda (_stx102532_)
        (let ((_tail?102534_ __AST-null?))
          (__AST-list?__% _stx102532_ _tail?102534_))))
    (define __AST-list?
      (lambda _g107542_
        (let ((_g107541_ (##length _g107542_)))
          (cond ((##fx= _g107541_ 1)
                 (apply (lambda (_stx102532_) (__AST-list?__0 _stx102532_))
                        _g107542_))
                ((##fx= _g107541_ 2)
                 (apply (lambda (_stx102536_ _tail?102537_)
                          (__AST-list?__% _stx102536_ _tail?102537_))
                        _g107542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g107542_))))))
    (define __AST->list
      (lambda (_stx102457_)
        (let* ((_$e102459_ _stx102457_)
               (_$E102461102474_
                (lambda ()
                  (let* ((_$E102462102469_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e102459_)))
                         (_rest102472_ _$e102459_))
                    (__AST-e _rest102472_)))))
          (if (__AST-pair? _$e102459_)
              (let* ((_$tgt102463102477_ (__AST-e _$e102459_))
                     (_$hd102464102480_ (##car _$tgt102463102477_))
                     (_$tl102465102483_ (##cdr _$tgt102463102477_)))
                (let* ((_hd102487_ _$hd102464102480_)
                       (_rest102489_ _$tl102465102483_))
                  (cons _hd102487_ (__AST->list _rest102489_))))
              (_$E102461102474_)))))
    (define __AST->datum
      (lambda (_stx102455_)
        (if (##structure-instance-of? _stx102455_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx102455_))
            (if (pair? _stx102455_)
                (cons (__AST->datum (car _stx102455_))
                      (__AST->datum (cdr _stx102455_)))
                (if (vector? _stx102455_)
                    (vector-map __AST->datum _stx102455_)
                    (if (box? _stx102455_)
                        (box (__AST->datum (unbox _stx102455_)))
                        _stx102455_))))))
    (define get-readenv
      (lambda (_port102453_)
        (##make-readenv
         _port102453_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in102441_)
        (let ((_e102443_ (##read-datum-or-eof (get-readenv _in102441_))))
          (if (eof-object? (__AST-e _e102443_))
              (__AST-e _e102443_)
              _e102443_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in102449_ (current-input-port))) (read-syntax__% _in102449_))))
    (define read-syntax
      (lambda _g107544_
        (let ((_g107543_ (##length _g107544_)))
          (cond ((##fx= _g107543_ 0)
                 (apply (lambda () (read-syntax__0)) _g107544_))
                ((##fx= _g107543_ 1)
                 (apply (lambda (_in102451_) (read-syntax__% _in102451_))
                        _g107544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g107544_))))))
    (define read-syntax-from-file
      (lambda (_path102436_)
        (let ((_r102438_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path102436_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r102438_)
              (cdr (__AST-e (vector-ref _r102438_ '1)))
              (error (err-code->string _r102438_) _path102436_)))))
    (define __wrap-syntax
      (lambda (_re102433_ _e102434_)
        (if (eof-object? _e102434_)
            _e102434_
            (##structure AST::t _e102434_ (##readenv->locat _re102433_)))))
    (define __unwrap-syntax
      (lambda (_re102430_ _e102431_) (__AST-e _e102431_)))
    (define __pp-syntax (lambda (_stx102428_) (pp (__AST->datum _stx102428_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt102426_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt102426_ '#t)
          (macro-readtable-bracket-handler-set! _rt102426_ '@list)
          (macro-readtable-brace-handler-set! _rt102426_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt102426_
           '#\!
           __read-sharp-bang)
          _rt102426_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt102422_ _kw102423_)
        (macro-readtable-bracket-handler-set! _rt102422_ _kw102423_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt102419_ _kw102420_)
        (macro-readtable-brace-handler-set! _rt102419_ _kw102420_)))
    (define __read-sharp-bang
      (lambda (_re102410_ _next102411_ _start-pos102412_)
        (if (eq? _start-pos102412_ '0)
            (let* ((_line102414_
                    (##read-line
                     (macro-readenv-port _re102410_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line102416_
                    (substring _line102414_ '1 (string-length _line102414_))))
              (macro-readenv-script-line-set! _re102410_ _script-line102416_)
              (##script-marker))
            (##read-sharp-bang _re102410_ _next102411_ _start-pos102412_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj102408_)
        (if (source-location? _obj102408_)
            (string? (##locat-container _obj102408_))
            '#f)))
    (define source-location-path
      (lambda (_obj102406_)
        (if (##locat? _obj102406_)
            (##container->path (##locat-container _obj102406_))
            '#f)))))
