(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1709375797)
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
      (lambda _$args75044_ (apply make-instance SyntaxError::t _$args75044_)))
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
      (lambda (_self74947_ _port74948_)
        (letrec ((_location74950_
                  (lambda ()
                    (let _lp75004_ ((_rest75006_
                                     (##unchecked-structure-ref
                                      _self74947_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7500775015_ _rest75006_)
                             (_else7500975023_ (lambda () '#f))
                             (_K7501175032_
                              (lambda (_rest75026_ _hd75027_)
                                (let ((_$e75029_ (__AST-source _hd75027_)))
                                  (if _$e75029_
                                      _$e75029_
                                      (_lp75004_ _rest75026_))))))
                        (if (##pair? _rest7500775015_)
                            (let ((_hd7501275035_ (##car _rest7500775015_))
                                  (_tl7501375037_ (##cdr _rest7500775015_)))
                              (let* ((_hd75040_ _hd7501275035_)
                                     (_rest75042_ _tl7501375037_))
                                (_K7501175032_ _rest75042_ _hd75040_)))
                            (_else7500975023_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e74953_ (_location74950_)))
               (if _$e74953_
                   ((lambda (_where74956_)
                      (##display-locat _where74956_ '#t (current-output-port)))
                    _$e74953_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e74958_
                    (##unchecked-structure-ref
                     _self74947_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e74958_
                   ((lambda (_where74961_)
                      (displayln
                       '" at "
                       _where74961_
                       '": "
                       (##unchecked-structure-ref
                        _self74947_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e74958_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self74947_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7496274970_
                     (##unchecked-structure-ref
                      _self74947_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7496474978_ (lambda () '#!void))
                    (_K7496674991_
                     (lambda (_rest74981_ _stx74982_)
                       (display '"... form:   ")
                       (__pp-syntax _stx74982_)
                       (for-each
                        (lambda (_detail74984_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail74984_))
                          (let ((_$e74986_ (__AST-source _detail74984_)))
                            (if _$e74986_
                                ((lambda (_loc74989_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc74989_
                                    '#t
                                    (current-output-port)))
                                 _$e74986_)
                                '#!void))
                          (newline))
                        _rest74981_))))
               (if (##pair? _g7496274970_)
                   (let ((_hd7496774994_ (##car _g7496274970_))
                         (_tl7496874996_ (##cdr _g7496274970_)))
                     (let* ((_stx74999_ _hd7496774994_)
                            (_rest75001_ _tl7496874996_))
                       (_K7496674991_ _rest75001_ _stx74999_)))
                   '#!void)))
           current-output-port
           _port74948_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74818_
               _irritants74819_
               _where74820_
               _context74821_
               _marks74822_
               _phi74823_)
        (let ((__obj75139
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj75139
           _message74818_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75139
           _irritants74819_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75139
           _where74820_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75139
           _context74821_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75139
           _marks74822_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75139
           _phi74823_
           '5
           SyntaxError::t
           '#f)
          __obj75139)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74813_ _message74814_ _stx74815_ . _details74816_)
        (raise (make-syntax-error
                _message74814_
                (cons _stx74815_ _details74816_)
                _where74813_
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
      (lambda _$args74810_ (apply make-instance AST::t _$args74810_)))
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
      (lambda (_stx74808_)
        (if (##structure-instance-of? _stx74808_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74808_ '1 AST::t '#f)
            _stx74808_)))
    (define __AST-source
      (lambda (_stx74802_)
        (let _lp74804_ ((_src74806_ _stx74802_))
          (if (##structure-instance-of? _src74806_ 'gerbil#AST::t)
              (_lp74804_ (##unchecked-structure-ref _src74806_ '2 AST::t '#f))
              (if (##locat? _src74806_) _src74806_ '#f)))))
    (define __AST
      (lambda (_e74794_ _src-stx74795_)
        (let ((_src74797_ (__AST-source _src-stx74795_)))
          (if (or (##structure-instance-of? _e74794_ 'gerbil#AST::t)
                  (not _src74797_))
              _e74794_
              (##structure AST::t _e74794_ _src74797_)))))
    (define __AST-eq?
      (lambda (_stx74791_ _obj74792_) (eq? (__AST-e _stx74791_) _obj74792_)))
    (define __AST-pair? (lambda (_stx74789_) (pair? (__AST-e _stx74789_))))
    (define __AST-null? (lambda (_stx74787_) (null? (__AST-e _stx74787_))))
    (define __AST-datum?
      (lambda (_stx74768_)
        (let* ((_e74770_ (__AST-e _stx74768_)) (_$e74772_ (number? _e74770_)))
          (if _$e74772_
              _$e74772_
              (let ((_$e74775_ (string? _e74770_)))
                (if _$e74775_
                    _$e74775_
                    (let ((_$e74778_ (char? _e74770_)))
                      (if _$e74778_
                          _$e74778_
                          (let ((_$e74781_ (keyword? _e74770_)))
                            (if _$e74781_
                                _$e74781_
                                (let ((_$e74784_ (boolean? _e74770_)))
                                  (if _$e74784_
                                      _$e74784_
                                      (eq? _e74770_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74766_) (symbol? (__AST-e _stx74766_))))
    (define __AST-id-list?__%
      (lambda (_stx74717_ _tail?74718_)
        (let _lp74720_ ((_rest74722_ _stx74717_))
          (let* ((_$e74724_ _rest74722_)
                 (_$E7472674739_
                  (lambda ()
                    (let* ((_$E7472774734_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74724_)))
                           (_rest74737_ _$e74724_))
                      (_tail?74718_ _rest74737_)))))
            (if (__AST-pair? _$e74724_)
                (let* ((_$tgt7472874742_ (__AST-e _$e74724_))
                       (_$hd7472974745_ (##car _$tgt7472874742_))
                       (_$tl7473074748_ (##cdr _$tgt7472874742_)))
                  (let* ((_hd74752_ _$hd7472974745_)
                         (_rest74754_ _$tl7473074748_))
                    (if (__AST-id? _hd74752_) (_lp74720_ _rest74754_) '#f)))
                (_$E7472674739_))))))
    (define __AST-id-list?__0
      (lambda (_stx74759_)
        (let ((_tail?74761_ __AST-null?))
          (__AST-id-list?__% _stx74759_ _tail?74761_))))
    (define __AST-id-list?
      (lambda _g75142_
        (let ((_g75141_ (##length _g75142_)))
          (cond ((##fx= _g75141_ 1)
                 (apply (lambda (_stx74759_) (__AST-id-list?__0 _stx74759_))
                        _g75142_))
                ((##fx= _g75141_ 2)
                 (apply (lambda (_stx74763_ _tail?74764_)
                          (__AST-id-list?__% _stx74763_ _tail?74764_))
                        _g75142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g75142_))))))
    (define __AST-bind-list?
      (lambda (_stx74709_)
        (__AST-id-list?__%
         _stx74709_
         (lambda (_e74711_)
           (let ((_$e74713_ (__AST-null? _e74711_)))
             (if _$e74713_ _$e74713_ (__AST-id? _e74711_)))))))
    (define __AST-list?__%
      (lambda (_stx74662_ _tail?74663_)
        (let _lp74665_ ((_rest74667_ _stx74662_))
          (let* ((_$e74669_ _rest74667_)
                 (_$E7467174684_
                  (lambda ()
                    (let* ((_$E7467274679_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74669_)))
                           (_rest74682_ _$e74669_))
                      (_tail?74663_ _rest74682_)))))
            (if (__AST-pair? _$e74669_)
                (let* ((_$tgt7467374687_ (__AST-e _$e74669_))
                       (_$hd7467474690_ (##car _$tgt7467374687_))
                       (_$tl7467574693_ (##cdr _$tgt7467374687_)))
                  (let ((_rest74697_ _$tl7467574693_))
                    (_lp74665_ _rest74697_)))
                (_$E7467174684_))))))
    (define __AST-list?__0
      (lambda (_stx74702_)
        (let ((_tail?74704_ __AST-null?))
          (__AST-list?__% _stx74702_ _tail?74704_))))
    (define __AST-list?
      (lambda _g75144_
        (let ((_g75143_ (##length _g75144_)))
          (cond ((##fx= _g75143_ 1)
                 (apply (lambda (_stx74702_) (__AST-list?__0 _stx74702_))
                        _g75144_))
                ((##fx= _g75143_ 2)
                 (apply (lambda (_stx74706_ _tail?74707_)
                          (__AST-list?__% _stx74706_ _tail?74707_))
                        _g75144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g75144_))))))
    (define __AST->list
      (lambda (_stx74627_)
        (let* ((_$e74629_ _stx74627_)
               (_$E7463174644_
                (lambda ()
                  (let* ((_$E7463274639_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74629_)))
                         (_rest74642_ _$e74629_))
                    (__AST-e _rest74642_)))))
          (if (__AST-pair? _$e74629_)
              (let* ((_$tgt7463374647_ (__AST-e _$e74629_))
                     (_$hd7463474650_ (##car _$tgt7463374647_))
                     (_$tl7463574653_ (##cdr _$tgt7463374647_)))
                (let* ((_hd74657_ _$hd7463474650_)
                       (_rest74659_ _$tl7463574653_))
                  (cons _hd74657_ (__AST->list _rest74659_))))
              (_$E7463174644_)))))
    (define __AST->datum
      (lambda (_stx74625_)
        (if (##structure-instance-of? _stx74625_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74625_))
            (if (pair? _stx74625_)
                (cons (__AST->datum (car _stx74625_))
                      (__AST->datum (cdr _stx74625_)))
                (if (vector? _stx74625_)
                    (vector-map __AST->datum _stx74625_)
                    (if (box? _stx74625_)
                        (box (__AST->datum (unbox _stx74625_)))
                        _stx74625_))))))
    (define get-readenv
      (lambda (_port74623_)
        (##make-readenv
         _port74623_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74611_)
        (let ((_e74613_ (##read-datum-or-eof (get-readenv _in74611_))))
          (if (eof-object? (__AST-e _e74613_)) (__AST-e _e74613_) _e74613_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74619_ (current-input-port))) (read-syntax__% _in74619_))))
    (define read-syntax
      (lambda _g75146_
        (let ((_g75145_ (##length _g75146_)))
          (cond ((##fx= _g75145_ 0)
                 (apply (lambda () (read-syntax__0)) _g75146_))
                ((##fx= _g75145_ 1)
                 (apply (lambda (_in74621_) (read-syntax__% _in74621_))
                        _g75146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g75146_))))))
    (define read-syntax-from-file
      (lambda (_path74606_)
        (let ((_r74608_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74606_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74608_)
              (cdr (__AST-e (vector-ref _r74608_ '1)))
              (error (err-code->string _r74608_) _path74606_)))))
    (define __wrap-syntax
      (lambda (_re74603_ _e74604_)
        (if (eof-object? _e74604_)
            _e74604_
            (##structure AST::t _e74604_ (##readenv->locat _re74603_)))))
    (define __unwrap-syntax (lambda (_re74600_ _e74601_) (__AST-e _e74601_)))
    (define __pp-syntax (lambda (_stx74598_) (pp (__AST->datum _stx74598_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74596_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74596_ '#t)
          (macro-readtable-bracket-handler-set! _rt74596_ '@list)
          (macro-readtable-brace-handler-set! _rt74596_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74596_
           '#\!
           __read-sharp-bang)
          _rt74596_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74592_ _kw74593_)
        (macro-readtable-bracket-handler-set! _rt74592_ _kw74593_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74589_ _kw74590_)
        (macro-readtable-brace-handler-set! _rt74589_ _kw74590_)))
    (define __read-sharp-bang
      (lambda (_re74580_ _next74581_ _start-pos74582_)
        (if (eq? _start-pos74582_ '0)
            (let* ((_line74584_
                    (##read-line
                     (macro-readenv-port _re74580_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74586_
                    (substring _line74584_ '1 (string-length _line74584_))))
              (macro-readenv-script-line-set! _re74580_ _script-line74586_)
              (##script-marker))
            (##read-sharp-bang _re74580_ _next74581_ _start-pos74582_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74578_)
        (if (source-location? _obj74578_)
            (string? (##locat-container _obj74578_))
            '#f)))
    (define source-location-path
      (lambda (_obj74576_)
        (if (##locat? _obj74576_)
            (##container->path (##locat-container _obj74576_))
            '#f)))))
