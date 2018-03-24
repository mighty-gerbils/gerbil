(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl17013_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17013_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl17013_ '%#lambda gxc#xform-identity)
           (table-set! _tbl17013_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl17013_ '%#let-values gxc#xform-identity)
           (table-set! _tbl17013_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl17013_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl17013_ '%#quote gxc#xform-identity)
           (table-set! _tbl17013_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17013_ '%#call gxc#xform-identity)
           (table-set! _tbl17013_ '%#if gxc#xform-identity)
           (table-set! _tbl17013_ '%#ref gxc#xform-identity)
           (table-set! _tbl17013_ '%#set! gxc#xform-identity)
           (table-set! _tbl17013_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl17013_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl17013_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl17013_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl17013_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl17013_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl17013_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl17013_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl17013_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl17009_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17009_ '%#begin gxc#xform-identity)
           (table-set! _tbl17009_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl17009_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl17009_ '%#module gxc#xform-identity)
           (table-set! _tbl17009_ '%#import gxc#xform-identity)
           (table-set! _tbl17009_ '%#export gxc#xform-identity)
           (table-set! _tbl17009_ '%#provide gxc#xform-identity)
           (table-set! _tbl17009_ '%#extern gxc#xform-identity)
           (table-set! _tbl17009_ '%#define-values gxc#xform-identity)
           (table-set! _tbl17009_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl17009_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl17009_ '%#declare gxc#xform-identity)
           _tbl17009_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl17005_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl17005_ (force gxc#&identity-special-form))
           (hash-copy! _tbl17005_ (force gxc#&identity-expression))
           _tbl17005_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl17001_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl17001_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl17001_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl17001_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl17001_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl17001_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl17001_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl17001_ '%#quote gxc#xform-identity)
           (table-set! _tbl17001_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17001_ '%#call gxc#xform-operands)
           (table-set! _tbl17001_ '%#if gxc#xform-operands)
           (table-set! _tbl17001_ '%#ref gxc#xform-identity)
           (table-set! _tbl17001_ '%#set! gxc#xform-setq%)
           (table-set! _tbl17001_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl17001_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl17001_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl17001_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl17001_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl17001_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl17001_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl17001_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl17001_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl16997_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16997_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl16997_ (force gxc#&identity))
           (table-set! _tbl16997_ '%#begin gxc#xform-begin%)
           (table-set! _tbl16997_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl16997_ '%#module gxc#xform-module%)
           (table-set! _tbl16997_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl16997_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl16997_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl16993_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16993_ (force gxc#&void))
           (table-set! _tbl16993_ '%#begin gxc#collect-begin%)
           (table-set! _tbl16993_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl16993_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl16993_ '%#module gxc#collect-module%)
           (table-set! _tbl16993_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl16993_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl16993_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl16993_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl16993_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl16993_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl16993_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl16993_ '%#call gxc#collect-operands)
           (table-set! _tbl16993_ '%#if gxc#collect-operands)
           (table-set! _tbl16993_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl16993_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl16993_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl16993_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl16993_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl16993_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl16993_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl16993_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl16993_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl16993_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx16986_ . _args16988_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16986_ _args16988_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl16983_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16983_ (force gxc#&basic-xform-expression))
           (table-set! _tbl16983_ '%#begin gxc#xform-begin%)
           (table-set! _tbl16983_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl16983_ '%#set! gxc#expression-subst-setq%)
           _tbl16983_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx16976_ . _args16978_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16976_ _args16978_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (make-promise
     (lambda ()
       (let ((_tbl16973_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16973_ (force gxc#&expression-subst))
           (table-set! _tbl16973_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl16973_ '%#set! gxc#expression-subst*-setq%)
           _tbl16973_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx16966_ . _args16968_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16966_ _args16968_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (make-promise
     (lambda ()
       (let ((_tbl16963_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16963_ (force gxc#&false-expression))
           (table-set! _tbl16963_ '%#begin gxc#find-body%)
           (table-set!
            _tbl16963_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl16963_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl16963_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl16963_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl16963_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl16963_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl16963_ '%#call gxc#find-body%)
           (table-set! _tbl16963_ '%#if gxc#find-body%)
           (table-set! _tbl16963_ '%#set! gxc#find-setq%)
           (table-set! _tbl16963_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl16963_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl16963_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl16963_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl16963_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl16963_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl16963_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl16963_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl16963_)))))
  (define gxc#&find-var-refs
    (make-promise
     (lambda ()
       (let ((_tbl16959_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16959_ (force gxc#&find-expression))
           (table-set! _tbl16959_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl16959_ '%#set! gxc#find-var-refs-setq%)
           _tbl16959_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx16952_ . _args16954_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16952_ _args16954_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (make-promise
     (lambda ()
       (let ((_tbl16949_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16949_ (force gxc#&collect-expression-refs))
           (table-set! _tbl16949_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl16949_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl16949_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx16942_ . _args16944_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16942_ _args16944_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx16939_ . _args16940_) _stx16939_))
  (define gxc#xform-wrap-source
    (lambda (_stx16936_ _src-stx16937_)
      (gx#stx-wrap-source _stx16936_ (gx#stx-source _src-stx16937_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args16930_)
      (lambda (_g1693116933_)
        (apply gxc#compile-e _g1693116933_ _args16930_))))
  (define gxc#xform-begin%
    (lambda (_stx16889_ . _args16890_)
      (let* ((_g1689216902_
              (lambda (_g1689316899_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1689316899_)))
             (_g1689116927_
              (lambda (_g1689316905_)
                (if (gx#stx-pair? _g1689316905_)
                    (let ((_e1689516907_ (gx#stx-e _g1689316905_)))
                      (let ((_hd1689616910_ (##car _e1689516907_))
                            (_tl1689716912_ (##cdr _e1689516907_)))
                        ((lambda (_L16915_)
                           (let ((_forms16925_
                                  (map (gxc#xform-apply-compile-e _args16890_)
                                       _L16915_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms16925_)
                              _stx16889_)))
                         _tl1689716912_)))
                    (_g1689216902_ _g1689316905_)))))
        (_g1689116927_ _stx16889_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx16847_ . _args16848_)
      (let* ((_g1685016860_
              (lambda (_g1685116857_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1685116857_)))
             (_g1684916886_
              (lambda (_g1685116863_)
                (if (gx#stx-pair? _g1685116863_)
                    (let ((_e1685316865_ (gx#stx-e _g1685116863_)))
                      (let ((_hd1685416868_ (##car _e1685316865_))
                            (_tl1685516870_ (##cdr _e1685316865_)))
                        ((lambda (_L16873_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms16884_
                                     (map (gxc#xform-apply-compile-e
                                           _args16848_)
                                          _L16873_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms16884_)
                                 _stx16847_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1685516870_)))
                    (_g1685016860_ _g1685116863_)))))
        (_g1684916886_ _stx16847_))))
  (define gxc#xform-module%
    (lambda (_stx16784_ . _args16785_)
      (let* ((_g1678716801_
              (lambda (_g1678816798_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1678816798_)))
             (_g1678616844_
              (lambda (_g1678816804_)
                (if (gx#stx-pair? _g1678816804_)
                    (let ((_e1679116806_ (gx#stx-e _g1678816804_)))
                      (let ((_hd1679216809_ (##car _e1679116806_))
                            (_tl1679316811_ (##cdr _e1679116806_)))
                        (if (gx#stx-pair? _tl1679316811_)
                            (let ((_e1679416814_ (gx#stx-e _tl1679316811_)))
                              (let ((_hd1679516817_ (##car _e1679416814_))
                                    (_tl1679616819_ (##cdr _e1679416814_)))
                                ((lambda (_L16822_ _L16823_)
                                   (let* ((_ctx16836_
                                           (gx#syntax-local-e__0 _L16823_))
                                          (_code16838_
                                           (##structure-ref
                                            _ctx16836_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code16841_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code16838_
                                                     _args16785_))
                                            gx#current-expander-context
                                            _ctx16836_)))
                                     (begin
                                       (##structure-set!
                                        _ctx16836_
                                        _code16841_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L16823_
                                                    (cons _code16841_ '())))
                                        _stx16784_))))
                                 _tl1679616819_
                                 _hd1679516817_)))
                            (_g1678716801_ _g1678816804_))))
                    (_g1678716801_ _g1678816804_)))))
        (_g1678616844_ _stx16784_))))
  (define gxc#xform-define-values%
    (lambda (_stx16714_ . _args16715_)
      (let* ((_g1671716734_
              (lambda (_g1671816731_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1671816731_)))
             (_g1671616781_
              (lambda (_g1671816737_)
                (if (gx#stx-pair? _g1671816737_)
                    (let ((_e1672116739_ (gx#stx-e _g1671816737_)))
                      (let ((_hd1672216742_ (##car _e1672116739_))
                            (_tl1672316744_ (##cdr _e1672116739_)))
                        (if (gx#stx-pair? _tl1672316744_)
                            (let ((_e1672416747_ (gx#stx-e _tl1672316744_)))
                              (let ((_hd1672516750_ (##car _e1672416747_))
                                    (_tl1672616752_ (##cdr _e1672416747_)))
                                (if (gx#stx-pair? _tl1672616752_)
                                    (let ((_e1672716755_
                                           (gx#stx-e _tl1672616752_)))
                                      (let ((_hd1672816758_
                                             (##car _e1672716755_))
                                            (_tl1672916760_
                                             (##cdr _e1672716755_)))
                                        (if (gx#stx-null? _tl1672916760_)
                                            ((lambda (_L16763_ _L16764_)
                                               (let ((_expr16779_
                                                      (apply gxc#compile-e
                                                             _L16763_
                                                             _args16715_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L16764_
                                                              (cons _expr16779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16714_)))
                                             _hd1672816758_
                                             _hd1672516750_)
                                            (_g1671716734_ _g1671816737_))))
                                    (_g1671716734_ _g1671816737_))))
                            (_g1671716734_ _g1671816737_))))
                    (_g1671716734_ _g1671816737_)))))
        (_g1671616781_ _stx16714_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx16643_ . _args16644_)
      (let* ((_g1664616663_
              (lambda (_g1664716660_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1664716660_)))
             (_g1664516711_
              (lambda (_g1664716666_)
                (if (gx#stx-pair? _g1664716666_)
                    (let ((_e1665016668_ (gx#stx-e _g1664716666_)))
                      (let ((_hd1665116671_ (##car _e1665016668_))
                            (_tl1665216673_ (##cdr _e1665016668_)))
                        (if (gx#stx-pair? _tl1665216673_)
                            (let ((_e1665316676_ (gx#stx-e _tl1665216673_)))
                              (let ((_hd1665416679_ (##car _e1665316676_))
                                    (_tl1665516681_ (##cdr _e1665316676_)))
                                (if (gx#stx-pair? _tl1665516681_)
                                    (let ((_e1665616684_
                                           (gx#stx-e _tl1665516681_)))
                                      (let ((_hd1665716687_
                                             (##car _e1665616684_))
                                            (_tl1665816689_
                                             (##cdr _e1665616684_)))
                                        (if (gx#stx-null? _tl1665816689_)
                                            ((lambda (_L16692_ _L16693_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr16709_
                                                         (apply gxc#compile-e
                                                                _L16692_
                                                                _args16644_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L16693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr16709_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx16643_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1665716687_
                                             _hd1665416679_)
                                            (_g1664616663_ _g1664716666_))))
                                    (_g1664616663_ _g1664716666_))))
                            (_g1664616663_ _g1664716666_))))
                    (_g1664616663_ _g1664716666_)))))
        (_g1664516711_ _stx16643_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx16573_ . _args16574_)
      (let* ((_g1657616593_
              (lambda (_g1657716590_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1657716590_)))
             (_g1657516640_
              (lambda (_g1657716596_)
                (if (gx#stx-pair? _g1657716596_)
                    (let ((_e1658016598_ (gx#stx-e _g1657716596_)))
                      (let ((_hd1658116601_ (##car _e1658016598_))
                            (_tl1658216603_ (##cdr _e1658016598_)))
                        (if (gx#stx-pair? _tl1658216603_)
                            (let ((_e1658316606_ (gx#stx-e _tl1658216603_)))
                              (let ((_hd1658416609_ (##car _e1658316606_))
                                    (_tl1658516611_ (##cdr _e1658316606_)))
                                (if (gx#stx-pair? _tl1658516611_)
                                    (let ((_e1658616614_
                                           (gx#stx-e _tl1658516611_)))
                                      (let ((_hd1658716617_
                                             (##car _e1658616614_))
                                            (_tl1658816619_
                                             (##cdr _e1658616614_)))
                                        (if (gx#stx-null? _tl1658816619_)
                                            ((lambda (_L16622_ _L16623_)
                                               (let ((_expr16638_
                                                      (apply gxc#compile-e
                                                             _L16622_
                                                             _args16574_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L16623_
                                                              (cons _expr16638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16573_)))
                                             _hd1658716617_
                                             _hd1658416609_)
                                            (_g1657616593_ _g1657716596_))))
                                    (_g1657616593_ _g1657716596_))))
                            (_g1657616593_ _g1657716596_))))
                    (_g1657616593_ _g1657716596_)))))
        (_g1657516640_ _stx16573_))))
  (define gxc#xform-lambda%
    (lambda (_stx16516_ . _args16517_)
      (let* ((_g1651916533_
              (lambda (_g1652016530_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1652016530_)))
             (_g1651816570_
              (lambda (_g1652016536_)
                (if (gx#stx-pair? _g1652016536_)
                    (let ((_e1652316538_ (gx#stx-e _g1652016536_)))
                      (let ((_hd1652416541_ (##car _e1652316538_))
                            (_tl1652516543_ (##cdr _e1652316538_)))
                        (if (gx#stx-pair? _tl1652516543_)
                            (let ((_e1652616546_ (gx#stx-e _tl1652516543_)))
                              (let ((_hd1652716549_ (##car _e1652616546_))
                                    (_tl1652816551_ (##cdr _e1652616546_)))
                                ((lambda (_L16554_ _L16555_)
                                   (let ((_body16568_
                                          (map (gxc#xform-apply-compile-e
                                                _args16517_)
                                               _L16554_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L16555_ _body16568_))
                                      _stx16516_)))
                                 _tl1652816551_
                                 _hd1652716549_)))
                            (_g1651916533_ _g1652016536_))))
                    (_g1651916533_ _g1652016536_)))))
        (_g1651816570_ _stx16516_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx16429_ . _args16430_)
      (letrec ((_clause-e16432_
                (lambda (_clause16473_)
                  (let* ((_g1647516486_
                          (lambda (_g1647616483_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1647616483_)))
                         (_g1647416513_
                          (lambda (_g1647616489_)
                            (if (gx#stx-pair? _g1647616489_)
                                (let ((_e1647916491_ (gx#stx-e _g1647616489_)))
                                  (let ((_hd1648016494_ (##car _e1647916491_))
                                        (_tl1648116496_ (##cdr _e1647916491_)))
                                    ((lambda (_L16499_ _L16500_)
                                       (let ((_body16511_
                                              (map (gxc#xform-apply-compile-e
                                                    _args16430_)
                                                   _L16499_)))
                                         (cons _L16500_ _body16511_)))
                                     _tl1648116496_
                                     _hd1648016494_)))
                                (_g1647516486_ _g1647616489_)))))
                    (_g1647416513_ _clause16473_)))))
        (let* ((_g1643416444_
                (lambda (_g1643516441_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1643516441_)))
               (_g1643316470_
                (lambda (_g1643516447_)
                  (if (gx#stx-pair? _g1643516447_)
                      (let ((_e1643716449_ (gx#stx-e _g1643516447_)))
                        (let ((_hd1643816452_ (##car _e1643716449_))
                              (_tl1643916454_ (##cdr _e1643716449_)))
                          ((lambda (_L16457_)
                             (let ((_clauses16468_
                                    (map _clause-e16432_ _L16457_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses16468_)
                                _stx16429_)))
                           _tl1643916454_)))
                      (_g1643416444_ _g1643516447_)))))
          (_g1643316470_ _stx16429_)))))
  (define gxc#xform-let-values%
    (lambda (_stx16223_ . _args16224_)
      (let* ((_g1622616259_
              (lambda (_g1622716256_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1622716256_)))
             (_g1622516426_
              (lambda (_g1622716262_)
                (if (gx#stx-pair? _g1622716262_)
                    (let ((_e1623216264_ (gx#stx-e _g1622716262_)))
                      (let ((_hd1623316267_ (##car _e1623216264_))
                            (_tl1623416269_ (##cdr _e1623216264_)))
                        (if (gx#stx-pair? _tl1623416269_)
                            (let ((_e1623516272_ (gx#stx-e _tl1623416269_)))
                              (let ((_hd1623616275_ (##car _e1623516272_))
                                    (_tl1623716277_ (##cdr _e1623516272_)))
                                (if (gx#stx-pair/null? _hd1623616275_)
                                    (let ((_g17015_
                                           (gx#syntax-split-splice
                                            _hd1623616275_
                                            '0)))
                                      (begin
                                        (let ((_g17016_
                                               (if (##values? _g17015_)
                                                   (##vector-length _g17015_)
                                                   1)))
                                          (if (not (##fx= _g17016_ 2))
                                              (error "Context expects 2 values"
                                                     _g17016_)))
                                        (let ((_target1623816280_
                                               (##vector-ref _g17015_ 0))
                                              (_tl1624016282_
                                               (##vector-ref _g17015_ 1)))
                                          (if (gx#stx-null? _tl1624016282_)
                                              (letrec ((_loop1624116285_
                                                        (lambda (_hd1623916288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1624516290_
                         _hd1624616292_)
                  (if (gx#stx-pair? _hd1623916288_)
                      (let ((_e1624216295_ (gx#stx-e _hd1623916288_)))
                        (let ((_lp-hd1624316298_ (##car _e1624216295_))
                              (_lp-tl1624416300_ (##cdr _e1624216295_)))
                          (if (gx#stx-pair? _lp-hd1624316298_)
                              (let ((_e1624916303_
                                     (gx#stx-e _lp-hd1624316298_)))
                                (let ((_hd1625016306_ (##car _e1624916303_))
                                      (_tl1625116308_ (##cdr _e1624916303_)))
                                  (if (gx#stx-pair? _tl1625116308_)
                                      (let ((_e1625216311_
                                             (gx#stx-e _tl1625116308_)))
                                        (let ((_hd1625316314_
                                               (##car _e1625216311_))
                                              (_tl1625416316_
                                               (##cdr _e1625216311_)))
                                          (if (gx#stx-null? _tl1625416316_)
                                              (_loop1624116285_
                                               _lp-tl1624416300_
                                               (cons _hd1625316314_
                                                     _expr1624516290_)
                                               (cons _hd1625016306_
                                                     _hd1624616292_))
                                              (_g1622616259_ _g1622716262_))))
                                      (_g1622616259_ _g1622716262_))))
                              (_g1622616259_ _g1622716262_))))
                      (let ((_expr1624716319_ (reverse _expr1624516290_))
                            (_hd1624816321_ (reverse _hd1624616292_)))
                        ((lambda (_L16324_ _L16325_ _L16326_ _L16327_)
                           (let* ((_g1634616362_
                                   (lambda (_g1634716359_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1634716359_)))
                                  (_g1634516416_
                                   (lambda (_g1634716365_)
                                     (if (gx#stx-pair/null? _g1634716365_)
                                         (let ((_g17017_
                                                (gx#syntax-split-splice
                                                 _g1634716365_
                                                 '0)))
                                           (begin
                                             (let ((_g17018_
                                                    (if (##values? _g17017_)
                                                        (##vector-length
                                                         _g17017_)
                                                        1)))
                                               (if (not (##fx= _g17018_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17018_)))
                                             (let ((_target1634916367_
                                                    (##vector-ref _g17017_ 0))
                                                   (_tl1635116369_
                                                    (##vector-ref _g17017_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1635116369_)
                                                   (letrec ((_loop1635216372_
                                                             (lambda (_hd1635016375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1635616377_)
                       (if (gx#stx-pair? _hd1635016375_)
                           (let ((_e1635316380_ (gx#syntax-e _hd1635016375_)))
                             (let ((_lp-hd1635416383_ (##car _e1635316380_))
                                   (_lp-tl1635516385_ (##cdr _e1635316380_)))
                               (_loop1635216372_
                                _lp-tl1635516385_
                                (cons _lp-hd1635416383_ _expr1635616377_))))
                           (let ((_expr1635716388_ (reverse _expr1635616377_)))
                             ((lambda (_L16391_)
                                (let ()
                                  (let ((_body16404_
                                         (map (gxc#xform-apply-compile-e
                                               _args16224_)
                                              _L16324_)))
                                    (gxc#xform-wrap-source
                                     (cons _L16327_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L16391_
                                                    _L16326_)
                                                   (foldr2 (lambda (_g1640516409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1640616411_
                            _g1640716413_)
                     (cons (cons _g1640616411_ (cons _g1640516409_ '()))
                           _g1640716413_))
                   '()
                   _L16391_
                   _L16326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body16404_))
                                     _stx16223_))))
                              _expr1635716388_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1635216372_
                                                      _target1634916367_
                                                      '()))
                                                   (_g1634616362_
                                                    _g1634716365_)))))
                                         (_g1634616362_ _g1634716365_)))))
                             (_g1634516416_
                              (map (gxc#xform-apply-compile-e _args16224_)
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1641816421_
                                                      _g1641916423_)
                                               (cons _g1641816421_
                                                     _g1641916423_))
                                             '()
                                             _L16325_))))))
                         _tl1623716277_
                         _expr1624716319_
                         _hd1624816321_
                         _hd1623316267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1624116285_
                                                 _target1623816280_
                                                 '()
                                                 '()))
                                              (_g1622616259_ _g1622716262_)))))
                                    (_g1622616259_ _g1622716262_))))
                            (_g1622616259_ _g1622716262_))))
                    (_g1622616259_ _g1622716262_)))))
        (_g1622516426_ _stx16223_))))
  (define gxc#xform-operands
    (lambda (_stx16179_ . _args16180_)
      (let* ((_g1618216193_
              (lambda (_g1618316190_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1618316190_)))
             (_g1618116220_
              (lambda (_g1618316196_)
                (if (gx#stx-pair? _g1618316196_)
                    (let ((_e1618616198_ (gx#stx-e _g1618316196_)))
                      (let ((_hd1618716201_ (##car _e1618616198_))
                            (_tl1618816203_ (##cdr _e1618616198_)))
                        ((lambda (_L16206_ _L16207_)
                           (let ((_rands16218_
                                  (map (gxc#xform-apply-compile-e _args16180_)
                                       _L16206_)))
                             (gxc#xform-wrap-source
                              (cons _L16207_ _rands16218_)
                              _stx16179_)))
                         _tl1618816203_
                         _hd1618716201_)))
                    (_g1618216193_ _g1618316196_)))))
        (_g1618116220_ _stx16179_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx16109_ . _args16110_)
      (let* ((_g1611216129_
              (lambda (_g1611316126_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1611316126_)))
             (_g1611116176_
              (lambda (_g1611316132_)
                (if (gx#stx-pair? _g1611316132_)
                    (let ((_e1611616134_ (gx#stx-e _g1611316132_)))
                      (let ((_hd1611716137_ (##car _e1611616134_))
                            (_tl1611816139_ (##cdr _e1611616134_)))
                        (if (gx#stx-pair? _tl1611816139_)
                            (let ((_e1611916142_ (gx#stx-e _tl1611816139_)))
                              (let ((_hd1612016145_ (##car _e1611916142_))
                                    (_tl1612116147_ (##cdr _e1611916142_)))
                                (if (gx#stx-pair? _tl1612116147_)
                                    (let ((_e1612216150_
                                           (gx#stx-e _tl1612116147_)))
                                      (let ((_hd1612316153_
                                             (##car _e1612216150_))
                                            (_tl1612416155_
                                             (##cdr _e1612216150_)))
                                        (if (gx#stx-null? _tl1612416155_)
                                            ((lambda (_L16158_ _L16159_)
                                               (let ((_expr16174_
                                                      (apply gxc#compile-e
                                                             _L16158_
                                                             _args16110_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L16159_
                                                              (cons _expr16174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16109_)))
                                             _hd1612316153_
                                             _hd1612016145_)
                                            (_g1611216129_ _g1611316132_))))
                                    (_g1611216129_ _g1611316132_))))
                            (_g1611216129_ _g1611316132_))))
                    (_g1611216129_ _g1611316132_)))))
        (_g1611116176_ _stx16109_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx16040_)
      (let* ((_g1604216059_
              (lambda (_g1604316056_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1604316056_)))
             (_g1604116106_
              (lambda (_g1604316062_)
                (if (gx#stx-pair? _g1604316062_)
                    (let ((_e1604616064_ (gx#stx-e _g1604316062_)))
                      (let ((_hd1604716067_ (##car _e1604616064_))
                            (_tl1604816069_ (##cdr _e1604616064_)))
                        (if (gx#stx-pair? _tl1604816069_)
                            (let ((_e1604916072_ (gx#stx-e _tl1604816069_)))
                              (let ((_hd1605016075_ (##car _e1604916072_))
                                    (_tl1605116077_ (##cdr _e1604916072_)))
                                (if (gx#stx-pair? _tl1605116077_)
                                    (let ((_e1605216080_
                                           (gx#stx-e _tl1605116077_)))
                                      (let ((_hd1605316083_
                                             (##car _e1605216080_))
                                            (_tl1605416085_
                                             (##cdr _e1605216080_)))
                                        (if (gx#stx-null? _tl1605416085_)
                                            ((lambda (_L16088_ _L16089_)
                                               (let ((_sym16104_
                                                      (gxc#identifier-symbol
                                                       _L16089_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym16104_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym16104_
                                                    '#t)
                                                   (gxc#compile-e _L16088_))))
                                             _hd1605316083_
                                             _hd1605016075_)
                                            (_g1604216059_ _g1604316062_))))
                                    (_g1604216059_ _g1604316062_))))
                            (_g1604216059_ _g1604316062_))))
                    (_g1604216059_ _g1604316062_)))))
        (_g1604116106_ _stx16040_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15987_ _id15988_ _new-id15989_)
      (let* ((_g1599116004_
              (lambda (_g1599216001_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1599216001_)))
             (_g1599016037_
              (lambda (_g1599216007_)
                (if (gx#stx-pair? _g1599216007_)
                    (let ((_e1599416009_ (gx#stx-e _g1599216007_)))
                      (let ((_hd1599516012_ (##car _e1599416009_))
                            (_tl1599616014_ (##cdr _e1599416009_)))
                        (if (gx#stx-pair? _tl1599616014_)
                            (let ((_e1599716017_ (gx#stx-e _tl1599616014_)))
                              (let ((_hd1599816020_ (##car _e1599716017_))
                                    (_tl1599916022_ (##cdr _e1599716017_)))
                                (if (gx#stx-null? _tl1599916022_)
                                    ((lambda (_L16025_)
                                       (if (gx#free-identifier=?
                                            _L16025_
                                            _id15988_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id15989_ '()))
                                            _stx15987_)
                                           _stx15987_))
                                     _hd1599816020_)
                                    (_g1599116004_ _g1599216007_))))
                            (_g1599116004_ _g1599216007_))))
                    (_g1599116004_ _g1599216007_)))))
        (_g1599016037_ _stx15987_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx15928_ _subst15929_)
      (let* ((_g1593115944_
              (lambda (_g1593215941_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1593215941_)))
             (_g1593015984_
              (lambda (_g1593215947_)
                (if (gx#stx-pair? _g1593215947_)
                    (let ((_e1593415949_ (gx#stx-e _g1593215947_)))
                      (let ((_hd1593515952_ (##car _e1593415949_))
                            (_tl1593615954_ (##cdr _e1593415949_)))
                        (if (gx#stx-pair? _tl1593615954_)
                            (let ((_e1593715957_ (gx#stx-e _tl1593615954_)))
                              (let ((_hd1593815960_ (##car _e1593715957_))
                                    (_tl1593915962_ (##cdr _e1593715957_)))
                                (if (gx#stx-null? _tl1593915962_)
                                    ((lambda (_L15965_)
                                       (let ((_$e15979_
                                              (find (lambda (_sub15977_)
                                                      (gx#free-identifier=?
                                                       _L15965_
                                                       (car _sub15977_)))
                                                    _subst15929_)))
                                         (if _$e15979_
                                             ((lambda (_sub15982_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub15982_)
                                                             '()))
                                                 _stx15928_))
                                              _$e15979_)
                                             _stx15928_)))
                                     _hd1593815960_)
                                    (_g1593115944_ _g1593215947_))))
                            (_g1593115944_ _g1593215947_))))
                    (_g1593115944_ _g1593215947_)))))
        (_g1593015984_ _stx15928_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx15856_ _id15857_ _new-id15858_)
      (let* ((_g1586015877_
              (lambda (_g1586115874_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1586115874_)))
             (_g1585915925_
              (lambda (_g1586115880_)
                (if (gx#stx-pair? _g1586115880_)
                    (let ((_e1586415882_ (gx#stx-e _g1586115880_)))
                      (let ((_hd1586515885_ (##car _e1586415882_))
                            (_tl1586615887_ (##cdr _e1586415882_)))
                        (if (gx#stx-pair? _tl1586615887_)
                            (let ((_e1586715890_ (gx#stx-e _tl1586615887_)))
                              (let ((_hd1586815893_ (##car _e1586715890_))
                                    (_tl1586915895_ (##cdr _e1586715890_)))
                                (if (gx#stx-pair? _tl1586915895_)
                                    (let ((_e1587015898_
                                           (gx#stx-e _tl1586915895_)))
                                      (let ((_hd1587115901_
                                             (##car _e1587015898_))
                                            (_tl1587215903_
                                             (##cdr _e1587015898_)))
                                        (if (gx#stx-null? _tl1587215903_)
                                            ((lambda (_L15906_ _L15907_)
                                               (let ((_new-expr15922_
                                                      (gxc#compile-e
                                                       _L15906_
                                                       _id15857_
                                                       _new-id15858_))
                                                     (_new-xid15923_
                                                      (if (gx#free-identifier=?
                                                           _L15907_
                                                           _id15857_)
                                                          _new-id15858_
                                                          _L15907_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid15923_
                                                              (cons _new-expr15922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15856_)))
                                             _hd1587115901_
                                             _hd1586815893_)
                                            (_g1586015877_ _g1586115880_))))
                                    (_g1586015877_ _g1586115880_))))
                            (_g1586015877_ _g1586115880_))))
                    (_g1586015877_ _g1586115880_)))))
        (_g1585915925_ _stx15856_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx15780_ _subst15781_)
      (let* ((_g1578315800_
              (lambda (_g1578415797_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1578415797_)))
             (_g1578215853_
              (lambda (_g1578415803_)
                (if (gx#stx-pair? _g1578415803_)
                    (let ((_e1578715805_ (gx#stx-e _g1578415803_)))
                      (let ((_hd1578815808_ (##car _e1578715805_))
                            (_tl1578915810_ (##cdr _e1578715805_)))
                        (if (gx#stx-pair? _tl1578915810_)
                            (let ((_e1579015813_ (gx#stx-e _tl1578915810_)))
                              (let ((_hd1579115816_ (##car _e1579015813_))
                                    (_tl1579215818_ (##cdr _e1579015813_)))
                                (if (gx#stx-pair? _tl1579215818_)
                                    (let ((_e1579315821_
                                           (gx#stx-e _tl1579215818_)))
                                      (let ((_hd1579415824_
                                             (##car _e1579315821_))
                                            (_tl1579515826_
                                             (##cdr _e1579315821_)))
                                        (if (gx#stx-null? _tl1579515826_)
                                            ((lambda (_L15829_ _L15830_)
                                               (let ((_new-expr15850_
                                                      (gxc#compile-e
                                                       _L15829_
                                                       _subst15781_))
                                                     (_new-xid15851_
                                                      (let ((_$e15847_
                                                             (find (lambda (_sub15845_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L15830_ (car _sub15845_)))
                           _subst15781_)))
                (if _$e15847_ (cdr _$e15847_) _L15830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid15851_
                                                              (cons _new-expr15850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15780_)))
                                             _hd1579415824_
                                             _hd1579115816_)
                                            (_g1578315800_ _g1578415803_))))
                                    (_g1578315800_ _g1578415803_))))
                            (_g1578315800_ _g1578415803_))))
                    (_g1578315800_ _g1578415803_)))))
        (_g1578215853_ _stx15780_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx15726_ _ht15727_)
      (let* ((_g1572915742_
              (lambda (_g1573015739_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1573015739_)))
             (_g1572815777_
              (lambda (_g1573015745_)
                (if (gx#stx-pair? _g1573015745_)
                    (let ((_e1573215747_ (gx#stx-e _g1573015745_)))
                      (let ((_hd1573315750_ (##car _e1573215747_))
                            (_tl1573415752_ (##cdr _e1573215747_)))
                        (if (gx#stx-pair? _tl1573415752_)
                            (let ((_e1573515755_ (gx#stx-e _tl1573415752_)))
                              (let ((_hd1573615758_ (##car _e1573515755_))
                                    (_tl1573715760_ (##cdr _e1573515755_)))
                                (if (gx#stx-null? _tl1573715760_)
                                    ((lambda (_L15763_)
                                       (let ((_eid15775_
                                              (gxc#identifier-symbol
                                               _L15763_)))
                                         (hash-update!
                                          _ht15727_
                                          _eid15775_
                                          1+
                                          '0)))
                                     _hd1573615758_)
                                    (_g1572915742_ _g1573015745_))))
                            (_g1572915742_ _g1573015745_))))
                    (_g1572915742_ _g1573015745_)))))
        (_g1572815777_ _stx15726_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx15656_ _ht15657_)
      (let* ((_g1565915676_
              (lambda (_g1566015673_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1566015673_)))
             (_g1565815723_
              (lambda (_g1566015679_)
                (if (gx#stx-pair? _g1566015679_)
                    (let ((_e1566315681_ (gx#stx-e _g1566015679_)))
                      (let ((_hd1566415684_ (##car _e1566315681_))
                            (_tl1566515686_ (##cdr _e1566315681_)))
                        (if (gx#stx-pair? _tl1566515686_)
                            (let ((_e1566615689_ (gx#stx-e _tl1566515686_)))
                              (let ((_hd1566715692_ (##car _e1566615689_))
                                    (_tl1566815694_ (##cdr _e1566615689_)))
                                (if (gx#stx-pair? _tl1566815694_)
                                    (let ((_e1566915697_
                                           (gx#stx-e _tl1566815694_)))
                                      (let ((_hd1567015700_
                                             (##car _e1566915697_))
                                            (_tl1567115702_
                                             (##cdr _e1566915697_)))
                                        (if (gx#stx-null? _tl1567115702_)
                                            ((lambda (_L15705_ _L15706_)
                                               (let ((_eid15721_
                                                      (gxc#identifier-symbol
                                                       _L15706_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht15657_
                                                    _eid15721_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L15705_
                                                    _ht15657_))))
                                             _hd1567015700_
                                             _hd1566715692_)
                                            (_g1565915676_ _g1566015679_))))
                                    (_g1565915676_ _g1566015679_))))
                            (_g1565915676_ _g1566015679_))))
                    (_g1565915676_ _g1566015679_)))))
        (_g1565815723_ _stx15656_))))
  (define gxc#find-body%
    (lambda (_stx15569_ _arg15570_)
      (let* ((_g1557215591_
              (lambda (_g1557315588_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1557315588_)))
             (_g1557115653_
              (lambda (_g1557315594_)
                (if (gx#stx-pair? _g1557315594_)
                    (let ((_e1557515596_ (gx#stx-e _g1557315594_)))
                      (let ((_hd1557615599_ (##car _e1557515596_))
                            (_tl1557715601_ (##cdr _e1557515596_)))
                        (if (gx#stx-pair/null? _tl1557715601_)
                            (let ((_g17019_
                                   (gx#syntax-split-splice _tl1557715601_ '0)))
                              (begin
                                (let ((_g17020_
                                       (if (##values? _g17019_)
                                           (##vector-length _g17019_)
                                           1)))
                                  (if (not (##fx= _g17020_ 2))
                                      (error "Context expects 2 values"
                                             _g17020_)))
                                (let ((_target1557815604_
                                       (##vector-ref _g17019_ 0))
                                      (_tl1558015606_
                                       (##vector-ref _g17019_ 1)))
                                  (if (gx#stx-null? _tl1558015606_)
                                      (letrec ((_loop1558115609_
                                                (lambda (_hd1557915612_
                                                         _expr1558515614_)
                                                  (if (gx#stx-pair?
                                                       _hd1557915612_)
                                                      (let ((_e1558215617_
                                                             (gx#stx-e
                                                              _hd1557915612_)))
                                                        (let ((_lp-hd1558315620_
                                                               (##car _e1558215617_))
                                                              (_lp-tl1558415622_
                                                               (##cdr _e1558215617_)))
                                                          (_loop1558115609_
                                                           _lp-tl1558415622_
                                                           (cons _lp-hd1558315620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1558515614_))))
              (let ((_expr1558615625_ (reverse _expr1558515614_)))
                ((lambda (_L15628_)
                   (ormap1 (lambda (_g1564115643_)
                             (gxc#compile-e _g1564115643_ _arg15570_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1564515648_ _g1564615650_)
                                       (cons _g1564515648_ _g1564615650_))
                                     '()
                                     _L15628_))))
                 _expr1558615625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1558115609_
                                         _target1557815604_
                                         '()))
                                      (_g1557215591_ _g1557315594_)))))
                            (_g1557215591_ _g1557315594_))))
                    (_g1557215591_ _g1557315594_)))))
        (_g1557115653_ _stx15569_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx15501_ _arg15502_)
      (let* ((_g1550415521_
              (lambda (_g1550515518_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1550515518_)))
             (_g1550315566_
              (lambda (_g1550515524_)
                (if (gx#stx-pair? _g1550515524_)
                    (let ((_e1550815526_ (gx#stx-e _g1550515524_)))
                      (let ((_hd1550915529_ (##car _e1550815526_))
                            (_tl1551015531_ (##cdr _e1550815526_)))
                        (if (gx#stx-pair? _tl1551015531_)
                            (let ((_e1551115534_ (gx#stx-e _tl1551015531_)))
                              (let ((_hd1551215537_ (##car _e1551115534_))
                                    (_tl1551315539_ (##cdr _e1551115534_)))
                                (if (gx#stx-pair? _tl1551315539_)
                                    (let ((_e1551415542_
                                           (gx#stx-e _tl1551315539_)))
                                      (let ((_hd1551515545_
                                             (##car _e1551415542_))
                                            (_tl1551615547_
                                             (##cdr _e1551415542_)))
                                        (if (gx#stx-null? _tl1551615547_)
                                            ((lambda (_L15550_ _L15551_)
                                               (gxc#compile-e
                                                _L15550_
                                                _arg15502_))
                                             _hd1551515545_
                                             _hd1551215537_)
                                            (_g1550415521_ _g1550515524_))))
                                    (_g1550415521_ _g1550515524_))))
                            (_g1550415521_ _g1550515524_))))
                    (_g1550415521_ _g1550515524_)))))
        (_g1550315566_ _stx15501_))))
  (define gxc#find-lambda%
    (lambda (_stx15433_ _arg15434_)
      (let* ((_g1543615453_
              (lambda (_g1543715450_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1543715450_)))
             (_g1543515498_
              (lambda (_g1543715456_)
                (if (gx#stx-pair? _g1543715456_)
                    (let ((_e1544015458_ (gx#stx-e _g1543715456_)))
                      (let ((_hd1544115461_ (##car _e1544015458_))
                            (_tl1544215463_ (##cdr _e1544015458_)))
                        (if (gx#stx-pair? _tl1544215463_)
                            (let ((_e1544315466_ (gx#stx-e _tl1544215463_)))
                              (let ((_hd1544415469_ (##car _e1544315466_))
                                    (_tl1544515471_ (##cdr _e1544315466_)))
                                (if (gx#stx-pair? _tl1544515471_)
                                    (let ((_e1544615474_
                                           (gx#stx-e _tl1544515471_)))
                                      (let ((_hd1544715477_
                                             (##car _e1544615474_))
                                            (_tl1544815479_
                                             (##cdr _e1544615474_)))
                                        (if (gx#stx-null? _tl1544815479_)
                                            ((lambda (_L15482_ _L15483_)
                                               (gxc#compile-e
                                                _L15482_
                                                _arg15434_))
                                             _hd1544715477_
                                             _hd1544415469_)
                                            (_g1543615453_ _g1543715456_))))
                                    (_g1543615453_ _g1543715456_))))
                            (_g1543615453_ _g1543715456_))))
                    (_g1543615453_ _g1543715456_)))))
        (_g1543515498_ _stx15433_))))
  (define gxc#find-case-lambda%
    (lambda (_stx15315_ _arg15316_)
      (let* ((_g1531815346_
              (lambda (_g1531915343_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1531915343_)))
             (_g1531715430_
              (lambda (_g1531915349_)
                (if (gx#stx-pair? _g1531915349_)
                    (let ((_e1532215351_ (gx#stx-e _g1531915349_)))
                      (let ((_hd1532315354_ (##car _e1532215351_))
                            (_tl1532415356_ (##cdr _e1532215351_)))
                        (if (gx#stx-pair/null? _tl1532415356_)
                            (let ((_g17021_
                                   (gx#syntax-split-splice _tl1532415356_ '0)))
                              (begin
                                (let ((_g17022_
                                       (if (##values? _g17021_)
                                           (##vector-length _g17021_)
                                           1)))
                                  (if (not (##fx= _g17022_ 2))
                                      (error "Context expects 2 values"
                                             _g17022_)))
                                (let ((_target1532515359_
                                       (##vector-ref _g17021_ 0))
                                      (_tl1532715361_
                                       (##vector-ref _g17021_ 1)))
                                  (if (gx#stx-null? _tl1532715361_)
                                      (letrec ((_loop1532815364_
                                                (lambda (_hd1532615367_
                                                         _body1533215369_
                                                         _hd1533315371_)
                                                  (if (gx#stx-pair?
                                                       _hd1532615367_)
                                                      (let ((_e1532915374_
                                                             (gx#stx-e
                                                              _hd1532615367_)))
                                                        (let ((_lp-hd1533015377_
                                                               (##car _e1532915374_))
                                                              (_lp-tl1533115379_
                                                               (##cdr _e1532915374_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1533015377_)
                                                              (let ((_e1533615382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1533015377_)))
                        (let ((_hd1533715385_ (##car _e1533615382_))
                              (_tl1533815387_ (##cdr _e1533615382_)))
                          (if (gx#stx-pair? _tl1533815387_)
                              (let ((_e1533915390_ (gx#stx-e _tl1533815387_)))
                                (let ((_hd1534015393_ (##car _e1533915390_))
                                      (_tl1534115395_ (##cdr _e1533915390_)))
                                  (if (gx#stx-null? _tl1534115395_)
                                      (_loop1532815364_
                                       _lp-tl1533115379_
                                       (cons _hd1534015393_ _body1533215369_)
                                       (cons _hd1533715385_ _hd1533315371_))
                                      (_g1531815346_ _g1531915349_))))
                              (_g1531815346_ _g1531915349_))))
                      (_g1531815346_ _g1531915349_))))
              (let ((_body1533415398_ (reverse _body1533215369_))
                    (_hd1533515400_ (reverse _hd1533315371_)))
                ((lambda (_L15403_ _L15404_)
                   (ormap1 (lambda (_g1541815420_)
                             (gxc#compile-e _g1541815420_ _arg15316_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1542215425_ _g1542315427_)
                                       (cons _g1542215425_ _g1542315427_))
                                     '()
                                     _L15403_))))
                 _body1533415398_
                 _hd1533515400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1532815364_
                                         _target1532515359_
                                         '()
                                         '()))
                                      (_g1531815346_ _g1531915349_)))))
                            (_g1531815346_ _g1531915349_))))
                    (_g1531815346_ _g1531915349_)))))
        (_g1531715430_ _stx15315_))))
  (define gxc#find-let-values%
    (lambda (_stx15165_ _arg15166_)
      (let* ((_g1516815203_
              (lambda (_g1516915200_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1516915200_)))
             (_g1516715312_
              (lambda (_g1516915206_)
                (if (gx#stx-pair? _g1516915206_)
                    (let ((_e1517315208_ (gx#stx-e _g1516915206_)))
                      (let ((_hd1517415211_ (##car _e1517315208_))
                            (_tl1517515213_ (##cdr _e1517315208_)))
                        (if (gx#stx-pair? _tl1517515213_)
                            (let ((_e1517615216_ (gx#stx-e _tl1517515213_)))
                              (let ((_hd1517715219_ (##car _e1517615216_))
                                    (_tl1517815221_ (##cdr _e1517615216_)))
                                (if (gx#stx-pair/null? _hd1517715219_)
                                    (let ((_g17023_
                                           (gx#syntax-split-splice
                                            _hd1517715219_
                                            '0)))
                                      (begin
                                        (let ((_g17024_
                                               (if (##values? _g17023_)
                                                   (##vector-length _g17023_)
                                                   1)))
                                          (if (not (##fx= _g17024_ 2))
                                              (error "Context expects 2 values"
                                                     _g17024_)))
                                        (let ((_target1517915224_
                                               (##vector-ref _g17023_ 0))
                                              (_tl1518115226_
                                               (##vector-ref _g17023_ 1)))
                                          (if (gx#stx-null? _tl1518115226_)
                                              (letrec ((_loop1518215229_
                                                        (lambda (_hd1518015232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1518615234_
                         _bind1518715236_)
                  (if (gx#stx-pair? _hd1518015232_)
                      (let ((_e1518315239_ (gx#stx-e _hd1518015232_)))
                        (let ((_lp-hd1518415242_ (##car _e1518315239_))
                              (_lp-tl1518515244_ (##cdr _e1518315239_)))
                          (if (gx#stx-pair? _lp-hd1518415242_)
                              (let ((_e1519015247_
                                     (gx#stx-e _lp-hd1518415242_)))
                                (let ((_hd1519115250_ (##car _e1519015247_))
                                      (_tl1519215252_ (##cdr _e1519015247_)))
                                  (if (gx#stx-pair? _tl1519215252_)
                                      (let ((_e1519315255_
                                             (gx#stx-e _tl1519215252_)))
                                        (let ((_hd1519415258_
                                               (##car _e1519315255_))
                                              (_tl1519515260_
                                               (##cdr _e1519315255_)))
                                          (if (gx#stx-null? _tl1519515260_)
                                              (_loop1518215229_
                                               _lp-tl1518515244_
                                               (cons _hd1519415258_
                                                     _expr1518615234_)
                                               (cons _hd1519115250_
                                                     _bind1518715236_))
                                              (_g1516815203_ _g1516915206_))))
                                      (_g1516815203_ _g1516915206_))))
                              (_g1516815203_ _g1516915206_))))
                      (let ((_expr1518815263_ (reverse _expr1518615234_))
                            (_bind1518915265_ (reverse _bind1518715236_)))
                        (if (gx#stx-pair? _tl1517815221_)
                            (let ((_e1519615268_ (gx#stx-e _tl1517815221_)))
                              (let ((_hd1519715271_ (##car _e1519615268_))
                                    (_tl1519815273_ (##cdr _e1519615268_)))
                                (if (gx#stx-null? _tl1519815273_)
                                    ((lambda (_L15276_ _L15277_ _L15278_)
                                       (let ((_$e15309_
                                              (ormap1 (lambda (_g1529715299_)
                                                        (gxc#compile-e
                                                         _g1529715299_
                                                         _arg15166_))
                                                      (begin
                                                        '#!void
                                                        (foldr1 (lambda (_g1530115304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1530215306_)
                          (cons _g1530115304_ _g1530215306_))
                        '()
                        _L15277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e15309_
                                             _$e15309_
                                             (gxc#compile-e
                                              _L15276_
                                              _arg15166_))))
                                     _hd1519715271_
                                     _expr1518815263_
                                     _bind1518915265_)
                                    (_g1516815203_ _g1516915206_))))
                            (_g1516815203_ _g1516915206_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1518215229_
                                                 _target1517915224_
                                                 '()
                                                 '()))
                                              (_g1516815203_ _g1516915206_)))))
                                    (_g1516815203_ _g1516915206_))))
                            (_g1516815203_ _g1516915206_))))
                    (_g1516815203_ _g1516915206_)))))
        (_g1516715312_ _stx15165_))))
  (define gxc#find-setq%
    (lambda (_stx15097_ _arg15098_)
      (let* ((_g1510015117_
              (lambda (_g1510115114_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1510115114_)))
             (_g1509915162_
              (lambda (_g1510115120_)
                (if (gx#stx-pair? _g1510115120_)
                    (let ((_e1510415122_ (gx#stx-e _g1510115120_)))
                      (let ((_hd1510515125_ (##car _e1510415122_))
                            (_tl1510615127_ (##cdr _e1510415122_)))
                        (if (gx#stx-pair? _tl1510615127_)
                            (let ((_e1510715130_ (gx#stx-e _tl1510615127_)))
                              (let ((_hd1510815133_ (##car _e1510715130_))
                                    (_tl1510915135_ (##cdr _e1510715130_)))
                                (if (gx#stx-pair? _tl1510915135_)
                                    (let ((_e1511015138_
                                           (gx#stx-e _tl1510915135_)))
                                      (let ((_hd1511115141_
                                             (##car _e1511015138_))
                                            (_tl1511215143_
                                             (##cdr _e1511015138_)))
                                        (if (gx#stx-null? _tl1511215143_)
                                            ((lambda (_L15146_ _L15147_)
                                               (gxc#compile-e
                                                _L15146_
                                                _arg15098_))
                                             _hd1511115141_
                                             _hd1510815133_)
                                            (_g1510015117_ _g1510115120_))))
                                    (_g1510015117_ _g1510115120_))))
                            (_g1510015117_ _g1510115120_))))
                    (_g1510015117_ _g1510115120_)))))
        (_g1509915162_ _stx15097_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx15041_ _ids15042_)
      (let* ((_g1504415057_
              (lambda (_g1504515054_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1504515054_)))
             (_g1504315094_
              (lambda (_g1504515060_)
                (if (gx#stx-pair? _g1504515060_)
                    (let ((_e1504715062_ (gx#stx-e _g1504515060_)))
                      (let ((_hd1504815065_ (##car _e1504715062_))
                            (_tl1504915067_ (##cdr _e1504715062_)))
                        (if (gx#stx-pair? _tl1504915067_)
                            (let ((_e1505015070_ (gx#stx-e _tl1504915067_)))
                              (let ((_hd1505115073_ (##car _e1505015070_))
                                    (_tl1505215075_ (##cdr _e1505015070_)))
                                (if (gx#stx-null? _tl1505215075_)
                                    ((lambda (_L15078_)
                                       (find (lambda (_g1508915091_)
                                               (gx#free-identifier=?
                                                _L15078_
                                                _g1508915091_))
                                             _ids15042_))
                                     _hd1505115073_)
                                    (_g1504415057_ _g1504515060_))))
                            (_g1504415057_ _g1504515060_))))
                    (_g1504415057_ _g1504515060_)))))
        (_g1504315094_ _stx15041_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx14965_ _ids14966_)
      (let* ((_g1496814985_
              (lambda (_g1496914982_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1496914982_)))
             (_g1496715038_
              (lambda (_g1496914988_)
                (if (gx#stx-pair? _g1496914988_)
                    (let ((_e1497214990_ (gx#stx-e _g1496914988_)))
                      (let ((_hd1497314993_ (##car _e1497214990_))
                            (_tl1497414995_ (##cdr _e1497214990_)))
                        (if (gx#stx-pair? _tl1497414995_)
                            (let ((_e1497514998_ (gx#stx-e _tl1497414995_)))
                              (let ((_hd1497615001_ (##car _e1497514998_))
                                    (_tl1497715003_ (##cdr _e1497514998_)))
                                (if (gx#stx-pair? _tl1497715003_)
                                    (let ((_e1497815006_
                                           (gx#stx-e _tl1497715003_)))
                                      (let ((_hd1497915009_
                                             (##car _e1497815006_))
                                            (_tl1498015011_
                                             (##cdr _e1497815006_)))
                                        (if (gx#stx-null? _tl1498015011_)
                                            ((lambda (_L15014_ _L15015_)
                                               (let ((_$e15035_
                                                      (find (lambda (_g1503015032_)
                                                              (gx#free-identifier=?
                                                               _L15015_
                                                               _g1503015032_))
                                                            _ids14966_)))
                                                 (if _$e15035_
                                                     _$e15035_
                                                     (gxc#compile-e
                                                      _L15014_
                                                      _ids14966_))))
                                             _hd1497915009_
                                             _hd1497615001_)
                                            (_g1496814985_ _g1496914988_))))
                                    (_g1496814985_ _g1496914988_))))
                            (_g1496814985_ _g1496914988_))))
                    (_g1496814985_ _g1496914988_)))))
        (_g1496715038_ _stx14965_)))))
