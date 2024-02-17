(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708168068)
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
      (lambda _$args110726_
        (apply make-instance SyntaxError::t _$args110726_)))
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
      (lambda (_self110629_ _port110630_)
        (letrec ((_location110632_
                  (lambda ()
                    (let _lp110686_ ((_rest110688_
                                      (##unchecked-structure-ref
                                       _self110629_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest110689110697_ _rest110688_)
                             (_else110691110705_ (lambda () '#f))
                             (_K110693110714_
                              (lambda (_rest110708_ _hd110709_)
                                (let ((_$e110711_ (__AST-source _hd110709_)))
                                  (if _$e110711_
                                      _$e110711_
                                      (_lp110686_ _rest110708_))))))
                        (if (##pair? _rest110689110697_)
                            (let ((_hd110694110717_ (##car _rest110689110697_))
                                  (_tl110695110719_
                                   (##cdr _rest110689110697_)))
                              (let* ((_hd110722_ _hd110694110717_)
                                     (_rest110724_ _tl110695110719_))
                                (_K110693110714_ _rest110724_ _hd110722_)))
                            (_else110691110705_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e110635_ (_location110632_)))
               (if _$e110635_
                   ((lambda (_where110638_)
                      (##display-locat
                       _where110638_
                       '#t
                       (current-output-port)))
                    _$e110635_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e110640_
                    (##unchecked-structure-ref
                     _self110629_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e110640_
                   ((lambda (_where110643_)
                      (displayln
                       '" at "
                       _where110643_
                       '": "
                       (##unchecked-structure-ref
                        _self110629_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e110640_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self110629_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g110644110652_
                     (##unchecked-structure-ref
                      _self110629_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else110646110660_ (lambda () '#!void))
                    (_K110648110673_
                     (lambda (_rest110663_ _stx110664_)
                       (display '"... form:   ")
                       (__pp-syntax _stx110664_)
                       (for-each
                        (lambda (_detail110666_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail110666_))
                          (let ((_$e110668_ (__AST-source _detail110666_)))
                            (if _$e110668_
                                ((lambda (_loc110671_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc110671_
                                    '#t
                                    (current-output-port)))
                                 _$e110668_)
                                '#!void))
                          (newline))
                        _rest110663_))))
               (if (##pair? _g110644110652_)
                   (let ((_hd110649110676_ (##car _g110644110652_))
                         (_tl110650110678_ (##cdr _g110644110652_)))
                     (let* ((_stx110681_ _hd110649110676_)
                            (_rest110683_ _tl110650110678_))
                       (_K110648110673_ _rest110683_ _stx110681_)))
                   '#!void)))
           current-output-port
           _port110630_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message110500_
               _irritants110501_
               _where110502_
               _context110503_
               _marks110504_
               _phi110505_)
        (let ((__obj115389
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj115389
           _message110500_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj115389
           _irritants110501_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj115389
           _where110502_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj115389
           _context110503_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj115389
           _marks110504_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj115389
           _phi110505_
           '5
           SyntaxError::t
           '#f)
          __obj115389)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where110495_ _message110496_ _stx110497_ . _details110498_)
        (raise (make-syntax-error
                _message110496_
                (cons _stx110497_ _details110498_)
                _where110495_
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
      (lambda _$args110492_ (apply make-instance AST::t _$args110492_)))
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
      (lambda (_stx110490_)
        (if (##structure-instance-of? _stx110490_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx110490_ '1 AST::t '#f)
            _stx110490_)))
    (define __AST-source
      (lambda (_stx110484_)
        (let _lp110486_ ((_src110488_ _stx110484_))
          (if (##structure-instance-of? _src110488_ 'gerbil#AST::t)
              (_lp110486_
               (##unchecked-structure-ref _src110488_ '2 AST::t '#f))
              (if (##locat? _src110488_) _src110488_ '#f)))))
    (define __AST
      (lambda (_e110476_ _src-stx110477_)
        (let ((_src110479_ (__AST-source _src-stx110477_)))
          (if (or (##structure-instance-of? _e110476_ 'gerbil#AST::t)
                  (not _src110479_))
              _e110476_
              (##structure AST::t _e110476_ _src110479_)))))
    (define __AST-eq?
      (lambda (_stx110473_ _obj110474_)
        (eq? (__AST-e _stx110473_) _obj110474_)))
    (define __AST-pair? (lambda (_stx110471_) (pair? (__AST-e _stx110471_))))
    (define __AST-null? (lambda (_stx110469_) (null? (__AST-e _stx110469_))))
    (define __AST-datum?
      (lambda (_stx110450_)
        (let* ((_e110452_ (__AST-e _stx110450_))
               (_$e110454_ (number? _e110452_)))
          (if _$e110454_
              _$e110454_
              (let ((_$e110457_ (string? _e110452_)))
                (if _$e110457_
                    _$e110457_
                    (let ((_$e110460_ (char? _e110452_)))
                      (if _$e110460_
                          _$e110460_
                          (let ((_$e110463_ (keyword? _e110452_)))
                            (if _$e110463_
                                _$e110463_
                                (let ((_$e110466_ (boolean? _e110452_)))
                                  (if _$e110466_
                                      _$e110466_
                                      (eq? _e110452_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx110448_) (symbol? (__AST-e _stx110448_))))
    (define __AST-id-list?__%
      (lambda (_stx110399_ _tail?110400_)
        (let _lp110402_ ((_rest110404_ _stx110399_))
          (let* ((_$e110406_ _rest110404_)
                 (_$E110408110421_
                  (lambda ()
                    (let* ((_$E110409110416_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e110406_)))
                           (_rest110419_ _$e110406_))
                      (_tail?110400_ _rest110419_)))))
            (if (__AST-pair? _$e110406_)
                (let* ((_$tgt110410110424_ (__AST-e _$e110406_))
                       (_$hd110411110427_ (##car _$tgt110410110424_))
                       (_$tl110412110430_ (##cdr _$tgt110410110424_)))
                  (let* ((_hd110434_ _$hd110411110427_)
                         (_rest110436_ _$tl110412110430_))
                    (if (__AST-id? _hd110434_) (_lp110402_ _rest110436_) '#f)))
                (_$E110408110421_))))))
    (define __AST-id-list?__0
      (lambda (_stx110441_)
        (let ((_tail?110443_ __AST-null?))
          (__AST-id-list?__% _stx110441_ _tail?110443_))))
    (define __AST-id-list?
      (lambda _g115392_
        (let ((_g115391_ (##length _g115392_)))
          (cond ((##fx= _g115391_ 1)
                 (apply (lambda (_stx110441_) (__AST-id-list?__0 _stx110441_))
                        _g115392_))
                ((##fx= _g115391_ 2)
                 (apply (lambda (_stx110445_ _tail?110446_)
                          (__AST-id-list?__% _stx110445_ _tail?110446_))
                        _g115392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g115392_))))))
    (define __AST-bind-list?
      (lambda (_stx110391_)
        (__AST-id-list?__%
         _stx110391_
         (lambda (_e110393_)
           (let ((_$e110395_ (__AST-null? _e110393_)))
             (if _$e110395_ _$e110395_ (__AST-id? _e110393_)))))))
    (define __AST-list?__%
      (lambda (_stx110344_ _tail?110345_)
        (let _lp110347_ ((_rest110349_ _stx110344_))
          (let* ((_$e110351_ _rest110349_)
                 (_$E110353110366_
                  (lambda ()
                    (let* ((_$E110354110361_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e110351_)))
                           (_rest110364_ _$e110351_))
                      (_tail?110345_ _rest110364_)))))
            (if (__AST-pair? _$e110351_)
                (let* ((_$tgt110355110369_ (__AST-e _$e110351_))
                       (_$hd110356110372_ (##car _$tgt110355110369_))
                       (_$tl110357110375_ (##cdr _$tgt110355110369_)))
                  (let ((_rest110379_ _$tl110357110375_))
                    (_lp110347_ _rest110379_)))
                (_$E110353110366_))))))
    (define __AST-list?__0
      (lambda (_stx110384_)
        (let ((_tail?110386_ __AST-null?))
          (__AST-list?__% _stx110384_ _tail?110386_))))
    (define __AST-list?
      (lambda _g115394_
        (let ((_g115393_ (##length _g115394_)))
          (cond ((##fx= _g115393_ 1)
                 (apply (lambda (_stx110384_) (__AST-list?__0 _stx110384_))
                        _g115394_))
                ((##fx= _g115393_ 2)
                 (apply (lambda (_stx110388_ _tail?110389_)
                          (__AST-list?__% _stx110388_ _tail?110389_))
                        _g115394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g115394_))))))
    (define __AST->list
      (lambda (_stx110309_)
        (let* ((_$e110311_ _stx110309_)
               (_$E110313110326_
                (lambda ()
                  (let* ((_$E110314110321_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e110311_)))
                         (_rest110324_ _$e110311_))
                    (__AST-e _rest110324_)))))
          (if (__AST-pair? _$e110311_)
              (let* ((_$tgt110315110329_ (__AST-e _$e110311_))
                     (_$hd110316110332_ (##car _$tgt110315110329_))
                     (_$tl110317110335_ (##cdr _$tgt110315110329_)))
                (let* ((_hd110339_ _$hd110316110332_)
                       (_rest110341_ _$tl110317110335_))
                  (cons _hd110339_ (__AST->list _rest110341_))))
              (_$E110313110326_)))))
    (define __AST->datum
      (lambda (_stx110307_)
        (if (##structure-instance-of? _stx110307_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx110307_))
            (if (pair? _stx110307_)
                (cons (__AST->datum (car _stx110307_))
                      (__AST->datum (cdr _stx110307_)))
                (if (vector? _stx110307_)
                    (vector-map __AST->datum _stx110307_)
                    (if (box? _stx110307_)
                        (box (__AST->datum (unbox _stx110307_)))
                        _stx110307_))))))
    (define get-readenv
      (lambda (_port110305_)
        (##make-readenv
         _port110305_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in110293_)
        (let ((_e110295_ (##read-datum-or-eof (get-readenv _in110293_))))
          (if (eof-object? (__AST-e _e110295_))
              (__AST-e _e110295_)
              _e110295_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in110301_ (current-input-port))) (read-syntax__% _in110301_))))
    (define read-syntax
      (lambda _g115396_
        (let ((_g115395_ (##length _g115396_)))
          (cond ((##fx= _g115395_ 0)
                 (apply (lambda () (read-syntax__0)) _g115396_))
                ((##fx= _g115395_ 1)
                 (apply (lambda (_in110303_) (read-syntax__% _in110303_))
                        _g115396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g115396_))))))
    (define read-syntax-from-file
      (lambda (_path110288_)
        (let ((_r110290_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path110288_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r110290_)
              (cdr (__AST-e (vector-ref _r110290_ '1)))
              (error (err-code->string _r110290_) _path110288_)))))
    (define __wrap-syntax
      (lambda (_re110285_ _e110286_)
        (if (eof-object? _e110286_)
            _e110286_
            (##structure AST::t _e110286_ (##readenv->locat _re110285_)))))
    (define __unwrap-syntax
      (lambda (_re110282_ _e110283_) (__AST-e _e110283_)))
    (define __pp-syntax (lambda (_stx110280_) (pp (__AST->datum _stx110280_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt110278_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt110278_ '#t)
          (macro-readtable-bracket-handler-set! _rt110278_ '@list)
          (macro-readtable-brace-handler-set! _rt110278_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt110278_
           '#\!
           __read-sharp-bang)
          _rt110278_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt110274_ _kw110275_)
        (macro-readtable-bracket-handler-set! _rt110274_ _kw110275_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt110271_ _kw110272_)
        (macro-readtable-brace-handler-set! _rt110271_ _kw110272_)))
    (define __read-sharp-bang
      (lambda (_re110262_ _next110263_ _start-pos110264_)
        (if (eq? _start-pos110264_ '0)
            (let* ((_line110266_
                    (##read-line
                     (macro-readenv-port _re110262_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line110268_
                    (substring _line110266_ '1 (string-length _line110266_))))
              (macro-readenv-script-line-set! _re110262_ _script-line110268_)
              (##script-marker))
            (##read-sharp-bang _re110262_ _next110263_ _start-pos110264_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj110260_)
        (if (source-location? _obj110260_)
            (string? (##locat-container _obj110260_))
            '#f)))
    (define source-location-path
      (lambda (_obj110258_)
        (if (##locat? _obj110258_)
            (##container->path (##locat-container _obj110258_))
            '#f)))))
