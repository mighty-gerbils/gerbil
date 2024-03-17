(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1710694202)
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
      (lambda _$args73511_ (apply make-instance SyntaxError::t _$args73511_)))
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
      (lambda (_self73414_ _port73415_)
        (letrec ((_location73417_
                  (lambda ()
                    (let _lp73471_ ((_rest73473_
                                     (##unchecked-structure-ref
                                      _self73414_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7347473482_ _rest73473_)
                             (_else7347673490_ (lambda () '#f))
                             (_K7347873499_
                              (lambda (_rest73493_ _hd73494_)
                                (let ((_$e73496_ (__AST-source _hd73494_)))
                                  (if _$e73496_
                                      _$e73496_
                                      (_lp73471_ _rest73493_))))))
                        (if (##pair? _rest7347473482_)
                            (let ((_hd7347973502_ (##car _rest7347473482_))
                                  (_tl7348073504_ (##cdr _rest7347473482_)))
                              (let* ((_hd73507_ _hd7347973502_)
                                     (_rest73509_ _tl7348073504_))
                                (_K7347873499_ _rest73509_ _hd73507_)))
                            (_else7347673490_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e73420_ (_location73417_)))
               (if _$e73420_
                   ((lambda (_where73423_)
                      (##display-locat _where73423_ '#t (current-output-port)))
                    _$e73420_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e73425_
                    (##unchecked-structure-ref
                     _self73414_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e73425_
                   ((lambda (_where73428_)
                      (displayln
                       '" at "
                       _where73428_
                       '": "
                       (##unchecked-structure-ref
                        _self73414_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e73425_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self73414_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7342973437_
                     (##unchecked-structure-ref
                      _self73414_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7343173445_ (lambda () '#!void))
                    (_K7343373458_
                     (lambda (_rest73448_ _stx73449_)
                       (display '"... form:   ")
                       (__pp-syntax _stx73449_)
                       (for-each
                        (lambda (_detail73451_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail73451_))
                          (let ((_$e73453_ (__AST-source _detail73451_)))
                            (if _$e73453_
                                ((lambda (_loc73456_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc73456_
                                    '#t
                                    (current-output-port)))
                                 _$e73453_)
                                '#!void))
                          (newline))
                        _rest73448_))))
               (if (##pair? _g7342973437_)
                   (let ((_hd7343473461_ (##car _g7342973437_))
                         (_tl7343573463_ (##cdr _g7342973437_)))
                     (let* ((_stx73466_ _hd7343473461_)
                            (_rest73468_ _tl7343573463_))
                       (_K7343373458_ _rest73468_ _stx73466_)))
                   '#!void)))
           current-output-port
           _port73415_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message73285_
               _irritants73286_
               _where73287_
               _context73288_
               _marks73289_
               _phi73290_)
        (let ((__obj73606
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj73606
           _message73285_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73606
           _irritants73286_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73606
           _where73287_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73606
           _context73288_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73606
           _marks73289_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj73606
           _phi73290_
           '5
           SyntaxError::t
           '#f)
          __obj73606)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where73280_ _message73281_ _stx73282_ . _details73283_)
        (raise (make-syntax-error
                _message73281_
                (cons _stx73282_ _details73283_)
                _where73280_
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
      (lambda _$args73277_ (apply make-instance AST::t _$args73277_)))
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
      (lambda (_stx73275_)
        (if (##structure-instance-of? _stx73275_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx73275_ '1 AST::t '#f)
            _stx73275_)))
    (define __AST-source
      (lambda (_stx73269_)
        (let _lp73271_ ((_src73273_ _stx73269_))
          (if (##structure-instance-of? _src73273_ 'gerbil#AST::t)
              (_lp73271_ (##unchecked-structure-ref _src73273_ '2 AST::t '#f))
              (if (##locat? _src73273_) _src73273_ '#f)))))
    (define __AST
      (lambda (_e73261_ _src-stx73262_)
        (let ((_src73264_ (__AST-source _src-stx73262_)))
          (if (or (##structure-instance-of? _e73261_ 'gerbil#AST::t)
                  (not _src73264_))
              _e73261_
              (##structure AST::t _e73261_ _src73264_)))))
    (define __AST-eq?
      (lambda (_stx73258_ _obj73259_) (eq? (__AST-e _stx73258_) _obj73259_)))
    (define __AST-pair? (lambda (_stx73256_) (pair? (__AST-e _stx73256_))))
    (define __AST-null? (lambda (_stx73254_) (null? (__AST-e _stx73254_))))
    (define __AST-datum?
      (lambda (_stx73235_)
        (let* ((_e73237_ (__AST-e _stx73235_)) (_$e73239_ (number? _e73237_)))
          (if _$e73239_
              _$e73239_
              (let ((_$e73242_ (string? _e73237_)))
                (if _$e73242_
                    _$e73242_
                    (let ((_$e73245_ (char? _e73237_)))
                      (if _$e73245_
                          _$e73245_
                          (let ((_$e73248_ (keyword? _e73237_)))
                            (if _$e73248_
                                _$e73248_
                                (let ((_$e73251_ (boolean? _e73237_)))
                                  (if _$e73251_
                                      _$e73251_
                                      (eq? _e73237_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx73233_) (symbol? (__AST-e _stx73233_))))
    (define __AST-id-list?__%
      (lambda (_stx73184_ _tail?73185_)
        (let _lp73187_ ((_rest73189_ _stx73184_))
          (let* ((_$e73191_ _rest73189_)
                 (_$E7319373206_
                  (lambda ()
                    (let* ((_$E7319473201_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73191_)))
                           (_rest73204_ _$e73191_))
                      (_tail?73185_ _rest73204_)))))
            (if (__AST-pair? _$e73191_)
                (let* ((_$tgt7319573209_ (__AST-e _$e73191_))
                       (_$hd7319673212_ (##car _$tgt7319573209_))
                       (_$tl7319773215_ (##cdr _$tgt7319573209_)))
                  (let* ((_hd73219_ _$hd7319673212_)
                         (_rest73221_ _$tl7319773215_))
                    (if (__AST-id? _hd73219_) (_lp73187_ _rest73221_) '#f)))
                (_$E7319373206_))))))
    (define __AST-id-list?__0
      (lambda (_stx73226_)
        (let ((_tail?73228_ __AST-null?))
          (__AST-id-list?__% _stx73226_ _tail?73228_))))
    (define __AST-id-list?
      (lambda _g73609_
        (let ((_g73608_ (##length _g73609_)))
          (cond ((##fx= _g73608_ 1)
                 (apply (lambda (_stx73226_) (__AST-id-list?__0 _stx73226_))
                        _g73609_))
                ((##fx= _g73608_ 2)
                 (apply (lambda (_stx73230_ _tail?73231_)
                          (__AST-id-list?__% _stx73230_ _tail?73231_))
                        _g73609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g73609_))))))
    (define __AST-bind-list?
      (lambda (_stx73176_)
        (__AST-id-list?__%
         _stx73176_
         (lambda (_e73178_)
           (let ((_$e73180_ (__AST-null? _e73178_)))
             (if _$e73180_ _$e73180_ (__AST-id? _e73178_)))))))
    (define __AST-list?__%
      (lambda (_stx73129_ _tail?73130_)
        (let _lp73132_ ((_rest73134_ _stx73129_))
          (let* ((_$e73136_ _rest73134_)
                 (_$E7313873151_
                  (lambda ()
                    (let* ((_$E7313973146_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e73136_)))
                           (_rest73149_ _$e73136_))
                      (_tail?73130_ _rest73149_)))))
            (if (__AST-pair? _$e73136_)
                (let* ((_$tgt7314073154_ (__AST-e _$e73136_))
                       (_$hd7314173157_ (##car _$tgt7314073154_))
                       (_$tl7314273160_ (##cdr _$tgt7314073154_)))
                  (let ((_rest73164_ _$tl7314273160_))
                    (_lp73132_ _rest73164_)))
                (_$E7313873151_))))))
    (define __AST-list?__0
      (lambda (_stx73169_)
        (let ((_tail?73171_ __AST-null?))
          (__AST-list?__% _stx73169_ _tail?73171_))))
    (define __AST-list?
      (lambda _g73611_
        (let ((_g73610_ (##length _g73611_)))
          (cond ((##fx= _g73610_ 1)
                 (apply (lambda (_stx73169_) (__AST-list?__0 _stx73169_))
                        _g73611_))
                ((##fx= _g73610_ 2)
                 (apply (lambda (_stx73173_ _tail?73174_)
                          (__AST-list?__% _stx73173_ _tail?73174_))
                        _g73611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g73611_))))))
    (define __AST->list
      (lambda (_stx73094_)
        (let* ((_$e73096_ _stx73094_)
               (_$E7309873111_
                (lambda ()
                  (let* ((_$E7309973106_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e73096_)))
                         (_rest73109_ _$e73096_))
                    (__AST-e _rest73109_)))))
          (if (__AST-pair? _$e73096_)
              (let* ((_$tgt7310073114_ (__AST-e _$e73096_))
                     (_$hd7310173117_ (##car _$tgt7310073114_))
                     (_$tl7310273120_ (##cdr _$tgt7310073114_)))
                (let* ((_hd73124_ _$hd7310173117_)
                       (_rest73126_ _$tl7310273120_))
                  (cons _hd73124_ (__AST->list _rest73126_))))
              (_$E7309873111_)))))
    (define __AST->datum
      (lambda (_stx73092_)
        (if (##structure-instance-of? _stx73092_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx73092_))
            (if (pair? _stx73092_)
                (cons (__AST->datum (car _stx73092_))
                      (__AST->datum (cdr _stx73092_)))
                (if (vector? _stx73092_)
                    (vector-map __AST->datum _stx73092_)
                    (if (box? _stx73092_)
                        (box (__AST->datum (unbox _stx73092_)))
                        _stx73092_))))))
    (define get-readenv
      (lambda (_port73090_)
        (##make-readenv
         _port73090_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in73078_)
        (let ((_e73080_ (##read-datum-or-eof (get-readenv _in73078_))))
          (if (eof-object? (__AST-e _e73080_)) (__AST-e _e73080_) _e73080_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in73086_ (current-input-port))) (read-syntax__% _in73086_))))
    (define read-syntax
      (lambda _g73613_
        (let ((_g73612_ (##length _g73613_)))
          (cond ((##fx= _g73612_ 0)
                 (apply (lambda () (read-syntax__0)) _g73613_))
                ((##fx= _g73612_ 1)
                 (apply (lambda (_in73088_) (read-syntax__% _in73088_))
                        _g73613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g73613_))))))
    (define read-syntax-from-file
      (lambda (_path73073_)
        (let ((_r73075_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path73073_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r73075_)
              (cdr (__AST-e (vector-ref _r73075_ '1)))
              (error (err-code->string _r73075_) _path73073_)))))
    (define __wrap-syntax
      (lambda (_re73070_ _e73071_)
        (if (eof-object? _e73071_)
            _e73071_
            (##structure AST::t _e73071_ (##readenv->locat _re73070_)))))
    (define __unwrap-syntax (lambda (_re73067_ _e73068_) (__AST-e _e73068_)))
    (define __pp-syntax (lambda (_stx73065_) (pp (__AST->datum _stx73065_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt73063_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt73063_ '#t)
          (macro-readtable-bracket-handler-set! _rt73063_ '@list)
          (macro-readtable-brace-handler-set! _rt73063_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt73063_
           '#\!
           __read-sharp-bang)
          _rt73063_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt73059_ _kw73060_)
        (macro-readtable-bracket-handler-set! _rt73059_ _kw73060_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt73056_ _kw73057_)
        (macro-readtable-brace-handler-set! _rt73056_ _kw73057_)))
    (define __read-sharp-bang
      (lambda (_re73047_ _next73048_ _start-pos73049_)
        (if (eq? _start-pos73049_ '0)
            (let* ((_line73051_
                    (##read-line
                     (macro-readenv-port _re73047_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line73053_
                    (substring _line73051_ '1 (string-length _line73051_))))
              (macro-readenv-script-line-set! _re73047_ _script-line73053_)
              (##script-marker))
            (##read-sharp-bang _re73047_ _next73048_ _start-pos73049_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj73045_)
        (if (source-location? _obj73045_)
            (string? (##locat-container _obj73045_))
            '#f)))
    (define source-location-path
      (lambda (_obj73043_)
        (if (##locat? _obj73043_)
            (##container->path (##locat-container _obj73043_))
            '#f)))))
