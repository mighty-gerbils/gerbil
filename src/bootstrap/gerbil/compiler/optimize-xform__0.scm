(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1693679901)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl20115_ (make-table 'test: eq?)))
           (table-set! _tbl20115_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl20115_ '%#lambda gxc#xform-identity)
           (table-set! _tbl20115_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl20115_ '%#let-values gxc#xform-identity)
           (table-set! _tbl20115_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl20115_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl20115_ '%#quote gxc#xform-identity)
           (table-set! _tbl20115_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20115_ '%#call gxc#xform-identity)
           (table-set! _tbl20115_ '%#if gxc#xform-identity)
           (table-set! _tbl20115_ '%#ref gxc#xform-identity)
           (table-set! _tbl20115_ '%#set! gxc#xform-identity)
           (table-set! _tbl20115_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl20115_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl20115_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl20115_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl20115_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl20115_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl20115_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl20115_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl20115_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl20111_ (make-table 'test: eq?)))
           (table-set! _tbl20111_ '%#begin gxc#xform-identity)
           (table-set! _tbl20111_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl20111_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl20111_ '%#module gxc#xform-identity)
           (table-set! _tbl20111_ '%#import gxc#xform-identity)
           (table-set! _tbl20111_ '%#export gxc#xform-identity)
           (table-set! _tbl20111_ '%#provide gxc#xform-identity)
           (table-set! _tbl20111_ '%#extern gxc#xform-identity)
           (table-set! _tbl20111_ '%#define-values gxc#xform-identity)
           (table-set! _tbl20111_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl20111_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl20111_ '%#declare gxc#xform-identity)
           _tbl20111_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl20107_ (make-table 'test: eq?)))
           (hash-copy! _tbl20107_ (force gxc#&identity-special-form))
           (hash-copy! _tbl20107_ (force gxc#&identity-expression))
           _tbl20107_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl20103_ (make-table 'test: eq?)))
           (table-set!
            _tbl20103_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl20103_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl20103_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl20103_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl20103_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl20103_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl20103_ '%#quote gxc#xform-identity)
           (table-set! _tbl20103_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20103_ '%#call gxc#xform-operands)
           (table-set! _tbl20103_ '%#if gxc#xform-operands)
           (table-set! _tbl20103_ '%#ref gxc#xform-identity)
           (table-set! _tbl20103_ '%#set! gxc#xform-setq%)
           (table-set! _tbl20103_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl20103_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl20103_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl20103_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl20103_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl20103_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl20103_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl20103_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl20103_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl20099_ (make-table 'test: eq?)))
           (hash-copy! _tbl20099_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl20099_ (force gxc#&identity))
           (table-set! _tbl20099_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20099_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl20099_ '%#module gxc#xform-module%)
           (table-set! _tbl20099_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl20099_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl20099_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl20095_ (make-table 'test: eq?)))
           (hash-copy! _tbl20095_ (force gxc#&void))
           (table-set! _tbl20095_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20095_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl20095_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl20095_ '%#module gxc#collect-module%)
           (table-set! _tbl20095_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl20095_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl20095_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20095_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20095_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl20095_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl20095_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl20095_ '%#call gxc#collect-operands)
           (table-set! _tbl20095_ '%#if gxc#collect-operands)
           (table-set! _tbl20095_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl20095_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl20095_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl20095_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl20095_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl20095_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl20095_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl20095_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl20095_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl20095_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx20088_ . _args20090_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20088_ _args20090_))
         gxc#current-compile-methods
         (force gxc#&collect-mutators))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl20085_ (make-table 'test: eq?)))
           (hash-copy! _tbl20085_ (force gxc#&void))
           (table-set! _tbl20085_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20085_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl20085_ '%#module gxc#collect-module%)
           (table-set! _tbl20085_ '%#call gxc#collect-methods-call%)
           _tbl20085_))))
    (define gxc#apply-collect-methods
      (lambda (_stx20078_ . _args20080_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20078_ _args20080_))
         gxc#current-compile-methods
         (force gxc#&collect-methods))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl20075_ (make-table 'test: eq?)))
           (hash-copy! _tbl20075_ (force gxc#&basic-xform-expression))
           (table-set! _tbl20075_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20075_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl20075_ '%#set! gxc#expression-subst-setq%)
           _tbl20075_))))
    (define gxc#apply-expression-subst
      (lambda (_stx20068_ . _args20070_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20068_ _args20070_))
         gxc#current-compile-methods
         (force gxc#&expression-subst))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl20065_ (make-table 'test: eq?)))
           (hash-copy! _tbl20065_ (force gxc#&expression-subst))
           (table-set! _tbl20065_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl20065_ '%#set! gxc#expression-subst*-setq%)
           _tbl20065_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx20058_ . _args20060_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20058_ _args20060_))
         gxc#current-compile-methods
         (force gxc#&expression-subst*))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl20055_ (make-table 'test: eq?)))
           (hash-copy! _tbl20055_ (force gxc#&false-expression))
           (table-set! _tbl20055_ '%#begin gxc#find-body%)
           (table-set!
            _tbl20055_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl20055_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl20055_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl20055_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl20055_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl20055_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl20055_ '%#call gxc#find-body%)
           (table-set! _tbl20055_ '%#if gxc#find-body%)
           (table-set! _tbl20055_ '%#set! gxc#find-setq%)
           (table-set! _tbl20055_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl20055_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl20055_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl20055_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl20055_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl20055_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl20055_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl20055_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl20055_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl20051_ (make-table 'test: eq?)))
           (hash-copy! _tbl20051_ (force gxc#&find-expression))
           (table-set! _tbl20051_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl20051_ '%#set! gxc#find-var-refs-setq%)
           _tbl20051_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx20044_ . _args20046_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20044_ _args20046_))
         gxc#current-compile-methods
         (force gxc#&find-var-refs))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl20041_ (make-table 'test: eq?)))
           (hash-copy! _tbl20041_ (force gxc#&collect-expression-refs))
           (table-set! _tbl20041_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl20041_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl20041_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx20034_ . _args20036_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20034_ _args20036_))
         gxc#current-compile-methods
         (force gxc#&collect-runtime-refs))))
    (define gxc#xform-identity (lambda (_stx20031_ . _args20032_) _stx20031_))
    (define gxc#xform-wrap-source
      (lambda (_stx20028_ _src-stx20029_)
        (gx#stx-wrap-source _stx20028_ (gx#stx-source _src-stx20029_))))
    (define gxc#xform-apply-compile-e
      (lambda (_args20022_)
        (lambda (_g2002320025_)
          (apply gxc#compile-e _g2002320025_ _args20022_))))
    (define gxc#xform-begin%
      (lambda (_stx19981_ . _args19982_)
        (let* ((_g1998419994_
                (lambda (_g1998519991_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1998519991_)))
               (_g1998320019_
                (lambda (_g1998519997_)
                  (if (gx#stx-pair? _g1998519997_)
                      (let ((_e1998719999_ (gx#stx-e _g1998519997_)))
                        (let ((_hd1998820002_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1998719999_)))
                              (_tl1998920004_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1998719999_))))
                          ((lambda (_L20007_)
                             (let ((_forms20017_
                                    (map (gxc#xform-apply-compile-e
                                          _args19982_)
                                         _L20007_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _forms20017_)
                                _stx19981_)))
                           _tl1998920004_)))
                      (_g1998419994_ _g1998519997_)))))
          (_g1998320019_ _stx19981_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx19939_ . _args19940_)
        (let* ((_g1994219952_
                (lambda (_g1994319949_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1994319949_)))
               (_g1994119978_
                (lambda (_g1994319955_)
                  (if (gx#stx-pair? _g1994319955_)
                      (let ((_e1994519957_ (gx#stx-e _g1994319955_)))
                        (let ((_hd1994619960_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1994519957_)))
                              (_tl1994719962_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1994519957_))))
                          ((lambda (_L19965_)
                             (call-with-parameters
                              (lambda ()
                                (let ((_forms19976_
                                       (map (gxc#xform-apply-compile-e
                                             _args19940_)
                                            _L19965_)))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin-syntax _forms19976_)
                                   _stx19939_)))
                              gx#current-expander-phi
                              (fx+ (gx#current-expander-phi) '1)))
                           _tl1994719962_)))
                      (_g1994219952_ _g1994319955_)))))
          (_g1994119978_ _stx19939_))))
    (define gxc#xform-module%
      (lambda (_stx19876_ . _args19877_)
        (let* ((_g1987919893_
                (lambda (_g1988019890_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1988019890_)))
               (_g1987819936_
                (lambda (_g1988019896_)
                  (if (gx#stx-pair? _g1988019896_)
                      (let ((_e1988319898_ (gx#stx-e _g1988019896_)))
                        (let ((_hd1988419901_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1988319898_)))
                              (_tl1988519903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1988319898_))))
                          (if (gx#stx-pair? _tl1988519903_)
                              (let ((_e1988619906_ (gx#stx-e _tl1988519903_)))
                                (let ((_hd1988719909_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1988619906_)))
                                      (_tl1988819911_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1988619906_))))
                                  ((lambda (_L19914_ _L19915_)
                                     (let* ((_ctx19928_
                                             (gx#syntax-local-e__0 _L19915_))
                                            (_code19930_
                                             (##structure-ref
                                              _ctx19928_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code19933_
                                             (call-with-parameters
                                              (lambda ()
                                                (apply gxc#compile-e
                                                       _code19930_
                                                       _args19877_))
                                              gx#current-expander-context
                                              _ctx19928_)))
                                       (##structure-set!
                                        _ctx19928_
                                        _code19933_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L19915_
                                                    (cons _code19933_ '())))
                                        _stx19876_)))
                                   _tl1988819911_
                                   _hd1988719909_)))
                              (_g1987919893_ _g1988019896_))))
                      (_g1987919893_ _g1988019896_)))))
          (_g1987819936_ _stx19876_))))
    (define gxc#xform-define-values%
      (lambda (_stx19806_ . _args19807_)
        (let* ((_g1980919826_
                (lambda (_g1981019823_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1981019823_)))
               (_g1980819873_
                (lambda (_g1981019829_)
                  (if (gx#stx-pair? _g1981019829_)
                      (let ((_e1981319831_ (gx#stx-e _g1981019829_)))
                        (let ((_hd1981419834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1981319831_)))
                              (_tl1981519836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1981319831_))))
                          (if (gx#stx-pair? _tl1981519836_)
                              (let ((_e1981619839_ (gx#stx-e _tl1981519836_)))
                                (let ((_hd1981719842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1981619839_)))
                                      (_tl1981819844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1981619839_))))
                                  (if (gx#stx-pair? _tl1981819844_)
                                      (let ((_e1981919847_
                                             (gx#stx-e _tl1981819844_)))
                                        (let ((_hd1982019850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1981919847_)))
                                              (_tl1982119852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1981919847_))))
                                          (if (gx#stx-null? _tl1982119852_)
                                              ((lambda (_L19855_ _L19856_)
                                                 (let ((_expr19871_
                                                        (apply gxc#compile-e
                                                               _L19855_
                                                               _args19807_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _L19856_
                                                                (cons _expr19871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx19806_)))
                                               _hd1982019850_
                                               _hd1981719842_)
                                              (_g1980919826_ _g1981019829_))))
                                      (_g1980919826_ _g1981019829_))))
                              (_g1980919826_ _g1981019829_))))
                      (_g1980919826_ _g1981019829_)))))
          (_g1980819873_ _stx19806_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx19735_ . _args19736_)
        (let* ((_g1973819755_
                (lambda (_g1973919752_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1973919752_)))
               (_g1973719803_
                (lambda (_g1973919758_)
                  (if (gx#stx-pair? _g1973919758_)
                      (let ((_e1974219760_ (gx#stx-e _g1973919758_)))
                        (let ((_hd1974319763_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1974219760_)))
                              (_tl1974419765_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1974219760_))))
                          (if (gx#stx-pair? _tl1974419765_)
                              (let ((_e1974519768_ (gx#stx-e _tl1974419765_)))
                                (let ((_hd1974619771_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1974519768_)))
                                      (_tl1974719773_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1974519768_))))
                                  (if (gx#stx-pair? _tl1974719773_)
                                      (let ((_e1974819776_
                                             (gx#stx-e _tl1974719773_)))
                                        (let ((_hd1974919779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1974819776_)))
                                              (_tl1975019781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1974819776_))))
                                          (if (gx#stx-null? _tl1975019781_)
                                              ((lambda (_L19784_ _L19785_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_expr19801_
                                                           (apply gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19784_
                          _args19736_)))
              (gxc#xform-wrap-source
               (cons '%#define-syntax (cons _L19785_ (cons _expr19801_ '())))
               _stx19735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-phi
                                                  (fx+ (gx#current-expander-phi)
                                                       '1)))
                                               _hd1974919779_
                                               _hd1974619771_)
                                              (_g1973819755_ _g1973919758_))))
                                      (_g1973819755_ _g1973919758_))))
                              (_g1973819755_ _g1973919758_))))
                      (_g1973819755_ _g1973919758_)))))
          (_g1973719803_ _stx19735_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx19665_ . _args19666_)
        (let* ((_g1966819685_
                (lambda (_g1966919682_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1966919682_)))
               (_g1966719732_
                (lambda (_g1966919688_)
                  (if (gx#stx-pair? _g1966919688_)
                      (let ((_e1967219690_ (gx#stx-e _g1966919688_)))
                        (let ((_hd1967319693_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1967219690_)))
                              (_tl1967419695_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1967219690_))))
                          (if (gx#stx-pair? _tl1967419695_)
                              (let ((_e1967519698_ (gx#stx-e _tl1967419695_)))
                                (let ((_hd1967619701_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1967519698_)))
                                      (_tl1967719703_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1967519698_))))
                                  (if (gx#stx-pair? _tl1967719703_)
                                      (let ((_e1967819706_
                                             (gx#stx-e _tl1967719703_)))
                                        (let ((_hd1967919709_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1967819706_)))
                                              (_tl1968019711_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1967819706_))))
                                          (if (gx#stx-null? _tl1968019711_)
                                              ((lambda (_L19714_ _L19715_)
                                                 (let ((_expr19730_
                                                        (apply gxc#compile-e
                                                               _L19714_
                                                               _args19666_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _L19715_
                                                                (cons _expr19730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx19665_)))
                                               _hd1967919709_
                                               _hd1967619701_)
                                              (_g1966819685_ _g1966919688_))))
                                      (_g1966819685_ _g1966919688_))))
                              (_g1966819685_ _g1966919688_))))
                      (_g1966819685_ _g1966919688_)))))
          (_g1966719732_ _stx19665_))))
    (define gxc#xform-lambda%
      (lambda (_stx19608_ . _args19609_)
        (let* ((_g1961119625_
                (lambda (_g1961219622_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1961219622_)))
               (_g1961019662_
                (lambda (_g1961219628_)
                  (if (gx#stx-pair? _g1961219628_)
                      (let ((_e1961519630_ (gx#stx-e _g1961219628_)))
                        (let ((_hd1961619633_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1961519630_)))
                              (_tl1961719635_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1961519630_))))
                          (if (gx#stx-pair? _tl1961719635_)
                              (let ((_e1961819638_ (gx#stx-e _tl1961719635_)))
                                (let ((_hd1961919641_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1961819638_)))
                                      (_tl1962019643_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1961819638_))))
                                  ((lambda (_L19646_ _L19647_)
                                     (let ((_body19660_
                                            (map (gxc#xform-apply-compile-e
                                                  _args19609_)
                                                 _L19646_)))
                                       (gxc#xform-wrap-source
                                        (cons '%#lambda
                                              (cons _L19647_ _body19660_))
                                        _stx19608_)))
                                   _tl1962019643_
                                   _hd1961919641_)))
                              (_g1961119625_ _g1961219628_))))
                      (_g1961119625_ _g1961219628_)))))
          (_g1961019662_ _stx19608_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx19521_ . _args19522_)
        (letrec ((_clause-e19524_
                  (lambda (_clause19565_)
                    (let* ((_g1956719578_
                            (lambda (_g1956819575_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1956819575_)))
                           (_g1956619605_
                            (lambda (_g1956819581_)
                              (if (gx#stx-pair? _g1956819581_)
                                  (let ((_e1957119583_
                                         (gx#stx-e _g1956819581_)))
                                    (let ((_hd1957219586_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1957119583_)))
                                          (_tl1957319588_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1957119583_))))
                                      ((lambda (_L19591_ _L19592_)
                                         (let ((_body19603_
                                                (map (gxc#xform-apply-compile-e
                                                      _args19522_)
                                                     _L19591_)))
                                           (cons _L19592_ _body19603_)))
                                       _tl1957319588_
                                       _hd1957219586_)))
                                  (_g1956719578_ _g1956819581_)))))
                      (_g1956619605_ _clause19565_)))))
          (let* ((_g1952619536_
                  (lambda (_g1952719533_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1952719533_)))
                 (_g1952519562_
                  (lambda (_g1952719539_)
                    (if (gx#stx-pair? _g1952719539_)
                        (let ((_e1952919541_ (gx#stx-e _g1952719539_)))
                          (let ((_hd1953019544_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1952919541_)))
                                (_tl1953119546_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1952919541_))))
                            ((lambda (_L19549_)
                               (let ((_clauses19560_
                                      (map _clause-e19524_ _L19549_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _clauses19560_)
                                  _stx19521_)))
                             _tl1953119546_)))
                        (_g1952619536_ _g1952719539_)))))
            (_g1952519562_ _stx19521_)))))
    (define gxc#xform-let-values%
      (lambda (_stx19315_ . _args19316_)
        (let* ((_g1931819351_
                (lambda (_g1931919348_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1931919348_)))
               (_g1931719518_
                (lambda (_g1931919354_)
                  (if (gx#stx-pair? _g1931919354_)
                      (let ((_e1932419356_ (gx#stx-e _g1931919354_)))
                        (let ((_hd1932519359_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1932419356_)))
                              (_tl1932619361_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1932419356_))))
                          (if (gx#stx-pair? _tl1932619361_)
                              (let ((_e1932719364_ (gx#stx-e _tl1932619361_)))
                                (let ((_hd1932819367_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1932719364_)))
                                      (_tl1932919369_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1932719364_))))
                                  (if (gx#stx-pair/null? _hd1932819367_)
                                      (let ((_g20361_
                                             (gx#syntax-split-splice
                                              _hd1932819367_
                                              '0)))
                                        (begin
                                          (let ((_g20362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20361_)
                                                       (##vector-length
                                                        _g20361_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20362_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20362_)))
                                          (let ((_target1933019372_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20361_ 0)))
                                                (_tl1933219374_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20361_ 1))))
                                            (if (gx#stx-null? _tl1933219374_)
                                                (letrec ((_loop1933319377_
                                                          (lambda (_hd1933119380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1933719382_
                           _hd1933819384_)
                    (if (gx#stx-pair? _hd1933119380_)
                        (let ((_e1933419387_ (gx#stx-e _hd1933119380_)))
                          (let ((_lp-hd1933519390_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1933419387_)))
                                (_lp-tl1933619392_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1933419387_))))
                            (if (gx#stx-pair? _lp-hd1933519390_)
                                (let ((_e1934119395_
                                       (gx#stx-e _lp-hd1933519390_)))
                                  (let ((_hd1934219398_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1934119395_)))
                                        (_tl1934319400_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1934119395_))))
                                    (if (gx#stx-pair? _tl1934319400_)
                                        (let ((_e1934419403_
                                               (gx#stx-e _tl1934319400_)))
                                          (let ((_hd1934519406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1934419403_)))
                                                (_tl1934619408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1934419403_))))
                                            (if (gx#stx-null? _tl1934619408_)
                                                (_loop1933319377_
                                                 _lp-tl1933619392_
                                                 (cons _hd1934519406_
                                                       _expr1933719382_)
                                                 (cons _hd1934219398_
                                                       _hd1933819384_))
                                                (_g1931819351_
                                                 _g1931919354_))))
                                        (_g1931819351_ _g1931919354_))))
                                (_g1931819351_ _g1931919354_))))
                        (let ((_expr1933919411_ (reverse _expr1933719382_))
                              (_hd1934019413_ (reverse _hd1933819384_)))
                          ((lambda (_L19416_ _L19417_ _L19418_ _L19419_)
                             (let* ((_g1943819454_
                                     (lambda (_g1943919451_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1943919451_)))
                                    (_g1943719508_
                                     (lambda (_g1943919457_)
                                       (if (gx#stx-pair/null? _g1943919457_)
                                           (let ((_g20363_
                                                  (gx#syntax-split-splice
                                                   _g1943919457_
                                                   '0)))
                                             (begin
                                               (let ((_g20364_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g20363_)
                                                            (##vector-length
                                                             _g20363_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g20364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g20364_)))
                                               (let ((_target1944119459_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g20363_
                                                         0)))
                                                     (_tl1944319461_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g20363_
                                                         1))))
                                                 (if (gx#stx-null?
                                                      _tl1944319461_)
                                                     (letrec ((_loop1944419464_
                                                               (lambda (_hd1944219467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1944819469_)
                         (if (gx#stx-pair? _hd1944219467_)
                             (let ((_e1944519472_
                                    (gx#syntax-e _hd1944219467_)))
                               (let ((_lp-hd1944619475_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1944519472_)))
                                     (_lp-tl1944719477_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1944519472_))))
                                 (_loop1944419464_
                                  _lp-tl1944719477_
                                  (cons _lp-hd1944619475_ _expr1944819469_))))
                             (let ((_expr1944919480_
                                    (reverse _expr1944819469_)))
                               ((lambda (_L19483_)
                                  (let ()
                                    (let ((_body19496_
                                           (map (gxc#xform-apply-compile-e
                                                 _args19316_)
                                                _L19416_)))
                                      (gxc#xform-wrap-source
                                       (cons _L19419_
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L19483_
                                                      _L19418_)
                                                     (foldr2 (lambda (_g1949719501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1949819503_
                              _g1949919505_)
                       (cons (cons _g1949819503_ (cons _g1949719501_ '()))
                             _g1949919505_))
                     '()
                     _L19483_
                     _L19418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body19496_))
                                       _stx19315_))))
                                _expr1944919480_))))))
               (_loop1944419464_ _target1944119459_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1943819454_
                                                      _g1943919457_)))))
                                           (_g1943819454_ _g1943919457_)))))
                               (_g1943719508_
                                (map (gxc#xform-apply-compile-e _args19316_)
                                     (foldr1 (lambda (_g1951019513_
                                                      _g1951119515_)
                                               (cons _g1951019513_
                                                     _g1951119515_))
                                             '()
                                             _L19417_)))))
                           _tl1932919369_
                           _expr1933919411_
                           _hd1934019413_
                           _hd1932519359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1933319377_
                                                   _target1933019372_
                                                   '()
                                                   '()))
                                                (_g1931819351_
                                                 _g1931919354_)))))
                                      (_g1931819351_ _g1931919354_))))
                              (_g1931819351_ _g1931919354_))))
                      (_g1931819351_ _g1931919354_)))))
          (_g1931719518_ _stx19315_))))
    (define gxc#xform-operands
      (lambda (_stx19271_ . _args19272_)
        (let* ((_g1927419285_
                (lambda (_g1927519282_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1927519282_)))
               (_g1927319312_
                (lambda (_g1927519288_)
                  (if (gx#stx-pair? _g1927519288_)
                      (let ((_e1927819290_ (gx#stx-e _g1927519288_)))
                        (let ((_hd1927919293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1927819290_)))
                              (_tl1928019295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1927819290_))))
                          ((lambda (_L19298_ _L19299_)
                             (let ((_rands19310_
                                    (map (gxc#xform-apply-compile-e
                                          _args19272_)
                                         _L19298_)))
                               (gxc#xform-wrap-source
                                (cons _L19299_ _rands19310_)
                                _stx19271_)))
                           _tl1928019295_
                           _hd1927919293_)))
                      (_g1927419285_ _g1927519288_)))))
          (_g1927319312_ _stx19271_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx19201_ . _args19202_)
        (let* ((_g1920419221_
                (lambda (_g1920519218_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1920519218_)))
               (_g1920319268_
                (lambda (_g1920519224_)
                  (if (gx#stx-pair? _g1920519224_)
                      (let ((_e1920819226_ (gx#stx-e _g1920519224_)))
                        (let ((_hd1920919229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1920819226_)))
                              (_tl1921019231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1920819226_))))
                          (if (gx#stx-pair? _tl1921019231_)
                              (let ((_e1921119234_ (gx#stx-e _tl1921019231_)))
                                (let ((_hd1921219237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1921119234_)))
                                      (_tl1921319239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1921119234_))))
                                  (if (gx#stx-pair? _tl1921319239_)
                                      (let ((_e1921419242_
                                             (gx#stx-e _tl1921319239_)))
                                        (let ((_hd1921519245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1921419242_)))
                                              (_tl1921619247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1921419242_))))
                                          (if (gx#stx-null? _tl1921619247_)
                                              ((lambda (_L19250_ _L19251_)
                                                 (let ((_expr19266_
                                                        (apply gxc#compile-e
                                                               _L19250_
                                                               _args19202_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _L19251_
                                                                (cons _expr19266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx19201_)))
                                               _hd1921519245_
                                               _hd1921219237_)
                                              (_g1920419221_ _g1920519224_))))
                                      (_g1920419221_ _g1920519224_))))
                              (_g1920419221_ _g1920519224_))))
                      (_g1920419221_ _g1920519224_)))))
          (_g1920319268_ _stx19201_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx19132_)
        (let* ((_g1913419151_
                (lambda (_g1913519148_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1913519148_)))
               (_g1913319198_
                (lambda (_g1913519154_)
                  (if (gx#stx-pair? _g1913519154_)
                      (let ((_e1913819156_ (gx#stx-e _g1913519154_)))
                        (let ((_hd1913919159_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1913819156_)))
                              (_tl1914019161_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1913819156_))))
                          (if (gx#stx-pair? _tl1914019161_)
                              (let ((_e1914119164_ (gx#stx-e _tl1914019161_)))
                                (let ((_hd1914219167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1914119164_)))
                                      (_tl1914319169_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1914119164_))))
                                  (if (gx#stx-pair? _tl1914319169_)
                                      (let ((_e1914419172_
                                             (gx#stx-e _tl1914319169_)))
                                        (let ((_hd1914519175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1914419172_)))
                                              (_tl1914619177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1914419172_))))
                                          (if (gx#stx-null? _tl1914619177_)
                                              ((lambda (_L19180_ _L19181_)
                                                 (let ((_sym19196_
                                                        (gxc#identifier-symbol
                                                         _L19181_)))
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym19196_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym19196_
                                                    '#t)
                                                   (gxc#compile-e _L19180_)))
                                               _hd1914519175_
                                               _hd1914219167_)
                                              (_g1913419151_ _g1913519154_))))
                                      (_g1913419151_ _g1913519154_))))
                              (_g1913419151_ _g1913519154_))))
                      (_g1913419151_ _g1913519154_)))))
          (_g1913319198_ _stx19132_))))
    (define gxc#collect-methods-call%
      (lambda (_stx18686_)
        (let* ((___stx2011820119_ _stx18686_)
               (_g1869018792_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2011820119_))))
          (let ((___kont2012020121_
                 (lambda (_L19082_ _L19083_ _L19084_ _L19085_ _L19086_)
                   (gxc#optimizer-top-level-method!
                    (gxc#identifier-symbol _L19083_))))
                (___kont2012220123_
                 (lambda (_L18908_ _L18909_ _L18910_ _L18911_)
                   (gxc#optimizer-top-level-method!
                    (gxc#identifier-symbol _L18908_))))
                (___kont2012420125_ (lambda () '#!void)))
            (let ((___match2025320254_
                   (lambda (_e1869718954_
                            _hd1869818957_
                            _tl1869918959_
                            _e1870018962_
                            _hd1870118965_
                            _tl1870218967_
                            _e1870318970_
                            _hd1870418973_
                            _tl1870518975_
                            _e1870618978_
                            _hd1870718981_
                            _tl1870818983_
                            _e1870918986_
                            _hd1871018989_
                            _tl1871118991_
                            _e1871218994_
                            _hd1871318997_
                            _tl1871418999_
                            _e1871519002_
                            _hd1871619005_
                            _tl1871719007_
                            _e1871819010_
                            _hd1871919013_
                            _tl1872019015_
                            _e1872119018_
                            _hd1872219021_
                            _tl1872319023_
                            _e1872419026_
                            _hd1872519029_
                            _tl1872619031_
                            _e1872719034_
                            _hd1872819037_
                            _tl1872919039_
                            _e1873019042_
                            _hd1873119045_
                            _tl1873219047_
                            _e1873319050_
                            _hd1873419053_
                            _tl1873519055_
                            _e1873619058_
                            _hd1873719061_
                            _tl1873819063_
                            _e1873919066_
                            _hd1874019069_
                            _tl1874119071_
                            _e1874219074_
                            _hd1874319077_
                            _tl1874419079_)
                     (let ((_L19082_ _hd1874319077_)
                           (_L19083_ _hd1873419053_)
                           (_L19084_ _hd1872519029_)
                           (_L19085_ _hd1871619005_)
                           (_L19086_ _hd1870718981_))
                       (if (gxc#runtime-identifier=? _L19086_ 'bind-method!)
                           (___kont2012020121_
                            _L19082_
                            _L19083_
                            _L19084_
                            _L19085_
                            _L19086_)
                           (___kont2012420125_))))))
              (if (gx#stx-pair? ___stx2011820119_)
                  (let ((_e1869718954_ (gx#stx-e ___stx2011820119_)))
                    (let ((_tl1869918959_
                           (let () (declare (not safe)) (##cdr _e1869718954_)))
                          (_hd1869818957_
                           (let ()
                             (declare (not safe))
                             (##car _e1869718954_))))
                      (if (gx#stx-pair? _tl1869918959_)
                          (let ((_e1870018962_ (gx#stx-e _tl1869918959_)))
                            (let ((_tl1870218967_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1870018962_)))
                                  (_hd1870118965_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1870018962_))))
                              (if (gx#stx-pair? _hd1870118965_)
                                  (let ((_e1870318970_
                                         (gx#stx-e _hd1870118965_)))
                                    (let ((_tl1870518975_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1870318970_)))
                                          (_hd1870418973_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1870318970_))))
                                      (if (gx#identifier? _hd1870418973_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1870418973_)
                                              (if (gx#stx-pair? _tl1870518975_)
                                                  (let ((_e1870618978_
                                                         (gx#stx-e
                                                          _tl1870518975_)))
                                                    (let ((_tl1870818983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1870618978_)))
                                                          (_hd1870718981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1870618978_))))
                                                      (if (gx#stx-null?
                                                           _tl1870818983_)
                                                          (if (gx#stx-pair?
                                                               _tl1870218967_)
                                                              (let ((_e1870918986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1870218967_)))
                        (let ((_tl1871118991_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1870918986_)))
                              (_hd1871018989_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1870918986_))))
                          (if (gx#stx-pair? _hd1871018989_)
                              (let ((_e1871218994_ (gx#stx-e _hd1871018989_)))
                                (let ((_tl1871418999_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1871218994_)))
                                      (_hd1871318997_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1871218994_))))
                                  (if (gx#identifier? _hd1871318997_)
                                      (if (gx#stx-eq? '%#ref _hd1871318997_)
                                          (if (gx#stx-pair? _tl1871418999_)
                                              (let ((_e1871519002_
                                                     (gx#stx-e
                                                      _tl1871418999_)))
                                                (let ((_tl1871719007_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1871519002_)))
                                                      (_hd1871619005_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1871519002_))))
                                                  (if (gx#stx-null?
                                                       _tl1871719007_)
                                                      (if (gx#stx-pair?
                                                           _tl1871118991_)
                                                          (let ((_e1871819010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1871118991_)))
                    (let ((_tl1872019015_
                           (let () (declare (not safe)) (##cdr _e1871819010_)))
                          (_hd1871919013_
                           (let ()
                             (declare (not safe))
                             (##car _e1871819010_))))
                      (if (gx#stx-pair? _hd1871919013_)
                          (let ((_e1872119018_ (gx#stx-e _hd1871919013_)))
                            (let ((_tl1872319023_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1872119018_)))
                                  (_hd1872219021_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1872119018_))))
                              (if (gx#identifier? _hd1872219021_)
                                  (if (gx#stx-eq? '%#quote _hd1872219021_)
                                      (if (gx#stx-pair? _tl1872319023_)
                                          (let ((_e1872419026_
                                                 (gx#stx-e _tl1872319023_)))
                                            (let ((_tl1872619031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1872419026_)))
                                                  (_hd1872519029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1872419026_))))
                                              (if (gx#stx-null? _tl1872619031_)
                                                  (if (gx#stx-pair?
                                                       _tl1872019015_)
                                                      (let ((_e1872719034_
                                                             (gx#stx-e
                                                              _tl1872019015_)))
                                                        (let ((_tl1872919039_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1872719034_)))
                      (_hd1872819037_
                       (let () (declare (not safe)) (##car _e1872719034_))))
                  (if (gx#stx-pair? _hd1872819037_)
                      (let ((_e1873019042_ (gx#stx-e _hd1872819037_)))
                        (let ((_tl1873219047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1873019042_)))
                              (_hd1873119045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1873019042_))))
                          (if (gx#identifier? _hd1873119045_)
                              (if (gx#stx-eq? '%#ref _hd1873119045_)
                                  (if (gx#stx-pair? _tl1873219047_)
                                      (let ((_e1873319050_
                                             (gx#stx-e _tl1873219047_)))
                                        (let ((_tl1873519055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1873319050_)))
                                              (_hd1873419053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1873319050_))))
                                          (if (gx#stx-null? _tl1873519055_)
                                              (if (gx#stx-pair? _tl1872919039_)
                                                  (let ((_e1873619058_
                                                         (gx#stx-e
                                                          _tl1872919039_)))
                                                    (let ((_tl1873819063_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1873619058_)))
                                                          (_hd1873719061_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1873619058_))))
                                                      (if (gx#stx-pair?
                                                           _hd1873719061_)
                                                          (let ((_e1873919066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1873719061_)))
                    (let ((_tl1874119071_
                           (let () (declare (not safe)) (##cdr _e1873919066_)))
                          (_hd1874019069_
                           (let ()
                             (declare (not safe))
                             (##car _e1873919066_))))
                      (if (gx#identifier? _hd1874019069_)
                          (if (gx#stx-eq? '%#quote _hd1874019069_)
                              (if (gx#stx-pair? _tl1874119071_)
                                  (let ((_e1874219074_
                                         (gx#stx-e _tl1874119071_)))
                                    (let ((_tl1874419079_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1874219074_)))
                                          (_hd1874319077_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1874219074_))))
                                      (if (gx#stx-null? _tl1874419079_)
                                          (if (gx#stx-null? _tl1873819063_)
                                              (___match2025320254_
                                               _e1869718954_
                                               _hd1869818957_
                                               _tl1869918959_
                                               _e1870018962_
                                               _hd1870118965_
                                               _tl1870218967_
                                               _e1870318970_
                                               _hd1870418973_
                                               _tl1870518975_
                                               _e1870618978_
                                               _hd1870718981_
                                               _tl1870818983_
                                               _e1870918986_
                                               _hd1871018989_
                                               _tl1871118991_
                                               _e1871218994_
                                               _hd1871318997_
                                               _tl1871418999_
                                               _e1871519002_
                                               _hd1871619005_
                                               _tl1871719007_
                                               _e1871819010_
                                               _hd1871919013_
                                               _tl1872019015_
                                               _e1872119018_
                                               _hd1872219021_
                                               _tl1872319023_
                                               _e1872419026_
                                               _hd1872519029_
                                               _tl1872619031_
                                               _e1872719034_
                                               _hd1872819037_
                                               _tl1872919039_
                                               _e1873019042_
                                               _hd1873119045_
                                               _tl1873219047_
                                               _e1873319050_
                                               _hd1873419053_
                                               _tl1873519055_
                                               _e1873619058_
                                               _hd1873719061_
                                               _tl1873819063_
                                               _e1873919066_
                                               _hd1874019069_
                                               _tl1874119071_
                                               _e1874219074_
                                               _hd1874319077_
                                               _tl1874419079_)
                                              (___kont2012420125_))
                                          (___kont2012420125_))))
                                  (___kont2012420125_))
                              (___kont2012420125_))
                          (___kont2012420125_))))
                  (___kont2012420125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl1872919039_)
                                                      (if (gxc#runtime-identifier=?
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '-bind-method)
                                                           'bind-method!)
                                                          (let ((_L18908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1873419053_)
                        (_L18909_ _hd1872519029_)
                        (_L18910_ _hd1871619005_)
                        (_L18911_ _hd1870718981_))
                    (___kont2012220123_ _L18908_ _L18909_ _L18910_ _L18911_))
                  (___kont2012420125_))
              (___kont2012420125_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2012420125_))))
                                      (___kont2012420125_))
                                  (___kont2012420125_))
                              (___kont2012420125_))))
                      (___kont2012420125_))))
              (___kont2012420125_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2012420125_))))
                                          (___kont2012420125_))
                                      (___kont2012420125_))
                                  (___kont2012420125_))))
                          (___kont2012420125_))))
                  (___kont2012420125_))
              (___kont2012420125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2012420125_))
                                          (___kont2012420125_))
                                      (___kont2012420125_))))
                              (___kont2012420125_))))
                      (___kont2012420125_))
                  (___kont2012420125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2012420125_))
                                              (___kont2012420125_))
                                          (___kont2012420125_))))
                                  (___kont2012420125_))))
                          (___kont2012420125_))))
                  (___kont2012420125_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx18633_ _id18634_ _new-id18635_)
        (let* ((_g1863718650_
                (lambda (_g1863818647_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1863818647_)))
               (_g1863618683_
                (lambda (_g1863818653_)
                  (if (gx#stx-pair? _g1863818653_)
                      (let ((_e1864018655_ (gx#stx-e _g1863818653_)))
                        (let ((_hd1864118658_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1864018655_)))
                              (_tl1864218660_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1864018655_))))
                          (if (gx#stx-pair? _tl1864218660_)
                              (let ((_e1864318663_ (gx#stx-e _tl1864218660_)))
                                (let ((_hd1864418666_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1864318663_)))
                                      (_tl1864518668_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1864318663_))))
                                  (if (gx#stx-null? _tl1864518668_)
                                      ((lambda (_L18671_)
                                         (if (gx#free-identifier=?
                                              _L18671_
                                              _id18634_)
                                             (gxc#xform-wrap-source
                                              (cons '%#ref
                                                    (cons _new-id18635_ '()))
                                              _stx18633_)
                                             _stx18633_))
                                       _hd1864418666_)
                                      (_g1863718650_ _g1863818653_))))
                              (_g1863718650_ _g1863818653_))))
                      (_g1863718650_ _g1863818653_)))))
          (_g1863618683_ _stx18633_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx18574_ _subst18575_)
        (let* ((_g1857718590_
                (lambda (_g1857818587_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1857818587_)))
               (_g1857618630_
                (lambda (_g1857818593_)
                  (if (gx#stx-pair? _g1857818593_)
                      (let ((_e1858018595_ (gx#stx-e _g1857818593_)))
                        (let ((_hd1858118598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1858018595_)))
                              (_tl1858218600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1858018595_))))
                          (if (gx#stx-pair? _tl1858218600_)
                              (let ((_e1858318603_ (gx#stx-e _tl1858218600_)))
                                (let ((_hd1858418606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1858318603_)))
                                      (_tl1858518608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1858318603_))))
                                  (if (gx#stx-null? _tl1858518608_)
                                      ((lambda (_L18611_)
                                         (let ((_$e18625_
                                                (find (lambda (_sub18623_)
                                                        (gx#free-identifier=?
                                                         _L18611_
                                                         (car _sub18623_)))
                                                      _subst18575_)))
                                           (if _$e18625_
                                               ((lambda (_sub18628_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#ref
                                                         (cons (cdr _sub18628_)
                                                               '()))
                                                   _stx18574_))
                                                _$e18625_)
                                               _stx18574_)))
                                       _hd1858418606_)
                                      (_g1857718590_ _g1857818593_))))
                              (_g1857718590_ _g1857818593_))))
                      (_g1857718590_ _g1857818593_)))))
          (_g1857618630_ _stx18574_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx18502_ _id18503_ _new-id18504_)
        (let* ((_g1850618523_
                (lambda (_g1850718520_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1850718520_)))
               (_g1850518571_
                (lambda (_g1850718526_)
                  (if (gx#stx-pair? _g1850718526_)
                      (let ((_e1851018528_ (gx#stx-e _g1850718526_)))
                        (let ((_hd1851118531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1851018528_)))
                              (_tl1851218533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1851018528_))))
                          (if (gx#stx-pair? _tl1851218533_)
                              (let ((_e1851318536_ (gx#stx-e _tl1851218533_)))
                                (let ((_hd1851418539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1851318536_)))
                                      (_tl1851518541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1851318536_))))
                                  (if (gx#stx-pair? _tl1851518541_)
                                      (let ((_e1851618544_
                                             (gx#stx-e _tl1851518541_)))
                                        (let ((_hd1851718547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1851618544_)))
                                              (_tl1851818549_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1851618544_))))
                                          (if (gx#stx-null? _tl1851818549_)
                                              ((lambda (_L18552_ _L18553_)
                                                 (let ((_new-expr18568_
                                                        (gxc#compile-e
                                                         _L18552_
                                                         _id18503_
                                                         _new-id18504_))
                                                       (_new-xid18569_
                                                        (if (gx#free-identifier=?
                                                             _L18553_
                                                             _id18503_)
                                                            _new-id18504_
                                                            _L18553_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _new-xid18569_
                                                                (cons _new-expr18568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx18502_)))
                                               _hd1851718547_
                                               _hd1851418539_)
                                              (_g1850618523_ _g1850718526_))))
                                      (_g1850618523_ _g1850718526_))))
                              (_g1850618523_ _g1850718526_))))
                      (_g1850618523_ _g1850718526_)))))
          (_g1850518571_ _stx18502_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx18426_ _subst18427_)
        (let* ((_g1842918446_
                (lambda (_g1843018443_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1843018443_)))
               (_g1842818499_
                (lambda (_g1843018449_)
                  (if (gx#stx-pair? _g1843018449_)
                      (let ((_e1843318451_ (gx#stx-e _g1843018449_)))
                        (let ((_hd1843418454_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1843318451_)))
                              (_tl1843518456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1843318451_))))
                          (if (gx#stx-pair? _tl1843518456_)
                              (let ((_e1843618459_ (gx#stx-e _tl1843518456_)))
                                (let ((_hd1843718462_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1843618459_)))
                                      (_tl1843818464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1843618459_))))
                                  (if (gx#stx-pair? _tl1843818464_)
                                      (let ((_e1843918467_
                                             (gx#stx-e _tl1843818464_)))
                                        (let ((_hd1844018470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1843918467_)))
                                              (_tl1844118472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1843918467_))))
                                          (if (gx#stx-null? _tl1844118472_)
                                              ((lambda (_L18475_ _L18476_)
                                                 (let ((_new-expr18496_
                                                        (gxc#compile-e
                                                         _L18475_
                                                         _subst18427_))
                                                       (_new-xid18497_
                                                        (let ((_$e18493_
                                                               (find (lambda (_sub18491_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#free-identifier=?
                                _L18476_
                                (car _sub18491_)))
                             _subst18427_)))
                  (if _$e18493_ (cdr _$e18493_) _L18476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _new-xid18497_
                                                                (cons _new-expr18496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx18426_)))
                                               _hd1844018470_
                                               _hd1843718462_)
                                              (_g1842918446_ _g1843018449_))))
                                      (_g1842918446_ _g1843018449_))))
                              (_g1842918446_ _g1843018449_))))
                      (_g1842918446_ _g1843018449_)))))
          (_g1842818499_ _stx18426_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx18372_ _ht18373_)
        (let* ((_g1837518388_
                (lambda (_g1837618385_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1837618385_)))
               (_g1837418423_
                (lambda (_g1837618391_)
                  (if (gx#stx-pair? _g1837618391_)
                      (let ((_e1837818393_ (gx#stx-e _g1837618391_)))
                        (let ((_hd1837918396_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1837818393_)))
                              (_tl1838018398_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1837818393_))))
                          (if (gx#stx-pair? _tl1838018398_)
                              (let ((_e1838118401_ (gx#stx-e _tl1838018398_)))
                                (let ((_hd1838218404_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1838118401_)))
                                      (_tl1838318406_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1838118401_))))
                                  (if (gx#stx-null? _tl1838318406_)
                                      ((lambda (_L18409_)
                                         (let ((_eid18421_
                                                (gxc#identifier-symbol
                                                 _L18409_)))
                                           (hash-update!
                                            _ht18373_
                                            _eid18421_
                                            1+
                                            '0)))
                                       _hd1838218404_)
                                      (_g1837518388_ _g1837618391_))))
                              (_g1837518388_ _g1837618391_))))
                      (_g1837518388_ _g1837618391_)))))
          (_g1837418423_ _stx18372_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx18302_ _ht18303_)
        (let* ((_g1830518322_
                (lambda (_g1830618319_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1830618319_)))
               (_g1830418369_
                (lambda (_g1830618325_)
                  (if (gx#stx-pair? _g1830618325_)
                      (let ((_e1830918327_ (gx#stx-e _g1830618325_)))
                        (let ((_hd1831018330_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1830918327_)))
                              (_tl1831118332_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1830918327_))))
                          (if (gx#stx-pair? _tl1831118332_)
                              (let ((_e1831218335_ (gx#stx-e _tl1831118332_)))
                                (let ((_hd1831318338_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1831218335_)))
                                      (_tl1831418340_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1831218335_))))
                                  (if (gx#stx-pair? _tl1831418340_)
                                      (let ((_e1831518343_
                                             (gx#stx-e _tl1831418340_)))
                                        (let ((_hd1831618346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1831518343_)))
                                              (_tl1831718348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1831518343_))))
                                          (if (gx#stx-null? _tl1831718348_)
                                              ((lambda (_L18351_ _L18352_)
                                                 (let ((_eid18367_
                                                        (gxc#identifier-symbol
                                                         _L18352_)))
                                                   (hash-update!
                                                    _ht18303_
                                                    _eid18367_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L18351_
                                                    _ht18303_)))
                                               _hd1831618346_
                                               _hd1831318338_)
                                              (_g1830518322_ _g1830618325_))))
                                      (_g1830518322_ _g1830618325_))))
                              (_g1830518322_ _g1830618325_))))
                      (_g1830518322_ _g1830618325_)))))
          (_g1830418369_ _stx18302_))))
    (define gxc#find-body%
      (lambda (_stx18215_ _arg18216_)
        (let* ((_g1821818237_
                (lambda (_g1821918234_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1821918234_)))
               (_g1821718299_
                (lambda (_g1821918240_)
                  (if (gx#stx-pair? _g1821918240_)
                      (let ((_e1822118242_ (gx#stx-e _g1821918240_)))
                        (let ((_hd1822218245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1822118242_)))
                              (_tl1822318247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1822118242_))))
                          (if (gx#stx-pair/null? _tl1822318247_)
                              (let ((_g20365_
                                     (gx#syntax-split-splice
                                      _tl1822318247_
                                      '0)))
                                (begin
                                  (let ((_g20366_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20365_)
                                               (##vector-length _g20365_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20366_ 2)))
                                        (error "Context expects 2 values"
                                               _g20366_)))
                                  (let ((_target1822418250_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20365_ 0)))
                                        (_tl1822618252_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20365_ 1))))
                                    (if (gx#stx-null? _tl1822618252_)
                                        (letrec ((_loop1822718255_
                                                  (lambda (_hd1822518258_
                                                           _expr1823118260_)
                                                    (if (gx#stx-pair?
                                                         _hd1822518258_)
                                                        (let ((_e1822818263_
                                                               (gx#stx-e
                                                                _hd1822518258_)))
                                                          (let ((_lp-hd1822918266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1822818263_)))
                        (_lp-tl1823018268_
                         (let () (declare (not safe)) (##cdr _e1822818263_))))
                    (_loop1822718255_
                     _lp-tl1823018268_
                     (cons _lp-hd1822918266_ _expr1823118260_))))
                (let ((_expr1823218271_ (reverse _expr1823118260_)))
                  ((lambda (_L18274_)
                     (ormap1 (lambda (_g1828718289_)
                               (gxc#compile-e _g1828718289_ _arg18216_))
                             (foldr1 (lambda (_g1829118294_ _g1829218296_)
                                       (cons _g1829118294_ _g1829218296_))
                                     '()
                                     _L18274_)))
                   _expr1823218271_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1822718255_
                                           _target1822418250_
                                           '()))
                                        (_g1821818237_ _g1821918240_)))))
                              (_g1821818237_ _g1821918240_))))
                      (_g1821818237_ _g1821918240_)))))
          (_g1821718299_ _stx18215_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx18147_ _arg18148_)
        (let* ((_g1815018167_
                (lambda (_g1815118164_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1815118164_)))
               (_g1814918212_
                (lambda (_g1815118170_)
                  (if (gx#stx-pair? _g1815118170_)
                      (let ((_e1815418172_ (gx#stx-e _g1815118170_)))
                        (let ((_hd1815518175_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1815418172_)))
                              (_tl1815618177_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1815418172_))))
                          (if (gx#stx-pair? _tl1815618177_)
                              (let ((_e1815718180_ (gx#stx-e _tl1815618177_)))
                                (let ((_hd1815818183_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1815718180_)))
                                      (_tl1815918185_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1815718180_))))
                                  (if (gx#stx-pair? _tl1815918185_)
                                      (let ((_e1816018188_
                                             (gx#stx-e _tl1815918185_)))
                                        (let ((_hd1816118191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1816018188_)))
                                              (_tl1816218193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1816018188_))))
                                          (if (gx#stx-null? _tl1816218193_)
                                              ((lambda (_L18196_ _L18197_)
                                                 (gxc#compile-e
                                                  _L18196_
                                                  _arg18148_))
                                               _hd1816118191_
                                               _hd1815818183_)
                                              (_g1815018167_ _g1815118170_))))
                                      (_g1815018167_ _g1815118170_))))
                              (_g1815018167_ _g1815118170_))))
                      (_g1815018167_ _g1815118170_)))))
          (_g1814918212_ _stx18147_))))
    (define gxc#find-lambda%
      (lambda (_stx18079_ _arg18080_)
        (let* ((_g1808218099_
                (lambda (_g1808318096_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1808318096_)))
               (_g1808118144_
                (lambda (_g1808318102_)
                  (if (gx#stx-pair? _g1808318102_)
                      (let ((_e1808618104_ (gx#stx-e _g1808318102_)))
                        (let ((_hd1808718107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1808618104_)))
                              (_tl1808818109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1808618104_))))
                          (if (gx#stx-pair? _tl1808818109_)
                              (let ((_e1808918112_ (gx#stx-e _tl1808818109_)))
                                (let ((_hd1809018115_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1808918112_)))
                                      (_tl1809118117_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1808918112_))))
                                  (if (gx#stx-pair? _tl1809118117_)
                                      (let ((_e1809218120_
                                             (gx#stx-e _tl1809118117_)))
                                        (let ((_hd1809318123_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1809218120_)))
                                              (_tl1809418125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1809218120_))))
                                          (if (gx#stx-null? _tl1809418125_)
                                              ((lambda (_L18128_ _L18129_)
                                                 (gxc#compile-e
                                                  _L18128_
                                                  _arg18080_))
                                               _hd1809318123_
                                               _hd1809018115_)
                                              (_g1808218099_ _g1808318102_))))
                                      (_g1808218099_ _g1808318102_))))
                              (_g1808218099_ _g1808318102_))))
                      (_g1808218099_ _g1808318102_)))))
          (_g1808118144_ _stx18079_))))
    (define gxc#find-case-lambda%
      (lambda (_stx17961_ _arg17962_)
        (let* ((_g1796417992_
                (lambda (_g1796517989_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1796517989_)))
               (_g1796318076_
                (lambda (_g1796517995_)
                  (if (gx#stx-pair? _g1796517995_)
                      (let ((_e1796817997_ (gx#stx-e _g1796517995_)))
                        (let ((_hd1796918000_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1796817997_)))
                              (_tl1797018002_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1796817997_))))
                          (if (gx#stx-pair/null? _tl1797018002_)
                              (let ((_g20367_
                                     (gx#syntax-split-splice
                                      _tl1797018002_
                                      '0)))
                                (begin
                                  (let ((_g20368_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20367_)
                                               (##vector-length _g20367_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20368_ 2)))
                                        (error "Context expects 2 values"
                                               _g20368_)))
                                  (let ((_target1797118005_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20367_ 0)))
                                        (_tl1797318007_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20367_ 1))))
                                    (if (gx#stx-null? _tl1797318007_)
                                        (letrec ((_loop1797418010_
                                                  (lambda (_hd1797218013_
                                                           _body1797818015_
                                                           _hd1797918017_)
                                                    (if (gx#stx-pair?
                                                         _hd1797218013_)
                                                        (let ((_e1797518020_
                                                               (gx#stx-e
                                                                _hd1797218013_)))
                                                          (let ((_lp-hd1797618023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1797518020_)))
                        (_lp-tl1797718025_
                         (let () (declare (not safe)) (##cdr _e1797518020_))))
                    (if (gx#stx-pair? _lp-hd1797618023_)
                        (let ((_e1798218028_ (gx#stx-e _lp-hd1797618023_)))
                          (let ((_hd1798318031_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1798218028_)))
                                (_tl1798418033_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1798218028_))))
                            (if (gx#stx-pair? _tl1798418033_)
                                (let ((_e1798518036_
                                       (gx#stx-e _tl1798418033_)))
                                  (let ((_hd1798618039_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1798518036_)))
                                        (_tl1798718041_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1798518036_))))
                                    (if (gx#stx-null? _tl1798718041_)
                                        (_loop1797418010_
                                         _lp-tl1797718025_
                                         (cons _hd1798618039_ _body1797818015_)
                                         (cons _hd1798318031_ _hd1797918017_))
                                        (_g1796417992_ _g1796517995_))))
                                (_g1796417992_ _g1796517995_))))
                        (_g1796417992_ _g1796517995_))))
                (let ((_body1798018044_ (reverse _body1797818015_))
                      (_hd1798118046_ (reverse _hd1797918017_)))
                  ((lambda (_L18049_ _L18050_)
                     (ormap1 (lambda (_g1806418066_)
                               (gxc#compile-e _g1806418066_ _arg17962_))
                             (foldr1 (lambda (_g1806818071_ _g1806918073_)
                                       (cons _g1806818071_ _g1806918073_))
                                     '()
                                     _L18049_)))
                   _body1798018044_
                   _hd1798118046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1797418010_
                                           _target1797118005_
                                           '()
                                           '()))
                                        (_g1796417992_ _g1796517995_)))))
                              (_g1796417992_ _g1796517995_))))
                      (_g1796417992_ _g1796517995_)))))
          (_g1796318076_ _stx17961_))))
    (define gxc#find-let-values%
      (lambda (_stx17811_ _arg17812_)
        (let* ((_g1781417849_
                (lambda (_g1781517846_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1781517846_)))
               (_g1781317958_
                (lambda (_g1781517852_)
                  (if (gx#stx-pair? _g1781517852_)
                      (let ((_e1781917854_ (gx#stx-e _g1781517852_)))
                        (let ((_hd1782017857_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1781917854_)))
                              (_tl1782117859_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1781917854_))))
                          (if (gx#stx-pair? _tl1782117859_)
                              (let ((_e1782217862_ (gx#stx-e _tl1782117859_)))
                                (let ((_hd1782317865_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1782217862_)))
                                      (_tl1782417867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1782217862_))))
                                  (if (gx#stx-pair/null? _hd1782317865_)
                                      (let ((_g20369_
                                             (gx#syntax-split-splice
                                              _hd1782317865_
                                              '0)))
                                        (begin
                                          (let ((_g20370_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20369_)
                                                       (##vector-length
                                                        _g20369_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20370_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20370_)))
                                          (let ((_target1782517870_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20369_ 0)))
                                                (_tl1782717872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20369_ 1))))
                                            (if (gx#stx-null? _tl1782717872_)
                                                (letrec ((_loop1782817875_
                                                          (lambda (_hd1782617878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1783217880_
                           _bind1783317882_)
                    (if (gx#stx-pair? _hd1782617878_)
                        (let ((_e1782917885_ (gx#stx-e _hd1782617878_)))
                          (let ((_lp-hd1783017888_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1782917885_)))
                                (_lp-tl1783117890_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1782917885_))))
                            (if (gx#stx-pair? _lp-hd1783017888_)
                                (let ((_e1783617893_
                                       (gx#stx-e _lp-hd1783017888_)))
                                  (let ((_hd1783717896_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1783617893_)))
                                        (_tl1783817898_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1783617893_))))
                                    (if (gx#stx-pair? _tl1783817898_)
                                        (let ((_e1783917901_
                                               (gx#stx-e _tl1783817898_)))
                                          (let ((_hd1784017904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1783917901_)))
                                                (_tl1784117906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1783917901_))))
                                            (if (gx#stx-null? _tl1784117906_)
                                                (_loop1782817875_
                                                 _lp-tl1783117890_
                                                 (cons _hd1784017904_
                                                       _expr1783217880_)
                                                 (cons _hd1783717896_
                                                       _bind1783317882_))
                                                (_g1781417849_
                                                 _g1781517852_))))
                                        (_g1781417849_ _g1781517852_))))
                                (_g1781417849_ _g1781517852_))))
                        (let ((_expr1783417909_ (reverse _expr1783217880_))
                              (_bind1783517911_ (reverse _bind1783317882_)))
                          (if (gx#stx-pair? _tl1782417867_)
                              (let ((_e1784217914_ (gx#stx-e _tl1782417867_)))
                                (let ((_hd1784317917_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1784217914_)))
                                      (_tl1784417919_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1784217914_))))
                                  (if (gx#stx-null? _tl1784417919_)
                                      ((lambda (_L17922_ _L17923_ _L17924_)
                                         (let ((_$e17955_
                                                (ormap1 (lambda (_g1794317945_)
                                                          (gxc#compile-e
                                                           _g1794317945_
                                                           _arg17812_))
                                                        (foldr1 (lambda (_g1794717950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1794817952_)
                          (cons _g1794717950_ _g1794817952_))
                        '()
                        _L17923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e17955_
                                               _$e17955_
                                               (gxc#compile-e
                                                _L17922_
                                                _arg17812_))))
                                       _hd1784317917_
                                       _expr1783417909_
                                       _bind1783517911_)
                                      (_g1781417849_ _g1781517852_))))
                              (_g1781417849_ _g1781517852_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1782817875_
                                                   _target1782517870_
                                                   '()
                                                   '()))
                                                (_g1781417849_
                                                 _g1781517852_)))))
                                      (_g1781417849_ _g1781517852_))))
                              (_g1781417849_ _g1781517852_))))
                      (_g1781417849_ _g1781517852_)))))
          (_g1781317958_ _stx17811_))))
    (define gxc#find-setq%
      (lambda (_stx17743_ _arg17744_)
        (let* ((_g1774617763_
                (lambda (_g1774717760_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1774717760_)))
               (_g1774517808_
                (lambda (_g1774717766_)
                  (if (gx#stx-pair? _g1774717766_)
                      (let ((_e1775017768_ (gx#stx-e _g1774717766_)))
                        (let ((_hd1775117771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1775017768_)))
                              (_tl1775217773_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1775017768_))))
                          (if (gx#stx-pair? _tl1775217773_)
                              (let ((_e1775317776_ (gx#stx-e _tl1775217773_)))
                                (let ((_hd1775417779_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1775317776_)))
                                      (_tl1775517781_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1775317776_))))
                                  (if (gx#stx-pair? _tl1775517781_)
                                      (let ((_e1775617784_
                                             (gx#stx-e _tl1775517781_)))
                                        (let ((_hd1775717787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1775617784_)))
                                              (_tl1775817789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1775617784_))))
                                          (if (gx#stx-null? _tl1775817789_)
                                              ((lambda (_L17792_ _L17793_)
                                                 (gxc#compile-e
                                                  _L17792_
                                                  _arg17744_))
                                               _hd1775717787_
                                               _hd1775417779_)
                                              (_g1774617763_ _g1774717766_))))
                                      (_g1774617763_ _g1774717766_))))
                              (_g1774617763_ _g1774717766_))))
                      (_g1774617763_ _g1774717766_)))))
          (_g1774517808_ _stx17743_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx17687_ _ids17688_)
        (let* ((_g1769017703_
                (lambda (_g1769117700_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1769117700_)))
               (_g1768917740_
                (lambda (_g1769117706_)
                  (if (gx#stx-pair? _g1769117706_)
                      (let ((_e1769317708_ (gx#stx-e _g1769117706_)))
                        (let ((_hd1769417711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1769317708_)))
                              (_tl1769517713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1769317708_))))
                          (if (gx#stx-pair? _tl1769517713_)
                              (let ((_e1769617716_ (gx#stx-e _tl1769517713_)))
                                (let ((_hd1769717719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1769617716_)))
                                      (_tl1769817721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1769617716_))))
                                  (if (gx#stx-null? _tl1769817721_)
                                      ((lambda (_L17724_)
                                         (find (lambda (_g1773517737_)
                                                 (gx#free-identifier=?
                                                  _L17724_
                                                  _g1773517737_))
                                               _ids17688_))
                                       _hd1769717719_)
                                      (_g1769017703_ _g1769117706_))))
                              (_g1769017703_ _g1769117706_))))
                      (_g1769017703_ _g1769117706_)))))
          (_g1768917740_ _stx17687_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx17611_ _ids17612_)
        (let* ((_g1761417631_
                (lambda (_g1761517628_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1761517628_)))
               (_g1761317684_
                (lambda (_g1761517634_)
                  (if (gx#stx-pair? _g1761517634_)
                      (let ((_e1761817636_ (gx#stx-e _g1761517634_)))
                        (let ((_hd1761917639_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1761817636_)))
                              (_tl1762017641_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1761817636_))))
                          (if (gx#stx-pair? _tl1762017641_)
                              (let ((_e1762117644_ (gx#stx-e _tl1762017641_)))
                                (let ((_hd1762217647_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1762117644_)))
                                      (_tl1762317649_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1762117644_))))
                                  (if (gx#stx-pair? _tl1762317649_)
                                      (let ((_e1762417652_
                                             (gx#stx-e _tl1762317649_)))
                                        (let ((_hd1762517655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1762417652_)))
                                              (_tl1762617657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1762417652_))))
                                          (if (gx#stx-null? _tl1762617657_)
                                              ((lambda (_L17660_ _L17661_)
                                                 (let ((_$e17681_
                                                        (find (lambda (_g1767617678_)
                                                                (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17661_
                         _g1767617678_))
                      _ids17612_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e17681_
                                                       _$e17681_
                                                       (gxc#compile-e
                                                        _L17660_
                                                        _ids17612_))))
                                               _hd1762517655_
                                               _hd1762217647_)
                                              (_g1761417631_ _g1761517634_))))
                                      (_g1761417631_ _g1761517634_))))
                              (_g1761417631_ _g1761517634_))))
                      (_g1761417631_ _g1761517634_)))))
          (_g1761317684_ _stx17611_))))))
