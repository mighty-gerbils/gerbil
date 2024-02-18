(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708247274)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args142271_
        (apply make-instance gx#identifier-wrap::t _$args142271_)))
    (define gx#identifier-wrap-marks
      (make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args142268_
        (apply make-instance gx#syntax-wrap::t _$args142268_)))
    (define gx#syntax-wrap-mark
      (make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args142265_
        (apply make-instance gx#syntax-quote::t _$args142265_)))
    (define gx#syntax-quote-context
      (make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e (make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_stx142263_) (symbol? (gx#stx-e _stx142263_))))
    (define gx#identifier-quote?
      (lambda (_stx142261_)
        (if (##structure-direct-instance-of? _stx142261_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx142261_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx142259_)
        (if (##structure-direct-instance-of? _stx142259_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx142259_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx142259_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx142257_)
        (if (##structure-direct-instance-of? _stx142257_ 'gx#syntax-quote::t)
            _stx142257_
            (if (##structure-direct-instance-of?
                 _stx142257_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx142257_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx142240_)
        (if (##structure-direct-instance-of? _stx142240_ 'gx#syntax-wrap::t)
            (let _lp142242_ ((_e142244_
                              (##unchecked-structure-ref
                               _stx142240_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks142245_
                              (cons (##unchecked-structure-ref
                                     _stx142240_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e142244_)
                  (let ((_$e142247_ (##type-id (##structure-type _e142244_))))
                    (if (eq? 'gx#syntax-wrap::t _$e142247_)
                        (_lp142242_
                         (##unchecked-structure-ref _e142244_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e142244_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks142245_))
                        (if (or (eq? 'gx#syntax-quote::t _$e142247_)
                                (eq? 'gx#identifier-wrap::t _$e142247_))
                            (##unchecked-structure-ref
                             _e142244_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e142247_)
                                (_lp142242_
                                 (##unchecked-structure-ref
                                  _e142244_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks142245_)
                                _e142244_))))
                  (if (null? _marks142245_)
                      _e142244_
                      (if (pair? _e142244_)
                          (cons (gx#stx-wrap (car _e142244_) _marks142245_)
                                (gx#stx-wrap (cdr _e142244_) _marks142245_))
                          (if (vector? _e142244_)
                              (vector-map
                               (lambda (_g142252142254_)
                                 (gx#stx-wrap _g142252142254_ _marks142245_))
                               _e142244_)
                              (if (box? _e142244_)
                                  (box (gx#stx-wrap
                                        (unbox _e142244_)
                                        _marks142245_))
                                  _e142244_))))))
            (if (##structure-instance-of? _stx142240_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx142240_ '1 gx#AST::t '#f)
                _stx142240_))))
    (define gx#syntax->datum
      (lambda (_stx142238_)
        (if (##structure-instance-of? _stx142238_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx142238_ '1 gx#AST::t '#f))
            (if (pair? _stx142238_)
                (cons (gx#syntax->datum (car _stx142238_))
                      (gx#syntax->datum (cdr _stx142238_)))
                (if (vector? _stx142238_)
                    (vector-map gx#syntax->datum _stx142238_)
                    (if (box? _stx142238_)
                        (box (gx#syntax->datum (unbox _stx142238_)))
                        _stx142238_))))))
    (define gx#datum->syntax__%
      (lambda (_stx142181_ _datum142182_ _src142183_ _quote?142184_)
        (letrec ((_wrap-datum142186_
                  (lambda (_e142210_ _marks142211_)
                    (_wrap-inner142188_
                     _e142210_
                     (lambda (_g142212142214_)
                       (##structure
                        gx#identifier-wrap::t
                        _g142212142214_
                        _src142183_
                        _marks142211_)))))
                 (_wrap-quote142187_
                  (lambda (_e142202_ _ctx142203_ _marks142204_)
                    (_wrap-inner142188_
                     _e142202_
                     (lambda (_g142205142207_)
                       (##structure
                        gx#syntax-quote::t
                        _g142205142207_
                        _src142183_
                        _ctx142203_
                        _marks142204_)))))
                 (_wrap-inner142188_
                  (lambda (_e142195_ _wrap-e142196_)
                    (let _recur142198_ ((_e142200_ _e142195_))
                      (if (symbol? _e142200_)
                          (_wrap-e142196_ _e142200_)
                          (if (pair? _e142200_)
                              (cons (_recur142198_ (car _e142200_))
                                    (_recur142198_ (cdr _e142200_)))
                              (if (vector? _e142200_)
                                  (vector-map _recur142198_ _e142200_)
                                  (if (box? _e142200_)
                                      (box (_recur142198_ (unbox _e142200_)))
                                      _e142200_)))))))
                 (_wrap-outer142189_
                  (lambda (_e142193_)
                    (if (##structure-instance-of? _e142193_ 'gerbil#AST::t)
                        _e142193_
                        (##structure gx#AST::t _e142193_ _src142183_)))))
          (if (##structure-instance-of? _datum142182_ 'gerbil#AST::t)
              _datum142182_
              (if (not _stx142181_)
                  (##structure gx#AST::t _datum142182_ _src142183_)
                  (if (gx#identifier? _stx142181_)
                      (let ((_stx142191_ (gx#stx-unwrap__0 _stx142181_)))
                        (_wrap-outer142189_
                         (if (##structure-direct-instance-of?
                              _stx142191_
                              'gx#syntax-quote::t)
                             (if _quote?142184_
                                 (_wrap-quote142187_
                                  _datum142182_
                                  (##unchecked-structure-ref
                                   _stx142191_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx142191_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum142186_
                                  _datum142182_
                                  (##unchecked-structure-ref
                                   _stx142191_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum142186_
                              _datum142182_
                              (##unchecked-structure-ref
                               _stx142191_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx142181_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx142220_ _datum142221_)
        (let* ((_src142223_ '#f) (_quote?142225_ '#t))
          (gx#datum->syntax__%
           _stx142220_
           _datum142221_
           _src142223_
           _quote?142225_))))
    (define gx#datum->syntax__1
      (lambda (_stx142227_ _datum142228_ _src142229_)
        (let ((_quote?142231_ '#t))
          (gx#datum->syntax__%
           _stx142227_
           _datum142228_
           _src142229_
           _quote?142231_))))
    (define gx#datum->syntax
      (lambda _g146419_
        (let ((_g146418_ (##length _g146419_)))
          (cond ((##fx= _g146418_ 2)
                 (apply (lambda (_stx142220_ _datum142221_)
                          (gx#datum->syntax__0 _stx142220_ _datum142221_))
                        _g146419_))
                ((##fx= _g146418_ 3)
                 (apply (lambda (_stx142227_ _datum142228_ _src142229_)
                          (gx#datum->syntax__1
                           _stx142227_
                           _datum142228_
                           _src142229_))
                        _g146419_))
                ((##fx= _g146418_ 4)
                 (apply (lambda (_stx142233_
                                 _datum142234_
                                 _src142235_
                                 _quote?142236_)
                          (gx#datum->syntax__%
                           _stx142233_
                           _datum142234_
                           _src142235_
                           _quote?142236_))
                        _g146419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g146419_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx142157_ _marks142158_)
        (let _lp142160_ ((_e142162_ _stx142157_)
                         (_marks142163_ _marks142158_)
                         (_src142164_ (gx#stx-source _stx142157_)))
          (if (##structure-direct-instance-of? _e142162_ 'gx#syntax-wrap::t)
              (_lp142160_
               (##unchecked-structure-ref _e142162_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e142162_ '3 gx#syntax-wrap::t '#f)
                _marks142163_)
               (##unchecked-structure-ref _e142162_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e142162_
                   'gx#identifier-wrap::t)
                  (if (null? _marks142163_)
                      _e142162_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e142162_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e142162_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e142162_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks142163_)))
                  (if (##structure-direct-instance-of?
                       _e142162_
                       'gx#syntax-quote::t)
                      _e142162_
                      (if (##structure-instance-of? _e142162_ 'gerbil#AST::t)
                          (_lp142160_
                           (##unchecked-structure-ref
                            _e142162_
                            '1
                            gx#AST::t
                            '#f)
                           _marks142163_
                           (##unchecked-structure-ref
                            _e142162_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e142162_)
                              (##structure
                               gx#identifier-wrap::t
                               _e142162_
                               _src142164_
                               (reverse _marks142163_))
                              (if (null? _marks142163_)
                                  _e142162_
                                  (if (pair? _e142162_)
                                      (cons (gx#stx-wrap
                                             (car _e142162_)
                                             _marks142163_)
                                            (gx#stx-wrap
                                             (cdr _e142162_)
                                             _marks142163_))
                                      (if (vector? _e142162_)
                                          (vector-map
                                           (lambda (_g142165142167_)
                                             (gx#stx-wrap
                                              _g142165142167_
                                              _marks142163_))
                                           _e142162_)
                                          (if (box? _e142162_)
                                              (box (gx#stx-wrap
                                                    (unbox _e142162_)
                                                    _marks142163_))
                                              _e142162_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx142173_)
        (let ((_marks142175_ '()))
          (gx#stx-unwrap__% _stx142173_ _marks142175_))))
    (define gx#stx-unwrap
      (lambda _g146421_
        (let ((_g146420_ (##length _g146421_)))
          (cond ((##fx= _g146420_ 1)
                 (apply (lambda (_stx142173_) (gx#stx-unwrap__0 _stx142173_))
                        _g146421_))
                ((##fx= _g146420_ 2)
                 (apply (lambda (_stx142177_ _marks142178_)
                          (gx#stx-unwrap__% _stx142177_ _marks142178_))
                        _g146421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g146421_))))))
    (define gx#stx-wrap
      (lambda (_stx142150_ _marks142151_)
        (foldl1 (lambda (_mark142153_ _stx142154_)
                  (gx#stx-apply-mark _stx142154_ _mark142153_))
                _stx142150_
                _marks142151_)))
    (define gx#stx-rewrap
      (lambda (_stx142144_ _marks142145_)
        (foldr1 (lambda (_mark142147_ _stx142148_)
                  (gx#stx-apply-mark _stx142148_ _mark142147_))
                _stx142144_
                _marks142145_)))
    (define gx#stx-apply-mark
      (lambda (_stx142141_ _mark142142_)
        (if (##structure-direct-instance-of? _stx142141_ 'gx#syntax-quote::t)
            _stx142141_
            (if (and (##structure-direct-instance-of?
                      _stx142141_
                      'gx#syntax-wrap::t)
                     (eq? _mark142142_
                          (##unchecked-structure-ref
                           _stx142141_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx142141_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx142141_
                 (gx#stx-source _stx142141_)
                 _mark142142_)))))
    (define gx#apply-mark
      (lambda (_mark142105_ _marks142106_)
        (let* ((_marks142107142115_ _marks142106_)
               (_else142109142123_
                (lambda () (cons _mark142105_ _marks142106_)))
               (_K142111142129_
                (lambda (_rest142126_ _hd142127_)
                  (if (eq? _mark142105_ _hd142127_)
                      _rest142126_
                      (cons _mark142105_ _marks142106_)))))
          (if (##pair? _marks142107142115_)
              (let ((_hd142112142132_ (##car _marks142107142115_))
                    (_tl142113142134_ (##cdr _marks142107142115_)))
                (let* ((_hd142137_ _hd142112142132_)
                       (_rest142139_ _tl142113142134_))
                  (_K142111142129_ _rest142139_ _hd142137_)))
              (_else142109142123_)))))
    (define gx#stx-e
      (lambda (_stx142103_)
        (if (##structure-direct-instance-of? _stx142103_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx142103_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx142103_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx142103_ '1 gx#AST::t '#f)
                _stx142103_))))
    (define gx#stx-source
      (lambda (_stx142101_)
        (if (##structure-instance-of? _stx142101_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx142101_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx142095_ _src142096_)
        (if (or (##structure-instance-of? _stx142095_ 'gerbil#AST::t)
                (not _src142096_))
            _stx142095_
            (##structure gx#AST::t _stx142095_ _src142096_))))
    (define gx#stx-datum?
      (lambda (_stx142093_) (gx#self-quoting? (gx#stx-e _stx142093_))))
    (define gx#self-quoting?
      (lambda (_x142076_)
        (let ((_$e142078_ (immediate? _x142076_)))
          (if _$e142078_
              _$e142078_
              (let ((_$e142081_ (number? _x142076_)))
                (if _$e142081_
                    _$e142081_
                    (let ((_$e142084_ (keyword? _x142076_)))
                      (if _$e142084_
                          _$e142084_
                          (let ((_$e142087_ (string? _x142076_)))
                            (if _$e142087_
                                _$e142087_
                                (let ((_$e142090_ (vector? _x142076_)))
                                  (if _$e142090_
                                      _$e142090_
                                      (u8vector? _x142076_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e142074_) (boolean? (gx#stx-e _e142074_))))
    (define gx#stx-keyword?
      (lambda (_e142072_) (keyword? (gx#stx-e _e142072_))))
    (define gx#stx-char? (lambda (_e142070_) (char? (gx#stx-e _e142070_))))
    (define gx#stx-number? (lambda (_e142068_) (number? (gx#stx-e _e142068_))))
    (define gx#stx-fixnum? (lambda (_e142066_) (fixnum? (gx#stx-e _e142066_))))
    (define gx#stx-string? (lambda (_e142064_) (string? (gx#stx-e _e142064_))))
    (define gx#stx-null? (lambda (_e142062_) (null? (gx#stx-e _e142062_))))
    (define gx#stx-pair? (lambda (_e142060_) (pair? (gx#stx-e _e142060_))))
    (define gx#stx-list?
      (lambda (_e142022_)
        (let* ((_g142023142032_ (gx#stx-e _e142022_))
               (_E142026142036_
                (lambda () (error '"No clause matching" _g142023142032_))))
          (let ((_K142028142052_
                 (lambda (_rest142050_) (gx#stx-list? _rest142050_)))
                (_K142027142042_ (lambda (_tail142040_) (null? _tail142040_))))
            (if (##pair? _g142023142032_)
                (let* ((_tl142030142055_ (##cdr _g142023142032_))
                       (_rest142058_ _tl142030142055_))
                  (gx#stx-list? _rest142058_))
                (let ((_tail142045_ _g142023142032_))
                  (null? _tail142045_)))))))
    (define gx#stx-pair/null?
      (lambda (_e142015_)
        (let* ((_e142017_ (gx#stx-e _e142015_)) (_$e142019_ (pair? _e142017_)))
          (if _$e142019_ _$e142019_ (null? _e142017_)))))
    (define gx#stx-vector? (lambda (_e142013_) (vector? (gx#stx-e _e142013_))))
    (define gx#stx-box? (lambda (_e142011_) (box? (gx#stx-e _e142011_))))
    (define gx#stx-eq?
      (lambda (_x142008_ _y142009_)
        (eq? (gx#stx-e _x142008_) (gx#stx-e _y142009_))))
    (define gx#stx-eqv?
      (lambda (_x142005_ _y142006_)
        (eqv? (gx#stx-e _x142005_) (gx#stx-e _y142006_))))
    (define gx#stx-equal?
      (lambda (_x142002_ _y142003_)
        (equal? (gx#stx-e _x142002_) (gx#stx-e _y142003_))))
    (define gx#stx-false? (lambda (_x142000_) (not (gx#stx-e _x142000_))))
    (define gx#stx-identifier
      (lambda (_template141997_ . _args141998_)
        (gx#datum->syntax__1
         _template141997_
         (apply make-symbol (gx#syntax->datum _args141998_))
         (gx#stx-source _template141997_))))
    (define gx#stx-identifier-marks
      (lambda (_stx141995_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx141995_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx141993_)
        (if (##structure-direct-instance-of?
             _stx141993_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx141993_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx141993_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx141993_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx141993_)))))
    (define gx#stx-identifier-context
      (lambda (_stx141989_)
        (let ((_stx141991_ (gx#stx-unwrap__0 _stx141989_)))
          (if (gx#identifier-quote? _stx141991_)
              (##unchecked-structure-ref _stx141991_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx141944_)
        (let* ((_g141945141955_ (gx#stx-e _stx141944_))
               (_else141948141963_ (lambda () '#f)))
          (let ((_K141951141977_
                 (lambda (_rest141974_ _hd141975_)
                   (if (gx#identifier? _hd141975_)
                       (gx#identifier-list? _rest141974_)
                       '#f)))
                (_K141950141968_ (lambda () '#t)))
            (let ((_try-match141947141971_
                   (lambda ()
                     (if (##null? _g141945141955_)
                         (_K141950141968_)
                         (_else141948141963_)))))
              (if (##pair? _g141945141955_)
                  (let ((_tl141953141982_ (##cdr _g141945141955_))
                        (_hd141952141980_ (##car _g141945141955_)))
                    (let ((_hd141985_ _hd141952141980_)
                          (_rest141987_ _tl141953141982_))
                      (_K141951141977_ _rest141987_ _hd141985_)))
                  (_try-match141947141971_)))))))
    (define gx#genident__%
      (lambda (_e141921_ _src141922_)
        (gx#stx-wrap-source
         (gensym (let ((_e141924_ (gx#stx-e _e141921_)))
                   (if (interned-symbol? _e141924_) _e141924_ 'g)))
         (let ((_$e141926_ (gx#stx-source _e141921_)))
           (if _$e141926_ _$e141926_ _src141922_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e141933_ 'g) (_src141935_ '#f))
          (gx#genident__% _e141933_ _src141935_))))
    (define gx#genident__1
      (lambda (_e141937_)
        (let ((_src141939_ '#f)) (gx#genident__% _e141937_ _src141939_))))
    (define gx#genident
      (lambda _g146423_
        (let ((_g146422_ (##length _g146423_)))
          (cond ((##fx= _g146422_ 0)
                 (apply (lambda () (gx#genident__0)) _g146423_))
                ((##fx= _g146422_ 1)
                 (apply (lambda (_e141937_) (gx#genident__1 _e141937_))
                        _g146423_))
                ((##fx= _g146422_ 2)
                 (apply (lambda (_e141941_ _src141942_)
                          (gx#genident__% _e141941_ _src141942_))
                        _g146423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g146423_))))))
    (define gx#gentemps
      (lambda (_stx-lst141918_) (gx#stx-map1 gx#genident _stx-lst141918_)))
    (define gx#syntax->list
      (lambda (_stx141916_) (gx#stx-map1 values _stx141916_)))
    (define gx#stx-car
      (lambda (_stx141913_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx141913_)))))
    (define gx#stx-cdr
      (lambda (_stx141910_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx141910_)))))
    (define gx#stx-length
      (lambda (_stx141875_)
        (let _lp141877_ ((_rest141879_ _stx141875_) (_n141880_ '0))
          (let* ((_g141881141889_ (gx#stx-e _rest141879_))
                 (_else141883141897_ (lambda () _n141880_))
                 (_K141885141902_
                  (lambda (_rest141900_)
                    (_lp141877_ _rest141900_ (fx+ _n141880_ '1)))))
            (if (##pair? _g141881141889_)
                (let* ((_tl141887141905_ (##cdr _g141881141889_))
                       (_rest141908_ _tl141887141905_))
                  (_K141885141902_ _rest141908_))
                (_else141883141897_))))))
    (define gx#stx-for-each
      (lambda _g146425_
        (let ((_g146424_ (##length _g146425_)))
          (cond ((##fx= _g146424_ 2)
                 (apply (lambda (_f141868_ _stx141869_)
                          (gx#stx-for-each1 _f141868_ _stx141869_))
                        _g146425_))
                ((##fx= _g146424_ 3)
                 (apply (lambda (_f141871_ _xstx141872_ _ystx141873_)
                          (gx#stx-for-each2
                           _f141871_
                           _xstx141872_
                           _ystx141873_))
                        _g146425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g146425_))))))
    (define gx#stx-for-each1
      (lambda (_f141818_ _stx141819_)
        (if (procedure? _f141818_)
            '#!void
            (error '"expected procedure" _f141818_))
        (let _lp141821_ ((_rest141823_ _stx141819_))
          (let* ((_g141824141834_ (gx#syntax-e _rest141823_))
                 (_else141827141842_ (lambda () (_f141818_ _rest141823_))))
            (let ((_K141830141856_
                   (lambda (_rest141853_ _hd141854_)
                     (_f141818_ _hd141854_)
                     (_lp141821_ _rest141853_)))
                  (_K141829141847_ (lambda () '#!void)))
              (let ((_try-match141826141850_
                     (lambda ()
                       (if (##null? _g141824141834_)
                           (_K141829141847_)
                           (_else141827141842_)))))
                (if (##pair? _g141824141834_)
                    (let ((_tl141832141861_ (##cdr _g141824141834_))
                          (_hd141831141859_ (##car _g141824141834_)))
                      (let ((_hd141864_ _hd141831141859_)
                            (_rest141866_ _tl141832141861_))
                        (_K141830141856_ _rest141866_ _hd141864_)))
                    (_try-match141826141850_))))))))
    (define gx#stx-for-each2
      (lambda (_f141723_ _xstx141724_ _ystx141725_)
        (if (procedure? _f141723_)
            '#!void
            (error '"expected procedure" _f141723_))
        (let _lp141727_ ((_xrest141729_ _xstx141724_)
                         (_yrest141730_ _ystx141725_))
          (let* ((_g141731141741_ (gx#syntax-e _xrest141729_))
                 (_else141734141749_ (lambda () '#!void)))
            (let ((_K141737141806_
                   (lambda (_xrest141775_ _xhd141776_)
                     (let* ((_g141777141784_ (gx#syntax-e _yrest141730_))
                            (_E141779141788_
                             (lambda ()
                               (error '"No clause matching" _g141777141784_)))
                            (_K141780141794_
                             (lambda (_yrest141791_ _yhd141792_)
                               (_f141723_ _xhd141776_ _yhd141792_)
                               (_lp141727_ _xrest141775_ _yrest141791_))))
                       (if (##pair? _g141777141784_)
                           (let ((_hd141781141797_ (##car _g141777141784_))
                                 (_tl141782141799_ (##cdr _g141777141784_)))
                             (let* ((_yhd141802_ _hd141781141797_)
                                    (_yrest141804_ _tl141782141799_))
                               (_K141780141794_ _yrest141804_ _yhd141802_)))
                           (_E141779141788_)))))
                  (_K141736141769_
                   (lambda ()
                     (let* ((_yrest141753141758_ _yrest141730_)
                            (_E141755141762_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest141753141758_)))
                            (_K141756141766_
                             (lambda ()
                               (_f141723_ _xrest141729_ _yrest141730_))))
                       (if (not (gx#stx-null? _yrest141753141758_))
                           (_K141756141766_)
                           (_E141755141762_))))))
              (let ((_try-match141733141772_
                     (lambda ()
                       (if (not (null? _g141731141741_))
                           (_K141736141769_)
                           (_else141734141749_)))))
                (if (##pair? _g141731141741_)
                    (let ((_tl141739141811_ (##cdr _g141731141741_))
                          (_hd141738141809_ (##car _g141731141741_)))
                      (let ((_xhd141814_ _hd141738141809_)
                            (_xrest141816_ _tl141739141811_))
                        (_K141737141806_ _xrest141816_ _xhd141814_)))
                    (_try-match141733141772_))))))))
    (define gx#stx-map
      (lambda _g146427_
        (let ((_g146426_ (##length _g146427_)))
          (cond ((##fx= _g146426_ 2)
                 (apply (lambda (_f141716_ _stx141717_)
                          (gx#stx-map1 _f141716_ _stx141717_))
                        _g146427_))
                ((##fx= _g146426_ 3)
                 (apply (lambda (_f141719_ _xstx141720_ _ystx141721_)
                          (gx#stx-map2 _f141719_ _xstx141720_ _ystx141721_))
                        _g146427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g146427_))))))
    (define gx#stx-map1
      (lambda (_f141666_ _stx141667_)
        (if (procedure? _f141666_)
            '#!void
            (error '"expected procedure" _f141666_))
        (let _recur141669_ ((_rest141671_ _stx141667_))
          (let* ((_g141672141682_ (gx#syntax-e _rest141671_))
                 (_else141675141690_ (lambda () (_f141666_ _rest141671_))))
            (let ((_K141678141704_
                   (lambda (_rest141701_ _hd141702_)
                     (cons (_f141666_ _hd141702_)
                           (_recur141669_ _rest141701_))))
                  (_K141677141695_ (lambda () '())))
              (let ((_try-match141674141698_
                     (lambda ()
                       (if (##null? _g141672141682_)
                           (_K141677141695_)
                           (_else141675141690_)))))
                (if (##pair? _g141672141682_)
                    (let ((_tl141680141709_ (##cdr _g141672141682_))
                          (_hd141679141707_ (##car _g141672141682_)))
                      (let ((_hd141712_ _hd141679141707_)
                            (_rest141714_ _tl141680141709_))
                        (_K141678141704_ _rest141714_ _hd141712_)))
                    (_try-match141674141698_))))))))
    (define gx#stx-map2
      (lambda (_f141571_ _xstx141572_ _ystx141573_)
        (if (procedure? _f141571_)
            '#!void
            (error '"expected procedure" _f141571_))
        (let _recur141575_ ((_xrest141577_ _xstx141572_)
                            (_yrest141578_ _ystx141573_))
          (let* ((_g141579141589_ (gx#syntax-e _xrest141577_))
                 (_else141582141597_ (lambda () '())))
            (let ((_K141585141654_
                   (lambda (_xrest141623_ _xhd141624_)
                     (let* ((_g141625141632_ (gx#syntax-e _yrest141578_))
                            (_E141627141636_
                             (lambda ()
                               (error '"No clause matching" _g141625141632_)))
                            (_K141628141642_
                             (lambda (_yrest141639_ _yhd141640_)
                               (cons (_f141571_ _xhd141624_ _yhd141640_)
                                     (_recur141575_
                                      _xrest141623_
                                      _yrest141639_)))))
                       (if (##pair? _g141625141632_)
                           (let ((_hd141629141645_ (##car _g141625141632_))
                                 (_tl141630141647_ (##cdr _g141625141632_)))
                             (let* ((_yhd141650_ _hd141629141645_)
                                    (_yrest141652_ _tl141630141647_))
                               (_K141628141642_ _yrest141652_ _yhd141650_)))
                           (_E141627141636_)))))
                  (_K141584141617_
                   (lambda ()
                     (let* ((_yrest141601141606_ _yrest141578_)
                            (_E141603141610_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest141601141606_)))
                            (_K141604141614_
                             (lambda ()
                               (_f141571_ _xrest141577_ _yrest141578_))))
                       (if (not (gx#stx-null? _yrest141601141606_))
                           (_K141604141614_)
                           (_E141603141610_))))))
              (let ((_try-match141581141620_
                     (lambda ()
                       (if (not (null? _g141579141589_))
                           (_K141584141617_)
                           (_else141582141597_)))))
                (if (##pair? _g141579141589_)
                    (let ((_tl141587141659_ (##cdr _g141579141589_))
                          (_hd141586141657_ (##car _g141579141589_)))
                      (let ((_xhd141662_ _hd141586141657_)
                            (_xrest141664_ _tl141587141659_))
                        (_K141585141654_ _xrest141664_ _xhd141662_)))
                    (_try-match141581141620_))))))))
    (define gx#stx-andmap
      (lambda (_f141521_ _stx141522_)
        (if (procedure? _f141521_)
            '#!void
            (error '"expected procedure" _f141521_))
        (let _lp141524_ ((_rest141526_ _stx141522_))
          (let* ((_g141527141537_ (gx#syntax-e _rest141526_))
                 (_else141530141545_ (lambda () (_f141521_ _rest141526_))))
            (let ((_K141533141559_
                   (lambda (_rest141556_ _hd141557_)
                     (if (_f141521_ _hd141557_)
                         (_lp141524_ _rest141556_)
                         '#f)))
                  (_K141532141550_ (lambda () '#t)))
              (let ((_try-match141529141553_
                     (lambda ()
                       (if (##null? _g141527141537_)
                           (_K141532141550_)
                           (_else141530141545_)))))
                (if (##pair? _g141527141537_)
                    (let ((_tl141535141564_ (##cdr _g141527141537_))
                          (_hd141534141562_ (##car _g141527141537_)))
                      (let ((_hd141567_ _hd141534141562_)
                            (_rest141569_ _tl141535141564_))
                        (_K141533141559_ _rest141569_ _hd141567_)))
                    (_try-match141529141553_))))))))
    (define gx#stx-ormap
      (lambda (_f141468_ _stx141469_)
        (if (procedure? _f141468_)
            '#!void
            (error '"expected procedure" _f141468_))
        (let _lp141471_ ((_rest141473_ _stx141469_))
          (let* ((_g141474141484_ (gx#syntax-e _rest141473_))
                 (_else141477141492_ (lambda () (_f141468_ _rest141473_))))
            (let ((_K141480141509_
                   (lambda (_rest141503_ _hd141504_)
                     (let ((_$e141506_ (_f141468_ _hd141504_)))
                       (if _$e141506_ _$e141506_ (_lp141471_ _rest141503_)))))
                  (_K141479141497_ (lambda () '#f)))
              (let ((_try-match141476141500_
                     (lambda ()
                       (if (##null? _g141474141484_)
                           (_K141479141497_)
                           (_else141477141492_)))))
                (if (##pair? _g141474141484_)
                    (let ((_tl141482141514_ (##cdr _g141474141484_))
                          (_hd141481141512_ (##car _g141474141484_)))
                      (let ((_hd141517_ _hd141481141512_)
                            (_rest141519_ _tl141482141514_))
                        (_K141480141509_ _rest141519_ _hd141517_)))
                    (_try-match141476141500_))))))))
    (define gx#stx-foldl
      (lambda (_f141416_ _iv141417_ _stx141418_)
        (if (procedure? _f141416_)
            '#!void
            (error '"expected procedure" _f141416_))
        (let _lp141420_ ((_r141422_ _iv141417_) (_rest141423_ _stx141418_))
          (let* ((_g141424141434_ (gx#syntax-e _rest141423_))
                 (_else141427141442_
                  (lambda () (_f141416_ _rest141423_ _r141422_))))
            (let ((_K141430141456_
                   (lambda (_rest141453_ _hd141454_)
                     (_lp141420_
                      (_f141416_ _hd141454_ _r141422_)
                      _rest141453_)))
                  (_K141429141447_ (lambda () _r141422_)))
              (let ((_try-match141426141450_
                     (lambda ()
                       (if (##null? _g141424141434_)
                           (_K141429141447_)
                           (_else141427141442_)))))
                (if (##pair? _g141424141434_)
                    (let ((_tl141432141461_ (##cdr _g141424141434_))
                          (_hd141431141459_ (##car _g141424141434_)))
                      (let ((_hd141464_ _hd141431141459_)
                            (_rest141466_ _tl141432141461_))
                        (_K141430141456_ _rest141466_ _hd141464_)))
                    (_try-match141426141450_))))))))
    (define gx#stx-foldr
      (lambda (_f141365_ _iv141366_ _stx141367_)
        (if (procedure? _f141365_)
            '#!void
            (error '"expected procedure" _f141365_))
        (let _recur141369_ ((_rest141371_ _stx141367_))
          (let* ((_g141372141382_ (gx#syntax-e _rest141371_))
                 (_else141375141390_
                  (lambda () (_f141365_ _rest141371_ _iv141366_))))
            (let ((_K141378141404_
                   (lambda (_rest141401_ _hd141402_)
                     (_f141365_ _hd141402_ (_recur141369_ _rest141401_))))
                  (_K141377141395_ (lambda () _iv141366_)))
              (let ((_try-match141374141398_
                     (lambda ()
                       (if (##null? _g141372141382_)
                           (_K141377141395_)
                           (_else141375141390_)))))
                (if (##pair? _g141372141382_)
                    (let ((_tl141380141409_ (##cdr _g141372141382_))
                          (_hd141379141407_ (##car _g141372141382_)))
                      (let ((_hd141412_ _hd141379141407_)
                            (_rest141414_ _tl141380141409_))
                        (_K141378141404_ _rest141414_ _hd141412_)))
                    (_try-match141374141398_))))))))
    (define gx#stx-reverse
      (lambda (_stx141363_) (gx#stx-foldl cons '() _stx141363_)))
    (define gx#stx-last
      (lambda (_stx141324_)
        (let _lp141326_ ((_rest141328_ _stx141324_))
          (let* ((_g141329141337_ (gx#syntax-e _rest141328_))
                 (_else141331141345_ (lambda () _rest141328_))
                 (_K141333141351_
                  (lambda (_rest141348_ _hd141349_)
                    (if (gx#stx-null? _rest141348_)
                        _hd141349_
                        (_lp141326_ _rest141348_)))))
            (if (##pair? _g141329141337_)
                (let ((_hd141334141354_ (##car _g141329141337_))
                      (_tl141335141356_ (##cdr _g141329141337_)))
                  (let* ((_hd141359_ _hd141334141354_)
                         (_rest141361_ _tl141335141356_))
                    (_K141333141351_ _rest141361_ _hd141359_)))
                (_else141331141345_))))))
    (define gx#stx-last-pair
      (lambda (_stx141295_)
        (let _lp141297_ ((_hd141299_ _stx141295_))
          (let* ((_g141300141307_ (gx#syntax-e _hd141299_))
                 (_E141302141311_
                  (lambda () (error '"No clause matching" _g141300141307_)))
                 (_K141303141316_
                  (lambda (_rest141314_)
                    (if (gx#stx-pair? _rest141314_)
                        (_lp141297_ _rest141314_)
                        _hd141299_))))
            (if (##pair? _g141300141307_)
                (let* ((_tl141305141319_ (##cdr _g141300141307_))
                       (_rest141322_ _tl141305141319_))
                  (_K141303141316_ _rest141322_))
                (_E141302141311_))))))
    (define gx#stx-list-tail
      (lambda (_stx141264_ _k141265_)
        (let _lp141267_ ((_rest141269_ _stx141264_) (_k141270_ _k141265_))
          (if (fxpositive? _k141270_)
              (let* ((_g141271141278_ (gx#syntax-e _rest141269_))
                     (_E141273141282_
                      (lambda ()
                        (error '"No clause matching" _g141271141278_)))
                     (_K141274141287_
                      (lambda (_rest141285_)
                        (_lp141267_ _rest141285_ (fx- _k141270_ '1)))))
                (if (##pair? _g141271141278_)
                    (let* ((_tl141276141290_ (##cdr _g141271141278_))
                           (_rest141293_ _tl141276141290_))
                      (_K141274141287_ _rest141293_))
                    (_E141273141282_)))
              _rest141269_))))
    (define gx#stx-list-ref
      (lambda (_stx141261_ _k141262_)
        (gx#stx-car (gx#stx-list-tail _stx141261_ _k141262_))))
    (define gx#stx-plist?__%
      (lambda (_stx141173_ _key?141174_)
        (if (procedure? _key?141174_)
            '#!void
            (error '"expected procedure" _key?141174_))
        (let _lp141176_ ((_rest141178_ _stx141173_))
          (let* ((_g141179141189_ (gx#stx-e _rest141178_))
                 (_else141182141197_ (lambda () '#f)))
            (let ((_K141185141239_
                   (lambda (_rest141208_ _hd141209_)
                     (if (_key?141174_ _hd141209_)
                         (let* ((_g141210141218_ (gx#stx-e _rest141208_))
                                (_else141212141226_ (lambda () '#f))
                                (_K141214141231_
                                 (lambda (_rest141229_)
                                   (_lp141176_ _rest141229_))))
                           (if (##pair? _g141210141218_)
                               (let* ((_tl141216141234_
                                       (##cdr _g141210141218_))
                                      (_rest141237_ _tl141216141234_))
                                 (_lp141176_ _rest141237_))
                               (_else141212141226_)))
                         '#f)))
                  (_K141184141202_ (lambda () '#t)))
              (let ((_try-match141181141205_
                     (lambda ()
                       (if (##null? _g141179141189_)
                           (_K141184141202_)
                           (_else141182141197_)))))
                (if (##pair? _g141179141189_)
                    (let ((_tl141187141244_ (##cdr _g141179141189_))
                          (_hd141186141242_ (##car _g141179141189_)))
                      (let ((_hd141247_ _hd141186141242_)
                            (_rest141249_ _tl141187141244_))
                        (_K141185141239_ _rest141249_ _hd141247_)))
                    (_try-match141181141205_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx141254_)
        (let ((_key?141256_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx141254_ _key?141256_))))
    (define gx#stx-plist?
      (lambda _g146429_
        (let ((_g146428_ (##length _g146429_)))
          (cond ((##fx= _g146428_ 1)
                 (apply (lambda (_stx141254_) (gx#stx-plist?__0 _stx141254_))
                        _g146429_))
                ((##fx= _g146428_ 2)
                 (apply (lambda (_stx141258_ _key?141259_)
                          (gx#stx-plist?__% _stx141258_ _key?141259_))
                        _g146429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g146429_))))))
    (define gx#stx-getq__%
      (lambda (_key141091_ _stx141092_ _key=?141093_)
        (if (procedure? _key=?141093_)
            '#!void
            (error '"expected procedure" _key=?141093_))
        (let _lp141095_ ((_rest141097_ _stx141092_))
          (let* ((_g141098141106_ (gx#syntax-e _rest141097_))
                 (_else141100141114_ (lambda () '#f))
                 (_K141102141148_
                  (lambda (_rest141117_ _hd141118_)
                    (let* ((_g141119141126_ (gx#syntax-e _rest141117_))
                           (_E141121141130_
                            (lambda ()
                              (error '"No clause matching" _g141119141126_)))
                           (_K141122141136_
                            (lambda (_rest141133_ _val141134_)
                              (if (_key=?141093_ _hd141118_ _key141091_)
                                  _val141134_
                                  (_lp141095_ _rest141133_)))))
                      (if (##pair? _g141119141126_)
                          (let ((_hd141123141139_ (##car _g141119141126_))
                                (_tl141124141141_ (##cdr _g141119141126_)))
                            (let* ((_val141144_ _hd141123141139_)
                                   (_rest141146_ _tl141124141141_))
                              (_K141122141136_ _rest141146_ _val141144_)))
                          (_E141121141130_))))))
            (if (##pair? _g141098141106_)
                (let ((_hd141103141151_ (##car _g141098141106_))
                      (_tl141104141153_ (##cdr _g141098141106_)))
                  (let* ((_hd141156_ _hd141103141151_)
                         (_rest141158_ _tl141104141153_))
                    (_K141102141148_ _rest141158_ _hd141156_)))
                (_else141100141114_))))))
    (define gx#stx-getq__0
      (lambda (_key141163_ _stx141164_)
        (let ((_key=?141166_ gx#stx-eq?))
          (gx#stx-getq__% _key141163_ _stx141164_ _key=?141166_))))
    (define gx#stx-getq
      (lambda _g146431_
        (let ((_g146430_ (##length _g146431_)))
          (cond ((##fx= _g146430_ 2)
                 (apply (lambda (_key141163_ _stx141164_)
                          (gx#stx-getq__0 _key141163_ _stx141164_))
                        _g146431_))
                ((##fx= _g146430_ 3)
                 (apply (lambda (_key141168_ _stx141169_ _key=?141170_)
                          (gx#stx-getq__%
                           _key141168_
                           _stx141169_
                           _key=?141170_))
                        _g146431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g146431_))))))))
