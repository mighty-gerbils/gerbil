(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1695201399)
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
      (lambda _$args7355_
        (apply make-class-instance SyntaxError::t _$args7355_)))
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
      (lambda (_self7258_ _port7259_)
        (letrec ((_location7261_
                  (lambda ()
                    (let _lp7315_ ((_rest7317_
                                    (&SyntaxError-irritants _self7258_)))
                      (let* ((_rest73187326_ _rest7317_)
                             (_E73217330_
                              (lambda ()
                                (error '"No clause matching" _rest73187326_)))
                             (_else73207334_ (lambda () '#f))
                             (_K73227343_
                              (lambda (_rest7337_ _hd7338_)
                                (let ((_$e7340_ (__AST-source _hd7338_)))
                                  (if _$e7340_
                                      _$e7340_
                                      (_lp7315_ _rest7337_))))))
                        (if (##pair? _rest73187326_)
                            (let ((_hd73237346_ (##car _rest73187326_))
                                  (_tl73247348_ (##cdr _rest73187326_)))
                              (let* ((_hd7351_ _hd73237346_)
                                     (_rest7353_ _tl73247348_))
                                (_K73227343_ _rest7353_ _hd7351_)))
                            (_else73207334_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e7264_ (_location7261_)))
               (if _$e7264_
                   ((lambda (_where7267_)
                      (##display-locat _where7267_ '#t (current-output-port)))
                    _$e7264_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e7269_ (&SyntaxError-where _self7258_)))
               (if _$e7269_
                   ((lambda (_where7272_)
                      (displayln
                       '" at "
                       _where7272_
                       '": "
                       (&SyntaxError-message _self7258_)))
                    _$e7269_)
                   (displayln '": " (&SyntaxError-message _self7258_))))
             (let* ((_g72737281_ (&SyntaxError-irritants _self7258_))
                    (_E72767285_
                     (lambda () (error '"No clause matching" _g72737281_)))
                    (_else72757289_ (lambda () (void)))
                    (_K72777302_
                     (lambda (_rest7292_ _stx7293_)
                       (display '"... form:   ")
                       (__pp-syntax _stx7293_)
                       (for-each
                        (lambda (_detail7295_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail7295_))
                          (let ((_$e7297_ (__AST-source _detail7295_)))
                            (if _$e7297_
                                ((lambda (_loc7300_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc7300_
                                    '#t
                                    (current-output-port)))
                                 _$e7297_)
                                '#!void))
                          (newline))
                        _rest7292_))))
               (if (##pair? _g72737281_)
                   (let ((_hd72787305_ (##car _g72737281_))
                         (_tl72797307_ (##cdr _g72737281_)))
                     (let* ((_stx7310_ _hd72787305_) (_rest7312_ _tl72797307_))
                       (_K72777302_ _rest7312_ _stx7310_)))
                   (_else72757289_))))
           current-output-port
           _port7259_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message7129_
               _irritants7130_
               _where7131_
               _context7132_
               _marks7133_
               _phi7134_)
        (make-SyntaxError
         'message:
         _message7129_
         'irritants:
         _irritants7130_
         'where:
         _where7131_
         'context:
         _context7132_
         'marks:
         _marks7133_
         'phi:
         _phi7134_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where7124_ _message7125_ _stx7126_ . _details7127_)
        (raise (make-syntax-error
                _message7125_
                (cons _stx7126_ _details7127_)
                _where7124_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args7121_ (apply make-struct-instance AST::t _$args7121_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx7119_) (if (AST? _stx7119_) (&AST-e _stx7119_) _stx7119_)))
    (define __AST-source
      (lambda (_stx7113_)
        (let _lp7115_ ((_src7117_ _stx7113_))
          (if (AST? _src7117_)
              (_lp7115_ (&AST-source _src7117_))
              (if (##locat? _src7117_) _src7117_ '#f)))))
    (define __AST
      (lambda (_e7105_ _src-stx7106_)
        (let ((_src7108_ (__AST-source _src-stx7106_)))
          (if (or (AST? _e7105_) (not _src7108_))
              _e7105_
              (make-AST _e7105_ _src7108_)))))
    (define __AST-eq?
      (lambda (_stx7102_ _obj7103_) (eq? (__AST-e _stx7102_) _obj7103_)))
    (define __AST-pair? (lambda (_stx7100_) (pair? (__AST-e _stx7100_))))
    (define __AST-null? (lambda (_stx7098_) (null? (__AST-e _stx7098_))))
    (define __AST-datum?
      (lambda (_stx7079_)
        (let* ((_e7081_ (__AST-e _stx7079_)) (_$e7083_ (number? _e7081_)))
          (if _$e7083_
              _$e7083_
              (let ((_$e7086_ (string? _e7081_)))
                (if _$e7086_
                    _$e7086_
                    (let ((_$e7089_ (char? _e7081_)))
                      (if _$e7089_
                          _$e7089_
                          (let ((_$e7092_ (keyword? _e7081_)))
                            (if _$e7092_
                                _$e7092_
                                (let ((_$e7095_ (boolean? _e7081_)))
                                  (if _$e7095_
                                      _$e7095_
                                      (eq? _e7081_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx7077_) (symbol? (__AST-e _stx7077_))))
    (define __AST-id-list?
      (let ((_opt-lambda70267067_
             (lambda (_stx7028_ _tail?7029_)
               (let _lp7031_ ((_rest7033_ _stx7028_))
                 (let* ((_$e7035_ _rest7033_)
                        (_$E70377050_
                         (lambda ()
                           (let* ((_$E70387045_
                                   (lambda ()
                                     (__raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _$e7035_)))
                                  (_rest7048_ _$e7035_))
                             (_tail?7029_ _rest7048_)))))
                   (if (__AST-pair? _$e7035_)
                       (let* ((_$tgt70397053_ (__AST-e _$e7035_))
                              (_$hd70407056_ (##car _$tgt70397053_))
                              (_$tl70417059_ (##cdr _$tgt70397053_)))
                         (let* ((_hd7063_ _$hd70407056_)
                                (_rest7065_ _$tl70417059_))
                           (if (__AST-id? _hd7063_)
                               (_lp7031_ _rest7065_)
                               '#f)))
                       (_$E70377050_)))))))
        (lambda _g7358_
          (let ((_g7357_ (##length _g7358_)))
            (cond ((##fx= _g7357_ 1)
                   (apply (lambda (_stx7070_)
                            (let ((_tail?7072_ __AST-null?))
                              (_opt-lambda70267067_ _stx7070_ _tail?7072_)))
                          _g7358_))
                  ((##fx= _g7357_ 2) (apply _opt-lambda70267067_ _g7358_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __AST-id-list?
                    _g7358_)))))))
    (define __AST-bind-list?
      (lambda (_stx7020_)
        (__AST-id-list?
         _stx7020_
         (lambda (_e7022_)
           (let ((_$e7024_ (__AST-null? _e7022_)))
             (if _$e7024_ _$e7024_ (__AST-id? _e7022_)))))))
    (define __AST-list?
      (let ((_opt-lambda69717010_
             (lambda (_stx6973_ _tail?6974_)
               (let _lp6976_ ((_rest6978_ _stx6973_))
                 (let* ((_$e6980_ _rest6978_)
                        (_$E69826995_
                         (lambda ()
                           (let* ((_$E69836990_
                                   (lambda ()
                                     (__raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _$e6980_)))
                                  (_rest6993_ _$e6980_))
                             (_tail?6974_ _rest6993_)))))
                   (if (__AST-pair? _$e6980_)
                       (let* ((_$tgt69846998_ (__AST-e _$e6980_))
                              (_$hd69857001_ (##car _$tgt69846998_))
                              (_$tl69867004_ (##cdr _$tgt69846998_)))
                         (let ((_rest7008_ _$tl69867004_))
                           (_lp6976_ _rest7008_)))
                       (_$E69826995_)))))))
        (lambda _g7360_
          (let ((_g7359_ (##length _g7360_)))
            (cond ((##fx= _g7359_ 1)
                   (apply (lambda (_stx7013_)
                            (let ((_tail?7015_ __AST-null?))
                              (_opt-lambda69717010_ _stx7013_ _tail?7015_)))
                          _g7360_))
                  ((##fx= _g7359_ 2) (apply _opt-lambda69717010_ _g7360_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __AST-list?
                    _g7360_)))))))
    (define __AST->list
      (lambda (_stx6938_)
        (let* ((_$e6940_ _stx6938_)
               (_$E69426955_
                (lambda ()
                  (let* ((_$E69436950_
                          (lambda ()
                            (__raise-syntax-error '#f '"Bad syntax" _$e6940_)))
                         (_rest6953_ _$e6940_))
                    (__AST-e _rest6953_)))))
          (if (__AST-pair? _$e6940_)
              (let* ((_$tgt69446958_ (__AST-e _$e6940_))
                     (_$hd69456961_ (##car _$tgt69446958_))
                     (_$tl69466964_ (##cdr _$tgt69446958_)))
                (let* ((_hd6968_ _$hd69456961_) (_rest6970_ _$tl69466964_))
                  (cons _hd6968_ (__AST->list _rest6970_))))
              (_$E69426955_)))))
    (define __AST->datum
      (lambda (_stx6936_)
        (if (AST? _stx6936_)
            (__AST->datum (__AST-e _stx6936_))
            (if (pair? _stx6936_)
                (cons (__AST->datum (car _stx6936_))
                      (__AST->datum (cdr _stx6936_)))
                (if (vector? _stx6936_)
                    (vector-map __AST->datum _stx6936_)
                    (if (box? _stx6936_)
                        (box (__AST->datum (unbox _stx6936_)))
                        _stx6936_))))))
    (define get-readenv
      (lambda (_port6934_)
        (##make-readenv
         _port6934_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax
      (let ((_opt-lambda69206926_
             (lambda (_in6922_)
               (let ((_e6924_ (##read-datum-or-eof (get-readenv _in6922_))))
                 (if (eof-object? (__AST-e _e6924_))
                     (__AST-e _e6924_)
                     _e6924_)))))
        (lambda _g7362_
          (let ((_g7361_ (##length _g7362_)))
            (cond ((##fx= _g7361_ 0)
                   (apply (lambda ()
                            (let ((_in6930_ (current-input-port)))
                              (_opt-lambda69206926_ _in6930_)))
                          _g7362_))
                  ((##fx= _g7361_ 1) (apply _opt-lambda69206926_ _g7362_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    read-syntax
                    _g7362_)))))))
    (define read-syntax-from-file
      (lambda (_path6917_)
        (let ((_r6919_ (##read-all-as-a-begin-expr-from-path
                        (path-normalize _path6917_)
                        (current-readtable)
                        __wrap-syntax
                        __unwrap-syntax)))
          (if (vector? _r6919_)
              (cdr (__AST-e (vector-ref _r6919_ '1)))
              (error (err-code->string _r6919_) _path6917_)))))
    (define __wrap-syntax
      (lambda (_re6914_ _e6915_)
        (if (eof-object? _e6915_)
            _e6915_
            (make-AST _e6915_ (##readenv->locat _re6914_)))))
    (define __unwrap-syntax (lambda (_re6911_ _e6912_) (__AST-e _e6912_)))
    (define __pp-syntax (lambda (_stx6909_) (pp (__AST->datum _stx6909_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt6907_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt6907_ '#t)
          (__readtable-bracket-keyword-set! _rt6907_ '@list)
          (__readtable-brace-keyword-set! _rt6907_ '@method)
          (##readtable-char-sharp-handler-set! _rt6907_ '#\! __read-sharp-bang)
          _rt6907_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt6903_ _kw6904_)
        (macro-readtable-bracket-handler-set! _rt6903_ _kw6904_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt6900_ _kw6901_)
        (macro-readtable-brace-handler-set! _rt6900_ _kw6901_)))
    (define __read-sharp-bang
      (lambda (_re6891_ _next6892_ _start-pos6893_)
        (if (eq? _start-pos6893_ '0)
            (let* ((_line6895_
                    (##read-line
                     (macro-readenv-port _re6891_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line6897_
                    (substring _line6895_ '1 (string-length _line6895_))))
              (macro-readenv-script-line-set! _re6891_ _script-line6897_)
              (##script-marker))
            (##read-sharp-bang _re6891_ _next6892_ _start-pos6893_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj6889_)
        (if (source-location? _obj6889_)
            (string? (##locat-container _obj6889_))
            '#f)))
    (define source-location-path
      (lambda (_obj6887_)
        (if (##locat? _obj6887_)
            (##container->path (##locat-container _obj6887_))
            '#f)))))
