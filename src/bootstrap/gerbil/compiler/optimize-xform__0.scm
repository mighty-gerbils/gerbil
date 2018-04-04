(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18362_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl18362_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl18362_ '%#lambda gxc#xform-identity)
           (table-set! _tbl18362_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl18362_ '%#let-values gxc#xform-identity)
           (table-set! _tbl18362_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl18362_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl18362_ '%#quote gxc#xform-identity)
           (table-set! _tbl18362_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18362_ '%#call gxc#xform-identity)
           (table-set! _tbl18362_ '%#if gxc#xform-identity)
           (table-set! _tbl18362_ '%#ref gxc#xform-identity)
           (table-set! _tbl18362_ '%#set! gxc#xform-identity)
           (table-set! _tbl18362_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl18362_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl18362_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl18362_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl18362_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl18362_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl18362_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl18362_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl18362_)))))
  (define gxc#&identity-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl18358_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl18358_ '%#begin gxc#xform-identity)
           (table-set! _tbl18358_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl18358_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl18358_ '%#module gxc#xform-identity)
           (table-set! _tbl18358_ '%#import gxc#xform-identity)
           (table-set! _tbl18358_ '%#export gxc#xform-identity)
           (table-set! _tbl18358_ '%#provide gxc#xform-identity)
           (table-set! _tbl18358_ '%#extern gxc#xform-identity)
           (table-set! _tbl18358_ '%#define-values gxc#xform-identity)
           (table-set! _tbl18358_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl18358_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl18358_ '%#declare gxc#xform-identity)
           _tbl18358_)))))
  (define gxc#&identity
    (##make-promise
     (lambda ()
       (let ((_tbl18354_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18354_ (force gxc#&identity-special-form))
           (hash-copy! _tbl18354_ (force gxc#&identity-expression))
           _tbl18354_)))))
  (define gxc#&basic-xform-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18350_ (make-table 'test: eq?)))
         (begin
           (table-set!
            _tbl18350_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl18350_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl18350_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl18350_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl18350_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl18350_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl18350_ '%#quote gxc#xform-identity)
           (table-set! _tbl18350_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18350_ '%#call gxc#xform-operands)
           (table-set! _tbl18350_ '%#if gxc#xform-operands)
           (table-set! _tbl18350_ '%#ref gxc#xform-identity)
           (table-set! _tbl18350_ '%#set! gxc#xform-setq%)
           (table-set! _tbl18350_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl18350_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl18350_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl18350_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl18350_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl18350_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl18350_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl18350_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl18350_)))))
  (define gxc#&basic-xform
    (##make-promise
     (lambda ()
       (let ((_tbl18346_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18346_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl18346_ (force gxc#&identity))
           (table-set! _tbl18346_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18346_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl18346_ '%#module gxc#xform-module%)
           (table-set! _tbl18346_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl18346_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl18346_)))))
  (define gxc#&collect-mutators
    (##make-promise
     (lambda ()
       (let ((_tbl18342_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18342_ (force gxc#&void))
           (table-set! _tbl18342_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18342_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl18342_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl18342_ '%#module gxc#collect-module%)
           (table-set! _tbl18342_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl18342_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl18342_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18342_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18342_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl18342_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl18342_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl18342_ '%#call gxc#collect-operands)
           (table-set! _tbl18342_ '%#if gxc#collect-operands)
           (table-set! _tbl18342_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl18342_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl18342_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl18342_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl18342_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl18342_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl18342_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl18342_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl18342_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl18342_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18335_ . _args18337_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18335_ _args18337_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (##make-promise
     (lambda ()
       (let ((_tbl18332_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18332_ (force gxc#&basic-xform-expression))
           (table-set! _tbl18332_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18332_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl18332_ '%#set! gxc#expression-subst-setq%)
           _tbl18332_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx18325_ . _args18327_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18325_ _args18327_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (##make-promise
     (lambda ()
       (let ((_tbl18322_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18322_ (force gxc#&expression-subst))
           (table-set! _tbl18322_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl18322_ '%#set! gxc#expression-subst*-setq%)
           _tbl18322_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx18315_ . _args18317_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18315_ _args18317_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18312_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18312_ (force gxc#&false-expression))
           (table-set! _tbl18312_ '%#begin gxc#find-body%)
           (table-set!
            _tbl18312_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl18312_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl18312_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl18312_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl18312_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl18312_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl18312_ '%#call gxc#find-body%)
           (table-set! _tbl18312_ '%#if gxc#find-body%)
           (table-set! _tbl18312_ '%#set! gxc#find-setq%)
           (table-set! _tbl18312_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl18312_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl18312_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl18312_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl18312_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl18312_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl18312_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl18312_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl18312_)))))
  (define gxc#&find-var-refs
    (##make-promise
     (lambda ()
       (let ((_tbl18308_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18308_ (force gxc#&find-expression))
           (table-set! _tbl18308_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl18308_ '%#set! gxc#find-var-refs-setq%)
           _tbl18308_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx18301_ . _args18303_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18301_ _args18303_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (##make-promise
     (lambda ()
       (let ((_tbl18298_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18298_ (force gxc#&collect-expression-refs))
           (table-set! _tbl18298_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl18298_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl18298_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx18291_ . _args18293_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18291_ _args18293_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx18288_ . _args18289_) _stx18288_))
  (define gxc#xform-wrap-source
    (lambda (_stx18285_ _src-stx18286_)
      (gx#stx-wrap-source _stx18285_ (gx#stx-source _src-stx18286_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18279_)
      (lambda (_g1828018282_)
        (apply gxc#compile-e _g1828018282_ _args18279_))))
  (define gxc#xform-begin%
    (lambda (_stx18238_ . _args18239_)
      (let* ((_g1824118251_
              (lambda (_g1824218248_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1824218248_)))
             (_g1824018276_
              (lambda (_g1824218254_)
                (if (gx#stx-pair? _g1824218254_)
                    (let ((_e1824418256_ (gx#stx-e _g1824218254_)))
                      (let ((_hd1824518259_ (##car _e1824418256_))
                            (_tl1824618261_ (##cdr _e1824418256_)))
                        ((lambda (_L18264_)
                           (let ((_forms18274_
                                  (map (gxc#xform-apply-compile-e _args18239_)
                                       _L18264_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms18274_)
                              _stx18238_)))
                         _tl1824618261_)))
                    (_g1824118251_ _g1824218254_)))))
        (_g1824018276_ _stx18238_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx18196_ . _args18197_)
      (let* ((_g1819918209_
              (lambda (_g1820018206_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1820018206_)))
             (_g1819818235_
              (lambda (_g1820018212_)
                (if (gx#stx-pair? _g1820018212_)
                    (let ((_e1820218214_ (gx#stx-e _g1820018212_)))
                      (let ((_hd1820318217_ (##car _e1820218214_))
                            (_tl1820418219_ (##cdr _e1820218214_)))
                        ((lambda (_L18222_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms18233_
                                     (map (gxc#xform-apply-compile-e
                                           _args18197_)
                                          _L18222_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms18233_)
                                 _stx18196_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1820418219_)))
                    (_g1819918209_ _g1820018212_)))))
        (_g1819818235_ _stx18196_))))
  (define gxc#xform-module%
    (lambda (_stx18133_ . _args18134_)
      (let* ((_g1813618150_
              (lambda (_g1813718147_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1813718147_)))
             (_g1813518193_
              (lambda (_g1813718153_)
                (if (gx#stx-pair? _g1813718153_)
                    (let ((_e1814018155_ (gx#stx-e _g1813718153_)))
                      (let ((_hd1814118158_ (##car _e1814018155_))
                            (_tl1814218160_ (##cdr _e1814018155_)))
                        (if (gx#stx-pair? _tl1814218160_)
                            (let ((_e1814318163_ (gx#stx-e _tl1814218160_)))
                              (let ((_hd1814418166_ (##car _e1814318163_))
                                    (_tl1814518168_ (##cdr _e1814318163_)))
                                ((lambda (_L18171_ _L18172_)
                                   (let* ((_ctx18185_
                                           (gx#syntax-local-e__0 _L18172_))
                                          (_code18187_
                                           (##structure-ref
                                            _ctx18185_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code18190_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code18187_
                                                     _args18134_))
                                            gx#current-expander-context
                                            _ctx18185_)))
                                     (begin
                                       (##structure-set!
                                        _ctx18185_
                                        _code18190_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L18172_
                                                    (cons _code18190_ '())))
                                        _stx18133_))))
                                 _tl1814518168_
                                 _hd1814418166_)))
                            (_g1813618150_ _g1813718153_))))
                    (_g1813618150_ _g1813718153_)))))
        (_g1813518193_ _stx18133_))))
  (define gxc#xform-define-values%
    (lambda (_stx18063_ . _args18064_)
      (let* ((_g1806618083_
              (lambda (_g1806718080_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1806718080_)))
             (_g1806518130_
              (lambda (_g1806718086_)
                (if (gx#stx-pair? _g1806718086_)
                    (let ((_e1807018088_ (gx#stx-e _g1806718086_)))
                      (let ((_hd1807118091_ (##car _e1807018088_))
                            (_tl1807218093_ (##cdr _e1807018088_)))
                        (if (gx#stx-pair? _tl1807218093_)
                            (let ((_e1807318096_ (gx#stx-e _tl1807218093_)))
                              (let ((_hd1807418099_ (##car _e1807318096_))
                                    (_tl1807518101_ (##cdr _e1807318096_)))
                                (if (gx#stx-pair? _tl1807518101_)
                                    (let ((_e1807618104_
                                           (gx#stx-e _tl1807518101_)))
                                      (let ((_hd1807718107_
                                             (##car _e1807618104_))
                                            (_tl1807818109_
                                             (##cdr _e1807618104_)))
                                        (if (gx#stx-null? _tl1807818109_)
                                            ((lambda (_L18112_ _L18113_)
                                               (let ((_expr18128_
                                                      (apply gxc#compile-e
                                                             _L18112_
                                                             _args18064_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L18113_
                                                              (cons _expr18128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx18063_)))
                                             _hd1807718107_
                                             _hd1807418099_)
                                            (_g1806618083_ _g1806718086_))))
                                    (_g1806618083_ _g1806718086_))))
                            (_g1806618083_ _g1806718086_))))
                    (_g1806618083_ _g1806718086_)))))
        (_g1806518130_ _stx18063_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx17992_ . _args17993_)
      (let* ((_g1799518012_
              (lambda (_g1799618009_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1799618009_)))
             (_g1799418060_
              (lambda (_g1799618015_)
                (if (gx#stx-pair? _g1799618015_)
                    (let ((_e1799918017_ (gx#stx-e _g1799618015_)))
                      (let ((_hd1800018020_ (##car _e1799918017_))
                            (_tl1800118022_ (##cdr _e1799918017_)))
                        (if (gx#stx-pair? _tl1800118022_)
                            (let ((_e1800218025_ (gx#stx-e _tl1800118022_)))
                              (let ((_hd1800318028_ (##car _e1800218025_))
                                    (_tl1800418030_ (##cdr _e1800218025_)))
                                (if (gx#stx-pair? _tl1800418030_)
                                    (let ((_e1800518033_
                                           (gx#stx-e _tl1800418030_)))
                                      (let ((_hd1800618036_
                                             (##car _e1800518033_))
                                            (_tl1800718038_
                                             (##cdr _e1800518033_)))
                                        (if (gx#stx-null? _tl1800718038_)
                                            ((lambda (_L18041_ _L18042_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr18058_
                                                         (apply gxc#compile-e
                                                                _L18041_
                                                                _args17993_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L18042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr18058_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx17992_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1800618036_
                                             _hd1800318028_)
                                            (_g1799518012_ _g1799618015_))))
                                    (_g1799518012_ _g1799618015_))))
                            (_g1799518012_ _g1799618015_))))
                    (_g1799518012_ _g1799618015_)))))
        (_g1799418060_ _stx17992_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx17922_ . _args17923_)
      (let* ((_g1792517942_
              (lambda (_g1792617939_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1792617939_)))
             (_g1792417989_
              (lambda (_g1792617945_)
                (if (gx#stx-pair? _g1792617945_)
                    (let ((_e1792917947_ (gx#stx-e _g1792617945_)))
                      (let ((_hd1793017950_ (##car _e1792917947_))
                            (_tl1793117952_ (##cdr _e1792917947_)))
                        (if (gx#stx-pair? _tl1793117952_)
                            (let ((_e1793217955_ (gx#stx-e _tl1793117952_)))
                              (let ((_hd1793317958_ (##car _e1793217955_))
                                    (_tl1793417960_ (##cdr _e1793217955_)))
                                (if (gx#stx-pair? _tl1793417960_)
                                    (let ((_e1793517963_
                                           (gx#stx-e _tl1793417960_)))
                                      (let ((_hd1793617966_
                                             (##car _e1793517963_))
                                            (_tl1793717968_
                                             (##cdr _e1793517963_)))
                                        (if (gx#stx-null? _tl1793717968_)
                                            ((lambda (_L17971_ _L17972_)
                                               (let ((_expr17987_
                                                      (apply gxc#compile-e
                                                             _L17971_
                                                             _args17923_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L17972_
                                                              (cons _expr17987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17922_)))
                                             _hd1793617966_
                                             _hd1793317958_)
                                            (_g1792517942_ _g1792617945_))))
                                    (_g1792517942_ _g1792617945_))))
                            (_g1792517942_ _g1792617945_))))
                    (_g1792517942_ _g1792617945_)))))
        (_g1792417989_ _stx17922_))))
  (define gxc#xform-lambda%
    (lambda (_stx17865_ . _args17866_)
      (let* ((_g1786817882_
              (lambda (_g1786917879_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1786917879_)))
             (_g1786717919_
              (lambda (_g1786917885_)
                (if (gx#stx-pair? _g1786917885_)
                    (let ((_e1787217887_ (gx#stx-e _g1786917885_)))
                      (let ((_hd1787317890_ (##car _e1787217887_))
                            (_tl1787417892_ (##cdr _e1787217887_)))
                        (if (gx#stx-pair? _tl1787417892_)
                            (let ((_e1787517895_ (gx#stx-e _tl1787417892_)))
                              (let ((_hd1787617898_ (##car _e1787517895_))
                                    (_tl1787717900_ (##cdr _e1787517895_)))
                                ((lambda (_L17903_ _L17904_)
                                   (let ((_body17917_
                                          (map (gxc#xform-apply-compile-e
                                                _args17866_)
                                               _L17903_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L17904_ _body17917_))
                                      _stx17865_)))
                                 _tl1787717900_
                                 _hd1787617898_)))
                            (_g1786817882_ _g1786917885_))))
                    (_g1786817882_ _g1786917885_)))))
        (_g1786717919_ _stx17865_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx17778_ . _args17779_)
      (letrec ((_clause-e17781_
                (lambda (_clause17822_)
                  (let* ((_g1782417835_
                          (lambda (_g1782517832_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1782517832_)))
                         (_g1782317862_
                          (lambda (_g1782517838_)
                            (if (gx#stx-pair? _g1782517838_)
                                (let ((_e1782817840_ (gx#stx-e _g1782517838_)))
                                  (let ((_hd1782917843_ (##car _e1782817840_))
                                        (_tl1783017845_ (##cdr _e1782817840_)))
                                    ((lambda (_L17848_ _L17849_)
                                       (let ((_body17860_
                                              (map (gxc#xform-apply-compile-e
                                                    _args17779_)
                                                   _L17848_)))
                                         (cons _L17849_ _body17860_)))
                                     _tl1783017845_
                                     _hd1782917843_)))
                                (_g1782417835_ _g1782517838_)))))
                    (_g1782317862_ _clause17822_)))))
        (let* ((_g1778317793_
                (lambda (_g1778417790_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1778417790_)))
               (_g1778217819_
                (lambda (_g1778417796_)
                  (if (gx#stx-pair? _g1778417796_)
                      (let ((_e1778617798_ (gx#stx-e _g1778417796_)))
                        (let ((_hd1778717801_ (##car _e1778617798_))
                              (_tl1778817803_ (##cdr _e1778617798_)))
                          ((lambda (_L17806_)
                             (let ((_clauses17817_
                                    (map _clause-e17781_ _L17806_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses17817_)
                                _stx17778_)))
                           _tl1778817803_)))
                      (_g1778317793_ _g1778417796_)))))
          (_g1778217819_ _stx17778_)))))
  (define gxc#xform-let-values%
    (lambda (_stx17572_ . _args17573_)
      (let* ((_g1757517608_
              (lambda (_g1757617605_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1757617605_)))
             (_g1757417775_
              (lambda (_g1757617611_)
                (if (gx#stx-pair? _g1757617611_)
                    (let ((_e1758117613_ (gx#stx-e _g1757617611_)))
                      (let ((_hd1758217616_ (##car _e1758117613_))
                            (_tl1758317618_ (##cdr _e1758117613_)))
                        (if (gx#stx-pair? _tl1758317618_)
                            (let ((_e1758417621_ (gx#stx-e _tl1758317618_)))
                              (let ((_hd1758517624_ (##car _e1758417621_))
                                    (_tl1758617626_ (##cdr _e1758417621_)))
                                (if (gx#stx-pair/null? _hd1758517624_)
                                    (let ((_g18364_
                                           (gx#syntax-split-splice
                                            _hd1758517624_
                                            '0)))
                                      (begin
                                        (let ((_g18365_
                                               (if (##values? _g18364_)
                                                   (##vector-length _g18364_)
                                                   1)))
                                          (if (not (##fx= _g18365_ 2))
                                              (error "Context expects 2 values"
                                                     _g18365_)))
                                        (let ((_target1758717629_
                                               (##vector-ref _g18364_ 0))
                                              (_tl1758917631_
                                               (##vector-ref _g18364_ 1)))
                                          (if (gx#stx-null? _tl1758917631_)
                                              (letrec ((_loop1759017634_
                                                        (lambda (_hd1758817637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1759417639_
                         _hd1759517641_)
                  (if (gx#stx-pair? _hd1758817637_)
                      (let ((_e1759117644_ (gx#stx-e _hd1758817637_)))
                        (let ((_lp-hd1759217647_ (##car _e1759117644_))
                              (_lp-tl1759317649_ (##cdr _e1759117644_)))
                          (if (gx#stx-pair? _lp-hd1759217647_)
                              (let ((_e1759817652_
                                     (gx#stx-e _lp-hd1759217647_)))
                                (let ((_hd1759917655_ (##car _e1759817652_))
                                      (_tl1760017657_ (##cdr _e1759817652_)))
                                  (if (gx#stx-pair? _tl1760017657_)
                                      (let ((_e1760117660_
                                             (gx#stx-e _tl1760017657_)))
                                        (let ((_hd1760217663_
                                               (##car _e1760117660_))
                                              (_tl1760317665_
                                               (##cdr _e1760117660_)))
                                          (if (gx#stx-null? _tl1760317665_)
                                              (_loop1759017634_
                                               _lp-tl1759317649_
                                               (cons _hd1760217663_
                                                     _expr1759417639_)
                                               (cons _hd1759917655_
                                                     _hd1759517641_))
                                              (_g1757517608_ _g1757617611_))))
                                      (_g1757517608_ _g1757617611_))))
                              (_g1757517608_ _g1757617611_))))
                      (let ((_expr1759617668_ (reverse _expr1759417639_))
                            (_hd1759717670_ (reverse _hd1759517641_)))
                        ((lambda (_L17673_ _L17674_ _L17675_ _L17676_)
                           (let* ((_g1769517711_
                                   (lambda (_g1769617708_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1769617708_)))
                                  (_g1769417765_
                                   (lambda (_g1769617714_)
                                     (if (gx#stx-pair/null? _g1769617714_)
                                         (let ((_g18366_
                                                (gx#syntax-split-splice
                                                 _g1769617714_
                                                 '0)))
                                           (begin
                                             (let ((_g18367_
                                                    (if (##values? _g18366_)
                                                        (##vector-length
                                                         _g18366_)
                                                        1)))
                                               (if (not (##fx= _g18367_ 2))
                                                   (error "Context expects 2 values"
                                                          _g18367_)))
                                             (let ((_target1769817716_
                                                    (##vector-ref _g18366_ 0))
                                                   (_tl1770017718_
                                                    (##vector-ref _g18366_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1770017718_)
                                                   (letrec ((_loop1770117721_
                                                             (lambda (_hd1769917724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1770517726_)
                       (if (gx#stx-pair? _hd1769917724_)
                           (let ((_e1770217729_ (gx#syntax-e _hd1769917724_)))
                             (let ((_lp-hd1770317732_ (##car _e1770217729_))
                                   (_lp-tl1770417734_ (##cdr _e1770217729_)))
                               (_loop1770117721_
                                _lp-tl1770417734_
                                (cons _lp-hd1770317732_ _expr1770517726_))))
                           (let ((_expr1770617737_ (reverse _expr1770517726_)))
                             ((lambda (_L17740_)
                                (let ()
                                  (let ((_body17753_
                                         (map (gxc#xform-apply-compile-e
                                               _args17573_)
                                              _L17673_)))
                                    (gxc#xform-wrap-source
                                     (cons _L17676_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L17740_
                                                    _L17675_)
                                                   (foldr2 (lambda (_g1775417758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1775517760_
                            _g1775617762_)
                     (cons (cons _g1775517760_ (cons _g1775417758_ '()))
                           _g1775617762_))
                   '()
                   _L17740_
                   _L17675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body17753_))
                                     _stx17572_))))
                              _expr1770617737_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1770117721_
                                                      _target1769817716_
                                                      '()))
                                                   (_g1769517711_
                                                    _g1769617714_)))))
                                         (_g1769517711_ _g1769617714_)))))
                             (_g1769417765_
                              (map (gxc#xform-apply-compile-e _args17573_)
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1776717770_
                                                      _g1776817772_)
                                               (cons _g1776717770_
                                                     _g1776817772_))
                                             '()
                                             _L17674_))))))
                         _tl1758617626_
                         _expr1759617668_
                         _hd1759717670_
                         _hd1758217616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1759017634_
                                                 _target1758717629_
                                                 '()
                                                 '()))
                                              (_g1757517608_ _g1757617611_)))))
                                    (_g1757517608_ _g1757617611_))))
                            (_g1757517608_ _g1757617611_))))
                    (_g1757517608_ _g1757617611_)))))
        (_g1757417775_ _stx17572_))))
  (define gxc#xform-operands
    (lambda (_stx17528_ . _args17529_)
      (let* ((_g1753117542_
              (lambda (_g1753217539_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1753217539_)))
             (_g1753017569_
              (lambda (_g1753217545_)
                (if (gx#stx-pair? _g1753217545_)
                    (let ((_e1753517547_ (gx#stx-e _g1753217545_)))
                      (let ((_hd1753617550_ (##car _e1753517547_))
                            (_tl1753717552_ (##cdr _e1753517547_)))
                        ((lambda (_L17555_ _L17556_)
                           (let ((_rands17567_
                                  (map (gxc#xform-apply-compile-e _args17529_)
                                       _L17555_)))
                             (gxc#xform-wrap-source
                              (cons _L17556_ _rands17567_)
                              _stx17528_)))
                         _tl1753717552_
                         _hd1753617550_)))
                    (_g1753117542_ _g1753217545_)))))
        (_g1753017569_ _stx17528_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx17458_ . _args17459_)
      (let* ((_g1746117478_
              (lambda (_g1746217475_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1746217475_)))
             (_g1746017525_
              (lambda (_g1746217481_)
                (if (gx#stx-pair? _g1746217481_)
                    (let ((_e1746517483_ (gx#stx-e _g1746217481_)))
                      (let ((_hd1746617486_ (##car _e1746517483_))
                            (_tl1746717488_ (##cdr _e1746517483_)))
                        (if (gx#stx-pair? _tl1746717488_)
                            (let ((_e1746817491_ (gx#stx-e _tl1746717488_)))
                              (let ((_hd1746917494_ (##car _e1746817491_))
                                    (_tl1747017496_ (##cdr _e1746817491_)))
                                (if (gx#stx-pair? _tl1747017496_)
                                    (let ((_e1747117499_
                                           (gx#stx-e _tl1747017496_)))
                                      (let ((_hd1747217502_
                                             (##car _e1747117499_))
                                            (_tl1747317504_
                                             (##cdr _e1747117499_)))
                                        (if (gx#stx-null? _tl1747317504_)
                                            ((lambda (_L17507_ _L17508_)
                                               (let ((_expr17523_
                                                      (apply gxc#compile-e
                                                             _L17507_
                                                             _args17459_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L17508_
                                                              (cons _expr17523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17458_)))
                                             _hd1747217502_
                                             _hd1746917494_)
                                            (_g1746117478_ _g1746217481_))))
                                    (_g1746117478_ _g1746217481_))))
                            (_g1746117478_ _g1746217481_))))
                    (_g1746117478_ _g1746217481_)))))
        (_g1746017525_ _stx17458_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx17389_)
      (let* ((_g1739117408_
              (lambda (_g1739217405_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1739217405_)))
             (_g1739017455_
              (lambda (_g1739217411_)
                (if (gx#stx-pair? _g1739217411_)
                    (let ((_e1739517413_ (gx#stx-e _g1739217411_)))
                      (let ((_hd1739617416_ (##car _e1739517413_))
                            (_tl1739717418_ (##cdr _e1739517413_)))
                        (if (gx#stx-pair? _tl1739717418_)
                            (let ((_e1739817421_ (gx#stx-e _tl1739717418_)))
                              (let ((_hd1739917424_ (##car _e1739817421_))
                                    (_tl1740017426_ (##cdr _e1739817421_)))
                                (if (gx#stx-pair? _tl1740017426_)
                                    (let ((_e1740117429_
                                           (gx#stx-e _tl1740017426_)))
                                      (let ((_hd1740217432_
                                             (##car _e1740117429_))
                                            (_tl1740317434_
                                             (##cdr _e1740117429_)))
                                        (if (gx#stx-null? _tl1740317434_)
                                            ((lambda (_L17437_ _L17438_)
                                               (let ((_sym17453_
                                                      (gxc#identifier-symbol
                                                       _L17438_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym17453_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym17453_
                                                    '#t)
                                                   (gxc#compile-e _L17437_))))
                                             _hd1740217432_
                                             _hd1739917424_)
                                            (_g1739117408_ _g1739217411_))))
                                    (_g1739117408_ _g1739217411_))))
                            (_g1739117408_ _g1739217411_))))
                    (_g1739117408_ _g1739217411_)))))
        (_g1739017455_ _stx17389_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx17336_ _id17337_ _new-id17338_)
      (let* ((_g1734017353_
              (lambda (_g1734117350_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1734117350_)))
             (_g1733917386_
              (lambda (_g1734117356_)
                (if (gx#stx-pair? _g1734117356_)
                    (let ((_e1734317358_ (gx#stx-e _g1734117356_)))
                      (let ((_hd1734417361_ (##car _e1734317358_))
                            (_tl1734517363_ (##cdr _e1734317358_)))
                        (if (gx#stx-pair? _tl1734517363_)
                            (let ((_e1734617366_ (gx#stx-e _tl1734517363_)))
                              (let ((_hd1734717369_ (##car _e1734617366_))
                                    (_tl1734817371_ (##cdr _e1734617366_)))
                                (if (gx#stx-null? _tl1734817371_)
                                    ((lambda (_L17374_)
                                       (if (gx#free-identifier=?
                                            _L17374_
                                            _id17337_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id17338_ '()))
                                            _stx17336_)
                                           _stx17336_))
                                     _hd1734717369_)
                                    (_g1734017353_ _g1734117356_))))
                            (_g1734017353_ _g1734117356_))))
                    (_g1734017353_ _g1734117356_)))))
        (_g1733917386_ _stx17336_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx17277_ _subst17278_)
      (let* ((_g1728017293_
              (lambda (_g1728117290_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1728117290_)))
             (_g1727917333_
              (lambda (_g1728117296_)
                (if (gx#stx-pair? _g1728117296_)
                    (let ((_e1728317298_ (gx#stx-e _g1728117296_)))
                      (let ((_hd1728417301_ (##car _e1728317298_))
                            (_tl1728517303_ (##cdr _e1728317298_)))
                        (if (gx#stx-pair? _tl1728517303_)
                            (let ((_e1728617306_ (gx#stx-e _tl1728517303_)))
                              (let ((_hd1728717309_ (##car _e1728617306_))
                                    (_tl1728817311_ (##cdr _e1728617306_)))
                                (if (gx#stx-null? _tl1728817311_)
                                    ((lambda (_L17314_)
                                       (let ((_$e17328_
                                              (find (lambda (_sub17326_)
                                                      (gx#free-identifier=?
                                                       _L17314_
                                                       (car _sub17326_)))
                                                    _subst17278_)))
                                         (if _$e17328_
                                             ((lambda (_sub17331_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub17331_)
                                                             '()))
                                                 _stx17277_))
                                              _$e17328_)
                                             _stx17277_)))
                                     _hd1728717309_)
                                    (_g1728017293_ _g1728117296_))))
                            (_g1728017293_ _g1728117296_))))
                    (_g1728017293_ _g1728117296_)))))
        (_g1727917333_ _stx17277_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx17205_ _id17206_ _new-id17207_)
      (let* ((_g1720917226_
              (lambda (_g1721017223_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1721017223_)))
             (_g1720817274_
              (lambda (_g1721017229_)
                (if (gx#stx-pair? _g1721017229_)
                    (let ((_e1721317231_ (gx#stx-e _g1721017229_)))
                      (let ((_hd1721417234_ (##car _e1721317231_))
                            (_tl1721517236_ (##cdr _e1721317231_)))
                        (if (gx#stx-pair? _tl1721517236_)
                            (let ((_e1721617239_ (gx#stx-e _tl1721517236_)))
                              (let ((_hd1721717242_ (##car _e1721617239_))
                                    (_tl1721817244_ (##cdr _e1721617239_)))
                                (if (gx#stx-pair? _tl1721817244_)
                                    (let ((_e1721917247_
                                           (gx#stx-e _tl1721817244_)))
                                      (let ((_hd1722017250_
                                             (##car _e1721917247_))
                                            (_tl1722117252_
                                             (##cdr _e1721917247_)))
                                        (if (gx#stx-null? _tl1722117252_)
                                            ((lambda (_L17255_ _L17256_)
                                               (let ((_new-expr17271_
                                                      (gxc#compile-e
                                                       _L17255_
                                                       _id17206_
                                                       _new-id17207_))
                                                     (_new-xid17272_
                                                      (if (gx#free-identifier=?
                                                           _L17256_
                                                           _id17206_)
                                                          _new-id17207_
                                                          _L17256_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17272_
                                                              (cons _new-expr17271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17205_)))
                                             _hd1722017250_
                                             _hd1721717242_)
                                            (_g1720917226_ _g1721017229_))))
                                    (_g1720917226_ _g1721017229_))))
                            (_g1720917226_ _g1721017229_))))
                    (_g1720917226_ _g1721017229_)))))
        (_g1720817274_ _stx17205_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx17129_ _subst17130_)
      (let* ((_g1713217149_
              (lambda (_g1713317146_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1713317146_)))
             (_g1713117202_
              (lambda (_g1713317152_)
                (if (gx#stx-pair? _g1713317152_)
                    (let ((_e1713617154_ (gx#stx-e _g1713317152_)))
                      (let ((_hd1713717157_ (##car _e1713617154_))
                            (_tl1713817159_ (##cdr _e1713617154_)))
                        (if (gx#stx-pair? _tl1713817159_)
                            (let ((_e1713917162_ (gx#stx-e _tl1713817159_)))
                              (let ((_hd1714017165_ (##car _e1713917162_))
                                    (_tl1714117167_ (##cdr _e1713917162_)))
                                (if (gx#stx-pair? _tl1714117167_)
                                    (let ((_e1714217170_
                                           (gx#stx-e _tl1714117167_)))
                                      (let ((_hd1714317173_
                                             (##car _e1714217170_))
                                            (_tl1714417175_
                                             (##cdr _e1714217170_)))
                                        (if (gx#stx-null? _tl1714417175_)
                                            ((lambda (_L17178_ _L17179_)
                                               (let ((_new-expr17199_
                                                      (gxc#compile-e
                                                       _L17178_
                                                       _subst17130_))
                                                     (_new-xid17200_
                                                      (let ((_$e17196_
                                                             (find (lambda (_sub17194_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L17179_ (car _sub17194_)))
                           _subst17130_)))
                (if _$e17196_ (cdr _$e17196_) _L17179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17200_
                                                              (cons _new-expr17199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17129_)))
                                             _hd1714317173_
                                             _hd1714017165_)
                                            (_g1713217149_ _g1713317152_))))
                                    (_g1713217149_ _g1713317152_))))
                            (_g1713217149_ _g1713317152_))))
                    (_g1713217149_ _g1713317152_)))))
        (_g1713117202_ _stx17129_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx17075_ _ht17076_)
      (let* ((_g1707817091_
              (lambda (_g1707917088_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1707917088_)))
             (_g1707717126_
              (lambda (_g1707917094_)
                (if (gx#stx-pair? _g1707917094_)
                    (let ((_e1708117096_ (gx#stx-e _g1707917094_)))
                      (let ((_hd1708217099_ (##car _e1708117096_))
                            (_tl1708317101_ (##cdr _e1708117096_)))
                        (if (gx#stx-pair? _tl1708317101_)
                            (let ((_e1708417104_ (gx#stx-e _tl1708317101_)))
                              (let ((_hd1708517107_ (##car _e1708417104_))
                                    (_tl1708617109_ (##cdr _e1708417104_)))
                                (if (gx#stx-null? _tl1708617109_)
                                    ((lambda (_L17112_)
                                       (let ((_eid17124_
                                              (gxc#identifier-symbol
                                               _L17112_)))
                                         (hash-update!
                                          _ht17076_
                                          _eid17124_
                                          1+
                                          '0)))
                                     _hd1708517107_)
                                    (_g1707817091_ _g1707917094_))))
                            (_g1707817091_ _g1707917094_))))
                    (_g1707817091_ _g1707917094_)))))
        (_g1707717126_ _stx17075_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx17005_ _ht17006_)
      (let* ((_g1700817025_
              (lambda (_g1700917022_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1700917022_)))
             (_g1700717072_
              (lambda (_g1700917028_)
                (if (gx#stx-pair? _g1700917028_)
                    (let ((_e1701217030_ (gx#stx-e _g1700917028_)))
                      (let ((_hd1701317033_ (##car _e1701217030_))
                            (_tl1701417035_ (##cdr _e1701217030_)))
                        (if (gx#stx-pair? _tl1701417035_)
                            (let ((_e1701517038_ (gx#stx-e _tl1701417035_)))
                              (let ((_hd1701617041_ (##car _e1701517038_))
                                    (_tl1701717043_ (##cdr _e1701517038_)))
                                (if (gx#stx-pair? _tl1701717043_)
                                    (let ((_e1701817046_
                                           (gx#stx-e _tl1701717043_)))
                                      (let ((_hd1701917049_
                                             (##car _e1701817046_))
                                            (_tl1702017051_
                                             (##cdr _e1701817046_)))
                                        (if (gx#stx-null? _tl1702017051_)
                                            ((lambda (_L17054_ _L17055_)
                                               (let ((_eid17070_
                                                      (gxc#identifier-symbol
                                                       _L17055_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht17006_
                                                    _eid17070_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L17054_
                                                    _ht17006_))))
                                             _hd1701917049_
                                             _hd1701617041_)
                                            (_g1700817025_ _g1700917028_))))
                                    (_g1700817025_ _g1700917028_))))
                            (_g1700817025_ _g1700917028_))))
                    (_g1700817025_ _g1700917028_)))))
        (_g1700717072_ _stx17005_))))
  (define gxc#find-body%
    (lambda (_stx16918_ _arg16919_)
      (let* ((_g1692116940_
              (lambda (_g1692216937_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1692216937_)))
             (_g1692017002_
              (lambda (_g1692216943_)
                (if (gx#stx-pair? _g1692216943_)
                    (let ((_e1692416945_ (gx#stx-e _g1692216943_)))
                      (let ((_hd1692516948_ (##car _e1692416945_))
                            (_tl1692616950_ (##cdr _e1692416945_)))
                        (if (gx#stx-pair/null? _tl1692616950_)
                            (let ((_g18368_
                                   (gx#syntax-split-splice _tl1692616950_ '0)))
                              (begin
                                (let ((_g18369_
                                       (if (##values? _g18368_)
                                           (##vector-length _g18368_)
                                           1)))
                                  (if (not (##fx= _g18369_ 2))
                                      (error "Context expects 2 values"
                                             _g18369_)))
                                (let ((_target1692716953_
                                       (##vector-ref _g18368_ 0))
                                      (_tl1692916955_
                                       (##vector-ref _g18368_ 1)))
                                  (if (gx#stx-null? _tl1692916955_)
                                      (letrec ((_loop1693016958_
                                                (lambda (_hd1692816961_
                                                         _expr1693416963_)
                                                  (if (gx#stx-pair?
                                                       _hd1692816961_)
                                                      (let ((_e1693116966_
                                                             (gx#stx-e
                                                              _hd1692816961_)))
                                                        (let ((_lp-hd1693216969_
                                                               (##car _e1693116966_))
                                                              (_lp-tl1693316971_
                                                               (##cdr _e1693116966_)))
                                                          (_loop1693016958_
                                                           _lp-tl1693316971_
                                                           (cons _lp-hd1693216969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1693416963_))))
              (let ((_expr1693516974_ (reverse _expr1693416963_)))
                ((lambda (_L16977_)
                   (ormap1 (lambda (_g1699016992_)
                             (gxc#compile-e _g1699016992_ _arg16919_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1699416997_ _g1699516999_)
                                       (cons _g1699416997_ _g1699516999_))
                                     '()
                                     _L16977_))))
                 _expr1693516974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1693016958_
                                         _target1692716953_
                                         '()))
                                      (_g1692116940_ _g1692216943_)))))
                            (_g1692116940_ _g1692216943_))))
                    (_g1692116940_ _g1692216943_)))))
        (_g1692017002_ _stx16918_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx16850_ _arg16851_)
      (let* ((_g1685316870_
              (lambda (_g1685416867_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1685416867_)))
             (_g1685216915_
              (lambda (_g1685416873_)
                (if (gx#stx-pair? _g1685416873_)
                    (let ((_e1685716875_ (gx#stx-e _g1685416873_)))
                      (let ((_hd1685816878_ (##car _e1685716875_))
                            (_tl1685916880_ (##cdr _e1685716875_)))
                        (if (gx#stx-pair? _tl1685916880_)
                            (let ((_e1686016883_ (gx#stx-e _tl1685916880_)))
                              (let ((_hd1686116886_ (##car _e1686016883_))
                                    (_tl1686216888_ (##cdr _e1686016883_)))
                                (if (gx#stx-pair? _tl1686216888_)
                                    (let ((_e1686316891_
                                           (gx#stx-e _tl1686216888_)))
                                      (let ((_hd1686416894_
                                             (##car _e1686316891_))
                                            (_tl1686516896_
                                             (##cdr _e1686316891_)))
                                        (if (gx#stx-null? _tl1686516896_)
                                            ((lambda (_L16899_ _L16900_)
                                               (gxc#compile-e
                                                _L16899_
                                                _arg16851_))
                                             _hd1686416894_
                                             _hd1686116886_)
                                            (_g1685316870_ _g1685416873_))))
                                    (_g1685316870_ _g1685416873_))))
                            (_g1685316870_ _g1685416873_))))
                    (_g1685316870_ _g1685416873_)))))
        (_g1685216915_ _stx16850_))))
  (define gxc#find-lambda%
    (lambda (_stx16782_ _arg16783_)
      (let* ((_g1678516802_
              (lambda (_g1678616799_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1678616799_)))
             (_g1678416847_
              (lambda (_g1678616805_)
                (if (gx#stx-pair? _g1678616805_)
                    (let ((_e1678916807_ (gx#stx-e _g1678616805_)))
                      (let ((_hd1679016810_ (##car _e1678916807_))
                            (_tl1679116812_ (##cdr _e1678916807_)))
                        (if (gx#stx-pair? _tl1679116812_)
                            (let ((_e1679216815_ (gx#stx-e _tl1679116812_)))
                              (let ((_hd1679316818_ (##car _e1679216815_))
                                    (_tl1679416820_ (##cdr _e1679216815_)))
                                (if (gx#stx-pair? _tl1679416820_)
                                    (let ((_e1679516823_
                                           (gx#stx-e _tl1679416820_)))
                                      (let ((_hd1679616826_
                                             (##car _e1679516823_))
                                            (_tl1679716828_
                                             (##cdr _e1679516823_)))
                                        (if (gx#stx-null? _tl1679716828_)
                                            ((lambda (_L16831_ _L16832_)
                                               (gxc#compile-e
                                                _L16831_
                                                _arg16783_))
                                             _hd1679616826_
                                             _hd1679316818_)
                                            (_g1678516802_ _g1678616805_))))
                                    (_g1678516802_ _g1678616805_))))
                            (_g1678516802_ _g1678616805_))))
                    (_g1678516802_ _g1678616805_)))))
        (_g1678416847_ _stx16782_))))
  (define gxc#find-case-lambda%
    (lambda (_stx16664_ _arg16665_)
      (let* ((_g1666716695_
              (lambda (_g1666816692_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1666816692_)))
             (_g1666616779_
              (lambda (_g1666816698_)
                (if (gx#stx-pair? _g1666816698_)
                    (let ((_e1667116700_ (gx#stx-e _g1666816698_)))
                      (let ((_hd1667216703_ (##car _e1667116700_))
                            (_tl1667316705_ (##cdr _e1667116700_)))
                        (if (gx#stx-pair/null? _tl1667316705_)
                            (let ((_g18370_
                                   (gx#syntax-split-splice _tl1667316705_ '0)))
                              (begin
                                (let ((_g18371_
                                       (if (##values? _g18370_)
                                           (##vector-length _g18370_)
                                           1)))
                                  (if (not (##fx= _g18371_ 2))
                                      (error "Context expects 2 values"
                                             _g18371_)))
                                (let ((_target1667416708_
                                       (##vector-ref _g18370_ 0))
                                      (_tl1667616710_
                                       (##vector-ref _g18370_ 1)))
                                  (if (gx#stx-null? _tl1667616710_)
                                      (letrec ((_loop1667716713_
                                                (lambda (_hd1667516716_
                                                         _body1668116718_
                                                         _hd1668216720_)
                                                  (if (gx#stx-pair?
                                                       _hd1667516716_)
                                                      (let ((_e1667816723_
                                                             (gx#stx-e
                                                              _hd1667516716_)))
                                                        (let ((_lp-hd1667916726_
                                                               (##car _e1667816723_))
                                                              (_lp-tl1668016728_
                                                               (##cdr _e1667816723_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1667916726_)
                                                              (let ((_e1668516731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1667916726_)))
                        (let ((_hd1668616734_ (##car _e1668516731_))
                              (_tl1668716736_ (##cdr _e1668516731_)))
                          (if (gx#stx-pair? _tl1668716736_)
                              (let ((_e1668816739_ (gx#stx-e _tl1668716736_)))
                                (let ((_hd1668916742_ (##car _e1668816739_))
                                      (_tl1669016744_ (##cdr _e1668816739_)))
                                  (if (gx#stx-null? _tl1669016744_)
                                      (_loop1667716713_
                                       _lp-tl1668016728_
                                       (cons _hd1668916742_ _body1668116718_)
                                       (cons _hd1668616734_ _hd1668216720_))
                                      (_g1666716695_ _g1666816698_))))
                              (_g1666716695_ _g1666816698_))))
                      (_g1666716695_ _g1666816698_))))
              (let ((_body1668316747_ (reverse _body1668116718_))
                    (_hd1668416749_ (reverse _hd1668216720_)))
                ((lambda (_L16752_ _L16753_)
                   (ormap1 (lambda (_g1676716769_)
                             (gxc#compile-e _g1676716769_ _arg16665_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1677116774_ _g1677216776_)
                                       (cons _g1677116774_ _g1677216776_))
                                     '()
                                     _L16752_))))
                 _body1668316747_
                 _hd1668416749_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1667716713_
                                         _target1667416708_
                                         '()
                                         '()))
                                      (_g1666716695_ _g1666816698_)))))
                            (_g1666716695_ _g1666816698_))))
                    (_g1666716695_ _g1666816698_)))))
        (_g1666616779_ _stx16664_))))
  (define gxc#find-let-values%
    (lambda (_stx16514_ _arg16515_)
      (let* ((_g1651716552_
              (lambda (_g1651816549_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1651816549_)))
             (_g1651616661_
              (lambda (_g1651816555_)
                (if (gx#stx-pair? _g1651816555_)
                    (let ((_e1652216557_ (gx#stx-e _g1651816555_)))
                      (let ((_hd1652316560_ (##car _e1652216557_))
                            (_tl1652416562_ (##cdr _e1652216557_)))
                        (if (gx#stx-pair? _tl1652416562_)
                            (let ((_e1652516565_ (gx#stx-e _tl1652416562_)))
                              (let ((_hd1652616568_ (##car _e1652516565_))
                                    (_tl1652716570_ (##cdr _e1652516565_)))
                                (if (gx#stx-pair/null? _hd1652616568_)
                                    (let ((_g18372_
                                           (gx#syntax-split-splice
                                            _hd1652616568_
                                            '0)))
                                      (begin
                                        (let ((_g18373_
                                               (if (##values? _g18372_)
                                                   (##vector-length _g18372_)
                                                   1)))
                                          (if (not (##fx= _g18373_ 2))
                                              (error "Context expects 2 values"
                                                     _g18373_)))
                                        (let ((_target1652816573_
                                               (##vector-ref _g18372_ 0))
                                              (_tl1653016575_
                                               (##vector-ref _g18372_ 1)))
                                          (if (gx#stx-null? _tl1653016575_)
                                              (letrec ((_loop1653116578_
                                                        (lambda (_hd1652916581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1653516583_
                         _bind1653616585_)
                  (if (gx#stx-pair? _hd1652916581_)
                      (let ((_e1653216588_ (gx#stx-e _hd1652916581_)))
                        (let ((_lp-hd1653316591_ (##car _e1653216588_))
                              (_lp-tl1653416593_ (##cdr _e1653216588_)))
                          (if (gx#stx-pair? _lp-hd1653316591_)
                              (let ((_e1653916596_
                                     (gx#stx-e _lp-hd1653316591_)))
                                (let ((_hd1654016599_ (##car _e1653916596_))
                                      (_tl1654116601_ (##cdr _e1653916596_)))
                                  (if (gx#stx-pair? _tl1654116601_)
                                      (let ((_e1654216604_
                                             (gx#stx-e _tl1654116601_)))
                                        (let ((_hd1654316607_
                                               (##car _e1654216604_))
                                              (_tl1654416609_
                                               (##cdr _e1654216604_)))
                                          (if (gx#stx-null? _tl1654416609_)
                                              (_loop1653116578_
                                               _lp-tl1653416593_
                                               (cons _hd1654316607_
                                                     _expr1653516583_)
                                               (cons _hd1654016599_
                                                     _bind1653616585_))
                                              (_g1651716552_ _g1651816555_))))
                                      (_g1651716552_ _g1651816555_))))
                              (_g1651716552_ _g1651816555_))))
                      (let ((_expr1653716612_ (reverse _expr1653516583_))
                            (_bind1653816614_ (reverse _bind1653616585_)))
                        (if (gx#stx-pair? _tl1652716570_)
                            (let ((_e1654516617_ (gx#stx-e _tl1652716570_)))
                              (let ((_hd1654616620_ (##car _e1654516617_))
                                    (_tl1654716622_ (##cdr _e1654516617_)))
                                (if (gx#stx-null? _tl1654716622_)
                                    ((lambda (_L16625_ _L16626_ _L16627_)
                                       (let ((_$e16658_
                                              (ormap1 (lambda (_g1664616648_)
                                                        (gxc#compile-e
                                                         _g1664616648_
                                                         _arg16515_))
                                                      (begin
                                                        '#!void
                                                        (foldr1 (lambda (_g1665016653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1665116655_)
                          (cons _g1665016653_ _g1665116655_))
                        '()
                        _L16626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e16658_
                                             _$e16658_
                                             (gxc#compile-e
                                              _L16625_
                                              _arg16515_))))
                                     _hd1654616620_
                                     _expr1653716612_
                                     _bind1653816614_)
                                    (_g1651716552_ _g1651816555_))))
                            (_g1651716552_ _g1651816555_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1653116578_
                                                 _target1652816573_
                                                 '()
                                                 '()))
                                              (_g1651716552_ _g1651816555_)))))
                                    (_g1651716552_ _g1651816555_))))
                            (_g1651716552_ _g1651816555_))))
                    (_g1651716552_ _g1651816555_)))))
        (_g1651616661_ _stx16514_))))
  (define gxc#find-setq%
    (lambda (_stx16446_ _arg16447_)
      (let* ((_g1644916466_
              (lambda (_g1645016463_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1645016463_)))
             (_g1644816511_
              (lambda (_g1645016469_)
                (if (gx#stx-pair? _g1645016469_)
                    (let ((_e1645316471_ (gx#stx-e _g1645016469_)))
                      (let ((_hd1645416474_ (##car _e1645316471_))
                            (_tl1645516476_ (##cdr _e1645316471_)))
                        (if (gx#stx-pair? _tl1645516476_)
                            (let ((_e1645616479_ (gx#stx-e _tl1645516476_)))
                              (let ((_hd1645716482_ (##car _e1645616479_))
                                    (_tl1645816484_ (##cdr _e1645616479_)))
                                (if (gx#stx-pair? _tl1645816484_)
                                    (let ((_e1645916487_
                                           (gx#stx-e _tl1645816484_)))
                                      (let ((_hd1646016490_
                                             (##car _e1645916487_))
                                            (_tl1646116492_
                                             (##cdr _e1645916487_)))
                                        (if (gx#stx-null? _tl1646116492_)
                                            ((lambda (_L16495_ _L16496_)
                                               (gxc#compile-e
                                                _L16495_
                                                _arg16447_))
                                             _hd1646016490_
                                             _hd1645716482_)
                                            (_g1644916466_ _g1645016469_))))
                                    (_g1644916466_ _g1645016469_))))
                            (_g1644916466_ _g1645016469_))))
                    (_g1644916466_ _g1645016469_)))))
        (_g1644816511_ _stx16446_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx16390_ _ids16391_)
      (let* ((_g1639316406_
              (lambda (_g1639416403_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1639416403_)))
             (_g1639216443_
              (lambda (_g1639416409_)
                (if (gx#stx-pair? _g1639416409_)
                    (let ((_e1639616411_ (gx#stx-e _g1639416409_)))
                      (let ((_hd1639716414_ (##car _e1639616411_))
                            (_tl1639816416_ (##cdr _e1639616411_)))
                        (if (gx#stx-pair? _tl1639816416_)
                            (let ((_e1639916419_ (gx#stx-e _tl1639816416_)))
                              (let ((_hd1640016422_ (##car _e1639916419_))
                                    (_tl1640116424_ (##cdr _e1639916419_)))
                                (if (gx#stx-null? _tl1640116424_)
                                    ((lambda (_L16427_)
                                       (find (lambda (_g1643816440_)
                                               (gx#free-identifier=?
                                                _L16427_
                                                _g1643816440_))
                                             _ids16391_))
                                     _hd1640016422_)
                                    (_g1639316406_ _g1639416409_))))
                            (_g1639316406_ _g1639416409_))))
                    (_g1639316406_ _g1639416409_)))))
        (_g1639216443_ _stx16390_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx16314_ _ids16315_)
      (let* ((_g1631716334_
              (lambda (_g1631816331_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1631816331_)))
             (_g1631616387_
              (lambda (_g1631816337_)
                (if (gx#stx-pair? _g1631816337_)
                    (let ((_e1632116339_ (gx#stx-e _g1631816337_)))
                      (let ((_hd1632216342_ (##car _e1632116339_))
                            (_tl1632316344_ (##cdr _e1632116339_)))
                        (if (gx#stx-pair? _tl1632316344_)
                            (let ((_e1632416347_ (gx#stx-e _tl1632316344_)))
                              (let ((_hd1632516350_ (##car _e1632416347_))
                                    (_tl1632616352_ (##cdr _e1632416347_)))
                                (if (gx#stx-pair? _tl1632616352_)
                                    (let ((_e1632716355_
                                           (gx#stx-e _tl1632616352_)))
                                      (let ((_hd1632816358_
                                             (##car _e1632716355_))
                                            (_tl1632916360_
                                             (##cdr _e1632716355_)))
                                        (if (gx#stx-null? _tl1632916360_)
                                            ((lambda (_L16363_ _L16364_)
                                               (let ((_$e16384_
                                                      (find (lambda (_g1637916381_)
                                                              (gx#free-identifier=?
                                                               _L16364_
                                                               _g1637916381_))
                                                            _ids16315_)))
                                                 (if _$e16384_
                                                     _$e16384_
                                                     (gxc#compile-e
                                                      _L16363_
                                                      _ids16315_))))
                                             _hd1632816358_
                                             _hd1632516350_)
                                            (_g1631716334_ _g1631816337_))))
                                    (_g1631716334_ _g1631816337_))))
                            (_g1631716334_ _g1631816337_))))
                    (_g1631716334_ _g1631816337_)))))
        (_g1631616387_ _stx16314_)))))
