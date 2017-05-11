(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx8439_ . _args8440_)
      (let ((_g84428452_
             (lambda (_g84438449_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g84438449_))))
        (let ((_g84418480_
               (lambda (_g84438455_)
                 (if (gx#stx-pair? _g84438455_)
                     (let ((_e84458457_ (gx#stx-e _g84438455_)))
                       (let ((_hd84468460_ (##car _e84458457_))
                             (_tl84478462_ (##cdr _e84458457_)))
                         ((lambda (_L8465_)
                            (let ((_$e8475_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L8465_))))
                              (if _$e8475_
                                  ((lambda (_method8478_)
                                     (apply _method8478_ _stx8439_ _args8440_))
                                   _$e8475_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx8439_
                                   _L8465_))))
                          _hd84468460_)))
                     (_g84428452_ _g84438455_)))))
          (_g84418480_ _stx8439_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl8436_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl8436_ '%#lambda void)
           (hash-put! _tbl8436_ '%#case-lambda void)
           (hash-put! _tbl8436_ '%#let-values void)
           (hash-put! _tbl8436_ '%#letrec-values void)
           (hash-put! _tbl8436_ '%#letrec*-values void)
           (hash-put! _tbl8436_ '%#quote void)
           (hash-put! _tbl8436_ '%#quote-syntax void)
           (hash-put! _tbl8436_ '%#call void)
           (hash-put! _tbl8436_ '%#if void)
           (hash-put! _tbl8436_ '%#ref void)
           (hash-put! _tbl8436_ '%#set! void)
           (hash-put! _tbl8436_ '%#struct-instance? void)
           (hash-put! _tbl8436_ '%#struct-direct-instance? void)
           (hash-put! _tbl8436_ '%#struct-ref void)
           (hash-put! _tbl8436_ '%#struct-set! void)
           _tbl8436_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl8432_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl8432_ '%#begin void)
           (hash-put! _tbl8432_ '%#begin-syntax void)
           (hash-put! _tbl8432_ '%#begin-foreign void)
           (hash-put! _tbl8432_ '%#module void)
           (hash-put! _tbl8432_ '%#import void)
           (hash-put! _tbl8432_ '%#export void)
           (hash-put! _tbl8432_ '%#provide void)
           (hash-put! _tbl8432_ '%#extern void)
           (hash-put! _tbl8432_ '%#define-values void)
           (hash-put! _tbl8432_ '%#define-syntax void)
           (hash-put! _tbl8432_ '%#define-alias void)
           (hash-put! _tbl8432_ '%#declare void)
           _tbl8432_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl8428_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl8428_ (force gxc#&void-special-form))
           (hash-copy! _tbl8428_ (force gxc#&void-expression))
           _tbl8428_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl8424_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl8424_ (force gxc#&void-expression))
           (hash-copy! _tbl8424_ (force gxc#&void-special-form))
           (hash-put! _tbl8424_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl8424_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl8424_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl8424_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl8424_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl8424_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx8417_ . _args8419_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8417_ _args8419_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl8414_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl8414_ (force gxc#&void))
           (hash-put! _tbl8414_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl8414_ '%#module gxc#lift-modules-module%)
           _tbl8414_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx8407_ . _args8409_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8407_ _args8409_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl8404_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl8404_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl8404_ '%#begin-syntax false)
           (hash-put! _tbl8404_ '%#begin-foreign true)
           (hash-put! _tbl8404_ '%#module false)
           (hash-put! _tbl8404_ '%#import false)
           (hash-put! _tbl8404_ '%#export false)
           (hash-put! _tbl8404_ '%#provide false)
           (hash-put! _tbl8404_ '%#extern false)
           (hash-put! _tbl8404_ '%#define-values true)
           (hash-put! _tbl8404_ '%#define-syntax false)
           (hash-put! _tbl8404_ '%#define-alias false)
           (hash-put! _tbl8404_ '%#declare false)
           (hash-put! _tbl8404_ '%#lambda true)
           (hash-put! _tbl8404_ '%#case-lambda true)
           (hash-put! _tbl8404_ '%#let-values true)
           (hash-put! _tbl8404_ '%#letrec-values true)
           (hash-put! _tbl8404_ '%#letrec*-values true)
           (hash-put! _tbl8404_ '%#quote true)
           (hash-put! _tbl8404_ '%#call true)
           (hash-put! _tbl8404_ '%#if true)
           (hash-put! _tbl8404_ '%#ref true)
           (hash-put! _tbl8404_ '%#set! true)
           (hash-put! _tbl8404_ '%#struct-instance? true)
           (hash-put! _tbl8404_ '%#struct-direct-instance? true)
           (hash-put! _tbl8404_ '%#struct-ref true)
           (hash-put! _tbl8404_ '%#struct-set! true)
           _tbl8404_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx8397_ . _args8399_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8397_ _args8399_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl8394_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl8394_ '%#begin gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#set! gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#struct-instance? gxc#generate-runtime-empty)
           (hash-put!
            _tbl8394_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#struct-ref gxc#generate-runtime-empty)
           (hash-put! _tbl8394_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl8394_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl8390_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl8390_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl8390_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl8390_ '%#import gxc#generate-runtime-loader-import%)
           _tbl8390_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx8383_ . _args8385_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8383_ _args8385_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl8380_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl8380_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl8380_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl8380_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put!
            _tbl8380_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl8380_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl8380_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl8380_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl8380_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl8380_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl8380_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl8380_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl8380_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl8380_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl8380_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl8380_ '%#set! gxc#generate-runtime-setq%)
           (hash-put!
            _tbl8380_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (hash-put!
            _tbl8380_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (hash-put! _tbl8380_ '%#struct-ref gxc#generate-runtime-struct-ref%)
           (hash-put!
            _tbl8380_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl8380_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx8373_ . _args8375_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8373_ _args8375_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl8370_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl8370_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl8370_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl8370_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl8370_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx8363_ . _args8365_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8363_ _args8365_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl8360_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl8360_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl8360_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl8360_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl8360_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl8360_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put! _tbl8360_ '%#letrec*-values gxc#collect-refs-let-values%)
           (hash-put! _tbl8360_ '%#quote void)
           (hash-put! _tbl8360_ '%#quote-syntax void)
           (hash-put! _tbl8360_ '%#call gxc#collect-begin%)
           (hash-put! _tbl8360_ '%#if gxc#collect-begin%)
           (hash-put! _tbl8360_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl8360_ '%#set! gxc#collect-refs-setq%)
           (hash-put!
            _tbl8360_
            '%#struct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put!
            _tbl8360_
            '%#struct-direct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put! _tbl8360_ '%#struct-ref gxc#collect-refs-struct-ref%)
           (hash-put! _tbl8360_ '%#struct-set! gxc#collect-refs-struct-setq%)
           _tbl8360_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx8353_ . _args8355_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8353_ _args8355_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl8350_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl8350_ (force gxc#&void-expression))
           (hash-put! _tbl8350_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl8350_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl8350_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl8350_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl8350_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl8350_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl8350_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl8350_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl8350_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl8350_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl8350_ '%#begin-foreign void)
           (hash-put! _tbl8350_ '%#declare void)
           _tbl8350_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx8343_ . _args8345_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8343_ _args8345_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl8340_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl8340_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl8340_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl8340_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl8340_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl8340_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl8340_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#struct-instance? gxc#generate-meta-phi-expr)
           (hash-put!
            _tbl8340_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#struct-ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#struct-set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl8340_ '%#declare void)
           _tbl8340_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx8333_ . _args8335_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx8333_ _args8335_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx8290_ . _args8291_)
      (let ((_g82938303_
             (lambda (_g82948300_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g82948300_))))
        (let ((_g82928330_
               (lambda (_g82948306_)
                 (if (gx#stx-pair? _g82948306_)
                     (let ((_e82968308_ (gx#stx-e _g82948306_)))
                       (let ((_hd82978311_ (##car _e82968308_))
                             (_tl82988313_ (##cdr _e82968308_)))
                         ((lambda (_L8316_)
                            (for-each
                             (lambda (_g83258327_)
                               (apply gxc#compile-e _g83258327_ _args8291_))
                             (gx#stx-e _L8316_)))
                          _tl82988313_)))
                     (_g82938303_ _g82948306_)))))
          (_g82928330_ _stx8290_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx8246_ . _args8247_)
      (let ((_g82498259_
             (lambda (_g82508256_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g82508256_))))
        (let ((_g82488287_
               (lambda (_g82508262_)
                 (if (gx#stx-pair? _g82508262_)
                     (let ((_e82528264_ (gx#stx-e _g82508262_)))
                       (let ((_hd82538267_ (##car _e82528264_))
                             (_tl82548269_ (##cdr _e82528264_)))
                         ((lambda (_L8272_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g82828284_)
                                  (apply gxc#compile-e _g82828284_ _args8247_))
                                (gx#stx-e _L8272_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl82548269_)))
                     (_g82498259_ _g82508262_)))))
          (_g82488287_ _stx8246_)))))
  (define gxc#collect-module%
    (lambda (_stx8188_ . _args8189_)
      (let ((_g81918205_
             (lambda (_g81928202_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g81928202_))))
        (let ((_g81908243_
               (lambda (_g81928208_)
                 (if (gx#stx-pair? _g81928208_)
                     (let ((_e81958210_ (gx#stx-e _g81928208_)))
                       (let ((_hd81968213_ (##car _e81958210_))
                             (_tl81978215_ (##cdr _e81958210_)))
                         (if (gx#stx-pair? _tl81978215_)
                             (let ((_e81988218_ (gx#stx-e _tl81978215_)))
                               (let ((_hd81998221_ (##car _e81988218_))
                                     (_tl82008223_ (##cdr _e81988218_)))
                                 ((lambda (_L8226_ _L8227_)
                                    (let ((_ctx8240_
                                           (gx#syntax-local-e__0 _L8227_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx8240_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args8189_))
                                       gx#current-expander-context
                                       _ctx8240_)))
                                  _tl82008223_
                                  _hd81998221_)))
                             (_g81918205_ _g81928208_))))
                     (_g81918205_ _g81928208_)))))
          (_g81908243_ _stx8188_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx8119_)
      (let ((_g81218138_
             (lambda (_g81228135_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g81228135_))))
        (let ((_g81208185_
               (lambda (_g81228141_)
                 (if (gx#stx-pair? _g81228141_)
                     (let ((_e81258143_ (gx#stx-e _g81228141_)))
                       (let ((_hd81268146_ (##car _e81258143_))
                             (_tl81278148_ (##cdr _e81258143_)))
                         (if (gx#stx-pair? _tl81278148_)
                             (let ((_e81288151_ (gx#stx-e _tl81278148_)))
                               (let ((_hd81298154_ (##car _e81288151_))
                                     (_tl81308156_ (##cdr _e81288151_)))
                                 (if (gx#stx-pair? _tl81308156_)
                                     (let ((_e81318159_
                                            (gx#stx-e _tl81308156_)))
                                       (let ((_hd81328162_ (##car _e81318159_))
                                             (_tl81338164_
                                              (##cdr _e81318159_)))
                                         (if (gx#stx-null? _tl81338164_)
                                             ((lambda (_L8167_ _L8168_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind8183_)
                                                   (if (gx#identifier?
                                                        _bind8183_)
                                                       (gxc#add-module-binding!
                                                        _bind8183_
                                                        '#f)
                                                       '#!void))
                                                 _L8168_))
                                              _hd81328162_
                                              _hd81298154_)
                                             (_g81218138_ _g81228141_))))
                                     (_g81218138_ _g81228141_))))
                             (_g81218138_ _g81228141_))))
                     (_g81218138_ _g81228141_)))))
          (_g81208185_ _stx8119_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx8052_)
      (let ((_g80548071_
             (lambda (_g80558068_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g80558068_))))
        (let ((_g80538116_
               (lambda (_g80558074_)
                 (if (gx#stx-pair? _g80558074_)
                     (let ((_e80588076_ (gx#stx-e _g80558074_)))
                       (let ((_hd80598079_ (##car _e80588076_))
                             (_tl80608081_ (##cdr _e80588076_)))
                         (if (gx#stx-pair? _tl80608081_)
                             (let ((_e80618084_ (gx#stx-e _tl80608081_)))
                               (let ((_hd80628087_ (##car _e80618084_))
                                     (_tl80638089_ (##cdr _e80618084_)))
                                 (if (gx#stx-pair? _tl80638089_)
                                     (let ((_e80648092_
                                            (gx#stx-e _tl80638089_)))
                                       (let ((_hd80658095_ (##car _e80648092_))
                                             (_tl80668097_
                                              (##cdr _e80648092_)))
                                         (if (gx#stx-null? _tl80668097_)
                                             ((lambda (_L8100_ _L8101_)
                                                (gxc#add-module-binding!
                                                 _L8101_
                                                 '#t))
                                              _hd80658095_
                                              _hd80628087_)
                                             (_g80548071_ _g80558074_))))
                                     (_g80548071_ _g80558074_))))
                             (_g80548071_ _g80558074_))))
                     (_g80548071_ _g80558074_)))))
          (_g80538116_ _stx8052_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx7994_ _modules7995_)
      (let ((_g79978011_
             (lambda (_g79988008_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g79988008_))))
        (let ((_g79968049_
               (lambda (_g79988014_)
                 (if (gx#stx-pair? _g79988014_)
                     (let ((_e80018016_ (gx#stx-e _g79988014_)))
                       (let ((_hd80028019_ (##car _e80018016_))
                             (_tl80038021_ (##cdr _e80018016_)))
                         (if (gx#stx-pair? _tl80038021_)
                             (let ((_e80048024_ (gx#stx-e _tl80038021_)))
                               (let ((_hd80058027_ (##car _e80048024_))
                                     (_tl80068029_ (##cdr _e80048024_)))
                                 ((lambda (_L8032_ _L8033_)
                                    (let ((_ctx8046_
                                           (gx#syntax-local-e__0 _L8033_)))
                                      (begin
                                        (set-box!
                                         _modules7995_
                                         (cons _ctx8046_
                                               (unbox _modules7995_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx8046_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules7995_))
                                         gx#current-expander-context
                                         _ctx8046_))))
                                  _tl80068029_
                                  _hd80058027_)))
                             (_g79978011_ _g79988014_))))
                     (_g79978011_ _g79988014_)))))
          (_g79968049_ _stx7994_)))))
  (define gxc#add-module-binding!
    (lambda (_id7988_ _syntax?7989_)
      (let ((_eid7991_
             (##structure-ref
              (gx#resolve-identifier__0 _id7988_)
              '1
              gx#binding::t
              '#f))
            (_ht7992_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid7991_)
            '#!void
            (hash-put!
             _ht7992_
             _eid7991_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference _eid7991_)
              _syntax?7989_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id7976_)
      (let ((_bind7978_ (gx#resolve-identifier__0 _id7976_)))
        (if _bind7978_
            (let ((_eid7980_ (##structure-ref _bind7978_ '1 gx#binding::t '#f))
                  (_ht7981_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid7980_)
                  _eid7980_
                  (let ((_$e7983_ (hash-get _ht7981_ _eid7980_)))
                    (if _$e7983_
                        (values _$e7983_)
                        (if (##structure-instance-of?
                             _bind7978_
                             'gx#local-binding::t)
                            (let ((_gid7986_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid7980_)))
                              (begin
                                (hash-put! _ht7981_ _eid7980_ _gid7986_)
                                _gid7986_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id7976_
                             _eid7980_
                             _bind7978_))))))
            (if (interned-symbol? (gx#stx-e _id7976_))
                (gx#stx-e _id7976_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id7976_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id7974_)
      (if (gx#identifier? _id7974_)
          (gxc#generate-runtime-binding-id _id7974_)
          (gxc#generate-runtime-temporary__0))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym7965_)
      (let ((_ht7967_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '1
              gxc#symbol-table::t
              '#f)))
        (let ((_$e7969_ (hash-get _ht7967_ _sym7965_)))
          (if _$e7969_
              (values _$e7969_)
              (let ((_g7972_ (make-symbol '"_" _sym7965_ '"_")))
                (begin (hash-put! _ht7967_ _sym7965_ _g7972_) _g7972_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id7963_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id7963_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key7925_)
      (if (interned-symbol? _key7925_)
          _key7925_
          (if (uninterned-symbol? _key7925_)
              (gxc#generate-runtime-gensym-reference _key7925_)
              (let ((_key79267933_ _key7925_))
                (let ((_E79287937_
                       (lambda ()
                         (error '"No clause matching" _key79267933_))))
                  (let ((_K79297951_
                         (lambda (_mark7940_ _eid7941_)
                           (let ((_$e7943_
                                  (##structure-ref
                                   _mark7940_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e7943_
                                 ((lambda (_ht7946_)
                                    (let ((_$e7948_
                                           (hash-get _ht7946_ _eid7941_)))
                                      (if _$e7948_
                                          (values _$e7948_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid7941_))))
                                  _$e7943_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid7941_))))))
                    (if (##pair? _key79267933_)
                        (let ((_hd79307954_ (##car _key79267933_))
                              (_tl79317956_ (##cdr _key79267933_)))
                          (let ((_eid7959_ _hd79307954_))
                            (let ((_mark7961_ _tl79317956_))
                              (_K79297951_ _mark7961_ _eid7959_))))
                        (_E79287937_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda7910
      (lambda (_top7912_)
        (if _top7912_
            (let ((_ns7914_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi7915_ (gx#current-expander-phi)))
              (if (fxpositive? _phi7915_)
                  (make-symbol
                   _ns7914_
                   '"["
                   (number->string _phi7915_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns7914_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top7921_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda7910 _top7921_))))
      (define gxc#generate-runtime-temporary
        (lambda _g8483_
          (let ((_g8482_ (length _g8483_)))
            (cond ((fx= _g8482_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g8483_))
                  ((fx= _g8482_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda7910
                          _g8483_))
                  (else (error "No clause matching arguments" _g8483_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx7909_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx7829_)
      (let ((_g78317841_
             (lambda (_g78327838_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g78327838_))))
        (let ((_g78307906_
               (lambda (_g78327844_)
                 (if (gx#stx-pair? _g78327844_)
                     (let ((_e78347846_ (gx#stx-e _g78327844_)))
                       (let ((_hd78357849_ (##car _e78347846_))
                             (_tl78367851_ (##cdr _e78347846_)))
                         ((lambda (_L7854_)
                            (let ((_body7864_
                                   (gx#stx-map1 gxc#compile-e _L7854_)))
                              (let ((_body7903_
                                     (filter (lambda (_stx7866_)
                                               (let ((_g78697878_
                                                      (lambda (_g78707875_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g78707875_))))
                                                 (let ((_g78687885_
                                                        (lambda (_g78707881_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g78677900_
                                                          (lambda (_g78707888_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g78707888_)
                        (let ((_e78717890_ (gx#stx-e _g78707888_)))
                          (let ((_hd78727893_ (##car _e78717890_))
                                (_tl78737895_ (##cdr _e78717890_)))
                            (if (gx#identifier? _hd78727893_)
                                (if (gx#stx-eq? 'begin _hd78727893_)
                                    (if (gx#stx-null? _tl78737895_)
                                        ((lambda () '#f))
                                        (_g78687885_ _g78707888_))
                                    (_g78687885_ _g78707888_))
                                (_g78687885_ _g78707888_))))
                        (_g78687885_ _g78707888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g78677900_
                                                      _stx7866_)))))
                                             _body7864_)))
                                (let ()
                                  (if (fx= (length _body7903_) '1)
                                      (car _body7903_)
                                      (cons 'begin _body7903_))))))
                          _tl78367851_)))
                     (_g78317841_ _g78327844_)))))
          (_g78307906_ _stx7829_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx7791_)
      (let ((_g77937803_
             (lambda (_g77947800_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g77947800_))))
        (let ((_g77927826_
               (lambda (_g77947806_)
                 (if (gx#stx-pair? _g77947806_)
                     (let ((_e77967808_ (gx#stx-e _g77947806_)))
                       (let ((_hd77977811_ (##car _e77967808_))
                             (_tl77987813_ (##cdr _e77967808_)))
                         ((lambda (_L7816_)
                            (cons 'begin (gx#syntax->datum _L7816_)))
                          _tl77987813_)))
                     (_g77937803_ _g77947806_)))))
          (_g77927826_ _stx7791_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx7753_)
      (let ((_g77557765_
             (lambda (_g77567762_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g77567762_))))
        (let ((_g77547788_
               (lambda (_g77567768_)
                 (if (gx#stx-pair? _g77567768_)
                     (let ((_e77587770_ (gx#stx-e _g77567768_)))
                       (let ((_hd77597773_ (##car _e77587770_))
                             (_tl77607775_ (##cdr _e77587770_)))
                         ((lambda (_L7778_)
                            (cons 'declare (map gx#syntax->datum _L7778_)))
                          _tl77607775_)))
                     (_g77557765_ _g77567768_)))))
          (_g77547788_ _stx7753_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx7517_)
      (let ((_g75197536_
             (lambda (_g75207533_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g75207533_))))
        (let ((_g75187750_
               (lambda (_g75207539_)
                 (if (gx#stx-pair? _g75207539_)
                     (let ((_e75237541_ (gx#stx-e _g75207539_)))
                       (let ((_hd75247544_ (##car _e75237541_))
                             (_tl75257546_ (##cdr _e75237541_)))
                         (if (gx#stx-pair? _tl75257546_)
                             (let ((_e75267549_ (gx#stx-e _tl75257546_)))
                               (let ((_hd75277552_ (##car _e75267549_))
                                     (_tl75287554_ (##cdr _e75267549_)))
                                 (if (gx#stx-pair? _tl75287554_)
                                     (let ((_e75297557_
                                            (gx#stx-e _tl75287554_)))
                                       (let ((_hd75307560_ (##car _e75297557_))
                                             (_tl75317562_
                                              (##cdr _e75297557_)))
                                         (if (gx#stx-null? _tl75317562_)
                                             ((lambda (_L7565_ _L7566_)
                                                (let ((_g75837596_
                                                       (lambda (_g75847593_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g75847593_))))
                                                  (let ((_g75827710_
                                                         (lambda (_g75847599_)
                                                           ((lambda ()
                                                              (let ((_tmp7603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda7910
                              '#t)))
                        (let ((_body7707_
                               ((letrec ((_lp7605_
                                          (lambda (_rest7607_ _k7608_ _r7609_)
                                            (let ((_g76147630_
                                                   (lambda (_g76157627_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g76157627_))))
                                              (let ((_g76137637_
                                                     (lambda (_g76157633_)
                                                       ((lambda ()
                                                          (reverse _r7609_))))))
                                                (let ((_g76127658_
                                                       (lambda (_g76157640_)
                                                         ((lambda (_L7642_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7642_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L7642_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp7603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k7608_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r7609_)
                        (_g76137637_ _g76157640_)))
                  _g76157640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g76117682_
                                                         (lambda (_g76157661_)
                                                           (if (gx#stx-pair?
                                                                _g76157661_)
                                                               (let ((_e76227663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g76157661_)))
                         (let ((_hd76237666_ (##car _e76227663_))
                               (_tl76247668_ (##cdr _e76227663_)))
                           ((lambda (_L7671_ _L7672_)
                              (_lp7605_
                               _L7671_
                               (fx1+ _k7608_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L7672_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp7603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k7608_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r7609_)))
                            _tl76247668_
                            _hd76237666_)))
                       (_g76127658_ _g76157661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g76107704_
                                                           (lambda (_g76157685_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g76157685_)
                         (let ((_e76177687_ (gx#stx-e _g76157685_)))
                           (let ((_hd76187690_ (##car _e76177687_))
                                 (_tl76197692_ (##cdr _e76177687_)))
                             (if (gx#stx-datum? _hd76187690_)
                                 (if (equal? (gx#stx-e _hd76187690_) '#f)
                                     ((lambda (_L7695_)
                                        (_lp7605_
                                         _L7695_
                                         (fx1+ _k7608_)
                                         _r7609_))
                                      _tl76197692_)
                                     (_g76117682_ _g76157685_))
                                 (_g76117682_ _g76157685_))))
                         (_g76117682_ _g76157685_)))))
              (_g76107704_ _rest7607_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp7605_)
                                _L7566_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp7603_
                                                    (cons (gxc#compile-e
                                                           _L7565_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp7603_
                                               _L7566_)
                                              _body7707_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g75817732_
                                                           (lambda (_g75847713_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g75847713_)
                         (let ((_e75897715_ (gx#stx-e _g75847713_)))
                           (let ((_hd75907718_ (##car _e75897715_))
                                 (_tl75917720_ (##cdr _e75897715_)))
                             (if (gx#stx-null? _tl75917720_)
                                 ((lambda (_L7723_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L7723_)
                                                (cons (gxc#compile-e _L7565_)
                                                      '()))))
                                  _hd75907718_)
                                 (_g75827710_ _g75847713_))))
                         (_g75827710_ _g75847713_)))))
              (let ((_g75807747_
                     (lambda (_g75847735_)
                       (if (gx#stx-pair? _g75847735_)
                           (let ((_e75857737_ (gx#stx-e _g75847735_)))
                             (let ((_hd75867740_ (##car _e75857737_))
                                   (_tl75877742_ (##cdr _e75857737_)))
                               (if (gx#stx-datum? _hd75867740_)
                                   (if (equal? (gx#stx-e _hd75867740_) '#f)
                                       (if (gx#stx-null? _tl75877742_)
                                           ((lambda ()
                                              (gxc#compile-e _L7565_)))
                                           (_g75817732_ _g75847735_))
                                       (_g75817732_ _g75847735_))
                                   (_g75817732_ _g75847735_))))
                           (_g75817732_ _g75847735_)))))
                (_g75807747_ _L7566_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd75307560_
                                              _hd75277552_)
                                             (_g75197536_ _g75207539_))))
                                     (_g75197536_ _g75207539_))))
                             (_g75197536_ _g75207539_))))
                     (_g75197536_ _g75207539_)))))
          (_g75187750_ _stx7517_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals7505_ _hd7506_)
      (let ((_len7508_ (gx#stx-length _hd7506_)))
        (let ((_cmp7510_ (if (gx#stx-list? _hd7506_) 'fx= 'fx>=)))
          (let ((_errmsg7512_
                 (string-append
                  (if (gx#stx-list? _hd7506_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len7508_)
                  '" values")))
            (let ((_count7514_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd7506_)) (fx= _len7508_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count7514_
                                            (cons (cons 'values-count
                                                        (cons _vals7505_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp7510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count7514_ (cons _len7508_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg7512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count7514_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx7438_)
      (let ((_g74407457_
             (lambda (_g74417454_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g74417454_))))
        (let ((_g74397502_
               (lambda (_g74417460_)
                 (if (gx#stx-pair? _g74417460_)
                     (let ((_e74447462_ (gx#stx-e _g74417460_)))
                       (let ((_hd74457465_ (##car _e74447462_))
                             (_tl74467467_ (##cdr _e74447462_)))
                         (if (gx#stx-pair? _tl74467467_)
                             (let ((_e74477470_ (gx#stx-e _tl74467467_)))
                               (let ((_hd74487473_ (##car _e74477470_))
                                     (_tl74497475_ (##cdr _e74477470_)))
                                 (if (gx#stx-pair? _tl74497475_)
                                     (let ((_e74507478_
                                            (gx#stx-e _tl74497475_)))
                                       (let ((_hd74517481_ (##car _e74507478_))
                                             (_tl74527483_
                                              (##cdr _e74507478_)))
                                         (if (gx#stx-null? _tl74527483_)
                                             ((lambda (_L7486_ _L7487_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L7487_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7486_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd74517481_
                                              _hd74487473_)
                                             (_g74407457_ _g74417460_))))
                                     (_g74407457_ _g74417460_))))
                             (_g74407457_ _g74417460_))))
                     (_g74407457_ _g74417460_)))))
          (_g74397502_ _stx7438_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd7436_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd7436_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx5973_)
      (let ((_runtime-identifier=?5975_
             (lambda (_id-stx7427_ _sym7428_)
               (let ((_bind74297431_ (gx#resolve-identifier__0 _id-stx7427_)))
                 (if _bind74297431_
                     (let ((_bind7434_ _bind74297431_))
                       (eq? (##structure-ref _bind7434_ '1 gx#binding::t '#f)
                            _sym7428_))
                     '#f)))))
        (let ((_dispatch-case?5976_
               (lambda (_hd6657_ _body6658_)
                 (let ((_form6660_ (cons _hd6657_ (cons _body6658_ '()))))
                   (let ((_g66656822_
                          (lambda (_g66666819_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g66666819_))))
                     (let ((_g66646829_
                            (lambda (_g66666825_) ((lambda () '#f)))))
                       (let ((_g66636970_
                              (lambda (_g66666832_)
                                (if (gx#stx-pair? _g66666832_)
                                    (let ((_e67826834_ (gx#stx-e _g66666832_)))
                                      (let ((_hd67836837_ (##car _e67826834_))
                                            (_tl67846839_ (##cdr _e67826834_)))
                                        (if (gx#stx-pair? _tl67846839_)
                                            (let ((_e67856842_
                                                   (gx#stx-e _tl67846839_)))
                                              (let ((_hd67866845_
                                                     (##car _e67856842_))
                                                    (_tl67876847_
                                                     (##cdr _e67856842_)))
                                                (if (gx#stx-pair? _hd67866845_)
                                                    (let ((_e67886850_
                                                           (gx#stx-e
                                                            _hd67866845_)))
                                                      (let ((_hd67896853_
                                                             (##car _e67886850_))
                                                            (_tl67906855_
                                                             (##cdr _e67886850_)))
                                                        (if (gx#identifier?
                                                             _hd67896853_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd67896853_)
                        (if (gx#stx-pair? _tl67906855_)
                            (let ((_e67916858_ (gx#stx-e _tl67906855_)))
                              (let ((_hd67926861_ (##car _e67916858_))
                                    (_tl67936863_ (##cdr _e67916858_)))
                                (if (gx#stx-pair? _hd67926861_)
                                    (let ((_e67946866_
                                           (gx#stx-e _hd67926861_)))
                                      (let ((_hd67956869_ (##car _e67946866_))
                                            (_tl67966871_ (##cdr _e67946866_)))
                                        (if (gx#identifier? _hd67956869_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd67956869_)
                                                (if (gx#stx-pair? _tl67966871_)
                                                    (let ((_e67976874_
                                                           (gx#stx-e
                                                            _tl67966871_)))
                                                      (let ((_hd67986877_
                                                             (##car _e67976874_))
                                                            (_tl67996879_
                                                             (##cdr _e67976874_)))
                                                        (if (gx#stx-null?
                                                             _tl67996879_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67936863_)
                        (let ((_e68006882_ (gx#stx-e _tl67936863_)))
                          (let ((_hd68016885_ (##car _e68006882_))
                                (_tl68026887_ (##cdr _e68006882_)))
                            (if (gx#stx-pair? _hd68016885_)
                                (let ((_e68036890_ (gx#stx-e _hd68016885_)))
                                  (let ((_hd68046893_ (##car _e68036890_))
                                        (_tl68056895_ (##cdr _e68036890_)))
                                    (if (gx#identifier? _hd68046893_)
                                        (if (gx#stx-eq? '%#ref _hd68046893_)
                                            (if (gx#stx-pair? _tl68056895_)
                                                (let ((_e68066898_
                                                       (gx#stx-e
                                                        _tl68056895_)))
                                                  (let ((_hd68076901_
                                                         (##car _e68066898_))
                                                        (_tl68086903_
                                                         (##cdr _e68066898_)))
                                                    (if (gx#stx-null?
                                                         _tl68086903_)
                                                        (if (gx#stx-pair?
                                                             _tl68026887_)
                                                            (let ((_e68096906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl68026887_)))
                      (let ((_hd68106909_ (##car _e68096906_))
                            (_tl68116911_ (##cdr _e68096906_)))
                        (if (gx#stx-pair? _hd68106909_)
                            (let ((_e68126914_ (gx#stx-e _hd68106909_)))
                              (let ((_hd68136917_ (##car _e68126914_))
                                    (_tl68146919_ (##cdr _e68126914_)))
                                (if (gx#identifier? _hd68136917_)
                                    (if (gx#stx-eq? '%#ref _hd68136917_)
                                        (if (gx#stx-pair? _tl68146919_)
                                            (let ((_e68156922_
                                                   (gx#stx-e _tl68146919_)))
                                              (let ((_hd68166925_
                                                     (##car _e68156922_))
                                                    (_tl68176927_
                                                     (##cdr _e68156922_)))
                                                (if (gx#stx-null? _tl68176927_)
                                                    (if (gx#stx-null?
                                                         _tl68116911_)
                                                        (if (gx#stx-null?
                                                             _tl67876847_)
                                                            ((lambda (_L6930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6931_
                              _L6932_
                              _L6933_)
                       (if (if (gx#identifier? _L6933_)
                               (if (_runtime-identifier=?5975_ _L6932_ 'apply)
                                   (if (gx#free-identifier=? _L6933_ _L6930_)
                                       (not (gx#free-identifier=?
                                             _L6931_
                                             _L6933_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g66646829_ _g66666832_)))
                     _hd68166925_
                     _hd68076901_
                     _hd67986877_
                     _hd67836837_)
                    (_g66646829_ _g66666832_))
                (_g66646829_ _g66666832_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66646829_
                                                     _g66666832_))))
                                            (_g66646829_ _g66666832_))
                                        (_g66646829_ _g66666832_))
                                    (_g66646829_ _g66666832_))))
                            (_g66646829_ _g66666832_))))
                    (_g66646829_ _g66666832_))
                (_g66646829_ _g66666832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g66646829_ _g66666832_))
                                            (_g66646829_ _g66666832_))
                                        (_g66646829_ _g66666832_))))
                                (_g66646829_ _g66666832_))))
                        (_g66646829_ _g66666832_))
                    (_g66646829_ _g66666832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66646829_ _g66666832_))
                                                (_g66646829_ _g66666832_))
                                            (_g66646829_ _g66666832_))))
                                    (_g66646829_ _g66666832_))))
                            (_g66646829_ _g66666832_))
                        (_g66646829_ _g66666832_))
                    (_g66646829_ _g66666832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66646829_
                                                     _g66666832_))))
                                            (_g66646829_ _g66666832_))))
                                    (_g66646829_ _g66666832_)))))
                         (let ((_g66627230_
                                (lambda (_g66666973_)
                                  (if (gx#stx-pair? _g66666973_)
                                      (let ((_e67186975_
                                             (gx#stx-e _g66666973_)))
                                        (let ((_hd67196978_
                                               (##car _e67186975_))
                                              (_tl67206980_
                                               (##cdr _e67186975_)))
                                          (if (gx#stx-pair/null? _hd67196978_)
                                              (if (fx>= (gx#stx-length
                                                         _hd67196978_)
                                                        '0)
                                                  (let ((_g8492_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd67196978_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g8493_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g8492_)))
                (if (not (fx= _g8493_ 2))
                    (error "Context expects 2 values" _g8493_)))
              (let ((_target67216983_ (values-ref _g8492_ 0))
                    (_tl67236985_ (values-ref _g8492_ 1)))
                (letrec ((_loop67246988_
                          (lambda (_hd67226991_ _arg67286993_)
                            (if (gx#stx-pair? _hd67226991_)
                                (let ((_e67256996_ (gx#stx-e _hd67226991_)))
                                  (let ((_lp-hd67266999_ (##car _e67256996_))
                                        (_lp-tl67277001_ (##cdr _e67256996_)))
                                    (_loop67246988_
                                     _lp-tl67277001_
                                     (cons _lp-hd67266999_ _arg67286993_))))
                                (let ((_arg67297004_ (reverse _arg67286993_)))
                                  (if (gx#stx-pair? _tl67206980_)
                                      (let ((_e67307007_
                                             (gx#stx-e _tl67206980_)))
                                        (let ((_hd67317010_
                                               (##car _e67307007_))
                                              (_tl67327012_
                                               (##cdr _e67307007_)))
                                          (if (gx#stx-pair? _hd67317010_)
                                              (let ((_e67337015_
                                                     (gx#stx-e _hd67317010_)))
                                                (let ((_hd67347018_
                                                       (##car _e67337015_))
                                                      (_tl67357020_
                                                       (##cdr _e67337015_)))
                                                  (if (gx#identifier?
                                                       _hd67347018_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd67347018_)
                                                          (if (gx#stx-pair?
                                                               _tl67357020_)
                                                              (let ((_e67367023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl67357020_)))
                        (let ((_hd67377026_ (##car _e67367023_))
                              (_tl67387028_ (##cdr _e67367023_)))
                          (if (gx#stx-pair? _hd67377026_)
                              (let ((_e67397031_ (gx#stx-e _hd67377026_)))
                                (let ((_hd67407034_ (##car _e67397031_))
                                      (_tl67417036_ (##cdr _e67397031_)))
                                  (if (gx#identifier? _hd67407034_)
                                      (if (gx#stx-eq? '%#ref _hd67407034_)
                                          (if (gx#stx-pair? _tl67417036_)
                                              (let ((_e67427039_
                                                     (gx#stx-e _tl67417036_)))
                                                (let ((_hd67437042_
                                                       (##car _e67427039_))
                                                      (_tl67447044_
                                                       (##cdr _e67427039_)))
                                                  (if (gx#stx-null?
                                                       _tl67447044_)
                                                      (if (gx#stx-pair?
                                                           _tl67387028_)
                                                          (let ((_e67457047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl67387028_)))
                    (let ((_hd67467050_ (##car _e67457047_))
                          (_tl67477052_ (##cdr _e67457047_)))
                      (if (gx#stx-pair? _hd67467050_)
                          (let ((_e67487055_ (gx#stx-e _hd67467050_)))
                            (let ((_hd67497058_ (##car _e67487055_))
                                  (_tl67507060_ (##cdr _e67487055_)))
                              (if (gx#identifier? _hd67497058_)
                                  (if (gx#stx-eq? '%#ref _hd67497058_)
                                      (if (gx#stx-pair? _tl67507060_)
                                          (let ((_e67517063_
                                                 (gx#stx-e _tl67507060_)))
                                            (let ((_hd67527066_
                                                   (##car _e67517063_))
                                                  (_tl67537068_
                                                   (##cdr _e67517063_)))
                                              (if (gx#stx-null? _tl67537068_)
                                                  (if (gx#stx-pair/null?
                                                       _tl67477052_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67477052_)
                        '1)
                  (let ((_g8494_ (gx#syntax-split-splice _tl67477052_ '1)))
                    (begin
                      (let ((_g8495_ (values-count _g8494_)))
                        (if (not (fx= _g8495_ 2))
                            (error "Context expects 2 values" _g8495_)))
                      (let ((_target67547071_ (values-ref _g8494_ 0))
                            (_tl67567073_ (values-ref _g8494_ 1)))
                        (if (gx#stx-pair? _tl67567073_)
                            (let ((_e67637076_ (gx#stx-e _tl67567073_)))
                              (let ((_hd67647079_ (##car _e67637076_))
                                    (_tl67657081_ (##cdr _e67637076_)))
                                (if (gx#stx-pair? _hd67647079_)
                                    (let ((_e67667084_
                                           (gx#stx-e _hd67647079_)))
                                      (let ((_hd67677087_ (##car _e67667084_))
                                            (_tl67687089_ (##cdr _e67667084_)))
                                        (if (gx#identifier? _hd67677087_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd67677087_)
                                                (if (gx#stx-pair? _tl67687089_)
                                                    (let ((_e67697092_
                                                           (gx#stx-e
                                                            _tl67687089_)))
                                                      (let ((_hd67707095_
                                                             (##car _e67697092_))
                                                            (_tl67717097_
                                                             (##cdr _e67697092_)))
                                                        (if (gx#stx-null?
                                                             _tl67717097_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67657081_)
                        (letrec ((_loop67577100_
                                  (lambda (_hd67557103_ _xarg67617105_)
                                    (if (gx#stx-pair? _hd67557103_)
                                        (let ((_e67587108_
                                               (gx#stx-e _hd67557103_)))
                                          (let ((_lp-hd67597111_
                                                 (##car _e67587108_))
                                                (_lp-tl67607113_
                                                 (##cdr _e67587108_)))
                                            (if (gx#stx-pair? _lp-hd67597111_)
                                                (let ((_e67727116_
                                                       (gx#stx-e
                                                        _lp-hd67597111_)))
                                                  (let ((_hd67737119_
                                                         (##car _e67727116_))
                                                        (_tl67747121_
                                                         (##cdr _e67727116_)))
                                                    (if (gx#identifier?
                                                         _hd67737119_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd67737119_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67747121_)
                        (let ((_e67757124_ (gx#stx-e _tl67747121_)))
                          (let ((_hd67767127_ (##car _e67757124_))
                                (_tl67777129_ (##cdr _e67757124_)))
                            (if (gx#stx-null? _tl67777129_)
                                (_loop67577100_
                                 _lp-tl67607113_
                                 (cons _hd67767127_ _xarg67617105_))
                                (_g66636970_ _g66666973_))))
                        (_g66636970_ _g66666973_))
                    (_g66636970_ _g66666973_))
                (_g66636970_ _g66666973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g66636970_ _g66666973_))))
                                        (let ((_xarg67627132_
                                               (reverse _xarg67617105_)))
                                          (if (gx#stx-null? _tl67327012_)
                                              ((lambda (_L7135_
                                                        _L7136_
                                                        _L7137_
                                                        _L7138_
                                                        _L7139_
                                                        _L7140_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g71837186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g71847188_)
                             (cons _g71837186_ _g71847188_))
                           '()
                           _L7140_)))
                 (if (gx#identifier? _L7139_)
                     (if (_runtime-identifier=?5975_ _L7138_ 'apply)
                         (if (fx= (gx#stx-length
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g71907193_ _g71917195_)
                                              (cons _g71907193_ _g71917195_))
                                            '()
                                            _L7140_)))
                                  (gx#stx-length
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g71977200_ _g71987202_)
                                              (cons _g71977200_ _g71987202_))
                                            '()
                                            _L7136_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g72047207_
                                                           _g72057209_)
                                                    (cons _g72047207_
                                                          _g72057209_))
                                                  '()
                                                  _L7140_))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g72117214_
                                                           _g72127216_)
                                                    (cons _g72117214_
                                                          _g72127216_))
                                                  '()
                                                  _L7136_)))
                                 (if (gx#free-identifier=? _L7139_ _L7135_)
                                     (not (find (lambda (_g72187220_)
                                                  (gx#free-identifier=?
                                                   _g72187220_
                                                   _L7137_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g72227225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g72237227_)
                   (cons _g72227225_ _g72237227_))
                 (cons _L7139_ '())
                 _L7140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g66636970_
                                                      _g66666973_)))
                                               _hd67707095_
                                               _xarg67627132_
                                               _hd67527066_
                                               _hd67437042_
                                               _tl67236985_
                                               _arg67297004_)
                                              (_g66636970_ _g66666973_)))))))
                          (_loop67577100_ _target67547071_ '()))
                        (_g66636970_ _g66666973_))
                    (_g66636970_ _g66666973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66636970_ _g66666973_))
                                                (_g66636970_ _g66666973_))
                                            (_g66636970_ _g66666973_))))
                                    (_g66636970_ _g66666973_))))
                            (_g66636970_ _g66666973_)))))
                  (_g66636970_ _g66666973_))
              (_g66636970_ _g66666973_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66636970_ _g66666973_))))
                                          (_g66636970_ _g66666973_))
                                      (_g66636970_ _g66666973_))
                                  (_g66636970_ _g66666973_))))
                          (_g66636970_ _g66666973_))))
                  (_g66636970_ _g66666973_))
              (_g66636970_ _g66666973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66636970_ _g66666973_))
                                          (_g66636970_ _g66666973_))
                                      (_g66636970_ _g66666973_))))
                              (_g66636970_ _g66666973_))))
                      (_g66636970_ _g66666973_))
                  (_g66636970_ _g66666973_))
              (_g66636970_ _g66666973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66636970_ _g66666973_))))
                                      (_g66636970_ _g66666973_)))))))
                  (_loop67246988_ _target67216983_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66636970_ _g66666973_))
                                              (_g66636970_ _g66666973_))))
                                      (_g66636970_ _g66666973_)))))
                           (let ((_g66617424_
                                  (lambda (_g66667233_)
                                    (if (gx#stx-pair? _g66667233_)
                                        (let ((_e66707235_
                                               (gx#stx-e _g66667233_)))
                                          (let ((_hd66717238_
                                                 (##car _e66707235_))
                                                (_tl66727240_
                                                 (##cdr _e66707235_)))
                                            (if (gx#stx-pair/null?
                                                 _hd66717238_)
                                                (if (fx>= (gx#stx-length
                                                           _hd66717238_)
                                                          '0)
                                                    (let ((_g8496_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd66717238_
                            '0)))
              (begin
                (let ((_g8497_ (values-count _g8496_)))
                  (if (not (fx= _g8497_ 2))
                      (error "Context expects 2 values" _g8497_)))
                (let ((_target66737243_ (values-ref _g8496_ 0))
                      (_tl66757245_ (values-ref _g8496_ 1)))
                  (if (gx#stx-null? _tl66757245_)
                      (letrec ((_loop66767248_
                                (lambda (_hd66747251_ _arg66807253_)
                                  (if (gx#stx-pair? _hd66747251_)
                                      (let ((_e66777256_
                                             (gx#stx-e _hd66747251_)))
                                        (let ((_lp-hd66787259_
                                               (##car _e66777256_))
                                              (_lp-tl66797261_
                                               (##cdr _e66777256_)))
                                          (_loop66767248_
                                           _lp-tl66797261_
                                           (cons _lp-hd66787259_
                                                 _arg66807253_))))
                                      (let ((_arg66817264_
                                             (reverse _arg66807253_)))
                                        (if (gx#stx-pair? _tl66727240_)
                                            (let ((_e66827267_
                                                   (gx#stx-e _tl66727240_)))
                                              (let ((_hd66837270_
                                                     (##car _e66827267_))
                                                    (_tl66847272_
                                                     (##cdr _e66827267_)))
                                                (if (gx#stx-pair? _hd66837270_)
                                                    (let ((_e66857275_
                                                           (gx#stx-e
                                                            _hd66837270_)))
                                                      (let ((_hd66867278_
                                                             (##car _e66857275_))
                                                            (_tl66877280_
                                                             (##cdr _e66857275_)))
                                                        (if (gx#identifier?
                                                             _hd66867278_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd66867278_)
                        (if (gx#stx-pair? _tl66877280_)
                            (let ((_e66887283_ (gx#stx-e _tl66877280_)))
                              (let ((_hd66897286_ (##car _e66887283_))
                                    (_tl66907288_ (##cdr _e66887283_)))
                                (if (gx#stx-pair? _hd66897286_)
                                    (let ((_e66917291_
                                           (gx#stx-e _hd66897286_)))
                                      (let ((_hd66927294_ (##car _e66917291_))
                                            (_tl66937296_ (##cdr _e66917291_)))
                                        (if (gx#identifier? _hd66927294_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd66927294_)
                                                (if (gx#stx-pair? _tl66937296_)
                                                    (let ((_e66947299_
                                                           (gx#stx-e
                                                            _tl66937296_)))
                                                      (let ((_hd66957302_
                                                             (##car _e66947299_))
                                                            (_tl66967304_
                                                             (##cdr _e66947299_)))
                                                        (if (gx#stx-null?
                                                             _tl66967304_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl66907288_)
                        (if (fx>= (gx#stx-length _tl66907288_) '0)
                            (let ((_g8498_ (gx#syntax-split-splice
                                            _tl66907288_
                                            '0)))
                              (begin
                                (let ((_g8499_ (values-count _g8498_)))
                                  (if (not (fx= _g8499_ 2))
                                      (error "Context expects 2 values"
                                             _g8499_)))
                                (let ((_target66977307_ (values-ref _g8498_ 0))
                                      (_tl66997309_ (values-ref _g8498_ 1)))
                                  (if (gx#stx-null? _tl66997309_)
                                      (letrec ((_loop67007312_
                                                (lambda (_hd66987315_
                                                         _xarg67047317_)
                                                  (if (gx#stx-pair?
                                                       _hd66987315_)
                                                      (let ((_e67017320_
                                                             (gx#stx-e
                                                              _hd66987315_)))
                                                        (let ((_lp-hd67027323_
                                                               (##car _e67017320_))
                                                              (_lp-tl67037325_
                                                               (##cdr _e67017320_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd67027323_)
                                                              (let ((_e67067328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd67027323_)))
                        (let ((_hd67077331_ (##car _e67067328_))
                              (_tl67087333_ (##cdr _e67067328_)))
                          (if (gx#identifier? _hd67077331_)
                              (if (gx#stx-eq? '%#ref _hd67077331_)
                                  (if (gx#stx-pair? _tl67087333_)
                                      (let ((_e67097336_
                                             (gx#stx-e _tl67087333_)))
                                        (let ((_hd67107339_
                                               (##car _e67097336_))
                                              (_tl67117341_
                                               (##cdr _e67097336_)))
                                          (if (gx#stx-null? _tl67117341_)
                                              (_loop67007312_
                                               _lp-tl67037325_
                                               (cons _hd67107339_
                                                     _xarg67047317_))
                                              (_g66627230_ _g66667233_))))
                                      (_g66627230_ _g66667233_))
                                  (_g66627230_ _g66667233_))
                              (_g66627230_ _g66667233_))))
                      (_g66627230_ _g66667233_))))
              (let ((_xarg67057344_ (reverse _xarg67047317_)))
                (if (gx#stx-null? _tl66847272_)
                    ((lambda (_L7347_ _L7348_ _L7349_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr (lambda (_g73777380_ _g73787382_)
                                           (cons _g73777380_ _g73787382_))
                                         '()
                                         _L7349_)))
                               (if (fx= (gx#stx-length
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g73847387_
                                                           _g73857389_)
                                                    (cons _g73847387_
                                                          _g73857389_))
                                                  '()
                                                  _L7349_)))
                                        (gx#stx-length
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g73917394_
                                                           _g73927396_)
                                                    (cons _g73917394_
                                                          _g73927396_))
                                                  '()
                                                  _L7347_))))
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g73987401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g73997403_)
                  (cons _g73987401_ _g73997403_))
                '()
                _L7349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g74057408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g74067410_)
                  (cons _g74057408_ _g74067410_))
                '()
                _L7347_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g74127414_)
                                                    (gx#free-identifier=?
                                                     _g74127414_
                                                     _L7348_))
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g74167419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g74177421_)
                     (cons _g74167419_ _g74177421_))
                   '()
                   _L7349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g66627230_ _g66667233_)))
                     _xarg67057344_
                     _hd66957302_
                     _arg66817264_)
                    (_g66627230_ _g66667233_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop67007312_ _target66977307_ '()))
                                      (_g66627230_ _g66667233_)))))
                            (_g66627230_ _g66667233_))
                        (_g66627230_ _g66667233_))
                    (_g66627230_ _g66667233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66627230_ _g66667233_))
                                                (_g66627230_ _g66667233_))
                                            (_g66627230_ _g66667233_))))
                                    (_g66627230_ _g66667233_))))
                            (_g66627230_ _g66667233_))
                        (_g66627230_ _g66667233_))
                    (_g66627230_ _g66667233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66627230_
                                                     _g66667233_))))
                                            (_g66627230_ _g66667233_)))))))
                        (_loop66767248_ _target66737243_ '()))
                      (_g66627230_ _g66667233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66627230_ _g66667233_))
                                                (_g66627230_ _g66667233_))))
                                        (_g66627230_ _g66667233_)))))
                             (_g66617424_ _form6660_))))))))))
          (let ((_dispatch-case-e5977_
                 (lambda (_hd6121_ _body6122_)
                   (let ((_form6124_ (cons _hd6121_ (cons _body6122_ '()))))
                     (let ((_g61286252_
                            (lambda (_g61296249_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g61296249_))))
                       (let ((_g61276370_
                              (lambda (_g61296255_)
                                (if (gx#stx-pair? _g61296255_)
                                    (let ((_e62186257_ (gx#stx-e _g61296255_)))
                                      (let ((_hd62196260_ (##car _e62186257_))
                                            (_tl62206262_ (##cdr _e62186257_)))
                                        (if (gx#stx-pair? _tl62206262_)
                                            (let ((_e62216265_
                                                   (gx#stx-e _tl62206262_)))
                                              (let ((_hd62226268_
                                                     (##car _e62216265_))
                                                    (_tl62236270_
                                                     (##cdr _e62216265_)))
                                                (if (gx#stx-pair? _hd62226268_)
                                                    (let ((_e62246273_
                                                           (gx#stx-e
                                                            _hd62226268_)))
                                                      (let ((_hd62256276_
                                                             (##car _e62246273_))
                                                            (_tl62266278_
                                                             (##cdr _e62246273_)))
                                                        (if (gx#identifier?
                                                             _hd62256276_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd62256276_)
                        (if (gx#stx-pair? _tl62266278_)
                            (let ((_e62276281_ (gx#stx-e _tl62266278_)))
                              (let ((_hd62286284_ (##car _e62276281_))
                                    (_tl62296286_ (##cdr _e62276281_)))
                                (if (gx#stx-pair? _hd62286284_)
                                    (let ((_e62306289_
                                           (gx#stx-e _hd62286284_)))
                                      (let ((_hd62316292_ (##car _e62306289_))
                                            (_tl62326294_ (##cdr _e62306289_)))
                                        (if (gx#identifier? _hd62316292_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd62316292_)
                                                (if (gx#stx-pair? _tl62326294_)
                                                    (let ((_e62336297_
                                                           (gx#stx-e
                                                            _tl62326294_)))
                                                      (let ((_hd62346300_
                                                             (##car _e62336297_))
                                                            (_tl62356302_
                                                             (##cdr _e62336297_)))
                                                        (if (gx#stx-null?
                                                             _tl62356302_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl62296286_)
                        (let ((_e62366305_ (gx#stx-e _tl62296286_)))
                          (let ((_hd62376308_ (##car _e62366305_))
                                (_tl62386310_ (##cdr _e62366305_)))
                            (if (gx#stx-pair? _hd62376308_)
                                (let ((_e62396313_ (gx#stx-e _hd62376308_)))
                                  (let ((_hd62406316_ (##car _e62396313_))
                                        (_tl62416318_ (##cdr _e62396313_)))
                                    (if (gx#identifier? _hd62406316_)
                                        (if (gx#stx-eq? '%#ref _hd62406316_)
                                            (if (gx#stx-pair? _tl62416318_)
                                                (let ((_e62426321_
                                                       (gx#stx-e
                                                        _tl62416318_)))
                                                  (let ((_hd62436324_
                                                         (##car _e62426321_))
                                                        (_tl62446326_
                                                         (##cdr _e62426321_)))
                                                    (if (gx#stx-null?
                                                         _tl62446326_)
                                                        (if (gx#stx-pair?
                                                             _tl62386310_)
                                                            (let ((_e62456329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl62386310_)))
                      (let ((_hd62466332_ (##car _e62456329_))
                            (_tl62476334_ (##cdr _e62456329_)))
                        (if (gx#stx-null? _tl62476334_)
                            (if (gx#stx-null? _tl62236270_)
                                ((lambda (_L6337_ _L6338_ _L6339_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L6337_ '()))))
                                 _hd62436324_
                                 _hd62346300_
                                 _hd62196260_)
                                (_g61286252_ _g61296255_))
                            (_g61286252_ _g61296255_))))
                    (_g61286252_ _g61296255_))
                (_g61286252_ _g61296255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g61286252_ _g61296255_))
                                            (_g61286252_ _g61296255_))
                                        (_g61286252_ _g61296255_))))
                                (_g61286252_ _g61296255_))))
                        (_g61286252_ _g61296255_))
                    (_g61286252_ _g61296255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61286252_ _g61296255_))
                                                (_g61286252_ _g61296255_))
                                            (_g61286252_ _g61296255_))))
                                    (_g61286252_ _g61296255_))))
                            (_g61286252_ _g61296255_))
                        (_g61286252_ _g61296255_))
                    (_g61286252_ _g61296255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61286252_
                                                     _g61296255_))))
                                            (_g61286252_ _g61296255_))))
                                    (_g61286252_ _g61296255_)))))
                         (let ((_g61266506_
                                (lambda (_g61296373_)
                                  (if (gx#stx-pair? _g61296373_)
                                      (let ((_e61796375_
                                             (gx#stx-e _g61296373_)))
                                        (let ((_hd61806378_
                                               (##car _e61796375_))
                                              (_tl61816380_
                                               (##cdr _e61796375_)))
                                          (if (gx#stx-pair/null? _hd61806378_)
                                              (if (fx>= (gx#stx-length
                                                         _hd61806378_)
                                                        '0)
                                                  (let ((_g8486_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd61806378_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g8487_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g8486_)))
                (if (not (fx= _g8487_ 2))
                    (error "Context expects 2 values" _g8487_)))
              (let ((_target61826383_ (values-ref _g8486_ 0))
                    (_tl61846385_ (values-ref _g8486_ 1)))
                (letrec ((_loop61856388_
                          (lambda (_hd61836391_ _arg61896393_)
                            (if (gx#stx-pair? _hd61836391_)
                                (let ((_e61866396_ (gx#stx-e _hd61836391_)))
                                  (let ((_lp-hd61876399_ (##car _e61866396_))
                                        (_lp-tl61886401_ (##cdr _e61866396_)))
                                    (_loop61856388_
                                     _lp-tl61886401_
                                     (cons _lp-hd61876399_ _arg61896393_))))
                                (let ((_arg61906404_ (reverse _arg61896393_)))
                                  (if (gx#stx-pair? _tl61816380_)
                                      (let ((_e61916407_
                                             (gx#stx-e _tl61816380_)))
                                        (let ((_hd61926410_
                                               (##car _e61916407_))
                                              (_tl61936412_
                                               (##cdr _e61916407_)))
                                          (if (gx#stx-pair? _hd61926410_)
                                              (let ((_e61946415_
                                                     (gx#stx-e _hd61926410_)))
                                                (let ((_hd61956418_
                                                       (##car _e61946415_))
                                                      (_tl61966420_
                                                       (##cdr _e61946415_)))
                                                  (if (gx#identifier?
                                                       _hd61956418_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd61956418_)
                                                          (if (gx#stx-pair?
                                                               _tl61966420_)
                                                              (let ((_e61976423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl61966420_)))
                        (let ((_hd61986426_ (##car _e61976423_))
                              (_tl61996428_ (##cdr _e61976423_)))
                          (if (gx#stx-pair? _hd61986426_)
                              (let ((_e62006431_ (gx#stx-e _hd61986426_)))
                                (let ((_hd62016434_ (##car _e62006431_))
                                      (_tl62026436_ (##cdr _e62006431_)))
                                  (if (gx#identifier? _hd62016434_)
                                      (if (gx#stx-eq? '%#ref _hd62016434_)
                                          (if (gx#stx-pair? _tl62026436_)
                                              (let ((_e62036439_
                                                     (gx#stx-e _tl62026436_)))
                                                (let ((_hd62046442_
                                                       (##car _e62036439_))
                                                      (_tl62056444_
                                                       (##cdr _e62036439_)))
                                                  (if (gx#stx-null?
                                                       _tl62056444_)
                                                      (if (gx#stx-pair?
                                                           _tl61996428_)
                                                          (let ((_e62066447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl61996428_)))
                    (let ((_hd62076450_ (##car _e62066447_))
                          (_tl62086452_ (##cdr _e62066447_)))
                      (if (gx#stx-pair? _hd62076450_)
                          (let ((_e62096455_ (gx#stx-e _hd62076450_)))
                            (let ((_hd62106458_ (##car _e62096455_))
                                  (_tl62116460_ (##cdr _e62096455_)))
                              (if (gx#identifier? _hd62106458_)
                                  (if (gx#stx-eq? '%#ref _hd62106458_)
                                      (if (gx#stx-pair? _tl62116460_)
                                          (let ((_e62126463_
                                                 (gx#stx-e _tl62116460_)))
                                            (let ((_hd62136466_
                                                   (##car _e62126463_))
                                                  (_tl62146468_
                                                   (##cdr _e62126463_)))
                                              (if (gx#stx-null? _tl62146468_)
                                                  (if (gx#stx-null?
                                                       _tl61936412_)
                                                      ((lambda (_L6471_
                                                                _L6472_
                                                                _L6473_
                                                                _L6474_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L6471_ '()))))
               _hd62136466_
               _hd62046442_
               _tl61846385_
               _arg61906404_)
              (_g61276370_ _g61296373_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g61276370_ _g61296373_))))
                                          (_g61276370_ _g61296373_))
                                      (_g61276370_ _g61296373_))
                                  (_g61276370_ _g61296373_))))
                          (_g61276370_ _g61296373_))))
                  (_g61276370_ _g61296373_))
              (_g61276370_ _g61296373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g61276370_ _g61296373_))
                                          (_g61276370_ _g61296373_))
                                      (_g61276370_ _g61296373_))))
                              (_g61276370_ _g61296373_))))
                      (_g61276370_ _g61296373_))
                  (_g61276370_ _g61296373_))
              (_g61276370_ _g61296373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g61276370_ _g61296373_))))
                                      (_g61276370_ _g61296373_)))))))
                  (_loop61856388_ _target61826383_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g61276370_ _g61296373_))
                                              (_g61276370_ _g61296373_))))
                                      (_g61276370_ _g61296373_)))))
                           (let ((_g61256654_
                                  (lambda (_g61296509_)
                                    (if (gx#stx-pair? _g61296509_)
                                        (let ((_e61336511_
                                               (gx#stx-e _g61296509_)))
                                          (let ((_hd61346514_
                                                 (##car _e61336511_))
                                                (_tl61356516_
                                                 (##cdr _e61336511_)))
                                            (if (gx#stx-pair/null?
                                                 _hd61346514_)
                                                (if (fx>= (gx#stx-length
                                                           _hd61346514_)
                                                          '0)
                                                    (let ((_g8488_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd61346514_
                            '0)))
              (begin
                (let ((_g8489_ (values-count _g8488_)))
                  (if (not (fx= _g8489_ 2))
                      (error "Context expects 2 values" _g8489_)))
                (let ((_target61366519_ (values-ref _g8488_ 0))
                      (_tl61386521_ (values-ref _g8488_ 1)))
                  (if (gx#stx-null? _tl61386521_)
                      (letrec ((_loop61396524_
                                (lambda (_hd61376527_ _arg61436529_)
                                  (if (gx#stx-pair? _hd61376527_)
                                      (let ((_e61406532_
                                             (gx#stx-e _hd61376527_)))
                                        (let ((_lp-hd61416535_
                                               (##car _e61406532_))
                                              (_lp-tl61426537_
                                               (##cdr _e61406532_)))
                                          (_loop61396524_
                                           _lp-tl61426537_
                                           (cons _lp-hd61416535_
                                                 _arg61436529_))))
                                      (let ((_arg61446540_
                                             (reverse _arg61436529_)))
                                        (if (gx#stx-pair? _tl61356516_)
                                            (let ((_e61456543_
                                                   (gx#stx-e _tl61356516_)))
                                              (let ((_hd61466546_
                                                     (##car _e61456543_))
                                                    (_tl61476548_
                                                     (##cdr _e61456543_)))
                                                (if (gx#stx-pair? _hd61466546_)
                                                    (let ((_e61486551_
                                                           (gx#stx-e
                                                            _hd61466546_)))
                                                      (let ((_hd61496554_
                                                             (##car _e61486551_))
                                                            (_tl61506556_
                                                             (##cdr _e61486551_)))
                                                        (if (gx#identifier?
                                                             _hd61496554_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd61496554_)
                        (if (gx#stx-pair? _tl61506556_)
                            (let ((_e61516559_ (gx#stx-e _tl61506556_)))
                              (let ((_hd61526562_ (##car _e61516559_))
                                    (_tl61536564_ (##cdr _e61516559_)))
                                (if (gx#stx-pair? _hd61526562_)
                                    (let ((_e61546567_
                                           (gx#stx-e _hd61526562_)))
                                      (let ((_hd61556570_ (##car _e61546567_))
                                            (_tl61566572_ (##cdr _e61546567_)))
                                        (if (gx#identifier? _hd61556570_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd61556570_)
                                                (if (gx#stx-pair? _tl61566572_)
                                                    (let ((_e61576575_
                                                           (gx#stx-e
                                                            _tl61566572_)))
                                                      (let ((_hd61586578_
                                                             (##car _e61576575_))
                                                            (_tl61596580_
                                                             (##cdr _e61576575_)))
                                                        (if (gx#stx-null?
                                                             _tl61596580_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl61536564_)
                        (if (fx>= (gx#stx-length _tl61536564_) '0)
                            (let ((_g8490_ (gx#syntax-split-splice
                                            _tl61536564_
                                            '0)))
                              (begin
                                (let ((_g8491_ (values-count _g8490_)))
                                  (if (not (fx= _g8491_ 2))
                                      (error "Context expects 2 values"
                                             _g8491_)))
                                (let ((_target61606583_ (values-ref _g8490_ 0))
                                      (_tl61626585_ (values-ref _g8490_ 1)))
                                  (if (gx#stx-null? _tl61626585_)
                                      (letrec ((_loop61636588_
                                                (lambda (_hd61616591_
                                                         _xarg61676593_)
                                                  (if (gx#stx-pair?
                                                       _hd61616591_)
                                                      (let ((_e61646596_
                                                             (gx#stx-e
                                                              _hd61616591_)))
                                                        (let ((_lp-hd61656599_
                                                               (##car _e61646596_))
                                                              (_lp-tl61666601_
                                                               (##cdr _e61646596_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd61656599_)
                                                              (let ((_e61696604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd61656599_)))
                        (let ((_hd61706607_ (##car _e61696604_))
                              (_tl61716609_ (##cdr _e61696604_)))
                          (if (gx#identifier? _hd61706607_)
                              (if (gx#stx-eq? '%#ref _hd61706607_)
                                  (if (gx#stx-pair? _tl61716609_)
                                      (let ((_e61726612_
                                             (gx#stx-e _tl61716609_)))
                                        (let ((_hd61736615_
                                               (##car _e61726612_))
                                              (_tl61746617_
                                               (##cdr _e61726612_)))
                                          (if (gx#stx-null? _tl61746617_)
                                              (_loop61636588_
                                               _lp-tl61666601_
                                               (cons _hd61736615_
                                                     _xarg61676593_))
                                              (_g61266506_ _g61296509_))))
                                      (_g61266506_ _g61296509_))
                                  (_g61266506_ _g61296509_))
                              (_g61266506_ _g61296509_))))
                      (_g61266506_ _g61296509_))))
              (let ((_xarg61686620_ (reverse _xarg61676593_)))
                (if (gx#stx-null? _tl61476548_)
                    ((lambda (_L6623_ _L6624_ _L6625_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L6624_ '()))))
                     _xarg61686620_
                     _hd61586578_
                     _arg61446540_)
                    (_g61266506_ _g61296509_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop61636588_ _target61606583_ '()))
                                      (_g61266506_ _g61296509_)))))
                            (_g61266506_ _g61296509_))
                        (_g61266506_ _g61296509_))
                    (_g61266506_ _g61296509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61266506_ _g61296509_))
                                                (_g61266506_ _g61296509_))
                                            (_g61266506_ _g61296509_))))
                                    (_g61266506_ _g61296509_))))
                            (_g61266506_ _g61296509_))
                        (_g61266506_ _g61296509_))
                    (_g61266506_ _g61296509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61266506_
                                                     _g61296509_))))
                                            (_g61266506_ _g61296509_)))))))
                        (_loop61396524_ _target61366519_ '()))
                      (_g61266506_ _g61296509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61266506_ _g61296509_))
                                                (_g61266506_ _g61296509_))))
                                        (_g61266506_ _g61296509_)))))
                             (_g61256654_ _form6124_)))))))))
            (let ((_generate15978_
                   (lambda (_args6109_ _arglen6110_ _hd6111_ _body6112_)
                     (let ((_len6114_ (gx#stx-length _hd6111_)))
                       (let ((_condition6116_
                              (if (gx#stx-list? _hd6111_)
                                  (cons 'fx=
                                        (cons _arglen6110_
                                              (cons _len6114_ '())))
                                  (if (> _len6114_ '0)
                                      (cons 'fx>=
                                            (cons _arglen6110_
                                                  (cons _len6114_ '())))
                                      '#t))))
                         (let ((_dispatch6118_
                                (if (_dispatch-case?5976_ _hd6111_ _body6112_)
                                    (_dispatch-case-e5977_ _hd6111_ _body6112_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd6111_)
                                                (cons (gxc#compile-e
                                                       _body6112_)
                                                      '()))))))
                           (let ()
                             (cons _condition6116_
                                   (cons (cons 'apply
                                               (cons _dispatch6118_
                                                     (cons _args6109_ '())))
                                         '())))))))))
              (let ((_g59806008_
                     (lambda (_g59816005_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g59816005_))))
                (let ((_g59796106_
                       (lambda (_g59816011_)
                         (if (gx#stx-pair? _g59816011_)
                             (let ((_e59846013_ (gx#stx-e _g59816011_)))
                               (let ((_hd59856016_ (##car _e59846013_))
                                     (_tl59866018_ (##cdr _e59846013_)))
                                 (if (gx#stx-pair/null? _tl59866018_)
                                     (if (fx>= (gx#stx-length _tl59866018_) '0)
                                         (let ((_g8484_ (gx#syntax-split-splice
                                                         _tl59866018_
                                                         '0)))
                                           (begin
                                             (let ((_g8485_ (values-count
                                                             _g8484_)))
                                               (if (not (fx= _g8485_ 2))
                                                   (error "Context expects 2 values"
                                                          _g8485_)))
                                             (let ((_target59876021_
                                                    (values-ref _g8484_ 0))
                                                   (_tl59896023_
                                                    (values-ref _g8484_ 1)))
                                               (if (gx#stx-null? _tl59896023_)
                                                   (letrec ((_loop59906026_
                                                             (lambda (_hd59886029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body59946031_
                              _hd59956033_)
                       (if (gx#stx-pair? _hd59886029_)
                           (let ((_e59916036_ (gx#stx-e _hd59886029_)))
                             (let ((_lp-hd59926039_ (##car _e59916036_))
                                   (_lp-tl59936041_ (##cdr _e59916036_)))
                               (if (gx#stx-pair? _lp-hd59926039_)
                                   (let ((_e59986044_
                                          (gx#stx-e _lp-hd59926039_)))
                                     (let ((_hd59996047_ (##car _e59986044_))
                                           (_tl60006049_ (##cdr _e59986044_)))
                                       (if (gx#stx-pair? _tl60006049_)
                                           (let ((_e60016052_
                                                  (gx#stx-e _tl60006049_)))
                                             (let ((_hd60026055_
                                                    (##car _e60016052_))
                                                   (_tl60036057_
                                                    (##cdr _e60016052_)))
                                               (if (gx#stx-null? _tl60036057_)
                                                   (_loop59906026_
                                                    _lp-tl59936041_
                                                    (cons _hd60026055_
                                                          _body59946031_)
                                                    (cons _hd59996047_
                                                          _hd59956033_))
                                                   (_g59806008_ _g59816011_))))
                                           (_g59806008_ _g59816011_))))
                                   (_g59806008_ _g59816011_))))
                           (let ((_body59966060_ (reverse _body59946031_))
                                 (_hd59976062_ (reverse _hd59956033_)))
                             ((lambda (_L6065_ _L6066_)
                                (let ((_args6082_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen6083_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args6082_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen6083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args6082_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr cons
                                           (cons (cons 'else
                                                       (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"No clause matching arguments"
                                 (cons _args6082_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (map (lambda (_g60846087_
                                                         _g60856089_)
                                                  (_generate15978_
                                                   _args6082_
                                                   _arglen6083_
                                                   _g60846087_
                                                   _g60856089_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g60916094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g60926096_)
                   (cons _g60916094_ _g60926096_))
                 '()
                 _L6066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g60986101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g60996103_)
                   (cons _g60986101_ _g60996103_))
                 '()
                 _L6065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body59966060_
                              _hd59976062_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop59906026_
                                                      _target59876021_
                                                      '()
                                                      '()))
                                                   (_g59806008_
                                                    _g59816011_)))))
                                         (_g59806008_ _g59816011_))
                                     (_g59806008_ _g59816011_))))
                             (_g59806008_ _g59816011_)))))
                  (_g59796106_ _stx5973_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda5653
      (lambda (_stx5655_ _compiled-body?5656_)
        (let ((_generate-simple5658_
               (lambda (_hd5960_ _body5961_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd5960_
                  _body5961_
                  _compiled-body?5656_))))
          (let ((_generate-values-post5660_
                 (lambda (_post5732_ _body5733_)
                   ((letrec ((_lp5735_
                              (lambda (_rest5737_ _body5738_)
                                (let ((_rest57395747_ _rest5737_))
                                  (let ((_E57425751_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest57395747_))))
                                    (let ((_else57415755_
                                           (lambda () _body5738_)))
                                      (let ((_K57435761_
                                             (lambda (_rest5758_ _bind5759_)
                                               (_lp5735_
                                                _rest5758_
                                                (cons 'let
                                                      (cons _bind5759_
                                                            (cons _body5738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest57395747_)
                                            (let ((_hd57445764_
                                                   (##car _rest57395747_))
                                                  (_tl57455766_
                                                   (##cdr _rest57395747_)))
                                              (let ((_bind5769_ _hd57445764_))
                                                (let ((_rest5771_
                                                       _tl57455766_))
                                                  (_K57435761_
                                                   _rest5771_
                                                   _bind5769_))))
                                            (_else57415755_)))))))))
                      _lp5735_)
                    _post5732_
                    _body5733_))))
            (let ((_generate-values-check5661_
                   (lambda (_check5729_ _body5730_)
                     (cons 'begin
                           (foldr cons
                                  (cons _body5730_ '())
                                  (reverse _check5729_))))))
              (let ((_generate-values5659_
                     (lambda (_hd5773_ _body5774_)
                       ((letrec ((_lp5776_
                                  (lambda (_rest5778_
                                           _bind5779_
                                           _check5780_
                                           _post5781_)
                                    (let ((_g57845795_
                                           (lambda (_g57855792_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g57855792_))))
                                      (let ((_g57835809_
                                             (lambda (_g57855798_)
                                               ((lambda ()
                                                  (let ((_body5802_
                                                         (if _compiled-body?5656_
                                                             _body5774_
                                                             (gxc#compile-e
                                                              _body5774_))))
                                                    (let ((_body5804_
                                                           (_generate-values-post5660_
                                                            _post5781_
                                                            _body5802_)))
                                                      (let ((_body5806_
                                                             (_generate-values-check5661_
                                                              _check5780_
                                                              _body5804_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind5779_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body5806_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g57825957_
                                               (lambda (_g57855812_)
                                                 (if (gx#stx-pair? _g57855812_)
                                                     (let ((_e57885814_
                                                            (gx#stx-e
                                                             _g57855812_)))
                                                       (let ((_hd57895817_
                                                              (##car _e57885814_))
                                                             (_tl57905819_
                                                              (##cdr _e57885814_)))
                                                         ((lambda (_L5822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5823_)
                    (let ((_g58385863_
                           (lambda (_g58395860_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g58395860_))))
                      (let ((_g58375907_
                             (lambda (_g58395866_)
                               (if (gx#stx-pair? _g58395866_)
                                   (let ((_e58535868_ (gx#stx-e _g58395866_)))
                                     (let ((_hd58545871_ (##car _e58535868_))
                                           (_tl58555873_ (##cdr _e58535868_)))
                                       (if (gx#stx-pair? _tl58555873_)
                                           (let ((_e58565876_
                                                  (gx#stx-e _tl58555873_)))
                                             (let ((_hd58575879_
                                                    (##car _e58565876_))
                                                   (_tl58585881_
                                                    (##cdr _e58565876_)))
                                               (if (gx#stx-null? _tl58585881_)
                                                   ((lambda (_L5884_ _L5885_)
                                                      (let ((_vals5898_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr5900_
                                                               (gxc#compile-e
                                                                _L5884_)))
                                                          (let ((_check-values5902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals5898_
                          _L5885_)))
                    (let ((_refs5904_
                           (gxc#generate-runtime-let-values-bind
                            _vals5898_
                            _L5885_)))
                      (let ()
                        (_lp5776_
                         _L5822_
                         (cons (cons _vals5898_ (cons _expr5900_ '()))
                               _bind5779_)
                         (cons _check-values5902_ _check5780_)
                         (cons _refs5904_ _post5781_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd58575879_
                                                    _hd58545871_)
                                                   (_g58385863_ _g58395866_))))
                                           (_g58385863_ _g58395866_))))
                                   (_g58385863_ _g58395866_)))))
                        (let ((_g58365954_
                               (lambda (_g58395910_)
                                 (if (gx#stx-pair? _g58395910_)
                                     (let ((_e58425912_
                                            (gx#stx-e _g58395910_)))
                                       (let ((_hd58435915_ (##car _e58425912_))
                                             (_tl58445917_
                                              (##cdr _e58425912_)))
                                         (if (gx#stx-pair? _hd58435915_)
                                             (let ((_e58455920_
                                                    (gx#stx-e _hd58435915_)))
                                               (let ((_hd58465923_
                                                      (##car _e58455920_))
                                                     (_tl58475925_
                                                      (##cdr _e58455920_)))
                                                 (if (gx#stx-null?
                                                      _tl58475925_)
                                                     (if (gx#stx-pair?
                                                          _tl58445917_)
                                                         (let ((_e58485928_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl58445917_)))
                   (let ((_hd58495931_ (##car _e58485928_))
                         (_tl58505933_ (##cdr _e58485928_)))
                     (if (gx#stx-null? _tl58505933_)
                         ((lambda (_L5936_ _L5937_)
                            (let ((_eid5951_
                                   (gxc#generate-runtime-binding-id* _L5937_))
                                  (_expr5952_ (gxc#compile-e _L5936_)))
                              (_lp5776_
                               _L5822_
                               (cons (cons _eid5951_ (cons _expr5952_ '()))
                                     _bind5779_)
                               _check5780_
                               _post5781_)))
                          _hd58495931_
                          _hd58465923_)
                         (_g58375907_ _g58395910_))))
                 (_g58375907_ _g58395910_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g58375907_
                                                      _g58395910_))))
                                             (_g58375907_ _g58395910_))))
                                     (_g58375907_ _g58395910_)))))
                          (_g58365954_ _L5823_)))))
                  _tl57905819_
                  _hd57895817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57835809_
                                                      _g57855812_)))))
                                          (_g57825957_ _rest5778_)))))))
                          _lp5776_)
                        _hd5773_
                        '()
                        '()
                        '()))))
                (let ((_g56635680_
                       (lambda (_g56645677_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g56645677_))))
                  (let ((_g56625726_
                         (lambda (_g56645683_)
                           (if (gx#stx-pair? _g56645683_)
                               (let ((_e56675685_ (gx#stx-e _g56645683_)))
                                 (let ((_hd56685688_ (##car _e56675685_))
                                       (_tl56695690_ (##cdr _e56675685_)))
                                   (if (gx#stx-pair? _tl56695690_)
                                       (let ((_e56705693_
                                              (gx#stx-e _tl56695690_)))
                                         (let ((_hd56715696_
                                                (##car _e56705693_))
                                               (_tl56725698_
                                                (##cdr _e56705693_)))
                                           (if (gx#stx-pair? _tl56725698_)
                                               (let ((_e56735701_
                                                      (gx#stx-e _tl56725698_)))
                                                 (let ((_hd56745704_
                                                        (##car _e56735701_))
                                                       (_tl56755706_
                                                        (##cdr _e56735701_)))
                                                   (if (gx#stx-null?
                                                        _tl56755706_)
                                                       ((lambda (_L5709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5710_)
                  (if (gxc#generate-runtime-simple-let? _L5710_)
                      (_generate-simple5658_ _L5710_ _L5709_)
                      (_generate-values5659_ _L5710_ _L5709_)))
                _hd56745704_
                _hd56715696_)
               (_g56635680_ _g56645683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g56635680_ _g56645683_))))
                                       (_g56635680_ _g56645683_))))
                               (_g56635680_ _g56645683_)))))
                    (_g56625726_ _stx5655_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx5966_)
          (let ((_compiled-body?5968_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda5653
             _stx5966_
             _compiled-body?5968_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g8501_
          (let ((_g8500_ (length _g8501_)))
            (cond ((fx= _g8500_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g8501_))
                  ((fx= _g8500_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda5653
                          _g8501_))
                  (else (error "No clause matching arguments" _g8501_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals5554_ _hd5555_)
      ((letrec ((_lp5557_
                 (lambda (_rest5559_ _k5560_ _r5561_)
                   (let ((_g55665582_
                          (lambda (_g55675579_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g55675579_))))
                     (let ((_g55655589_
                            (lambda (_g55675585_)
                              ((lambda () (reverse _r5561_))))))
                       (let ((_g55645605_
                              (lambda (_g55675592_)
                                ((lambda (_L5594_)
                                   (if (gx#identifier? _L5594_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L5594_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals5554_ (cons _k5560_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r5561_)
                                       (_g55655589_ _g55675592_)))
                                 _g55675592_))))
                         (let ((_g55635629_
                                (lambda (_g55675608_)
                                  (if (gx#stx-pair? _g55675608_)
                                      (let ((_e55745610_
                                             (gx#stx-e _g55675608_)))
                                        (let ((_hd55755613_
                                               (##car _e55745610_))
                                              (_tl55765615_
                                               (##cdr _e55745610_)))
                                          ((lambda (_L5618_ _L5619_)
                                             (_lp5557_
                                              _L5618_
                                              (fx1+ _k5560_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L5619_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals5554_ (cons _k5560_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r5561_)))
                                           _tl55765615_
                                           _hd55755613_)))
                                      (_g55645605_ _g55675608_)))))
                           (let ((_g55625651_
                                  (lambda (_g55675632_)
                                    (if (gx#stx-pair? _g55675632_)
                                        (let ((_e55695634_
                                               (gx#stx-e _g55675632_)))
                                          (let ((_hd55705637_
                                                 (##car _e55695634_))
                                                (_tl55715639_
                                                 (##cdr _e55695634_)))
                                            (if (gx#stx-datum? _hd55705637_)
                                                (if (equal? (gx#stx-e
                                                             _hd55705637_)
                                                            '#f)
                                                    ((lambda (_L5642_)
                                                       (_lp5557_
                                                        _L5642_
                                                        (fx1+ _k5560_)
                                                        _r5561_))
                                                     _tl55715639_)
                                                    (_g55635629_ _g55675632_))
                                                (_g55635629_ _g55675632_))))
                                        (_g55635629_ _g55675632_)))))
                             (_g55625651_ _rest5559_)))))))))
         _lp5557_)
       _hd5555_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda5232
      (lambda (_stx5234_ _compiled-body?5235_)
        (let ((_generate-simple5237_
               (lambda (_hd5541_ _body5542_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd5541_
                  _body5542_
                  _compiled-body?5235_))))
          (let ((_generate-values-check5239_
                 (lambda (_check5315_ _body5316_)
                   (cons 'begin
                         (foldr cons
                                (cons _body5316_ '())
                                (reverse _check5315_))))))
            (let ((_generate-values-post5240_
                   (lambda (_post5308_ _body5309_)
                     (cons 'begin
                           (foldr cons
                                  (cons _body5309_ '())
                                  (map (lambda (_g53105312_)
                                         (cons 'set! _g53105312_))
                                       (reverse _post5308_)))))))
              (let ((_generate-values5238_
                     (lambda (_hd5318_ _body5319_)
                       ((letrec ((_lp5321_
                                  (lambda (_rest5323_
                                           _bind5324_
                                           _check5325_
                                           _post5326_)
                                    (let ((_g53295340_
                                           (lambda (_g53305337_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g53305337_))))
                                      (let ((_g53285354_
                                             (lambda (_g53305343_)
                                               ((lambda ()
                                                  (let ((_body5347_
                                                         (if _compiled-body?5235_
                                                             _body5319_
                                                             (gxc#compile-e
                                                              _body5319_))))
                                                    (let ((_body5349_
                                                           (_generate-values-post5240_
                                                            _post5326_
                                                            _body5347_)))
                                                      (let ((_body5351_
                                                             (_generate-values-check5239_
                                                              _check5325_
                                                              _body5349_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind5324_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body5351_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g53275538_
                                               (lambda (_g53305357_)
                                                 (if (gx#stx-pair? _g53305357_)
                                                     (let ((_e53335359_
                                                            (gx#stx-e
                                                             _g53305357_)))
                                                       (let ((_hd53345362_
                                                              (##car _e53335359_))
                                                             (_tl53355364_
                                                              (##cdr _e53335359_)))
                                                         ((lambda (_L5367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5368_)
                    (let ((_g53835408_
                           (lambda (_g53845405_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g53845405_))))
                      (let ((_g53825488_
                             (lambda (_g53845411_)
                               (if (gx#stx-pair? _g53845411_)
                                   (let ((_e53985413_ (gx#stx-e _g53845411_)))
                                     (let ((_hd53995416_ (##car _e53985413_))
                                           (_tl54005418_ (##cdr _e53985413_)))
                                       (if (gx#stx-pair? _tl54005418_)
                                           (let ((_e54015421_
                                                  (gx#stx-e _tl54005418_)))
                                             (let ((_hd54025424_
                                                    (##car _e54015421_))
                                                   (_tl54035426_
                                                    (##cdr _e54015421_)))
                                               (if (gx#stx-null? _tl54035426_)
                                                   ((lambda (_L5429_ _L5430_)
                                                      (let ((_vals5443_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr5445_
                                                               (gxc#compile-e
                                                                _L5429_)))
                                                          (let ((_check-values5447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals5443_
                          _L5430_)))
                    (let ((_refs5449_
                           (gxc#generate-runtime-let-values-bind
                            _vals5443_
                            _L5430_)))
                      (let ()
                        (_lp5321_
                         _L5367_
                         (foldl cons
                                (cons (cons _vals5443_ (cons _expr5445_ '()))
                                      _bind5324_)
                                (map (lambda (_e54515453_)
                                       (let ((_g54555464_ _e54515453_))
                                         (let ((_E54575468_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g54555464_))))
                                           (let ((_K54585473_
                                                  (lambda (_eid5471_)
                                                    (cons _eid5471_
                                                          (cons '#!void
                                                                '())))))
                                             (if (##pair? _g54555464_)
                                                 (let ((_hd54595476_
                                                        (##car _g54555464_))
                                                       (_tl54605478_
                                                        (##cdr _g54555464_)))
                                                   (let ((_eid5481_
                                                          _hd54595476_))
                                                     (if (##pair? _tl54605478_)
                                                         (let ((_hd54615483_
                                                                (##car _tl54605478_))
                                                               (_tl54625485_
                                                                (##cdr _tl54605478_)))
                                                           (if (##null? _tl54625485_)
                                                               (_K54585473_
                                                                _eid5481_)
                                                               (_E54575468_)))
                                                         (_E54575468_))))
                                                 (_E54575468_))))))
                                     _refs5449_))
                         (cons _check-values5447_ _check5325_)
                         (foldl cons _refs5449_ _post5326_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd54025424_
                                                    _hd53995416_)
                                                   (_g53835408_ _g53845411_))))
                                           (_g53835408_ _g53845411_))))
                                   (_g53835408_ _g53845411_)))))
                        (let ((_g53815535_
                               (lambda (_g53845491_)
                                 (if (gx#stx-pair? _g53845491_)
                                     (let ((_e53875493_
                                            (gx#stx-e _g53845491_)))
                                       (let ((_hd53885496_ (##car _e53875493_))
                                             (_tl53895498_
                                              (##cdr _e53875493_)))
                                         (if (gx#stx-pair? _hd53885496_)
                                             (let ((_e53905501_
                                                    (gx#stx-e _hd53885496_)))
                                               (let ((_hd53915504_
                                                      (##car _e53905501_))
                                                     (_tl53925506_
                                                      (##cdr _e53905501_)))
                                                 (if (gx#stx-null?
                                                      _tl53925506_)
                                                     (if (gx#stx-pair?
                                                          _tl53895498_)
                                                         (let ((_e53935509_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl53895498_)))
                   (let ((_hd53945512_ (##car _e53935509_))
                         (_tl53955514_ (##cdr _e53935509_)))
                     (if (gx#stx-null? _tl53955514_)
                         ((lambda (_L5517_ _L5518_)
                            (let ((_eid5532_
                                   (gxc#generate-runtime-binding-id* _L5518_))
                                  (_expr5533_ (gxc#compile-e _L5517_)))
                              (_lp5321_
                               _L5367_
                               (cons (cons _eid5532_ (cons _expr5533_ '()))
                                     _bind5324_)
                               _check5325_
                               _post5326_)))
                          _hd53945512_
                          _hd53915504_)
                         (_g53825488_ _g53845491_))))
                 (_g53825488_ _g53845491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g53825488_
                                                      _g53845491_))))
                                             (_g53825488_ _g53845491_))))
                                     (_g53825488_ _g53845491_)))))
                          (_g53815535_ _L5368_)))))
                  _tl53355364_
                  _hd53345362_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g53285354_
                                                      _g53305357_)))))
                                          (_g53275538_ _rest5323_)))))))
                          _lp5321_)
                        _hd5318_
                        '()
                        '()
                        '()))))
                (let ((_g52425259_
                       (lambda (_g52435256_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g52435256_))))
                  (let ((_g52415305_
                         (lambda (_g52435262_)
                           (if (gx#stx-pair? _g52435262_)
                               (let ((_e52465264_ (gx#stx-e _g52435262_)))
                                 (let ((_hd52475267_ (##car _e52465264_))
                                       (_tl52485269_ (##cdr _e52465264_)))
                                   (if (gx#stx-pair? _tl52485269_)
                                       (let ((_e52495272_
                                              (gx#stx-e _tl52485269_)))
                                         (let ((_hd52505275_
                                                (##car _e52495272_))
                                               (_tl52515277_
                                                (##cdr _e52495272_)))
                                           (if (gx#stx-pair? _tl52515277_)
                                               (let ((_e52525280_
                                                      (gx#stx-e _tl52515277_)))
                                                 (let ((_hd52535283_
                                                        (##car _e52525280_))
                                                       (_tl52545285_
                                                        (##cdr _e52525280_)))
                                                   (if (gx#stx-null?
                                                        _tl52545285_)
                                                       ((lambda (_L5288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5289_)
                  (if (gxc#generate-runtime-simple-let? _L5289_)
                      (_generate-simple5237_ _L5289_ _L5288_)
                      (_generate-values5238_ _L5289_ _L5288_)))
                _hd52535283_
                _hd52505275_)
               (_g52425259_ _g52435262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g52425259_ _g52435262_))))
                                       (_g52425259_ _g52435262_))))
                               (_g52425259_ _g52435262_)))))
                    (_g52415305_ _stx5234_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx5547_)
          (let ((_compiled-body?5549_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda5232
             _stx5547_
             _compiled-body?5549_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g8503_
          (let ((_g8502_ (length _g8503_)))
            (cond ((fx= _g8502_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g8503_))
                  ((fx= _g8502_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda5232
                          _g8503_))
                  (else (error "No clause matching arguments" _g8503_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx4353_)
      (let ((_collect-closures4356_
             (lambda (_forms5174_)
               (map (lambda (_e51755177_)
                      (let ((_g51795188_ _e51755177_))
                        (let ((_E51815192_
                               (lambda ()
                                 (error '"No clause matching" _g51795188_))))
                          (let ((_K51825197_
                                 (lambda (_expr5195_)
                                   (gxc#collect-expression-refs _expr5195_))))
                            (if (##pair? _g51795188_)
                                (let ((_hd51835200_ (##car _g51795188_))
                                      (_tl51845202_ (##cdr _g51795188_)))
                                  (if (##pair? _tl51845202_)
                                      (let ((_hd51855205_ (##car _tl51845202_))
                                            (_tl51865207_
                                             (##cdr _tl51845202_)))
                                        (let ((_expr5210_ _hd51855205_))
                                          (if (##null? _tl51865207_)
                                              (_K51825197_ _expr5210_)
                                              (_E51815192_))))
                                      (_E51815192_)))
                                (_E51815192_))))))
                    _forms5174_))))
        (let ((_collect-bindings4357_
               (lambda (_forms5098_)
                 (map (lambda (_e50995101_)
                        (let ((_g51035112_ _e50995101_))
                          (let ((_E51055116_
                                 (lambda ()
                                   (error '"No clause matching" _g51035112_))))
                            (let ((_K51065159_
                                   (lambda (_bind5119_)
                                     ((letrec ((_lp5121_
                                                (lambda (_rest5123_ _r5124_)
                                                  (let ((_rest51255133_
                                                         _rest5123_))
                                                    (let ((_E51285137_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest51255133_))))
              (let ((_else51275141_
                     (lambda ()
                       (if (gx#identifier? _rest5123_)
                           (cons _rest5123_ _r5124_)
                           _r5124_))))
                (let ((_K51295147_
                       (lambda (_rest5144_ _id5145_)
                         (if (gx#identifier? _id5145_)
                             (_lp5121_
                              _rest5144_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id5145_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r5124_))
                             (_lp5121_ _rest5144_ _r5124_)))))
                  (if (##pair? _rest51255133_)
                      (let ((_hd51305150_ (##car _rest51255133_))
                            (_tl51315152_ (##cdr _rest51255133_)))
                        (let ((_id5155_ _hd51305150_))
                          (let ((_rest5157_ _tl51315152_))
                            (_K51295147_ _rest5157_ _id5155_))))
                      (_else51275141_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp5121_)
                                      _bind5119_
                                      '()))))
                              (if (##pair? _g51035112_)
                                  (let ((_hd51075162_ (##car _g51035112_))
                                        (_tl51085164_ (##cdr _g51035112_)))
                                    (let ((_bind5167_ _hd51075162_))
                                      (if (##pair? _tl51085164_)
                                          (let ((_hd51095169_
                                                 (##car _tl51085164_))
                                                (_tl51105171_
                                                 (##cdr _tl51085164_)))
                                            (if (##null? _tl51105171_)
                                                (_K51065159_ _bind5167_)
                                                (_E51055116_)))
                                          (_E51055116_))))
                                  (_E51055116_))))))
                      _forms5098_))))
          (let ((_closure-reference?4361_
                 (lambda (_closure4650_ _bindings4651_)
                   (ormap (lambda (_g46524654_)
                            (hash-get _closure4650_ _g46524654_))
                          _bindings4651_))))
            (let ((_is-effect-expr?4363_
                   (lambda (_expr4561_)
                     (let ((_g45634573_
                            (lambda (_g45644570_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g45644570_))))
                       (let ((_g45624596_
                              (lambda (_g45644576_)
                                (if (gx#stx-pair? _g45644576_)
                                    (let ((_e45664578_ (gx#stx-e _g45644576_)))
                                      (let ((_hd45674581_ (##car _e45664578_))
                                            (_tl45684583_ (##cdr _e45664578_)))
                                        ((lambda (_L4586_)
                                           (not (memq (gx#stx-e _L4586_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd45674581_)))
                                    (_g45634573_ _g45644576_)))))
                         (_g45624596_ _expr4561_))))))
              (let ((_is-lambda-expr?4364_
                     (lambda (_expr4523_)
                       (let ((_g45254535_
                              (lambda (_g45264532_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g45264532_))))
                         (let ((_g45244558_
                                (lambda (_g45264538_)
                                  (if (gx#stx-pair? _g45264538_)
                                      (let ((_e45284540_
                                             (gx#stx-e _g45264538_)))
                                        (let ((_hd45294543_
                                               (##car _e45284540_))
                                              (_tl45304545_
                                               (##cdr _e45284540_)))
                                          ((lambda (_L4548_)
                                             (memq (gx#stx-e _L4548_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd45294543_)))
                                      (_g45254535_ _g45264538_)))))
                           (_g45244558_ _expr4523_))))))
                (let ((_lift-rec4360_
                       (lambda (_forms4657_)
                         ((letrec ((_lp4659_
                                    (lambda (_rest4661_
                                             _pre4662_
                                             _bind4663_
                                             _init4664_)
                                      (let ((_rest46654673_ _rest4661_))
                                        (let ((_E46684677_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest46654673_))))
                                          (let ((_else46674681_
                                                 (lambda ()
                                                   (values (reverse _pre4662_)
                                                           (reverse _bind4663_)
                                                           (reverse _init4664_)))))
                                            (let ((_K46694872_
                                                   (lambda (_rest4684_
                                                            _bind-hd4685_)
                                                     (let ((_g46894724_
                                                            (lambda (_g46904721_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g46904721_))))
                                                       (let ((_g46884781_
                                                              (lambda (_g46904727_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g46904727_)
                            (let ((_e47144729_ (gx#stx-e _g46904727_)))
                              (let ((_hd47154732_ (##car _e47144729_))
                                    (_tl47164734_ (##cdr _e47144729_)))
                                (if (gx#stx-pair? _tl47164734_)
                                    (let ((_e47174737_
                                           (gx#stx-e _tl47164734_)))
                                      (let ((_hd47184740_ (##car _e47174737_))
                                            (_tl47194742_ (##cdr _e47174737_)))
                                        (if (gx#stx-null? _tl47194742_)
                                            ((lambda (_L4745_ _L4746_)
                                               (let ((_vals4765_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr4767_
                                                        (gxc#compile-e
                                                         _L4745_)))
                                                   (let ((_check-values4769_
                                                          (gxc#generate-runtime-check-values
                                                           _vals4765_
                                                           _L4746_)))
                                                     (let ((_refs4771_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals4765_
                                                             _L4746_)))
                                                       (let ()
                                                         (_lp4659_
                                                          _rest4684_
                                                          (foldl (lambda (_ref4774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r4775_)
                           (cons (cons (car _ref4774_) (cons '#!void '()))
                                 _r4775_))
                         _pre4662_
                         _refs4771_)
                  _bind4663_
                  (cons (cons 'let
                              (cons (cons (cons _vals4765_
                                                (cons _expr4767_ '()))
                                          '())
                                    (cons _check-values4769_
                                          (cons (map (lambda (_g47764778_)
                                                       (cons 'set!
                                                             _g47764778_))
                                                     _refs4771_)
                                                '()))))
                        _init4664_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd47184740_
                                             _hd47154732_)
                                            (_g46894724_ _g46904727_))))
                                    (_g46894724_ _g46904727_))))
                            (_g46894724_ _g46904727_)))))
                 (let ((_g46874827_
                        (lambda (_g46904784_)
                          (if (gx#stx-pair? _g46904784_)
                              (let ((_e47034786_ (gx#stx-e _g46904784_)))
                                (let ((_hd47044789_ (##car _e47034786_))
                                      (_tl47054791_ (##cdr _e47034786_)))
                                  (if (gx#stx-pair? _hd47044789_)
                                      (let ((_e47064794_
                                             (gx#stx-e _hd47044789_)))
                                        (let ((_hd47074797_
                                               (##car _e47064794_))
                                              (_tl47084799_
                                               (##cdr _e47064794_)))
                                          (if (gx#stx-null? _tl47084799_)
                                              (if (gx#stx-pair? _tl47054791_)
                                                  (let ((_e47094802_
                                                         (gx#stx-e
                                                          _tl47054791_)))
                                                    (let ((_hd47104805_
                                                           (##car _e47094802_))
                                                          (_tl47114807_
                                                           (##cdr _e47094802_)))
                                                      (if (gx#stx-null?
                                                           _tl47114807_)
                                                          ((lambda (_L4810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4811_)
                     (let ((_eid4825_
                            (gxc#generate-runtime-binding-id _L4811_)))
                       (if (_is-lambda-expr?4364_ _L4810_)
                           (_lp4659_
                            _rest4684_
                            _pre4662_
                            (cons (cons _eid4825_
                                        (cons (gxc#compile-e _L4810_) '()))
                                  _bind4663_)
                            _init4664_)
                           (_lp4659_
                            _rest4684_
                            (cons (cons _eid4825_ (cons '#!void '()))
                                  _pre4662_)
                            _bind4663_
                            (cons (cons 'set!
                                        (cons _eid4825_
                                              (cons (gxc#compile-e _L4810_)
                                                    '())))
                                  _init4664_)))))
                   _hd47104805_
                   _hd47074797_)
                  (_g46884781_ _g46904784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g46884781_ _g46904784_))
                                              (_g46884781_ _g46904784_))))
                                      (_g46884781_ _g46904784_))))
                              (_g46884781_ _g46904784_)))))
                   (let ((_g46864869_
                          (lambda (_g46904830_)
                            (if (gx#stx-pair? _g46904830_)
                                (let ((_e46924832_ (gx#stx-e _g46904830_)))
                                  (let ((_hd46934835_ (##car _e46924832_))
                                        (_tl46944837_ (##cdr _e46924832_)))
                                    (if (gx#stx-pair? _hd46934835_)
                                        (let ((_e46954840_
                                               (gx#stx-e _hd46934835_)))
                                          (let ((_hd46964843_
                                                 (##car _e46954840_))
                                                (_tl46974845_
                                                 (##cdr _e46954840_)))
                                            (if (gx#stx-datum? _hd46964843_)
                                                (if (equal? (gx#stx-e
                                                             _hd46964843_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl46974845_)
                                                        (if (gx#stx-pair?
                                                             _tl46944837_)
                                                            (let ((_e46984848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl46944837_)))
                      (let ((_hd46994851_ (##car _e46984848_))
                            (_tl47004853_ (##cdr _e46984848_)))
                        (if (gx#stx-null? _tl47004853_)
                            ((lambda (_L4856_)
                               (_lp4659_
                                _rest4684_
                                _pre4662_
                                _bind4663_
                                (cons (gxc#compile-e _L4856_) _init4664_)))
                             _hd46994851_)
                            (_g46874827_ _g46904830_))))
                    (_g46874827_ _g46904830_))
                (_g46874827_ _g46904830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g46874827_ _g46904830_))
                                                (_g46874827_ _g46904830_))))
                                        (_g46874827_ _g46904830_))))
                                (_g46874827_ _g46904830_)))))
                     (_g46864869_ _bind-hd4685_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest46654673_)
                                                  (let ((_hd46704875_
                                                         (##car _rest46654673_))
                                                        (_tl46714877_
                                                         (##cdr _rest46654673_)))
                                                    (let ((_bind-hd4880_
                                                           _hd46704875_))
                                                      (let ((_rest4882_
                                                             _tl46714877_))
                                                        (_K46694872_
                                                         _rest4882_
                                                         _bind-hd4880_))))
                                                  (_else46674681_)))))))))
                            _lp4659_)
                          _forms4657_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?4362_
                         (lambda (_hd-bind4599_)
                           (let ((_g46014614_
                                  (lambda (_g46024611_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g46024611_))))
                             (let ((_g46004647_
                                    (lambda (_g46024617_)
                                      (if (gx#stx-pair? _g46024617_)
                                          (let ((_e46044619_
                                                 (gx#stx-e _g46024617_)))
                                            (let ((_hd46054622_
                                                   (##car _e46044619_))
                                                  (_tl46064624_
                                                   (##cdr _e46044619_)))
                                              (if (gx#stx-pair? _tl46064624_)
                                                  (let ((_e46074627_
                                                         (gx#stx-e
                                                          _tl46064624_)))
                                                    (let ((_hd46084630_
                                                           (##car _e46074627_))
                                                          (_tl46094632_
                                                           (##cdr _e46074627_)))
                                                      (if (gx#stx-null?
                                                           _tl46094632_)
                                                          ((lambda (_L4635_)
                                                             (_is-effect-expr?4363_
                                                              _L4635_))
                                                           _hd46084630_)
                                                          (_g46014614_
                                                           _g46024617_))))
                                                  (_g46014614_ _g46024617_))))
                                          (_g46014614_ _g46024617_)))))
                               (_g46004647_ _hd-bind4599_))))))
                    (let ((_lift-pre4358_
                           (lambda (_hd4991_ _bindings4992_ _closures4993_)
                             ((letrec ((_lp4995_
                                        (lambda (_rest-forms4997_
                                                 _rest-bindings4998_
                                                 _rest-closures4999_
                                                 _post-forms5000_
                                                 _post-bindings5001_
                                                 _post-closures5002_
                                                 _pre-forms5003_
                                                 _lifted?5004_)
                                          (let ((_rest-forms50055021_
                                                 _rest-forms4997_)
                                                (_rest-bindings50065023_
                                                 _rest-bindings4998_)
                                                (_rest-closures50075025_
                                                 _rest-closures4999_))
                                            (let ((_E50105029_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms50055021_
                                                            _rest-bindings50065023_
                                                            _rest-closures50075025_))))
                                              (let ((_else50095033_
                                                     (lambda ()
                                                       (if _lifted?5004_
                                                           (_lp4995_
                                                            (reverse _post-forms5000_)
                                                            (reverse _post-bindings5001_)
                                                            (reverse _post-closures5002_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms5003_
                                                            '#f)
                                                           (values (reverse _pre-forms5003_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms5000_)
                           (reverse _post-bindings5001_)
                           (reverse _post-closures5002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K50115086_
                                                       (lambda (_rest-forms5036_
                                                                _form5037_)
                                                         (let ((_K50125074_
                                                                (lambda (_rest-bindings5039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings5040_)
                          (let ((_K50135062_
                                 (lambda (_rest-closures5042_ _closure5043_)
                                   (if (let ((_$e5045_
                                              (_closure-reference?4361_
                                               _closure5043_
                                               _bindings5040_)))
                                         (if _$e5045_
                                             _$e5045_
                                             (let ((_$e5052_
                                                    (ormap (lambda (_g50475049_)
                                                             (_closure-reference?4361_
                                                              _closure5043_
                                                              _g50475049_))
                                                           _rest-bindings5039_)))
                                               (if _$e5052_
                                                   _$e5052_
                                                   (let ((_$e5059_
                                                          (ormap (lambda (_g50545056_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?4361_
                            _closure5043_
                            _g50545056_))
                         _post-bindings5001_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e5059_
                                                         _$e5059_
                                                         (if (_is-effect-bind?4362_
                                                              _form5037_)
                                                             (find _is-effect-bind?4362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms5000_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp4995_
                                        _rest-forms5036_
                                        _rest-bindings5039_
                                        _rest-closures5042_
                                        (cons _form5037_ _post-forms5000_)
                                        (cons _bindings5040_
                                              _post-bindings5001_)
                                        (cons _closure5043_
                                              _post-closures5002_)
                                        _pre-forms5003_
                                        _lifted?5004_)
                                       (_lp4995_
                                        _rest-forms5036_
                                        _rest-bindings5039_
                                        _rest-closures5042_
                                        _post-forms5000_
                                        _post-bindings5001_
                                        _post-closures5002_
                                        (cons _form5037_ _pre-forms5003_)
                                        '#t)))))
                            (if (##pair? _rest-closures50075025_)
                                (let ((_hd50145065_
                                       (##car _rest-closures50075025_))
                                      (_tl50155067_
                                       (##cdr _rest-closures50075025_)))
                                  (let ((_closure5070_ _hd50145065_))
                                    (let ((_rest-closures5072_ _tl50155067_))
                                      (_K50135062_
                                       _rest-closures5072_
                                       _closure5070_))))
                                (_else50095033_))))))
                   (if (##pair? _rest-bindings50065023_)
                       (let ((_hd50165077_ (##car _rest-bindings50065023_))
                             (_tl50175079_ (##cdr _rest-bindings50065023_)))
                         (let ((_bindings5082_ _hd50165077_))
                           (let ((_rest-bindings5084_ _tl50175079_))
                             (_K50125074_
                              _rest-bindings5084_
                              _bindings5082_))))
                       (_else50095033_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms50055021_)
                                                      (let ((_hd50185089_
                                                             (##car _rest-forms50055021_))
                                                            (_tl50195091_
                                                             (##cdr _rest-forms50055021_)))
                                                        (let ((_form5094_
                                                               _hd50185089_))
                                                          (let ((_rest-forms5096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl50195091_))
                    (_K50115086_ _rest-forms5096_ _form5094_))))
              (_else50095033_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp4995_)
                              _hd4991_
                              _bindings4992_
                              _closures4993_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post4359_
                             (lambda (_hd4884_ _bindings4885_ _closures4886_)
                               ((letrec ((_lp4888_
                                          (lambda (_rest-forms4890_
                                                   _rest-bindings4891_
                                                   _rest-closures4892_
                                                   _pre-forms4893_
                                                   _pre-bindings4894_
                                                   _pre-closures4895_
                                                   _post-forms4896_
                                                   _lifted?4897_)
                                            (let ((_rest-forms48984914_
                                                   _rest-forms4890_)
                                                  (_rest-bindings48994916_
                                                   _rest-bindings4891_)
                                                  (_rest-closures49004918_
                                                   _rest-closures4892_))
                                              (let ((_E49034922_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms48984914_
                                                              _rest-bindings48994916_
                                                              _rest-closures49004918_))))
                                                (let ((_else49024926_
                                                       (lambda ()
                                                         (if _lifted?4897_
                                                             (_lp4888_
                                                              (reverse _pre-forms4893_)
                                                              (reverse _pre-bindings4894_)
                                                              (reverse _pre-closures4895_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms4896_
                                                              '#f)
                                                             (values _post-forms4896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms4893_
                             _pre-bindings4894_
                             _pre-closures4895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K49044979_
                                                         (lambda (_rest-forms4929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form4930_)
                   (let ((_K49054967_
                          (lambda (_rest-bindings4932_ _bindings4933_)
                            (let ((_K49064955_
                                   (lambda (_rest-closures4935_ _closure4936_)
                                     (if (let ((_$e4938_
                                                (_closure-reference?4361_
                                                 _closure4936_
                                                 _bindings4933_)))
                                           (if _$e4938_
                                               _$e4938_
                                               (let ((_$e4945_
                                                      (ormap (lambda (_g49404942_)
                                                               (_closure-reference?4361_
                                                                _g49404942_
                                                                _bindings4933_))
                                                             _rest-closures4935_)))
                                                 (if _$e4945_
                                                     _$e4945_
                                                     (let ((_$e4952_
                                                            (ormap (lambda (_g49474949_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?4361_
                              _g49474949_
                              _bindings4933_))
                           _pre-closures4895_)))
               (if _$e4952_
                   _$e4952_
                   (if (_is-effect-bind?4362_ _form4930_)
                       (find _is-effect-bind?4362_ _pre-forms4893_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp4888_
                                          _rest-forms4929_
                                          _rest-bindings4932_
                                          _rest-closures4935_
                                          (cons _form4930_ _pre-forms4893_)
                                          (cons _bindings4933_
                                                _pre-bindings4894_)
                                          (cons _closure4936_
                                                _pre-closures4895_)
                                          _post-forms4896_
                                          _lifted?4897_)
                                         (_lp4888_
                                          _rest-forms4929_
                                          _rest-bindings4932_
                                          _rest-closures4935_
                                          _pre-forms4893_
                                          _pre-bindings4894_
                                          _pre-closures4895_
                                          (cons _form4930_ _post-forms4896_)
                                          '#t)))))
                              (if (##pair? _rest-closures49004918_)
                                  (let ((_hd49074958_
                                         (##car _rest-closures49004918_))
                                        (_tl49084960_
                                         (##cdr _rest-closures49004918_)))
                                    (let ((_closure4963_ _hd49074958_))
                                      (let ((_rest-closures4965_ _tl49084960_))
                                        (_K49064955_
                                         _rest-closures4965_
                                         _closure4963_))))
                                  (_else49024926_))))))
                     (if (##pair? _rest-bindings48994916_)
                         (let ((_hd49094970_ (##car _rest-bindings48994916_))
                               (_tl49104972_ (##cdr _rest-bindings48994916_)))
                           (let ((_bindings4975_ _hd49094970_))
                             (let ((_rest-bindings4977_ _tl49104972_))
                               (_K49054967_
                                _rest-bindings4977_
                                _bindings4975_))))
                         (_else49024926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms48984914_)
                                                        (let ((_hd49114982_
                                                               (##car _rest-forms48984914_))
                                                              (_tl49124984_
                                                               (##cdr _rest-forms48984914_)))
                                                          (let ((_form4987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd49114982_))
                    (let ((_rest-forms4989_ _tl49124984_))
                      (_K49044979_ _rest-forms4989_ _form4987_))))
                (_else49024926_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp4888_)
                                (reverse _hd4884_)
                                (reverse _bindings4885_)
                                (reverse _closures4886_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize4355_
                               (lambda (_forms5212_)
                                 (let ((_closures5214_
                                        (_collect-closures4356_ _forms5212_)))
                                   (let ((_bindings5216_
                                          (_collect-bindings4357_
                                           _forms5212_)))
                                     (let ((_g8506_ (_lift-pre4358_
                                                     _forms5212_
                                                     _bindings5216_
                                                     _closures5214_)))
                                       (begin
                                         (let ((_g8507_ (values-count
                                                         _g8506_)))
                                           (if (not (fx= _g8507_ 4))
                                               (error "Context expects 4 values"
                                                      _g8507_)))
                                         (let ((_pre-bind5218_
                                                (values-ref _g8506_ 0))
                                               (_forms5219_
                                                (values-ref _g8506_ 1))
                                               (_bindings5220_
                                                (values-ref _g8506_ 2))
                                               (_closures5221_
                                                (values-ref _g8506_ 3)))
                                           (let ((_g8508_ (_lift-post4359_
                                                           _forms5219_
                                                           _bindings5220_
                                                           _closures5221_)))
                                             (begin
                                               (let ((_g8509_ (values-count
                                                               _g8508_)))
                                                 (if (not (fx= _g8509_ 4))
                                                     (error "Context expects 4 values"
                                                            _g8509_)))
                                               (let ((_post-bind5223_
                                                      (values-ref _g8508_ 0))
                                                     (_forms5224_
                                                      (values-ref _g8508_ 1))
                                                     (_bindings5225_
                                                      (values-ref _g8508_ 2))
                                                     (_closures5226_
                                                      (values-ref _g8508_ 3)))
                                                 (let ((_g8510_ (_lift-rec4360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms5224_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g8511_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g8510_)))
               (if (not (fx= _g8511_ 3))
                   (error "Context expects 3 values" _g8511_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre5228_
                                                            (values-ref
                                                             _g8510_
                                                             0))
                                                           (_rec-bind5229_
                                                            (values-ref
                                                             _g8510_
                                                             1))
                                                           (_rec-init5230_
                                                            (values-ref
                                                             _g8510_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind5218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre5228_
                         _rec-bind5229_
                         _rec-init5230_
                         _post-bind5223_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*4365_
                                    (lambda (_hd4452_ _body4453_)
                                      (let ((_hd44544462_ _hd4452_))
                                        (let ((_E44574466_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd44544462_))))
                                          (let ((_else44564470_
                                                 (lambda () _body4453_)))
                                            (let ((_K44584511_
                                                   (lambda (_rest4473_
                                                            _bind4474_)
                                                     (let ((_bind44754484_
                                                            _bind4474_))
                                                       (let ((_E44774488_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind44754484_))))
                 (let ((_K44784494_
                        (lambda (_expr4491_ _hd4492_)
                          (if (gx#stx-ormap gx#identifier? _hd4492_)
                              (gxc#generate-runtime-let-values%__opt-lambda5653
                               (cons '%#let-values
                                     (cons (cons _bind4474_ '())
                                           (cons (_generate-let*4365_
                                                  _rest4473_
                                                  _body4453_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr4491_)
                                          (cons (_generate-let*4365_
                                                 _rest4473_
                                                 _body4453_)
                                                '())))))))
                   (if (##pair? _bind44754484_)
                       (let ((_hd44794497_ (##car _bind44754484_))
                             (_tl44804499_ (##cdr _bind44754484_)))
                         (let ((_hd4502_ _hd44794497_))
                           (if (##pair? _tl44804499_)
                               (let ((_hd44814504_ (##car _tl44804499_))
                                     (_tl44824506_ (##cdr _tl44804499_)))
                                 (let ((_expr4509_ _hd44814504_))
                                   (if (##null? _tl44824506_)
                                       (_K44784494_ _expr4509_ _hd4502_)
                                       (_E44774488_))))
                               (_E44774488_))))
                       (_E44774488_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd44544462_)
                                                  (let ((_hd44594514_
                                                         (##car _hd44544462_))
                                                        (_tl44604516_
                                                         (##cdr _hd44544462_)))
                                                    (let ((_bind4519_
                                                           _hd44594514_))
                                                      (let ((_rest4521_
                                                             _tl44604516_))
                                                        (_K44584511_
                                                         _rest4521_
                                                         _bind4519_))))
                                                  (_else44564470_)))))))))
                            (let ((_g43674384_
                                   (lambda (_g43684381_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g43684381_))))
                              (let ((_g43664449_
                                     (lambda (_g43684387_)
                                       (if (gx#stx-pair? _g43684387_)
                                           (let ((_e43714389_
                                                  (gx#stx-e _g43684387_)))
                                             (let ((_hd43724392_
                                                    (##car _e43714389_))
                                                   (_tl43734394_
                                                    (##cdr _e43714389_)))
                                               (if (gx#stx-pair? _tl43734394_)
                                                   (let ((_e43744397_
                                                          (gx#stx-e
                                                           _tl43734394_)))
                                                     (let ((_hd43754400_
                                                            (##car _e43744397_))
                                                           (_tl43764402_
                                                            (##cdr _e43744397_)))
                                                       (if (gx#stx-pair?
                                                            _tl43764402_)
                                                           (let ((_e43774405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl43764402_)))
                     (let ((_hd43784408_ (##car _e43774405_))
                           (_tl43794410_ (##cdr _e43774405_)))
                       (if (gx#stx-null? _tl43794410_)
                           ((lambda (_L4413_ _L4414_)
                              (let ((_g8504_ (_linearize4355_ _L4414_)))
                                (begin
                                  (let ((_g8505_ (values-count _g8504_)))
                                    (if (not (fx= _g8505_ 5))
                                        (error "Context expects 5 values"
                                               _g8505_)))
                                  (let ((_pre4430_ (values-ref _g8504_ 0))
                                        (_rec-pre4431_ (values-ref _g8504_ 1))
                                        (_rec-bind4432_ (values-ref _g8504_ 2))
                                        (_rec-init4433_ (values-ref _g8504_ 3))
                                        (_post4434_ (values-ref _g8504_ 4)))
                                    (let ((_body4436_ (gxc#compile-e _L4413_)))
                                      (let ((_body4438_
                                             (if (null? _post4434_)
                                                 _body4436_
                                                 (_generate-let*4365_
                                                  _post4434_
                                                  _body4436_))))
                                        (let ((_body4440_
                                               (if (null? _rec-init4433_)
                                                   _body4438_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body4438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init4433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body4442_
                                                 (if (null? _rec-bind4432_)
                                                     _body4440_
                                                     (cons 'letrec
                                                           (cons _rec-bind4432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body4440_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body4444_
                                                   (if (null? _rec-pre4431_)
                                                       _body4442_
                                                       (cons 'let
                                                             (cons _rec-pre4431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body4442_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body4446_
                                                     (if (null? _pre4430_)
                                                         _body4444_
                                                         (_generate-let*4365_
                                                          _pre4430_
                                                          _body4444_))))
                                                (let () _body4446_)))))))))))
                            _hd43784408_
                            _hd43754400_)
                           (_g43674384_ _g43684387_))))
                   (_g43674384_ _g43684387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g43674384_ _g43684387_))))
                                           (_g43674384_ _g43684387_)))))
                                (_g43664449_ _stx4353_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd4246_)
      ((letrec ((_lp4248_
                 (lambda (_rest4250_)
                   (let ((_g42544275_
                          (lambda (_g42554272_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g42554272_))))
                     (let ((_g42534282_
                            (lambda (_g42554278_) ((lambda () '#f)))))
                       (let ((_g42524289_
                              (lambda (_g42554285_)
                                (if (gx#stx-null? _g42554285_)
                                    ((lambda () '#t))
                                    (_g42534282_ _g42554285_)))))
                         (let ((_g42514350_
                                (lambda (_g42554292_)
                                  (if (gx#stx-pair? _g42554292_)
                                      (let ((_e42594294_
                                             (gx#stx-e _g42554292_)))
                                        (let ((_hd42604297_
                                               (##car _e42594294_))
                                              (_tl42614299_
                                               (##cdr _e42594294_)))
                                          (if (gx#stx-pair? _hd42604297_)
                                              (let ((_e42624302_
                                                     (gx#stx-e _hd42604297_)))
                                                (let ((_hd42634305_
                                                       (##car _e42624302_))
                                                      (_tl42644307_
                                                       (##cdr _e42624302_)))
                                                  (if (gx#stx-pair?
                                                       _hd42634305_)
                                                      (let ((_e42654310_
                                                             (gx#stx-e
                                                              _hd42634305_)))
                                                        (let ((_hd42664313_
                                                               (##car _e42654310_))
                                                              (_tl42674315_
                                                               (##cdr _e42654310_)))
                                                          (if (gx#stx-null?
                                                               _tl42674315_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl42644307_)
                          (let ((_e42684318_ (gx#stx-e _tl42644307_)))
                            (let ((_hd42694321_ (##car _e42684318_))
                                  (_tl42704323_ (##cdr _e42684318_)))
                              (if (gx#stx-null? _tl42704323_)
                                  ((lambda (_L4326_ _L4327_ _L4328_)
                                     (_lp4248_ _L4326_))
                                   _tl42614299_
                                   _hd42694321_
                                   _hd42664313_)
                                  (_g42524289_ _g42554292_))))
                          (_g42524289_ _g42554292_))
                      (_g42524289_ _g42554292_))))
              (_g42524289_ _g42554292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g42524289_ _g42554292_))))
                                      (_g42524289_ _g42554292_)))))
                           (_g42514350_ _rest4250_))))))))
         _lp4248_)
       _hd4246_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form4170_ _hd4171_ _body4172_ _compiled-body?4173_)
      (let ((_generate14175_
             (lambda (_bind4177_)
               (let ((_g41794196_
                      (lambda (_g41804193_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g41804193_))))
                 (let ((_g41784243_
                        (lambda (_g41804199_)
                          (if (gx#stx-pair? _g41804199_)
                              (let ((_e41834201_ (gx#stx-e _g41804199_)))
                                (let ((_hd41844204_ (##car _e41834201_))
                                      (_tl41854206_ (##cdr _e41834201_)))
                                  (if (gx#stx-pair? _hd41844204_)
                                      (let ((_e41864209_
                                             (gx#stx-e _hd41844204_)))
                                        (let ((_hd41874212_
                                               (##car _e41864209_))
                                              (_tl41884214_
                                               (##cdr _e41864209_)))
                                          (if (gx#stx-null? _tl41884214_)
                                              (if (gx#stx-pair? _tl41854206_)
                                                  (let ((_e41894217_
                                                         (gx#stx-e
                                                          _tl41854206_)))
                                                    (let ((_hd41904220_
                                                           (##car _e41894217_))
                                                          (_tl41914222_
                                                           (##cdr _e41894217_)))
                                                      (if (gx#stx-null?
                                                           _tl41914222_)
                                                          ((lambda (_L4225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4226_)
                     (cons (gxc#generate-runtime-binding-id* _L4226_)
                           (cons (gxc#compile-e _L4225_) '())))
                   _hd41904220_
                   _hd41874212_)
                  (_g41794196_ _g41804199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g41794196_ _g41804199_))
                                              (_g41794196_ _g41804199_))))
                                      (_g41794196_ _g41804199_))))
                              (_g41794196_ _g41804199_)))))
                   (_g41784243_ _bind4177_))))))
        (cons _form4170_
              (cons (map _generate14175_ _hd4171_)
                    (cons (if _compiled-body?4173_
                              _body4172_
                              (gxc#compile-e _body4172_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx4081_)
      (letrec ((_generate14083_
                (lambda (_datum4135_)
                  (if (let ((_$e4137_ (null? _datum4135_)))
                        (if _$e4137_
                            _$e4137_
                            (let ((_$e4140_ (symbol? _datum4135_)))
                              (if _$e4140_
                                  _$e4140_
                                  (gx#self-quoting? _datum4135_)))))
                      _datum4135_
                      (if (uninterned-symbol? _datum4135_)
                          (gxc#generate-runtime-gensym-reference _datum4135_)
                          (if (pair? _datum4135_)
                              (cons (_generate14083_ (car _datum4135_))
                                    (_generate14083_ (cdr _datum4135_)))
                              (if (box? _datum4135_)
                                  (box (_generate14083_ (unbox _datum4135_)))
                                  (if (vector? _datum4135_)
                                      (vector-map _generate14083_ _datum4135_)
                                      (if (let ((_$e4143_
                                                 (s8vector? _datum4135_)))
                                            (if _$e4143_
                                                _$e4143_
                                                (let ((_$e4146_
                                                       (u8vector?
                                                        _datum4135_)))
                                                  (if _$e4146_
                                                      _$e4146_
                                                      (let ((_$e4149_
                                                             (s16vector?
                                                              _datum4135_)))
                                                        (if _$e4149_
                                                            _$e4149_
                                                            (let ((_$e4152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum4135_)))
                      (if _$e4152_
                          _$e4152_
                          (let ((_$e4155_ (s32vector? _datum4135_)))
                            (if _$e4155_
                                _$e4155_
                                (let ((_$e4158_ (u32vector? _datum4135_)))
                                  (if _$e4158_
                                      _$e4158_
                                      (let ((_$e4161_
                                             (s64vector? _datum4135_)))
                                        (if _$e4161_
                                            _$e4161_
                                            (let ((_$e4164_
                                                   (u64vector? _datum4135_)))
                                              (if _$e4164_
                                                  _$e4164_
                                                  (let ((_$e4167_
                                                         (f32vector?
                                                          _datum4135_)))
                                                    (if _$e4167_
                                                        _$e4167_
                                                        (f64vector?
                                                         _datum4135_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum4135_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx4081_))))))))))
        (let ((_g40854098_
               (lambda (_g40864095_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g40864095_))))
          (let ((_g40844132_
                 (lambda (_g40864101_)
                   (if (gx#stx-pair? _g40864101_)
                       (let ((_e40884103_ (gx#stx-e _g40864101_)))
                         (let ((_hd40894106_ (##car _e40884103_))
                               (_tl40904108_ (##cdr _e40884103_)))
                           (if (gx#stx-pair? _tl40904108_)
                               (let ((_e40914111_ (gx#stx-e _tl40904108_)))
                                 (let ((_hd40924114_ (##car _e40914111_))
                                       (_tl40934116_ (##cdr _e40914111_)))
                                   (if (gx#stx-null? _tl40934116_)
                                       ((lambda (_L4119_)
                                          (cons 'quote
                                                (cons (_generate14083_
                                                       (gx#stx-e _L4119_))
                                                      '())))
                                        _hd40924114_)
                                       (_g40854098_ _g40864101_))))
                               (_g40854098_ _g40864101_))))
                       (_g40854098_ _g40864101_)))))
            (_g40844132_ _stx4081_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx4043_)
      (let ((_g40454055_
             (lambda (_g40464052_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g40464052_))))
        (let ((_g40444078_
               (lambda (_g40464058_)
                 (if (gx#stx-pair? _g40464058_)
                     (let ((_e40484060_ (gx#stx-e _g40464058_)))
                       (let ((_hd40494063_ (##car _e40484060_))
                             (_tl40504065_ (##cdr _e40484060_)))
                         ((lambda (_L4068_) (map gxc#compile-e _L4068_))
                          _tl40504065_)))
                     (_g40454055_ _g40464058_)))))
          (_g40444078_ _stx4043_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx4005_)
      (let ((_g40074017_
             (lambda (_g40084014_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g40084014_))))
        (let ((_g40064040_
               (lambda (_g40084020_)
                 (if (gx#stx-pair? _g40084020_)
                     (let ((_e40104022_ (gx#stx-e _g40084020_)))
                       (let ((_hd40114025_ (##car _e40104022_))
                             (_tl40124027_ (##cdr _e40104022_)))
                         ((lambda (_L4030_)
                            (cons 'if (map gxc#compile-e _L4030_)))
                          _tl40124027_)))
                     (_g40074017_ _g40084020_)))))
          (_g40064040_ _stx4005_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx3954_)
      (let ((_g39563969_
             (lambda (_g39573966_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g39573966_))))
        (let ((_g39554002_
               (lambda (_g39573972_)
                 (if (gx#stx-pair? _g39573972_)
                     (let ((_e39593974_ (gx#stx-e _g39573972_)))
                       (let ((_hd39603977_ (##car _e39593974_))
                             (_tl39613979_ (##cdr _e39593974_)))
                         (if (gx#stx-pair? _tl39613979_)
                             (let ((_e39623982_ (gx#stx-e _tl39613979_)))
                               (let ((_hd39633985_ (##car _e39623982_))
                                     (_tl39643987_ (##cdr _e39623982_)))
                                 (if (gx#stx-null? _tl39643987_)
                                     ((lambda (_L3990_)
                                        (gxc#generate-runtime-binding-id
                                         _L3990_))
                                      _hd39633985_)
                                     (_g39563969_ _g39573972_))))
                             (_g39563969_ _g39573972_))))
                     (_g39563969_ _g39573972_)))))
          (_g39554002_ _stx3954_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx3887_)
      (let ((_g38893906_
             (lambda (_g38903903_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g38903903_))))
        (let ((_g38883951_
               (lambda (_g38903909_)
                 (if (gx#stx-pair? _g38903909_)
                     (let ((_e38933911_ (gx#stx-e _g38903909_)))
                       (let ((_hd38943914_ (##car _e38933911_))
                             (_tl38953916_ (##cdr _e38933911_)))
                         (if (gx#stx-pair? _tl38953916_)
                             (let ((_e38963919_ (gx#stx-e _tl38953916_)))
                               (let ((_hd38973922_ (##car _e38963919_))
                                     (_tl38983924_ (##cdr _e38963919_)))
                                 (if (gx#stx-pair? _tl38983924_)
                                     (let ((_e38993927_
                                            (gx#stx-e _tl38983924_)))
                                       (let ((_hd39003930_ (##car _e38993927_))
                                             (_tl39013932_
                                              (##cdr _e38993927_)))
                                         (if (gx#stx-null? _tl39013932_)
                                             ((lambda (_L3935_ _L3936_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L3936_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3935_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd39003930_
                                              _hd38973922_)
                                             (_g38893906_ _g38903909_))))
                                     (_g38893906_ _g38903909_))))
                             (_g38893906_ _g38903909_))))
                     (_g38893906_ _g38903909_)))))
          (_g38883951_ _stx3887_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx3820_)
      (let ((_g38223839_
             (lambda (_g38233836_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g38233836_))))
        (let ((_g38213884_
               (lambda (_g38233842_)
                 (if (gx#stx-pair? _g38233842_)
                     (let ((_e38263844_ (gx#stx-e _g38233842_)))
                       (let ((_hd38273847_ (##car _e38263844_))
                             (_tl38283849_ (##cdr _e38263844_)))
                         (if (gx#stx-pair? _tl38283849_)
                             (let ((_e38293852_ (gx#stx-e _tl38283849_)))
                               (let ((_hd38303855_ (##car _e38293852_))
                                     (_tl38313857_ (##cdr _e38293852_)))
                                 (if (gx#stx-pair? _tl38313857_)
                                     (let ((_e38323860_
                                            (gx#stx-e _tl38313857_)))
                                       (let ((_hd38333863_ (##car _e38323860_))
                                             (_tl38343865_
                                              (##cdr _e38323860_)))
                                         (if (gx#stx-null? _tl38343865_)
                                             ((lambda (_L3868_ _L3869_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L3868_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3869_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd38333863_
                                              _hd38303855_)
                                             (_g38223839_ _g38233842_))))
                                     (_g38223839_ _g38233842_))))
                             (_g38223839_ _g38233842_))))
                     (_g38223839_ _g38233842_)))))
          (_g38213884_ _stx3820_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx3753_)
      (let ((_g37553772_
             (lambda (_g37563769_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g37563769_))))
        (let ((_g37543817_
               (lambda (_g37563775_)
                 (if (gx#stx-pair? _g37563775_)
                     (let ((_e37593777_ (gx#stx-e _g37563775_)))
                       (let ((_hd37603780_ (##car _e37593777_))
                             (_tl37613782_ (##cdr _e37593777_)))
                         (if (gx#stx-pair? _tl37613782_)
                             (let ((_e37623785_ (gx#stx-e _tl37613782_)))
                               (let ((_hd37633788_ (##car _e37623785_))
                                     (_tl37643790_ (##cdr _e37623785_)))
                                 (if (gx#stx-pair? _tl37643790_)
                                     (let ((_e37653793_
                                            (gx#stx-e _tl37643790_)))
                                       (let ((_hd37663796_ (##car _e37653793_))
                                             (_tl37673798_
                                              (##cdr _e37653793_)))
                                         (if (gx#stx-null? _tl37673798_)
                                             ((lambda (_L3801_ _L3802_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L3801_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3802_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd37663796_
                                              _hd37633788_)
                                             (_g37553772_ _g37563775_))))
                                     (_g37553772_ _g37563775_))))
                             (_g37553772_ _g37563775_))))
                     (_g37553772_ _g37563775_)))))
          (_g37543817_ _stx3753_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx3670_)
      (let ((_g36723693_
             (lambda (_g36733690_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g36733690_))))
        (let ((_g36713750_
               (lambda (_g36733696_)
                 (if (gx#stx-pair? _g36733696_)
                     (let ((_e36773698_ (gx#stx-e _g36733696_)))
                       (let ((_hd36783701_ (##car _e36773698_))
                             (_tl36793703_ (##cdr _e36773698_)))
                         (if (gx#stx-pair? _tl36793703_)
                             (let ((_e36803706_ (gx#stx-e _tl36793703_)))
                               (let ((_hd36813709_ (##car _e36803706_))
                                     (_tl36823711_ (##cdr _e36803706_)))
                                 (if (gx#stx-pair? _tl36823711_)
                                     (let ((_e36833714_
                                            (gx#stx-e _tl36823711_)))
                                       (let ((_hd36843717_ (##car _e36833714_))
                                             (_tl36853719_
                                              (##cdr _e36833714_)))
                                         (if (gx#stx-pair? _tl36853719_)
                                             (let ((_e36863722_
                                                    (gx#stx-e _tl36853719_)))
                                               (let ((_hd36873725_
                                                      (##car _e36863722_))
                                                     (_tl36883727_
                                                      (##cdr _e36863722_)))
                                                 (if (gx#stx-null?
                                                      _tl36883727_)
                                                     ((lambda (_L3730_
                                                               _L3731_
                                                               _L3732_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L3730_)
                            (cons (gxc#compile-e _L3731_)
                                  (cons (gxc#compile-e _L3732_)
                                        (cons ''#f '()))))))
              _hd36873725_
              _hd36843717_
              _hd36813709_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g36723693_
                                                      _g36733696_))))
                                             (_g36723693_ _g36733696_))))
                                     (_g36723693_ _g36733696_))))
                             (_g36723693_ _g36733696_))))
                     (_g36723693_ _g36733696_)))))
          (_g36713750_ _stx3670_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx3571_)
      (let ((_g35733598_
             (lambda (_g35743595_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g35743595_))))
        (let ((_g35723667_
               (lambda (_g35743601_)
                 (if (gx#stx-pair? _g35743601_)
                     (let ((_e35793603_ (gx#stx-e _g35743601_)))
                       (let ((_hd35803606_ (##car _e35793603_))
                             (_tl35813608_ (##cdr _e35793603_)))
                         (if (gx#stx-pair? _tl35813608_)
                             (let ((_e35823611_ (gx#stx-e _tl35813608_)))
                               (let ((_hd35833614_ (##car _e35823611_))
                                     (_tl35843616_ (##cdr _e35823611_)))
                                 (if (gx#stx-pair? _tl35843616_)
                                     (let ((_e35853619_
                                            (gx#stx-e _tl35843616_)))
                                       (let ((_hd35863622_ (##car _e35853619_))
                                             (_tl35873624_
                                              (##cdr _e35853619_)))
                                         (if (gx#stx-pair? _tl35873624_)
                                             (let ((_e35883627_
                                                    (gx#stx-e _tl35873624_)))
                                               (let ((_hd35893630_
                                                      (##car _e35883627_))
                                                     (_tl35903632_
                                                      (##cdr _e35883627_)))
                                                 (if (gx#stx-pair?
                                                      _tl35903632_)
                                                     (let ((_e35913635_
                                                            (gx#stx-e
                                                             _tl35903632_)))
                                                       (let ((_hd35923638_
                                                              (##car _e35913635_))
                                                             (_tl35933640_
                                                              (##cdr _e35913635_)))
                                                         (if (gx#stx-null?
                                                              _tl35933640_)
                                                             ((lambda (_L3643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L3644_
                               _L3645_
                               _L3646_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L3644_)
                                    (cons (gxc#compile-e _L3643_)
                                          (cons (gxc#compile-e _L3645_)
                                                (cons (gxc#compile-e _L3646_)
                                                      (cons ''#f '())))))))
                      _hd35923638_
                      _hd35893630_
                      _hd35863622_
                      _hd35833614_)
                     (_g35733598_ _g35743601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g35733598_
                                                      _g35743601_))))
                                             (_g35733598_ _g35743601_))))
                                     (_g35733598_ _g35743601_))))
                             (_g35733598_ _g35743601_))))
                     (_g35733598_ _g35743601_)))))
          (_g35723667_ _stx3571_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx3480_)
      (let ((_g34823492_
             (lambda (_g34833489_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34833489_))))
        (let ((_g34813568_
               (lambda (_g34833495_)
                 (if (gx#stx-pair? _g34833495_)
                     (let ((_e34853497_ (gx#stx-e _g34833495_)))
                       (let ((_hd34863500_ (##car _e34853497_))
                             (_tl34873502_ (##cdr _e34853497_)))
                         ((lambda (_L3505_)
                            (let ((_ht3515_ (make-hash-table-eq)))
                              ((letrec ((_lp3517_
                                         (lambda (_rest3519_ _loads3520_)
                                           (let ((_K3522_ (lambda (_ctx3561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest3562_)
                    (let ((_id3564_
                           (##structure-ref
                            _ctx3561_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (hash-get _ht3515_ _id3564_)
                          (_lp3517_ _rest3562_ _loads3520_)
                          (let ((_rt3566_
                                 (string-append
                                  (symbol->string _id3564_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht3515_ _id3564_ _rt3566_)
                              (_lp3517_
                               _rest3562_
                               (cons _rt3566_ _loads3520_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest35233531_ _rest3519_))
                                               (let ((_E35263535_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest35233531_))))
                                                 (let ((_else35253543_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g35383540_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g35383540_))
                             (reverse _loads3520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K35273549_
                                                          (lambda (_rest3546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in3547_)
                    (if (##structure-instance-of?
                         _in3547_
                         'gx#module-context::t)
                        (_K3522_ _in3547_ _rest3546_)
                        (if (##structure-direct-instance-of?
                             _in3547_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in3547_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp3517_ _rest3546_ _loads3520_)
                                (_K3522_ (##structure-ref
                                          (##structure-ref
                                           _in3547_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest3546_))
                            (if (##structure-direct-instance-of?
                                 _in3547_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in3547_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp3517_ _rest3546_ _loads3520_)
                                    (_K3522_ (##structure-ref
                                              _in3547_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest3546_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx3480_
                                 _in3547_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest35233531_)
                                                         (let ((_hd35283552_
                                                                (##car _rest35233531_))
                                                               (_tl35293554_
                                                                (##cdr _rest35233531_)))
                                                           (let ((_in3557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd35283552_))
                     (let ((_rest3559_ _tl35293554_))
                       (_K35273549_ _rest3559_ _in3557_))))
                 (_else35253543_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp3517_)
                               _L3505_
                               '())))
                          _tl34873502_)))
                     (_g34823492_ _g34833495_)))))
          (_g34813568_ _stx3480_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx3421_)
      (let ((_generate-quote3423_
             (lambda (_q3478_)
               (if (gx#identifier? _q3478_)
                   (gxc#generate-runtime-identifier _q3478_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx3421_
                    _q3478_)))))
        (let ((_g34253438_
               (lambda (_g34263435_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g34263435_))))
          (let ((_g34243475_
                 (lambda (_g34263441_)
                   (if (gx#stx-pair? _g34263441_)
                       (let ((_e34283443_ (gx#stx-e _g34263441_)))
                         (let ((_hd34293446_ (##car _e34283443_))
                               (_tl34303448_ (##cdr _e34283443_)))
                           (if (gx#stx-pair? _tl34303448_)
                               (let ((_e34313451_ (gx#stx-e _tl34303448_)))
                                 (let ((_hd34323454_ (##car _e34313451_))
                                       (_tl34333456_ (##cdr _e34313451_)))
                                   (if (gx#stx-null? _tl34333456_)
                                       ((lambda (_L3459_)
                                          (let ((_gid3472_
                                                 (gxc#generate-runtime-temporary__opt-lambda7910
                                                  '#t))
                                                (_quote-e3473_
                                                 (_generate-quote3423_
                                                  _L3459_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid3472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e3473_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid3472_)))
                                        _hd34323454_)
                                       (_g34253438_ _g34263441_))))
                               (_g34253438_ _g34263441_))))
                       (_g34253438_ _g34263441_)))))
            (_g34243475_ _stx3421_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx3354_)
      (let ((_g33563373_
             (lambda (_g33573370_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33573370_))))
        (let ((_g33553418_
               (lambda (_g33573376_)
                 (if (gx#stx-pair? _g33573376_)
                     (let ((_e33603378_ (gx#stx-e _g33573376_)))
                       (let ((_hd33613381_ (##car _e33603378_))
                             (_tl33623383_ (##cdr _e33603378_)))
                         (if (gx#stx-pair? _tl33623383_)
                             (let ((_e33633386_ (gx#stx-e _tl33623383_)))
                               (let ((_hd33643389_ (##car _e33633386_))
                                     (_tl33653391_ (##cdr _e33633386_)))
                                 (if (gx#stx-pair? _tl33653391_)
                                     (let ((_e33663394_
                                            (gx#stx-e _tl33653391_)))
                                       (let ((_hd33673397_ (##car _e33663394_))
                                             (_tl33683399_
                                              (##cdr _e33663394_)))
                                         (if (gx#stx-null? _tl33683399_)
                                             ((lambda (_L3402_ _L3403_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L3403_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3402_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33673397_
                                              _hd33643389_)
                                             (_g33563373_ _g33573376_))))
                                     (_g33563373_ _g33573376_))))
                             (_g33563373_ _g33573376_))))
                     (_g33563373_ _g33573376_)))))
          (_g33553418_ _stx3354_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx3303_ _state3304_)
      (let ((_g33063316_
             (lambda (_g33073313_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33073313_))))
        (let ((_g33053351_
               (lambda (_g33073319_)
                 (if (gx#stx-pair? _g33073319_)
                     (let ((_e33093321_ (gx#stx-e _g33073319_)))
                       (let ((_hd33103324_ (##car _e33093321_))
                             (_tl33113326_ (##cdr _e33093321_)))
                         ((lambda (_L3329_)
                            (let ((_c-body3343_
                                   (map (lambda (_g33383340_)
                                          (gxc#compile-e
                                           _g33383340_
                                           _state3304_))
                                        _L3329_)))
                              (let ((_c-body3348_
                                     (filter (lambda (_$obj3345_)
                                               (not (void? _$obj3345_)))
                                             _c-body3343_)))
                                (let () (cons '%#begin _c-body3348_)))))
                          _tl33113326_)))
                     (_g33063316_ _g33073319_)))))
          (_g33053351_ _stx3303_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx3211_ _state3212_)
      (let ((_g32143224_
             (lambda (_g32153221_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32153221_))))
        (let ((_g32133300_
               (lambda (_g32153227_)
                 (if (gx#stx-pair? _g32153227_)
                     (let ((_e32173229_ (gx#stx-e _g32153227_)))
                       (let ((_hd32183232_ (##car _e32173229_))
                             (_tl32193234_ (##cdr _e32173229_)))
                         ((lambda (_L3237_)
                            (let ((_phi3247_ (fx1+ (gx#current-expander-phi))))
                              (let ((_block3249_
                                     (gxc#meta-state-begin-phi!
                                      _state3212_
                                      _phi3247_)))
                                (let ((_compiled3252_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L3237_)
                                           _state3212_))
                                        gx#current-expander-phi
                                        _phi3247_)))
                                  (let ()
                                    (let ((_g32553265_
                                           (lambda (_g32563262_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g32563262_))))
                                      (let ((_g32543297_
                                             (lambda (_g32563268_)
                                               (if (gx#stx-pair? _g32563268_)
                                                   (let ((_e32583270_
                                                          (gx#stx-e
                                                           _g32563268_)))
                                                     (let ((_hd32593273_
                                                            (##car _e32583270_))
                                                           (_tl32603275_
                                                            (##cdr _e32583270_)))
                                                       (if (gx#identifier?
                                                            _hd32593273_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd32593273_)
                                                               ((lambda (_L3278_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body3295_
                                 (filter (lambda (_$obj3292_)
                                           (not (void? _$obj3292_)))
                                         _L3278_)))
                            (if _block3249_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block3249_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body3295_))
                                (if (null? _c-body3295_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body3295_)))))
                        _tl32603275_)
                       (_g32553265_ _g32563268_))
                   (_g32553265_ _g32563268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g32553265_
                                                    _g32563268_)))))
                                        (_g32543297_ _compiled3252_))))))))
                          _tl32193234_)))
                     (_g32143224_ _g32153227_)))))
          (_g32133300_ _stx3211_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx3142_ _state3143_)
      (begin
        (gxc#meta-state-end-phi! _state3143_)
        (let ((_g31453159_
               (lambda (_g31463156_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g31463156_))))
          (let ((_g31443208_
                 (lambda (_g31463162_)
                   (if (gx#stx-pair? _g31463162_)
                       (let ((_e31493164_ (gx#stx-e _g31463162_)))
                         (let ((_hd31503167_ (##car _e31493164_))
                               (_tl31513169_ (##cdr _e31493164_)))
                           (if (gx#stx-pair? _tl31513169_)
                               (let ((_e31523172_ (gx#stx-e _tl31513169_)))
                                 (let ((_hd31533175_ (##car _e31523172_))
                                       (_tl31543177_ (##cdr _e31523172_)))
                                   ((lambda (_L3180_ _L3181_)
                                      (let ((_key3194_
                                             (gx#core-identifier-key _L3181_)))
                                        (begin
                                          (if (interned-symbol? _key3194_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx3142_
                                               _L3181_
                                               _key3194_))
                                          (let ((_ctx3196_
                                                 (gx#syntax-local-e__0
                                                  _L3181_)))
                                            (let ((_code3199_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx3196_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state3143_))
                                                    gx#current-expander-context
                                                    _ctx3196_)))
                                              (let ((_rt3201_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx3196_)))
                                                (let ((_loader3203_
                                                       (if _rt3201_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt3201_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid3205_
                                                         (gx#stx-e _L3181_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state3143_)
                                                        (cons '%#module
                                                              (cons _modid3205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code3199_ _loader3203_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl31543177_
                                    _hd31533175_)))
                               (_g31453159_ _g31463162_))))
                       (_g31453159_ _g31463162_)))))
            (_g31443208_ _stx3142_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx3132_ _context-chain3133_)
      ((letrec ((_lp3135_
                 (lambda (_ctx3137_ _path3138_)
                   (let ((_super3140_
                          (##structure-ref
                           _ctx3137_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super3140_ _context-chain3133_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx3137_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path3138_)
                         (if (##structure-instance-of?
                              _super3140_
                              'gx#module-context::t)
                             (_lp3135_
                              _super3140_
                              (cons (car (##structure-ref
                                          _ctx3137_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path3138_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx3137_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path3138_)))))))
         _lp3135_)
       _ctx3132_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp3127_
                 (lambda (_ctx3129_ _r3130_)
                   (if (##structure-instance-of?
                        _ctx3129_
                        'gx#module-context::t)
                       (_lp3127_
                        (##structure-ref _ctx3129_ '3 gx#phi-context::t '#f)
                        (cons _ctx3129_ _r3130_))
                       _r3130_))))
         _lp3127_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx2896_ _state2897_)
      (let ((_context-chain2899_ (gxc#current-context-chain)))
        (let ((_make-import-spec2900_
               (lambda (_in3063_)
                 (let ((_in30643076_ _in3063_))
                   (let ((_E30663080_
                          (lambda ()
                            (error '"No clause matching" _in30643076_))))
                     (let ((_K30673090_
                            (lambda (_phi3083_
                                     _name3084_
                                     _src-name3085_
                                     _src-phi3086_
                                     _src-key3087_
                                     _src-ctx3088_)
                              (cons _phi3083_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name3084_)
                                          (cons _src-phi3086_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name3085_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in30643076_)
                           (let ((_e30683093_ (##vector-ref _in30643076_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e30683093_)
                                 (let ((_e30713096_
                                        (##vector-ref _e30683093_ '1)))
                                   (let ((_src-ctx3099_ _e30713096_))
                                     (let ((_e30723101_
                                            (##vector-ref _e30683093_ '2)))
                                       (let ((_src-key3104_ _e30723101_))
                                         (let ((_e30733106_
                                                (##vector-ref _e30683093_ '3)))
                                           (let ((_src-phi3109_ _e30733106_))
                                             (let ((_e30743111_
                                                    (##vector-ref
                                                     _e30683093_
                                                     '4)))
                                               (let ((_src-name3114_
                                                      _e30743111_))
                                                 (let ((_e30693116_
                                                        (##vector-ref
                                                         _in30643076_
                                                         '2)))
                                                   (let ((_name3119_
                                                          _e30693116_))
                                                     (let ((_e30703121_
                                                            (##vector-ref
                                                             _in30643076_
                                                             '3)))
                                                       (let ((_phi3124_
                                                              _e30703121_))
                                                         (_K30673090_
                                                          _phi3124_
                                                          _name3119_
                                                          _src-name3114_
                                                          _src-phi3109_
                                                          _src-key3104_
                                                          _src-ctx3099_)))))))))))))
                                 (_E30663080_)))
                           (_E30663080_))))))))
          (let ((_make-import-path2901_
                 (lambda (_ctx3061_)
                   (gxc#generate-meta-import-path
                    _ctx3061_
                    _context-chain2899_))))
            (let ((_make-import-spec-in2902_
                   (lambda (_ctx3058_ _in3059_)
                     (cons 'spec:
                           (cons (_make-import-path2901_ _ctx3058_)
                                 (reverse _in3059_))))))
              (begin
                (gxc#meta-state-end-phi! _state2897_)
                (let ((_g29042914_
                       (lambda (_g29052911_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g29052911_))))
                  (let ((_g29033055_
                         (lambda (_g29052917_)
                           (if (gx#stx-pair? _g29052917_)
                               (let ((_e29072919_ (gx#stx-e _g29052917_)))
                                 (let ((_hd29082922_ (##car _e29072919_))
                                       (_tl29092924_ (##cdr _e29072919_)))
                                   ((lambda (_L2927_)
                                      ((letrec ((_lp2938_
                                                 (lambda (_rest2940_
                                                          _current-src2941_
                                                          _current-in2942_
                                                          _r2943_)
                                                   (let ((_rest29442952_
                                                          _rest2940_))
                                                     (let ((_E29472956_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest29442952_))))
               (let ((_else29462962_
                      (lambda ()
                        (let ((_r2960_ (if _current-src2941_
                                           (cons (_make-import-spec-in2902_
                                                  _current-src2941_
                                                  _current-in2942_)
                                                 _r2943_)
                                           _r2943_)))
                          (cons '%#import (reverse _r2960_))))))
                 (let ((_K29483043_
                        (lambda (_rest2965_ _in2966_)
                          (if (##structure-direct-instance-of?
                               _in2966_
                               'gx#module-import::t)
                              (let ((_in29672974_ _in2966_))
                                (let ((_E29692978_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in29672974_))))
                                  (let ((_K29702983_
                                         (lambda (_src-ctx2981_)
                                           (if (eq? _current-src2941_
                                                    _src-ctx2981_)
                                               (_lp2938_
                                                _rest2965_
                                                _current-src2941_
                                                (cons (_make-import-spec2900_
                                                       _in2966_)
                                                      _current-in2942_)
                                                _r2943_)
                                               (if _current-src2941_
                                                   (_lp2938_
                                                    _rest2965_
                                                    _src-ctx2981_
                                                    (cons (_make-import-spec2900_
                                                           _in2966_)
                                                          '())
                                                    (cons (_make-import-spec-in2902_
                                                           _current-src2941_
                                                           _current-in2942_)
                                                          _r2943_))
                                                   (_lp2938_
                                                    _rest2965_
                                                    _src-ctx2981_
                                                    (cons (_make-import-spec2900_
                                                           _in2966_)
                                                          '())
                                                    _r2943_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in29672974_)
                                        (let ((_e29712986_
                                               (##vector-ref _in29672974_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e29712986_)
                                              (let ((_e29722989_
                                                     (##vector-ref
                                                      _e29712986_
                                                      '1)))
                                                (let ((_src-ctx2992_
                                                       _e29722989_))
                                                  (_K29702983_ _src-ctx2992_)))
                                              (_E29692978_)))
                                        (_E29692978_)))))
                              (if (##structure-direct-instance-of?
                                   _in2966_
                                   'gx#import-set::t)
                                  (let ((_phi2994_
                                         (##structure-ref
                                          _in2966_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src2996_
                                           (##structure-ref
                                            _in2966_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in3036_
                                             (let ((_g29973006_
                                                    (_make-import-path2901_
                                                     _src2996_)))
                                               (let ((_E30003010_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g29973006_))))
                                                 (let ((_try-match29993021_
                                                        (lambda ()
                                                          (let ((_K30013016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path3014_) (cons 'in: _path3014_))))
                    (let ((_path3019_ _g29973006_))
                      (_K30013016_ _path3019_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K30023026_
                                                          (lambda (_path3024_)
                                                            _path3024_)))
                                                     (if (##pair? _g29973006_)
                                                         (let ((_hd30033029_
                                                                (##car _g29973006_))
                                                               (_tl30043031_
                                                                (##cdr _g29973006_)))
                                                           (let ((_path3034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd30033029_))
                     (if (##null? _tl30043031_)
                         (_K30023026_ _path3034_)
                         (_try-match29993021_))))
                 (_try-match29993021_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r3038_ (if _current-src2941_
                                                           (cons (_make-import-spec-in2902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src2941_
                          _current-in2942_)
                         _r2943_)
                   _r2943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp2938_
                                             _rest2965_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi2994_)
                                                       _src-in3036_
                                                       (cons 'phi:
                                                             (cons _phi2994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in3036_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r3038_)))))))
                                  (if (##structure-instance-of?
                                       _in2966_
                                       'gx#module-context::t)
                                      (let ((_r3041_ (if _current-src2941_
                                                         (cons (_make-import-spec-in2902_
                                                                _current-src2941_
                                                                _current-in2942_)
                                                               _r2943_)
                                                         _r2943_)))
                                        (_lp2938_
                                         _rest2965_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path2901_
                                                      _in2966_))
                                               _r3041_)))
                                      '#!void))))))
                   (if (##pair? _rest29442952_)
                       (let ((_hd29493046_ (##car _rest29442952_))
                             (_tl29503048_ (##cdr _rest29442952_)))
                         (let ((_in3051_ _hd29493046_))
                           (let ((_rest3053_ _tl29503048_))
                             (_K29483043_ _rest3053_ _in3051_))))
                       (_else29462962_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp2938_)
                                       _L2927_
                                       '#f
                                       '()
                                       '()))
                                    _tl29092924_)))
                               (_g29042914_ _g29052917_)))))
                    (_g29033055_ _stx2896_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx2706_ _state2707_)
      (let ((_context-chain2709_ (gxc#current-context-chain)))
        (let ((_make-import-path2710_
               (lambda (_ctx2894_)
                 (gxc#generate-meta-import-path
                  _ctx2894_
                  _context-chain2709_))))
          (let ((_g27122722_
                 (lambda (_g27132719_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g27132719_))))
            (let ((_g27112891_
                   (lambda (_g27132725_)
                     (if (gx#stx-pair? _g27132725_)
                         (let ((_e27152727_ (gx#stx-e _g27132725_)))
                           (let ((_hd27162730_ (##car _e27152727_))
                                 (_tl27172732_ (##cdr _e27152727_)))
                             ((lambda (_L2735_)
                                ((letrec ((_lp2746_
                                           (lambda (_rest2748_ _r2749_)
                                             (let ((_rest27502758_ _rest2748_))
                                               (let ((_E27532762_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest27502758_))))
                                                 (let ((_else27522766_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r2749_)))))
                                                   (let ((_K27542879_
                                                          (lambda (_rest2769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out2770_)
                    (let ((_out27712784_ _out2770_))
                      (let ((_E27742788_
                             (lambda ()
                               (error '"No clause matching" _out27712784_))))
                        (let ((_try-match27732851_
                               (lambda ()
                                 (let ((_K27752838_
                                        (lambda (_phi2792_ _src2793_)
                                          (let ((_out2833_
                                                 (if _src2793_
                                                     (cons 'import:
                                                           (cons (let ((_g27942803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path2710_ _src2793_)))
                           (let ((_E27972807_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g27942803_))))
                             (let ((_try-match27962818_
                                    (lambda ()
                                      (let ((_K27982813_
                                             (lambda (_path2811_)
                                               (cons 'in: _path2811_))))
                                        (let ((_path2816_ _g27942803_))
                                          (_K27982813_ _path2816_))))))
                               (let ((_K27992823_
                                      (lambda (_path2821_) _path2821_)))
                                 (if (##pair? _g27942803_)
                                     (let ((_hd28002826_ (##car _g27942803_))
                                           (_tl28012828_ (##cdr _g27942803_)))
                                       (let ((_path2831_ _hd28002826_))
                                         (if (##null? _tl28012828_)
                                             (_K27992823_ _path2831_)
                                             (_try-match27962818_))))
                                     (_try-match27962818_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out2835_
                                                   (if (fxzero? _phi2792_)
                                                       _out2833_
                                                       (cons 'phi:
                                                             (cons _phi2792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out2833_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp2746_
                                                 _rest2769_
                                                 (cons _out2835_
                                                       _r2749_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out27712784_)
                                       (let ((_e27762841_
                                              (##vector-ref _out27712784_ '1)))
                                         (let ((_src2844_ _e27762841_))
                                           (let ((_e27772846_
                                                  (##vector-ref
                                                   _out27712784_
                                                   '2)))
                                             (let ((_phi2849_ _e27772846_))
                                               (_K27752838_
                                                _phi2849_
                                                _src2844_)))))
                                       (_E27742788_))))))
                          (let ((_K27782858_
                                 (lambda (_name2854_ _phi2855_ _key2856_)
                                   (_lp2746_
                                    _rest2769_
                                    (cons (cons 'spec:
                                                (cons _phi2855_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key2856_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name2854_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r2749_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out27712784_)
                                (let ((_e27792861_
                                       (##vector-ref _out27712784_ '1)))
                                  (let ((_e27802864_
                                         (##vector-ref _out27712784_ '2)))
                                    (let ((_key2867_ _e27802864_))
                                      (let ((_e27812869_
                                             (##vector-ref _out27712784_ '3)))
                                        (let ((_phi2872_ _e27812869_))
                                          (let ((_e27822874_
                                                 (##vector-ref
                                                  _out27712784_
                                                  '4)))
                                            (let ((_name2877_ _e27822874_))
                                              (_K27782858_
                                               _name2877_
                                               _phi2872_
                                               _key2867_))))))))
                                (_try-match27732851_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest27502758_)
                                                         (let ((_hd27552882_
                                                                (##car _rest27502758_))
                                                               (_tl27562884_
                                                                (##cdr _rest27502758_)))
                                                           (let ((_out2887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd27552882_))
                     (let ((_rest2889_ _tl27562884_))
                       (_K27542879_ _rest2889_ _out2887_))))
                 (_else27522766_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp2746_)
                                 _L2735_
                                 '()))
                              _tl27172732_)))
                         (_g27122722_ _g27132725_)))))
              (_g27112891_ _stx2706_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx2667_ _state2668_)
      (begin
        (gxc#meta-state-end-phi! _state2668_)
        (let ((_g26702680_
               (lambda (_g26712677_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g26712677_))))
          (let ((_g26692703_
                 (lambda (_g26712683_)
                   (if (gx#stx-pair? _g26712683_)
                       (let ((_e26732685_ (gx#stx-e _g26712683_)))
                         (let ((_hd26742688_ (##car _e26732685_))
                               (_tl26752690_ (##cdr _e26732685_)))
                           ((lambda (_L2693_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L2693_)))
                            _tl26752690_)))
                       (_g26702680_ _g26712683_)))))
            (_g26692703_ _stx2667_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx2538_ _state2539_)
      (let ((_generate12541_
             (lambda (_id2662_ _eid2663_)
               (let ((_eid2665_ (gx#stx-e _eid2663_)))
                 (begin
                   (if (interned-symbol? _eid2665_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx2538_
                        _eid2665_))
                   (cons (gxc#generate-runtime-identifier _id2662_)
                         (cons _eid2665_ '())))))))
        (let ((_g25432571_
               (lambda (_g25442568_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g25442568_))))
          (let ((_g25422659_
                 (lambda (_g25442574_)
                   (if (gx#stx-pair? _g25442574_)
                       (let ((_e25472576_ (gx#stx-e _g25442574_)))
                         (let ((_hd25482579_ (##car _e25472576_))
                               (_tl25492581_ (##cdr _e25472576_)))
                           (if (gx#stx-pair/null? _tl25492581_)
                               (if (fx>= (gx#stx-length _tl25492581_) '0)
                                   (let ((_g8512_ (gx#syntax-split-splice
                                                   _tl25492581_
                                                   '0)))
                                     (begin
                                       (let ((_g8513_ (values-count _g8512_)))
                                         (if (not (fx= _g8513_ 2))
                                             (error "Context expects 2 values"
                                                    _g8513_)))
                                       (let ((_target25502584_
                                              (values-ref _g8512_ 0))
                                             (_tl25522586_
                                              (values-ref _g8512_ 1)))
                                         (if (gx#stx-null? _tl25522586_)
                                             (letrec ((_loop25532589_
                                                       (lambda (_hd25512592_
                                                                _eid25572594_
                                                                _id25582596_)
                                                         (if (gx#stx-pair?
                                                              _hd25512592_)
                                                             (let ((_e25542599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd25512592_)))
                       (let ((_lp-hd25552602_ (##car _e25542599_))
                             (_lp-tl25562604_ (##cdr _e25542599_)))
                         (if (gx#stx-pair? _lp-hd25552602_)
                             (let ((_e25612607_ (gx#stx-e _lp-hd25552602_)))
                               (let ((_hd25622610_ (##car _e25612607_))
                                     (_tl25632612_ (##cdr _e25612607_)))
                                 (if (gx#stx-pair? _tl25632612_)
                                     (let ((_e25642615_
                                            (gx#stx-e _tl25632612_)))
                                       (let ((_hd25652618_ (##car _e25642615_))
                                             (_tl25662620_
                                              (##cdr _e25642615_)))
                                         (if (gx#stx-null? _tl25662620_)
                                             (_loop25532589_
                                              _lp-tl25562604_
                                              (cons _hd25652618_ _eid25572594_)
                                              (cons _hd25622610_ _id25582596_))
                                             (_g25432571_ _g25442574_))))
                                     (_g25432571_ _g25442574_))))
                             (_g25432571_ _g25442574_))))
                     (let ((_eid25592623_ (reverse _eid25572594_))
                           (_id25602625_ (reverse _id25582596_)))
                       ((lambda (_L2628_ _L2629_)
                          (cons '%#extern
                                (map _generate12541_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g26442647_ _g26452649_)
                                                (cons _g26442647_ _g26452649_))
                                              '()
                                              _L2629_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g26512654_ _g26522656_)
                                                (cons _g26512654_ _g26522656_))
                                              '()
                                              _L2628_)))))
                        _eid25592623_
                        _id25602625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop25532589_
                                                _target25502584_
                                                '()
                                                '()))
                                             (_g25432571_ _g25442574_)))))
                                   (_g25432571_ _g25442574_))
                               (_g25432571_ _g25442574_))))
                       (_g25432571_ _g25442574_)))))
            (_g25422659_ _stx2538_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx2333_ _state2334_)
      (let ((_generate12336_
             (lambda (_id2533_)
               (let ((_eid2535_ (gxc#generate-runtime-binding-id _id2533_))
                     (_ident2536_ (gxc#generate-runtime-identifier _id2533_)))
                 (cons '%#define-runtime
                       (cons _ident2536_ (cons _eid2535_ '())))))))
        (let ((_generate*2337_
               (lambda (_all2501_)
                 (let ((_all25022510_ _all2501_))
                   (let ((_E25052514_
                          (lambda ()
                            (error '"No clause matching" _all25022510_))))
                     (let ((_else25042518_
                            (lambda () (cons '%#begin _all2501_))))
                       (let ((_K25062523_ (lambda (_one2521_) _one2521_)))
                         (if (##pair? _all25022510_)
                             (let ((_hd25072526_ (##car _all25022510_))
                                   (_tl25082528_ (##cdr _all25022510_)))
                               (let ((_one2531_ _hd25072526_))
                                 (if (##null? _tl25082528_)
                                     (_K25062523_ _one2531_)
                                     (_else25042518_))))
                             (_else25042518_)))))))))
          (let ((_g23392356_
                 (lambda (_g23402353_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g23402353_))))
            (let ((_g23382498_
                   (lambda (_g23402359_)
                     (if (gx#stx-pair? _g23402359_)
                         (let ((_e23432361_ (gx#stx-e _g23402359_)))
                           (let ((_hd23442364_ (##car _e23432361_))
                                 (_tl23452366_ (##cdr _e23432361_)))
                             (if (gx#stx-pair? _tl23452366_)
                                 (let ((_e23462369_ (gx#stx-e _tl23452366_)))
                                   (let ((_hd23472372_ (##car _e23462369_))
                                         (_tl23482374_ (##cdr _e23462369_)))
                                     (if (gx#stx-pair? _tl23482374_)
                                         (let ((_e23492377_
                                                (gx#stx-e _tl23482374_)))
                                           (let ((_hd23502380_
                                                  (##car _e23492377_))
                                                 (_tl23512382_
                                                  (##cdr _e23492377_)))
                                             (if (gx#stx-null? _tl23512382_)
                                                 ((lambda (_L2385_ _L2386_)
                                                    ((letrec ((_lp2402_
                                                               (lambda (_rest2404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r2405_)
                         (let ((_g24102426_
                                (lambda (_g24112423_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g24112423_))))
                           (let ((_g24092433_
                                  (lambda (_g24112429_)
                                    ((lambda ()
                                       (_generate*2337_ (reverse _r2405_)))))))
                             (let ((_g24082449_
                                    (lambda (_g24112436_)
                                      ((lambda (_L2438_)
                                         (if (gx#identifier? _L2438_)
                                             (_generate*2337_
                                              (foldl cons
                                                     (cons (_generate12336_
                                                            _L2438_)
                                                           '())
                                                     _r2405_))
                                             (_g24092433_ _g24112436_)))
                                       _g24112436_))))
                               (let ((_g24072473_
                                      (lambda (_g24112452_)
                                        (if (gx#stx-pair? _g24112452_)
                                            (let ((_e24182454_
                                                   (gx#stx-e _g24112452_)))
                                              (let ((_hd24192457_
                                                     (##car _e24182454_))
                                                    (_tl24202459_
                                                     (##cdr _e24182454_)))
                                                ((lambda (_L2462_ _L2463_)
                                                   (_lp2402_
                                                    _L2462_
                                                    (cons (_generate12336_
                                                           _L2463_)
                                                          _r2405_)))
                                                 _tl24202459_
                                                 _hd24192457_)))
                                            (_g24082449_ _g24112452_)))))
                                 (let ((_g24062495_
                                        (lambda (_g24112476_)
                                          (if (gx#stx-pair? _g24112476_)
                                              (let ((_e24132478_
                                                     (gx#stx-e _g24112476_)))
                                                (let ((_hd24142481_
                                                       (##car _e24132478_))
                                                      (_tl24152483_
                                                       (##cdr _e24132478_)))
                                                  (if (gx#stx-datum?
                                                       _hd24142481_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd24142481_)
                          '#f)
                  ((lambda (_L2486_) (_lp2402_ _L2486_ _r2405_)) _tl24152483_)
                  (_g24072473_ _g24112476_))
              (_g24072473_ _g24112476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g24072473_ _g24112476_)))))
                                   (_g24062495_ _rest2404_)))))))))
               _lp2402_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L2386_
                                                     '()))
                                                  _hd23502380_
                                                  _hd23472372_)
                                                 (_g23392356_ _g23402359_))))
                                         (_g23392356_ _g23402359_))))
                                 (_g23392356_ _g23402359_))))
                         (_g23392356_ _g23402359_)))))
              (_g23382498_ _stx2333_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx2230_ _state2231_)
      (let ((_g22332250_
             (lambda (_g22342247_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g22342247_))))
        (let ((_g22322330_
               (lambda (_g22342253_)
                 (if (gx#stx-pair? _g22342253_)
                     (let ((_e22372255_ (gx#stx-e _g22342253_)))
                       (let ((_hd22382258_ (##car _e22372255_))
                             (_tl22392260_ (##cdr _e22372255_)))
                         (if (gx#stx-pair? _tl22392260_)
                             (let ((_e22402263_ (gx#stx-e _tl22392260_)))
                               (let ((_hd22412266_ (##car _e22402263_))
                                     (_tl22422268_ (##cdr _e22402263_)))
                                 (if (gx#stx-pair? _tl22422268_)
                                     (let ((_e22432271_
                                            (gx#stx-e _tl22422268_)))
                                       (let ((_hd22442274_ (##car _e22432271_))
                                             (_tl22452276_
                                              (##cdr _e22432271_)))
                                         (if (gx#stx-null? _tl22452276_)
                                             ((lambda (_L2279_ _L2280_)
                                                (let ((_eid2295_
                                                       (gxc#generate-runtime-binding-id
                                                        _L2280_)))
                                                  (let ((_phi2297_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block2299_
                                                           (gxc#meta-state-begin-phi!
                                                            _state2231_
                                                            _phi2297_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g23022309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g23032306_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g23032306_))))
                    (let ((_g23012327_
                           (lambda (_g23032312_)
                             ((lambda (_L2314_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state2231_
                                   _phi2297_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L2314_ (cons _L2279_ '()))))))
                              _g23032312_))))
                      (_g23012327_ _eid2295_)))
                  (if _block2299_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block2299_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L2280_)
                                                    (cons _eid2295_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L2280_)
                                  (cons _eid2295_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd22442274_
                                              _hd22412266_)
                                             (_g22332250_ _g22342253_))))
                                     (_g22332250_ _g22342253_))))
                             (_g22332250_ _g22342253_))))
                     (_g22332250_ _g22342253_)))))
          (_g22322330_ _stx2230_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx2162_ _state2163_)
      (let ((_g21652182_
             (lambda (_g21662179_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g21662179_))))
        (let ((_g21642227_
               (lambda (_g21662185_)
                 (if (gx#stx-pair? _g21662185_)
                     (let ((_e21692187_ (gx#stx-e _g21662185_)))
                       (let ((_hd21702190_ (##car _e21692187_))
                             (_tl21712192_ (##cdr _e21692187_)))
                         (if (gx#stx-pair? _tl21712192_)
                             (let ((_e21722195_ (gx#stx-e _tl21712192_)))
                               (let ((_hd21732198_ (##car _e21722195_))
                                     (_tl21742200_ (##cdr _e21722195_)))
                                 (if (gx#stx-pair? _tl21742200_)
                                     (let ((_e21752203_
                                            (gx#stx-e _tl21742200_)))
                                       (let ((_hd21762206_ (##car _e21752203_))
                                             (_tl21772208_
                                              (##cdr _e21752203_)))
                                         (if (gx#stx-null? _tl21772208_)
                                             ((lambda (_L2211_ _L2212_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L2212_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2211_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd21762206_
                                              _hd21732198_)
                                             (_g21652182_ _g21662185_))))
                                     (_g21652182_ _g21662185_))))
                             (_g21652182_ _g21662185_))))
                     (_g21652182_ _g21662185_)))))
          (_g21642227_ _stx2162_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx2159_ _state2160_)
      (begin
        (gxc#meta-state-add-phi!
         _state2160_
         (gx#current-expander-phi)
         _stx2159_)
        (gxc#generate-meta-define-values% _stx2159_ _state2160_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx2156_ _state2157_)
      (begin
        (gxc#meta-state-add-phi!
         _state2157_
         (gx#current-expander-phi)
         _stx2156_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args2153_
      (apply make-struct-instance gxc#meta-state::t _$args2153_)))
  (define gxc#meta-state-src (make-struct-field-accessor gxc#meta-state::t '0))
  (define gxc#meta-state-n (make-struct-field-accessor gxc#meta-state::t '1))
  (define gxc#meta-state-open
    (make-struct-field-accessor gxc#meta-state::t '2))
  (define gxc#meta-state-blocks
    (make-struct-field-accessor gxc#meta-state::t '3))
  (define gxc#meta-state-src-set!
    (make-struct-field-mutator gxc#meta-state::t '0))
  (define gxc#meta-state-n-set!
    (make-struct-field-mutator gxc#meta-state::t '1))
  (define gxc#meta-state-open-set!
    (make-struct-field-mutator gxc#meta-state::t '2))
  (define gxc#meta-state-blocks-set!
    (make-struct-field-mutator gxc#meta-state::t '3))
  (define gxc#meta-state:::init!
    (lambda (_self2150_ _ctx2151_)
      (direct-struct-instance-init!
       _self2150_
       (symbol->string
        (##structure-ref _ctx2151_ '1 gx#expander-context::t '#f))
       '1
       (make-hash-table-eq)
       '())))
  (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
  (define gxc#meta-state-block::t
    (make-struct-type
     'gxc#meta-state-block::t
     '#f
     '4
     'meta-state-block
     '()
     '#f))
  (define gxc#meta-state-block?
    (make-struct-predicate gxc#meta-state-block::t))
  (define gxc#make-meta-state-block
    (lambda _$args2147_
      (apply make-struct-instance gxc#meta-state-block::t _$args2147_)))
  (define gxc#meta-state-block-ctx
    (make-struct-field-accessor gxc#meta-state-block::t '0))
  (define gxc#meta-state-block-phi
    (make-struct-field-accessor gxc#meta-state-block::t '1))
  (define gxc#meta-state-block-n
    (make-struct-field-accessor gxc#meta-state-block::t '2))
  (define gxc#meta-state-block-code
    (make-struct-field-accessor gxc#meta-state-block::t '3))
  (define gxc#meta-state-block-ctx-set!
    (make-struct-field-mutator gxc#meta-state-block::t '0))
  (define gxc#meta-state-block-phi-set!
    (make-struct-field-mutator gxc#meta-state-block::t '1))
  (define gxc#meta-state-block-n-set!
    (make-struct-field-mutator gxc#meta-state-block::t '2))
  (define gxc#meta-state-block-code-set!
    (make-struct-field-mutator gxc#meta-state-block::t '3))
  (define gxc#meta-state-begin-phi!
    (lambda (_state2106_ _phi2107_)
      (let ((_state21082116_ _state2106_))
        (let ((_E21102120_
               (lambda () (error '"No clause matching" _state21082116_))))
          (let ((_K21112129_
                 (lambda (_open2123_ _n2124_ _src2125_)
                   (if (hash-get _open2123_ _phi2107_)
                       '#f
                       (let ((_block-ref2127_
                              (string-append
                               _src2125_
                               '"__"
                               (number->string _n2124_))))
                         (begin
                           (##structure-set!
                            _state2106_
                            (fx1+ _n2124_)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (hash-put!
                            _open2123_
                            _phi2107_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi2107_
                             _n2124_
                             '()))
                           _block-ref2127_))))))
            (if (struct-instance? gxc#meta-state::t _state21082116_)
                (let ((_e21122132_ (##vector-ref _state21082116_ '1)))
                  (let ((_src2135_ _e21122132_))
                    (let ((_e21132137_ (##vector-ref _state21082116_ '2)))
                      (let ((_n2140_ _e21132137_))
                        (let ((_e21142142_ (##vector-ref _state21082116_ '3)))
                          (let ((_open2145_ _e21142142_))
                            (_K21112129_ _open2145_ _n2140_ _src2135_)))))))
                (_E21102120_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state2100_ _phi2101_ _stx2102_)
      (let ((_block2104_
             (hash-get
              (##structure-ref _state2100_ '3 gxc#meta-state::t '#f)
              _phi2101_)))
        (##structure-set!
         _block2104_
         (cons _stx2102_
               (##structure-ref _block2104_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state2095_)
      (begin
        (##structure-set!
         _state2095_
         (hash-fold
          (lambda (_g8514_ _block2097_ _r2098_) (cons _block2097_ _r2098_))
          (##structure-ref _state2095_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state2095_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state2095_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state2047_)
      (begin
        (gxc#meta-state-end-phi! _state2047_)
        (foldl (lambda (_block2049_ _r2050_)
                 (let ((_block20512060_ _block2049_))
                   (let ((_E20532064_
                          (lambda ()
                            (error '"No clause matching" _block20512060_))))
                     (let ((_K20542072_
                            (lambda (_code2067_ _n2068_ _phi2069_ _ctx2070_)
                              (if (null? _code2067_)
                                  _r2050_
                                  (cons (cons _ctx2070_
                                              (cons _phi2069_
                                                    (cons _n2068_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code2067_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r2050_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block20512060_)
                           (let ((_e20552075_
                                  (##vector-ref _block20512060_ '1)))
                             (let ((_ctx2078_ _e20552075_))
                               (let ((_e20562080_
                                      (##vector-ref _block20512060_ '2)))
                                 (let ((_phi2083_ _e20562080_))
                                   (let ((_e20572085_
                                          (##vector-ref _block20512060_ '3)))
                                     (let ((_n2088_ _e20572085_))
                                       (let ((_e20582090_
                                              (##vector-ref
                                               _block20512060_
                                               '4)))
                                         (let ((_code2093_ _e20582090_))
                                           (_K20542072_
                                            _code2093_
                                            _n2088_
                                            _phi2083_
                                            _ctx2078_)))))))))
                           (_E20532064_))))))
               '()
               (##structure-ref _state2047_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx2043_)
      (let ((_ht2045_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx2043_ _ht2045_)
          _ht2045_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx1975_ _ht1976_)
      (let ((_g19781995_
             (lambda (_g19791992_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g19791992_))))
        (let ((_g19772040_
               (lambda (_g19791998_)
                 (if (gx#stx-pair? _g19791998_)
                     (let ((_e19822000_ (gx#stx-e _g19791998_)))
                       (let ((_hd19832003_ (##car _e19822000_))
                             (_tl19842005_ (##cdr _e19822000_)))
                         (if (gx#stx-pair? _tl19842005_)
                             (let ((_e19852008_ (gx#stx-e _tl19842005_)))
                               (let ((_hd19862011_ (##car _e19852008_))
                                     (_tl19872013_ (##cdr _e19852008_)))
                                 (if (gx#stx-pair? _tl19872013_)
                                     (let ((_e19882016_
                                            (gx#stx-e _tl19872013_)))
                                       (let ((_hd19892019_ (##car _e19882016_))
                                             (_tl19902021_
                                              (##cdr _e19882016_)))
                                         (if (gx#stx-null? _tl19902021_)
                                             ((lambda (_L2024_ _L2025_)
                                                (gxc#compile-e
                                                 _L2024_
                                                 _ht1976_))
                                              _hd19892019_
                                              _hd19862011_)
                                             (_g19781995_ _g19791998_))))
                                     (_g19781995_ _g19791998_))))
                             (_g19781995_ _g19791998_))))
                     (_g19781995_ _g19791998_)))))
          (_g19772040_ _stx1975_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx1857_ _ht1858_)
      (let ((_g18601888_
             (lambda (_g18611885_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g18611885_))))
        (let ((_g18591972_
               (lambda (_g18611891_)
                 (if (gx#stx-pair? _g18611891_)
                     (let ((_e18641893_ (gx#stx-e _g18611891_)))
                       (let ((_hd18651896_ (##car _e18641893_))
                             (_tl18661898_ (##cdr _e18641893_)))
                         (if (gx#stx-pair/null? _tl18661898_)
                             (if (fx>= (gx#stx-length _tl18661898_) '0)
                                 (let ((_g8515_ (gx#syntax-split-splice
                                                 _tl18661898_
                                                 '0)))
                                   (begin
                                     (let ((_g8516_ (values-count _g8515_)))
                                       (if (not (fx= _g8516_ 2))
                                           (error "Context expects 2 values"
                                                  _g8516_)))
                                     (let ((_target18671901_
                                            (values-ref _g8515_ 0))
                                           (_tl18691903_
                                            (values-ref _g8515_ 1)))
                                       (if (gx#stx-null? _tl18691903_)
                                           (letrec ((_loop18701906_
                                                     (lambda (_hd18681909_
                                                              _body18741911_
                                                              _hd18751913_)
                                                       (if (gx#stx-pair?
                                                            _hd18681909_)
                                                           (let ((_e18711916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd18681909_)))
                     (let ((_lp-hd18721919_ (##car _e18711916_))
                           (_lp-tl18731921_ (##cdr _e18711916_)))
                       (if (gx#stx-pair? _lp-hd18721919_)
                           (let ((_e18781924_ (gx#stx-e _lp-hd18721919_)))
                             (let ((_hd18791927_ (##car _e18781924_))
                                   (_tl18801929_ (##cdr _e18781924_)))
                               (if (gx#stx-pair? _tl18801929_)
                                   (let ((_e18811932_ (gx#stx-e _tl18801929_)))
                                     (let ((_hd18821935_ (##car _e18811932_))
                                           (_tl18831937_ (##cdr _e18811932_)))
                                       (if (gx#stx-null? _tl18831937_)
                                           (_loop18701906_
                                            _lp-tl18731921_
                                            (cons _hd18821935_ _body18741911_)
                                            (cons _hd18791927_ _hd18751913_))
                                           (_g18601888_ _g18611891_))))
                                   (_g18601888_ _g18611891_))))
                           (_g18601888_ _g18611891_))))
                   (let ((_body18761940_ (reverse _body18741911_))
                         (_hd18771942_ (reverse _hd18751913_)))
                     ((lambda (_L1945_ _L1946_)
                        (for-each
                         (lambda (_g19601962_)
                           (gxc#compile-e _g19601962_ _ht1858_))
                         (begin
                           '#!void
                           (foldr (lambda (_g19641967_ _g19651969_)
                                    (cons _g19641967_ _g19651969_))
                                  '()
                                  _L1945_))))
                      _body18761940_
                      _hd18771942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop18701906_
                                              _target18671901_
                                              '()
                                              '()))
                                           (_g18601888_ _g18611891_)))))
                                 (_g18601888_ _g18611891_))
                             (_g18601888_ _g18611891_))))
                     (_g18601888_ _g18611891_)))))
          (_g18591972_ _stx1857_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx1710_ _ht1711_)
      (let ((_g17131748_
             (lambda (_g17141745_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g17141745_))))
        (let ((_g17121854_
               (lambda (_g17141751_)
                 (if (gx#stx-pair? _g17141751_)
                     (let ((_e17181753_ (gx#stx-e _g17141751_)))
                       (let ((_hd17191756_ (##car _e17181753_))
                             (_tl17201758_ (##cdr _e17181753_)))
                         (if (gx#stx-pair? _tl17201758_)
                             (let ((_e17211761_ (gx#stx-e _tl17201758_)))
                               (let ((_hd17221764_ (##car _e17211761_))
                                     (_tl17231766_ (##cdr _e17211761_)))
                                 (if (gx#stx-pair/null? _hd17221764_)
                                     (if (fx>= (gx#stx-length _hd17221764_) '0)
                                         (let ((_g8517_ (gx#syntax-split-splice
                                                         _hd17221764_
                                                         '0)))
                                           (begin
                                             (let ((_g8518_ (values-count
                                                             _g8517_)))
                                               (if (not (fx= _g8518_ 2))
                                                   (error "Context expects 2 values"
                                                          _g8518_)))
                                             (let ((_target17241769_
                                                    (values-ref _g8517_ 0))
                                                   (_tl17261771_
                                                    (values-ref _g8517_ 1)))
                                               (if (gx#stx-null? _tl17261771_)
                                                   (letrec ((_loop17271774_
                                                             (lambda (_hd17251777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr17311779_
                              _hd17321781_)
                       (if (gx#stx-pair? _hd17251777_)
                           (let ((_e17281784_ (gx#stx-e _hd17251777_)))
                             (let ((_lp-hd17291787_ (##car _e17281784_))
                                   (_lp-tl17301789_ (##cdr _e17281784_)))
                               (if (gx#stx-pair? _lp-hd17291787_)
                                   (let ((_e17351792_
                                          (gx#stx-e _lp-hd17291787_)))
                                     (let ((_hd17361795_ (##car _e17351792_))
                                           (_tl17371797_ (##cdr _e17351792_)))
                                       (if (gx#stx-pair? _tl17371797_)
                                           (let ((_e17381800_
                                                  (gx#stx-e _tl17371797_)))
                                             (let ((_hd17391803_
                                                    (##car _e17381800_))
                                                   (_tl17401805_
                                                    (##cdr _e17381800_)))
                                               (if (gx#stx-null? _tl17401805_)
                                                   (_loop17271774_
                                                    _lp-tl17301789_
                                                    (cons _hd17391803_
                                                          _expr17311779_)
                                                    (cons _hd17361795_
                                                          _hd17321781_))
                                                   (_g17131748_ _g17141751_))))
                                           (_g17131748_ _g17141751_))))
                                   (_g17131748_ _g17141751_))))
                           (let ((_expr17331808_ (reverse _expr17311779_))
                                 (_hd17341810_ (reverse _hd17321781_)))
                             (if (gx#stx-pair? _tl17231766_)
                                 (let ((_e17411813_ (gx#stx-e _tl17231766_)))
                                   (let ((_hd17421816_ (##car _e17411813_))
                                         (_tl17431818_ (##cdr _e17411813_)))
                                     (if (gx#stx-null? _tl17431818_)
                                         ((lambda (_L1821_ _L1822_ _L1823_)
                                            (if (for-each
                                                 (lambda (_g18421844_)
                                                   (gxc#compile-e
                                                    _g18421844_
                                                    _ht1711_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g18461849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g18471851_)
                    (cons _g18461849_ _g18471851_))
                  '()
                  _L1822_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e
                                                 _L1821_
                                                 _ht1711_)
                                                (_g17131748_ _g17141751_)))
                                          _hd17421816_
                                          _expr17331808_
                                          _hd17341810_)
                                         (_g17131748_ _g17141751_))))
                                 (_g17131748_ _g17141751_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop17271774_
                                                      _target17241769_
                                                      '()
                                                      '()))
                                                   (_g17131748_
                                                    _g17141751_)))))
                                         (_g17131748_ _g17141751_))
                                     (_g17131748_ _g17141751_))))
                             (_g17131748_ _g17141751_))))
                     (_g17131748_ _g17141751_)))))
          (_g17121854_ _stx1710_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx1653_ _ht1654_)
      (let ((_g16561669_
             (lambda (_g16571666_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g16571666_))))
        (let ((_g16551707_
               (lambda (_g16571672_)
                 (if (gx#stx-pair? _g16571672_)
                     (let ((_e16591674_ (gx#stx-e _g16571672_)))
                       (let ((_hd16601677_ (##car _e16591674_))
                             (_tl16611679_ (##cdr _e16591674_)))
                         (if (gx#stx-pair? _tl16611679_)
                             (let ((_e16621682_ (gx#stx-e _tl16611679_)))
                               (let ((_hd16631685_ (##car _e16621682_))
                                     (_tl16641687_ (##cdr _e16621682_)))
                                 (if (gx#stx-null? _tl16641687_)
                                     ((lambda (_L1690_)
                                        (let ((_bind1702_
                                               (gx#resolve-identifier__0
                                                _L1690_)))
                                          (let ((_eid1704_
                                                 (if _bind1702_
                                                     (##structure-ref
                                                      _bind1702_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L1690_))))
                                            (let ()
                                              (hash-put!
                                               _ht1654_
                                               _eid1704_
                                               _eid1704_)))))
                                      _hd16631685_)
                                     (_g16561669_ _g16571672_))))
                             (_g16561669_ _g16571672_))))
                     (_g16561669_ _g16571672_)))))
          (_g16551707_ _stx1653_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx1580_ _ht1581_)
      (let ((_g15831600_
             (lambda (_g15841597_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g15841597_))))
        (let ((_g15821650_
               (lambda (_g15841603_)
                 (if (gx#stx-pair? _g15841603_)
                     (let ((_e15871605_ (gx#stx-e _g15841603_)))
                       (let ((_hd15881608_ (##car _e15871605_))
                             (_tl15891610_ (##cdr _e15871605_)))
                         (if (gx#stx-pair? _tl15891610_)
                             (let ((_e15901613_ (gx#stx-e _tl15891610_)))
                               (let ((_hd15911616_ (##car _e15901613_))
                                     (_tl15921618_ (##cdr _e15901613_)))
                                 (if (gx#stx-pair? _tl15921618_)
                                     (let ((_e15931621_
                                            (gx#stx-e _tl15921618_)))
                                       (let ((_hd15941624_ (##car _e15931621_))
                                             (_tl15951626_
                                              (##cdr _e15931621_)))
                                         (if (gx#stx-null? _tl15951626_)
                                             ((lambda (_L1629_ _L1630_)
                                                (let ((_bind1645_
                                                       (gx#resolve-identifier__0
                                                        _L1630_)))
                                                  (let ((_eid1647_
                                                         (if _bind1645_
                                                             (##structure-ref
                                                              _bind1645_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L1630_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht1581_
                                                         _eid1647_
                                                         _eid1647_)
                                                        (gxc#compile-e
                                                         _L1629_
                                                         _ht1581_))))))
                                              _hd15941624_
                                              _hd15911616_)
                                             (_g15831600_ _g15841603_))))
                                     (_g15831600_ _g15841603_))))
                             (_g15831600_ _g15841603_))))
                     (_g15831600_ _g15841603_)))))
          (_g15821650_ _stx1580_)))))
  (define gxc#collect-refs-struct-instancep%
    (lambda (_stx1512_ _ht1513_)
      (let ((_g15151532_
             (lambda (_g15161529_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g15161529_))))
        (let ((_g15141577_
               (lambda (_g15161535_)
                 (if (gx#stx-pair? _g15161535_)
                     (let ((_e15191537_ (gx#stx-e _g15161535_)))
                       (let ((_hd15201540_ (##car _e15191537_))
                             (_tl15211542_ (##cdr _e15191537_)))
                         (if (gx#stx-pair? _tl15211542_)
                             (let ((_e15221545_ (gx#stx-e _tl15211542_)))
                               (let ((_hd15231548_ (##car _e15221545_))
                                     (_tl15241550_ (##cdr _e15221545_)))
                                 (if (gx#stx-pair? _tl15241550_)
                                     (let ((_e15251553_
                                            (gx#stx-e _tl15241550_)))
                                       (let ((_hd15261556_ (##car _e15251553_))
                                             (_tl15271558_
                                              (##cdr _e15251553_)))
                                         (if (gx#stx-null? _tl15271558_)
                                             ((lambda (_L1561_ _L1562_)
                                                (gxc#compile-e
                                                 _L1561_
                                                 _ht1513_))
                                              _hd15261556_
                                              _hd15231548_)
                                             (_g15151532_ _g15161535_))))
                                     (_g15151532_ _g15161535_))))
                             (_g15151532_ _g15161535_))))
                     (_g15151532_ _g15161535_)))))
          (_g15141577_ _stx1512_)))))
  (define gxc#collect-refs-struct-ref%
    (lambda (_stx1428_ _ht1429_)
      (let ((_g14311452_
             (lambda (_g14321449_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g14321449_))))
        (let ((_g14301509_
               (lambda (_g14321455_)
                 (if (gx#stx-pair? _g14321455_)
                     (let ((_e14361457_ (gx#stx-e _g14321455_)))
                       (let ((_hd14371460_ (##car _e14361457_))
                             (_tl14381462_ (##cdr _e14361457_)))
                         (if (gx#stx-pair? _tl14381462_)
                             (let ((_e14391465_ (gx#stx-e _tl14381462_)))
                               (let ((_hd14401468_ (##car _e14391465_))
                                     (_tl14411470_ (##cdr _e14391465_)))
                                 (if (gx#stx-pair? _tl14411470_)
                                     (let ((_e14421473_
                                            (gx#stx-e _tl14411470_)))
                                       (let ((_hd14431476_ (##car _e14421473_))
                                             (_tl14441478_
                                              (##cdr _e14421473_)))
                                         (if (gx#stx-pair? _tl14441478_)
                                             (let ((_e14451481_
                                                    (gx#stx-e _tl14441478_)))
                                               (let ((_hd14461484_
                                                      (##car _e14451481_))
                                                     (_tl14471486_
                                                      (##cdr _e14451481_)))
                                                 (if (gx#stx-null?
                                                      _tl14471486_)
                                                     ((lambda (_L1489_
                                                               _L1490_
                                                               _L1491_)
                                                        (begin
                                                          (gxc#compile-e
                                                           _L1491_
                                                           _ht1429_)
                                                          (gxc#compile-e
                                                           _L1490_
                                                           _ht1429_)
                                                          (gxc#compile-e
                                                           _L1489_
                                                           _ht1429_)))
                                                      _hd14461484_
                                                      _hd14431476_
                                                      _hd14401468_)
                                                     (_g14311452_
                                                      _g14321455_))))
                                             (_g14311452_ _g14321455_))))
                                     (_g14311452_ _g14321455_))))
                             (_g14311452_ _g14321455_))))
                     (_g14311452_ _g14321455_)))))
          (_g14301509_ _stx1428_)))))
  (define gxc#collect-refs-struct-setq%
    (lambda (_stx1328_ _ht1329_)
      (let ((_g13311356_
             (lambda (_g13321353_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g13321353_))))
        (let ((_g13301425_
               (lambda (_g13321359_)
                 (if (gx#stx-pair? _g13321359_)
                     (let ((_e13371361_ (gx#stx-e _g13321359_)))
                       (let ((_hd13381364_ (##car _e13371361_))
                             (_tl13391366_ (##cdr _e13371361_)))
                         (if (gx#stx-pair? _tl13391366_)
                             (let ((_e13401369_ (gx#stx-e _tl13391366_)))
                               (let ((_hd13411372_ (##car _e13401369_))
                                     (_tl13421374_ (##cdr _e13401369_)))
                                 (if (gx#stx-pair? _tl13421374_)
                                     (let ((_e13431377_
                                            (gx#stx-e _tl13421374_)))
                                       (let ((_hd13441380_ (##car _e13431377_))
                                             (_tl13451382_
                                              (##cdr _e13431377_)))
                                         (if (gx#stx-pair? _tl13451382_)
                                             (let ((_e13461385_
                                                    (gx#stx-e _tl13451382_)))
                                               (let ((_hd13471388_
                                                      (##car _e13461385_))
                                                     (_tl13481390_
                                                      (##cdr _e13461385_)))
                                                 (if (gx#stx-pair?
                                                      _tl13481390_)
                                                     (let ((_e13491393_
                                                            (gx#stx-e
                                                             _tl13481390_)))
                                                       (let ((_hd13501396_
                                                              (##car _e13491393_))
                                                             (_tl13511398_
                                                              (##cdr _e13491393_)))
                                                         (if (gx#stx-null?
                                                              _tl13511398_)
                                                             ((lambda (_L1401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L1402_
                               _L1403_
                               _L1404_)
                        (begin
                          (gxc#compile-e _L1404_ _ht1329_)
                          (gxc#compile-e _L1403_ _ht1329_)
                          (gxc#compile-e _L1402_ _ht1329_)
                          (gxc#compile-e _L1401_ _ht1329_)))
                      _hd13501396_
                      _hd13471388_
                      _hd13441380_
                      _hd13411372_)
                     (_g13311356_ _g13321359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g13311356_
                                                      _g13321359_))))
                                             (_g13311356_ _g13321359_))))
                                     (_g13311356_ _g13321359_))))
                             (_g13311356_ _g13321359_))))
                     (_g13311356_ _g13321359_)))))
          (_g13301425_ _stx1328_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx1290_)
      (let ((_g12921302_
             (lambda (_g12931299_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12931299_))))
        (let ((_g12911325_
               (lambda (_g12931305_)
                 (if (gx#stx-pair? _g12931305_)
                     (let ((_e12951307_ (gx#stx-e _g12931305_)))
                       (let ((_hd12961310_ (##car _e12951307_))
                             (_tl12971312_ (##cdr _e12951307_)))
                         ((lambda (_L1315_) (ormap gxc#compile-e _L1315_))
                          _tl12971312_)))
                     (_g12921302_ _g12931305_)))))
          (_g12911325_ _stx1290_))))))
