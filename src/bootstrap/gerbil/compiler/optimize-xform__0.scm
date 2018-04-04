(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18360_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl18360_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl18360_ '%#lambda gxc#xform-identity)
           (table-set! _tbl18360_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl18360_ '%#let-values gxc#xform-identity)
           (table-set! _tbl18360_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl18360_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl18360_ '%#quote gxc#xform-identity)
           (table-set! _tbl18360_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18360_ '%#call gxc#xform-identity)
           (table-set! _tbl18360_ '%#if gxc#xform-identity)
           (table-set! _tbl18360_ '%#ref gxc#xform-identity)
           (table-set! _tbl18360_ '%#set! gxc#xform-identity)
           (table-set! _tbl18360_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl18360_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl18360_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl18360_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl18360_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl18360_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl18360_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl18360_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl18360_)))))
  (define gxc#&identity-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl18356_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl18356_ '%#begin gxc#xform-identity)
           (table-set! _tbl18356_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl18356_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl18356_ '%#module gxc#xform-identity)
           (table-set! _tbl18356_ '%#import gxc#xform-identity)
           (table-set! _tbl18356_ '%#export gxc#xform-identity)
           (table-set! _tbl18356_ '%#provide gxc#xform-identity)
           (table-set! _tbl18356_ '%#extern gxc#xform-identity)
           (table-set! _tbl18356_ '%#define-values gxc#xform-identity)
           (table-set! _tbl18356_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl18356_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl18356_ '%#declare gxc#xform-identity)
           _tbl18356_)))))
  (define gxc#&identity
    (##make-promise
     (lambda ()
       (let ((_tbl18352_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18352_ (force gxc#&identity-special-form))
           (hash-copy! _tbl18352_ (force gxc#&identity-expression))
           _tbl18352_)))))
  (define gxc#&basic-xform-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18348_ (make-table 'test: eq?)))
         (begin
           (table-set!
            _tbl18348_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl18348_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl18348_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl18348_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl18348_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl18348_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl18348_ '%#quote gxc#xform-identity)
           (table-set! _tbl18348_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18348_ '%#call gxc#xform-operands)
           (table-set! _tbl18348_ '%#if gxc#xform-operands)
           (table-set! _tbl18348_ '%#ref gxc#xform-identity)
           (table-set! _tbl18348_ '%#set! gxc#xform-setq%)
           (table-set! _tbl18348_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl18348_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl18348_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl18348_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl18348_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl18348_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl18348_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl18348_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl18348_)))))
  (define gxc#&basic-xform
    (##make-promise
     (lambda ()
       (let ((_tbl18344_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18344_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl18344_ (force gxc#&identity))
           (table-set! _tbl18344_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18344_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl18344_ '%#module gxc#xform-module%)
           (table-set! _tbl18344_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl18344_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl18344_)))))
  (define gxc#&collect-mutators
    (##make-promise
     (lambda ()
       (let ((_tbl18340_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18340_ (force gxc#&void))
           (table-set! _tbl18340_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18340_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl18340_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl18340_ '%#module gxc#collect-module%)
           (table-set! _tbl18340_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl18340_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl18340_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18340_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18340_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl18340_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl18340_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl18340_ '%#call gxc#collect-operands)
           (table-set! _tbl18340_ '%#if gxc#collect-operands)
           (table-set! _tbl18340_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl18340_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl18340_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl18340_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl18340_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl18340_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl18340_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl18340_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl18340_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl18340_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18333_ . _args18335_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18333_ _args18335_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (##make-promise
     (lambda ()
       (let ((_tbl18330_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18330_ (force gxc#&basic-xform-expression))
           (table-set! _tbl18330_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18330_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl18330_ '%#set! gxc#expression-subst-setq%)
           _tbl18330_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx18323_ . _args18325_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18323_ _args18325_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (##make-promise
     (lambda ()
       (let ((_tbl18320_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18320_ (force gxc#&expression-subst))
           (table-set! _tbl18320_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl18320_ '%#set! gxc#expression-subst*-setq%)
           _tbl18320_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx18313_ . _args18315_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18313_ _args18315_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18310_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18310_ (force gxc#&false-expression))
           (table-set! _tbl18310_ '%#begin gxc#find-body%)
           (table-set!
            _tbl18310_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl18310_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl18310_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl18310_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl18310_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl18310_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl18310_ '%#call gxc#find-body%)
           (table-set! _tbl18310_ '%#if gxc#find-body%)
           (table-set! _tbl18310_ '%#set! gxc#find-setq%)
           (table-set! _tbl18310_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl18310_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl18310_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl18310_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl18310_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl18310_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl18310_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl18310_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl18310_)))))
  (define gxc#&find-var-refs
    (##make-promise
     (lambda ()
       (let ((_tbl18306_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18306_ (force gxc#&find-expression))
           (table-set! _tbl18306_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl18306_ '%#set! gxc#find-var-refs-setq%)
           _tbl18306_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx18299_ . _args18301_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18299_ _args18301_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (##make-promise
     (lambda ()
       (let ((_tbl18296_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18296_ (force gxc#&collect-expression-refs))
           (table-set! _tbl18296_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl18296_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl18296_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx18289_ . _args18291_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18289_ _args18291_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx18286_ . _args18287_) _stx18286_))
  (define gxc#xform-wrap-source
    (lambda (_stx18283_ _src-stx18284_)
      (gx#stx-wrap-source _stx18283_ (gx#stx-source _src-stx18284_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18277_)
      (lambda (_g1827818280_)
        (apply gxc#compile-e _g1827818280_ _args18277_))))
  (define gxc#xform-begin%
    (lambda (_stx18236_ . _args18237_)
      (let* ((_g1823918249_
              (lambda (_g1824018246_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1824018246_)))
             (_g1823818274_
              (lambda (_g1824018252_)
                (if (gx#stx-pair? _g1824018252_)
                    (let ((_e1824218254_ (gx#stx-e _g1824018252_)))
                      (let ((_hd1824318257_ (##car _e1824218254_))
                            (_tl1824418259_ (##cdr _e1824218254_)))
                        ((lambda (_L18262_)
                           (let ((_forms18272_
                                  (map (gxc#xform-apply-compile-e _args18237_)
                                       _L18262_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms18272_)
                              _stx18236_)))
                         _tl1824418259_)))
                    (_g1823918249_ _g1824018252_)))))
        (_g1823818274_ _stx18236_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx18194_ . _args18195_)
      (let* ((_g1819718207_
              (lambda (_g1819818204_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1819818204_)))
             (_g1819618233_
              (lambda (_g1819818210_)
                (if (gx#stx-pair? _g1819818210_)
                    (let ((_e1820018212_ (gx#stx-e _g1819818210_)))
                      (let ((_hd1820118215_ (##car _e1820018212_))
                            (_tl1820218217_ (##cdr _e1820018212_)))
                        ((lambda (_L18220_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms18231_
                                     (map (gxc#xform-apply-compile-e
                                           _args18195_)
                                          _L18220_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms18231_)
                                 _stx18194_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1820218217_)))
                    (_g1819718207_ _g1819818210_)))))
        (_g1819618233_ _stx18194_))))
  (define gxc#xform-module%
    (lambda (_stx18131_ . _args18132_)
      (let* ((_g1813418148_
              (lambda (_g1813518145_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1813518145_)))
             (_g1813318191_
              (lambda (_g1813518151_)
                (if (gx#stx-pair? _g1813518151_)
                    (let ((_e1813818153_ (gx#stx-e _g1813518151_)))
                      (let ((_hd1813918156_ (##car _e1813818153_))
                            (_tl1814018158_ (##cdr _e1813818153_)))
                        (if (gx#stx-pair? _tl1814018158_)
                            (let ((_e1814118161_ (gx#stx-e _tl1814018158_)))
                              (let ((_hd1814218164_ (##car _e1814118161_))
                                    (_tl1814318166_ (##cdr _e1814118161_)))
                                ((lambda (_L18169_ _L18170_)
                                   (let* ((_ctx18183_
                                           (gx#syntax-local-e__0 _L18170_))
                                          (_code18185_
                                           (##structure-ref
                                            _ctx18183_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code18188_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code18185_
                                                     _args18132_))
                                            gx#current-expander-context
                                            _ctx18183_)))
                                     (begin
                                       (##structure-set!
                                        _ctx18183_
                                        _code18188_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L18170_
                                                    (cons _code18188_ '())))
                                        _stx18131_))))
                                 _tl1814318166_
                                 _hd1814218164_)))
                            (_g1813418148_ _g1813518151_))))
                    (_g1813418148_ _g1813518151_)))))
        (_g1813318191_ _stx18131_))))
  (define gxc#xform-define-values%
    (lambda (_stx18061_ . _args18062_)
      (let* ((_g1806418081_
              (lambda (_g1806518078_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1806518078_)))
             (_g1806318128_
              (lambda (_g1806518084_)
                (if (gx#stx-pair? _g1806518084_)
                    (let ((_e1806818086_ (gx#stx-e _g1806518084_)))
                      (let ((_hd1806918089_ (##car _e1806818086_))
                            (_tl1807018091_ (##cdr _e1806818086_)))
                        (if (gx#stx-pair? _tl1807018091_)
                            (let ((_e1807118094_ (gx#stx-e _tl1807018091_)))
                              (let ((_hd1807218097_ (##car _e1807118094_))
                                    (_tl1807318099_ (##cdr _e1807118094_)))
                                (if (gx#stx-pair? _tl1807318099_)
                                    (let ((_e1807418102_
                                           (gx#stx-e _tl1807318099_)))
                                      (let ((_hd1807518105_
                                             (##car _e1807418102_))
                                            (_tl1807618107_
                                             (##cdr _e1807418102_)))
                                        (if (gx#stx-null? _tl1807618107_)
                                            ((lambda (_L18110_ _L18111_)
                                               (let ((_expr18126_
                                                      (apply gxc#compile-e
                                                             _L18110_
                                                             _args18062_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L18111_
                                                              (cons _expr18126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx18061_)))
                                             _hd1807518105_
                                             _hd1807218097_)
                                            (_g1806418081_ _g1806518084_))))
                                    (_g1806418081_ _g1806518084_))))
                            (_g1806418081_ _g1806518084_))))
                    (_g1806418081_ _g1806518084_)))))
        (_g1806318128_ _stx18061_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx17990_ . _args17991_)
      (let* ((_g1799318010_
              (lambda (_g1799418007_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1799418007_)))
             (_g1799218058_
              (lambda (_g1799418013_)
                (if (gx#stx-pair? _g1799418013_)
                    (let ((_e1799718015_ (gx#stx-e _g1799418013_)))
                      (let ((_hd1799818018_ (##car _e1799718015_))
                            (_tl1799918020_ (##cdr _e1799718015_)))
                        (if (gx#stx-pair? _tl1799918020_)
                            (let ((_e1800018023_ (gx#stx-e _tl1799918020_)))
                              (let ((_hd1800118026_ (##car _e1800018023_))
                                    (_tl1800218028_ (##cdr _e1800018023_)))
                                (if (gx#stx-pair? _tl1800218028_)
                                    (let ((_e1800318031_
                                           (gx#stx-e _tl1800218028_)))
                                      (let ((_hd1800418034_
                                             (##car _e1800318031_))
                                            (_tl1800518036_
                                             (##cdr _e1800318031_)))
                                        (if (gx#stx-null? _tl1800518036_)
                                            ((lambda (_L18039_ _L18040_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr18056_
                                                         (apply gxc#compile-e
                                                                _L18039_
                                                                _args17991_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L18040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr18056_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx17990_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1800418034_
                                             _hd1800118026_)
                                            (_g1799318010_ _g1799418013_))))
                                    (_g1799318010_ _g1799418013_))))
                            (_g1799318010_ _g1799418013_))))
                    (_g1799318010_ _g1799418013_)))))
        (_g1799218058_ _stx17990_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx17920_ . _args17921_)
      (let* ((_g1792317940_
              (lambda (_g1792417937_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1792417937_)))
             (_g1792217987_
              (lambda (_g1792417943_)
                (if (gx#stx-pair? _g1792417943_)
                    (let ((_e1792717945_ (gx#stx-e _g1792417943_)))
                      (let ((_hd1792817948_ (##car _e1792717945_))
                            (_tl1792917950_ (##cdr _e1792717945_)))
                        (if (gx#stx-pair? _tl1792917950_)
                            (let ((_e1793017953_ (gx#stx-e _tl1792917950_)))
                              (let ((_hd1793117956_ (##car _e1793017953_))
                                    (_tl1793217958_ (##cdr _e1793017953_)))
                                (if (gx#stx-pair? _tl1793217958_)
                                    (let ((_e1793317961_
                                           (gx#stx-e _tl1793217958_)))
                                      (let ((_hd1793417964_
                                             (##car _e1793317961_))
                                            (_tl1793517966_
                                             (##cdr _e1793317961_)))
                                        (if (gx#stx-null? _tl1793517966_)
                                            ((lambda (_L17969_ _L17970_)
                                               (let ((_expr17985_
                                                      (apply gxc#compile-e
                                                             _L17969_
                                                             _args17921_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L17970_
                                                              (cons _expr17985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17920_)))
                                             _hd1793417964_
                                             _hd1793117956_)
                                            (_g1792317940_ _g1792417943_))))
                                    (_g1792317940_ _g1792417943_))))
                            (_g1792317940_ _g1792417943_))))
                    (_g1792317940_ _g1792417943_)))))
        (_g1792217987_ _stx17920_))))
  (define gxc#xform-lambda%
    (lambda (_stx17863_ . _args17864_)
      (let* ((_g1786617880_
              (lambda (_g1786717877_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1786717877_)))
             (_g1786517917_
              (lambda (_g1786717883_)
                (if (gx#stx-pair? _g1786717883_)
                    (let ((_e1787017885_ (gx#stx-e _g1786717883_)))
                      (let ((_hd1787117888_ (##car _e1787017885_))
                            (_tl1787217890_ (##cdr _e1787017885_)))
                        (if (gx#stx-pair? _tl1787217890_)
                            (let ((_e1787317893_ (gx#stx-e _tl1787217890_)))
                              (let ((_hd1787417896_ (##car _e1787317893_))
                                    (_tl1787517898_ (##cdr _e1787317893_)))
                                ((lambda (_L17901_ _L17902_)
                                   (let ((_body17915_
                                          (map (gxc#xform-apply-compile-e
                                                _args17864_)
                                               _L17901_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L17902_ _body17915_))
                                      _stx17863_)))
                                 _tl1787517898_
                                 _hd1787417896_)))
                            (_g1786617880_ _g1786717883_))))
                    (_g1786617880_ _g1786717883_)))))
        (_g1786517917_ _stx17863_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx17776_ . _args17777_)
      (letrec ((_clause-e17779_
                (lambda (_clause17820_)
                  (let* ((_g1782217833_
                          (lambda (_g1782317830_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1782317830_)))
                         (_g1782117860_
                          (lambda (_g1782317836_)
                            (if (gx#stx-pair? _g1782317836_)
                                (let ((_e1782617838_ (gx#stx-e _g1782317836_)))
                                  (let ((_hd1782717841_ (##car _e1782617838_))
                                        (_tl1782817843_ (##cdr _e1782617838_)))
                                    ((lambda (_L17846_ _L17847_)
                                       (let ((_body17858_
                                              (map (gxc#xform-apply-compile-e
                                                    _args17777_)
                                                   _L17846_)))
                                         (cons _L17847_ _body17858_)))
                                     _tl1782817843_
                                     _hd1782717841_)))
                                (_g1782217833_ _g1782317836_)))))
                    (_g1782117860_ _clause17820_)))))
        (let* ((_g1778117791_
                (lambda (_g1778217788_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1778217788_)))
               (_g1778017817_
                (lambda (_g1778217794_)
                  (if (gx#stx-pair? _g1778217794_)
                      (let ((_e1778417796_ (gx#stx-e _g1778217794_)))
                        (let ((_hd1778517799_ (##car _e1778417796_))
                              (_tl1778617801_ (##cdr _e1778417796_)))
                          ((lambda (_L17804_)
                             (let ((_clauses17815_
                                    (map _clause-e17779_ _L17804_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses17815_)
                                _stx17776_)))
                           _tl1778617801_)))
                      (_g1778117791_ _g1778217794_)))))
          (_g1778017817_ _stx17776_)))))
  (define gxc#xform-let-values%
    (lambda (_stx17570_ . _args17571_)
      (let* ((_g1757317606_
              (lambda (_g1757417603_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1757417603_)))
             (_g1757217773_
              (lambda (_g1757417609_)
                (if (gx#stx-pair? _g1757417609_)
                    (let ((_e1757917611_ (gx#stx-e _g1757417609_)))
                      (let ((_hd1758017614_ (##car _e1757917611_))
                            (_tl1758117616_ (##cdr _e1757917611_)))
                        (if (gx#stx-pair? _tl1758117616_)
                            (let ((_e1758217619_ (gx#stx-e _tl1758117616_)))
                              (let ((_hd1758317622_ (##car _e1758217619_))
                                    (_tl1758417624_ (##cdr _e1758217619_)))
                                (if (gx#stx-pair/null? _hd1758317622_)
                                    (let ((_g18362_
                                           (gx#syntax-split-splice
                                            _hd1758317622_
                                            '0)))
                                      (begin
                                        (let ((_g18363_
                                               (if (##values? _g18362_)
                                                   (##vector-length _g18362_)
                                                   1)))
                                          (if (not (##fx= _g18363_ 2))
                                              (error "Context expects 2 values"
                                                     _g18363_)))
                                        (let ((_target1758517627_
                                               (##vector-ref _g18362_ 0))
                                              (_tl1758717629_
                                               (##vector-ref _g18362_ 1)))
                                          (if (gx#stx-null? _tl1758717629_)
                                              (letrec ((_loop1758817632_
                                                        (lambda (_hd1758617635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1759217637_
                         _hd1759317639_)
                  (if (gx#stx-pair? _hd1758617635_)
                      (let ((_e1758917642_ (gx#stx-e _hd1758617635_)))
                        (let ((_lp-hd1759017645_ (##car _e1758917642_))
                              (_lp-tl1759117647_ (##cdr _e1758917642_)))
                          (if (gx#stx-pair? _lp-hd1759017645_)
                              (let ((_e1759617650_
                                     (gx#stx-e _lp-hd1759017645_)))
                                (let ((_hd1759717653_ (##car _e1759617650_))
                                      (_tl1759817655_ (##cdr _e1759617650_)))
                                  (if (gx#stx-pair? _tl1759817655_)
                                      (let ((_e1759917658_
                                             (gx#stx-e _tl1759817655_)))
                                        (let ((_hd1760017661_
                                               (##car _e1759917658_))
                                              (_tl1760117663_
                                               (##cdr _e1759917658_)))
                                          (if (gx#stx-null? _tl1760117663_)
                                              (_loop1758817632_
                                               _lp-tl1759117647_
                                               (cons _hd1760017661_
                                                     _expr1759217637_)
                                               (cons _hd1759717653_
                                                     _hd1759317639_))
                                              (_g1757317606_ _g1757417609_))))
                                      (_g1757317606_ _g1757417609_))))
                              (_g1757317606_ _g1757417609_))))
                      (let ((_expr1759417666_ (reverse _expr1759217637_))
                            (_hd1759517668_ (reverse _hd1759317639_)))
                        ((lambda (_L17671_ _L17672_ _L17673_ _L17674_)
                           (let* ((_g1769317709_
                                   (lambda (_g1769417706_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1769417706_)))
                                  (_g1769217763_
                                   (lambda (_g1769417712_)
                                     (if (gx#stx-pair/null? _g1769417712_)
                                         (let ((_g18364_
                                                (gx#syntax-split-splice
                                                 _g1769417712_
                                                 '0)))
                                           (begin
                                             (let ((_g18365_
                                                    (if (##values? _g18364_)
                                                        (##vector-length
                                                         _g18364_)
                                                        1)))
                                               (if (not (##fx= _g18365_ 2))
                                                   (error "Context expects 2 values"
                                                          _g18365_)))
                                             (let ((_target1769617714_
                                                    (##vector-ref _g18364_ 0))
                                                   (_tl1769817716_
                                                    (##vector-ref _g18364_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1769817716_)
                                                   (letrec ((_loop1769917719_
                                                             (lambda (_hd1769717722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1770317724_)
                       (if (gx#stx-pair? _hd1769717722_)
                           (let ((_e1770017727_ (gx#syntax-e _hd1769717722_)))
                             (let ((_lp-hd1770117730_ (##car _e1770017727_))
                                   (_lp-tl1770217732_ (##cdr _e1770017727_)))
                               (_loop1769917719_
                                _lp-tl1770217732_
                                (cons _lp-hd1770117730_ _expr1770317724_))))
                           (let ((_expr1770417735_ (reverse _expr1770317724_)))
                             ((lambda (_L17738_)
                                (let ()
                                  (let ((_body17751_
                                         (map (gxc#xform-apply-compile-e
                                               _args17571_)
                                              _L17671_)))
                                    (gxc#xform-wrap-source
                                     (cons _L17674_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L17738_
                                                    _L17673_)
                                                   (foldr2 (lambda (_g1775217756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1775317758_
                            _g1775417760_)
                     (cons (cons _g1775317758_ (cons _g1775217756_ '()))
                           _g1775417760_))
                   '()
                   _L17738_
                   _L17673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body17751_))
                                     _stx17570_))))
                              _expr1770417735_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1769917719_
                                                      _target1769617714_
                                                      '()))
                                                   (_g1769317709_
                                                    _g1769417712_)))))
                                         (_g1769317709_ _g1769417712_)))))
                             (_g1769217763_
                              (map (gxc#xform-apply-compile-e _args17571_)
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1776517768_
                                                      _g1776617770_)
                                               (cons _g1776517768_
                                                     _g1776617770_))
                                             '()
                                             _L17672_))))))
                         _tl1758417624_
                         _expr1759417666_
                         _hd1759517668_
                         _hd1758017614_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1758817632_
                                                 _target1758517627_
                                                 '()
                                                 '()))
                                              (_g1757317606_ _g1757417609_)))))
                                    (_g1757317606_ _g1757417609_))))
                            (_g1757317606_ _g1757417609_))))
                    (_g1757317606_ _g1757417609_)))))
        (_g1757217773_ _stx17570_))))
  (define gxc#xform-operands
    (lambda (_stx17526_ . _args17527_)
      (let* ((_g1752917540_
              (lambda (_g1753017537_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1753017537_)))
             (_g1752817567_
              (lambda (_g1753017543_)
                (if (gx#stx-pair? _g1753017543_)
                    (let ((_e1753317545_ (gx#stx-e _g1753017543_)))
                      (let ((_hd1753417548_ (##car _e1753317545_))
                            (_tl1753517550_ (##cdr _e1753317545_)))
                        ((lambda (_L17553_ _L17554_)
                           (let ((_rands17565_
                                  (map (gxc#xform-apply-compile-e _args17527_)
                                       _L17553_)))
                             (gxc#xform-wrap-source
                              (cons _L17554_ _rands17565_)
                              _stx17526_)))
                         _tl1753517550_
                         _hd1753417548_)))
                    (_g1752917540_ _g1753017543_)))))
        (_g1752817567_ _stx17526_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx17456_ . _args17457_)
      (let* ((_g1745917476_
              (lambda (_g1746017473_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1746017473_)))
             (_g1745817523_
              (lambda (_g1746017479_)
                (if (gx#stx-pair? _g1746017479_)
                    (let ((_e1746317481_ (gx#stx-e _g1746017479_)))
                      (let ((_hd1746417484_ (##car _e1746317481_))
                            (_tl1746517486_ (##cdr _e1746317481_)))
                        (if (gx#stx-pair? _tl1746517486_)
                            (let ((_e1746617489_ (gx#stx-e _tl1746517486_)))
                              (let ((_hd1746717492_ (##car _e1746617489_))
                                    (_tl1746817494_ (##cdr _e1746617489_)))
                                (if (gx#stx-pair? _tl1746817494_)
                                    (let ((_e1746917497_
                                           (gx#stx-e _tl1746817494_)))
                                      (let ((_hd1747017500_
                                             (##car _e1746917497_))
                                            (_tl1747117502_
                                             (##cdr _e1746917497_)))
                                        (if (gx#stx-null? _tl1747117502_)
                                            ((lambda (_L17505_ _L17506_)
                                               (let ((_expr17521_
                                                      (apply gxc#compile-e
                                                             _L17505_
                                                             _args17457_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L17506_
                                                              (cons _expr17521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17456_)))
                                             _hd1747017500_
                                             _hd1746717492_)
                                            (_g1745917476_ _g1746017479_))))
                                    (_g1745917476_ _g1746017479_))))
                            (_g1745917476_ _g1746017479_))))
                    (_g1745917476_ _g1746017479_)))))
        (_g1745817523_ _stx17456_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx17387_)
      (let* ((_g1738917406_
              (lambda (_g1739017403_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1739017403_)))
             (_g1738817453_
              (lambda (_g1739017409_)
                (if (gx#stx-pair? _g1739017409_)
                    (let ((_e1739317411_ (gx#stx-e _g1739017409_)))
                      (let ((_hd1739417414_ (##car _e1739317411_))
                            (_tl1739517416_ (##cdr _e1739317411_)))
                        (if (gx#stx-pair? _tl1739517416_)
                            (let ((_e1739617419_ (gx#stx-e _tl1739517416_)))
                              (let ((_hd1739717422_ (##car _e1739617419_))
                                    (_tl1739817424_ (##cdr _e1739617419_)))
                                (if (gx#stx-pair? _tl1739817424_)
                                    (let ((_e1739917427_
                                           (gx#stx-e _tl1739817424_)))
                                      (let ((_hd1740017430_
                                             (##car _e1739917427_))
                                            (_tl1740117432_
                                             (##cdr _e1739917427_)))
                                        (if (gx#stx-null? _tl1740117432_)
                                            ((lambda (_L17435_ _L17436_)
                                               (let ((_sym17451_
                                                      (gxc#identifier-symbol
                                                       _L17436_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym17451_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym17451_
                                                    '#t)
                                                   (gxc#compile-e _L17435_))))
                                             _hd1740017430_
                                             _hd1739717422_)
                                            (_g1738917406_ _g1739017409_))))
                                    (_g1738917406_ _g1739017409_))))
                            (_g1738917406_ _g1739017409_))))
                    (_g1738917406_ _g1739017409_)))))
        (_g1738817453_ _stx17387_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx17334_ _id17335_ _new-id17336_)
      (let* ((_g1733817351_
              (lambda (_g1733917348_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1733917348_)))
             (_g1733717384_
              (lambda (_g1733917354_)
                (if (gx#stx-pair? _g1733917354_)
                    (let ((_e1734117356_ (gx#stx-e _g1733917354_)))
                      (let ((_hd1734217359_ (##car _e1734117356_))
                            (_tl1734317361_ (##cdr _e1734117356_)))
                        (if (gx#stx-pair? _tl1734317361_)
                            (let ((_e1734417364_ (gx#stx-e _tl1734317361_)))
                              (let ((_hd1734517367_ (##car _e1734417364_))
                                    (_tl1734617369_ (##cdr _e1734417364_)))
                                (if (gx#stx-null? _tl1734617369_)
                                    ((lambda (_L17372_)
                                       (if (gx#free-identifier=?
                                            _L17372_
                                            _id17335_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id17336_ '()))
                                            _stx17334_)
                                           _stx17334_))
                                     _hd1734517367_)
                                    (_g1733817351_ _g1733917354_))))
                            (_g1733817351_ _g1733917354_))))
                    (_g1733817351_ _g1733917354_)))))
        (_g1733717384_ _stx17334_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx17275_ _subst17276_)
      (let* ((_g1727817291_
              (lambda (_g1727917288_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1727917288_)))
             (_g1727717331_
              (lambda (_g1727917294_)
                (if (gx#stx-pair? _g1727917294_)
                    (let ((_e1728117296_ (gx#stx-e _g1727917294_)))
                      (let ((_hd1728217299_ (##car _e1728117296_))
                            (_tl1728317301_ (##cdr _e1728117296_)))
                        (if (gx#stx-pair? _tl1728317301_)
                            (let ((_e1728417304_ (gx#stx-e _tl1728317301_)))
                              (let ((_hd1728517307_ (##car _e1728417304_))
                                    (_tl1728617309_ (##cdr _e1728417304_)))
                                (if (gx#stx-null? _tl1728617309_)
                                    ((lambda (_L17312_)
                                       (let ((_$e17326_
                                              (find (lambda (_sub17324_)
                                                      (gx#free-identifier=?
                                                       _L17312_
                                                       (car _sub17324_)))
                                                    _subst17276_)))
                                         (if _$e17326_
                                             ((lambda (_sub17329_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub17329_)
                                                             '()))
                                                 _stx17275_))
                                              _$e17326_)
                                             _stx17275_)))
                                     _hd1728517307_)
                                    (_g1727817291_ _g1727917294_))))
                            (_g1727817291_ _g1727917294_))))
                    (_g1727817291_ _g1727917294_)))))
        (_g1727717331_ _stx17275_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx17203_ _id17204_ _new-id17205_)
      (let* ((_g1720717224_
              (lambda (_g1720817221_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1720817221_)))
             (_g1720617272_
              (lambda (_g1720817227_)
                (if (gx#stx-pair? _g1720817227_)
                    (let ((_e1721117229_ (gx#stx-e _g1720817227_)))
                      (let ((_hd1721217232_ (##car _e1721117229_))
                            (_tl1721317234_ (##cdr _e1721117229_)))
                        (if (gx#stx-pair? _tl1721317234_)
                            (let ((_e1721417237_ (gx#stx-e _tl1721317234_)))
                              (let ((_hd1721517240_ (##car _e1721417237_))
                                    (_tl1721617242_ (##cdr _e1721417237_)))
                                (if (gx#stx-pair? _tl1721617242_)
                                    (let ((_e1721717245_
                                           (gx#stx-e _tl1721617242_)))
                                      (let ((_hd1721817248_
                                             (##car _e1721717245_))
                                            (_tl1721917250_
                                             (##cdr _e1721717245_)))
                                        (if (gx#stx-null? _tl1721917250_)
                                            ((lambda (_L17253_ _L17254_)
                                               (let ((_new-expr17269_
                                                      (gxc#compile-e
                                                       _L17253_
                                                       _id17204_
                                                       _new-id17205_))
                                                     (_new-xid17270_
                                                      (if (gx#free-identifier=?
                                                           _L17254_
                                                           _id17204_)
                                                          _new-id17205_
                                                          _L17254_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17270_
                                                              (cons _new-expr17269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17203_)))
                                             _hd1721817248_
                                             _hd1721517240_)
                                            (_g1720717224_ _g1720817227_))))
                                    (_g1720717224_ _g1720817227_))))
                            (_g1720717224_ _g1720817227_))))
                    (_g1720717224_ _g1720817227_)))))
        (_g1720617272_ _stx17203_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx17127_ _subst17128_)
      (let* ((_g1713017147_
              (lambda (_g1713117144_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1713117144_)))
             (_g1712917200_
              (lambda (_g1713117150_)
                (if (gx#stx-pair? _g1713117150_)
                    (let ((_e1713417152_ (gx#stx-e _g1713117150_)))
                      (let ((_hd1713517155_ (##car _e1713417152_))
                            (_tl1713617157_ (##cdr _e1713417152_)))
                        (if (gx#stx-pair? _tl1713617157_)
                            (let ((_e1713717160_ (gx#stx-e _tl1713617157_)))
                              (let ((_hd1713817163_ (##car _e1713717160_))
                                    (_tl1713917165_ (##cdr _e1713717160_)))
                                (if (gx#stx-pair? _tl1713917165_)
                                    (let ((_e1714017168_
                                           (gx#stx-e _tl1713917165_)))
                                      (let ((_hd1714117171_
                                             (##car _e1714017168_))
                                            (_tl1714217173_
                                             (##cdr _e1714017168_)))
                                        (if (gx#stx-null? _tl1714217173_)
                                            ((lambda (_L17176_ _L17177_)
                                               (let ((_new-expr17197_
                                                      (gxc#compile-e
                                                       _L17176_
                                                       _subst17128_))
                                                     (_new-xid17198_
                                                      (let ((_$e17194_
                                                             (find (lambda (_sub17192_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L17177_ (car _sub17192_)))
                           _subst17128_)))
                (if _$e17194_ (cdr _$e17194_) _L17177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17198_
                                                              (cons _new-expr17197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17127_)))
                                             _hd1714117171_
                                             _hd1713817163_)
                                            (_g1713017147_ _g1713117150_))))
                                    (_g1713017147_ _g1713117150_))))
                            (_g1713017147_ _g1713117150_))))
                    (_g1713017147_ _g1713117150_)))))
        (_g1712917200_ _stx17127_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx17073_ _ht17074_)
      (let* ((_g1707617089_
              (lambda (_g1707717086_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1707717086_)))
             (_g1707517124_
              (lambda (_g1707717092_)
                (if (gx#stx-pair? _g1707717092_)
                    (let ((_e1707917094_ (gx#stx-e _g1707717092_)))
                      (let ((_hd1708017097_ (##car _e1707917094_))
                            (_tl1708117099_ (##cdr _e1707917094_)))
                        (if (gx#stx-pair? _tl1708117099_)
                            (let ((_e1708217102_ (gx#stx-e _tl1708117099_)))
                              (let ((_hd1708317105_ (##car _e1708217102_))
                                    (_tl1708417107_ (##cdr _e1708217102_)))
                                (if (gx#stx-null? _tl1708417107_)
                                    ((lambda (_L17110_)
                                       (let ((_eid17122_
                                              (gxc#identifier-symbol
                                               _L17110_)))
                                         (hash-update!
                                          _ht17074_
                                          _eid17122_
                                          1+
                                          '0)))
                                     _hd1708317105_)
                                    (_g1707617089_ _g1707717092_))))
                            (_g1707617089_ _g1707717092_))))
                    (_g1707617089_ _g1707717092_)))))
        (_g1707517124_ _stx17073_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx17003_ _ht17004_)
      (let* ((_g1700617023_
              (lambda (_g1700717020_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1700717020_)))
             (_g1700517070_
              (lambda (_g1700717026_)
                (if (gx#stx-pair? _g1700717026_)
                    (let ((_e1701017028_ (gx#stx-e _g1700717026_)))
                      (let ((_hd1701117031_ (##car _e1701017028_))
                            (_tl1701217033_ (##cdr _e1701017028_)))
                        (if (gx#stx-pair? _tl1701217033_)
                            (let ((_e1701317036_ (gx#stx-e _tl1701217033_)))
                              (let ((_hd1701417039_ (##car _e1701317036_))
                                    (_tl1701517041_ (##cdr _e1701317036_)))
                                (if (gx#stx-pair? _tl1701517041_)
                                    (let ((_e1701617044_
                                           (gx#stx-e _tl1701517041_)))
                                      (let ((_hd1701717047_
                                             (##car _e1701617044_))
                                            (_tl1701817049_
                                             (##cdr _e1701617044_)))
                                        (if (gx#stx-null? _tl1701817049_)
                                            ((lambda (_L17052_ _L17053_)
                                               (let ((_eid17068_
                                                      (gxc#identifier-symbol
                                                       _L17053_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht17004_
                                                    _eid17068_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L17052_
                                                    _ht17004_))))
                                             _hd1701717047_
                                             _hd1701417039_)
                                            (_g1700617023_ _g1700717026_))))
                                    (_g1700617023_ _g1700717026_))))
                            (_g1700617023_ _g1700717026_))))
                    (_g1700617023_ _g1700717026_)))))
        (_g1700517070_ _stx17003_))))
  (define gxc#find-body%
    (lambda (_stx16916_ _arg16917_)
      (let* ((_g1691916938_
              (lambda (_g1692016935_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1692016935_)))
             (_g1691817000_
              (lambda (_g1692016941_)
                (if (gx#stx-pair? _g1692016941_)
                    (let ((_e1692216943_ (gx#stx-e _g1692016941_)))
                      (let ((_hd1692316946_ (##car _e1692216943_))
                            (_tl1692416948_ (##cdr _e1692216943_)))
                        (if (gx#stx-pair/null? _tl1692416948_)
                            (let ((_g18366_
                                   (gx#syntax-split-splice _tl1692416948_ '0)))
                              (begin
                                (let ((_g18367_
                                       (if (##values? _g18366_)
                                           (##vector-length _g18366_)
                                           1)))
                                  (if (not (##fx= _g18367_ 2))
                                      (error "Context expects 2 values"
                                             _g18367_)))
                                (let ((_target1692516951_
                                       (##vector-ref _g18366_ 0))
                                      (_tl1692716953_
                                       (##vector-ref _g18366_ 1)))
                                  (if (gx#stx-null? _tl1692716953_)
                                      (letrec ((_loop1692816956_
                                                (lambda (_hd1692616959_
                                                         _expr1693216961_)
                                                  (if (gx#stx-pair?
                                                       _hd1692616959_)
                                                      (let ((_e1692916964_
                                                             (gx#stx-e
                                                              _hd1692616959_)))
                                                        (let ((_lp-hd1693016967_
                                                               (##car _e1692916964_))
                                                              (_lp-tl1693116969_
                                                               (##cdr _e1692916964_)))
                                                          (_loop1692816956_
                                                           _lp-tl1693116969_
                                                           (cons _lp-hd1693016967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1693216961_))))
              (let ((_expr1693316972_ (reverse _expr1693216961_)))
                ((lambda (_L16975_)
                   (ormap1 (lambda (_g1698816990_)
                             (gxc#compile-e _g1698816990_ _arg16917_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1699216995_ _g1699316997_)
                                       (cons _g1699216995_ _g1699316997_))
                                     '()
                                     _L16975_))))
                 _expr1693316972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1692816956_
                                         _target1692516951_
                                         '()))
                                      (_g1691916938_ _g1692016941_)))))
                            (_g1691916938_ _g1692016941_))))
                    (_g1691916938_ _g1692016941_)))))
        (_g1691817000_ _stx16916_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx16848_ _arg16849_)
      (let* ((_g1685116868_
              (lambda (_g1685216865_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1685216865_)))
             (_g1685016913_
              (lambda (_g1685216871_)
                (if (gx#stx-pair? _g1685216871_)
                    (let ((_e1685516873_ (gx#stx-e _g1685216871_)))
                      (let ((_hd1685616876_ (##car _e1685516873_))
                            (_tl1685716878_ (##cdr _e1685516873_)))
                        (if (gx#stx-pair? _tl1685716878_)
                            (let ((_e1685816881_ (gx#stx-e _tl1685716878_)))
                              (let ((_hd1685916884_ (##car _e1685816881_))
                                    (_tl1686016886_ (##cdr _e1685816881_)))
                                (if (gx#stx-pair? _tl1686016886_)
                                    (let ((_e1686116889_
                                           (gx#stx-e _tl1686016886_)))
                                      (let ((_hd1686216892_
                                             (##car _e1686116889_))
                                            (_tl1686316894_
                                             (##cdr _e1686116889_)))
                                        (if (gx#stx-null? _tl1686316894_)
                                            ((lambda (_L16897_ _L16898_)
                                               (gxc#compile-e
                                                _L16897_
                                                _arg16849_))
                                             _hd1686216892_
                                             _hd1685916884_)
                                            (_g1685116868_ _g1685216871_))))
                                    (_g1685116868_ _g1685216871_))))
                            (_g1685116868_ _g1685216871_))))
                    (_g1685116868_ _g1685216871_)))))
        (_g1685016913_ _stx16848_))))
  (define gxc#find-lambda%
    (lambda (_stx16780_ _arg16781_)
      (let* ((_g1678316800_
              (lambda (_g1678416797_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1678416797_)))
             (_g1678216845_
              (lambda (_g1678416803_)
                (if (gx#stx-pair? _g1678416803_)
                    (let ((_e1678716805_ (gx#stx-e _g1678416803_)))
                      (let ((_hd1678816808_ (##car _e1678716805_))
                            (_tl1678916810_ (##cdr _e1678716805_)))
                        (if (gx#stx-pair? _tl1678916810_)
                            (let ((_e1679016813_ (gx#stx-e _tl1678916810_)))
                              (let ((_hd1679116816_ (##car _e1679016813_))
                                    (_tl1679216818_ (##cdr _e1679016813_)))
                                (if (gx#stx-pair? _tl1679216818_)
                                    (let ((_e1679316821_
                                           (gx#stx-e _tl1679216818_)))
                                      (let ((_hd1679416824_
                                             (##car _e1679316821_))
                                            (_tl1679516826_
                                             (##cdr _e1679316821_)))
                                        (if (gx#stx-null? _tl1679516826_)
                                            ((lambda (_L16829_ _L16830_)
                                               (gxc#compile-e
                                                _L16829_
                                                _arg16781_))
                                             _hd1679416824_
                                             _hd1679116816_)
                                            (_g1678316800_ _g1678416803_))))
                                    (_g1678316800_ _g1678416803_))))
                            (_g1678316800_ _g1678416803_))))
                    (_g1678316800_ _g1678416803_)))))
        (_g1678216845_ _stx16780_))))
  (define gxc#find-case-lambda%
    (lambda (_stx16662_ _arg16663_)
      (let* ((_g1666516693_
              (lambda (_g1666616690_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1666616690_)))
             (_g1666416777_
              (lambda (_g1666616696_)
                (if (gx#stx-pair? _g1666616696_)
                    (let ((_e1666916698_ (gx#stx-e _g1666616696_)))
                      (let ((_hd1667016701_ (##car _e1666916698_))
                            (_tl1667116703_ (##cdr _e1666916698_)))
                        (if (gx#stx-pair/null? _tl1667116703_)
                            (let ((_g18368_
                                   (gx#syntax-split-splice _tl1667116703_ '0)))
                              (begin
                                (let ((_g18369_
                                       (if (##values? _g18368_)
                                           (##vector-length _g18368_)
                                           1)))
                                  (if (not (##fx= _g18369_ 2))
                                      (error "Context expects 2 values"
                                             _g18369_)))
                                (let ((_target1667216706_
                                       (##vector-ref _g18368_ 0))
                                      (_tl1667416708_
                                       (##vector-ref _g18368_ 1)))
                                  (if (gx#stx-null? _tl1667416708_)
                                      (letrec ((_loop1667516711_
                                                (lambda (_hd1667316714_
                                                         _body1667916716_
                                                         _hd1668016718_)
                                                  (if (gx#stx-pair?
                                                       _hd1667316714_)
                                                      (let ((_e1667616721_
                                                             (gx#stx-e
                                                              _hd1667316714_)))
                                                        (let ((_lp-hd1667716724_
                                                               (##car _e1667616721_))
                                                              (_lp-tl1667816726_
                                                               (##cdr _e1667616721_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1667716724_)
                                                              (let ((_e1668316729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1667716724_)))
                        (let ((_hd1668416732_ (##car _e1668316729_))
                              (_tl1668516734_ (##cdr _e1668316729_)))
                          (if (gx#stx-pair? _tl1668516734_)
                              (let ((_e1668616737_ (gx#stx-e _tl1668516734_)))
                                (let ((_hd1668716740_ (##car _e1668616737_))
                                      (_tl1668816742_ (##cdr _e1668616737_)))
                                  (if (gx#stx-null? _tl1668816742_)
                                      (_loop1667516711_
                                       _lp-tl1667816726_
                                       (cons _hd1668716740_ _body1667916716_)
                                       (cons _hd1668416732_ _hd1668016718_))
                                      (_g1666516693_ _g1666616696_))))
                              (_g1666516693_ _g1666616696_))))
                      (_g1666516693_ _g1666616696_))))
              (let ((_body1668116745_ (reverse _body1667916716_))
                    (_hd1668216747_ (reverse _hd1668016718_)))
                ((lambda (_L16750_ _L16751_)
                   (ormap1 (lambda (_g1676516767_)
                             (gxc#compile-e _g1676516767_ _arg16663_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1676916772_ _g1677016774_)
                                       (cons _g1676916772_ _g1677016774_))
                                     '()
                                     _L16750_))))
                 _body1668116745_
                 _hd1668216747_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1667516711_
                                         _target1667216706_
                                         '()
                                         '()))
                                      (_g1666516693_ _g1666616696_)))))
                            (_g1666516693_ _g1666616696_))))
                    (_g1666516693_ _g1666616696_)))))
        (_g1666416777_ _stx16662_))))
  (define gxc#find-let-values%
    (lambda (_stx16512_ _arg16513_)
      (let* ((_g1651516550_
              (lambda (_g1651616547_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1651616547_)))
             (_g1651416659_
              (lambda (_g1651616553_)
                (if (gx#stx-pair? _g1651616553_)
                    (let ((_e1652016555_ (gx#stx-e _g1651616553_)))
                      (let ((_hd1652116558_ (##car _e1652016555_))
                            (_tl1652216560_ (##cdr _e1652016555_)))
                        (if (gx#stx-pair? _tl1652216560_)
                            (let ((_e1652316563_ (gx#stx-e _tl1652216560_)))
                              (let ((_hd1652416566_ (##car _e1652316563_))
                                    (_tl1652516568_ (##cdr _e1652316563_)))
                                (if (gx#stx-pair/null? _hd1652416566_)
                                    (let ((_g18370_
                                           (gx#syntax-split-splice
                                            _hd1652416566_
                                            '0)))
                                      (begin
                                        (let ((_g18371_
                                               (if (##values? _g18370_)
                                                   (##vector-length _g18370_)
                                                   1)))
                                          (if (not (##fx= _g18371_ 2))
                                              (error "Context expects 2 values"
                                                     _g18371_)))
                                        (let ((_target1652616571_
                                               (##vector-ref _g18370_ 0))
                                              (_tl1652816573_
                                               (##vector-ref _g18370_ 1)))
                                          (if (gx#stx-null? _tl1652816573_)
                                              (letrec ((_loop1652916576_
                                                        (lambda (_hd1652716579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1653316581_
                         _bind1653416583_)
                  (if (gx#stx-pair? _hd1652716579_)
                      (let ((_e1653016586_ (gx#stx-e _hd1652716579_)))
                        (let ((_lp-hd1653116589_ (##car _e1653016586_))
                              (_lp-tl1653216591_ (##cdr _e1653016586_)))
                          (if (gx#stx-pair? _lp-hd1653116589_)
                              (let ((_e1653716594_
                                     (gx#stx-e _lp-hd1653116589_)))
                                (let ((_hd1653816597_ (##car _e1653716594_))
                                      (_tl1653916599_ (##cdr _e1653716594_)))
                                  (if (gx#stx-pair? _tl1653916599_)
                                      (let ((_e1654016602_
                                             (gx#stx-e _tl1653916599_)))
                                        (let ((_hd1654116605_
                                               (##car _e1654016602_))
                                              (_tl1654216607_
                                               (##cdr _e1654016602_)))
                                          (if (gx#stx-null? _tl1654216607_)
                                              (_loop1652916576_
                                               _lp-tl1653216591_
                                               (cons _hd1654116605_
                                                     _expr1653316581_)
                                               (cons _hd1653816597_
                                                     _bind1653416583_))
                                              (_g1651516550_ _g1651616553_))))
                                      (_g1651516550_ _g1651616553_))))
                              (_g1651516550_ _g1651616553_))))
                      (let ((_expr1653516610_ (reverse _expr1653316581_))
                            (_bind1653616612_ (reverse _bind1653416583_)))
                        (if (gx#stx-pair? _tl1652516568_)
                            (let ((_e1654316615_ (gx#stx-e _tl1652516568_)))
                              (let ((_hd1654416618_ (##car _e1654316615_))
                                    (_tl1654516620_ (##cdr _e1654316615_)))
                                (if (gx#stx-null? _tl1654516620_)
                                    ((lambda (_L16623_ _L16624_ _L16625_)
                                       (let ((_$e16656_
                                              (ormap1 (lambda (_g1664416646_)
                                                        (gxc#compile-e
                                                         _g1664416646_
                                                         _arg16513_))
                                                      (begin
                                                        '#!void
                                                        (foldr1 (lambda (_g1664816651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1664916653_)
                          (cons _g1664816651_ _g1664916653_))
                        '()
                        _L16624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e16656_
                                             _$e16656_
                                             (gxc#compile-e
                                              _L16623_
                                              _arg16513_))))
                                     _hd1654416618_
                                     _expr1653516610_
                                     _bind1653616612_)
                                    (_g1651516550_ _g1651616553_))))
                            (_g1651516550_ _g1651616553_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1652916576_
                                                 _target1652616571_
                                                 '()
                                                 '()))
                                              (_g1651516550_ _g1651616553_)))))
                                    (_g1651516550_ _g1651616553_))))
                            (_g1651516550_ _g1651616553_))))
                    (_g1651516550_ _g1651616553_)))))
        (_g1651416659_ _stx16512_))))
  (define gxc#find-setq%
    (lambda (_stx16444_ _arg16445_)
      (let* ((_g1644716464_
              (lambda (_g1644816461_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1644816461_)))
             (_g1644616509_
              (lambda (_g1644816467_)
                (if (gx#stx-pair? _g1644816467_)
                    (let ((_e1645116469_ (gx#stx-e _g1644816467_)))
                      (let ((_hd1645216472_ (##car _e1645116469_))
                            (_tl1645316474_ (##cdr _e1645116469_)))
                        (if (gx#stx-pair? _tl1645316474_)
                            (let ((_e1645416477_ (gx#stx-e _tl1645316474_)))
                              (let ((_hd1645516480_ (##car _e1645416477_))
                                    (_tl1645616482_ (##cdr _e1645416477_)))
                                (if (gx#stx-pair? _tl1645616482_)
                                    (let ((_e1645716485_
                                           (gx#stx-e _tl1645616482_)))
                                      (let ((_hd1645816488_
                                             (##car _e1645716485_))
                                            (_tl1645916490_
                                             (##cdr _e1645716485_)))
                                        (if (gx#stx-null? _tl1645916490_)
                                            ((lambda (_L16493_ _L16494_)
                                               (gxc#compile-e
                                                _L16493_
                                                _arg16445_))
                                             _hd1645816488_
                                             _hd1645516480_)
                                            (_g1644716464_ _g1644816467_))))
                                    (_g1644716464_ _g1644816467_))))
                            (_g1644716464_ _g1644816467_))))
                    (_g1644716464_ _g1644816467_)))))
        (_g1644616509_ _stx16444_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx16388_ _ids16389_)
      (let* ((_g1639116404_
              (lambda (_g1639216401_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1639216401_)))
             (_g1639016441_
              (lambda (_g1639216407_)
                (if (gx#stx-pair? _g1639216407_)
                    (let ((_e1639416409_ (gx#stx-e _g1639216407_)))
                      (let ((_hd1639516412_ (##car _e1639416409_))
                            (_tl1639616414_ (##cdr _e1639416409_)))
                        (if (gx#stx-pair? _tl1639616414_)
                            (let ((_e1639716417_ (gx#stx-e _tl1639616414_)))
                              (let ((_hd1639816420_ (##car _e1639716417_))
                                    (_tl1639916422_ (##cdr _e1639716417_)))
                                (if (gx#stx-null? _tl1639916422_)
                                    ((lambda (_L16425_)
                                       (find (lambda (_g1643616438_)
                                               (gx#free-identifier=?
                                                _L16425_
                                                _g1643616438_))
                                             _ids16389_))
                                     _hd1639816420_)
                                    (_g1639116404_ _g1639216407_))))
                            (_g1639116404_ _g1639216407_))))
                    (_g1639116404_ _g1639216407_)))))
        (_g1639016441_ _stx16388_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx16312_ _ids16313_)
      (let* ((_g1631516332_
              (lambda (_g1631616329_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1631616329_)))
             (_g1631416385_
              (lambda (_g1631616335_)
                (if (gx#stx-pair? _g1631616335_)
                    (let ((_e1631916337_ (gx#stx-e _g1631616335_)))
                      (let ((_hd1632016340_ (##car _e1631916337_))
                            (_tl1632116342_ (##cdr _e1631916337_)))
                        (if (gx#stx-pair? _tl1632116342_)
                            (let ((_e1632216345_ (gx#stx-e _tl1632116342_)))
                              (let ((_hd1632316348_ (##car _e1632216345_))
                                    (_tl1632416350_ (##cdr _e1632216345_)))
                                (if (gx#stx-pair? _tl1632416350_)
                                    (let ((_e1632516353_
                                           (gx#stx-e _tl1632416350_)))
                                      (let ((_hd1632616356_
                                             (##car _e1632516353_))
                                            (_tl1632716358_
                                             (##cdr _e1632516353_)))
                                        (if (gx#stx-null? _tl1632716358_)
                                            ((lambda (_L16361_ _L16362_)
                                               (let ((_$e16382_
                                                      (find (lambda (_g1637716379_)
                                                              (gx#free-identifier=?
                                                               _L16362_
                                                               _g1637716379_))
                                                            _ids16313_)))
                                                 (if _$e16382_
                                                     _$e16382_
                                                     (gxc#compile-e
                                                      _L16361_
                                                      _ids16313_))))
                                             _hd1632616356_
                                             _hd1632316348_)
                                            (_g1631516332_ _g1631616335_))))
                                    (_g1631516332_ _g1631616335_))))
                            (_g1631516332_ _g1631616335_))))
                    (_g1631516332_ _g1631616335_)))))
        (_g1631416385_ _stx16312_)))))
