(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1706581965)
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
      (lambda _$args14683_
        (apply make-class-instance SyntaxError::t _$args14683_)))
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
      (lambda (_self14586_ _port14587_)
        (letrec ((_location14589_
                  (lambda ()
                    (let _lp14643_ ((_rest14645_
                                     (slot-ref _self14586_ 'irritants)))
                      (let* ((_rest1464614654_ _rest14645_)
                             (_else1464814662_ (lambda () '#f))
                             (_K1465014671_
                              (lambda (_rest14665_ _hd14666_)
                                (let ((_$e14668_ (__AST-source _hd14666_)))
                                  (if _$e14668_
                                      _$e14668_
                                      (_lp14643_ _rest14665_))))))
                        (if (##pair? _rest1464614654_)
                            (let ((_hd1465114674_ (##car _rest1464614654_))
                                  (_tl1465214676_ (##cdr _rest1464614654_)))
                              (let* ((_hd14679_ _hd1465114674_)
                                     (_rest14681_ _tl1465214676_))
                                (_K1465014671_ _rest14681_ _hd14679_)))
                            (_else1464814662_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e14592_ (_location14589_)))
               (if _$e14592_
                   ((lambda (_where14595_)
                      (##display-locat _where14595_ '#t (current-output-port)))
                    _$e14592_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e14597_ (slot-ref _self14586_ 'where)))
               (if _$e14597_
                   ((lambda (_where14600_)
                      (displayln
                       '" at "
                       _where14600_
                       '": "
                       (slot-ref _self14586_ 'message)))
                    _$e14597_)
                   (displayln '": " (slot-ref _self14586_ 'message))))
             (let* ((_g1460114609_ (slot-ref _self14586_ 'irritants))
                    (_else1460314617_ (lambda () '#!void))
                    (_K1460514630_
                     (lambda (_rest14620_ _stx14621_)
                       (display '"... form:   ")
                       (__pp-syntax _stx14621_)
                       (for-each
                        (lambda (_detail14623_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail14623_))
                          (let ((_$e14625_ (__AST-source _detail14623_)))
                            (if _$e14625_
                                ((lambda (_loc14628_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc14628_
                                    '#t
                                    (current-output-port)))
                                 _$e14625_)
                                '#!void))
                          (newline))
                        _rest14620_))))
               (if (##pair? _g1460114609_)
                   (let ((_hd1460614633_ (##car _g1460114609_))
                         (_tl1460714635_ (##cdr _g1460114609_)))
                     (let* ((_stx14638_ _hd1460614633_)
                            (_rest14640_ _tl1460714635_))
                       (_K1460514630_ _rest14640_ _stx14638_)))
                   '#!void)))
           current-output-port
           _port14587_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message14457_
               _irritants14458_
               _where14459_
               _context14460_
               _marks14461_
               _phi14462_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message14457_
         'irritants:
         _irritants14458_
         'where:
         _where14459_
         'context:
         _context14460_
         'marks:
         _marks14461_
         'phi:
         _phi14462_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where14452_ _message14453_ _stx14454_ . _details14455_)
        (raise (make-syntax-error
                _message14453_
                (cons _stx14454_ _details14455_)
                _where14452_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args14449_ (apply make-struct-instance AST::t _$args14449_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx14447_)
        (if (##structure-instance-of? _stx14447_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx14447_ '1 AST::t '#f)
            _stx14447_)))
    (define __AST-source
      (lambda (_stx14441_)
        (let _lp14443_ ((_src14445_ _stx14441_))
          (if (##structure-instance-of? _src14445_ 'gerbil#AST::t)
              (_lp14443_ (##unchecked-structure-ref _src14445_ '2 AST::t '#f))
              (if (##locat? _src14445_) _src14445_ '#f)))))
    (define __AST
      (lambda (_e14433_ _src-stx14434_)
        (let ((_src14436_ (__AST-source _src-stx14434_)))
          (if (or (##structure-instance-of? _e14433_ 'gerbil#AST::t)
                  (not _src14436_))
              _e14433_
              (##structure AST::t _e14433_ _src14436_)))))
    (define __AST-eq?
      (lambda (_stx14430_ _obj14431_) (eq? (__AST-e _stx14430_) _obj14431_)))
    (define __AST-pair? (lambda (_stx14428_) (pair? (__AST-e _stx14428_))))
    (define __AST-null? (lambda (_stx14426_) (null? (__AST-e _stx14426_))))
    (define __AST-datum?
      (lambda (_stx14407_)
        (let* ((_e14409_ (__AST-e _stx14407_)) (_$e14411_ (number? _e14409_)))
          (if _$e14411_
              _$e14411_
              (let ((_$e14414_ (string? _e14409_)))
                (if _$e14414_
                    _$e14414_
                    (let ((_$e14417_ (char? _e14409_)))
                      (if _$e14417_
                          _$e14417_
                          (let ((_$e14420_ (keyword? _e14409_)))
                            (if _$e14420_
                                _$e14420_
                                (let ((_$e14423_ (boolean? _e14409_)))
                                  (if _$e14423_
                                      _$e14423_
                                      (eq? _e14409_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx14405_) (symbol? (__AST-e _stx14405_))))
    (define __AST-id-list?__%
      (lambda (_stx14356_ _tail?14357_)
        (let _lp14359_ ((_rest14361_ _stx14356_))
          (let* ((_$e14363_ _rest14361_)
                 (_$E1436514378_
                  (lambda ()
                    (let* ((_$E1436614373_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e14363_)))
                           (_rest14376_ _$e14363_))
                      (_tail?14357_ _rest14376_)))))
            (if (__AST-pair? _$e14363_)
                (let* ((_$tgt1436714381_ (__AST-e _$e14363_))
                       (_$hd1436814384_ (##car _$tgt1436714381_))
                       (_$tl1436914387_ (##cdr _$tgt1436714381_)))
                  (let* ((_hd14391_ _$hd1436814384_)
                         (_rest14393_ _$tl1436914387_))
                    (if (__AST-id? _hd14391_) (_lp14359_ _rest14393_) '#f)))
                (_$E1436514378_))))))
    (define __AST-id-list?__0
      (lambda (_stx14398_)
        (let ((_tail?14400_ __AST-null?))
          (__AST-id-list?__% _stx14398_ _tail?14400_))))
    (define __AST-id-list?
      (lambda _g14778_
        (let ((_g14777_ (##length _g14778_)))
          (cond ((##fx= _g14777_ 1)
                 (apply (lambda (_stx14398_) (__AST-id-list?__0 _stx14398_))
                        _g14778_))
                ((##fx= _g14777_ 2)
                 (apply (lambda (_stx14402_ _tail?14403_)
                          (__AST-id-list?__% _stx14402_ _tail?14403_))
                        _g14778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g14778_))))))
    (define __AST-bind-list?
      (lambda (_stx14348_)
        (__AST-id-list?__%
         _stx14348_
         (lambda (_e14350_)
           (let ((_$e14352_ (__AST-null? _e14350_)))
             (if _$e14352_ _$e14352_ (__AST-id? _e14350_)))))))
    (define __AST-list?__%
      (lambda (_stx14301_ _tail?14302_)
        (let _lp14304_ ((_rest14306_ _stx14301_))
          (let* ((_$e14308_ _rest14306_)
                 (_$E1431014323_
                  (lambda ()
                    (let* ((_$E1431114318_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e14308_)))
                           (_rest14321_ _$e14308_))
                      (_tail?14302_ _rest14321_)))))
            (if (__AST-pair? _$e14308_)
                (let* ((_$tgt1431214326_ (__AST-e _$e14308_))
                       (_$hd1431314329_ (##car _$tgt1431214326_))
                       (_$tl1431414332_ (##cdr _$tgt1431214326_)))
                  (let ((_rest14336_ _$tl1431414332_))
                    (_lp14304_ _rest14336_)))
                (_$E1431014323_))))))
    (define __AST-list?__0
      (lambda (_stx14341_)
        (let ((_tail?14343_ __AST-null?))
          (__AST-list?__% _stx14341_ _tail?14343_))))
    (define __AST-list?
      (lambda _g14780_
        (let ((_g14779_ (##length _g14780_)))
          (cond ((##fx= _g14779_ 1)
                 (apply (lambda (_stx14341_) (__AST-list?__0 _stx14341_))
                        _g14780_))
                ((##fx= _g14779_ 2)
                 (apply (lambda (_stx14345_ _tail?14346_)
                          (__AST-list?__% _stx14345_ _tail?14346_))
                        _g14780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g14780_))))))
    (define __AST->list
      (lambda (_stx14266_)
        (let* ((_$e14268_ _stx14266_)
               (_$E1427014283_
                (lambda ()
                  (let* ((_$E1427114278_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e14268_)))
                         (_rest14281_ _$e14268_))
                    (__AST-e _rest14281_)))))
          (if (__AST-pair? _$e14268_)
              (let* ((_$tgt1427214286_ (__AST-e _$e14268_))
                     (_$hd1427314289_ (##car _$tgt1427214286_))
                     (_$tl1427414292_ (##cdr _$tgt1427214286_)))
                (let* ((_hd14296_ _$hd1427314289_)
                       (_rest14298_ _$tl1427414292_))
                  (cons _hd14296_ (__AST->list _rest14298_))))
              (_$E1427014283_)))))
    (define __AST->datum
      (lambda (_stx14264_)
        (if (##structure-instance-of? _stx14264_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx14264_))
            (if (pair? _stx14264_)
                (cons (__AST->datum (car _stx14264_))
                      (__AST->datum (cdr _stx14264_)))
                (if (vector? _stx14264_)
                    (vector-map __AST->datum _stx14264_)
                    (if (box? _stx14264_)
                        (box (__AST->datum (unbox _stx14264_)))
                        _stx14264_))))))
    (define get-readenv
      (lambda (_port14262_)
        (##make-readenv
         _port14262_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in14250_)
        (let ((_e14252_ (##read-datum-or-eof (get-readenv _in14250_))))
          (if (eof-object? (__AST-e _e14252_)) (__AST-e _e14252_) _e14252_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in14258_ (current-input-port))) (read-syntax__% _in14258_))))
    (define read-syntax
      (lambda _g14782_
        (let ((_g14781_ (##length _g14782_)))
          (cond ((##fx= _g14781_ 0)
                 (apply (lambda () (read-syntax__0)) _g14782_))
                ((##fx= _g14781_ 1)
                 (apply (lambda (_in14260_) (read-syntax__% _in14260_))
                        _g14782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g14782_))))))
    (define read-syntax-from-file
      (lambda (_path14245_)
        (let ((_r14247_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path14245_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r14247_)
              (cdr (__AST-e (vector-ref _r14247_ '1)))
              (error (err-code->string _r14247_) _path14245_)))))
    (define __wrap-syntax
      (lambda (_re14242_ _e14243_)
        (if (eof-object? _e14243_)
            _e14243_
            (##structure AST::t _e14243_ (##readenv->locat _re14242_)))))
    (define __unwrap-syntax (lambda (_re14239_ _e14240_) (__AST-e _e14240_)))
    (define __pp-syntax (lambda (_stx14237_) (pp (__AST->datum _stx14237_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt14235_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt14235_ '#t)
          (macro-readtable-bracket-handler-set! _rt14235_ '@list)
          (macro-readtable-brace-handler-set! _rt14235_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt14235_
           '#\!
           __read-sharp-bang)
          _rt14235_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt14231_ _kw14232_)
        (macro-readtable-bracket-handler-set! _rt14231_ _kw14232_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt14228_ _kw14229_)
        (macro-readtable-brace-handler-set! _rt14228_ _kw14229_)))
    (define __read-sharp-bang
      (lambda (_re14219_ _next14220_ _start-pos14221_)
        (if (eq? _start-pos14221_ '0)
            (let* ((_line14223_
                    (##read-line
                     (macro-readenv-port _re14219_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line14225_
                    (substring _line14223_ '1 (string-length _line14223_))))
              (macro-readenv-script-line-set! _re14219_ _script-line14225_)
              (##script-marker))
            (##read-sharp-bang _re14219_ _next14220_ _start-pos14221_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj14217_)
        (if (source-location? _obj14217_)
            (string? (##locat-container _obj14217_))
            '#f)))
    (define source-location-path
      (lambda (_obj14215_)
        (if (##locat? _obj14215_)
            (##container->path (##locat-container _obj14215_))
            '#f)))))
