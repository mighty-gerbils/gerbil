(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1695206877)
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
      (lambda _$args13104_
        (apply make-class-instance SyntaxError::t _$args13104_)))
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
      (lambda (_self13007_ _port13008_)
        (letrec ((_location13010_
                  (lambda ()
                    (let _lp13064_ ((_rest13066_
                                     (slot-ref _self13007_ 'irritants)))
                      (let* ((_rest1306713075_ _rest13066_)
                             (_else1306913083_ (lambda () '#f))
                             (_K1307113092_
                              (lambda (_rest13086_ _hd13087_)
                                (let ((_$e13089_ (__AST-source _hd13087_)))
                                  (if _$e13089_
                                      _$e13089_
                                      (_lp13064_ _rest13086_))))))
                        (if (##pair? _rest1306713075_)
                            (let ((_hd1307213095_ (##car _rest1306713075_))
                                  (_tl1307313097_ (##cdr _rest1306713075_)))
                              (let* ((_hd13100_ _hd1307213095_)
                                     (_rest13102_ _tl1307313097_))
                                (_K1307113092_ _rest13102_ _hd13100_)))
                            (_else1306913083_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e13013_ (_location13010_)))
               (if _$e13013_
                   ((lambda (_where13016_)
                      (##display-locat _where13016_ '#t (current-output-port)))
                    _$e13013_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e13018_ (slot-ref _self13007_ 'where)))
               (if _$e13018_
                   ((lambda (_where13021_)
                      (displayln
                       '" at "
                       _where13021_
                       '": "
                       (slot-ref _self13007_ 'message)))
                    _$e13018_)
                   (displayln '": " (slot-ref _self13007_ 'message))))
             (let* ((_g1302213030_ (slot-ref _self13007_ 'irritants))
                    (_else1302413038_ (lambda () '#!void))
                    (_K1302613051_
                     (lambda (_rest13041_ _stx13042_)
                       (display '"... form:   ")
                       (__pp-syntax _stx13042_)
                       (for-each
                        (lambda (_detail13044_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail13044_))
                          (let ((_$e13046_ (__AST-source _detail13044_)))
                            (if _$e13046_
                                ((lambda (_loc13049_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc13049_
                                    '#t
                                    (current-output-port)))
                                 _$e13046_)
                                '#!void))
                          (newline))
                        _rest13041_))))
               (if (##pair? _g1302213030_)
                   (let ((_hd1302713054_ (##car _g1302213030_))
                         (_tl1302813056_ (##cdr _g1302213030_)))
                     (let* ((_stx13059_ _hd1302713054_)
                            (_rest13061_ _tl1302813056_))
                       (_K1302613051_ _rest13061_ _stx13059_)))
                   '#!void)))
           current-output-port
           _port13008_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message12878_
               _irritants12879_
               _where12880_
               _context12881_
               _marks12882_
               _phi12883_)
        (make-class-instance
         SyntaxError::t
         'message:
         _message12878_
         'irritants:
         _irritants12879_
         'where:
         _where12880_
         'context:
         _context12881_
         'marks:
         _marks12882_
         'phi:
         _phi12883_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where12873_ _message12874_ _stx12875_ . _details12876_)
        (raise (make-syntax-error
                _message12874_
                (cons _stx12875_ _details12876_)
                _where12873_
                (__current-context)
                '#f
                '#f))))
    (define __current-context (make-parameter '#f))
    (define AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define AST? (make-struct-predicate AST::t))
    (define make-AST
      (lambda _$args12870_ (apply make-struct-instance AST::t _$args12870_)))
    (define AST-e (make-struct-field-accessor AST::t '0))
    (define AST-source (make-struct-field-accessor AST::t '1))
    (define AST-e-set! (make-struct-field-mutator AST::t '0))
    (define AST-source-set! (make-struct-field-mutator AST::t '1))
    (define &AST-e (make-struct-field-unchecked-accessor AST::t '0))
    (define &AST-source (make-struct-field-unchecked-accessor AST::t '1))
    (define &AST-e-set! (make-struct-field-unchecked-mutator AST::t '0))
    (define &AST-source-set! (make-struct-field-unchecked-mutator AST::t '1))
    (define __AST-e
      (lambda (_stx12868_)
        (if (##structure-instance-of? _stx12868_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx12868_ '1 AST::t '#f)
            _stx12868_)))
    (define __AST-source
      (lambda (_stx12862_)
        (let _lp12864_ ((_src12866_ _stx12862_))
          (if (##structure-instance-of? _src12866_ 'gerbil#AST::t)
              (_lp12864_ (##unchecked-structure-ref _src12866_ '2 AST::t '#f))
              (if (##locat? _src12866_) _src12866_ '#f)))))
    (define __AST
      (lambda (_e12854_ _src-stx12855_)
        (let ((_src12857_ (__AST-source _src-stx12855_)))
          (if (or (##structure-instance-of? _e12854_ 'gerbil#AST::t)
                  (not _src12857_))
              _e12854_
              (##structure AST::t _e12854_ _src12857_)))))
    (define __AST-eq?
      (lambda (_stx12851_ _obj12852_) (eq? (__AST-e _stx12851_) _obj12852_)))
    (define __AST-pair? (lambda (_stx12849_) (pair? (__AST-e _stx12849_))))
    (define __AST-null? (lambda (_stx12847_) (null? (__AST-e _stx12847_))))
    (define __AST-datum?
      (lambda (_stx12828_)
        (let* ((_e12830_ (__AST-e _stx12828_)) (_$e12832_ (number? _e12830_)))
          (if _$e12832_
              _$e12832_
              (let ((_$e12835_ (string? _e12830_)))
                (if _$e12835_
                    _$e12835_
                    (let ((_$e12838_ (char? _e12830_)))
                      (if _$e12838_
                          _$e12838_
                          (let ((_$e12841_ (keyword? _e12830_)))
                            (if _$e12841_
                                _$e12841_
                                (let ((_$e12844_ (boolean? _e12830_)))
                                  (if _$e12844_
                                      _$e12844_
                                      (eq? _e12830_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx12826_) (symbol? (__AST-e _stx12826_))))
    (define __AST-id-list?__%
      (lambda (_stx12777_ _tail?12778_)
        (let _lp12780_ ((_rest12782_ _stx12777_))
          (let* ((_$e12784_ _rest12782_)
                 (_$E1278612799_
                  (lambda ()
                    (let* ((_$E1278712794_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e12784_)))
                           (_rest12797_ _$e12784_))
                      (_tail?12778_ _rest12797_)))))
            (if (__AST-pair? _$e12784_)
                (let* ((_$tgt1278812802_ (__AST-e _$e12784_))
                       (_$hd1278912805_ (##car _$tgt1278812802_))
                       (_$tl1279012808_ (##cdr _$tgt1278812802_)))
                  (let* ((_hd12812_ _$hd1278912805_)
                         (_rest12814_ _$tl1279012808_))
                    (if (__AST-id? _hd12812_) (_lp12780_ _rest12814_) '#f)))
                (_$E1278612799_))))))
    (define __AST-id-list?__0
      (lambda (_stx12819_)
        (let ((_tail?12821_ __AST-null?))
          (__AST-id-list?__% _stx12819_ _tail?12821_))))
    (define __AST-id-list?
      (lambda _g13199_
        (let ((_g13198_ (##length _g13199_)))
          (cond ((##fx= _g13198_ 1) (apply __AST-id-list?__0 _g13199_))
                ((##fx= _g13198_ 2) (apply __AST-id-list?__% _g13199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g13199_))))))
    (define __AST-bind-list?
      (lambda (_stx12769_)
        (__AST-id-list?__%
         _stx12769_
         (lambda (_e12771_)
           (let ((_$e12773_ (__AST-null? _e12771_)))
             (if _$e12773_ _$e12773_ (__AST-id? _e12771_)))))))
    (define __AST-list?__%
      (lambda (_stx12722_ _tail?12723_)
        (let _lp12725_ ((_rest12727_ _stx12722_))
          (let* ((_$e12729_ _rest12727_)
                 (_$E1273112744_
                  (lambda ()
                    (let* ((_$E1273212739_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _$e12729_)))
                           (_rest12742_ _$e12729_))
                      (_tail?12723_ _rest12742_)))))
            (if (__AST-pair? _$e12729_)
                (let* ((_$tgt1273312747_ (__AST-e _$e12729_))
                       (_$hd1273412750_ (##car _$tgt1273312747_))
                       (_$tl1273512753_ (##cdr _$tgt1273312747_)))
                  (let ((_rest12757_ _$tl1273512753_))
                    (_lp12725_ _rest12757_)))
                (_$E1273112744_))))))
    (define __AST-list?__0
      (lambda (_stx12762_)
        (let ((_tail?12764_ __AST-null?))
          (__AST-list?__% _stx12762_ _tail?12764_))))
    (define __AST-list?
      (lambda _g13201_
        (let ((_g13200_ (##length _g13201_)))
          (cond ((##fx= _g13200_ 1) (apply __AST-list?__0 _g13201_))
                ((##fx= _g13200_ 2) (apply __AST-list?__% _g13201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g13201_))))))
    (define __AST->list
      (lambda (_stx12687_)
        (let* ((_$e12689_ _stx12687_)
               (_$E1269112704_
                (lambda ()
                  (let* ((_$E1269212699_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _$e12689_)))
                         (_rest12702_ _$e12689_))
                    (__AST-e _rest12702_)))))
          (if (__AST-pair? _$e12689_)
              (let* ((_$tgt1269312707_ (__AST-e _$e12689_))
                     (_$hd1269412710_ (##car _$tgt1269312707_))
                     (_$tl1269512713_ (##cdr _$tgt1269312707_)))
                (let* ((_hd12717_ _$hd1269412710_)
                       (_rest12719_ _$tl1269512713_))
                  (cons _hd12717_ (__AST->list _rest12719_))))
              (_$E1269112704_)))))
    (define __AST->datum
      (lambda (_stx12685_)
        (if (##structure-instance-of? _stx12685_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx12685_))
            (if (pair? _stx12685_)
                (cons (__AST->datum (car _stx12685_))
                      (__AST->datum (cdr _stx12685_)))
                (if (vector? _stx12685_)
                    (vector-map __AST->datum _stx12685_)
                    (if (box? _stx12685_)
                        (box (__AST->datum (unbox _stx12685_)))
                        _stx12685_))))))
    (define get-readenv
      (lambda (_port12683_)
        (##make-readenv
         _port12683_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in12671_)
        (let ((_e12673_ (##read-datum-or-eof (get-readenv _in12671_))))
          (if (eof-object? (__AST-e _e12673_)) (__AST-e _e12673_) _e12673_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in12679_ (current-input-port))) (read-syntax__% _in12679_))))
    (define read-syntax
      (lambda _g13203_
        (let ((_g13202_ (##length _g13203_)))
          (cond ((##fx= _g13202_ 0) (apply read-syntax__0 _g13203_))
                ((##fx= _g13202_ 1) (apply read-syntax__% _g13203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g13203_))))))
    (define read-syntax-from-file
      (lambda (_path12666_)
        (let ((_r12668_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path12666_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r12668_)
              (cdr (__AST-e (vector-ref _r12668_ '1)))
              (error (err-code->string _r12668_) _path12666_)))))
    (define __wrap-syntax
      (lambda (_re12663_ _e12664_)
        (if (eof-object? _e12664_)
            _e12664_
            (##structure AST::t _e12664_ (##readenv->locat _re12663_)))))
    (define __unwrap-syntax (lambda (_re12660_ _e12661_) (__AST-e _e12661_)))
    (define __pp-syntax (lambda (_stx12658_) (pp (__AST->datum _stx12658_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt12656_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt12656_ '#t)
          (macro-readtable-bracket-handler-set! _rt12656_ '@list)
          (macro-readtable-brace-handler-set! _rt12656_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt12656_
           '#\!
           __read-sharp-bang)
          _rt12656_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt12652_ _kw12653_)
        (macro-readtable-bracket-handler-set! _rt12652_ _kw12653_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt12649_ _kw12650_)
        (macro-readtable-brace-handler-set! _rt12649_ _kw12650_)))
    (define __read-sharp-bang
      (lambda (_re12640_ _next12641_ _start-pos12642_)
        (if (eq? _start-pos12642_ '0)
            (let* ((_line12644_
                    (##read-line
                     (macro-readenv-port _re12640_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line12646_
                    (substring _line12644_ '1 (string-length _line12644_))))
              (macro-readenv-script-line-set! _re12640_ _script-line12646_)
              (##script-marker))
            (##read-sharp-bang _re12640_ _next12641_ _start-pos12642_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj12638_)
        (if (source-location? _obj12638_)
            (string? (##locat-container _obj12638_))
            '#f)))
    (define source-location-path
      (lambda (_obj12636_)
        (if (##locat? _obj12636_)
            (##container->path (##locat-container _obj12636_))
            '#f)))))
