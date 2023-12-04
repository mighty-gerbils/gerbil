(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1701718632)
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
      (lambda _$args12703_
        (apply make-class-instance SyntaxError::t _$args12703_)))
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
      (lambda (_self12606_ _port12607_)
        (letrec ((_location12609_
                  (lambda ()
                    (let _lp12663_ ((_rest12665_
                                     (slot-ref _self12606_ 'irritants)))
                      (let* ((_rest1266612674_ _rest12665_)
                             (_else1266812682_ (lambda () '#f))
                             (_K1267012691_
                              (lambda (_rest12685_ _hd12686_)
                                (let ((_$e12688_ (__AST-source _hd12686_)))
                                  (if _$e12688_
                                      _$e12688_
                                      (_lp12663_ _rest12685_))))))
                        (if (##pair? _rest1266612674_)
                            (let ((_hd1267112694_ (##car _rest1266612674_))
                                  (_tl1267212696_ (##cdr _rest1266612674_)))
                              (let* ((_hd12699_ _hd1267112694_)
                                     (_rest12701_ _tl1267212696_))
                                (_K1267012691_ _rest12701_ _hd12699_)))
                            (_else1266812682_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e12612_ (_location12609_)))
               (if _$e12612_
                   ((lambda (_where12615_)
                      (##display-locat _where12615_ '#t (current-output-port)))
                    _$e12612_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e12617_ (slot-ref _self12606_ 'where)))
               (if _$e12617_
                   ((lambda (_where12620_)
                      (displayln
                       '" at "
                       _where12620_
                       '": "
                       (slot-ref _self12606_ 'message)))
                    _$e12617_)
                   (displayln '": " (slot-ref _self12606_ 'message))))
             (let* ((_g1262112629_ (slot-ref _self12606_ 'irritants))
                    (_else1262312637_ (lambda () '#!void))
                    (_K1262512650_
                     (lambda (_rest12640_ _stx12641_)
                       (display '"... form:   ")
                       (__pp-syntax _stx12641_)
                       (for-each
                        (lambda (_detail12643_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail12643_))
                          (let ((_$e12645_ (__AST-source _detail12643_)))
                            (if _$e12645_
                                ((lambda (_loc12648_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc12648_
                                    '#t
                                    (current-output-port)))
                                 _$e12645_)
                                '#!void))
                          (newline))
                        _rest12640_))))
               (if (##pair? _g1262112629_)
                   (let ((_hd1262612653_ (##car _g1262112629_))
                         (_tl1262712655_ (##cdr _g1262112629_)))
                     (let* ((_stx12658_ _hd1262612653_)
                            (_rest12660_ _tl1262712655_))
                       (_K1262512650_ _rest12660_ _stx12658_)))
                   '#!void)))
           current-output-port
           _port12607_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message12477_
               _irritants12478_
               _where12479_
               _context12480_
               _marks12481_
               _phi12482_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message12477_
         'irritants:
         _irritants12478_
         'where:
         _where12479_
         'context:
         _context12480_
         'marks:
         _marks12481_
         'phi:
         _phi12482_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where12472_ _message12473_ _stx12474_ . _details12475_)
        (raise (make-syntax-error
                _message12473_
                (cons _stx12474_ _details12475_)
                _where12472_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args12469_ (apply make-struct-instance AST::t _$args12469_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx12467_)
        (if (##structure-instance-of? _stx12467_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx12467_ '1 AST::t '#f)
            _stx12467_)))
    (define __AST-source
      (lambda (_stx12461_)
        (let _lp12463_ ((_src12465_ _stx12461_))
          (if (##structure-instance-of? _src12465_ 'gerbil#AST::t)
              (_lp12463_ (##unchecked-structure-ref _src12465_ '2 AST::t '#f))
              (if (##locat? _src12465_) _src12465_ '#f)))))
    (define __AST
      (lambda (_e12453_ _src-stx12454_)
        (let ((_src12456_ (__AST-source _src-stx12454_)))
          (if (or (##structure-instance-of? _e12453_ 'gerbil#AST::t)
                  (not _src12456_))
              _e12453_
              (##structure AST::t _e12453_ _src12456_)))))
    (define __AST-eq?
      (lambda (_stx12450_ _obj12451_) (eq? (__AST-e _stx12450_) _obj12451_)))
    (define __AST-pair? (lambda (_stx12448_) (pair? (__AST-e _stx12448_))))
    (define __AST-null? (lambda (_stx12446_) (null? (__AST-e _stx12446_))))
    (define __AST-datum?
      (lambda (_stx12427_)
        (let* ((_e12429_ (__AST-e _stx12427_)) (_$e12431_ (number? _e12429_)))
          (if _$e12431_
              _$e12431_
              (let ((_$e12434_ (string? _e12429_)))
                (if _$e12434_
                    _$e12434_
                    (let ((_$e12437_ (char? _e12429_)))
                      (if _$e12437_
                          _$e12437_
                          (let ((_$e12440_ (keyword? _e12429_)))
                            (if _$e12440_
                                _$e12440_
                                (let ((_$e12443_ (boolean? _e12429_)))
                                  (if _$e12443_
                                      _$e12443_
                                      (eq? _e12429_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx12425_) (symbol? (__AST-e _stx12425_))))
    (define __AST-id-list?__%
      (lambda (_stx12376_ _tail?12377_)
        (let _lp12379_ ((_rest12381_ _stx12376_))
          (let* ((_$e12383_ _rest12381_)
                 (_$E1238512398_
                  (lambda ()
                    (let* ((_$E1238612393_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e12383_)))
                           (_rest12396_ _$e12383_))
                      (_tail?12377_ _rest12396_)))))
            (if (__AST-pair? _$e12383_)
                (let* ((_$tgt1238712401_ (__AST-e _$e12383_))
                       (_$hd1238812404_ (##car _$tgt1238712401_))
                       (_$tl1238912407_ (##cdr _$tgt1238712401_)))
                  (let* ((_hd12411_ _$hd1238812404_)
                         (_rest12413_ _$tl1238912407_))
                    (if (__AST-id? _hd12411_) (_lp12379_ _rest12413_) '#f)))
                (_$E1238512398_))))))
    (define __AST-id-list?__0
      (lambda (_stx12418_)
        (let ((_tail?12420_ __AST-null?))
          (__AST-id-list?__% _stx12418_ _tail?12420_))))
    (define __AST-id-list?
      (lambda _g12798_
        (let ((_g12797_ (##length _g12798_)))
          (cond ((##fx= _g12797_ 1)
                 (apply (lambda (_stx12418_) (__AST-id-list?__0 _stx12418_))
                        _g12798_))
                ((##fx= _g12797_ 2)
                 (apply (lambda (_stx12422_ _tail?12423_)
                          (__AST-id-list?__% _stx12422_ _tail?12423_))
                        _g12798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g12798_))))))
    (define __AST-bind-list?
      (lambda (_stx12368_)
        (__AST-id-list?__%
         _stx12368_
         (lambda (_e12370_)
           (let ((_$e12372_ (__AST-null? _e12370_)))
             (if _$e12372_ _$e12372_ (__AST-id? _e12370_)))))))
    (define __AST-list?__%
      (lambda (_stx12321_ _tail?12322_)
        (let _lp12324_ ((_rest12326_ _stx12321_))
          (let* ((_$e12328_ _rest12326_)
                 (_$E1233012343_
                  (lambda ()
                    (let* ((_$E1233112338_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e12328_)))
                           (_rest12341_ _$e12328_))
                      (_tail?12322_ _rest12341_)))))
            (if (__AST-pair? _$e12328_)
                (let* ((_$tgt1233212346_ (__AST-e _$e12328_))
                       (_$hd1233312349_ (##car _$tgt1233212346_))
                       (_$tl1233412352_ (##cdr _$tgt1233212346_)))
                  (let ((_rest12356_ _$tl1233412352_))
                    (_lp12324_ _rest12356_)))
                (_$E1233012343_))))))
    (define __AST-list?__0
      (lambda (_stx12361_)
        (let ((_tail?12363_ __AST-null?))
          (__AST-list?__% _stx12361_ _tail?12363_))))
    (define __AST-list?
      (lambda _g12800_
        (let ((_g12799_ (##length _g12800_)))
          (cond ((##fx= _g12799_ 1)
                 (apply (lambda (_stx12361_) (__AST-list?__0 _stx12361_))
                        _g12800_))
                ((##fx= _g12799_ 2)
                 (apply (lambda (_stx12365_ _tail?12366_)
                          (__AST-list?__% _stx12365_ _tail?12366_))
                        _g12800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g12800_))))))
    (define __AST->list
      (lambda (_stx12286_)
        (let* ((_$e12288_ _stx12286_)
               (_$E1229012303_
                (lambda ()
                  (let* ((_$E1229112298_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e12288_)))
                         (_rest12301_ _$e12288_))
                    (__AST-e _rest12301_)))))
          (if (__AST-pair? _$e12288_)
              (let* ((_$tgt1229212306_ (__AST-e _$e12288_))
                     (_$hd1229312309_ (##car _$tgt1229212306_))
                     (_$tl1229412312_ (##cdr _$tgt1229212306_)))
                (let* ((_hd12316_ _$hd1229312309_)
                       (_rest12318_ _$tl1229412312_))
                  (cons _hd12316_ (__AST->list _rest12318_))))
              (_$E1229012303_)))))
    (define __AST->datum
      (lambda (_stx12284_)
        (if (##structure-instance-of? _stx12284_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx12284_))
            (if (pair? _stx12284_)
                (cons (__AST->datum (car _stx12284_))
                      (__AST->datum (cdr _stx12284_)))
                (if (vector? _stx12284_)
                    (vector-map __AST->datum _stx12284_)
                    (if (box? _stx12284_)
                        (box (__AST->datum (unbox _stx12284_)))
                        _stx12284_))))))
    (define get-readenv
      (lambda (_port12282_)
        (##make-readenv
         _port12282_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in12270_)
        (let ((_e12272_ (##read-datum-or-eof (get-readenv _in12270_))))
          (if (eof-object? (__AST-e _e12272_)) (__AST-e _e12272_) _e12272_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in12278_ (current-input-port))) (read-syntax__% _in12278_))))
    (define read-syntax
      (lambda _g12802_
        (let ((_g12801_ (##length _g12802_)))
          (cond ((##fx= _g12801_ 0)
                 (apply (lambda () (read-syntax__0)) _g12802_))
                ((##fx= _g12801_ 1)
                 (apply (lambda (_in12280_) (read-syntax__% _in12280_))
                        _g12802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g12802_))))))
    (define read-syntax-from-file
      (lambda (_path12265_)
        (let ((_r12267_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path12265_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r12267_)
              (cdr (__AST-e (vector-ref _r12267_ '1)))
              (error (err-code->string _r12267_) _path12265_)))))
    (define __wrap-syntax
      (lambda (_re12262_ _e12263_)
        (if (eof-object? _e12263_)
            _e12263_
            (##structure AST::t _e12263_ (##readenv->locat _re12262_)))))
    (define __unwrap-syntax (lambda (_re12259_ _e12260_) (__AST-e _e12260_)))
    (define __pp-syntax (lambda (_stx12257_) (pp (__AST->datum _stx12257_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt12255_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt12255_ '#t)
          (macro-readtable-bracket-handler-set! _rt12255_ '@list)
          (macro-readtable-brace-handler-set! _rt12255_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt12255_
           '#\!
           __read-sharp-bang)
          _rt12255_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt12251_ _kw12252_)
        (macro-readtable-bracket-handler-set! _rt12251_ _kw12252_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt12248_ _kw12249_)
        (macro-readtable-brace-handler-set! _rt12248_ _kw12249_)))
    (define __read-sharp-bang
      (lambda (_re12239_ _next12240_ _start-pos12241_)
        (if (eq? _start-pos12241_ '0)
            (let* ((_line12243_
                    (##read-line
                     (macro-readenv-port _re12239_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line12245_
                    (substring _line12243_ '1 (string-length _line12243_))))
              (macro-readenv-script-line-set! _re12239_ _script-line12245_)
              (##script-marker))
            (##read-sharp-bang _re12239_ _next12240_ _start-pos12241_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj12237_)
        (if (source-location? _obj12237_)
            (string? (##locat-container _obj12237_))
            '#f)))
    (define source-location-path
      (lambda (_obj12235_)
        (if (##locat? _obj12235_)
            (##container->path (##locat-container _obj12235_))
            '#f)))))
