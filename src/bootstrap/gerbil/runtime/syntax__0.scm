(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1701931848)
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
      (lambda _$args14731_
        (apply make-class-instance SyntaxError::t _$args14731_)))
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
      (lambda (_self14634_ _port14635_)
        (letrec ((_location14637_
                  (lambda ()
                    (let _lp14691_ ((_rest14693_
                                     (slot-ref _self14634_ 'irritants)))
                      (let* ((_rest1469414702_ _rest14693_)
                             (_else1469614710_ (lambda () '#f))
                             (_K1469814719_
                              (lambda (_rest14713_ _hd14714_)
                                (let ((_$e14716_ (__AST-source _hd14714_)))
                                  (if _$e14716_
                                      _$e14716_
                                      (_lp14691_ _rest14713_))))))
                        (if (##pair? _rest1469414702_)
                            (let ((_hd1469914722_ (##car _rest1469414702_))
                                  (_tl1470014724_ (##cdr _rest1469414702_)))
                              (let* ((_hd14727_ _hd1469914722_)
                                     (_rest14729_ _tl1470014724_))
                                (_K1469814719_ _rest14729_ _hd14727_)))
                            (_else1469614710_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14640_ (_location14637_)))
               (if _$e14640_
                   ((lambda (_where14643_)
                      (##display-locat _where14643_ '#t (current-output-port)))
                    _$e14640_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14645_ (slot-ref _self14634_ 'where)))
               (if _$e14645_
                   ((lambda (_where14648_)
                      (displayln
                       '" at "
                       _where14648_
                       '": "
                       (slot-ref _self14634_ 'message)))
                    _$e14645_)
                   (displayln '": " (slot-ref _self14634_ 'message))))
             (let* ((_g1464914657_ (slot-ref _self14634_ 'irritants))
                    (_else1465114665_ (lambda () '#!void))
                    (_K1465314678_
                     (lambda (_rest14668_ _stx14669_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14669_)
                       (for-each
                        (lambda (_detail14671_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14671_))
                          (let ((_$e14673_ (__AST-source _detail14671_)))
                            (if _$e14673_
                                ((lambda (_loc14676_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14676_
                                    '#t
                                    (current-output-port)))
                                 _$e14673_)
                                '#!void))
                          (newline))
                        _rest14668_))))
               (if (##pair? _g1464914657_)
                   (let ((_hd1465414681_ (##car _g1464914657_))
                         (_tl1465514683_ (##cdr _g1464914657_)))
                     (let* ((_stx14686_ _hd1465414681_)
                            (_rest14688_ _tl1465514683_))
                       (_K1465314678_ _rest14688_ _stx14686_)))
                   '#!void)))
           current-output-port
           _port14635_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14505_
               _irritants14506_
               _where14507_
               _context14508_
               _marks14509_
               _phi14510_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14505_
         'irritants:
         _irritants14506_
         'where:
         _where14507_
         'context:
         _context14508_
         'marks:
         _marks14509_
         'phi:
         _phi14510_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14500_ _message14501_ _stx14502_ . _details14503_)
        (raise (make-syntax-error
                _message14501_
                (cons _stx14502_ _details14503_)
                _where14500_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14497_ (apply make-struct-instance AST::t _$args14497_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14495_)
        (if (##structure-instance-of? _stx14495_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14495_ '1 AST::t '#f)
            _stx14495_)))
    (define __AST-source
      (lambda (_stx14489_)
        (let _lp14491_ ((_src14493_ _stx14489_))
          (if (##structure-instance-of? _src14493_ 'gerbil#AST::t)
              (_lp14491_ (##unchecked-structure-ref _src14493_ '2 AST::t '#f))
              (if (##locat? _src14493_) _src14493_ '#f)))))
    (define __AST
      (lambda (_e14481_ _src-stx14482_)
        (let ((_src14484_ (__AST-source _src-stx14482_)))
          (if (or (##structure-instance-of? _e14481_ 'gerbil#AST::t)
                  (not _src14484_))
              _e14481_
              (##structure AST::t _e14481_ _src14484_)))))
    (define __AST-eq?
      (lambda (_stx14478_ _obj14479_) (eq? (__AST-e _stx14478_) _obj14479_)))
    (define __AST-pair? (lambda (_stx14476_) (pair? (__AST-e _stx14476_))))
    (define __AST-null? (lambda (_stx14474_) (null? (__AST-e _stx14474_))))
    (define __AST-datum?
      (lambda (_stx14455_)
        (let* ((_e14457_ (__AST-e _stx14455_)) (_$e14459_ (number? _e14457_)))
          (if _$e14459_
              _$e14459_
              (let ((_$e14462_ (string? _e14457_)))
                (if _$e14462_
                    _$e14462_
                    (let ((_$e14465_ (char? _e14457_)))
                      (if _$e14465_
                          _$e14465_
                          (let ((_$e14468_ (keyword? _e14457_)))
                            (if _$e14468_
                                _$e14468_
                                (let ((_$e14471_ (boolean? _e14457_)))
                                  (if _$e14471_
                                      _$e14471_
                                      (eq? _e14457_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14453_) (symbol? (__AST-e _stx14453_))))
    (define __AST-id-list?__%
      (lambda (_stx14404_ _tail?14405_)
        (let _lp14407_ ((_rest14409_ _stx14404_))
          (let* ((_$e14411_ _rest14409_)
                 (_$E1441314426_
                  (lambda ()
                    (let* ((_$E1441414421_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e14411_)))
                           (_rest14424_ _$e14411_))
                      (_tail?14405_ _rest14424_)))))
            (if (__AST-pair? _$e14411_)
                (let* ((_$tgt1441514429_ (__AST-e _$e14411_))
                       (_$hd1441614432_ (##car _$tgt1441514429_))
                       (_$tl1441714435_ (##cdr _$tgt1441514429_)))
                  (let* ((_hd14439_ _$hd1441614432_)
                         (_rest14441_ _$tl1441714435_))
                    (if (__AST-id? _hd14439_) (_lp14407_ _rest14441_) '#f)))
                (_$E1441314426_))))))
    (define __AST-id-list?__0
      (lambda (_stx14446_)
        (let ((_tail?14448_ __AST-null?))
          (__AST-id-list?__% _stx14446_ _tail?14448_))))
    (define __AST-id-list?
      (lambda _g14826_
        (let ((_g14825_ (##length _g14826_)))
          (cond ((##fx= _g14825_ 1)
                 (apply (lambda (_stx14446_) (__AST-id-list?__0 _stx14446_))
                        _g14826_))
                ((##fx= _g14825_ 2)
                 (apply (lambda (_stx14450_ _tail?14451_)
                          (__AST-id-list?__% _stx14450_ _tail?14451_))
                        _g14826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14826_))))))
    (define __AST-bind-list?
      (lambda (_stx14396_)
        (__AST-id-list?__%
         _stx14396_
         (lambda (_e14398_)
           (let ((_$e14400_ (__AST-null? _e14398_)))
             (if _$e14400_ _$e14400_ (__AST-id? _e14398_)))))))
    (define __AST-list?__%
      (lambda (_stx14349_ _tail?14350_)
        (let _lp14352_ ((_rest14354_ _stx14349_))
          (let* ((_$e14356_ _rest14354_)
                 (_$E1435814371_
                  (lambda ()
                    (let* ((_$E1435914366_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e14356_)))
                           (_rest14369_ _$e14356_))
                      (_tail?14350_ _rest14369_)))))
            (if (__AST-pair? _$e14356_)
                (let* ((_$tgt1436014374_ (__AST-e _$e14356_))
                       (_$hd1436114377_ (##car _$tgt1436014374_))
                       (_$tl1436214380_ (##cdr _$tgt1436014374_)))
                  (let ((_rest14384_ _$tl1436214380_))
                    (_lp14352_ _rest14384_)))
                (_$E1435814371_))))))
    (define __AST-list?__0
      (lambda (_stx14389_)
        (let ((_tail?14391_ __AST-null?))
          (__AST-list?__% _stx14389_ _tail?14391_))))
    (define __AST-list?
      (lambda _g14828_
        (let ((_g14827_ (##length _g14828_)))
          (cond ((##fx= _g14827_ 1)
                 (apply (lambda (_stx14389_) (__AST-list?__0 _stx14389_))
                        _g14828_))
                ((##fx= _g14827_ 2)
                 (apply (lambda (_stx14393_ _tail?14394_)
                          (__AST-list?__% _stx14393_ _tail?14394_))
                        _g14828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14828_))))))
    (define __AST->list
      (lambda (_stx14314_)
        (let* ((_$e14316_ _stx14314_)
               (_$E1431814331_
                (lambda ()
                  (let* ((_$E1431914326_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e14316_)))
                         (_rest14329_ _$e14316_))
                    (__AST-e _rest14329_)))))
          (if (__AST-pair? _$e14316_)
              (let* ((_$tgt1432014334_ (__AST-e _$e14316_))
                     (_$hd1432114337_ (##car _$tgt1432014334_))
                     (_$tl1432214340_ (##cdr _$tgt1432014334_)))
                (let* ((_hd14344_ _$hd1432114337_)
                       (_rest14346_ _$tl1432214340_))
                  (cons _hd14344_ (__AST->list _rest14346_))))
              (_$E1431814331_)))))
    (define __AST->datum
      (lambda (_stx14312_)
        (if (##structure-instance-of? _stx14312_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14312_))
            (if (pair? _stx14312_)
                (cons (__AST->datum (car _stx14312_))
                      (__AST->datum (cdr _stx14312_)))
                (if (vector? _stx14312_)
                    (vector-map __AST->datum _stx14312_)
                    (if (box? _stx14312_)
                        (box (__AST->datum (unbox _stx14312_)))
                        _stx14312_))))))
    (define get-readenv
      (lambda (_port14310_)
        (##make-readenv
         _port14310_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14298_)
        (let ((_e14300_ (##read-datum-or-eof (get-readenv _in14298_))))
          (if (eof-object? (__AST-e _e14300_)) (__AST-e _e14300_) _e14300_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14306_ (current-input-port))) (read-syntax__% _in14306_))))
    (define read-syntax
      (lambda _g14830_
        (let ((_g14829_ (##length _g14830_)))
          (cond ((##fx= _g14829_ 0)
                 (apply (lambda () (read-syntax__0)) _g14830_))
                ((##fx= _g14829_ 1)
                 (apply (lambda (_in14308_) (read-syntax__% _in14308_))
                        _g14830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14830_))))))
    (define read-syntax-from-file
      (lambda (_path14293_)
        (let ((_r14295_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14293_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14295_)
              (cdr (__AST-e (vector-ref _r14295_ '1)))
              (error (err-code->string _r14295_) _path14293_)))))
    (define __wrap-syntax
      (lambda (_re14290_ _e14291_)
        (if (eof-object? _e14291_)
            _e14291_
            (##structure AST::t _e14291_ (##readenv->locat _re14290_)))))
    (define __unwrap-syntax (lambda (_re14287_ _e14288_) (__AST-e _e14288_)))
    (define __pp-syntax (lambda (_stx14285_) (pp (__AST->datum _stx14285_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14283_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14283_ '#t)
          (macro-readtable-bracket-handler-set! _rt14283_ '@list)
          (macro-readtable-brace-handler-set! _rt14283_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14283_
           '#\!
           __read-sharp-bang)
          _rt14283_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14279_ _kw14280_)
        (macro-readtable-bracket-handler-set! _rt14279_ _kw14280_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14276_ _kw14277_)
        (macro-readtable-brace-handler-set! _rt14276_ _kw14277_)))
    (define __read-sharp-bang
      (lambda (_re14267_ _next14268_ _start-pos14269_)
        (if (eq? _start-pos14269_ '0)
            (let* ((_line14271_
                    (##read-line
                     (macro-readenv-port _re14267_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14273_
                    (substring _line14271_ '1 (string-length _line14271_))))
              (macro-readenv-script-line-set! _re14267_ _script-line14273_)
              (##script-marker))
            (##read-sharp-bang _re14267_ _next14268_ _start-pos14269_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14265_)
        (if (source-location? _obj14265_)
            (string? (##locat-container _obj14265_))
            '#f)))
    (define source-location-path
      (lambda (_obj14263_)
        (if (##locat? _obj14263_)
            (##container->path (##locat-container _obj14263_))
            '#f)))))
