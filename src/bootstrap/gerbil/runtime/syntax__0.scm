(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1697117311)
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
      (lambda _$args14782_
        (apply make-class-instance SyntaxError::t _$args14782_)))
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
      (lambda (_self14685_ _port14686_)
        (letrec ((_location14688_
                  (lambda ()
                    (let _lp14742_ ((_rest14744_
                                     (slot-ref _self14685_ 'irritants)))
                      (let* ((_rest1474514753_ _rest14744_)
                             (_else1474714761_ (lambda () '#f))
                             (_K1474914770_
                              (lambda (_rest14764_ _hd14765_)
                                (let ((_$e14767_ (__AST-source _hd14765_)))
                                  (if _$e14767_
                                      _$e14767_
                                      (_lp14742_ _rest14764_))))))
                        (if (##pair? _rest1474514753_)
                            (let ((_hd1475014773_ (##car _rest1474514753_))
                                  (_tl1475114775_ (##cdr _rest1474514753_)))
                              (let* ((_hd14778_ _hd1475014773_)
                                     (_rest14780_ _tl1475114775_))
                                (_K1474914770_ _rest14780_ _hd14778_)))
                            (_else1474714761_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14691_ (_location14688_)))
               (if _$e14691_
                   ((lambda (_where14694_)
                      (##display-locat _where14694_ '#t (current-output-port)))
                    _$e14691_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14696_ (slot-ref _self14685_ 'where)))
               (if _$e14696_
                   ((lambda (_where14699_)
                      (displayln
                       '" at "
                       _where14699_
                       '": "
                       (slot-ref _self14685_ 'message)))
                    _$e14696_)
                   (displayln '": " (slot-ref _self14685_ 'message))))
             (let* ((_g1470014708_ (slot-ref _self14685_ 'irritants))
                    (_else1470214716_ (lambda () '#!void))
                    (_K1470414729_
                     (lambda (_rest14719_ _stx14720_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14720_)
                       (for-each
                        (lambda (_detail14722_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14722_))
                          (let ((_$e14724_ (__AST-source _detail14722_)))
                            (if _$e14724_
                                ((lambda (_loc14727_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14727_
                                    '#t
                                    (current-output-port)))
                                 _$e14724_)
                                '#!void))
                          (newline))
                        _rest14719_))))
               (if (##pair? _g1470014708_)
                   (let ((_hd1470514732_ (##car _g1470014708_))
                         (_tl1470614734_ (##cdr _g1470014708_)))
                     (let* ((_stx14737_ _hd1470514732_)
                            (_rest14739_ _tl1470614734_))
                       (_K1470414729_ _rest14739_ _stx14737_)))
                   '#!void)))
           current-output-port
           _port14686_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14556_
               _irritants14557_
               _where14558_
               _context14559_
               _marks14560_
               _phi14561_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14556_
         'irritants:
         _irritants14557_
         'where:
         _where14558_
         'context:
         _context14559_
         'marks:
         _marks14560_
         'phi:
         _phi14561_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14551_ _message14552_ _stx14553_ . _details14554_)
        (raise (make-syntax-error
                _message14552_
                (cons _stx14553_ _details14554_)
                _where14551_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14548_ (apply make-struct-instance AST::t _$args14548_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14546_)
        (if (##structure-instance-of? _stx14546_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14546_ '1 AST::t '#f)
            _stx14546_)))
    (define __AST-source
      (lambda (_stx14540_)
        (let _lp14542_ ((_src14544_ _stx14540_))
          (if (##structure-instance-of? _src14544_ 'gerbil#AST::t)
              (_lp14542_ (##unchecked-structure-ref _src14544_ '2 AST::t '#f))
              (if (##locat? _src14544_) _src14544_ '#f)))))
    (define __AST
      (lambda (_e14532_ _src-stx14533_)
        (let ((_src14535_ (__AST-source _src-stx14533_)))
          (if (or (##structure-instance-of? _e14532_ 'gerbil#AST::t)
                  (not _src14535_))
              _e14532_
              (##structure AST::t _e14532_ _src14535_)))))
    (define __AST-eq?
      (lambda (_stx14529_ _obj14530_) (eq? (__AST-e _stx14529_) _obj14530_)))
    (define __AST-pair? (lambda (_stx14527_) (pair? (__AST-e _stx14527_))))
    (define __AST-null? (lambda (_stx14525_) (null? (__AST-e _stx14525_))))
    (define __AST-datum?
      (lambda (_stx14506_)
        (let* ((_e14508_ (__AST-e _stx14506_)) (_$e14510_ (number? _e14508_)))
          (if _$e14510_
              _$e14510_
              (let ((_$e14513_ (string? _e14508_)))
                (if _$e14513_
                    _$e14513_
                    (let ((_$e14516_ (char? _e14508_)))
                      (if _$e14516_
                          _$e14516_
                          (let ((_$e14519_ (keyword? _e14508_)))
                            (if _$e14519_
                                _$e14519_
                                (let ((_$e14522_ (boolean? _e14508_)))
                                  (if _$e14522_
                                      _$e14522_
                                      (eq? _e14508_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14504_) (symbol? (__AST-e _stx14504_))))
    (define __AST-id-list?__%
      (lambda (_stx14455_ _tail?14456_)
        (let _lp14458_ ((_rest14460_ _stx14455_))
          (let* ((_$e14462_ _rest14460_)
                 (_$E1446414477_
                  (lambda ()
                    (let* ((_$E1446514472_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14462_)))
                           (_rest14475_ _$e14462_))
                      (_tail?14456_ _rest14475_)))))
            (if (__AST-pair? _$e14462_)
                (let* ((_$tgt1446614480_ (__AST-e _$e14462_))
                       (_$hd1446714483_ (##car _$tgt1446614480_))
                       (_$tl1446814486_ (##cdr _$tgt1446614480_)))
                  (let* ((_hd14490_ _$hd1446714483_)
                         (_rest14492_ _$tl1446814486_))
                    (if (__AST-id? _hd14490_) (_lp14458_ _rest14492_) '#f)))
                (_$E1446414477_))))))
    (define __AST-id-list?__0
      (lambda (_stx14497_)
        (let ((_tail?14499_ __AST-null?))
          (__AST-id-list?__% _stx14497_ _tail?14499_))))
    (define __AST-id-list?
      (lambda _g14877_
        (let ((_g14876_ (##length _g14877_)))
          (cond ((##fx= _g14876_ 1)
                 (apply (lambda (_stx14497_) (__AST-id-list?__0 _stx14497_))
                        _g14877_))
                ((##fx= _g14876_ 2)
                 (apply (lambda (_stx14501_ _tail?14502_)
                          (__AST-id-list?__% _stx14501_ _tail?14502_))
                        _g14877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14877_))))))
    (define __AST-bind-list?
      (lambda (_stx14447_)
        (__AST-id-list?__%
         _stx14447_
         (lambda (_e14449_)
           (let ((_$e14451_ (__AST-null? _e14449_)))
             (if _$e14451_ _$e14451_ (__AST-id? _e14449_)))))))
    (define __AST-list?__%
      (lambda (_stx14400_ _tail?14401_)
        (let _lp14403_ ((_rest14405_ _stx14400_))
          (let* ((_$e14407_ _rest14405_)
                 (_$E1440914422_
                  (lambda ()
                    (let* ((_$E1441014417_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14407_)))
                           (_rest14420_ _$e14407_))
                      (_tail?14401_ _rest14420_)))))
            (if (__AST-pair? _$e14407_)
                (let* ((_$tgt1441114425_ (__AST-e _$e14407_))
                       (_$hd1441214428_ (##car _$tgt1441114425_))
                       (_$tl1441314431_ (##cdr _$tgt1441114425_)))
                  (let ((_rest14435_ _$tl1441314431_))
                    (_lp14403_ _rest14435_)))
                (_$E1440914422_))))))
    (define __AST-list?__0
      (lambda (_stx14440_)
        (let ((_tail?14442_ __AST-null?))
          (__AST-list?__% _stx14440_ _tail?14442_))))
    (define __AST-list?
      (lambda _g14879_
        (let ((_g14878_ (##length _g14879_)))
          (cond ((##fx= _g14878_ 1)
                 (apply (lambda (_stx14440_) (__AST-list?__0 _stx14440_))
                        _g14879_))
                ((##fx= _g14878_ 2)
                 (apply (lambda (_stx14444_ _tail?14445_)
                          (__AST-list?__% _stx14444_ _tail?14445_))
                        _g14879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14879_))))))
    (define __AST->list
      (lambda (_stx14365_)
        (let* ((_$e14367_ _stx14365_)
               (_$E1436914382_
                (lambda ()
                  (let* ((_$E1437014377_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _$e14367_)))
                         (_rest14380_ _$e14367_))
                    (__AST-e _rest14380_)))))
          (if (__AST-pair? _$e14367_)
              (let* ((_$tgt1437114385_ (__AST-e _$e14367_))
                     (_$hd1437214388_ (##car _$tgt1437114385_))
                     (_$tl1437314391_ (##cdr _$tgt1437114385_)))
                (let* ((_hd14395_ _$hd1437214388_)
                       (_rest14397_ _$tl1437314391_))
                  (cons _hd14395_ (__AST->list _rest14397_))))
              (_$E1436914382_)))))
    (define __AST->datum
      (lambda (_stx14363_)
        (if (##structure-instance-of? _stx14363_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14363_))
            (if (pair? _stx14363_)
                (cons (__AST->datum (car _stx14363_))
                      (__AST->datum (cdr _stx14363_)))
                (if (vector? _stx14363_)
                    (vector-map __AST->datum _stx14363_)
                    (if (box? _stx14363_)
                        (box (__AST->datum (unbox _stx14363_)))
                        _stx14363_))))))
    (define get-readenv
      (lambda (_port14361_)
        (##make-readenv
         _port14361_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14349_)
        (let ((_e14351_ (##read-datum-or-eof (get-readenv _in14349_))))
          (if (eof-object? (__AST-e _e14351_)) (__AST-e _e14351_) _e14351_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14357_ (current-input-port))) (read-syntax__% _in14357_))))
    (define read-syntax
      (lambda _g14881_
        (let ((_g14880_ (##length _g14881_)))
          (cond ((##fx= _g14880_ 0)
                 (apply (lambda () (read-syntax__0)) _g14881_))
                ((##fx= _g14880_ 1)
                 (apply (lambda (_in14359_) (read-syntax__% _in14359_))
                        _g14881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14881_))))))
    (define read-syntax-from-file
      (lambda (_path14344_)
        (let ((_r14346_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14344_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14346_)
              (cdr (__AST-e (vector-ref _r14346_ '1)))
              (error (err-code->string _r14346_) _path14344_)))))
    (define __wrap-syntax
      (lambda (_re14341_ _e14342_)
        (if (eof-object? _e14342_)
            _e14342_
            (##structure AST::t _e14342_ (##readenv->locat _re14341_)))))
    (define __unwrap-syntax (lambda (_re14338_ _e14339_) (__AST-e _e14339_)))
    (define __pp-syntax (lambda (_stx14336_) (pp (__AST->datum _stx14336_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14334_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14334_ '#t)
          (macro-readtable-bracket-handler-set! _rt14334_ '@list)
          (macro-readtable-brace-handler-set! _rt14334_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14334_
           '#\!
           __read-sharp-bang)
          _rt14334_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14330_ _kw14331_)
        (macro-readtable-bracket-handler-set! _rt14330_ _kw14331_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14327_ _kw14328_)
        (macro-readtable-brace-handler-set! _rt14327_ _kw14328_)))
    (define __read-sharp-bang
      (lambda (_re14318_ _next14319_ _start-pos14320_)
        (if (eq? _start-pos14320_ '0)
            (let* ((_line14322_
                    (##read-line
                     (macro-readenv-port _re14318_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14324_
                    (substring _line14322_ '1 (string-length _line14322_))))
              (macro-readenv-script-line-set! _re14318_ _script-line14324_)
              (##script-marker))
            (##read-sharp-bang _re14318_ _next14319_ _start-pos14320_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14316_)
        (if (source-location? _obj14316_)
            (string? (##locat-container _obj14316_))
            '#f)))
    (define source-location-path
      (lambda (_obj14314_)
        (if (##locat? _obj14314_)
            (##container->path (##locat-container _obj14314_))
            '#f)))))
