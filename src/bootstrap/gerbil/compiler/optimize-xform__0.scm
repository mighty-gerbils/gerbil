(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl17384_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17384_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl17384_ '%#lambda gxc#xform-identity)
           (table-set! _tbl17384_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl17384_ '%#let-values gxc#xform-identity)
           (table-set! _tbl17384_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl17384_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl17384_ '%#quote gxc#xform-identity)
           (table-set! _tbl17384_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17384_ '%#call gxc#xform-identity)
           (table-set! _tbl17384_ '%#if gxc#xform-identity)
           (table-set! _tbl17384_ '%#ref gxc#xform-identity)
           (table-set! _tbl17384_ '%#set! gxc#xform-identity)
           (table-set! _tbl17384_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl17384_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl17384_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl17384_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl17384_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl17384_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl17384_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl17384_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl17384_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17380_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17380_ '%#begin gxc#xform-identity)
           (table-set! _tbl17380_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl17380_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl17380_ '%#module gxc#xform-identity)
           (table-set! _tbl17380_ '%#import gxc#xform-identity)
           (table-set! _tbl17380_ '%#export gxc#xform-identity)
           (table-set! _tbl17380_ '%#provide gxc#xform-identity)
           (table-set! _tbl17380_ '%#extern gxc#xform-identity)
           (table-set! _tbl17380_ '%#define-values gxc#xform-identity)
           (table-set! _tbl17380_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl17380_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl17380_ '%#declare gxc#xform-identity)
           _tbl17380_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl17376_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17376_ (force gxc#&identity-special-form))
           (hash-copy! _tbl17376_ (force gxc#&identity-expression))
           _tbl17376_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl17372_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl17372_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl17372_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl17372_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl17372_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl17372_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl17372_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl17372_ '%#quote gxc#xform-identity)
           (table-set! _tbl17372_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17372_ '%#call gxc#xform-operands)
           (table-set! _tbl17372_ '%#if gxc#xform-operands)
           (table-set! _tbl17372_ '%#ref gxc#xform-identity)
           (table-set! _tbl17372_ '%#set! gxc#xform-setq%)
           (table-set! _tbl17372_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl17372_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl17372_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl17372_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl17372_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl17372_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl17372_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl17372_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl17372_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl17368_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17368_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl17368_ (force gxc#&identity))
           (table-set! _tbl17368_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17368_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl17368_ '%#module gxc#xform-module%)
           (table-set! _tbl17368_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl17368_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl17368_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl17364_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17364_ (force gxc#&void))
           (table-set! _tbl17364_ '%#begin gxc#collect-begin%)
           (table-set! _tbl17364_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl17364_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl17364_ '%#module gxc#collect-module%)
           (table-set! _tbl17364_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl17364_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl17364_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl17364_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl17364_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl17364_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl17364_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl17364_ '%#call gxc#collect-operands)
           (table-set! _tbl17364_ '%#if gxc#collect-operands)
           (table-set! _tbl17364_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl17364_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl17364_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl17364_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl17364_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl17364_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl17364_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl17364_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl17364_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl17364_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx17357_ . _args17359_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17357_ _args17359_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl17354_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17354_ (force gxc#&basic-xform-expression))
           (table-set! _tbl17354_ '%#begin gxc#xform-begin%)
           (table-set! _tbl17354_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl17354_ '%#set! gxc#expression-subst-setq%)
           _tbl17354_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx17347_ . _args17349_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17347_ _args17349_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (make-promise
     (lambda ()
       (let ((_tbl17344_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17344_ (force gxc#&expression-subst))
           (table-set! _tbl17344_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl17344_ '%#set! gxc#expression-subst*-setq%)
           _tbl17344_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx17337_ . _args17339_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17337_ _args17339_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (make-promise
     (lambda ()
       (let ((_tbl17334_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17334_ (force gxc#&false-expression))
           (table-set! _tbl17334_ '%#begin gxc#find-body%)
           (table-set!
            _tbl17334_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl17334_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl17334_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl17334_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl17334_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl17334_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl17334_ '%#call gxc#find-body%)
           (table-set! _tbl17334_ '%#if gxc#find-body%)
           (table-set! _tbl17334_ '%#set! gxc#find-setq%)
           (table-set! _tbl17334_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl17334_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl17334_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl17334_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl17334_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl17334_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl17334_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl17334_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl17334_)))))
  (define gxc#&find-var-refs
    (make-promise
     (lambda ()
       (let ((_tbl17330_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17330_ (force gxc#&find-expression))
           (table-set! _tbl17330_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl17330_ '%#set! gxc#find-var-refs-setq%)
           _tbl17330_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx17323_ . _args17325_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17323_ _args17325_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (make-promise
     (lambda ()
       (let ((_tbl17320_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17320_ (force gxc#&collect-expression-refs))
           (table-set! _tbl17320_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl17320_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl17320_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx17313_ . _args17315_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx17313_ _args17315_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx17310_ . _args17311_) _stx17310_))
  (define gxc#xform-wrap-source
    (lambda (_stx17307_ _src-stx17308_)
      (gx#stx-wrap-source _stx17307_ (gx#stx-source _src-stx17308_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args17301_)
      (lambda (_g1730217304_)
        (apply gxc#compile-e _g1730217304_ _args17301_))))
  (define gxc#xform-begin%
    (lambda (_stx17260_ . _args17261_)
      (let* ((_g1726317273_
              (lambda (_g1726417270_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1726417270_)))
             (_g1726217298_
              (lambda (_g1726417276_)
                (if (gx#stx-pair? _g1726417276_)
                    (let ((_e1726617278_ (gx#stx-e _g1726417276_)))
                      (let ((_hd1726717281_ (##car _e1726617278_))
                            (_tl1726817283_ (##cdr _e1726617278_)))
                        ((lambda (_L17286_)
                           (let ((_forms17296_
                                  (map (gxc#xform-apply-compile-e _args17261_)
                                       _L17286_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms17296_)
                              _stx17260_)))
                         _tl1726817283_)))
                    (_g1726317273_ _g1726417276_)))))
        (_g1726217298_ _stx17260_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx17218_ . _args17219_)
      (let* ((_g1722117231_
              (lambda (_g1722217228_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1722217228_)))
             (_g1722017257_
              (lambda (_g1722217234_)
                (if (gx#stx-pair? _g1722217234_)
                    (let ((_e1722417236_ (gx#stx-e _g1722217234_)))
                      (let ((_hd1722517239_ (##car _e1722417236_))
                            (_tl1722617241_ (##cdr _e1722417236_)))
                        ((lambda (_L17244_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms17255_
                                     (map (gxc#xform-apply-compile-e
                                           _args17219_)
                                          _L17244_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms17255_)
                                 _stx17218_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1722617241_)))
                    (_g1722117231_ _g1722217234_)))))
        (_g1722017257_ _stx17218_))))
  (define gxc#xform-module%
    (lambda (_stx17155_ . _args17156_)
      (let* ((_g1715817172_
              (lambda (_g1715917169_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1715917169_)))
             (_g1715717215_
              (lambda (_g1715917175_)
                (if (gx#stx-pair? _g1715917175_)
                    (let ((_e1716217177_ (gx#stx-e _g1715917175_)))
                      (let ((_hd1716317180_ (##car _e1716217177_))
                            (_tl1716417182_ (##cdr _e1716217177_)))
                        (if (gx#stx-pair? _tl1716417182_)
                            (let ((_e1716517185_ (gx#stx-e _tl1716417182_)))
                              (let ((_hd1716617188_ (##car _e1716517185_))
                                    (_tl1716717190_ (##cdr _e1716517185_)))
                                ((lambda (_L17193_ _L17194_)
                                   (let* ((_ctx17207_
                                           (gx#syntax-local-e__0 _L17194_))
                                          (_code17209_
                                           (##structure-ref
                                            _ctx17207_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code17212_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code17209_
                                                     _args17156_))
                                            gx#current-expander-context
                                            _ctx17207_)))
                                     (begin
                                       (##structure-set!
                                        _ctx17207_
                                        _code17212_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L17194_
                                                    (cons _code17212_ '())))
                                        _stx17155_))))
                                 _tl1716717190_
                                 _hd1716617188_)))
                            (_g1715817172_ _g1715917175_))))
                    (_g1715817172_ _g1715917175_)))))
        (_g1715717215_ _stx17155_))))
  (define gxc#xform-define-values%
    (lambda (_stx17085_ . _args17086_)
      (let* ((_g1708817105_
              (lambda (_g1708917102_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1708917102_)))
             (_g1708717152_
              (lambda (_g1708917108_)
                (if (gx#stx-pair? _g1708917108_)
                    (let ((_e1709217110_ (gx#stx-e _g1708917108_)))
                      (let ((_hd1709317113_ (##car _e1709217110_))
                            (_tl1709417115_ (##cdr _e1709217110_)))
                        (if (gx#stx-pair? _tl1709417115_)
                            (let ((_e1709517118_ (gx#stx-e _tl1709417115_)))
                              (let ((_hd1709617121_ (##car _e1709517118_))
                                    (_tl1709717123_ (##cdr _e1709517118_)))
                                (if (gx#stx-pair? _tl1709717123_)
                                    (let ((_e1709817126_
                                           (gx#stx-e _tl1709717123_)))
                                      (let ((_hd1709917129_
                                             (##car _e1709817126_))
                                            (_tl1710017131_
                                             (##cdr _e1709817126_)))
                                        (if (gx#stx-null? _tl1710017131_)
                                            ((lambda (_L17134_ _L17135_)
                                               (let ((_expr17150_
                                                      (apply gxc#compile-e
                                                             _L17134_
                                                             _args17086_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L17135_
                                                              (cons _expr17150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17085_)))
                                             _hd1709917129_
                                             _hd1709617121_)
                                            (_g1708817105_ _g1708917108_))))
                                    (_g1708817105_ _g1708917108_))))
                            (_g1708817105_ _g1708917108_))))
                    (_g1708817105_ _g1708917108_)))))
        (_g1708717152_ _stx17085_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx17014_ . _args17015_)
      (let* ((_g1701717034_
              (lambda (_g1701817031_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1701817031_)))
             (_g1701617082_
              (lambda (_g1701817037_)
                (if (gx#stx-pair? _g1701817037_)
                    (let ((_e1702117039_ (gx#stx-e _g1701817037_)))
                      (let ((_hd1702217042_ (##car _e1702117039_))
                            (_tl1702317044_ (##cdr _e1702117039_)))
                        (if (gx#stx-pair? _tl1702317044_)
                            (let ((_e1702417047_ (gx#stx-e _tl1702317044_)))
                              (let ((_hd1702517050_ (##car _e1702417047_))
                                    (_tl1702617052_ (##cdr _e1702417047_)))
                                (if (gx#stx-pair? _tl1702617052_)
                                    (let ((_e1702717055_
                                           (gx#stx-e _tl1702617052_)))
                                      (let ((_hd1702817058_
                                             (##car _e1702717055_))
                                            (_tl1702917060_
                                             (##cdr _e1702717055_)))
                                        (if (gx#stx-null? _tl1702917060_)
                                            ((lambda (_L17063_ _L17064_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr17080_
                                                         (apply gxc#compile-e
                                                                _L17063_
                                                                _args17015_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L17064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr17080_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx17014_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1702817058_
                                             _hd1702517050_)
                                            (_g1701717034_ _g1701817037_))))
                                    (_g1701717034_ _g1701817037_))))
                            (_g1701717034_ _g1701817037_))))
                    (_g1701717034_ _g1701817037_)))))
        (_g1701617082_ _stx17014_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx16944_ . _args16945_)
      (let* ((_g1694716964_
              (lambda (_g1694816961_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1694816961_)))
             (_g1694617011_
              (lambda (_g1694816967_)
                (if (gx#stx-pair? _g1694816967_)
                    (let ((_e1695116969_ (gx#stx-e _g1694816967_)))
                      (let ((_hd1695216972_ (##car _e1695116969_))
                            (_tl1695316974_ (##cdr _e1695116969_)))
                        (if (gx#stx-pair? _tl1695316974_)
                            (let ((_e1695416977_ (gx#stx-e _tl1695316974_)))
                              (let ((_hd1695516980_ (##car _e1695416977_))
                                    (_tl1695616982_ (##cdr _e1695416977_)))
                                (if (gx#stx-pair? _tl1695616982_)
                                    (let ((_e1695716985_
                                           (gx#stx-e _tl1695616982_)))
                                      (let ((_hd1695816988_
                                             (##car _e1695716985_))
                                            (_tl1695916990_
                                             (##cdr _e1695716985_)))
                                        (if (gx#stx-null? _tl1695916990_)
                                            ((lambda (_L16993_ _L16994_)
                                               (let ((_expr17009_
                                                      (apply gxc#compile-e
                                                             _L16993_
                                                             _args16945_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L16994_
                                                              (cons _expr17009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16944_)))
                                             _hd1695816988_
                                             _hd1695516980_)
                                            (_g1694716964_ _g1694816967_))))
                                    (_g1694716964_ _g1694816967_))))
                            (_g1694716964_ _g1694816967_))))
                    (_g1694716964_ _g1694816967_)))))
        (_g1694617011_ _stx16944_))))
  (define gxc#xform-lambda%
    (lambda (_stx16887_ . _args16888_)
      (let* ((_g1689016904_
              (lambda (_g1689116901_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1689116901_)))
             (_g1688916941_
              (lambda (_g1689116907_)
                (if (gx#stx-pair? _g1689116907_)
                    (let ((_e1689416909_ (gx#stx-e _g1689116907_)))
                      (let ((_hd1689516912_ (##car _e1689416909_))
                            (_tl1689616914_ (##cdr _e1689416909_)))
                        (if (gx#stx-pair? _tl1689616914_)
                            (let ((_e1689716917_ (gx#stx-e _tl1689616914_)))
                              (let ((_hd1689816920_ (##car _e1689716917_))
                                    (_tl1689916922_ (##cdr _e1689716917_)))
                                ((lambda (_L16925_ _L16926_)
                                   (let ((_body16939_
                                          (map (gxc#xform-apply-compile-e
                                                _args16888_)
                                               _L16925_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L16926_ _body16939_))
                                      _stx16887_)))
                                 _tl1689916922_
                                 _hd1689816920_)))
                            (_g1689016904_ _g1689116907_))))
                    (_g1689016904_ _g1689116907_)))))
        (_g1688916941_ _stx16887_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx16800_ . _args16801_)
      (letrec ((_clause-e16803_
                (lambda (_clause16844_)
                  (let* ((_g1684616857_
                          (lambda (_g1684716854_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1684716854_)))
                         (_g1684516884_
                          (lambda (_g1684716860_)
                            (if (gx#stx-pair? _g1684716860_)
                                (let ((_e1685016862_ (gx#stx-e _g1684716860_)))
                                  (let ((_hd1685116865_ (##car _e1685016862_))
                                        (_tl1685216867_ (##cdr _e1685016862_)))
                                    ((lambda (_L16870_ _L16871_)
                                       (let ((_body16882_
                                              (map (gxc#xform-apply-compile-e
                                                    _args16801_)
                                                   _L16870_)))
                                         (cons _L16871_ _body16882_)))
                                     _tl1685216867_
                                     _hd1685116865_)))
                                (_g1684616857_ _g1684716860_)))))
                    (_g1684516884_ _clause16844_)))))
        (let* ((_g1680516815_
                (lambda (_g1680616812_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1680616812_)))
               (_g1680416841_
                (lambda (_g1680616818_)
                  (if (gx#stx-pair? _g1680616818_)
                      (let ((_e1680816820_ (gx#stx-e _g1680616818_)))
                        (let ((_hd1680916823_ (##car _e1680816820_))
                              (_tl1681016825_ (##cdr _e1680816820_)))
                          ((lambda (_L16828_)
                             (let ((_clauses16839_
                                    (map _clause-e16803_ _L16828_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses16839_)
                                _stx16800_)))
                           _tl1681016825_)))
                      (_g1680516815_ _g1680616818_)))))
          (_g1680416841_ _stx16800_)))))
  (define gxc#xform-let-values%
    (lambda (_stx16594_ . _args16595_)
      (let* ((_g1659716630_
              (lambda (_g1659816627_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1659816627_)))
             (_g1659616797_
              (lambda (_g1659816633_)
                (if (gx#stx-pair? _g1659816633_)
                    (let ((_e1660316635_ (gx#stx-e _g1659816633_)))
                      (let ((_hd1660416638_ (##car _e1660316635_))
                            (_tl1660516640_ (##cdr _e1660316635_)))
                        (if (gx#stx-pair? _tl1660516640_)
                            (let ((_e1660616643_ (gx#stx-e _tl1660516640_)))
                              (let ((_hd1660716646_ (##car _e1660616643_))
                                    (_tl1660816648_ (##cdr _e1660616643_)))
                                (if (gx#stx-pair/null? _hd1660716646_)
                                    (let ((_g17386_
                                           (gx#syntax-split-splice
                                            _hd1660716646_
                                            '0)))
                                      (begin
                                        (let ((_g17387_
                                               (if (##values? _g17386_)
                                                   (##vector-length _g17386_)
                                                   1)))
                                          (if (not (##fx= _g17387_ 2))
                                              (error "Context expects 2 values"
                                                     _g17387_)))
                                        (let ((_target1660916651_
                                               (##vector-ref _g17386_ 0))
                                              (_tl1661116653_
                                               (##vector-ref _g17386_ 1)))
                                          (if (gx#stx-null? _tl1661116653_)
                                              (letrec ((_loop1661216656_
                                                        (lambda (_hd1661016659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1661616661_
                         _hd1661716663_)
                  (if (gx#stx-pair? _hd1661016659_)
                      (let ((_e1661316666_ (gx#stx-e _hd1661016659_)))
                        (let ((_lp-hd1661416669_ (##car _e1661316666_))
                              (_lp-tl1661516671_ (##cdr _e1661316666_)))
                          (if (gx#stx-pair? _lp-hd1661416669_)
                              (let ((_e1662016674_
                                     (gx#stx-e _lp-hd1661416669_)))
                                (let ((_hd1662116677_ (##car _e1662016674_))
                                      (_tl1662216679_ (##cdr _e1662016674_)))
                                  (if (gx#stx-pair? _tl1662216679_)
                                      (let ((_e1662316682_
                                             (gx#stx-e _tl1662216679_)))
                                        (let ((_hd1662416685_
                                               (##car _e1662316682_))
                                              (_tl1662516687_
                                               (##cdr _e1662316682_)))
                                          (if (gx#stx-null? _tl1662516687_)
                                              (_loop1661216656_
                                               _lp-tl1661516671_
                                               (cons _hd1662416685_
                                                     _expr1661616661_)
                                               (cons _hd1662116677_
                                                     _hd1661716663_))
                                              (_g1659716630_ _g1659816633_))))
                                      (_g1659716630_ _g1659816633_))))
                              (_g1659716630_ _g1659816633_))))
                      (let ((_expr1661816690_ (reverse _expr1661616661_))
                            (_hd1661916692_ (reverse _hd1661716663_)))
                        ((lambda (_L16695_ _L16696_ _L16697_ _L16698_)
                           (let* ((_g1671716733_
                                   (lambda (_g1671816730_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1671816730_)))
                                  (_g1671616787_
                                   (lambda (_g1671816736_)
                                     (if (gx#stx-pair/null? _g1671816736_)
                                         (let ((_g17388_
                                                (gx#syntax-split-splice
                                                 _g1671816736_
                                                 '0)))
                                           (begin
                                             (let ((_g17389_
                                                    (if (##values? _g17388_)
                                                        (##vector-length
                                                         _g17388_)
                                                        1)))
                                               (if (not (##fx= _g17389_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17389_)))
                                             (let ((_target1672016738_
                                                    (##vector-ref _g17388_ 0))
                                                   (_tl1672216740_
                                                    (##vector-ref _g17388_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1672216740_)
                                                   (letrec ((_loop1672316743_
                                                             (lambda (_hd1672116746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1672716748_)
                       (if (gx#stx-pair? _hd1672116746_)
                           (let ((_e1672416751_ (gx#syntax-e _hd1672116746_)))
                             (let ((_lp-hd1672516754_ (##car _e1672416751_))
                                   (_lp-tl1672616756_ (##cdr _e1672416751_)))
                               (_loop1672316743_
                                _lp-tl1672616756_
                                (cons _lp-hd1672516754_ _expr1672716748_))))
                           (let ((_expr1672816759_ (reverse _expr1672716748_)))
                             ((lambda (_L16762_)
                                (let ()
                                  (let ((_body16775_
                                         (map (gxc#xform-apply-compile-e
                                               _args16595_)
                                              _L16695_)))
                                    (gxc#xform-wrap-source
                                     (cons _L16698_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L16762_
                                                    _L16697_)
                                                   (foldr2 (lambda (_g1677616780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1677716782_
                            _g1677816784_)
                     (cons (cons _g1677716782_ (cons _g1677616780_ '()))
                           _g1677816784_))
                   '()
                   _L16762_
                   _L16697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body16775_))
                                     _stx16594_))))
                              _expr1672816759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1672316743_
                                                      _target1672016738_
                                                      '()))
                                                   (_g1671716733_
                                                    _g1671816736_)))))
                                         (_g1671716733_ _g1671816736_)))))
                             (_g1671616787_
                              (map (gxc#xform-apply-compile-e _args16595_)
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1678916792_
                                                      _g1679016794_)
                                               (cons _g1678916792_
                                                     _g1679016794_))
                                             '()
                                             _L16696_))))))
                         _tl1660816648_
                         _expr1661816690_
                         _hd1661916692_
                         _hd1660416638_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1661216656_
                                                 _target1660916651_
                                                 '()
                                                 '()))
                                              (_g1659716630_ _g1659816633_)))))
                                    (_g1659716630_ _g1659816633_))))
                            (_g1659716630_ _g1659816633_))))
                    (_g1659716630_ _g1659816633_)))))
        (_g1659616797_ _stx16594_))))
  (define gxc#xform-operands
    (lambda (_stx16550_ . _args16551_)
      (let* ((_g1655316564_
              (lambda (_g1655416561_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1655416561_)))
             (_g1655216591_
              (lambda (_g1655416567_)
                (if (gx#stx-pair? _g1655416567_)
                    (let ((_e1655716569_ (gx#stx-e _g1655416567_)))
                      (let ((_hd1655816572_ (##car _e1655716569_))
                            (_tl1655916574_ (##cdr _e1655716569_)))
                        ((lambda (_L16577_ _L16578_)
                           (let ((_rands16589_
                                  (map (gxc#xform-apply-compile-e _args16551_)
                                       _L16577_)))
                             (gxc#xform-wrap-source
                              (cons _L16578_ _rands16589_)
                              _stx16550_)))
                         _tl1655916574_
                         _hd1655816572_)))
                    (_g1655316564_ _g1655416567_)))))
        (_g1655216591_ _stx16550_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx16480_ . _args16481_)
      (let* ((_g1648316500_
              (lambda (_g1648416497_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1648416497_)))
             (_g1648216547_
              (lambda (_g1648416503_)
                (if (gx#stx-pair? _g1648416503_)
                    (let ((_e1648716505_ (gx#stx-e _g1648416503_)))
                      (let ((_hd1648816508_ (##car _e1648716505_))
                            (_tl1648916510_ (##cdr _e1648716505_)))
                        (if (gx#stx-pair? _tl1648916510_)
                            (let ((_e1649016513_ (gx#stx-e _tl1648916510_)))
                              (let ((_hd1649116516_ (##car _e1649016513_))
                                    (_tl1649216518_ (##cdr _e1649016513_)))
                                (if (gx#stx-pair? _tl1649216518_)
                                    (let ((_e1649316521_
                                           (gx#stx-e _tl1649216518_)))
                                      (let ((_hd1649416524_
                                             (##car _e1649316521_))
                                            (_tl1649516526_
                                             (##cdr _e1649316521_)))
                                        (if (gx#stx-null? _tl1649516526_)
                                            ((lambda (_L16529_ _L16530_)
                                               (let ((_expr16545_
                                                      (apply gxc#compile-e
                                                             _L16529_
                                                             _args16481_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L16530_
                                                              (cons _expr16545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16480_)))
                                             _hd1649416524_
                                             _hd1649116516_)
                                            (_g1648316500_ _g1648416503_))))
                                    (_g1648316500_ _g1648416503_))))
                            (_g1648316500_ _g1648416503_))))
                    (_g1648316500_ _g1648416503_)))))
        (_g1648216547_ _stx16480_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx16411_)
      (let* ((_g1641316430_
              (lambda (_g1641416427_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1641416427_)))
             (_g1641216477_
              (lambda (_g1641416433_)
                (if (gx#stx-pair? _g1641416433_)
                    (let ((_e1641716435_ (gx#stx-e _g1641416433_)))
                      (let ((_hd1641816438_ (##car _e1641716435_))
                            (_tl1641916440_ (##cdr _e1641716435_)))
                        (if (gx#stx-pair? _tl1641916440_)
                            (let ((_e1642016443_ (gx#stx-e _tl1641916440_)))
                              (let ((_hd1642116446_ (##car _e1642016443_))
                                    (_tl1642216448_ (##cdr _e1642016443_)))
                                (if (gx#stx-pair? _tl1642216448_)
                                    (let ((_e1642316451_
                                           (gx#stx-e _tl1642216448_)))
                                      (let ((_hd1642416454_
                                             (##car _e1642316451_))
                                            (_tl1642516456_
                                             (##cdr _e1642316451_)))
                                        (if (gx#stx-null? _tl1642516456_)
                                            ((lambda (_L16459_ _L16460_)
                                               (let ((_sym16475_
                                                      (gxc#identifier-symbol
                                                       _L16460_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym16475_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym16475_
                                                    '#t)
                                                   (gxc#compile-e _L16459_))))
                                             _hd1642416454_
                                             _hd1642116446_)
                                            (_g1641316430_ _g1641416433_))))
                                    (_g1641316430_ _g1641416433_))))
                            (_g1641316430_ _g1641416433_))))
                    (_g1641316430_ _g1641416433_)))))
        (_g1641216477_ _stx16411_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx16358_ _id16359_ _new-id16360_)
      (let* ((_g1636216375_
              (lambda (_g1636316372_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1636316372_)))
             (_g1636116408_
              (lambda (_g1636316378_)
                (if (gx#stx-pair? _g1636316378_)
                    (let ((_e1636516380_ (gx#stx-e _g1636316378_)))
                      (let ((_hd1636616383_ (##car _e1636516380_))
                            (_tl1636716385_ (##cdr _e1636516380_)))
                        (if (gx#stx-pair? _tl1636716385_)
                            (let ((_e1636816388_ (gx#stx-e _tl1636716385_)))
                              (let ((_hd1636916391_ (##car _e1636816388_))
                                    (_tl1637016393_ (##cdr _e1636816388_)))
                                (if (gx#stx-null? _tl1637016393_)
                                    ((lambda (_L16396_)
                                       (if (gx#free-identifier=?
                                            _L16396_
                                            _id16359_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id16360_ '()))
                                            _stx16358_)
                                           _stx16358_))
                                     _hd1636916391_)
                                    (_g1636216375_ _g1636316378_))))
                            (_g1636216375_ _g1636316378_))))
                    (_g1636216375_ _g1636316378_)))))
        (_g1636116408_ _stx16358_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx16299_ _subst16300_)
      (let* ((_g1630216315_
              (lambda (_g1630316312_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1630316312_)))
             (_g1630116355_
              (lambda (_g1630316318_)
                (if (gx#stx-pair? _g1630316318_)
                    (let ((_e1630516320_ (gx#stx-e _g1630316318_)))
                      (let ((_hd1630616323_ (##car _e1630516320_))
                            (_tl1630716325_ (##cdr _e1630516320_)))
                        (if (gx#stx-pair? _tl1630716325_)
                            (let ((_e1630816328_ (gx#stx-e _tl1630716325_)))
                              (let ((_hd1630916331_ (##car _e1630816328_))
                                    (_tl1631016333_ (##cdr _e1630816328_)))
                                (if (gx#stx-null? _tl1631016333_)
                                    ((lambda (_L16336_)
                                       (let ((_$e16350_
                                              (find (lambda (_sub16348_)
                                                      (gx#free-identifier=?
                                                       _L16336_
                                                       (car _sub16348_)))
                                                    _subst16300_)))
                                         (if _$e16350_
                                             ((lambda (_sub16353_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub16353_)
                                                             '()))
                                                 _stx16299_))
                                              _$e16350_)
                                             _stx16299_)))
                                     _hd1630916331_)
                                    (_g1630216315_ _g1630316318_))))
                            (_g1630216315_ _g1630316318_))))
                    (_g1630216315_ _g1630316318_)))))
        (_g1630116355_ _stx16299_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx16227_ _id16228_ _new-id16229_)
      (let* ((_g1623116248_
              (lambda (_g1623216245_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1623216245_)))
             (_g1623016296_
              (lambda (_g1623216251_)
                (if (gx#stx-pair? _g1623216251_)
                    (let ((_e1623516253_ (gx#stx-e _g1623216251_)))
                      (let ((_hd1623616256_ (##car _e1623516253_))
                            (_tl1623716258_ (##cdr _e1623516253_)))
                        (if (gx#stx-pair? _tl1623716258_)
                            (let ((_e1623816261_ (gx#stx-e _tl1623716258_)))
                              (let ((_hd1623916264_ (##car _e1623816261_))
                                    (_tl1624016266_ (##cdr _e1623816261_)))
                                (if (gx#stx-pair? _tl1624016266_)
                                    (let ((_e1624116269_
                                           (gx#stx-e _tl1624016266_)))
                                      (let ((_hd1624216272_
                                             (##car _e1624116269_))
                                            (_tl1624316274_
                                             (##cdr _e1624116269_)))
                                        (if (gx#stx-null? _tl1624316274_)
                                            ((lambda (_L16277_ _L16278_)
                                               (let ((_new-expr16293_
                                                      (gxc#compile-e
                                                       _L16277_
                                                       _id16228_
                                                       _new-id16229_))
                                                     (_new-xid16294_
                                                      (if (gx#free-identifier=?
                                                           _L16278_
                                                           _id16228_)
                                                          _new-id16229_
                                                          _L16278_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid16294_
                                                              (cons _new-expr16293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16227_)))
                                             _hd1624216272_
                                             _hd1623916264_)
                                            (_g1623116248_ _g1623216251_))))
                                    (_g1623116248_ _g1623216251_))))
                            (_g1623116248_ _g1623216251_))))
                    (_g1623116248_ _g1623216251_)))))
        (_g1623016296_ _stx16227_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx16151_ _subst16152_)
      (let* ((_g1615416171_
              (lambda (_g1615516168_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1615516168_)))
             (_g1615316224_
              (lambda (_g1615516174_)
                (if (gx#stx-pair? _g1615516174_)
                    (let ((_e1615816176_ (gx#stx-e _g1615516174_)))
                      (let ((_hd1615916179_ (##car _e1615816176_))
                            (_tl1616016181_ (##cdr _e1615816176_)))
                        (if (gx#stx-pair? _tl1616016181_)
                            (let ((_e1616116184_ (gx#stx-e _tl1616016181_)))
                              (let ((_hd1616216187_ (##car _e1616116184_))
                                    (_tl1616316189_ (##cdr _e1616116184_)))
                                (if (gx#stx-pair? _tl1616316189_)
                                    (let ((_e1616416192_
                                           (gx#stx-e _tl1616316189_)))
                                      (let ((_hd1616516195_
                                             (##car _e1616416192_))
                                            (_tl1616616197_
                                             (##cdr _e1616416192_)))
                                        (if (gx#stx-null? _tl1616616197_)
                                            ((lambda (_L16200_ _L16201_)
                                               (let ((_new-expr16221_
                                                      (gxc#compile-e
                                                       _L16200_
                                                       _subst16152_))
                                                     (_new-xid16222_
                                                      (let ((_$e16218_
                                                             (find (lambda (_sub16216_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L16201_ (car _sub16216_)))
                           _subst16152_)))
                (if _$e16218_ (cdr _$e16218_) _L16201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid16222_
                                                              (cons _new-expr16221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16151_)))
                                             _hd1616516195_
                                             _hd1616216187_)
                                            (_g1615416171_ _g1615516174_))))
                                    (_g1615416171_ _g1615516174_))))
                            (_g1615416171_ _g1615516174_))))
                    (_g1615416171_ _g1615516174_)))))
        (_g1615316224_ _stx16151_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx16097_ _ht16098_)
      (let* ((_g1610016113_
              (lambda (_g1610116110_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1610116110_)))
             (_g1609916148_
              (lambda (_g1610116116_)
                (if (gx#stx-pair? _g1610116116_)
                    (let ((_e1610316118_ (gx#stx-e _g1610116116_)))
                      (let ((_hd1610416121_ (##car _e1610316118_))
                            (_tl1610516123_ (##cdr _e1610316118_)))
                        (if (gx#stx-pair? _tl1610516123_)
                            (let ((_e1610616126_ (gx#stx-e _tl1610516123_)))
                              (let ((_hd1610716129_ (##car _e1610616126_))
                                    (_tl1610816131_ (##cdr _e1610616126_)))
                                (if (gx#stx-null? _tl1610816131_)
                                    ((lambda (_L16134_)
                                       (let ((_eid16146_
                                              (gxc#identifier-symbol
                                               _L16134_)))
                                         (hash-update!
                                          _ht16098_
                                          _eid16146_
                                          1+
                                          '0)))
                                     _hd1610716129_)
                                    (_g1610016113_ _g1610116116_))))
                            (_g1610016113_ _g1610116116_))))
                    (_g1610016113_ _g1610116116_)))))
        (_g1609916148_ _stx16097_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx16027_ _ht16028_)
      (let* ((_g1603016047_
              (lambda (_g1603116044_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1603116044_)))
             (_g1602916094_
              (lambda (_g1603116050_)
                (if (gx#stx-pair? _g1603116050_)
                    (let ((_e1603416052_ (gx#stx-e _g1603116050_)))
                      (let ((_hd1603516055_ (##car _e1603416052_))
                            (_tl1603616057_ (##cdr _e1603416052_)))
                        (if (gx#stx-pair? _tl1603616057_)
                            (let ((_e1603716060_ (gx#stx-e _tl1603616057_)))
                              (let ((_hd1603816063_ (##car _e1603716060_))
                                    (_tl1603916065_ (##cdr _e1603716060_)))
                                (if (gx#stx-pair? _tl1603916065_)
                                    (let ((_e1604016068_
                                           (gx#stx-e _tl1603916065_)))
                                      (let ((_hd1604116071_
                                             (##car _e1604016068_))
                                            (_tl1604216073_
                                             (##cdr _e1604016068_)))
                                        (if (gx#stx-null? _tl1604216073_)
                                            ((lambda (_L16076_ _L16077_)
                                               (let ((_eid16092_
                                                      (gxc#identifier-symbol
                                                       _L16077_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht16028_
                                                    _eid16092_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L16076_
                                                    _ht16028_))))
                                             _hd1604116071_
                                             _hd1603816063_)
                                            (_g1603016047_ _g1603116050_))))
                                    (_g1603016047_ _g1603116050_))))
                            (_g1603016047_ _g1603116050_))))
                    (_g1603016047_ _g1603116050_)))))
        (_g1602916094_ _stx16027_))))
  (define gxc#find-body%
    (lambda (_stx15940_ _arg15941_)
      (let* ((_g1594315962_
              (lambda (_g1594415959_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1594415959_)))
             (_g1594216024_
              (lambda (_g1594415965_)
                (if (gx#stx-pair? _g1594415965_)
                    (let ((_e1594615967_ (gx#stx-e _g1594415965_)))
                      (let ((_hd1594715970_ (##car _e1594615967_))
                            (_tl1594815972_ (##cdr _e1594615967_)))
                        (if (gx#stx-pair/null? _tl1594815972_)
                            (let ((_g17390_
                                   (gx#syntax-split-splice _tl1594815972_ '0)))
                              (begin
                                (let ((_g17391_
                                       (if (##values? _g17390_)
                                           (##vector-length _g17390_)
                                           1)))
                                  (if (not (##fx= _g17391_ 2))
                                      (error "Context expects 2 values"
                                             _g17391_)))
                                (let ((_target1594915975_
                                       (##vector-ref _g17390_ 0))
                                      (_tl1595115977_
                                       (##vector-ref _g17390_ 1)))
                                  (if (gx#stx-null? _tl1595115977_)
                                      (letrec ((_loop1595215980_
                                                (lambda (_hd1595015983_
                                                         _expr1595615985_)
                                                  (if (gx#stx-pair?
                                                       _hd1595015983_)
                                                      (let ((_e1595315988_
                                                             (gx#stx-e
                                                              _hd1595015983_)))
                                                        (let ((_lp-hd1595415991_
                                                               (##car _e1595315988_))
                                                              (_lp-tl1595515993_
                                                               (##cdr _e1595315988_)))
                                                          (_loop1595215980_
                                                           _lp-tl1595515993_
                                                           (cons _lp-hd1595415991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1595615985_))))
              (let ((_expr1595715996_ (reverse _expr1595615985_)))
                ((lambda (_L15999_)
                   (ormap1 (lambda (_g1601216014_)
                             (gxc#compile-e _g1601216014_ _arg15941_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1601616019_ _g1601716021_)
                                       (cons _g1601616019_ _g1601716021_))
                                     '()
                                     _L15999_))))
                 _expr1595715996_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1595215980_
                                         _target1594915975_
                                         '()))
                                      (_g1594315962_ _g1594415965_)))))
                            (_g1594315962_ _g1594415965_))))
                    (_g1594315962_ _g1594415965_)))))
        (_g1594216024_ _stx15940_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx15872_ _arg15873_)
      (let* ((_g1587515892_
              (lambda (_g1587615889_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1587615889_)))
             (_g1587415937_
              (lambda (_g1587615895_)
                (if (gx#stx-pair? _g1587615895_)
                    (let ((_e1587915897_ (gx#stx-e _g1587615895_)))
                      (let ((_hd1588015900_ (##car _e1587915897_))
                            (_tl1588115902_ (##cdr _e1587915897_)))
                        (if (gx#stx-pair? _tl1588115902_)
                            (let ((_e1588215905_ (gx#stx-e _tl1588115902_)))
                              (let ((_hd1588315908_ (##car _e1588215905_))
                                    (_tl1588415910_ (##cdr _e1588215905_)))
                                (if (gx#stx-pair? _tl1588415910_)
                                    (let ((_e1588515913_
                                           (gx#stx-e _tl1588415910_)))
                                      (let ((_hd1588615916_
                                             (##car _e1588515913_))
                                            (_tl1588715918_
                                             (##cdr _e1588515913_)))
                                        (if (gx#stx-null? _tl1588715918_)
                                            ((lambda (_L15921_ _L15922_)
                                               (gxc#compile-e
                                                _L15921_
                                                _arg15873_))
                                             _hd1588615916_
                                             _hd1588315908_)
                                            (_g1587515892_ _g1587615895_))))
                                    (_g1587515892_ _g1587615895_))))
                            (_g1587515892_ _g1587615895_))))
                    (_g1587515892_ _g1587615895_)))))
        (_g1587415937_ _stx15872_))))
  (define gxc#find-lambda%
    (lambda (_stx15804_ _arg15805_)
      (let* ((_g1580715824_
              (lambda (_g1580815821_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1580815821_)))
             (_g1580615869_
              (lambda (_g1580815827_)
                (if (gx#stx-pair? _g1580815827_)
                    (let ((_e1581115829_ (gx#stx-e _g1580815827_)))
                      (let ((_hd1581215832_ (##car _e1581115829_))
                            (_tl1581315834_ (##cdr _e1581115829_)))
                        (if (gx#stx-pair? _tl1581315834_)
                            (let ((_e1581415837_ (gx#stx-e _tl1581315834_)))
                              (let ((_hd1581515840_ (##car _e1581415837_))
                                    (_tl1581615842_ (##cdr _e1581415837_)))
                                (if (gx#stx-pair? _tl1581615842_)
                                    (let ((_e1581715845_
                                           (gx#stx-e _tl1581615842_)))
                                      (let ((_hd1581815848_
                                             (##car _e1581715845_))
                                            (_tl1581915850_
                                             (##cdr _e1581715845_)))
                                        (if (gx#stx-null? _tl1581915850_)
                                            ((lambda (_L15853_ _L15854_)
                                               (gxc#compile-e
                                                _L15853_
                                                _arg15805_))
                                             _hd1581815848_
                                             _hd1581515840_)
                                            (_g1580715824_ _g1580815827_))))
                                    (_g1580715824_ _g1580815827_))))
                            (_g1580715824_ _g1580815827_))))
                    (_g1580715824_ _g1580815827_)))))
        (_g1580615869_ _stx15804_))))
  (define gxc#find-case-lambda%
    (lambda (_stx15686_ _arg15687_)
      (let* ((_g1568915717_
              (lambda (_g1569015714_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1569015714_)))
             (_g1568815801_
              (lambda (_g1569015720_)
                (if (gx#stx-pair? _g1569015720_)
                    (let ((_e1569315722_ (gx#stx-e _g1569015720_)))
                      (let ((_hd1569415725_ (##car _e1569315722_))
                            (_tl1569515727_ (##cdr _e1569315722_)))
                        (if (gx#stx-pair/null? _tl1569515727_)
                            (let ((_g17392_
                                   (gx#syntax-split-splice _tl1569515727_ '0)))
                              (begin
                                (let ((_g17393_
                                       (if (##values? _g17392_)
                                           (##vector-length _g17392_)
                                           1)))
                                  (if (not (##fx= _g17393_ 2))
                                      (error "Context expects 2 values"
                                             _g17393_)))
                                (let ((_target1569615730_
                                       (##vector-ref _g17392_ 0))
                                      (_tl1569815732_
                                       (##vector-ref _g17392_ 1)))
                                  (if (gx#stx-null? _tl1569815732_)
                                      (letrec ((_loop1569915735_
                                                (lambda (_hd1569715738_
                                                         _body1570315740_
                                                         _hd1570415742_)
                                                  (if (gx#stx-pair?
                                                       _hd1569715738_)
                                                      (let ((_e1570015745_
                                                             (gx#stx-e
                                                              _hd1569715738_)))
                                                        (let ((_lp-hd1570115748_
                                                               (##car _e1570015745_))
                                                              (_lp-tl1570215750_
                                                               (##cdr _e1570015745_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1570115748_)
                                                              (let ((_e1570715753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1570115748_)))
                        (let ((_hd1570815756_ (##car _e1570715753_))
                              (_tl1570915758_ (##cdr _e1570715753_)))
                          (if (gx#stx-pair? _tl1570915758_)
                              (let ((_e1571015761_ (gx#stx-e _tl1570915758_)))
                                (let ((_hd1571115764_ (##car _e1571015761_))
                                      (_tl1571215766_ (##cdr _e1571015761_)))
                                  (if (gx#stx-null? _tl1571215766_)
                                      (_loop1569915735_
                                       _lp-tl1570215750_
                                       (cons _hd1571115764_ _body1570315740_)
                                       (cons _hd1570815756_ _hd1570415742_))
                                      (_g1568915717_ _g1569015720_))))
                              (_g1568915717_ _g1569015720_))))
                      (_g1568915717_ _g1569015720_))))
              (let ((_body1570515769_ (reverse _body1570315740_))
                    (_hd1570615771_ (reverse _hd1570415742_)))
                ((lambda (_L15774_ _L15775_)
                   (ormap1 (lambda (_g1578915791_)
                             (gxc#compile-e _g1578915791_ _arg15687_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1579315796_ _g1579415798_)
                                       (cons _g1579315796_ _g1579415798_))
                                     '()
                                     _L15774_))))
                 _body1570515769_
                 _hd1570615771_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1569915735_
                                         _target1569615730_
                                         '()
                                         '()))
                                      (_g1568915717_ _g1569015720_)))))
                            (_g1568915717_ _g1569015720_))))
                    (_g1568915717_ _g1569015720_)))))
        (_g1568815801_ _stx15686_))))
  (define gxc#find-let-values%
    (lambda (_stx15536_ _arg15537_)
      (let* ((_g1553915574_
              (lambda (_g1554015571_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1554015571_)))
             (_g1553815683_
              (lambda (_g1554015577_)
                (if (gx#stx-pair? _g1554015577_)
                    (let ((_e1554415579_ (gx#stx-e _g1554015577_)))
                      (let ((_hd1554515582_ (##car _e1554415579_))
                            (_tl1554615584_ (##cdr _e1554415579_)))
                        (if (gx#stx-pair? _tl1554615584_)
                            (let ((_e1554715587_ (gx#stx-e _tl1554615584_)))
                              (let ((_hd1554815590_ (##car _e1554715587_))
                                    (_tl1554915592_ (##cdr _e1554715587_)))
                                (if (gx#stx-pair/null? _hd1554815590_)
                                    (let ((_g17394_
                                           (gx#syntax-split-splice
                                            _hd1554815590_
                                            '0)))
                                      (begin
                                        (let ((_g17395_
                                               (if (##values? _g17394_)
                                                   (##vector-length _g17394_)
                                                   1)))
                                          (if (not (##fx= _g17395_ 2))
                                              (error "Context expects 2 values"
                                                     _g17395_)))
                                        (let ((_target1555015595_
                                               (##vector-ref _g17394_ 0))
                                              (_tl1555215597_
                                               (##vector-ref _g17394_ 1)))
                                          (if (gx#stx-null? _tl1555215597_)
                                              (letrec ((_loop1555315600_
                                                        (lambda (_hd1555115603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1555715605_
                         _bind1555815607_)
                  (if (gx#stx-pair? _hd1555115603_)
                      (let ((_e1555415610_ (gx#stx-e _hd1555115603_)))
                        (let ((_lp-hd1555515613_ (##car _e1555415610_))
                              (_lp-tl1555615615_ (##cdr _e1555415610_)))
                          (if (gx#stx-pair? _lp-hd1555515613_)
                              (let ((_e1556115618_
                                     (gx#stx-e _lp-hd1555515613_)))
                                (let ((_hd1556215621_ (##car _e1556115618_))
                                      (_tl1556315623_ (##cdr _e1556115618_)))
                                  (if (gx#stx-pair? _tl1556315623_)
                                      (let ((_e1556415626_
                                             (gx#stx-e _tl1556315623_)))
                                        (let ((_hd1556515629_
                                               (##car _e1556415626_))
                                              (_tl1556615631_
                                               (##cdr _e1556415626_)))
                                          (if (gx#stx-null? _tl1556615631_)
                                              (_loop1555315600_
                                               _lp-tl1555615615_
                                               (cons _hd1556515629_
                                                     _expr1555715605_)
                                               (cons _hd1556215621_
                                                     _bind1555815607_))
                                              (_g1553915574_ _g1554015577_))))
                                      (_g1553915574_ _g1554015577_))))
                              (_g1553915574_ _g1554015577_))))
                      (let ((_expr1555915634_ (reverse _expr1555715605_))
                            (_bind1556015636_ (reverse _bind1555815607_)))
                        (if (gx#stx-pair? _tl1554915592_)
                            (let ((_e1556715639_ (gx#stx-e _tl1554915592_)))
                              (let ((_hd1556815642_ (##car _e1556715639_))
                                    (_tl1556915644_ (##cdr _e1556715639_)))
                                (if (gx#stx-null? _tl1556915644_)
                                    ((lambda (_L15647_ _L15648_ _L15649_)
                                       (let ((_$e15680_
                                              (ormap1 (lambda (_g1566815670_)
                                                        (gxc#compile-e
                                                         _g1566815670_
                                                         _arg15537_))
                                                      (begin
                                                        '#!void
                                                        (foldr1 (lambda (_g1567215675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1567315677_)
                          (cons _g1567215675_ _g1567315677_))
                        '()
                        _L15648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e15680_
                                             _$e15680_
                                             (gxc#compile-e
                                              _L15647_
                                              _arg15537_))))
                                     _hd1556815642_
                                     _expr1555915634_
                                     _bind1556015636_)
                                    (_g1553915574_ _g1554015577_))))
                            (_g1553915574_ _g1554015577_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1555315600_
                                                 _target1555015595_
                                                 '()
                                                 '()))
                                              (_g1553915574_ _g1554015577_)))))
                                    (_g1553915574_ _g1554015577_))))
                            (_g1553915574_ _g1554015577_))))
                    (_g1553915574_ _g1554015577_)))))
        (_g1553815683_ _stx15536_))))
  (define gxc#find-setq%
    (lambda (_stx15468_ _arg15469_)
      (let* ((_g1547115488_
              (lambda (_g1547215485_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1547215485_)))
             (_g1547015533_
              (lambda (_g1547215491_)
                (if (gx#stx-pair? _g1547215491_)
                    (let ((_e1547515493_ (gx#stx-e _g1547215491_)))
                      (let ((_hd1547615496_ (##car _e1547515493_))
                            (_tl1547715498_ (##cdr _e1547515493_)))
                        (if (gx#stx-pair? _tl1547715498_)
                            (let ((_e1547815501_ (gx#stx-e _tl1547715498_)))
                              (let ((_hd1547915504_ (##car _e1547815501_))
                                    (_tl1548015506_ (##cdr _e1547815501_)))
                                (if (gx#stx-pair? _tl1548015506_)
                                    (let ((_e1548115509_
                                           (gx#stx-e _tl1548015506_)))
                                      (let ((_hd1548215512_
                                             (##car _e1548115509_))
                                            (_tl1548315514_
                                             (##cdr _e1548115509_)))
                                        (if (gx#stx-null? _tl1548315514_)
                                            ((lambda (_L15517_ _L15518_)
                                               (gxc#compile-e
                                                _L15517_
                                                _arg15469_))
                                             _hd1548215512_
                                             _hd1547915504_)
                                            (_g1547115488_ _g1547215491_))))
                                    (_g1547115488_ _g1547215491_))))
                            (_g1547115488_ _g1547215491_))))
                    (_g1547115488_ _g1547215491_)))))
        (_g1547015533_ _stx15468_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx15412_ _ids15413_)
      (let* ((_g1541515428_
              (lambda (_g1541615425_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1541615425_)))
             (_g1541415465_
              (lambda (_g1541615431_)
                (if (gx#stx-pair? _g1541615431_)
                    (let ((_e1541815433_ (gx#stx-e _g1541615431_)))
                      (let ((_hd1541915436_ (##car _e1541815433_))
                            (_tl1542015438_ (##cdr _e1541815433_)))
                        (if (gx#stx-pair? _tl1542015438_)
                            (let ((_e1542115441_ (gx#stx-e _tl1542015438_)))
                              (let ((_hd1542215444_ (##car _e1542115441_))
                                    (_tl1542315446_ (##cdr _e1542115441_)))
                                (if (gx#stx-null? _tl1542315446_)
                                    ((lambda (_L15449_)
                                       (find (lambda (_g1546015462_)
                                               (gx#free-identifier=?
                                                _L15449_
                                                _g1546015462_))
                                             _ids15413_))
                                     _hd1542215444_)
                                    (_g1541515428_ _g1541615431_))))
                            (_g1541515428_ _g1541615431_))))
                    (_g1541515428_ _g1541615431_)))))
        (_g1541415465_ _stx15412_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx15336_ _ids15337_)
      (let* ((_g1533915356_
              (lambda (_g1534015353_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1534015353_)))
             (_g1533815409_
              (lambda (_g1534015359_)
                (if (gx#stx-pair? _g1534015359_)
                    (let ((_e1534315361_ (gx#stx-e _g1534015359_)))
                      (let ((_hd1534415364_ (##car _e1534315361_))
                            (_tl1534515366_ (##cdr _e1534315361_)))
                        (if (gx#stx-pair? _tl1534515366_)
                            (let ((_e1534615369_ (gx#stx-e _tl1534515366_)))
                              (let ((_hd1534715372_ (##car _e1534615369_))
                                    (_tl1534815374_ (##cdr _e1534615369_)))
                                (if (gx#stx-pair? _tl1534815374_)
                                    (let ((_e1534915377_
                                           (gx#stx-e _tl1534815374_)))
                                      (let ((_hd1535015380_
                                             (##car _e1534915377_))
                                            (_tl1535115382_
                                             (##cdr _e1534915377_)))
                                        (if (gx#stx-null? _tl1535115382_)
                                            ((lambda (_L15385_ _L15386_)
                                               (let ((_$e15406_
                                                      (find (lambda (_g1540115403_)
                                                              (gx#free-identifier=?
                                                               _L15386_
                                                               _g1540115403_))
                                                            _ids15337_)))
                                                 (if _$e15406_
                                                     _$e15406_
                                                     (gxc#compile-e
                                                      _L15385_
                                                      _ids15337_))))
                                             _hd1535015380_
                                             _hd1534715372_)
                                            (_g1533915356_ _g1534015359_))))
                                    (_g1533915356_ _g1534015359_))))
                            (_g1533915356_ _g1534015359_))))
                    (_g1533915356_ _g1534015359_)))))
        (_g1533815409_ _stx15336_)))))
