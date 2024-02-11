(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1707618264)
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
      (lambda _$args102120_
        (apply make-class-instance SyntaxError::t _$args102120_)))
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
      (lambda (_self102023_ _port102024_)
        (letrec ((_location102026_
                  (lambda ()
                    (let _lp102080_ ((_rest102082_
                                      (##unchecked-structure-ref
                                       _self102023_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest102083102091_ _rest102082_)
                             (_else102085102099_ (lambda () '#f))
                             (_K102087102108_
                              (lambda (_rest102102_ _hd102103_)
                                (let ((_$e102105_ (__AST-source _hd102103_)))
                                  (if _$e102105_
                                      _$e102105_
                                      (_lp102080_ _rest102102_))))))
                        (if (##pair? _rest102083102091_)
                            (let ((_hd102088102111_ (##car _rest102083102091_))
                                  (_tl102089102113_
                                   (##cdr _rest102083102091_)))
                              (let* ((_hd102116_ _hd102088102111_)
                                     (_rest102118_ _tl102089102113_))
                                (_K102087102108_ _rest102118_ _hd102116_)))
                            (_else102085102099_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e102029_ (_location102026_)))
               (if _$e102029_
                   ((lambda (_where102032_)
                      (##display-locat
                       _where102032_
                       '#t
                       (current-output-port)))
                    _$e102029_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e102034_
                    (##unchecked-structure-ref
                     _self102023_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e102034_
                   ((lambda (_where102037_)
                      (displayln
                       '" at "
                       _where102037_
                       '": "
                       (##unchecked-structure-ref
                        _self102023_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e102034_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self102023_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g102038102046_
                     (##unchecked-structure-ref
                      _self102023_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else102040102054_ (lambda () '#!void))
                    (_K102042102067_
                     (lambda (_rest102057_ _stx102058_)
                       (display '"... form:   ")
                       (__pp-syntax _stx102058_)
                       (for-each
                        (lambda (_detail102060_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail102060_))
                          (let ((_$e102062_ (__AST-source _detail102060_)))
                            (if _$e102062_
                                ((lambda (_loc102065_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc102065_
                                    '#t
                                    (current-output-port)))
                                 _$e102062_)
                                '#!void))
                          (newline))
                        _rest102057_))))
               (if (##pair? _g102038102046_)
                   (let ((_hd102043102070_ (##car _g102038102046_))
                         (_tl102044102072_ (##cdr _g102038102046_)))
                     (let* ((_stx102075_ _hd102043102070_)
                            (_rest102077_ _tl102044102072_))
                       (_K102042102067_ _rest102077_ _stx102075_)))
                   '#!void)))
           current-output-port
           _port102024_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message101894_
               _irritants101895_
               _where101896_
               _context101897_
               _marks101898_
               _phi101899_)
        (let ((__obj106683
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj106683
           _message101894_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106683
           _irritants101895_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106683
           _where101896_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106683
           _context101897_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106683
           _marks101898_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj106683
           _phi101899_
           '5
           SyntaxError::t
           '#f)
          __obj106683)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where101889_ _message101890_ _stx101891_ . _details101892_)
        (raise (make-syntax-error
                _message101890_
                (cons _stx101891_ _details101892_)
                _where101889_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type
       'gerbil#AST::t
       'syntax
       '#f
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args101886_ (apply make-struct-instance AST::t _$args101886_)))
    (define AST-e (make-struct-slot-accessor AST::t 'e))
    (define AST-source (make-struct-slot-accessor AST::t 'source))
    (define AST-e-set! (make-struct-slot-mutator AST::t 'e))
    (define AST-source-set! (make-struct-slot-mutator AST::t 'source))
    (define &AST-e (make-struct-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (make-struct-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (make-struct-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (make-struct-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_stx101884_)
        (if (##structure-instance-of? _stx101884_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx101884_ '1 AST::t '#f)
            _stx101884_)))
    (define __AST-source
      (lambda (_stx101878_)
        (let _lp101880_ ((_src101882_ _stx101878_))
          (if (##structure-instance-of? _src101882_ 'gerbil#AST::t)
              (_lp101880_
               (##unchecked-structure-ref _src101882_ '2 AST::t '#f))
              (if (##locat? _src101882_) _src101882_ '#f)))))
    (define __AST
      (lambda (_e101870_ _src-stx101871_)
        (let ((_src101873_ (__AST-source _src-stx101871_)))
          (if (or (##structure-instance-of? _e101870_ 'gerbil#AST::t)
                  (not _src101873_))
              _e101870_
              (##structure AST::t _e101870_ _src101873_)))))
    (define __AST-eq?
      (lambda (_stx101867_ _obj101868_)
        (eq? (__AST-e _stx101867_) _obj101868_)))
    (define __AST-pair? (lambda (_stx101865_) (pair? (__AST-e _stx101865_))))
    (define __AST-null? (lambda (_stx101863_) (null? (__AST-e _stx101863_))))
    (define __AST-datum?
      (lambda (_stx101844_)
        (let* ((_e101846_ (__AST-e _stx101844_))
               (_$e101848_ (number? _e101846_)))
          (if _$e101848_
              _$e101848_
              (let ((_$e101851_ (string? _e101846_)))
                (if _$e101851_
                    _$e101851_
                    (let ((_$e101854_ (char? _e101846_)))
                      (if _$e101854_
                          _$e101854_
                          (let ((_$e101857_ (keyword? _e101846_)))
                            (if _$e101857_
                                _$e101857_
                                (let ((_$e101860_ (boolean? _e101846_)))
                                  (if _$e101860_
                                      _$e101860_
                                      (eq? _e101846_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx101842_) (symbol? (__AST-e _stx101842_))))
    (define __AST-id-list?__%
      (lambda (_stx101793_ _tail?101794_)
        (let _lp101796_ ((_rest101798_ _stx101793_))
          (let* ((_$e101800_ _rest101798_)
                 (_$E101802101815_
                  (lambda ()
                    (let* ((_$E101803101810_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101800_)))
                           (_rest101813_ _$e101800_))
                      (_tail?101794_ _rest101813_)))))
            (if (__AST-pair? _$e101800_)
                (let* ((_$tgt101804101818_ (__AST-e _$e101800_))
                       (_$hd101805101821_ (##car _$tgt101804101818_))
                       (_$tl101806101824_ (##cdr _$tgt101804101818_)))
                  (let* ((_hd101828_ _$hd101805101821_)
                         (_rest101830_ _$tl101806101824_))
                    (if (__AST-id? _hd101828_) (_lp101796_ _rest101830_) '#f)))
                (_$E101802101815_))))))
    (define __AST-id-list?__0
      (lambda (_stx101835_)
        (let ((_tail?101837_ __AST-null?))
          (__AST-id-list?__% _stx101835_ _tail?101837_))))
    (define __AST-id-list?
      (lambda _g106686_
        (let ((_g106685_ (##length _g106686_)))
          (cond ((##fx= _g106685_ 1)
                 (apply (lambda (_stx101835_) (__AST-id-list?__0 _stx101835_))
                        _g106686_))
                ((##fx= _g106685_ 2)
                 (apply (lambda (_stx101839_ _tail?101840_)
                          (__AST-id-list?__% _stx101839_ _tail?101840_))
                        _g106686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g106686_))))))
    (define __AST-bind-list?
      (lambda (_stx101785_)
        (__AST-id-list?__%
         _stx101785_
         (lambda (_e101787_)
           (let ((_$e101789_ (__AST-null? _e101787_)))
             (if _$e101789_ _$e101789_ (__AST-id? _e101787_)))))))
    (define __AST-list?__%
      (lambda (_stx101738_ _tail?101739_)
        (let _lp101741_ ((_rest101743_ _stx101738_))
          (let* ((_$e101745_ _rest101743_)
                 (_$E101747101760_
                  (lambda ()
                    (let* ((_$E101748101755_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e101745_)))
                           (_rest101758_ _$e101745_))
                      (_tail?101739_ _rest101758_)))))
            (if (__AST-pair? _$e101745_)
                (let* ((_$tgt101749101763_ (__AST-e _$e101745_))
                       (_$hd101750101766_ (##car _$tgt101749101763_))
                       (_$tl101751101769_ (##cdr _$tgt101749101763_)))
                  (let ((_rest101773_ _$tl101751101769_))
                    (_lp101741_ _rest101773_)))
                (_$E101747101760_))))))
    (define __AST-list?__0
      (lambda (_stx101778_)
        (let ((_tail?101780_ __AST-null?))
          (__AST-list?__% _stx101778_ _tail?101780_))))
    (define __AST-list?
      (lambda _g106688_
        (let ((_g106687_ (##length _g106688_)))
          (cond ((##fx= _g106687_ 1)
                 (apply (lambda (_stx101778_) (__AST-list?__0 _stx101778_))
                        _g106688_))
                ((##fx= _g106687_ 2)
                 (apply (lambda (_stx101782_ _tail?101783_)
                          (__AST-list?__% _stx101782_ _tail?101783_))
                        _g106688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g106688_))))))
    (define __AST->list
      (lambda (_stx101703_)
        (let* ((_$e101705_ _stx101703_)
               (_$E101707101720_
                (lambda ()
                  (let* ((_$E101708101715_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e101705_)))
                         (_rest101718_ _$e101705_))
                    (__AST-e _rest101718_)))))
          (if (__AST-pair? _$e101705_)
              (let* ((_$tgt101709101723_ (__AST-e _$e101705_))
                     (_$hd101710101726_ (##car _$tgt101709101723_))
                     (_$tl101711101729_ (##cdr _$tgt101709101723_)))
                (let* ((_hd101733_ _$hd101710101726_)
                       (_rest101735_ _$tl101711101729_))
                  (cons _hd101733_ (__AST->list _rest101735_))))
              (_$E101707101720_)))))
    (define __AST->datum
      (lambda (_stx101701_)
        (if (##structure-instance-of? _stx101701_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx101701_))
            (if (pair? _stx101701_)
                (cons (__AST->datum (car _stx101701_))
                      (__AST->datum (cdr _stx101701_)))
                (if (vector? _stx101701_)
                    (vector-map __AST->datum _stx101701_)
                    (if (box? _stx101701_)
                        (box (__AST->datum (unbox _stx101701_)))
                        _stx101701_))))))
    (define get-readenv
      (lambda (_port101699_)
        (##make-readenv
         _port101699_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in101687_)
        (let ((_e101689_ (##read-datum-or-eof (get-readenv _in101687_))))
          (if (eof-object? (__AST-e _e101689_))
              (__AST-e _e101689_)
              _e101689_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in101695_ (current-input-port))) (read-syntax__% _in101695_))))
    (define read-syntax
      (lambda _g106690_
        (let ((_g106689_ (##length _g106690_)))
          (cond ((##fx= _g106689_ 0)
                 (apply (lambda () (read-syntax__0)) _g106690_))
                ((##fx= _g106689_ 1)
                 (apply (lambda (_in101697_) (read-syntax__% _in101697_))
                        _g106690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g106690_))))))
    (define read-syntax-from-file
      (lambda (_path101682_)
        (let ((_r101684_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path101682_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r101684_)
              (cdr (__AST-e (vector-ref _r101684_ '1)))
              (error (err-code->string _r101684_) _path101682_)))))
    (define __wrap-syntax
      (lambda (_re101679_ _e101680_)
        (if (eof-object? _e101680_)
            _e101680_
            (##structure AST::t _e101680_ (##readenv->locat _re101679_)))))
    (define __unwrap-syntax
      (lambda (_re101676_ _e101677_) (__AST-e _e101677_)))
    (define __pp-syntax (lambda (_stx101674_) (pp (__AST->datum _stx101674_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt101672_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt101672_ '#t)
          (macro-readtable-bracket-handler-set! _rt101672_ '@list)
          (macro-readtable-brace-handler-set! _rt101672_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt101672_
           '#\!
           __read-sharp-bang)
          _rt101672_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt101668_ _kw101669_)
        (macro-readtable-bracket-handler-set! _rt101668_ _kw101669_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt101665_ _kw101666_)
        (macro-readtable-brace-handler-set! _rt101665_ _kw101666_)))
    (define __read-sharp-bang
      (lambda (_re101656_ _next101657_ _start-pos101658_)
        (if (eq? _start-pos101658_ '0)
            (let* ((_line101660_
                    (##read-line
                     (macro-readenv-port _re101656_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line101662_
                    (substring _line101660_ '1 (string-length _line101660_))))
              (macro-readenv-script-line-set! _re101656_ _script-line101662_)
              (##script-marker))
            (##read-sharp-bang _re101656_ _next101657_ _start-pos101658_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj101654_)
        (if (source-location? _obj101654_)
            (string? (##locat-container _obj101654_))
            '#f)))
    (define source-location-path
      (lambda (_obj101652_)
        (if (##locat? _obj101652_)
            (##container->path (##locat-container _obj101652_))
            '#f)))))
