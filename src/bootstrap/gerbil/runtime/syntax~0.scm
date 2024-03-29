(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1711709197)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _$args75215_ (apply make-instance SyntaxError::t _$args75215_)))
    (define SyntaxError-message
      (__make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (__make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where
      (__make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (__make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (__make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks
      (__make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-continuation
      (__make-class-slot-accessor SyntaxError::t 'continuation))
    (define SyntaxError-message-set!
      (__make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (__make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (__make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (__make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set!
      (__make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (__make-class-slot-mutator SyntaxError::t 'marks))
    (define SyntaxError-continuation-set!
      (__make-class-slot-mutator SyntaxError::t 'continuation))
    (define &SyntaxError-message
      (__make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (__make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (__make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (__make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (__make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (__make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-continuation
      (__make-class-slot-unchecked-accessor SyntaxError::t 'continuation))
    (define &SyntaxError-message-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define &SyntaxError-continuation-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'continuation))
    (define SyntaxError::display-exception
      (lambda (_self75112_ _port75113_)
        (letrec ((_location75115_
                  (lambda ()
                    (let _lp75175_ ((_rest75177_
                                     (##unchecked-structure-ref
                                      _self75112_
                                      '3
                                      '#f
                                      '#f)))
                      (let* ((_rest7517875186_ _rest75177_)
                             (_else7518075194_ (lambda () '#f))
                             (_K7518275203_
                              (lambda (_rest75197_ _hd75198_)
                                (let ((_$e75200_ (__AST-source _hd75198_)))
                                  (if _$e75200_
                                      _$e75200_
                                      (_lp75175_ _rest75197_))))))
                        (if (##pair? _rest7517875186_)
                            (let ((_hd7518375206_ (##car _rest7517875186_))
                                  (_tl7518475208_ (##cdr _rest7517875186_)))
                              (let* ((_hd75211_ _hd7518375206_)
                                     (_rest75213_ _tl7518475208_))
                                (_K7518275203_ _rest75213_ _hd75211_)))
                            (_else7518075194_)))))))
          (__call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e75118_ (_location75115_)))
               (if _$e75118_
                   ((lambda (_where75121_)
                      (##display-locat _where75121_ '#t _port75113_))
                    _$e75118_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e75123_
                    (##unchecked-structure-ref _self75112_ '4 '#f '#f)))
               (if _$e75123_
                   ((lambda (_where75126_)
                      (__displayln
                       '" at "
                       _where75126_
                       '": "
                       (##unchecked-structure-ref _self75112_ '2 '#f '#f)))
                    _$e75123_)
                   (__displayln
                    '": "
                    (##unchecked-structure-ref _self75112_ '2 '#f '#f))))
             (let* ((_g7512775135_
                     (##unchecked-structure-ref _self75112_ '3 '#f '#f))
                    (_else7512975143_ (lambda () '#!void))
                    (_K7513175156_
                     (lambda (_rest75146_ _stx75147_)
                       (display '"... form:   ")
                       (__pp-syntax _stx75147_)
                       (for-each
                        (lambda (_detail75149_)
                          (display '"... detail: ")
                          (##write (__AST->datum _detail75149_))
                          (let ((_$e75151_ (__AST-source _detail75149_)))
                            (if _$e75151_
                                ((lambda (_loc75154_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc75154_
                                    '#t
                                    _port75113_))
                                 _$e75151_)
                                '#!void))
                          (newline))
                        _rest75146_))))
               (if (##pair? _g7512775135_)
                   (let ((_hd7513275159_ (##car _g7512775135_))
                         (_tl7513375161_ (##cdr _g7512775135_)))
                     (let* ((_stx75164_ _hd7513275159_)
                            (_rest75166_ _tl7513375161_))
                       (_K7513175156_ _rest75166_ _stx75164_)))
                   '#!void))
             (if (##getenv '"GERBIL_EXPANDER_DEBUG" '#f)
                 (let ((_cont7516775169_
                        (unchecked-slot-ref _self75112_ 'continuation)))
                   (if _cont7516775169_
                       (let ((_cont75172_ _cont7516775169_))
                         (display '"--- continuation backtrace:")
                         (newline)
                         (display-continuation-backtrace _cont75172_))
                       '#f))
                 '#!void))
           current-output-port
           _port75113_))))
    (define SyntaxError::display-exception::specialize
      (lambda (__klass75217 __method-table75218)
        (let ((__continuation75219
               (let ((__slot75220
                      (class-slot-offset __klass75217 'continuation)))
                 (if __slot75220
                     __slot75220
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_self75112_ _port75113_)
            (letrec ((_location75115_
                      (lambda ()
                        (let _lp75175_ ((_rest75177_
                                         (##unchecked-structure-ref
                                          _self75112_
                                          '3
                                          '#f
                                          '#f)))
                          (let* ((_rest7517875186_ _rest75177_)
                                 (_else7518075194_ (lambda () '#f))
                                 (_K7518275203_
                                  (lambda (_rest75197_ _hd75198_)
                                    (let ((_$e75200_ (__AST-source _hd75198_)))
                                      (if _$e75200_
                                          _$e75200_
                                          (_lp75175_ _rest75197_))))))
                            (if (##pair? _rest7517875186_)
                                (let ((_hd7518375206_ (##car _rest7517875186_))
                                      (_tl7518475208_
                                       (##cdr _rest7517875186_)))
                                  (let* ((_hd75211_ _hd7518375206_)
                                         (_rest75213_ _tl7518475208_))
                                    (_K7518275203_ _rest75213_ _hd75211_)))
                                (_else7518075194_)))))))
              (__call-with-parameters
               (lambda ()
                 (newline)
                 (display '"*** ERROR IN ")
                 (let ((_$e75118_ (_location75115_)))
                   (if _$e75118_
                       ((lambda (_where75121_)
                          (##display-locat _where75121_ '#t _port75113_))
                        _$e75118_)
                       (display '"?")))
                 (newline)
                 (display '"--- Syntax Error")
                 (let ((_$e75123_
                        (##unchecked-structure-ref _self75112_ '4 '#f '#f)))
                   (if _$e75123_
                       ((lambda (_where75126_)
                          (__displayln
                           '" at "
                           _where75126_
                           '": "
                           (##unchecked-structure-ref _self75112_ '2 '#f '#f)))
                        _$e75123_)
                       (__displayln
                        '": "
                        (##unchecked-structure-ref _self75112_ '2 '#f '#f))))
                 (let* ((_g7512775135_
                         (##unchecked-structure-ref _self75112_ '3 '#f '#f))
                        (_else7512975143_ (lambda () '#!void))
                        (_K7513175156_
                         (lambda (_rest75146_ _stx75147_)
                           (display '"... form:   ")
                           (__pp-syntax _stx75147_)
                           (for-each
                            (lambda (_detail75149_)
                              (display '"... detail: ")
                              (##write (__AST->datum _detail75149_))
                              (let ((_$e75151_ (__AST-source _detail75149_)))
                                (if _$e75151_
                                    ((lambda (_loc75154_)
                                       (display '" at ")
                                       (##display-locat
                                        _loc75154_
                                        '#t
                                        _port75113_))
                                     _$e75151_)
                                    '#!void))
                              (newline))
                            _rest75146_))))
                   (if (##pair? _g7512775135_)
                       (let ((_hd7513275159_ (##car _g7512775135_))
                             (_tl7513375161_ (##cdr _g7512775135_)))
                         (let* ((_stx75164_ _hd7513275159_)
                                (_rest75166_ _tl7513375161_))
                           (_K7513175156_ _rest75166_ _stx75164_)))
                       '#!void))
                 (if (##getenv '"GERBIL_EXPANDER_DEBUG" '#f)
                     (let ((_cont7516775169_
                            (##unchecked-structure-ref
                             _self75112_
                             __continuation75219
                             '#f
                             '#f)))
                       (if _cont7516775169_
                           (let ((_cont75172_ _cont7516775169_))
                             (display '"--- continuation backtrace:")
                             (newline)
                             (display-continuation-backtrace _cont75172_))
                           '#f))
                     '#!void))
               current-output-port
               _port75113_))))))
    (bind-specializer!
     SyntaxError::display-exception
     SyntaxError::display-exception::specialize)
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message74983_
               _irritants74984_
               _where74985_
               _context74986_
               _marks74987_
               _phi74988_)
        (let ((__obj75314
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj75314 _message74983_ '2 '#f '#f)
          (##unchecked-structure-set! __obj75314 _irritants74984_ '3 '#f '#f)
          (##unchecked-structure-set! __obj75314 _where74985_ '4 '#f '#f)
          (##unchecked-structure-set! __obj75314 _context74986_ '5 '#f '#f)
          (##unchecked-structure-set! __obj75314 _marks74987_ '7 '#f '#f)
          (##unchecked-structure-set! __obj75314 _phi74988_ '6 '#f '#f)
          __obj75314)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where74978_ _message74979_ _stx74980_ . _details74981_)
        (raise (make-syntax-error
                _message74979_
                (cons _stx74980_ _details74981_)
                _where74978_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _$args74975_ (apply make-instance AST::t _$args74975_)))
    (define AST-e (__make-class-slot-accessor AST::t 'e))
    (define AST-source (__make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (__make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (__make-class-slot-mutator AST::t 'source))
    (define &AST-e (__make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (__make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (__make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (__make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_stx74973_)
        (if (##structure-instance-of? _stx74973_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx74973_ '1 '#f '#f)
            _stx74973_)))
    (define __AST-source
      (lambda (_stx74967_)
        (let _lp74969_ ((_src74971_ _stx74967_))
          (if (##structure-instance-of? _src74971_ 'gerbil#AST::t)
              (_lp74969_ (##unchecked-structure-ref _src74971_ '2 '#f '#f))
              (if (##locat? _src74971_) _src74971_ '#f)))))
    (define __AST
      (lambda (_e74959_ _src-stx74960_)
        (let ((_src74962_ (__AST-source _src-stx74960_)))
          (if (or (##structure-instance-of? _e74959_ 'gerbil#AST::t)
                  (not _src74962_))
              _e74959_
              (##structure AST::t _e74959_ _src74962_)))))
    (define __AST-eq?
      (lambda (_stx74956_ _obj74957_) (eq? (__AST-e _stx74956_) _obj74957_)))
    (define __AST-pair? (lambda (_stx74954_) (pair? (__AST-e _stx74954_))))
    (define __AST-null? (lambda (_stx74952_) (null? (__AST-e _stx74952_))))
    (define __AST-datum?
      (lambda (_stx74933_)
        (let* ((_e74935_ (__AST-e _stx74933_)) (_$e74937_ (number? _e74935_)))
          (if _$e74937_
              _$e74937_
              (let ((_$e74940_ (string? _e74935_)))
                (if _$e74940_
                    _$e74940_
                    (let ((_$e74943_ (char? _e74935_)))
                      (if _$e74943_
                          _$e74943_
                          (let ((_$e74946_ (keyword? _e74935_)))
                            (if _$e74946_
                                _$e74946_
                                (let ((_$e74949_ (boolean? _e74935_)))
                                  (if _$e74949_
                                      _$e74949_
                                      (eq? _e74935_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx74931_) (symbol? (__AST-e _stx74931_))))
    (define __AST-id-list?__%
      (lambda (_stx74882_ _tail?74883_)
        (let _lp74885_ ((_rest74887_ _stx74882_))
          (let* ((_$e74889_ _rest74887_)
                 (_$E7489174904_
                  (lambda ()
                    (let* ((_$E7489274899_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74889_)))
                           (_rest74902_ _$e74889_))
                      (_tail?74883_ _rest74902_)))))
            (if (__AST-pair? _$e74889_)
                (let* ((_$tgt7489374907_ (__AST-e _$e74889_))
                       (_$hd7489474910_ (##car _$tgt7489374907_))
                       (_$tl7489574913_ (##cdr _$tgt7489374907_)))
                  (let* ((_hd74917_ _$hd7489474910_)
                         (_rest74919_ _$tl7489574913_))
                    (if (__AST-id? _hd74917_) (_lp74885_ _rest74919_) '#f)))
                (_$E7489174904_))))))
    (define __AST-id-list?__0
      (lambda (_stx74924_)
        (let ((_tail?74926_ __AST-null?))
          (__AST-id-list?__% _stx74924_ _tail?74926_))))
    (define __AST-id-list?
      (lambda _g75317_
        (let ((_g75316_ (##length _g75317_)))
          (cond ((##fx= _g75316_ 1)
                 (apply (lambda (_stx74924_) (__AST-id-list?__0 _stx74924_))
                        _g75317_))
                ((##fx= _g75316_ 2)
                 (apply (lambda (_stx74928_ _tail?74929_)
                          (__AST-id-list?__% _stx74928_ _tail?74929_))
                        _g75317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g75317_))))))
    (define __AST-bind-list?
      (lambda (_stx74874_)
        (__AST-id-list?__%
         _stx74874_
         (lambda (_e74876_)
           (let ((_$e74878_ (__AST-null? _e74876_)))
             (if _$e74878_ _$e74878_ (__AST-id? _e74876_)))))))
    (define __AST-list?__%
      (lambda (_stx74827_ _tail?74828_)
        (let _lp74830_ ((_rest74832_ _stx74827_))
          (let* ((_$e74834_ _rest74832_)
                 (_$E7483674849_
                  (lambda ()
                    (let* ((_$E7483774844_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e74834_)))
                           (_rest74847_ _$e74834_))
                      (_tail?74828_ _rest74847_)))))
            (if (__AST-pair? _$e74834_)
                (let* ((_$tgt7483874852_ (__AST-e _$e74834_))
                       (_$hd7483974855_ (##car _$tgt7483874852_))
                       (_$tl7484074858_ (##cdr _$tgt7483874852_)))
                  (let ((_rest74862_ _$tl7484074858_))
                    (_lp74830_ _rest74862_)))
                (_$E7483674849_))))))
    (define __AST-list?__0
      (lambda (_stx74867_)
        (let ((_tail?74869_ __AST-null?))
          (__AST-list?__% _stx74867_ _tail?74869_))))
    (define __AST-list?
      (lambda _g75319_
        (let ((_g75318_ (##length _g75319_)))
          (cond ((##fx= _g75318_ 1)
                 (apply (lambda (_stx74867_) (__AST-list?__0 _stx74867_))
                        _g75319_))
                ((##fx= _g75318_ 2)
                 (apply (lambda (_stx74871_ _tail?74872_)
                          (__AST-list?__% _stx74871_ _tail?74872_))
                        _g75319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g75319_))))))
    (define __AST->list
      (lambda (_stx74792_)
        (let* ((_$e74794_ _stx74792_)
               (_$E7479674809_
                (lambda ()
                  (let* ((_$E7479774804_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e74794_)))
                         (_rest74807_ _$e74794_))
                    (__AST-e _rest74807_)))))
          (if (__AST-pair? _$e74794_)
              (let* ((_$tgt7479874812_ (__AST-e _$e74794_))
                     (_$hd7479974815_ (##car _$tgt7479874812_))
                     (_$tl7480074818_ (##cdr _$tgt7479874812_)))
                (let* ((_hd74822_ _$hd7479974815_)
                       (_rest74824_ _$tl7480074818_))
                  (cons _hd74822_ (__AST->list _rest74824_))))
              (_$E7479674809_)))))
    (define __AST->datum
      (lambda (_stx74790_)
        (if (##structure-instance-of? _stx74790_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx74790_))
            (if (pair? _stx74790_)
                (cons (__AST->datum (car _stx74790_))
                      (__AST->datum (cdr _stx74790_)))
                (if (vector? _stx74790_)
                    (vector-map __AST->datum _stx74790_)
                    (if (box? _stx74790_)
                        (box (__AST->datum (unbox _stx74790_)))
                        _stx74790_))))))
    (define get-readenv
      (lambda (_port74788_)
        (##make-readenv
         _port74788_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in74776_)
        (let ((_e74778_ (##read-datum-or-eof (get-readenv _in74776_))))
          (if (eof-object? (__AST-e _e74778_)) (__AST-e _e74778_) _e74778_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in74784_ (current-input-port))) (read-syntax__% _in74784_))))
    (define read-syntax
      (lambda _g75321_
        (let ((_g75320_ (##length _g75321_)))
          (cond ((##fx= _g75320_ 0)
                 (apply (lambda () (read-syntax__0)) _g75321_))
                ((##fx= _g75320_ 1)
                 (apply (lambda (_in74786_) (read-syntax__% _in74786_))
                        _g75321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g75321_))))))
    (define read-syntax-from-file
      (lambda (_path74771_)
        (let ((_r74773_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path74771_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r74773_)
              (cdr (__AST-e (vector-ref _r74773_ '1)))
              (error (err-code->string _r74773_) _path74771_)))))
    (define __wrap-syntax
      (lambda (_re74768_ _e74769_)
        (if (eof-object? _e74769_)
            _e74769_
            (##structure AST::t _e74769_ (##readenv->locat _re74768_)))))
    (define __unwrap-syntax (lambda (_re74765_ _e74766_) (__AST-e _e74766_)))
    (define __pp-syntax (lambda (_stx74763_) (pp (__AST->datum _stx74763_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt74761_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt74761_ '#t)
          (macro-readtable-bracket-handler-set! _rt74761_ '@list)
          (macro-readtable-brace-handler-set! _rt74761_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt74761_
           '#\!
           __read-sharp-bang)
          _rt74761_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt74757_ _kw74758_)
        (macro-readtable-bracket-handler-set! _rt74757_ _kw74758_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt74754_ _kw74755_)
        (macro-readtable-brace-handler-set! _rt74754_ _kw74755_)))
    (define __read-sharp-bang
      (lambda (_re74745_ _next74746_ _start-pos74747_)
        (if (eq? _start-pos74747_ '0)
            (let* ((_line74749_
                    (##read-line
                     (macro-readenv-port _re74745_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line74751_
                    (substring _line74749_ '1 (string-length _line74749_))))
              (macro-readenv-script-line-set! _re74745_ _script-line74751_)
              (##script-marker))
            (##read-sharp-bang _re74745_ _next74746_ _start-pos74747_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj74743_)
        (if (source-location? _obj74743_)
            (string? (##locat-container _obj74743_))
            '#f)))
    (define source-location-path
      (lambda (_obj74741_)
        (if (##locat? _obj74741_)
            (##container->path (##locat-container _obj74741_))
            '#f)))))
