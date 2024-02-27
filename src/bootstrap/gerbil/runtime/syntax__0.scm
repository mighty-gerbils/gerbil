(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1709038441)
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
      (lambda _$args74387_ (apply make-instance SyntaxError::t _$args74387_)))
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
      (lambda (_self74290_ _port74291_)
        (letrec ((_location74293_
                  (lambda ()
                    (let _lp74347_ ((_rest74349_
                                     (##unchecked-structure-ref
                                      _self74290_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7435074358_ _rest74349_)
                             (_else7435274366_ (lambda () '#f))
                             (_K7435474375_
                              (lambda (_rest74369_ _hd74370_)
                                (let ((_$e74372_ (__AST-source _hd74370_)))
                                  (if _$e74372_
                                      _$e74372_
                                      (_lp74347_ _rest74369_))))))
                        (if (##pair? _rest7435074358_)
                            (let ((_hd7435574378_ (##car _rest7435074358_))
                                  (_tl7435674380_ (##cdr _rest7435074358_)))
                              (let* ((_hd74383_ _hd7435574378_)
                                     (_rest74385_ _tl7435674380_))
                                (_K7435474375_ _rest74385_ _hd74383_)))
                            (_else7435274366_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e74296_ (_location74293_)))
               (if _$e74296_
                   ((lambda (_where74299_)
                      (##display-locat _where74299_ '#t (current-output-port)))
                    _$e74296_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e74301_
                    (##unchecked-structure-ref
                     _self74290_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e74301_
                   ((lambda (_where74304_)
                      (displayln
                       '" at "
                       _where74304_
                       '": "
                       (##unchecked-structure-ref
                        _self74290_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e74301_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self74290_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7430574313_
                     (##unchecked-structure-ref
                      _self74290_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7430774321_ (lambda () '#!void))
                    (_K7430974334_
                     (lambda (_rest74324_ _stx74325_)
                       (display '"... form:   ")
                       (__pp-syntax _stx74325_)
                       (for-each
                        (lambda (_detail74327_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail74327_))
                          (let ((_$e74329_ (__AST-source _detail74327_)))
                            (if _$e74329_
                                ((lambda (_loc74332_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc74332_
                                    '#t
                                    (current-output-port)))
                                 _$e74329_)
                                '#!void))
                          (newline))
                        _rest74324_))))
               (if (##pair? _g7430574313_)
                   (let ((_hd7431074337_ (##car _g7430574313_))
                         (_tl7431174339_ (##cdr _g7430574313_)))
                     (let* ((_stx74342_ _hd7431074337_)
                            (_rest74344_ _tl7431174339_))
                       (_K7430974334_ _rest74344_ _stx74342_)))
                   '#!void)))
           current-output-port
           _port74291_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74161_
               _irritants74162_
               _where74163_
               _context74164_
               _marks74165_
               _phi74166_)
        (let ((__obj74482
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj74482
           _message74161_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74482
           _irritants74162_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74482
           _where74163_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74482
           _context74164_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74482
           _marks74165_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj74482
           _phi74166_
           '5
           SyntaxError::t
           '#f)
          __obj74482)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74156_ _message74157_ _stx74158_ . _details74159_)
        (raise (make-syntax-error
                _message74157_
                (cons _stx74158_ _details74159_)
                _where74156_
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
      (lambda _$args74153_ (apply make-instance AST::t _$args74153_)))
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
      (lambda (_stx74151_)
        (if (##structure-instance-of? _stx74151_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74151_ '1 AST::t '#f)
            _stx74151_)))
    (define __AST-source
      (lambda (_stx74145_)
        (let _lp74147_ ((_src74149_ _stx74145_))
          (if (##structure-instance-of? _src74149_ 'gerbil#AST::t)
              (_lp74147_ (##unchecked-structure-ref _src74149_ '2 AST::t '#f))
              (if (##locat? _src74149_) _src74149_ '#f)))))
    (define __AST
      (lambda (_e74137_ _src-stx74138_)
        (let ((_src74140_ (__AST-source _src-stx74138_)))
          (if (or (##structure-instance-of? _e74137_ 'gerbil#AST::t)
                  (not _src74140_))
              _e74137_
              (##structure AST::t _e74137_ _src74140_)))))
    (define __AST-eq?
      (lambda (_stx74134_ _obj74135_) (eq? (__AST-e _stx74134_) _obj74135_)))
    (define __AST-pair? (lambda (_stx74132_) (pair? (__AST-e _stx74132_))))
    (define __AST-null? (lambda (_stx74130_) (null? (__AST-e _stx74130_))))
    (define __AST-datum?
      (lambda (_stx74111_)
        (let* ((_e74113_ (__AST-e _stx74111_)) (_$e74115_ (number? _e74113_)))
          (if _$e74115_
              _$e74115_
              (let ((_$e74118_ (string? _e74113_)))
                (if _$e74118_
                    _$e74118_
                    (let ((_$e74121_ (char? _e74113_)))
                      (if _$e74121_
                          _$e74121_
                          (let ((_$e74124_ (keyword? _e74113_)))
                            (if _$e74124_
                                _$e74124_
                                (let ((_$e74127_ (boolean? _e74113_)))
                                  (if _$e74127_
                                      _$e74127_
                                      (eq? _e74113_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74109_) (symbol? (__AST-e _stx74109_))))
    (define __AST-id-list?__%
      (lambda (_stx74060_ _tail?74061_)
        (let _lp74063_ ((_rest74065_ _stx74060_))
          (let* ((_$e74067_ _rest74065_)
                 (_$E7406974082_
                  (lambda ()
                    (let* ((_$E7407074077_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74067_)))
                           (_rest74080_ _$e74067_))
                      (_tail?74061_ _rest74080_)))))
            (if (__AST-pair? _$e74067_)
                (let* ((_$tgt7407174085_ (__AST-e _$e74067_))
                       (_$hd7407274088_ (##car _$tgt7407174085_))
                       (_$tl7407374091_ (##cdr _$tgt7407174085_)))
                  (let* ((_hd74095_ _$hd7407274088_)
                         (_rest74097_ _$tl7407374091_))
                    (if (__AST-id? _hd74095_) (_lp74063_ _rest74097_) '#f)))
                (_$E7406974082_))))))
    (define __AST-id-list?__0
      (lambda (_stx74102_)
        (let ((_tail?74104_ __AST-null?))
          (__AST-id-list?__% _stx74102_ _tail?74104_))))
    (define __AST-id-list?
      (lambda _g74485_
        (let ((_g74484_ (##length _g74485_)))
          (cond ((##fx= _g74484_ 1)
                 (apply (lambda (_stx74102_) (__AST-id-list?__0 _stx74102_))
                        _g74485_))
                ((##fx= _g74484_ 2)
                 (apply (lambda (_stx74106_ _tail?74107_)
                          (__AST-id-list?__% _stx74106_ _tail?74107_))
                        _g74485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g74485_))))))
    (define __AST-bind-list?
      (lambda (_stx74052_)
        (__AST-id-list?__%
         _stx74052_
         (lambda (_e74054_)
           (let ((_$e74056_ (__AST-null? _e74054_)))
             (if _$e74056_ _$e74056_ (__AST-id? _e74054_)))))))
    (define __AST-list?__%
      (lambda (_stx74005_ _tail?74006_)
        (let _lp74008_ ((_rest74010_ _stx74005_))
          (let* ((_$e74012_ _rest74010_)
                 (_$E7401474027_
                  (lambda ()
                    (let* ((_$E7401574022_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74012_)))
                           (_rest74025_ _$e74012_))
                      (_tail?74006_ _rest74025_)))))
            (if (__AST-pair? _$e74012_)
                (let* ((_$tgt7401674030_ (__AST-e _$e74012_))
                       (_$hd7401774033_ (##car _$tgt7401674030_))
                       (_$tl7401874036_ (##cdr _$tgt7401674030_)))
                  (let ((_rest74040_ _$tl7401874036_))
                    (_lp74008_ _rest74040_)))
                (_$E7401474027_))))))
    (define __AST-list?__0
      (lambda (_stx74045_)
        (let ((_tail?74047_ __AST-null?))
          (__AST-list?__% _stx74045_ _tail?74047_))))
    (define __AST-list?
      (lambda _g74487_
        (let ((_g74486_ (##length _g74487_)))
          (cond ((##fx= _g74486_ 1)
                 (apply (lambda (_stx74045_) (__AST-list?__0 _stx74045_))
                        _g74487_))
                ((##fx= _g74486_ 2)
                 (apply (lambda (_stx74049_ _tail?74050_)
                          (__AST-list?__% _stx74049_ _tail?74050_))
                        _g74487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g74487_))))))
    (define __AST->list
      (lambda (_stx73970_)
        (let* ((_$e73972_ _stx73970_)
               (_$E7397473987_
                (lambda ()
                  (let* ((_$E7397573982_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e73972_)))
                         (_rest73985_ _$e73972_))
                    (__AST-e _rest73985_)))))
          (if (__AST-pair? _$e73972_)
              (let* ((_$tgt7397673990_ (__AST-e _$e73972_))
                     (_$hd7397773993_ (##car _$tgt7397673990_))
                     (_$tl7397873996_ (##cdr _$tgt7397673990_)))
                (let* ((_hd74000_ _$hd7397773993_)
                       (_rest74002_ _$tl7397873996_))
                  (cons _hd74000_ (__AST->list _rest74002_))))
              (_$E7397473987_)))))
    (define __AST->datum
      (lambda (_stx73968_)
        (if (##structure-instance-of? _stx73968_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx73968_))
            (if (pair? _stx73968_)
                (cons (__AST->datum (car _stx73968_))
                      (__AST->datum (cdr _stx73968_)))
                (if (vector? _stx73968_)
                    (vector-map __AST->datum _stx73968_)
                    (if (box? _stx73968_)
                        (box (__AST->datum (unbox _stx73968_)))
                        _stx73968_))))))
    (define get-readenv
      (lambda (_port73966_)
        (##make-readenv
         _port73966_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in73954_)
        (let ((_e73956_ (##read-datum-or-eof (get-readenv _in73954_))))
          (if (eof-object? (__AST-e _e73956_)) (__AST-e _e73956_) _e73956_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in73962_ (current-input-port))) (read-syntax__% _in73962_))))
    (define read-syntax
      (lambda _g74489_
        (let ((_g74488_ (##length _g74489_)))
          (cond ((##fx= _g74488_ 0)
                 (apply (lambda () (read-syntax__0)) _g74489_))
                ((##fx= _g74488_ 1)
                 (apply (lambda (_in73964_) (read-syntax__% _in73964_))
                        _g74489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g74489_))))))
    (define read-syntax-from-file
      (lambda (_path73949_)
        (let ((_r73951_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path73949_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r73951_)
              (cdr (__AST-e (vector-ref _r73951_ '1)))
              (error (err-code->string _r73951_) _path73949_)))))
    (define __wrap-syntax
      (lambda (_re73946_ _e73947_)
        (if (eof-object? _e73947_)
            _e73947_
            (##structure AST::t _e73947_ (##readenv->locat _re73946_)))))
    (define __unwrap-syntax (lambda (_re73943_ _e73944_) (__AST-e _e73944_)))
    (define __pp-syntax (lambda (_stx73941_) (pp (__AST->datum _stx73941_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt73939_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt73939_ '#t)
          (macro-readtable-bracket-handler-set! _rt73939_ '@list)
          (macro-readtable-brace-handler-set! _rt73939_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt73939_
           '#\!
           __read-sharp-bang)
          _rt73939_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt73935_ _kw73936_)
        (macro-readtable-bracket-handler-set! _rt73935_ _kw73936_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt73932_ _kw73933_)
        (macro-readtable-brace-handler-set! _rt73932_ _kw73933_)))
    (define __read-sharp-bang
      (lambda (_re73923_ _next73924_ _start-pos73925_)
        (if (eq? _start-pos73925_ '0)
            (let* ((_line73927_
                    (##read-line
                     (macro-readenv-port _re73923_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line73929_
                    (substring _line73927_ '1 (string-length _line73927_))))
              (macro-readenv-script-line-set! _re73923_ _script-line73929_)
              (##script-marker))
            (##read-sharp-bang _re73923_ _next73924_ _start-pos73925_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj73921_)
        (if (source-location? _obj73921_)
            (string? (##locat-container _obj73921_))
            '#f)))
    (define source-location-path
      (lambda (_obj73919_)
        (if (##locat? _obj73919_)
            (##container->path (##locat-container _obj73919_))
            '#f)))))
