(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1709125254)
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
      (lambda _$args75037_ (apply make-instance SyntaxError::t _$args75037_)))
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
      (lambda (_self74940_ _port74941_)
        (letrec ((_location74943_
                  (lambda ()
                    (let _lp74997_ ((_rest74999_
                                     (##unchecked-structure-ref
                                      _self74940_
                                      '2
                                      SyntaxError::t
                                      '#f)))
                      (let* ((_rest7500075008_ _rest74999_)
                             (_else7500275016_ (lambda () '#f))
                             (_K7500475025_
                              (lambda (_rest75019_ _hd75020_)
                                (let ((_$e75022_ (__AST-source _hd75020_)))
                                  (if _$e75022_
                                      _$e75022_
                                      (_lp74997_ _rest75019_))))))
                        (if (##pair? _rest7500075008_)
                            (let ((_hd7500575028_ (##car _rest7500075008_))
                                  (_tl7500675030_ (##cdr _rest7500075008_)))
                              (let* ((_hd75033_ _hd7500575028_)
                                     (_rest75035_ _tl7500675030_))
                                (_K7500475025_ _rest75035_ _hd75033_)))
                            (_else7500275016_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e74946_ (_location74943_)))
               (if _$e74946_
                   ((lambda (_where74949_)
                      (##display-locat _where74949_ '#t (current-output-port)))
                    _$e74946_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e74951_
                    (##unchecked-structure-ref
                     _self74940_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e74951_
                   ((lambda (_where74954_)
                      (displayln
                       '" at "
                       _where74954_
                       '": "
                       (##unchecked-structure-ref
                        _self74940_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e74951_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self74940_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g7495574963_
                     (##unchecked-structure-ref
                      _self74940_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else7495774971_ (lambda () '#!void))
                    (_K7495974984_
                     (lambda (_rest74974_ _stx74975_)
                       (display '"... form:   ")
                       (__pp-syntax _stx74975_)
                       (for-each
                        (lambda (_detail74977_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail74977_))
                          (let ((_$e74979_ (__AST-source _detail74977_)))
                            (if _$e74979_
                                ((lambda (_loc74982_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc74982_
                                    '#t
                                    (current-output-port)))
                                 _$e74979_)
                                '#!void))
                          (newline))
                        _rest74974_))))
               (if (##pair? _g7495574963_)
                   (let ((_hd7496074987_ (##car _g7495574963_))
                         (_tl7496174989_ (##cdr _g7495574963_)))
                     (let* ((_stx74992_ _hd7496074987_)
                            (_rest74994_ _tl7496174989_))
                       (_K7495974984_ _rest74994_ _stx74992_)))
                   '#!void)))
           current-output-port
           _port74941_))))
    (bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74811_
               _irritants74812_
               _where74813_
               _context74814_
               _marks74815_
               _phi74816_)
        (let ((__obj75132
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj75132
           _message74811_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75132
           _irritants74812_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75132
           _where74813_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75132
           _context74814_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75132
           _marks74815_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj75132
           _phi74816_
           '5
           SyntaxError::t
           '#f)
          __obj75132)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74806_ _message74807_ _stx74808_ . _details74809_)
        (raise (make-syntax-error
                _message74807_
                (cons _stx74808_ _details74809_)
                _where74806_
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
      (lambda _$args74803_ (apply make-instance AST::t _$args74803_)))
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
      (lambda (_stx74801_)
        (if (##structure-instance-of? _stx74801_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74801_ '1 AST::t '#f)
            _stx74801_)))
    (define __AST-source
      (lambda (_stx74795_)
        (let _lp74797_ ((_src74799_ _stx74795_))
          (if (##structure-instance-of? _src74799_ 'gerbil#AST::t)
              (_lp74797_ (##unchecked-structure-ref _src74799_ '2 AST::t '#f))
              (if (##locat? _src74799_) _src74799_ '#f)))))
    (define __AST
      (lambda (_e74787_ _src-stx74788_)
        (let ((_src74790_ (__AST-source _src-stx74788_)))
          (if (or (##structure-instance-of? _e74787_ 'gerbil#AST::t)
                  (not _src74790_))
              _e74787_
              (##structure AST::t _e74787_ _src74790_)))))
    (define __AST-eq?
      (lambda (_stx74784_ _obj74785_) (eq? (__AST-e _stx74784_) _obj74785_)))
    (define __AST-pair? (lambda (_stx74782_) (pair? (__AST-e _stx74782_))))
    (define __AST-null? (lambda (_stx74780_) (null? (__AST-e _stx74780_))))
    (define __AST-datum?
      (lambda (_stx74761_)
        (let* ((_e74763_ (__AST-e _stx74761_)) (_$e74765_ (number? _e74763_)))
          (if _$e74765_
              _$e74765_
              (let ((_$e74768_ (string? _e74763_)))
                (if _$e74768_
                    _$e74768_
                    (let ((_$e74771_ (char? _e74763_)))
                      (if _$e74771_
                          _$e74771_
                          (let ((_$e74774_ (keyword? _e74763_)))
                            (if _$e74774_
                                _$e74774_
                                (let ((_$e74777_ (boolean? _e74763_)))
                                  (if _$e74777_
                                      _$e74777_
                                      (eq? _e74763_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74759_) (symbol? (__AST-e _stx74759_))))
    (define __AST-id-list?__%
      (lambda (_stx74710_ _tail?74711_)
        (let _lp74713_ ((_rest74715_ _stx74710_))
          (let* ((_$e74717_ _rest74715_)
                 (_$E7471974732_
                  (lambda ()
                    (let* ((_$E7472074727_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74717_)))
                           (_rest74730_ _$e74717_))
                      (_tail?74711_ _rest74730_)))))
            (if (__AST-pair? _$e74717_)
                (let* ((_$tgt7472174735_ (__AST-e _$e74717_))
                       (_$hd7472274738_ (##car _$tgt7472174735_))
                       (_$tl7472374741_ (##cdr _$tgt7472174735_)))
                  (let* ((_hd74745_ _$hd7472274738_)
                         (_rest74747_ _$tl7472374741_))
                    (if (__AST-id? _hd74745_) (_lp74713_ _rest74747_) '#f)))
                (_$E7471974732_))))))
    (define __AST-id-list?__0
      (lambda (_stx74752_)
        (let ((_tail?74754_ __AST-null?))
          (__AST-id-list?__% _stx74752_ _tail?74754_))))
    (define __AST-id-list?
      (lambda _g75135_
        (let ((_g75134_ (##length _g75135_)))
          (cond ((##fx= _g75134_ 1)
                 (apply (lambda (_stx74752_) (__AST-id-list?__0 _stx74752_))
                        _g75135_))
                ((##fx= _g75134_ 2)
                 (apply (lambda (_stx74756_ _tail?74757_)
                          (__AST-id-list?__% _stx74756_ _tail?74757_))
                        _g75135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g75135_))))))
    (define __AST-bind-list?
      (lambda (_stx74702_)
        (__AST-id-list?__%
         _stx74702_
         (lambda (_e74704_)
           (let ((_$e74706_ (__AST-null? _e74704_)))
             (if _$e74706_ _$e74706_ (__AST-id? _e74704_)))))))
    (define __AST-list?__%
      (lambda (_stx74655_ _tail?74656_)
        (let _lp74658_ ((_rest74660_ _stx74655_))
          (let* ((_$e74662_ _rest74660_)
                 (_$E7466474677_
                  (lambda ()
                    (let* ((_$E7466574672_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74662_)))
                           (_rest74675_ _$e74662_))
                      (_tail?74656_ _rest74675_)))))
            (if (__AST-pair? _$e74662_)
                (let* ((_$tgt7466674680_ (__AST-e _$e74662_))
                       (_$hd7466774683_ (##car _$tgt7466674680_))
                       (_$tl7466874686_ (##cdr _$tgt7466674680_)))
                  (let ((_rest74690_ _$tl7466874686_))
                    (_lp74658_ _rest74690_)))
                (_$E7466474677_))))))
    (define __AST-list?__0
      (lambda (_stx74695_)
        (let ((_tail?74697_ __AST-null?))
          (__AST-list?__% _stx74695_ _tail?74697_))))
    (define __AST-list?
      (lambda _g75137_
        (let ((_g75136_ (##length _g75137_)))
          (cond ((##fx= _g75136_ 1)
                 (apply (lambda (_stx74695_) (__AST-list?__0 _stx74695_))
                        _g75137_))
                ((##fx= _g75136_ 2)
                 (apply (lambda (_stx74699_ _tail?74700_)
                          (__AST-list?__% _stx74699_ _tail?74700_))
                        _g75137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g75137_))))))
    (define __AST->list
      (lambda (_stx74620_)
        (let* ((_$e74622_ _stx74620_)
               (_$E7462474637_
                (lambda ()
                  (let* ((_$E7462574632_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74622_)))
                         (_rest74635_ _$e74622_))
                    (__AST-e _rest74635_)))))
          (if (__AST-pair? _$e74622_)
              (let* ((_$tgt7462674640_ (__AST-e _$e74622_))
                     (_$hd7462774643_ (##car _$tgt7462674640_))
                     (_$tl7462874646_ (##cdr _$tgt7462674640_)))
                (let* ((_hd74650_ _$hd7462774643_)
                       (_rest74652_ _$tl7462874646_))
                  (cons _hd74650_ (__AST->list _rest74652_))))
              (_$E7462474637_)))))
    (define __AST->datum
      (lambda (_stx74618_)
        (if (##structure-instance-of? _stx74618_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74618_))
            (if (pair? _stx74618_)
                (cons (__AST->datum (car _stx74618_))
                      (__AST->datum (cdr _stx74618_)))
                (if (vector? _stx74618_)
                    (vector-map __AST->datum _stx74618_)
                    (if (box? _stx74618_)
                        (box (__AST->datum (unbox _stx74618_)))
                        _stx74618_))))))
    (define get-readenv
      (lambda (_port74616_)
        (##make-readenv
         _port74616_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74604_)
        (let ((_e74606_ (##read-datum-or-eof (get-readenv _in74604_))))
          (if (eof-object? (__AST-e _e74606_)) (__AST-e _e74606_) _e74606_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74612_ (current-input-port))) (read-syntax__% _in74612_))))
    (define read-syntax
      (lambda _g75139_
        (let ((_g75138_ (##length _g75139_)))
          (cond ((##fx= _g75138_ 0)
                 (apply (lambda () (read-syntax__0)) _g75139_))
                ((##fx= _g75138_ 1)
                 (apply (lambda (_in74614_) (read-syntax__% _in74614_))
                        _g75139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g75139_))))))
    (define read-syntax-from-file
      (lambda (_path74599_)
        (let ((_r74601_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74599_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74601_)
              (cdr (__AST-e (vector-ref _r74601_ '1)))
              (error (err-code->string _r74601_) _path74599_)))))
    (define __wrap-syntax
      (lambda (_re74596_ _e74597_)
        (if (eof-object? _e74597_)
            _e74597_
            (##structure AST::t _e74597_ (##readenv->locat _re74596_)))))
    (define __unwrap-syntax (lambda (_re74593_ _e74594_) (__AST-e _e74594_)))
    (define __pp-syntax (lambda (_stx74591_) (pp (__AST->datum _stx74591_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74589_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74589_ '#t)
          (macro-readtable-bracket-handler-set! _rt74589_ '@list)
          (macro-readtable-brace-handler-set! _rt74589_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74589_
           '#\!
           __read-sharp-bang)
          _rt74589_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74585_ _kw74586_)
        (macro-readtable-bracket-handler-set! _rt74585_ _kw74586_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74582_ _kw74583_)
        (macro-readtable-brace-handler-set! _rt74582_ _kw74583_)))
    (define __read-sharp-bang
      (lambda (_re74573_ _next74574_ _start-pos74575_)
        (if (eq? _start-pos74575_ '0)
            (let* ((_line74577_
                    (##read-line
                     (macro-readenv-port _re74573_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74579_
                    (substring _line74577_ '1 (string-length _line74577_))))
              (macro-readenv-script-line-set! _re74573_ _script-line74579_)
              (##script-marker))
            (##read-sharp-bang _re74573_ _next74574_ _start-pos74575_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74571_)
        (if (source-location? _obj74571_)
            (string? (##locat-container _obj74571_))
            '#f)))
    (define source-location-path
      (lambda (_obj74569_)
        (if (##locat? _obj74569_)
            (##container->path (##locat-container _obj74569_))
            '#f)))))
