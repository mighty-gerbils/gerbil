(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1709457369)
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
      (lambda _$args75306_ (apply make-instance SyntaxError::t _$args75306_)))
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
      (lambda (_self75209_ _port75210_)
        (letrec ((_location75212_
                  (lambda ()
                    (let _lp75266_ ((_rest75268_
                                     (##unchecked-structure-ref
                                      _self75209_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7526975277_ _rest75268_)
                             (_else7527175285_ (lambda () '#f))
                             (_K7527375294_
                              (lambda (_rest75288_ _hd75289_)
                                (let ((_$e75291_ (__AST-source _hd75289_)))
                                  (if _$e75291_
                                      _$e75291_
                                      (_lp75266_ _rest75288_))))))
                        (if (##pair? _rest7526975277_)
                            (let ((_hd7527475297_ (##car _rest7526975277_))
                                  (_tl7527575299_ (##cdr _rest7526975277_)))
                              (let* ((_hd75302_ _hd7527475297_)
                                     (_rest75304_ _tl7527575299_))
                                (_K7527375294_ _rest75304_ _hd75302_)))
                            (_else7527175285_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e75215_ (_location75212_)))
               (if _$e75215_
                   ((lambda (_where75218_)
                      (##display-locat _where75218_ '#t (current-output-port)))
                    _$e75215_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e75220_
                    (##unchecked-structure-ref
                     _self75209_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e75220_
                   ((lambda (_where75223_)
                      (displayln
                       '" at "
                       _where75223_
                       '": "
                       (##unchecked-structure-ref
                        _self75209_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e75220_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self75209_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7522475232_
                     (##unchecked-structure-ref
                      _self75209_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7522675240_ (lambda () '#!void))
                    (_K7522875253_
                     (lambda (_rest75243_ _stx75244_)
                       (display '"... form:   ")
                       (__pp-syntax _stx75244_)
                       (for-each
                        (lambda (_detail75246_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail75246_))
                          (let ((_$e75248_ (__AST-source _detail75246_)))
                            (if _$e75248_
                                ((lambda (_loc75251_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc75251_
                                    '#t
                                    (current-output-port)))
                                 _$e75248_)
                                '#!void))
                          (newline))
                        _rest75243_))))
               (if (##pair? _g7522475232_)
                   (let ((_hd7522975256_ (##car _g7522475232_))
                         (_tl7523075258_ (##cdr _g7522475232_)))
                     (let* ((_stx75261_ _hd7522975256_)
                            (_rest75263_ _tl7523075258_))
                       (_K7522875253_ _rest75263_ _stx75261_)))
                   '#!void)))
           current-output-port
           _port75210_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message75080_
               _irritants75081_
               _where75082_
               _context75083_
               _marks75084_
               _phi75085_)
        (let ((__obj75401
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj75401
           _message75080_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75401
           _irritants75081_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75401
           _where75082_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75401
           _context75083_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75401
           _marks75084_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75401
           _phi75085_
           '5
           SyntaxError::t
           '#f)
          __obj75401)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where75075_ _message75076_ _stx75077_ . _details75078_)
        (raise (make-syntax-error
                _message75076_
                (cons _stx75077_ _details75078_)
                _where75075_
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
      (lambda _$args75072_ (apply make-instance AST::t _$args75072_)))
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
      (lambda (_stx75070_)
        (if (##structure-instance-of? _stx75070_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx75070_ '1 AST::t '#f)
            _stx75070_)))
    (define __AST-source
      (lambda (_stx75064_)
        (let _lp75066_ ((_src75068_ _stx75064_))
          (if (##structure-instance-of? _src75068_ 'gerbil#AST::t)
              (_lp75066_ (##unchecked-structure-ref _src75068_ '2 AST::t '#f))
              (if (##locat? _src75068_) _src75068_ '#f)))))
    (define __AST
      (lambda (_e75056_ _src-stx75057_)
        (let ((_src75059_ (__AST-source _src-stx75057_)))
          (if (or (##structure-instance-of? _e75056_ 'gerbil#AST::t)
                  (not _src75059_))
              _e75056_
              (##structure AST::t _e75056_ _src75059_)))))
    (define __AST-eq?
      (lambda (_stx75053_ _obj75054_) (eq? (__AST-e _stx75053_) _obj75054_)))
    (define __AST-pair? (lambda (_stx75051_) (pair? (__AST-e _stx75051_))))
    (define __AST-null? (lambda (_stx75049_) (null? (__AST-e _stx75049_))))
    (define __AST-datum?
      (lambda (_stx75030_)
        (let* ((_e75032_ (__AST-e _stx75030_)) (_$e75034_ (number? _e75032_)))
          (if _$e75034_
              _$e75034_
              (let ((_$e75037_ (string? _e75032_)))
                (if _$e75037_
                    _$e75037_
                    (let ((_$e75040_ (char? _e75032_)))
                      (if _$e75040_
                          _$e75040_
                          (let ((_$e75043_ (keyword? _e75032_)))
                            (if _$e75043_
                                _$e75043_
                                (let ((_$e75046_ (boolean? _e75032_)))
                                  (if _$e75046_
                                      _$e75046_
                                      (eq? _e75032_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx75028_) (symbol? (__AST-e _stx75028_))))
    (define __AST-id-list?__%
      (lambda (_stx74979_ _tail?74980_)
        (let _lp74982_ ((_rest74984_ _stx74979_))
          (let* ((_$e74986_ _rest74984_)
                 (_$E7498875001_
                  (lambda ()
                    (let* ((_$E7498974996_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74986_)))
                           (_rest74999_ _$e74986_))
                      (_tail?74980_ _rest74999_)))))
            (if (__AST-pair? _$e74986_)
                (let* ((_$tgt7499075004_ (__AST-e _$e74986_))
                       (_$hd7499175007_ (##car _$tgt7499075004_))
                       (_$tl7499275010_ (##cdr _$tgt7499075004_)))
                  (let* ((_hd75014_ _$hd7499175007_)
                         (_rest75016_ _$tl7499275010_))
                    (if (__AST-id? _hd75014_) (_lp74982_ _rest75016_) '#f)))
                (_$E7498875001_))))))
    (define __AST-id-list?__0
      (lambda (_stx75021_)
        (let ((_tail?75023_ __AST-null?))
          (__AST-id-list?__% _stx75021_ _tail?75023_))))
    (define __AST-id-list?
      (lambda _g75404_
        (let ((_g75403_ (##length _g75404_)))
          (cond ((##fx= _g75403_ 1)
                 (apply (lambda (_stx75021_) (__AST-id-list?__0 _stx75021_))
                        _g75404_))
                ((##fx= _g75403_ 2)
                 (apply (lambda (_stx75025_ _tail?75026_)
                          (__AST-id-list?__% _stx75025_ _tail?75026_))
                        _g75404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g75404_))))))
    (define __AST-bind-list?
      (lambda (_stx74971_)
        (__AST-id-list?__%
         _stx74971_
         (lambda (_e74973_)
           (let ((_$e74975_ (__AST-null? _e74973_)))
             (if _$e74975_ _$e74975_ (__AST-id? _e74973_)))))))
    (define __AST-list?__%
      (lambda (_stx74924_ _tail?74925_)
        (let _lp74927_ ((_rest74929_ _stx74924_))
          (let* ((_$e74931_ _rest74929_)
                 (_$E7493374946_
                  (lambda ()
                    (let* ((_$E7493474941_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74931_)))
                           (_rest74944_ _$e74931_))
                      (_tail?74925_ _rest74944_)))))
            (if (__AST-pair? _$e74931_)
                (let* ((_$tgt7493574949_ (__AST-e _$e74931_))
                       (_$hd7493674952_ (##car _$tgt7493574949_))
                       (_$tl7493774955_ (##cdr _$tgt7493574949_)))
                  (let ((_rest74959_ _$tl7493774955_))
                    (_lp74927_ _rest74959_)))
                (_$E7493374946_))))))
    (define __AST-list?__0
      (lambda (_stx74964_)
        (let ((_tail?74966_ __AST-null?))
          (__AST-list?__% _stx74964_ _tail?74966_))))
    (define __AST-list?
      (lambda _g75406_
        (let ((_g75405_ (##length _g75406_)))
          (cond ((##fx= _g75405_ 1)
                 (apply (lambda (_stx74964_) (__AST-list?__0 _stx74964_))
                        _g75406_))
                ((##fx= _g75405_ 2)
                 (apply (lambda (_stx74968_ _tail?74969_)
                          (__AST-list?__% _stx74968_ _tail?74969_))
                        _g75406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g75406_))))))
    (define __AST->list
      (lambda (_stx74889_)
        (let* ((_$e74891_ _stx74889_)
               (_$E7489374906_
                (lambda ()
                  (let* ((_$E7489474901_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74891_)))
                         (_rest74904_ _$e74891_))
                    (__AST-e _rest74904_)))))
          (if (__AST-pair? _$e74891_)
              (let* ((_$tgt7489574909_ (__AST-e _$e74891_))
                     (_$hd7489674912_ (##car _$tgt7489574909_))
                     (_$tl7489774915_ (##cdr _$tgt7489574909_)))
                (let* ((_hd74919_ _$hd7489674912_)
                       (_rest74921_ _$tl7489774915_))
                  (cons _hd74919_ (__AST->list _rest74921_))))
              (_$E7489374906_)))))
    (define __AST->datum
      (lambda (_stx74887_)
        (if (##structure-instance-of? _stx74887_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74887_))
            (if (pair? _stx74887_)
                (cons (__AST->datum (car _stx74887_))
                      (__AST->datum (cdr _stx74887_)))
                (if (vector? _stx74887_)
                    (vector-map __AST->datum _stx74887_)
                    (if (box? _stx74887_)
                        (box (__AST->datum (unbox _stx74887_)))
                        _stx74887_))))))
    (define get-readenv
      (lambda (_port74885_)
        (##make-readenv
         _port74885_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74873_)
        (let ((_e74875_ (##read-datum-or-eof (get-readenv _in74873_))))
          (if (eof-object? (__AST-e _e74875_)) (__AST-e _e74875_) _e74875_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74881_ (current-input-port))) (read-syntax__% _in74881_))))
    (define read-syntax
      (lambda _g75408_
        (let ((_g75407_ (##length _g75408_)))
          (cond ((##fx= _g75407_ 0)
                 (apply (lambda () (read-syntax__0)) _g75408_))
                ((##fx= _g75407_ 1)
                 (apply (lambda (_in74883_) (read-syntax__% _in74883_))
                        _g75408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g75408_))))))
    (define read-syntax-from-file
      (lambda (_path74868_)
        (let ((_r74870_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74868_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74870_)
              (cdr (__AST-e (vector-ref _r74870_ '1)))
              (error (err-code->string _r74870_) _path74868_)))))
    (define __wrap-syntax
      (lambda (_re74865_ _e74866_)
        (if (eof-object? _e74866_)
            _e74866_
            (##structure AST::t _e74866_ (##readenv->locat _re74865_)))))
    (define __unwrap-syntax (lambda (_re74862_ _e74863_) (__AST-e _e74863_)))
    (define __pp-syntax (lambda (_stx74860_) (pp (__AST->datum _stx74860_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74858_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74858_ '#t)
          (macro-readtable-bracket-handler-set! _rt74858_ '@list)
          (macro-readtable-brace-handler-set! _rt74858_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74858_
           '#\!
           __read-sharp-bang)
          _rt74858_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74854_ _kw74855_)
        (macro-readtable-bracket-handler-set! _rt74854_ _kw74855_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74851_ _kw74852_)
        (macro-readtable-brace-handler-set! _rt74851_ _kw74852_)))
    (define __read-sharp-bang
      (lambda (_re74842_ _next74843_ _start-pos74844_)
        (if (eq? _start-pos74844_ '0)
            (let* ((_line74846_
                    (##read-line
                     (macro-readenv-port _re74842_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74848_
                    (substring _line74846_ '1 (string-length _line74846_))))
              (macro-readenv-script-line-set! _re74842_ _script-line74848_)
              (##script-marker))
            (##read-sharp-bang _re74842_ _next74843_ _start-pos74844_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74840_)
        (if (source-location? _obj74840_)
            (string? (##locat-container _obj74840_))
            '#f)))
    (define source-location-path
      (lambda (_obj74838_)
        (if (##locat? _obj74838_)
            (##container->path (##locat-container _obj74838_))
            '#f)))))
