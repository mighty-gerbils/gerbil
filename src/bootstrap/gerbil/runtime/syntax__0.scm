(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1696372335)
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
      (lambda _$args14730_
        (apply make-class-instance SyntaxError::t _$args14730_)))
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
      (lambda (_self14633_ _port14634_)
        (letrec ((_location14636_
                  (lambda ()
                    (let _lp14690_ ((_rest14692_
                                     (slot-ref _self14633_ 'irritants)))
                      (let* ((_rest1469314701_ _rest14692_)
                             (_else1469514709_ (lambda () '#f))
                             (_K1469714718_
                              (lambda (_rest14712_ _hd14713_)
                                (let ((_$e14715_ (__AST-source _hd14713_)))
                                  (if _$e14715_
                                      _$e14715_
                                      (_lp14690_ _rest14712_))))))
                        (if (##pair? _rest1469314701_)
                            (let ((_hd1469814721_ (##car _rest1469314701_))
                                  (_tl1469914723_ (##cdr _rest1469314701_)))
                              (let* ((_hd14726_ _hd1469814721_)
                                     (_rest14728_ _tl1469914723_))
                                (_K1469714718_ _rest14728_ _hd14726_)))
                            (_else1469514709_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14639_ (_location14636_)))
               (if _$e14639_
                   ((lambda (_where14642_)
                      (##display-locat _where14642_ '#t (current-output-port)))
                    _$e14639_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14644_ (slot-ref _self14633_ 'where)))
               (if _$e14644_
                   ((lambda (_where14647_)
                      (displayln
                       '" at "
                       _where14647_
                       '": "
                       (slot-ref _self14633_ 'message)))
                    _$e14644_)
                   (displayln '": " (slot-ref _self14633_ 'message))))
             (let* ((_g1464814656_ (slot-ref _self14633_ 'irritants))
                    (_else1465014664_ (lambda () '#!void))
                    (_K1465214677_
                     (lambda (_rest14667_ _stx14668_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14668_)
                       (for-each
                        (lambda (_detail14670_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14670_))
                          (let ((_$e14672_ (__AST-source _detail14670_)))
                            (if _$e14672_
                                ((lambda (_loc14675_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14675_
                                    '#t
                                    (current-output-port)))
                                 _$e14672_)
                                '#!void))
                          (newline))
                        _rest14667_))))
               (if (##pair? _g1464814656_)
                   (let ((_hd1465314680_ (##car _g1464814656_))
                         (_tl1465414682_ (##cdr _g1464814656_)))
                     (let* ((_stx14685_ _hd1465314680_)
                            (_rest14687_ _tl1465414682_))
                       (_K1465214677_ _rest14687_ _stx14685_)))
                   '#!void)))
           current-output-port
           _port14634_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14504_
               _irritants14505_
               _where14506_
               _context14507_
               _marks14508_
               _phi14509_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14504_
         'irritants:
         _irritants14505_
         'where:
         _where14506_
         'context:
         _context14507_
         'marks:
         _marks14508_
         'phi:
         _phi14509_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14499_ _message14500_ _stx14501_ . _details14502_)
        (raise (make-syntax-error
                _message14500_
                (cons _stx14501_ _details14502_)
                _where14499_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14496_ (apply make-struct-instance AST::t _$args14496_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14494_)
        (if (##structure-instance-of? _stx14494_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14494_ '1 AST::t '#f)
            _stx14494_)))
    (define __AST-source
      (lambda (_stx14488_)
        (let _lp14490_ ((_src14492_ _stx14488_))
          (if (##structure-instance-of? _src14492_ 'gerbil#AST::t)
              (_lp14490_ (##unchecked-structure-ref _src14492_ '2 AST::t '#f))
              (if (##locat? _src14492_) _src14492_ '#f)))))
    (define __AST
      (lambda (_e14480_ _src-stx14481_)
        (let ((_src14483_ (__AST-source _src-stx14481_)))
          (if (or (##structure-instance-of? _e14480_ 'gerbil#AST::t)
                  (not _src14483_))
              _e14480_
              (##structure AST::t _e14480_ _src14483_)))))
    (define __AST-eq?
      (lambda (_stx14477_ _obj14478_) (eq? (__AST-e _stx14477_) _obj14478_)))
    (define __AST-pair? (lambda (_stx14475_) (pair? (__AST-e _stx14475_))))
    (define __AST-null? (lambda (_stx14473_) (null? (__AST-e _stx14473_))))
    (define __AST-datum?
      (lambda (_stx14454_)
        (let* ((_e14456_ (__AST-e _stx14454_)) (_$e14458_ (number? _e14456_)))
          (if _$e14458_
              _$e14458_
              (let ((_$e14461_ (string? _e14456_)))
                (if _$e14461_
                    _$e14461_
                    (let ((_$e14464_ (char? _e14456_)))
                      (if _$e14464_
                          _$e14464_
                          (let ((_$e14467_ (keyword? _e14456_)))
                            (if _$e14467_
                                _$e14467_
                                (let ((_$e14470_ (boolean? _e14456_)))
                                  (if _$e14470_
                                      _$e14470_
                                      (eq? _e14456_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14452_) (symbol? (__AST-e _stx14452_))))
    (define __AST-id-list?__%
      (lambda (_stx14403_ _tail?14404_)
        (let _lp14406_ ((_rest14408_ _stx14403_))
          (let* ((_$e14410_ _rest14408_)
                 (_$E1441214425_
                  (lambda ()
                    (let* ((_$E1441314420_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14410_)))
                           (_rest14423_ _$e14410_))
                      (_tail?14404_ _rest14423_)))))
            (if (__AST-pair? _$e14410_)
                (let* ((_$tgt1441414428_ (__AST-e _$e14410_))
                       (_$hd1441514431_ (##car _$tgt1441414428_))
                       (_$tl1441614434_ (##cdr _$tgt1441414428_)))
                  (let* ((_hd14438_ _$hd1441514431_)
                         (_rest14440_ _$tl1441614434_))
                    (if (__AST-id? _hd14438_) (_lp14406_ _rest14440_) '#f)))
                (_$E1441214425_))))))
    (define __AST-id-list?__0
      (lambda (_stx14445_)
        (let ((_tail?14447_ __AST-null?))
          (__AST-id-list?__% _stx14445_ _tail?14447_))))
    (define __AST-id-list?
      (lambda _g14825_
        (let ((_g14824_ (##length _g14825_)))
          (cond ((##fx= _g14824_ 1)
                 (apply (lambda (_stx14445_) (__AST-id-list?__0 _stx14445_))
                        _g14825_))
                ((##fx= _g14824_ 2)
                 (apply (lambda (_stx14449_ _tail?14450_)
                          (__AST-id-list?__% _stx14449_ _tail?14450_))
                        _g14825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14825_))))))
    (define __AST-bind-list?
      (lambda (_stx14395_)
        (__AST-id-list?__%
         _stx14395_
         (lambda (_e14397_)
           (let ((_$e14399_ (__AST-null? _e14397_)))
             (if _$e14399_ _$e14399_ (__AST-id? _e14397_)))))))
    (define __AST-list?__%
      (lambda (_stx14348_ _tail?14349_)
        (let _lp14351_ ((_rest14353_ _stx14348_))
          (let* ((_$e14355_ _rest14353_)
                 (_$E1435714370_
                  (lambda ()
                    (let* ((_$E1435814365_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e14355_)))
                           (_rest14368_ _$e14355_))
                      (_tail?14349_ _rest14368_)))))
            (if (__AST-pair? _$e14355_)
                (let* ((_$tgt1435914373_ (__AST-e _$e14355_))
                       (_$hd1436014376_ (##car _$tgt1435914373_))
                       (_$tl1436114379_ (##cdr _$tgt1435914373_)))
                  (let ((_rest14383_ _$tl1436114379_))
                    (_lp14351_ _rest14383_)))
                (_$E1435714370_))))))
    (define __AST-list?__0
      (lambda (_stx14388_)
        (let ((_tail?14390_ __AST-null?))
          (__AST-list?__% _stx14388_ _tail?14390_))))
    (define __AST-list?
      (lambda _g14827_
        (let ((_g14826_ (##length _g14827_)))
          (cond ((##fx= _g14826_ 1)
                 (apply (lambda (_stx14388_) (__AST-list?__0 _stx14388_))
                        _g14827_))
                ((##fx= _g14826_ 2)
                 (apply (lambda (_stx14392_ _tail?14393_)
                          (__AST-list?__% _stx14392_ _tail?14393_))
                        _g14827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14827_))))))
    (define __AST->list
      (lambda (_stx14313_)
        (let* ((_$e14315_ _stx14313_)
               (_$E1431714330_
                (lambda ()
                  (let* ((_$E1431814325_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _$e14315_)))
                         (_rest14328_ _$e14315_))
                    (__AST-e _rest14328_)))))
          (if (__AST-pair? _$e14315_)
              (let* ((_$tgt1431914333_ (__AST-e _$e14315_))
                     (_$hd1432014336_ (##car _$tgt1431914333_))
                     (_$tl1432114339_ (##cdr _$tgt1431914333_)))
                (let* ((_hd14343_ _$hd1432014336_)
                       (_rest14345_ _$tl1432114339_))
                  (cons _hd14343_ (__AST->list _rest14345_))))
              (_$E1431714330_)))))
    (define __AST->datum
      (lambda (_stx14311_)
        (if (##structure-instance-of? _stx14311_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14311_))
            (if (pair? _stx14311_)
                (cons (__AST->datum (car _stx14311_))
                      (__AST->datum (cdr _stx14311_)))
                (if (vector? _stx14311_)
                    (vector-map __AST->datum _stx14311_)
                    (if (box? _stx14311_)
                        (box (__AST->datum (unbox _stx14311_)))
                        _stx14311_))))))
    (define get-readenv
      (lambda (_port14309_)
        (##make-readenv
         _port14309_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14297_)
        (let ((_e14299_ (##read-datum-or-eof (get-readenv _in14297_))))
          (if (eof-object? (__AST-e _e14299_)) (__AST-e _e14299_) _e14299_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14305_ (current-input-port))) (read-syntax__% _in14305_))))
    (define read-syntax
      (lambda _g14829_
        (let ((_g14828_ (##length _g14829_)))
          (cond ((##fx= _g14828_ 0)
                 (apply (lambda () (read-syntax__0)) _g14829_))
                ((##fx= _g14828_ 1)
                 (apply (lambda (_in14307_) (read-syntax__% _in14307_))
                        _g14829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14829_))))))
    (define read-syntax-from-file
      (lambda (_path14292_)
        (let ((_r14294_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14292_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14294_)
              (cdr (__AST-e (vector-ref _r14294_ '1)))
              (error (err-code->string _r14294_) _path14292_)))))
    (define __wrap-syntax
      (lambda (_re14289_ _e14290_)
        (if (eof-object? _e14290_)
            _e14290_
            (##structure AST::t _e14290_ (##readenv->locat _re14289_)))))
    (define __unwrap-syntax (lambda (_re14286_ _e14287_) (__AST-e _e14287_)))
    (define __pp-syntax (lambda (_stx14284_) (pp (__AST->datum _stx14284_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14282_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14282_ '#t)
          (macro-readtable-bracket-handler-set! _rt14282_ '@list)
          (macro-readtable-brace-handler-set! _rt14282_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14282_
           '#\!
           __read-sharp-bang)
          _rt14282_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14278_ _kw14279_)
        (macro-readtable-bracket-handler-set! _rt14278_ _kw14279_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14275_ _kw14276_)
        (macro-readtable-brace-handler-set! _rt14275_ _kw14276_)))
    (define __read-sharp-bang
      (lambda (_re14266_ _next14267_ _start-pos14268_)
        (if (eq? _start-pos14268_ '0)
            (let* ((_line14270_
                    (##read-line
                     (macro-readenv-port _re14266_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14272_
                    (substring _line14270_ '1 (string-length _line14270_))))
              (macro-readenv-script-line-set! _re14266_ _script-line14272_)
              (##script-marker))
            (##read-sharp-bang _re14266_ _next14267_ _start-pos14268_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14264_)
        (if (source-location? _obj14264_)
            (string? (##locat-container _obj14264_))
            '#f)))
    (define source-location-path
      (lambda (_obj14262_)
        (if (##locat? _obj14262_)
            (##container->path (##locat-container _obj14262_))
            '#f)))))
