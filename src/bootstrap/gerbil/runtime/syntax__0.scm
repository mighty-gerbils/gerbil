(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1708247273)
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
      (lambda _$args106804_
        (apply make-instance SyntaxError::t _$args106804_)))
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
      (lambda (_self106707_ _port106708_)
        (letrec ((_location106710_
                  (lambda ()
                    (let _lp106764_ ((_rest106766_
                                      (##unchecked-structure-ref
                                       _self106707_
                                       '2
                                       SyntaxError::t
                                       '#f)))
                      (let* ((_rest106767106775_ _rest106766_)
                             (_else106769106783_ (lambda () '#f))
                             (_K106771106792_
                              (lambda (_rest106786_ _hd106787_)
                                (let ((_$e106789_ (__AST-source _hd106787_)))
                                  (if _$e106789_
                                      _$e106789_
                                      (_lp106764_ _rest106786_))))))
                        (if (##pair? _rest106767106775_)
                            (let ((_hd106772106795_ (##car _rest106767106775_))
                                  (_tl106773106797_
                                   (##cdr _rest106767106775_)))
                              (let* ((_hd106800_ _hd106772106795_)
                                     (_rest106802_ _tl106773106797_))
                                (_K106771106792_ _rest106802_ _hd106800_)))
                            (_else106769106783_)))))))
          (call-with-parameters
           (lambda ()
             (newline)
             (display '"*** ERROR IN ")
             (let ((_$e106713_ (_location106710_)))
               (if _$e106713_
                   ((lambda (_where106716_)
                      (##display-locat
                       _where106716_
                       '#t
                       (current-output-port)))
                    _$e106713_)
                   (display '"?")))
             (newline)
             (display '"--- Syntax Error")
             (let ((_$e106718_
                    (##unchecked-structure-ref
                     _self106707_
                     '3
                     SyntaxError::t
                     '#f)))
               (if _$e106718_
                   ((lambda (_where106721_)
                      (displayln
                       '" at "
                       _where106721_
                       '": "
                       (##unchecked-structure-ref
                        _self106707_
                        '1
                        SyntaxError::t
                        '#f)))
                    _$e106718_)
                   (displayln
                    '": "
                    (##unchecked-structure-ref
                     _self106707_
                     '1
                     SyntaxError::t
                     '#f))))
             (let* ((_g106722106730_
                     (##unchecked-structure-ref
                      _self106707_
                      '2
                      SyntaxError::t
                      '#f))
                    (_else106724106738_ (lambda () '#!void))
                    (_K106726106751_
                     (lambda (_rest106741_ _stx106742_)
                       (display '"... form:   ")
                       (__pp-syntax _stx106742_)
                       (for-each
                        (lambda (_detail106744_)
                          (display '"... detail: ")
                          (write (__AST->datum _detail106744_))
                          (let ((_$e106746_ (__AST-source _detail106744_)))
                            (if _$e106746_
                                ((lambda (_loc106749_)
                                   (display '" at ")
                                   (##display-locat
                                    _loc106749_
                                    '#t
                                    (current-output-port)))
                                 _$e106746_)
                                '#!void))
                          (newline))
                        _rest106741_))))
               (if (##pair? _g106722106730_)
                   (let ((_hd106727106754_ (##car _g106722106730_))
                         (_tl106728106756_ (##cdr _g106722106730_)))
                     (let* ((_stx106759_ _hd106727106754_)
                            (_rest106761_ _tl106728106756_))
                       (_K106726106751_ _rest106761_ _stx106759_)))
                   '#!void)))
           current-output-port
           _port106708_))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_message106578_
               _irritants106579_
               _where106580_
               _context106581_
               _marks106582_
               _phi106583_)
        (let ((__obj110966
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set!
           __obj110966
           _message106578_
           '1
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj110966
           _irritants106579_
           '2
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj110966
           _where106580_
           '3
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj110966
           _context106581_
           '4
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj110966
           _marks106582_
           '6
           SyntaxError::t
           '#f)
          (##unchecked-structure-set!
           __obj110966
           _phi106583_
           '5
           SyntaxError::t
           '#f)
          __obj110966)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_where106573_ _message106574_ _stx106575_ . _details106576_)
        (raise (make-syntax-error
                _message106574_
                (cons _stx106575_ _details106576_)
                _where106573_
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
      (lambda _$args106570_ (apply make-instance AST::t _$args106570_)))
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
      (lambda (_stx106568_)
        (if (##structure-instance-of? _stx106568_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx106568_ '1 AST::t '#f)
            _stx106568_)))
    (define __AST-source
      (lambda (_stx106562_)
        (let _lp106564_ ((_src106566_ _stx106562_))
          (if (##structure-instance-of? _src106566_ 'gerbil#AST::t)
              (_lp106564_
               (##unchecked-structure-ref _src106566_ '2 AST::t '#f))
              (if (##locat? _src106566_) _src106566_ '#f)))))
    (define __AST
      (lambda (_e106554_ _src-stx106555_)
        (let ((_src106557_ (__AST-source _src-stx106555_)))
          (if (or (##structure-instance-of? _e106554_ 'gerbil#AST::t)
                  (not _src106557_))
              _e106554_
              (##structure AST::t _e106554_ _src106557_)))))
    (define __AST-eq?
      (lambda (_stx106551_ _obj106552_)
        (eq? (__AST-e _stx106551_) _obj106552_)))
    (define __AST-pair? (lambda (_stx106549_) (pair? (__AST-e _stx106549_))))
    (define __AST-null? (lambda (_stx106547_) (null? (__AST-e _stx106547_))))
    (define __AST-datum?
      (lambda (_stx106528_)
        (let* ((_e106530_ (__AST-e _stx106528_))
               (_$e106532_ (number? _e106530_)))
          (if _$e106532_
              _$e106532_
              (let ((_$e106535_ (string? _e106530_)))
                (if _$e106535_
                    _$e106535_
                    (let ((_$e106538_ (char? _e106530_)))
                      (if _$e106538_
                          _$e106538_
                          (let ((_$e106541_ (keyword? _e106530_)))
                            (if _$e106541_
                                _$e106541_
                                (let ((_$e106544_ (boolean? _e106530_)))
                                  (if _$e106544_
                                      _$e106544_
                                      (eq? _e106530_ '#!void)))))))))))))
    (define __AST-id? (lambda (_stx106526_) (symbol? (__AST-e _stx106526_))))
    (define __AST-id-list?__%
      (lambda (_stx106477_ _tail?106478_)
        (let _lp106480_ ((_rest106482_ _stx106477_))
          (let* ((_$e106484_ _rest106482_)
                 (_$E106486106499_
                  (lambda ()
                    (let* ((_$E106487106494_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e106484_)))
                           (_rest106497_ _$e106484_))
                      (_tail?106478_ _rest106497_)))))
            (if (__AST-pair? _$e106484_)
                (let* ((_$tgt106488106502_ (__AST-e _$e106484_))
                       (_$hd106489106505_ (##car _$tgt106488106502_))
                       (_$tl106490106508_ (##cdr _$tgt106488106502_)))
                  (let* ((_hd106512_ _$hd106489106505_)
                         (_rest106514_ _$tl106490106508_))
                    (if (__AST-id? _hd106512_) (_lp106480_ _rest106514_) '#f)))
                (_$E106486106499_))))))
    (define __AST-id-list?__0
      (lambda (_stx106519_)
        (let ((_tail?106521_ __AST-null?))
          (__AST-id-list?__% _stx106519_ _tail?106521_))))
    (define __AST-id-list?
      (lambda _g110969_
        (let ((_g110968_ (##length _g110969_)))
          (cond ((##fx= _g110968_ 1)
                 (apply (lambda (_stx106519_) (__AST-id-list?__0 _stx106519_))
                        _g110969_))
                ((##fx= _g110968_ 2)
                 (apply (lambda (_stx106523_ _tail?106524_)
                          (__AST-id-list?__% _stx106523_ _tail?106524_))
                        _g110969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g110969_))))))
    (define __AST-bind-list?
      (lambda (_stx106469_)
        (__AST-id-list?__%
         _stx106469_
         (lambda (_e106471_)
           (let ((_$e106473_ (__AST-null? _e106471_)))
             (if _$e106473_ _$e106473_ (__AST-id? _e106471_)))))))
    (define __AST-list?__%
      (lambda (_stx106422_ _tail?106423_)
        (let _lp106425_ ((_rest106427_ _stx106422_))
          (let* ((_$e106429_ _rest106427_)
                 (_$E106431106444_
                  (lambda ()
                    (let* ((_$E106432106439_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _$e106429_)))
                           (_rest106442_ _$e106429_))
                      (_tail?106423_ _rest106442_)))))
            (if (__AST-pair? _$e106429_)
                (let* ((_$tgt106433106447_ (__AST-e _$e106429_))
                       (_$hd106434106450_ (##car _$tgt106433106447_))
                       (_$tl106435106453_ (##cdr _$tgt106433106447_)))
                  (let ((_rest106457_ _$tl106435106453_))
                    (_lp106425_ _rest106457_)))
                (_$E106431106444_))))))
    (define __AST-list?__0
      (lambda (_stx106462_)
        (let ((_tail?106464_ __AST-null?))
          (__AST-list?__% _stx106462_ _tail?106464_))))
    (define __AST-list?
      (lambda _g110971_
        (let ((_g110970_ (##length _g110971_)))
          (cond ((##fx= _g110970_ 1)
                 (apply (lambda (_stx106462_) (__AST-list?__0 _stx106462_))
                        _g110971_))
                ((##fx= _g110970_ 2)
                 (apply (lambda (_stx106466_ _tail?106467_)
                          (__AST-list?__% _stx106466_ _tail?106467_))
                        _g110971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g110971_))))))
    (define __AST->list
      (lambda (_stx106387_)
        (let* ((_$e106389_ _stx106387_)
               (_$E106391106404_
                (lambda ()
                  (let* ((_$E106392106399_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _$e106389_)))
                         (_rest106402_ _$e106389_))
                    (__AST-e _rest106402_)))))
          (if (__AST-pair? _$e106389_)
              (let* ((_$tgt106393106407_ (__AST-e _$e106389_))
                     (_$hd106394106410_ (##car _$tgt106393106407_))
                     (_$tl106395106413_ (##cdr _$tgt106393106407_)))
                (let* ((_hd106417_ _$hd106394106410_)
                       (_rest106419_ _$tl106395106413_))
                  (cons _hd106417_ (__AST->list _rest106419_))))
              (_$E106391106404_)))))
    (define __AST->datum
      (lambda (_stx106385_)
        (if (##structure-instance-of? _stx106385_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _stx106385_))
            (if (pair? _stx106385_)
                (cons (__AST->datum (car _stx106385_))
                      (__AST->datum (cdr _stx106385_)))
                (if (vector? _stx106385_)
                    (vector-map __AST->datum _stx106385_)
                    (if (box? _stx106385_)
                        (box (__AST->datum (unbox _stx106385_)))
                        _stx106385_))))))
    (define get-readenv
      (lambda (_port106383_)
        (##make-readenv
         _port106383_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_in106371_)
        (let ((_e106373_ (##read-datum-or-eof (get-readenv _in106371_))))
          (if (eof-object? (__AST-e _e106373_))
              (__AST-e _e106373_)
              _e106373_))))
    (define read-syntax__0
      (lambda ()
        (let ((_in106379_ (current-input-port))) (read-syntax__% _in106379_))))
    (define read-syntax
      (lambda _g110973_
        (let ((_g110972_ (##length _g110973_)))
          (cond ((##fx= _g110972_ 0)
                 (apply (lambda () (read-syntax__0)) _g110973_))
                ((##fx= _g110972_ 1)
                 (apply (lambda (_in106381_) (read-syntax__% _in106381_))
                        _g110973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g110973_))))))
    (define read-syntax-from-file
      (lambda (_path106366_)
        (let ((_r106368_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _path106366_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _r106368_)
              (cdr (__AST-e (vector-ref _r106368_ '1)))
              (error (err-code->string _r106368_) _path106366_)))))
    (define __wrap-syntax
      (lambda (_re106363_ _e106364_)
        (if (eof-object? _e106364_)
            _e106364_
            (##structure AST::t _e106364_ (##readenv->locat _re106363_)))))
    (define __unwrap-syntax
      (lambda (_re106360_ _e106361_) (__AST-e _e106361_)))
    (define __pp-syntax (lambda (_stx106358_) (pp (__AST->datum _stx106358_))))
    (define __make-readtable
      (lambda ()
        (let ((_rt106356_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _rt106356_ '#t)
          (macro-readtable-bracket-handler-set! _rt106356_ '@list)
          (macro-readtable-brace-handler-set! _rt106356_ '@method)
          (##readtable-char-sharp-handler-set!
           _rt106356_
           '#\!
           __read-sharp-bang)
          _rt106356_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_rt106352_ _kw106353_)
        (macro-readtable-bracket-handler-set! _rt106352_ _kw106353_)))
    (define __readtable-brace-keyword-set!
      (lambda (_rt106349_ _kw106350_)
        (macro-readtable-brace-handler-set! _rt106349_ _kw106350_)))
    (define __read-sharp-bang
      (lambda (_re106340_ _next106341_ _start-pos106342_)
        (if (eq? _start-pos106342_ '0)
            (let* ((_line106344_
                    (##read-line
                     (macro-readenv-port _re106340_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_script-line106346_
                    (substring _line106344_ '1 (string-length _line106344_))))
              (macro-readenv-script-line-set! _re106340_ _script-line106346_)
              (##script-marker))
            (##read-sharp-bang _re106340_ _next106341_ _start-pos106342_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_obj106338_)
        (if (source-location? _obj106338_)
            (string? (##locat-container _obj106338_))
            '#f)))
    (define source-location-path
      (lambda (_obj106336_)
        (if (##locat? _obj106336_)
            (##container->path (##locat-container _obj106336_))
            '#f)))))
