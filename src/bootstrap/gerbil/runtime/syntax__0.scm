(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708165428)
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
      (lambda _$args110285_
        (apply make-instance SyntaxError::t _$args110285_)))
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
      (lambda (_self110188_ _port110189_)
        (letrec ((_location110191_
                  (lambda ()
                    (let _lp110245_ ((_rest110247_
                                      (##unchecked-structure-ref
                                       _self110188_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest110248110256_ _rest110247_)
                             (_else110250110264_ (lambda () '#f))
                             (_K110252110273_
                              (lambda (_rest110267_ _hd110268_)
                                (let ((_$e110270_ (__AST-source _hd110268_)))
                                  (if _$e110270_
                                      _$e110270_
                                      (_lp110245_ _rest110267_))))))
                        (if (##pair? _rest110248110256_)
                            (let ((_hd110253110276_ (##car _rest110248110256_))
                                  (_tl110254110278_
                                   (##cdr _rest110248110256_)))
                              (let* ((_hd110281_ _hd110253110276_)
                                     (_rest110283_ _tl110254110278_))
                                (_K110252110273_ _rest110283_ _hd110281_)))
                            (_else110250110264_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e110194_ (_location110191_)))
               (if _$e110194_
                   ((lambda (_where110197_)
                      (##display-locat
                       _where110197_
                       '#t
                       (current-output-port)))
                    _$e110194_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e110199_
                    (##unchecked-structure-ref
                     _self110188_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e110199_
                   ((lambda (_where110202_)
                      (displayln
                       '" at "
                       _where110202_
                       '": "
                       (##unchecked-structure-ref
                        _self110188_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e110199_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self110188_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g110203110211_
                     (##unchecked-structure-ref
                      _self110188_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else110205110219_ (lambda () '#!void))
                    (_K110207110232_
                     (lambda (_rest110222_ _stx110223_)
                       (display '"... form:   ")
                       (__pp-syntax _stx110223_)
                       (for-each
                        (lambda (_detail110225_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail110225_))
                          (let ((_$e110227_ (__AST-source _detail110225_)))
                            (if _$e110227_
                                ((lambda (_loc110230_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc110230_
                                    '#t
                                    (current-output-port)))
                                 _$e110227_)
                                '#!void))
                          (newline))
                        _rest110222_))))
               (if (##pair? _g110203110211_)
                   (let ((_hd110208110235_ (##car _g110203110211_))
                         (_tl110209110237_ (##cdr _g110203110211_)))
                     (let* ((_stx110240_ _hd110208110235_)
                            (_rest110242_ _tl110209110237_))
                       (_K110207110232_ _rest110242_ _stx110240_)))
                   '#!void)))
           current-output-port
           _port110189_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message110059_
               _irritants110060_
               _where110061_
               _context110062_
               _marks110063_
               _phi110064_)
        (let ((__obj114948
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj114948
           _message110059_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj114948
           _irritants110060_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj114948
           _where110061_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj114948
           _context110062_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj114948
           _marks110063_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj114948
           _phi110064_
           '5
           SyntaxError::t
           '#f)
          __obj114948)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where110054_ _message110055_ _stx110056_ . _details110057_)
        (raise (make-syntax-error
                _message110055_
                (cons _stx110056_ _details110057_)
                _where110054_
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
      (lambda _$args110051_ (apply make-instance AST::t _$args110051_)))
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
      (lambda (_stx110049_)
        (if (##structure-instance-of? _stx110049_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx110049_ '1 AST::t '#f)
            _stx110049_)))
    (define __AST-source
      (lambda (_stx110043_)
        (let _lp110045_ ((_src110047_ _stx110043_))
          (if (##structure-instance-of? _src110047_ 'gerbil#AST::t)
              (_lp110045_
               (##unchecked-structure-ref _src110047_ '2 AST::t '#f))
              (if (##locat? _src110047_) _src110047_ '#f)))))
    (define __AST
      (lambda (_e110035_ _src-stx110036_)
        (let ((_src110038_ (__AST-source _src-stx110036_)))
          (if (or (##structure-instance-of? _e110035_ 'gerbil#AST::t)
                  (not _src110038_))
              _e110035_
              (##structure AST::t _e110035_ _src110038_)))))
    (define __AST-eq?
      (lambda (_stx110032_ _obj110033_)
        (eq? (__AST-e _stx110032_) _obj110033_)))
    (define __AST-pair? (lambda (_stx110030_) (pair? (__AST-e _stx110030_))))
    (define __AST-null? (lambda (_stx110028_) (null? (__AST-e _stx110028_))))
    (define __AST-datum?
      (lambda (_stx110009_)
        (let* ((_e110011_ (__AST-e _stx110009_))
               (_$e110013_ (number? _e110011_)))
          (if _$e110013_
              _$e110013_
              (let ((_$e110016_ (string? _e110011_)))
                (if _$e110016_
                    _$e110016_
                    (let ((_$e110019_ (char? _e110011_)))
                      (if _$e110019_
                          _$e110019_
                          (let ((_$e110022_ (keyword? _e110011_)))
                            (if _$e110022_
                                _$e110022_
                                (let ((_$e110025_ (boolean? _e110011_)))
                                  (if _$e110025_
                                      _$e110025_
                                      (eq? _e110011_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx110007_) (symbol? (__AST-e _stx110007_))))
    (define __AST-id-list?__%
      (lambda (_stx109958_ _tail?109959_)
        (let _lp109961_ ((_rest109963_ _stx109958_))
          (let* ((_$e109965_ _rest109963_)
                 (_$E109967109980_
                  (lambda ()
                    (let* ((_$E109968109975_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e109965_)))
                           (_rest109978_ _$e109965_))
                      (_tail?109959_ _rest109978_)))))
            (if (__AST-pair? _$e109965_)
                (let* ((_$tgt109969109983_ (__AST-e _$e109965_))
                       (_$hd109970109986_ (##car _$tgt109969109983_))
                       (_$tl109971109989_ (##cdr _$tgt109969109983_)))
                  (let* ((_hd109993_ _$hd109970109986_)
                         (_rest109995_ _$tl109971109989_))
                    (if (__AST-id? _hd109993_) (_lp109961_ _rest109995_) '#f)))
                (_$E109967109980_))))))
    (define __AST-id-list?__0
      (lambda (_stx110000_)
        (let ((_tail?110002_ __AST-null?))
          (__AST-id-list?__% _stx110000_ _tail?110002_))))
    (define __AST-id-list?
      (lambda _g114951_
        (let ((_g114950_ (##length _g114951_)))
          (cond ((##fx= _g114950_ 1)
                 (apply (lambda (_stx110000_) (__AST-id-list?__0 _stx110000_))
                        _g114951_))
                ((##fx= _g114950_ 2)
                 (apply (lambda (_stx110004_ _tail?110005_)
                          (__AST-id-list?__% _stx110004_ _tail?110005_))
                        _g114951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g114951_))))))
    (define __AST-bind-list?
      (lambda (_stx109950_)
        (__AST-id-list?__%
         _stx109950_
         (lambda (_e109952_)
           (let ((_$e109954_ (__AST-null? _e109952_)))
             (if _$e109954_ _$e109954_ (__AST-id? _e109952_)))))))
    (define __AST-list?__%
      (lambda (_stx109903_ _tail?109904_)
        (let _lp109906_ ((_rest109908_ _stx109903_))
          (let* ((_$e109910_ _rest109908_)
                 (_$E109912109925_
                  (lambda ()
                    (let* ((_$E109913109920_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e109910_)))
                           (_rest109923_ _$e109910_))
                      (_tail?109904_ _rest109923_)))))
            (if (__AST-pair? _$e109910_)
                (let* ((_$tgt109914109928_ (__AST-e _$e109910_))
                       (_$hd109915109931_ (##car _$tgt109914109928_))
                       (_$tl109916109934_ (##cdr _$tgt109914109928_)))
                  (let ((_rest109938_ _$tl109916109934_))
                    (_lp109906_ _rest109938_)))
                (_$E109912109925_))))))
    (define __AST-list?__0
      (lambda (_stx109943_)
        (let ((_tail?109945_ __AST-null?))
          (__AST-list?__% _stx109943_ _tail?109945_))))
    (define __AST-list?
      (lambda _g114953_
        (let ((_g114952_ (##length _g114953_)))
          (cond ((##fx= _g114952_ 1)
                 (apply (lambda (_stx109943_) (__AST-list?__0 _stx109943_))
                        _g114953_))
                ((##fx= _g114952_ 2)
                 (apply (lambda (_stx109947_ _tail?109948_)
                          (__AST-list?__% _stx109947_ _tail?109948_))
                        _g114953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g114953_))))))
    (define __AST->list
      (lambda (_stx109868_)
        (let* ((_$e109870_ _stx109868_)
               (_$E109872109885_
                (lambda ()
                  (let* ((_$E109873109880_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e109870_)))
                         (_rest109883_ _$e109870_))
                    (__AST-e _rest109883_)))))
          (if (__AST-pair? _$e109870_)
              (let* ((_$tgt109874109888_ (__AST-e _$e109870_))
                     (_$hd109875109891_ (##car _$tgt109874109888_))
                     (_$tl109876109894_ (##cdr _$tgt109874109888_)))
                (let* ((_hd109898_ _$hd109875109891_)
                       (_rest109900_ _$tl109876109894_))
                  (cons _hd109898_ (__AST->list _rest109900_))))
              (_$E109872109885_)))))
    (define __AST->datum
      (lambda (_stx109866_)
        (if (##structure-instance-of? _stx109866_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx109866_))
            (if (pair? _stx109866_)
                (cons (__AST->datum (car _stx109866_))
                      (__AST->datum (cdr _stx109866_)))
                (if (vector? _stx109866_)
                    (vector-map __AST->datum _stx109866_)
                    (if (box? _stx109866_)
                        (box (__AST->datum (unbox _stx109866_)))
                        _stx109866_))))))
    (define get-readenv
      (lambda (_port109864_)
        (##make-readenv
         _port109864_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in109852_)
        (let ((_e109854_ (##read-datum-or-eof (get-readenv _in109852_))))
          (if (eof-object? (__AST-e _e109854_))
              (__AST-e _e109854_)
              _e109854_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in109860_ (current-input-port))) (read-syntax__% _in109860_))))
    (define read-syntax
      (lambda _g114955_
        (let ((_g114954_ (##length _g114955_)))
          (cond ((##fx= _g114954_ 0)
                 (apply (lambda () (read-syntax__0)) _g114955_))
                ((##fx= _g114954_ 1)
                 (apply (lambda (_in109862_) (read-syntax__% _in109862_))
                        _g114955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g114955_))))))
    (define read-syntax-from-file
      (lambda (_path109847_)
        (let ((_r109849_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path109847_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r109849_)
              (cdr (__AST-e (vector-ref _r109849_ '1)))
              (error (err-code->string _r109849_) _path109847_)))))
    (define __wrap-syntax
      (lambda (_re109844_ _e109845_)
        (if (eof-object? _e109845_)
            _e109845_
            (##structure AST::t _e109845_ (##readenv->locat _re109844_)))))
    (define __unwrap-syntax
      (lambda (_re109841_ _e109842_) (__AST-e _e109842_)))
    (define __pp-syntax (lambda (_stx109839_) (pp (__AST->datum _stx109839_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt109837_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt109837_ '#t)
          (macro-readtable-bracket-handler-set! _rt109837_ '@list)
          (macro-readtable-brace-handler-set! _rt109837_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt109837_
           '#\!
           __read-sharp-bang)
          _rt109837_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt109833_ _kw109834_)
        (macro-readtable-bracket-handler-set! _rt109833_ _kw109834_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt109830_ _kw109831_)
        (macro-readtable-brace-handler-set! _rt109830_ _kw109831_)))
    (define __read-sharp-bang
      (lambda (_re109821_ _next109822_ _start-pos109823_)
        (if (eq? _start-pos109823_ '0)
            (let* ((_line109825_
                    (##read-line
                     (macro-readenv-port _re109821_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line109827_
                    (substring _line109825_ '1 (string-length _line109825_))))
              (macro-readenv-script-line-set! _re109821_ _script-line109827_)
              (##script-marker))
            (##read-sharp-bang _re109821_ _next109822_ _start-pos109823_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj109819_)
        (if (source-location? _obj109819_)
            (string? (##locat-container _obj109819_))
            '#f)))
    (define source-location-path
      (lambda (_obj109817_)
        (if (##locat? _obj109817_)
            (##container->path (##locat-container _obj109817_))
            '#f)))))
