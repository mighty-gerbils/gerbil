(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx9587_ . _args9588_)
      (let ((_g95909600_
             (lambda (_g95919597_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95919597_))))
        (let ((_g95899628_
               (lambda (_g95919603_)
                 (if (gx#stx-pair? _g95919603_)
                     (let ((_e95939605_ (gx#stx-e _g95919603_)))
                       (let ((_hd95949608_ (##car _e95939605_))
                             (_tl95959610_ (##cdr _e95939605_)))
                         ((lambda (_L9613_)
                            (let ((_$e9623_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L9613_)
                                    '#f)))
                              (if _$e9623_
                                  ((lambda (_method9626_)
                                     (apply _method9626_ _stx9587_ _args9588_))
                                   _$e9623_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx9587_
                                   _L9613_))))
                          _hd95949608_)))
                     (_g95909600_ _g95919603_)))))
          (_g95899628_ _stx9587_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl9584_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9584_ '%#lambda void)
           (hash-put! _tbl9584_ '%#case-lambda void)
           (hash-put! _tbl9584_ '%#let-values void)
           (hash-put! _tbl9584_ '%#letrec-values void)
           (hash-put! _tbl9584_ '%#letrec*-values void)
           (hash-put! _tbl9584_ '%#quote void)
           (hash-put! _tbl9584_ '%#quote-syntax void)
           (hash-put! _tbl9584_ '%#call void)
           (hash-put! _tbl9584_ '%#if void)
           (hash-put! _tbl9584_ '%#ref void)
           (hash-put! _tbl9584_ '%#set! void)
           (hash-put! _tbl9584_ '%#struct-instance? void)
           (hash-put! _tbl9584_ '%#struct-direct-instance? void)
           (hash-put! _tbl9584_ '%#struct-ref void)
           (hash-put! _tbl9584_ '%#struct-set! void)
           _tbl9584_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl9580_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9580_ '%#begin void)
           (hash-put! _tbl9580_ '%#begin-syntax void)
           (hash-put! _tbl9580_ '%#begin-foreign void)
           (hash-put! _tbl9580_ '%#module void)
           (hash-put! _tbl9580_ '%#import void)
           (hash-put! _tbl9580_ '%#export void)
           (hash-put! _tbl9580_ '%#provide void)
           (hash-put! _tbl9580_ '%#extern void)
           (hash-put! _tbl9580_ '%#define-values void)
           (hash-put! _tbl9580_ '%#define-syntax void)
           (hash-put! _tbl9580_ '%#define-alias void)
           (hash-put! _tbl9580_ '%#declare void)
           _tbl9580_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl9576_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9576_ (force gxc#&void-special-form))
           (hash-copy! _tbl9576_ (force gxc#&void-expression))
           _tbl9576_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl9572_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9572_ (force gxc#&void-expression))
           (hash-copy! _tbl9572_ (force gxc#&void-special-form))
           (hash-put! _tbl9572_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl9572_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl9572_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl9572_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl9572_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl9572_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx9565_ . _args9567_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9565_ _args9567_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl9562_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9562_ (force gxc#&void))
           (hash-put! _tbl9562_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl9562_ '%#module gxc#lift-modules-module%)
           _tbl9562_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx9555_ . _args9557_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9555_ _args9557_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl9552_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9552_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl9552_ '%#begin-syntax false)
           (hash-put! _tbl9552_ '%#begin-foreign true)
           (hash-put! _tbl9552_ '%#module false)
           (hash-put! _tbl9552_ '%#import false)
           (hash-put! _tbl9552_ '%#export false)
           (hash-put! _tbl9552_ '%#provide false)
           (hash-put! _tbl9552_ '%#extern false)
           (hash-put! _tbl9552_ '%#define-values true)
           (hash-put! _tbl9552_ '%#define-syntax false)
           (hash-put! _tbl9552_ '%#define-alias false)
           (hash-put! _tbl9552_ '%#declare false)
           (hash-put! _tbl9552_ '%#lambda true)
           (hash-put! _tbl9552_ '%#case-lambda true)
           (hash-put! _tbl9552_ '%#let-values true)
           (hash-put! _tbl9552_ '%#letrec-values true)
           (hash-put! _tbl9552_ '%#letrec*-values true)
           (hash-put! _tbl9552_ '%#quote true)
           (hash-put! _tbl9552_ '%#call true)
           (hash-put! _tbl9552_ '%#if true)
           (hash-put! _tbl9552_ '%#ref true)
           (hash-put! _tbl9552_ '%#set! true)
           (hash-put! _tbl9552_ '%#struct-instance? true)
           (hash-put! _tbl9552_ '%#struct-direct-instance? true)
           (hash-put! _tbl9552_ '%#struct-ref true)
           (hash-put! _tbl9552_ '%#struct-set! true)
           _tbl9552_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx9545_ . _args9547_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9545_ _args9547_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl9542_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9542_ '%#begin gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#set! gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#struct-instance? gxc#generate-runtime-empty)
           (hash-put!
            _tbl9542_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#struct-ref gxc#generate-runtime-empty)
           (hash-put! _tbl9542_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl9542_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl9538_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9538_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl9538_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl9538_ '%#import gxc#generate-runtime-loader-import%)
           _tbl9538_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx9531_ . _args9533_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9531_ _args9533_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl9528_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9528_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl9528_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl9528_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put!
            _tbl9528_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl9528_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl9528_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl9528_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl9528_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl9528_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl9528_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl9528_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl9528_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl9528_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl9528_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl9528_ '%#set! gxc#generate-runtime-setq%)
           (hash-put!
            _tbl9528_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (hash-put!
            _tbl9528_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (hash-put! _tbl9528_ '%#struct-ref gxc#generate-runtime-struct-ref%)
           (hash-put!
            _tbl9528_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl9528_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx9521_ . _args9523_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9521_ _args9523_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl9518_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9518_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl9518_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl9518_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl9518_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx9511_ . _args9513_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9511_ _args9513_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl9508_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9508_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl9508_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl9508_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl9508_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl9508_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put! _tbl9508_ '%#letrec*-values gxc#collect-refs-let-values%)
           (hash-put! _tbl9508_ '%#quote void)
           (hash-put! _tbl9508_ '%#quote-syntax void)
           (hash-put! _tbl9508_ '%#call gxc#collect-begin%)
           (hash-put! _tbl9508_ '%#if gxc#collect-begin%)
           (hash-put! _tbl9508_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl9508_ '%#set! gxc#collect-refs-setq%)
           (hash-put!
            _tbl9508_
            '%#struct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put!
            _tbl9508_
            '%#struct-direct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put! _tbl9508_ '%#struct-ref gxc#collect-refs-struct-ref%)
           (hash-put! _tbl9508_ '%#struct-set! gxc#collect-refs-struct-setq%)
           _tbl9508_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx9501_ . _args9503_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9501_ _args9503_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl9498_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9498_ (force gxc#&void-expression))
           (hash-put! _tbl9498_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl9498_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl9498_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl9498_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl9498_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl9498_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl9498_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl9498_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl9498_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl9498_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl9498_ '%#begin-foreign void)
           (hash-put! _tbl9498_ '%#declare void)
           _tbl9498_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx9491_ . _args9493_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9491_ _args9493_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl9488_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9488_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl9488_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl9488_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl9488_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl9488_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl9488_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#struct-instance? gxc#generate-meta-phi-expr)
           (hash-put!
            _tbl9488_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#struct-ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#struct-set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl9488_ '%#declare void)
           _tbl9488_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx9481_ . _args9483_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9481_ _args9483_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx9438_ . _args9439_)
      (let ((_g94419451_
             (lambda (_g94429448_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94429448_))))
        (let ((_g94409478_
               (lambda (_g94429454_)
                 (if (gx#stx-pair? _g94429454_)
                     (let ((_e94449456_ (gx#stx-e _g94429454_)))
                       (let ((_hd94459459_ (##car _e94449456_))
                             (_tl94469461_ (##cdr _e94449456_)))
                         ((lambda (_L9464_)
                            (for-each
                             (lambda (_g94739475_)
                               (apply gxc#compile-e _g94739475_ _args9439_))
                             (gx#stx-e _L9464_)))
                          _tl94469461_)))
                     (_g94419451_ _g94429454_)))))
          (_g94409478_ _stx9438_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx9394_ . _args9395_)
      (let ((_g93979407_
             (lambda (_g93989404_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93989404_))))
        (let ((_g93969435_
               (lambda (_g93989410_)
                 (if (gx#stx-pair? _g93989410_)
                     (let ((_e94009412_ (gx#stx-e _g93989410_)))
                       (let ((_hd94019415_ (##car _e94009412_))
                             (_tl94029417_ (##cdr _e94009412_)))
                         ((lambda (_L9420_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g94309432_)
                                  (apply gxc#compile-e _g94309432_ _args9395_))
                                (gx#stx-e _L9420_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl94029417_)))
                     (_g93979407_ _g93989410_)))))
          (_g93969435_ _stx9394_)))))
  (define gxc#collect-module%
    (lambda (_stx9336_ . _args9337_)
      (let ((_g93399353_
             (lambda (_g93409350_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93409350_))))
        (let ((_g93389391_
               (lambda (_g93409356_)
                 (if (gx#stx-pair? _g93409356_)
                     (let ((_e93439358_ (gx#stx-e _g93409356_)))
                       (let ((_hd93449361_ (##car _e93439358_))
                             (_tl93459363_ (##cdr _e93439358_)))
                         (if (gx#stx-pair? _tl93459363_)
                             (let ((_e93469366_ (gx#stx-e _tl93459363_)))
                               (let ((_hd93479369_ (##car _e93469366_))
                                     (_tl93489371_ (##cdr _e93469366_)))
                                 ((lambda (_L9374_ _L9375_)
                                    (let ((_ctx9388_
                                           (gx#syntax-local-e__0 _L9375_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx9388_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args9337_))
                                       gx#current-expander-context
                                       _ctx9388_)))
                                  _tl93489371_
                                  _hd93479369_)))
                             (_g93399353_ _g93409356_))))
                     (_g93399353_ _g93409356_)))))
          (_g93389391_ _stx9336_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9267_)
      (let ((_g92699286_
             (lambda (_g92709283_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92709283_))))
        (let ((_g92689333_
               (lambda (_g92709289_)
                 (if (gx#stx-pair? _g92709289_)
                     (let ((_e92739291_ (gx#stx-e _g92709289_)))
                       (let ((_hd92749294_ (##car _e92739291_))
                             (_tl92759296_ (##cdr _e92739291_)))
                         (if (gx#stx-pair? _tl92759296_)
                             (let ((_e92769299_ (gx#stx-e _tl92759296_)))
                               (let ((_hd92779302_ (##car _e92769299_))
                                     (_tl92789304_ (##cdr _e92769299_)))
                                 (if (gx#stx-pair? _tl92789304_)
                                     (let ((_e92799307_
                                            (gx#stx-e _tl92789304_)))
                                       (let ((_hd92809310_ (##car _e92799307_))
                                             (_tl92819312_
                                              (##cdr _e92799307_)))
                                         (if (gx#stx-null? _tl92819312_)
                                             ((lambda (_L9315_ _L9316_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9331_)
                                                   (if (gx#identifier?
                                                        _bind9331_)
                                                       (gxc#add-module-binding!
                                                        _bind9331_
                                                        '#f)
                                                       '#!void))
                                                 _L9316_))
                                              _hd92809310_
                                              _hd92779302_)
                                             (_g92699286_ _g92709289_))))
                                     (_g92699286_ _g92709289_))))
                             (_g92699286_ _g92709289_))))
                     (_g92699286_ _g92709289_)))))
          (_g92689333_ _stx9267_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9200_)
      (let ((_g92029219_
             (lambda (_g92039216_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92039216_))))
        (let ((_g92019264_
               (lambda (_g92039222_)
                 (if (gx#stx-pair? _g92039222_)
                     (let ((_e92069224_ (gx#stx-e _g92039222_)))
                       (let ((_hd92079227_ (##car _e92069224_))
                             (_tl92089229_ (##cdr _e92069224_)))
                         (if (gx#stx-pair? _tl92089229_)
                             (let ((_e92099232_ (gx#stx-e _tl92089229_)))
                               (let ((_hd92109235_ (##car _e92099232_))
                                     (_tl92119237_ (##cdr _e92099232_)))
                                 (if (gx#stx-pair? _tl92119237_)
                                     (let ((_e92129240_
                                            (gx#stx-e _tl92119237_)))
                                       (let ((_hd92139243_ (##car _e92129240_))
                                             (_tl92149245_
                                              (##cdr _e92129240_)))
                                         (if (gx#stx-null? _tl92149245_)
                                             ((lambda (_L9248_ _L9249_)
                                                (gxc#add-module-binding!
                                                 _L9249_
                                                 '#t))
                                              _hd92139243_
                                              _hd92109235_)
                                             (_g92029219_ _g92039222_))))
                                     (_g92029219_ _g92039222_))))
                             (_g92029219_ _g92039222_))))
                     (_g92029219_ _g92039222_)))))
          (_g92019264_ _stx9200_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9142_ _modules9143_)
      (let ((_g91459159_
             (lambda (_g91469156_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91469156_))))
        (let ((_g91449197_
               (lambda (_g91469162_)
                 (if (gx#stx-pair? _g91469162_)
                     (let ((_e91499164_ (gx#stx-e _g91469162_)))
                       (let ((_hd91509167_ (##car _e91499164_))
                             (_tl91519169_ (##cdr _e91499164_)))
                         (if (gx#stx-pair? _tl91519169_)
                             (let ((_e91529172_ (gx#stx-e _tl91519169_)))
                               (let ((_hd91539175_ (##car _e91529172_))
                                     (_tl91549177_ (##cdr _e91529172_)))
                                 ((lambda (_L9180_ _L9181_)
                                    (let ((_ctx9194_
                                           (gx#syntax-local-e__0 _L9181_)))
                                      (begin
                                        (set-box!
                                         _modules9143_
                                         (cons _ctx9194_
                                               (unbox _modules9143_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9194_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9143_))
                                         gx#current-expander-context
                                         _ctx9194_))))
                                  _tl91549177_
                                  _hd91539175_)))
                             (_g91459159_ _g91469162_))))
                     (_g91459159_ _g91469162_)))))
          (_g91449197_ _stx9142_)))))
  (define gxc#add-module-binding!
    (lambda (_id9136_ _syntax?9137_)
      (let ((_eid9139_
             (##structure-ref
              (gx#resolve-identifier__0 _id9136_)
              '1
              gx#binding::t
              '#f))
            (_ht9140_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9139_)
            '#!void
            (hash-put!
             _ht9140_
             _eid9139_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference _eid9139_)
              _syntax?9137_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9124_)
      (let ((_bind9126_ (gx#resolve-identifier__0 _id9124_)))
        (if _bind9126_
            (let ((_eid9128_ (##structure-ref _bind9126_ '1 gx#binding::t '#f))
                  (_ht9129_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9128_)
                  _eid9128_
                  (let ((_$e9131_ (table-ref _ht9129_ _eid9128_ '#f)))
                    (if _$e9131_
                        (values _$e9131_)
                        (if (##structure-instance-of?
                             _bind9126_
                             'gx#local-binding::t)
                            (let ((_gid9134_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid9128_)))
                              (begin
                                (hash-put! _ht9129_ _eid9128_ _gid9134_)
                                _gid9134_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id9124_
                             _eid9128_
                             _bind9126_))))))
            (if (interned-symbol? (gx#stx-e _id9124_))
                (gx#stx-e _id9124_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9124_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9122_)
      (if (gx#identifier? _id9122_)
          (gxc#generate-runtime-binding-id _id9122_)
          (gxc#generate-runtime-temporary__0))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym9113_)
      (let ((_ht9115_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '1
              gxc#symbol-table::t
              '#f)))
        (let ((_$e9117_ (table-ref _ht9115_ _sym9113_ '#f)))
          (if _$e9117_
              (values _$e9117_)
              (let ((_g9120_ (make-symbol '"_" _sym9113_ '"_")))
                (begin (hash-put! _ht9115_ _sym9113_ _g9120_) _g9120_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9111_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9111_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9073_)
      (if (interned-symbol? _key9073_)
          _key9073_
          (if (uninterned-symbol? _key9073_)
              (gxc#generate-runtime-gensym-reference _key9073_)
              (let ((_key90749081_ _key9073_))
                (let ((_E90769085_
                       (lambda ()
                         (error '"No clause matching" _key90749081_))))
                  (let ((_K90779099_
                         (lambda (_mark9088_ _eid9089_)
                           (let ((_$e9091_
                                  (##structure-ref
                                   _mark9088_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9091_
                                 ((lambda (_ht9094_)
                                    (let ((_$e9096_
                                           (table-ref _ht9094_ _eid9089_ '#f)))
                                      (if _$e9096_
                                          (values _$e9096_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9089_))))
                                  _$e9091_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9089_))))))
                    (if (##pair? _key90749081_)
                        (let ((_hd90789102_ (##car _key90749081_))
                              (_tl90799104_ (##cdr _key90749081_)))
                          (let ((_eid9107_ _hd90789102_))
                            (let ((_mark9109_ _tl90799104_))
                              (_K90779099_ _mark9109_ _eid9107_))))
                        (_E90769085_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9058
      (lambda (_top9060_)
        (if _top9060_
            (let ((_ns9062_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9063_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9063_)
                  (make-symbol
                   _ns9062_
                   '"["
                   (number->string _phi9063_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9062_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9069_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9058 _top9069_))))
      (define gxc#generate-runtime-temporary
        (lambda _g9631_
          (let ((_g9630_ (length _g9631_)))
            (cond ((fx= _g9630_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g9631_))
                  ((fx= _g9630_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9058
                          _g9631_))
                  (else (error "No clause matching arguments" _g9631_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9057_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx8977_)
      (let ((_g89798989_
             (lambda (_g89808986_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89808986_))))
        (let ((_g89789054_
               (lambda (_g89808992_)
                 (if (gx#stx-pair? _g89808992_)
                     (let ((_e89828994_ (gx#stx-e _g89808992_)))
                       (let ((_hd89838997_ (##car _e89828994_))
                             (_tl89848999_ (##cdr _e89828994_)))
                         ((lambda (_L9002_)
                            (let ((_body9012_
                                   (gx#stx-map1 gxc#compile-e _L9002_)))
                              (let ((_body9051_
                                     (filter (lambda (_stx9014_)
                                               (let ((_g90179026_
                                                      (lambda (_g90189023_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g90189023_))))
                                                 (let ((_g90169033_
                                                        (lambda (_g90189029_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g90159048_
                                                          (lambda (_g90189036_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g90189036_)
                        (let ((_e90199038_ (gx#stx-e _g90189036_)))
                          (let ((_hd90209041_ (##car _e90199038_))
                                (_tl90219043_ (##cdr _e90199038_)))
                            (if (gx#identifier? _hd90209041_)
                                (if (gx#stx-eq? 'begin _hd90209041_)
                                    (if (gx#stx-null? _tl90219043_)
                                        ((lambda () '#f))
                                        (_g90169033_ _g90189036_))
                                    (_g90169033_ _g90189036_))
                                (_g90169033_ _g90189036_))))
                        (_g90169033_ _g90189036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90159048_
                                                      _stx9014_)))))
                                             _body9012_)))
                                (let ()
                                  (if (fx= (length _body9051_) '1)
                                      (car _body9051_)
                                      (cons 'begin _body9051_))))))
                          _tl89848999_)))
                     (_g89798989_ _g89808992_)))))
          (_g89789054_ _stx8977_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx8939_)
      (let ((_g89418951_
             (lambda (_g89428948_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89428948_))))
        (let ((_g89408974_
               (lambda (_g89428954_)
                 (if (gx#stx-pair? _g89428954_)
                     (let ((_e89448956_ (gx#stx-e _g89428954_)))
                       (let ((_hd89458959_ (##car _e89448956_))
                             (_tl89468961_ (##cdr _e89448956_)))
                         ((lambda (_L8964_)
                            (cons 'begin (gx#syntax->datum _L8964_)))
                          _tl89468961_)))
                     (_g89418951_ _g89428954_)))))
          (_g89408974_ _stx8939_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx8901_)
      (let ((_g89038913_
             (lambda (_g89048910_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89048910_))))
        (let ((_g89028936_
               (lambda (_g89048916_)
                 (if (gx#stx-pair? _g89048916_)
                     (let ((_e89068918_ (gx#stx-e _g89048916_)))
                       (let ((_hd89078921_ (##car _e89068918_))
                             (_tl89088923_ (##cdr _e89068918_)))
                         ((lambda (_L8926_)
                            (cons 'declare (map gx#syntax->datum _L8926_)))
                          _tl89088923_)))
                     (_g89038913_ _g89048916_)))))
          (_g89028936_ _stx8901_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8665_)
      (let ((_g86678684_
             (lambda (_g86688681_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86688681_))))
        (let ((_g86668898_
               (lambda (_g86688687_)
                 (if (gx#stx-pair? _g86688687_)
                     (let ((_e86718689_ (gx#stx-e _g86688687_)))
                       (let ((_hd86728692_ (##car _e86718689_))
                             (_tl86738694_ (##cdr _e86718689_)))
                         (if (gx#stx-pair? _tl86738694_)
                             (let ((_e86748697_ (gx#stx-e _tl86738694_)))
                               (let ((_hd86758700_ (##car _e86748697_))
                                     (_tl86768702_ (##cdr _e86748697_)))
                                 (if (gx#stx-pair? _tl86768702_)
                                     (let ((_e86778705_
                                            (gx#stx-e _tl86768702_)))
                                       (let ((_hd86788708_ (##car _e86778705_))
                                             (_tl86798710_
                                              (##cdr _e86778705_)))
                                         (if (gx#stx-null? _tl86798710_)
                                             ((lambda (_L8713_ _L8714_)
                                                (let ((_g87318744_
                                                       (lambda (_g87328741_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g87328741_))))
                                                  (let ((_g87308858_
                                                         (lambda (_g87328747_)
                                                           ((lambda ()
                                                              (let ((_tmp8751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9058
                              '#t)))
                        (let ((_body8855_
                               ((letrec ((_lp8753_
                                          (lambda (_rest8755_ _k8756_ _r8757_)
                                            (let ((_g87628778_
                                                   (lambda (_g87638775_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g87638775_))))
                                              (let ((_g87618785_
                                                     (lambda (_g87638781_)
                                                       ((lambda ()
                                                          (reverse _r8757_))))))
                                                (let ((_g87608806_
                                                       (lambda (_g87638788_)
                                                         ((lambda (_L8790_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8790_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8790_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp8751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8756_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r8757_)
                        (_g87618785_ _g87638788_)))
                  _g87638788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g87598830_
                                                         (lambda (_g87638809_)
                                                           (if (gx#stx-pair?
                                                                _g87638809_)
                                                               (let ((_e87708811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g87638809_)))
                         (let ((_hd87718814_ (##car _e87708811_))
                               (_tl87728816_ (##cdr _e87708811_)))
                           ((lambda (_L8819_ _L8820_)
                              (_lp8753_
                               _L8819_
                               (fx+ _k8756_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8820_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8756_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8757_)))
                            _tl87728816_
                            _hd87718814_)))
                       (_g87608806_ _g87638809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g87588852_
                                                           (lambda (_g87638833_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87638833_)
                         (let ((_e87658835_ (gx#stx-e _g87638833_)))
                           (let ((_hd87668838_ (##car _e87658835_))
                                 (_tl87678840_ (##cdr _e87658835_)))
                             (if (gx#stx-datum? _hd87668838_)
                                 (if (equal? (gx#stx-e _hd87668838_) '#f)
                                     ((lambda (_L8843_)
                                        (_lp8753_
                                         _L8843_
                                         (fx+ _k8756_ '1)
                                         _r8757_))
                                      _tl87678840_)
                                     (_g87598830_ _g87638833_))
                                 (_g87598830_ _g87638833_))))
                         (_g87598830_ _g87638833_)))))
              (_g87588852_ _rest8755_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8753_)
                                _L8714_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8751_
                                                    (cons (gxc#compile-e
                                                           _L8713_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8751_
                                               _L8714_)
                                              _body8855_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g87298880_
                                                           (lambda (_g87328861_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87328861_)
                         (let ((_e87378863_ (gx#stx-e _g87328861_)))
                           (let ((_hd87388866_ (##car _e87378863_))
                                 (_tl87398868_ (##cdr _e87378863_)))
                             (if (gx#stx-null? _tl87398868_)
                                 ((lambda (_L8871_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L8871_)
                                                (cons (gxc#compile-e _L8713_)
                                                      '()))))
                                  _hd87388866_)
                                 (_g87308858_ _g87328861_))))
                         (_g87308858_ _g87328861_)))))
              (let ((_g87288895_
                     (lambda (_g87328883_)
                       (if (gx#stx-pair? _g87328883_)
                           (let ((_e87338885_ (gx#stx-e _g87328883_)))
                             (let ((_hd87348888_ (##car _e87338885_))
                                   (_tl87358890_ (##cdr _e87338885_)))
                               (if (gx#stx-datum? _hd87348888_)
                                   (if (equal? (gx#stx-e _hd87348888_) '#f)
                                       (if (gx#stx-null? _tl87358890_)
                                           ((lambda ()
                                              (gxc#compile-e _L8713_)))
                                           (_g87298880_ _g87328883_))
                                       (_g87298880_ _g87328883_))
                                   (_g87298880_ _g87328883_))))
                           (_g87298880_ _g87328883_)))))
                (_g87288895_ _L8714_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd86788708_
                                              _hd86758700_)
                                             (_g86678684_ _g86688687_))))
                                     (_g86678684_ _g86688687_))))
                             (_g86678684_ _g86688687_))))
                     (_g86678684_ _g86688687_)))))
          (_g86668898_ _stx8665_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8653_ _hd8654_)
      (let ((_len8656_ (gx#stx-length _hd8654_)))
        (let ((_cmp8658_ (if (gx#stx-list? _hd8654_) 'fx= 'fx>=)))
          (let ((_errmsg8660_
                 (string-append
                  (if (gx#stx-list? _hd8654_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8656_)
                  '" values")))
            (let ((_count8662_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8654_)) (fx= _len8656_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8662_
                                            (cons (cons 'values-count
                                                        (cons _vals8653_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8662_ (cons _len8656_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8662_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8586_)
      (let ((_g85888605_
             (lambda (_g85898602_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g85898602_))))
        (let ((_g85878650_
               (lambda (_g85898608_)
                 (if (gx#stx-pair? _g85898608_)
                     (let ((_e85928610_ (gx#stx-e _g85898608_)))
                       (let ((_hd85938613_ (##car _e85928610_))
                             (_tl85948615_ (##cdr _e85928610_)))
                         (if (gx#stx-pair? _tl85948615_)
                             (let ((_e85958618_ (gx#stx-e _tl85948615_)))
                               (let ((_hd85968621_ (##car _e85958618_))
                                     (_tl85978623_ (##cdr _e85958618_)))
                                 (if (gx#stx-pair? _tl85978623_)
                                     (let ((_e85988626_
                                            (gx#stx-e _tl85978623_)))
                                       (let ((_hd85998629_ (##car _e85988626_))
                                             (_tl86008631_
                                              (##cdr _e85988626_)))
                                         (if (gx#stx-null? _tl86008631_)
                                             ((lambda (_L8634_ _L8635_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8635_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8634_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd85998629_
                                              _hd85968621_)
                                             (_g85888605_ _g85898608_))))
                                     (_g85888605_ _g85898608_))))
                             (_g85888605_ _g85898608_))))
                     (_g85888605_ _g85898608_)))))
          (_g85878650_ _stx8586_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8584_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8584_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7121_)
      (let ((_runtime-identifier=?7123_
             (lambda (_id-stx8575_ _sym8576_)
               (let ((_bind85778579_ (gx#resolve-identifier__0 _id-stx8575_)))
                 (if _bind85778579_
                     (let ((_bind8582_ _bind85778579_))
                       (eq? (##structure-ref _bind8582_ '1 gx#binding::t '#f)
                            _sym8576_))
                     '#f)))))
        (let ((_dispatch-case?7124_
               (lambda (_hd7805_ _body7806_)
                 (let ((_form7808_ (cons _hd7805_ (cons _body7806_ '()))))
                   (let ((_g78137970_
                          (lambda (_g78147967_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g78147967_))))
                     (let ((_g78127977_
                            (lambda (_g78147973_) ((lambda () '#f)))))
                       (let ((_g78118118_
                              (lambda (_g78147980_)
                                (if (gx#stx-pair? _g78147980_)
                                    (let ((_e79307982_ (gx#stx-e _g78147980_)))
                                      (let ((_hd79317985_ (##car _e79307982_))
                                            (_tl79327987_ (##cdr _e79307982_)))
                                        (if (gx#stx-pair? _tl79327987_)
                                            (let ((_e79337990_
                                                   (gx#stx-e _tl79327987_)))
                                              (let ((_hd79347993_
                                                     (##car _e79337990_))
                                                    (_tl79357995_
                                                     (##cdr _e79337990_)))
                                                (if (gx#stx-pair? _hd79347993_)
                                                    (let ((_e79367998_
                                                           (gx#stx-e
                                                            _hd79347993_)))
                                                      (let ((_hd79378001_
                                                             (##car _e79367998_))
                                                            (_tl79388003_
                                                             (##cdr _e79367998_)))
                                                        (if (gx#identifier?
                                                             _hd79378001_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd79378001_)
                        (if (gx#stx-pair? _tl79388003_)
                            (let ((_e79398006_ (gx#stx-e _tl79388003_)))
                              (let ((_hd79408009_ (##car _e79398006_))
                                    (_tl79418011_ (##cdr _e79398006_)))
                                (if (gx#stx-pair? _hd79408009_)
                                    (let ((_e79428014_
                                           (gx#stx-e _hd79408009_)))
                                      (let ((_hd79438017_ (##car _e79428014_))
                                            (_tl79448019_ (##cdr _e79428014_)))
                                        (if (gx#identifier? _hd79438017_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd79438017_)
                                                (if (gx#stx-pair? _tl79448019_)
                                                    (let ((_e79458022_
                                                           (gx#stx-e
                                                            _tl79448019_)))
                                                      (let ((_hd79468025_
                                                             (##car _e79458022_))
                                                            (_tl79478027_
                                                             (##cdr _e79458022_)))
                                                        (if (gx#stx-null?
                                                             _tl79478027_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79418011_)
                        (let ((_e79488030_ (gx#stx-e _tl79418011_)))
                          (let ((_hd79498033_ (##car _e79488030_))
                                (_tl79508035_ (##cdr _e79488030_)))
                            (if (gx#stx-pair? _hd79498033_)
                                (let ((_e79518038_ (gx#stx-e _hd79498033_)))
                                  (let ((_hd79528041_ (##car _e79518038_))
                                        (_tl79538043_ (##cdr _e79518038_)))
                                    (if (gx#identifier? _hd79528041_)
                                        (if (gx#stx-eq? '%#ref _hd79528041_)
                                            (if (gx#stx-pair? _tl79538043_)
                                                (let ((_e79548046_
                                                       (gx#stx-e
                                                        _tl79538043_)))
                                                  (let ((_hd79558049_
                                                         (##car _e79548046_))
                                                        (_tl79568051_
                                                         (##cdr _e79548046_)))
                                                    (if (gx#stx-null?
                                                         _tl79568051_)
                                                        (if (gx#stx-pair?
                                                             _tl79508035_)
                                                            (let ((_e79578054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl79508035_)))
                      (let ((_hd79588057_ (##car _e79578054_))
                            (_tl79598059_ (##cdr _e79578054_)))
                        (if (gx#stx-pair? _hd79588057_)
                            (let ((_e79608062_ (gx#stx-e _hd79588057_)))
                              (let ((_hd79618065_ (##car _e79608062_))
                                    (_tl79628067_ (##cdr _e79608062_)))
                                (if (gx#identifier? _hd79618065_)
                                    (if (gx#stx-eq? '%#ref _hd79618065_)
                                        (if (gx#stx-pair? _tl79628067_)
                                            (let ((_e79638070_
                                                   (gx#stx-e _tl79628067_)))
                                              (let ((_hd79648073_
                                                     (##car _e79638070_))
                                                    (_tl79658075_
                                                     (##cdr _e79638070_)))
                                                (if (gx#stx-null? _tl79658075_)
                                                    (if (gx#stx-null?
                                                         _tl79598059_)
                                                        (if (gx#stx-null?
                                                             _tl79357995_)
                                                            ((lambda (_L8078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8079_
                              _L8080_
                              _L8081_)
                       (if (if (gx#identifier? _L8081_)
                               (if (_runtime-identifier=?7123_ _L8080_ 'apply)
                                   (if (gx#free-identifier=? _L8081_ _L8078_)
                                       (not (gx#free-identifier=?
                                             _L8079_
                                             _L8081_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g78127977_ _g78147980_)))
                     _hd79648073_
                     _hd79558049_
                     _hd79468025_
                     _hd79317985_)
                    (_g78127977_ _g78147980_))
                (_g78127977_ _g78147980_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78127977_
                                                     _g78147980_))))
                                            (_g78127977_ _g78147980_))
                                        (_g78127977_ _g78147980_))
                                    (_g78127977_ _g78147980_))))
                            (_g78127977_ _g78147980_))))
                    (_g78127977_ _g78147980_))
                (_g78127977_ _g78147980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g78127977_ _g78147980_))
                                            (_g78127977_ _g78147980_))
                                        (_g78127977_ _g78147980_))))
                                (_g78127977_ _g78147980_))))
                        (_g78127977_ _g78147980_))
                    (_g78127977_ _g78147980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78127977_ _g78147980_))
                                                (_g78127977_ _g78147980_))
                                            (_g78127977_ _g78147980_))))
                                    (_g78127977_ _g78147980_))))
                            (_g78127977_ _g78147980_))
                        (_g78127977_ _g78147980_))
                    (_g78127977_ _g78147980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78127977_
                                                     _g78147980_))))
                                            (_g78127977_ _g78147980_))))
                                    (_g78127977_ _g78147980_)))))
                         (let ((_g78108378_
                                (lambda (_g78148121_)
                                  (if (gx#stx-pair? _g78148121_)
                                      (let ((_e78668123_
                                             (gx#stx-e _g78148121_)))
                                        (let ((_hd78678126_
                                               (##car _e78668123_))
                                              (_tl78688128_
                                               (##cdr _e78668123_)))
                                          (if (gx#stx-pair/null? _hd78678126_)
                                              (if (fx>= (gx#stx-length
                                                         _hd78678126_)
                                                        '0)
                                                  (let ((_g9640_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd78678126_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9641_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9640_)))
                (if (not (fx= _g9641_ 2))
                    (error "Context expects 2 values" _g9641_)))
              (let ((_target78698131_ (values-ref _g9640_ 0))
                    (_tl78718133_ (values-ref _g9640_ 1)))
                (letrec ((_loop78728136_
                          (lambda (_hd78708139_ _arg78768141_)
                            (if (gx#stx-pair? _hd78708139_)
                                (let ((_e78738144_ (gx#stx-e _hd78708139_)))
                                  (let ((_lp-hd78748147_ (##car _e78738144_))
                                        (_lp-tl78758149_ (##cdr _e78738144_)))
                                    (_loop78728136_
                                     _lp-tl78758149_
                                     (cons _lp-hd78748147_ _arg78768141_))))
                                (let ((_arg78778152_ (reverse _arg78768141_)))
                                  (if (gx#stx-pair? _tl78688128_)
                                      (let ((_e78788155_
                                             (gx#stx-e _tl78688128_)))
                                        (let ((_hd78798158_
                                               (##car _e78788155_))
                                              (_tl78808160_
                                               (##cdr _e78788155_)))
                                          (if (gx#stx-pair? _hd78798158_)
                                              (let ((_e78818163_
                                                     (gx#stx-e _hd78798158_)))
                                                (let ((_hd78828166_
                                                       (##car _e78818163_))
                                                      (_tl78838168_
                                                       (##cdr _e78818163_)))
                                                  (if (gx#identifier?
                                                       _hd78828166_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd78828166_)
                                                          (if (gx#stx-pair?
                                                               _tl78838168_)
                                                              (let ((_e78848171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl78838168_)))
                        (let ((_hd78858174_ (##car _e78848171_))
                              (_tl78868176_ (##cdr _e78848171_)))
                          (if (gx#stx-pair? _hd78858174_)
                              (let ((_e78878179_ (gx#stx-e _hd78858174_)))
                                (let ((_hd78888182_ (##car _e78878179_))
                                      (_tl78898184_ (##cdr _e78878179_)))
                                  (if (gx#identifier? _hd78888182_)
                                      (if (gx#stx-eq? '%#ref _hd78888182_)
                                          (if (gx#stx-pair? _tl78898184_)
                                              (let ((_e78908187_
                                                     (gx#stx-e _tl78898184_)))
                                                (let ((_hd78918190_
                                                       (##car _e78908187_))
                                                      (_tl78928192_
                                                       (##cdr _e78908187_)))
                                                  (if (gx#stx-null?
                                                       _tl78928192_)
                                                      (if (gx#stx-pair?
                                                           _tl78868176_)
                                                          (let ((_e78938195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl78868176_)))
                    (let ((_hd78948198_ (##car _e78938195_))
                          (_tl78958200_ (##cdr _e78938195_)))
                      (if (gx#stx-pair? _hd78948198_)
                          (let ((_e78968203_ (gx#stx-e _hd78948198_)))
                            (let ((_hd78978206_ (##car _e78968203_))
                                  (_tl78988208_ (##cdr _e78968203_)))
                              (if (gx#identifier? _hd78978206_)
                                  (if (gx#stx-eq? '%#ref _hd78978206_)
                                      (if (gx#stx-pair? _tl78988208_)
                                          (let ((_e78998211_
                                                 (gx#stx-e _tl78988208_)))
                                            (let ((_hd79008214_
                                                   (##car _e78998211_))
                                                  (_tl79018216_
                                                   (##cdr _e78998211_)))
                                              (if (gx#stx-null? _tl79018216_)
                                                  (if (gx#stx-pair/null?
                                                       _tl78958200_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78958200_)
                        '1)
                  (let ((_g9642_ (gx#syntax-split-splice _tl78958200_ '1)))
                    (begin
                      (let ((_g9643_ (values-count _g9642_)))
                        (if (not (fx= _g9643_ 2))
                            (error "Context expects 2 values" _g9643_)))
                      (let ((_target79028219_ (values-ref _g9642_ 0))
                            (_tl79048221_ (values-ref _g9642_ 1)))
                        (if (gx#stx-pair? _tl79048221_)
                            (let ((_e79118224_ (gx#stx-e _tl79048221_)))
                              (let ((_hd79128227_ (##car _e79118224_))
                                    (_tl79138229_ (##cdr _e79118224_)))
                                (if (gx#stx-pair? _hd79128227_)
                                    (let ((_e79148232_
                                           (gx#stx-e _hd79128227_)))
                                      (let ((_hd79158235_ (##car _e79148232_))
                                            (_tl79168237_ (##cdr _e79148232_)))
                                        (if (gx#identifier? _hd79158235_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd79158235_)
                                                (if (gx#stx-pair? _tl79168237_)
                                                    (let ((_e79178240_
                                                           (gx#stx-e
                                                            _tl79168237_)))
                                                      (let ((_hd79188243_
                                                             (##car _e79178240_))
                                                            (_tl79198245_
                                                             (##cdr _e79178240_)))
                                                        (if (gx#stx-null?
                                                             _tl79198245_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79138229_)
                        (letrec ((_loop79058248_
                                  (lambda (_hd79038251_ _xarg79098253_)
                                    (if (gx#stx-pair? _hd79038251_)
                                        (let ((_e79068256_
                                               (gx#stx-e _hd79038251_)))
                                          (let ((_lp-hd79078259_
                                                 (##car _e79068256_))
                                                (_lp-tl79088261_
                                                 (##cdr _e79068256_)))
                                            (if (gx#stx-pair? _lp-hd79078259_)
                                                (let ((_e79208264_
                                                       (gx#stx-e
                                                        _lp-hd79078259_)))
                                                  (let ((_hd79218267_
                                                         (##car _e79208264_))
                                                        (_tl79228269_
                                                         (##cdr _e79208264_)))
                                                    (if (gx#identifier?
                                                         _hd79218267_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd79218267_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79228269_)
                        (let ((_e79238272_ (gx#stx-e _tl79228269_)))
                          (let ((_hd79248275_ (##car _e79238272_))
                                (_tl79258277_ (##cdr _e79238272_)))
                            (if (gx#stx-null? _tl79258277_)
                                (_loop79058248_
                                 _lp-tl79088261_
                                 (cons _hd79248275_ _xarg79098253_))
                                (_g78118118_ _g78148121_))))
                        (_g78118118_ _g78148121_))
                    (_g78118118_ _g78148121_))
                (_g78118118_ _g78148121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g78118118_ _g78148121_))))
                                        (let ((_xarg79108280_
                                               (reverse _xarg79098253_)))
                                          (if (gx#stx-null? _tl78808160_)
                                              ((lambda (_L8283_
                                                        _L8284_
                                                        _L8285_
                                                        _L8286_
                                                        _L8287_
                                                        _L8288_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g83318334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g83328336_)
                             (cons _g83318334_ _g83328336_))
                           '()
                           _L8288_)))
                 (if (gx#identifier? _L8287_)
                     (if (_runtime-identifier=?7123_ _L8286_ 'apply)
                         (if (fx= (gx#stx-length
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g83388341_ _g83398343_)
                                              (cons _g83388341_ _g83398343_))
                                            '()
                                            _L8288_)))
                                  (gx#stx-length
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g83458348_ _g83468350_)
                                              (cons _g83458348_ _g83468350_))
                                            '()
                                            _L8284_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g83528355_
                                                           _g83538357_)
                                                    (cons _g83528355_
                                                          _g83538357_))
                                                  '()
                                                  _L8288_))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g83598362_
                                                           _g83608364_)
                                                    (cons _g83598362_
                                                          _g83608364_))
                                                  '()
                                                  _L8284_)))
                                 (if (gx#free-identifier=? _L8287_ _L8283_)
                                     (not (find (lambda (_g83668368_)
                                                  (gx#free-identifier=?
                                                   _g83668368_
                                                   _L8285_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g83708373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g83718375_)
                   (cons _g83708373_ _g83718375_))
                 (cons _L8287_ '())
                 _L8288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g78118118_
                                                      _g78148121_)))
                                               _hd79188243_
                                               _xarg79108280_
                                               _hd79008214_
                                               _hd78918190_
                                               _tl78718133_
                                               _arg78778152_)
                                              (_g78118118_ _g78148121_)))))))
                          (_loop79058248_ _target79028219_ '()))
                        (_g78118118_ _g78148121_))
                    (_g78118118_ _g78148121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78118118_ _g78148121_))
                                                (_g78118118_ _g78148121_))
                                            (_g78118118_ _g78148121_))))
                                    (_g78118118_ _g78148121_))))
                            (_g78118118_ _g78148121_)))))
                  (_g78118118_ _g78148121_))
              (_g78118118_ _g78148121_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78118118_ _g78148121_))))
                                          (_g78118118_ _g78148121_))
                                      (_g78118118_ _g78148121_))
                                  (_g78118118_ _g78148121_))))
                          (_g78118118_ _g78148121_))))
                  (_g78118118_ _g78148121_))
              (_g78118118_ _g78148121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g78118118_ _g78148121_))
                                          (_g78118118_ _g78148121_))
                                      (_g78118118_ _g78148121_))))
                              (_g78118118_ _g78148121_))))
                      (_g78118118_ _g78148121_))
                  (_g78118118_ _g78148121_))
              (_g78118118_ _g78148121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g78118118_ _g78148121_))))
                                      (_g78118118_ _g78148121_)))))))
                  (_loop78728136_ _target78698131_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78118118_ _g78148121_))
                                              (_g78118118_ _g78148121_))))
                                      (_g78118118_ _g78148121_)))))
                           (let ((_g78098572_
                                  (lambda (_g78148381_)
                                    (if (gx#stx-pair? _g78148381_)
                                        (let ((_e78188383_
                                               (gx#stx-e _g78148381_)))
                                          (let ((_hd78198386_
                                                 (##car _e78188383_))
                                                (_tl78208388_
                                                 (##cdr _e78188383_)))
                                            (if (gx#stx-pair/null?
                                                 _hd78198386_)
                                                (if (fx>= (gx#stx-length
                                                           _hd78198386_)
                                                          '0)
                                                    (let ((_g9644_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd78198386_
                            '0)))
              (begin
                (let ((_g9645_ (values-count _g9644_)))
                  (if (not (fx= _g9645_ 2))
                      (error "Context expects 2 values" _g9645_)))
                (let ((_target78218391_ (values-ref _g9644_ 0))
                      (_tl78238393_ (values-ref _g9644_ 1)))
                  (if (gx#stx-null? _tl78238393_)
                      (letrec ((_loop78248396_
                                (lambda (_hd78228399_ _arg78288401_)
                                  (if (gx#stx-pair? _hd78228399_)
                                      (let ((_e78258404_
                                             (gx#stx-e _hd78228399_)))
                                        (let ((_lp-hd78268407_
                                               (##car _e78258404_))
                                              (_lp-tl78278409_
                                               (##cdr _e78258404_)))
                                          (_loop78248396_
                                           _lp-tl78278409_
                                           (cons _lp-hd78268407_
                                                 _arg78288401_))))
                                      (let ((_arg78298412_
                                             (reverse _arg78288401_)))
                                        (if (gx#stx-pair? _tl78208388_)
                                            (let ((_e78308415_
                                                   (gx#stx-e _tl78208388_)))
                                              (let ((_hd78318418_
                                                     (##car _e78308415_))
                                                    (_tl78328420_
                                                     (##cdr _e78308415_)))
                                                (if (gx#stx-pair? _hd78318418_)
                                                    (let ((_e78338423_
                                                           (gx#stx-e
                                                            _hd78318418_)))
                                                      (let ((_hd78348426_
                                                             (##car _e78338423_))
                                                            (_tl78358428_
                                                             (##cdr _e78338423_)))
                                                        (if (gx#identifier?
                                                             _hd78348426_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd78348426_)
                        (if (gx#stx-pair? _tl78358428_)
                            (let ((_e78368431_ (gx#stx-e _tl78358428_)))
                              (let ((_hd78378434_ (##car _e78368431_))
                                    (_tl78388436_ (##cdr _e78368431_)))
                                (if (gx#stx-pair? _hd78378434_)
                                    (let ((_e78398439_
                                           (gx#stx-e _hd78378434_)))
                                      (let ((_hd78408442_ (##car _e78398439_))
                                            (_tl78418444_ (##cdr _e78398439_)))
                                        (if (gx#identifier? _hd78408442_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd78408442_)
                                                (if (gx#stx-pair? _tl78418444_)
                                                    (let ((_e78428447_
                                                           (gx#stx-e
                                                            _tl78418444_)))
                                                      (let ((_hd78438450_
                                                             (##car _e78428447_))
                                                            (_tl78448452_
                                                             (##cdr _e78428447_)))
                                                        (if (gx#stx-null?
                                                             _tl78448452_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78388436_)
                        (if (fx>= (gx#stx-length _tl78388436_) '0)
                            (let ((_g9646_ (gx#syntax-split-splice
                                            _tl78388436_
                                            '0)))
                              (begin
                                (let ((_g9647_ (values-count _g9646_)))
                                  (if (not (fx= _g9647_ 2))
                                      (error "Context expects 2 values"
                                             _g9647_)))
                                (let ((_target78458455_ (values-ref _g9646_ 0))
                                      (_tl78478457_ (values-ref _g9646_ 1)))
                                  (if (gx#stx-null? _tl78478457_)
                                      (letrec ((_loop78488460_
                                                (lambda (_hd78468463_
                                                         _xarg78528465_)
                                                  (if (gx#stx-pair?
                                                       _hd78468463_)
                                                      (let ((_e78498468_
                                                             (gx#stx-e
                                                              _hd78468463_)))
                                                        (let ((_lp-hd78508471_
                                                               (##car _e78498468_))
                                                              (_lp-tl78518473_
                                                               (##cdr _e78498468_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd78508471_)
                                                              (let ((_e78548476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd78508471_)))
                        (let ((_hd78558479_ (##car _e78548476_))
                              (_tl78568481_ (##cdr _e78548476_)))
                          (if (gx#identifier? _hd78558479_)
                              (if (gx#stx-eq? '%#ref _hd78558479_)
                                  (if (gx#stx-pair? _tl78568481_)
                                      (let ((_e78578484_
                                             (gx#stx-e _tl78568481_)))
                                        (let ((_hd78588487_
                                               (##car _e78578484_))
                                              (_tl78598489_
                                               (##cdr _e78578484_)))
                                          (if (gx#stx-null? _tl78598489_)
                                              (_loop78488460_
                                               _lp-tl78518473_
                                               (cons _hd78588487_
                                                     _xarg78528465_))
                                              (_g78108378_ _g78148381_))))
                                      (_g78108378_ _g78148381_))
                                  (_g78108378_ _g78148381_))
                              (_g78108378_ _g78148381_))))
                      (_g78108378_ _g78148381_))))
              (let ((_xarg78538492_ (reverse _xarg78528465_)))
                (if (gx#stx-null? _tl78328420_)
                    ((lambda (_L8495_ _L8496_ _L8497_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr (lambda (_g85258528_ _g85268530_)
                                           (cons _g85258528_ _g85268530_))
                                         '()
                                         _L8497_)))
                               (if (fx= (gx#stx-length
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g85328535_
                                                           _g85338537_)
                                                    (cons _g85328535_
                                                          _g85338537_))
                                                  '()
                                                  _L8497_)))
                                        (gx#stx-length
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g85398542_
                                                           _g85408544_)
                                                    (cons _g85398542_
                                                          _g85408544_))
                                                  '()
                                                  _L8495_))))
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g85468549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g85478551_)
                  (cons _g85468549_ _g85478551_))
                '()
                _L8497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g85538556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g85548558_)
                  (cons _g85538556_ _g85548558_))
                '()
                _L8495_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g85608562_)
                                                    (gx#free-identifier=?
                                                     _g85608562_
                                                     _L8496_))
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g85648567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g85658569_)
                     (cons _g85648567_ _g85658569_))
                   '()
                   _L8497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g78108378_ _g78148381_)))
                     _xarg78538492_
                     _hd78438450_
                     _arg78298412_)
                    (_g78108378_ _g78148381_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop78488460_ _target78458455_ '()))
                                      (_g78108378_ _g78148381_)))))
                            (_g78108378_ _g78148381_))
                        (_g78108378_ _g78148381_))
                    (_g78108378_ _g78148381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78108378_ _g78148381_))
                                                (_g78108378_ _g78148381_))
                                            (_g78108378_ _g78148381_))))
                                    (_g78108378_ _g78148381_))))
                            (_g78108378_ _g78148381_))
                        (_g78108378_ _g78148381_))
                    (_g78108378_ _g78148381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78108378_
                                                     _g78148381_))))
                                            (_g78108378_ _g78148381_)))))))
                        (_loop78248396_ _target78218391_ '()))
                      (_g78108378_ _g78148381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78108378_ _g78148381_))
                                                (_g78108378_ _g78148381_))))
                                        (_g78108378_ _g78148381_)))))
                             (_g78098572_ _form7808_))))))))))
          (let ((_dispatch-case-e7125_
                 (lambda (_hd7269_ _body7270_)
                   (let ((_form7272_ (cons _hd7269_ (cons _body7270_ '()))))
                     (let ((_g72767400_
                            (lambda (_g72777397_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g72777397_))))
                       (let ((_g72757518_
                              (lambda (_g72777403_)
                                (if (gx#stx-pair? _g72777403_)
                                    (let ((_e73667405_ (gx#stx-e _g72777403_)))
                                      (let ((_hd73677408_ (##car _e73667405_))
                                            (_tl73687410_ (##cdr _e73667405_)))
                                        (if (gx#stx-pair? _tl73687410_)
                                            (let ((_e73697413_
                                                   (gx#stx-e _tl73687410_)))
                                              (let ((_hd73707416_
                                                     (##car _e73697413_))
                                                    (_tl73717418_
                                                     (##cdr _e73697413_)))
                                                (if (gx#stx-pair? _hd73707416_)
                                                    (let ((_e73727421_
                                                           (gx#stx-e
                                                            _hd73707416_)))
                                                      (let ((_hd73737424_
                                                             (##car _e73727421_))
                                                            (_tl73747426_
                                                             (##cdr _e73727421_)))
                                                        (if (gx#identifier?
                                                             _hd73737424_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd73737424_)
                        (if (gx#stx-pair? _tl73747426_)
                            (let ((_e73757429_ (gx#stx-e _tl73747426_)))
                              (let ((_hd73767432_ (##car _e73757429_))
                                    (_tl73777434_ (##cdr _e73757429_)))
                                (if (gx#stx-pair? _hd73767432_)
                                    (let ((_e73787437_
                                           (gx#stx-e _hd73767432_)))
                                      (let ((_hd73797440_ (##car _e73787437_))
                                            (_tl73807442_ (##cdr _e73787437_)))
                                        (if (gx#identifier? _hd73797440_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd73797440_)
                                                (if (gx#stx-pair? _tl73807442_)
                                                    (let ((_e73817445_
                                                           (gx#stx-e
                                                            _tl73807442_)))
                                                      (let ((_hd73827448_
                                                             (##car _e73817445_))
                                                            (_tl73837450_
                                                             (##cdr _e73817445_)))
                                                        (if (gx#stx-null?
                                                             _tl73837450_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73777434_)
                        (let ((_e73847453_ (gx#stx-e _tl73777434_)))
                          (let ((_hd73857456_ (##car _e73847453_))
                                (_tl73867458_ (##cdr _e73847453_)))
                            (if (gx#stx-pair? _hd73857456_)
                                (let ((_e73877461_ (gx#stx-e _hd73857456_)))
                                  (let ((_hd73887464_ (##car _e73877461_))
                                        (_tl73897466_ (##cdr _e73877461_)))
                                    (if (gx#identifier? _hd73887464_)
                                        (if (gx#stx-eq? '%#ref _hd73887464_)
                                            (if (gx#stx-pair? _tl73897466_)
                                                (let ((_e73907469_
                                                       (gx#stx-e
                                                        _tl73897466_)))
                                                  (let ((_hd73917472_
                                                         (##car _e73907469_))
                                                        (_tl73927474_
                                                         (##cdr _e73907469_)))
                                                    (if (gx#stx-null?
                                                         _tl73927474_)
                                                        (if (gx#stx-pair?
                                                             _tl73867458_)
                                                            (let ((_e73937477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl73867458_)))
                      (let ((_hd73947480_ (##car _e73937477_))
                            (_tl73957482_ (##cdr _e73937477_)))
                        (if (gx#stx-null? _tl73957482_)
                            (if (gx#stx-null? _tl73717418_)
                                ((lambda (_L7485_ _L7486_ _L7487_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7485_ '()))))
                                 _hd73917472_
                                 _hd73827448_
                                 _hd73677408_)
                                (_g72767400_ _g72777403_))
                            (_g72767400_ _g72777403_))))
                    (_g72767400_ _g72777403_))
                (_g72767400_ _g72777403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g72767400_ _g72777403_))
                                            (_g72767400_ _g72777403_))
                                        (_g72767400_ _g72777403_))))
                                (_g72767400_ _g72777403_))))
                        (_g72767400_ _g72777403_))
                    (_g72767400_ _g72777403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72767400_ _g72777403_))
                                                (_g72767400_ _g72777403_))
                                            (_g72767400_ _g72777403_))))
                                    (_g72767400_ _g72777403_))))
                            (_g72767400_ _g72777403_))
                        (_g72767400_ _g72777403_))
                    (_g72767400_ _g72777403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72767400_
                                                     _g72777403_))))
                                            (_g72767400_ _g72777403_))))
                                    (_g72767400_ _g72777403_)))))
                         (let ((_g72747654_
                                (lambda (_g72777521_)
                                  (if (gx#stx-pair? _g72777521_)
                                      (let ((_e73277523_
                                             (gx#stx-e _g72777521_)))
                                        (let ((_hd73287526_
                                               (##car _e73277523_))
                                              (_tl73297528_
                                               (##cdr _e73277523_)))
                                          (if (gx#stx-pair/null? _hd73287526_)
                                              (if (fx>= (gx#stx-length
                                                         _hd73287526_)
                                                        '0)
                                                  (let ((_g9634_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd73287526_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9635_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9634_)))
                (if (not (fx= _g9635_ 2))
                    (error "Context expects 2 values" _g9635_)))
              (let ((_target73307531_ (values-ref _g9634_ 0))
                    (_tl73327533_ (values-ref _g9634_ 1)))
                (letrec ((_loop73337536_
                          (lambda (_hd73317539_ _arg73377541_)
                            (if (gx#stx-pair? _hd73317539_)
                                (let ((_e73347544_ (gx#stx-e _hd73317539_)))
                                  (let ((_lp-hd73357547_ (##car _e73347544_))
                                        (_lp-tl73367549_ (##cdr _e73347544_)))
                                    (_loop73337536_
                                     _lp-tl73367549_
                                     (cons _lp-hd73357547_ _arg73377541_))))
                                (let ((_arg73387552_ (reverse _arg73377541_)))
                                  (if (gx#stx-pair? _tl73297528_)
                                      (let ((_e73397555_
                                             (gx#stx-e _tl73297528_)))
                                        (let ((_hd73407558_
                                               (##car _e73397555_))
                                              (_tl73417560_
                                               (##cdr _e73397555_)))
                                          (if (gx#stx-pair? _hd73407558_)
                                              (let ((_e73427563_
                                                     (gx#stx-e _hd73407558_)))
                                                (let ((_hd73437566_
                                                       (##car _e73427563_))
                                                      (_tl73447568_
                                                       (##cdr _e73427563_)))
                                                  (if (gx#identifier?
                                                       _hd73437566_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd73437566_)
                                                          (if (gx#stx-pair?
                                                               _tl73447568_)
                                                              (let ((_e73457571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl73447568_)))
                        (let ((_hd73467574_ (##car _e73457571_))
                              (_tl73477576_ (##cdr _e73457571_)))
                          (if (gx#stx-pair? _hd73467574_)
                              (let ((_e73487579_ (gx#stx-e _hd73467574_)))
                                (let ((_hd73497582_ (##car _e73487579_))
                                      (_tl73507584_ (##cdr _e73487579_)))
                                  (if (gx#identifier? _hd73497582_)
                                      (if (gx#stx-eq? '%#ref _hd73497582_)
                                          (if (gx#stx-pair? _tl73507584_)
                                              (let ((_e73517587_
                                                     (gx#stx-e _tl73507584_)))
                                                (let ((_hd73527590_
                                                       (##car _e73517587_))
                                                      (_tl73537592_
                                                       (##cdr _e73517587_)))
                                                  (if (gx#stx-null?
                                                       _tl73537592_)
                                                      (if (gx#stx-pair?
                                                           _tl73477576_)
                                                          (let ((_e73547595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl73477576_)))
                    (let ((_hd73557598_ (##car _e73547595_))
                          (_tl73567600_ (##cdr _e73547595_)))
                      (if (gx#stx-pair? _hd73557598_)
                          (let ((_e73577603_ (gx#stx-e _hd73557598_)))
                            (let ((_hd73587606_ (##car _e73577603_))
                                  (_tl73597608_ (##cdr _e73577603_)))
                              (if (gx#identifier? _hd73587606_)
                                  (if (gx#stx-eq? '%#ref _hd73587606_)
                                      (if (gx#stx-pair? _tl73597608_)
                                          (let ((_e73607611_
                                                 (gx#stx-e _tl73597608_)))
                                            (let ((_hd73617614_
                                                   (##car _e73607611_))
                                                  (_tl73627616_
                                                   (##cdr _e73607611_)))
                                              (if (gx#stx-null? _tl73627616_)
                                                  (if (gx#stx-null?
                                                       _tl73417560_)
                                                      ((lambda (_L7619_
                                                                _L7620_
                                                                _L7621_
                                                                _L7622_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7619_ '()))))
               _hd73617614_
               _hd73527590_
               _tl73327533_
               _arg73387552_)
              (_g72757518_ _g72777521_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72757518_ _g72777521_))))
                                          (_g72757518_ _g72777521_))
                                      (_g72757518_ _g72777521_))
                                  (_g72757518_ _g72777521_))))
                          (_g72757518_ _g72777521_))))
                  (_g72757518_ _g72777521_))
              (_g72757518_ _g72777521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72757518_ _g72777521_))
                                          (_g72757518_ _g72777521_))
                                      (_g72757518_ _g72777521_))))
                              (_g72757518_ _g72777521_))))
                      (_g72757518_ _g72777521_))
                  (_g72757518_ _g72777521_))
              (_g72757518_ _g72777521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72757518_ _g72777521_))))
                                      (_g72757518_ _g72777521_)))))))
                  (_loop73337536_ _target73307531_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72757518_ _g72777521_))
                                              (_g72757518_ _g72777521_))))
                                      (_g72757518_ _g72777521_)))))
                           (let ((_g72737802_
                                  (lambda (_g72777657_)
                                    (if (gx#stx-pair? _g72777657_)
                                        (let ((_e72817659_
                                               (gx#stx-e _g72777657_)))
                                          (let ((_hd72827662_
                                                 (##car _e72817659_))
                                                (_tl72837664_
                                                 (##cdr _e72817659_)))
                                            (if (gx#stx-pair/null?
                                                 _hd72827662_)
                                                (if (fx>= (gx#stx-length
                                                           _hd72827662_)
                                                          '0)
                                                    (let ((_g9636_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd72827662_
                            '0)))
              (begin
                (let ((_g9637_ (values-count _g9636_)))
                  (if (not (fx= _g9637_ 2))
                      (error "Context expects 2 values" _g9637_)))
                (let ((_target72847667_ (values-ref _g9636_ 0))
                      (_tl72867669_ (values-ref _g9636_ 1)))
                  (if (gx#stx-null? _tl72867669_)
                      (letrec ((_loop72877672_
                                (lambda (_hd72857675_ _arg72917677_)
                                  (if (gx#stx-pair? _hd72857675_)
                                      (let ((_e72887680_
                                             (gx#stx-e _hd72857675_)))
                                        (let ((_lp-hd72897683_
                                               (##car _e72887680_))
                                              (_lp-tl72907685_
                                               (##cdr _e72887680_)))
                                          (_loop72877672_
                                           _lp-tl72907685_
                                           (cons _lp-hd72897683_
                                                 _arg72917677_))))
                                      (let ((_arg72927688_
                                             (reverse _arg72917677_)))
                                        (if (gx#stx-pair? _tl72837664_)
                                            (let ((_e72937691_
                                                   (gx#stx-e _tl72837664_)))
                                              (let ((_hd72947694_
                                                     (##car _e72937691_))
                                                    (_tl72957696_
                                                     (##cdr _e72937691_)))
                                                (if (gx#stx-pair? _hd72947694_)
                                                    (let ((_e72967699_
                                                           (gx#stx-e
                                                            _hd72947694_)))
                                                      (let ((_hd72977702_
                                                             (##car _e72967699_))
                                                            (_tl72987704_
                                                             (##cdr _e72967699_)))
                                                        (if (gx#identifier?
                                                             _hd72977702_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd72977702_)
                        (if (gx#stx-pair? _tl72987704_)
                            (let ((_e72997707_ (gx#stx-e _tl72987704_)))
                              (let ((_hd73007710_ (##car _e72997707_))
                                    (_tl73017712_ (##cdr _e72997707_)))
                                (if (gx#stx-pair? _hd73007710_)
                                    (let ((_e73027715_
                                           (gx#stx-e _hd73007710_)))
                                      (let ((_hd73037718_ (##car _e73027715_))
                                            (_tl73047720_ (##cdr _e73027715_)))
                                        (if (gx#identifier? _hd73037718_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd73037718_)
                                                (if (gx#stx-pair? _tl73047720_)
                                                    (let ((_e73057723_
                                                           (gx#stx-e
                                                            _tl73047720_)))
                                                      (let ((_hd73067726_
                                                             (##car _e73057723_))
                                                            (_tl73077728_
                                                             (##cdr _e73057723_)))
                                                        (if (gx#stx-null?
                                                             _tl73077728_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73017712_)
                        (if (fx>= (gx#stx-length _tl73017712_) '0)
                            (let ((_g9638_ (gx#syntax-split-splice
                                            _tl73017712_
                                            '0)))
                              (begin
                                (let ((_g9639_ (values-count _g9638_)))
                                  (if (not (fx= _g9639_ 2))
                                      (error "Context expects 2 values"
                                             _g9639_)))
                                (let ((_target73087731_ (values-ref _g9638_ 0))
                                      (_tl73107733_ (values-ref _g9638_ 1)))
                                  (if (gx#stx-null? _tl73107733_)
                                      (letrec ((_loop73117736_
                                                (lambda (_hd73097739_
                                                         _xarg73157741_)
                                                  (if (gx#stx-pair?
                                                       _hd73097739_)
                                                      (let ((_e73127744_
                                                             (gx#stx-e
                                                              _hd73097739_)))
                                                        (let ((_lp-hd73137747_
                                                               (##car _e73127744_))
                                                              (_lp-tl73147749_
                                                               (##cdr _e73127744_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd73137747_)
                                                              (let ((_e73177752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd73137747_)))
                        (let ((_hd73187755_ (##car _e73177752_))
                              (_tl73197757_ (##cdr _e73177752_)))
                          (if (gx#identifier? _hd73187755_)
                              (if (gx#stx-eq? '%#ref _hd73187755_)
                                  (if (gx#stx-pair? _tl73197757_)
                                      (let ((_e73207760_
                                             (gx#stx-e _tl73197757_)))
                                        (let ((_hd73217763_
                                               (##car _e73207760_))
                                              (_tl73227765_
                                               (##cdr _e73207760_)))
                                          (if (gx#stx-null? _tl73227765_)
                                              (_loop73117736_
                                               _lp-tl73147749_
                                               (cons _hd73217763_
                                                     _xarg73157741_))
                                              (_g72747654_ _g72777657_))))
                                      (_g72747654_ _g72777657_))
                                  (_g72747654_ _g72777657_))
                              (_g72747654_ _g72777657_))))
                      (_g72747654_ _g72777657_))))
              (let ((_xarg73167768_ (reverse _xarg73157741_)))
                (if (gx#stx-null? _tl72957696_)
                    ((lambda (_L7771_ _L7772_ _L7773_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7772_ '()))))
                     _xarg73167768_
                     _hd73067726_
                     _arg72927688_)
                    (_g72747654_ _g72777657_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop73117736_ _target73087731_ '()))
                                      (_g72747654_ _g72777657_)))))
                            (_g72747654_ _g72777657_))
                        (_g72747654_ _g72777657_))
                    (_g72747654_ _g72777657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72747654_ _g72777657_))
                                                (_g72747654_ _g72777657_))
                                            (_g72747654_ _g72777657_))))
                                    (_g72747654_ _g72777657_))))
                            (_g72747654_ _g72777657_))
                        (_g72747654_ _g72777657_))
                    (_g72747654_ _g72777657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72747654_
                                                     _g72777657_))))
                                            (_g72747654_ _g72777657_)))))))
                        (_loop72877672_ _target72847667_ '()))
                      (_g72747654_ _g72777657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72747654_ _g72777657_))
                                                (_g72747654_ _g72777657_))))
                                        (_g72747654_ _g72777657_)))))
                             (_g72737802_ _form7272_)))))))))
            (let ((_generate17126_
                   (lambda (_args7257_ _arglen7258_ _hd7259_ _body7260_)
                     (let ((_len7262_ (gx#stx-length _hd7259_)))
                       (let ((_condition7264_
                              (if (gx#stx-list? _hd7259_)
                                  (cons 'fx=
                                        (cons _arglen7258_
                                              (cons _len7262_ '())))
                                  (if (> _len7262_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7258_
                                                  (cons _len7262_ '())))
                                      '#t))))
                         (let ((_dispatch7266_
                                (if (_dispatch-case?7124_ _hd7259_ _body7260_)
                                    (_dispatch-case-e7125_ _hd7259_ _body7260_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7259_)
                                                (cons (gxc#compile-e
                                                       _body7260_)
                                                      '()))))))
                           (let ()
                             (cons _condition7264_
                                   (cons (cons 'apply
                                               (cons _dispatch7266_
                                                     (cons _args7257_ '())))
                                         '())))))))))
              (let ((_g71287156_
                     (lambda (_g71297153_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g71297153_))))
                (let ((_g71277254_
                       (lambda (_g71297159_)
                         (if (gx#stx-pair? _g71297159_)
                             (let ((_e71327161_ (gx#stx-e _g71297159_)))
                               (let ((_hd71337164_ (##car _e71327161_))
                                     (_tl71347166_ (##cdr _e71327161_)))
                                 (if (gx#stx-pair/null? _tl71347166_)
                                     (if (fx>= (gx#stx-length _tl71347166_) '0)
                                         (let ((_g9632_ (gx#syntax-split-splice
                                                         _tl71347166_
                                                         '0)))
                                           (begin
                                             (let ((_g9633_ (values-count
                                                             _g9632_)))
                                               (if (not (fx= _g9633_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9633_)))
                                             (let ((_target71357169_
                                                    (values-ref _g9632_ 0))
                                                   (_tl71377171_
                                                    (values-ref _g9632_ 1)))
                                               (if (gx#stx-null? _tl71377171_)
                                                   (letrec ((_loop71387174_
                                                             (lambda (_hd71367177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body71427179_
                              _hd71437181_)
                       (if (gx#stx-pair? _hd71367177_)
                           (let ((_e71397184_ (gx#stx-e _hd71367177_)))
                             (let ((_lp-hd71407187_ (##car _e71397184_))
                                   (_lp-tl71417189_ (##cdr _e71397184_)))
                               (if (gx#stx-pair? _lp-hd71407187_)
                                   (let ((_e71467192_
                                          (gx#stx-e _lp-hd71407187_)))
                                     (let ((_hd71477195_ (##car _e71467192_))
                                           (_tl71487197_ (##cdr _e71467192_)))
                                       (if (gx#stx-pair? _tl71487197_)
                                           (let ((_e71497200_
                                                  (gx#stx-e _tl71487197_)))
                                             (let ((_hd71507203_
                                                    (##car _e71497200_))
                                                   (_tl71517205_
                                                    (##cdr _e71497200_)))
                                               (if (gx#stx-null? _tl71517205_)
                                                   (_loop71387174_
                                                    _lp-tl71417189_
                                                    (cons _hd71507203_
                                                          _body71427179_)
                                                    (cons _hd71477195_
                                                          _hd71437181_))
                                                   (_g71287156_ _g71297159_))))
                                           (_g71287156_ _g71297159_))))
                                   (_g71287156_ _g71297159_))))
                           (let ((_body71447208_ (reverse _body71427179_))
                                 (_hd71457210_ (reverse _hd71437181_)))
                             ((lambda (_L7213_ _L7214_)
                                (let ((_args7230_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7231_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args7230_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7230_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr cons
                                           (cons (cons 'else
                                                       (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"No clause matching arguments"
                                 (cons _args7230_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (map (lambda (_g72327235_
                                                         _g72337237_)
                                                  (_generate17126_
                                                   _args7230_
                                                   _arglen7231_
                                                   _g72327235_
                                                   _g72337237_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g72397242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g72407244_)
                   (cons _g72397242_ _g72407244_))
                 '()
                 _L7214_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g72467249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g72477251_)
                   (cons _g72467249_ _g72477251_))
                 '()
                 _L7213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body71447208_
                              _hd71457210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop71387174_
                                                      _target71357169_
                                                      '()
                                                      '()))
                                                   (_g71287156_
                                                    _g71297159_)))))
                                         (_g71287156_ _g71297159_))
                                     (_g71287156_ _g71297159_))))
                             (_g71287156_ _g71297159_)))))
                  (_g71277254_ _stx7121_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6801
      (lambda (_stx6803_ _compiled-body?6804_)
        (let ((_generate-simple6806_
               (lambda (_hd7108_ _body7109_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7108_
                  _body7109_
                  _compiled-body?6804_))))
          (let ((_generate-values-post6808_
                 (lambda (_post6880_ _body6881_)
                   ((letrec ((_lp6883_
                              (lambda (_rest6885_ _body6886_)
                                (let ((_rest68876895_ _rest6885_))
                                  (let ((_E68906899_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest68876895_))))
                                    (let ((_else68896903_
                                           (lambda () _body6886_)))
                                      (let ((_K68916909_
                                             (lambda (_rest6906_ _bind6907_)
                                               (_lp6883_
                                                _rest6906_
                                                (cons 'let
                                                      (cons _bind6907_
                                                            (cons _body6886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest68876895_)
                                            (let ((_hd68926912_
                                                   (##car _rest68876895_))
                                                  (_tl68936914_
                                                   (##cdr _rest68876895_)))
                                              (let ((_bind6917_ _hd68926912_))
                                                (let ((_rest6919_
                                                       _tl68936914_))
                                                  (_K68916909_
                                                   _rest6919_
                                                   _bind6917_))))
                                            (_else68896903_)))))))))
                      _lp6883_)
                    _post6880_
                    _body6881_))))
            (let ((_generate-values-check6809_
                   (lambda (_check6877_ _body6878_)
                     (cons 'begin
                           (foldr cons
                                  (cons _body6878_ '())
                                  (reverse _check6877_))))))
              (let ((_generate-values6807_
                     (lambda (_hd6921_ _body6922_)
                       ((letrec ((_lp6924_
                                  (lambda (_rest6926_
                                           _bind6927_
                                           _check6928_
                                           _post6929_)
                                    (let ((_g69326943_
                                           (lambda (_g69336940_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69336940_))))
                                      (let ((_g69316957_
                                             (lambda (_g69336946_)
                                               ((lambda ()
                                                  (let ((_body6950_
                                                         (if _compiled-body?6804_
                                                             _body6922_
                                                             (gxc#compile-e
                                                              _body6922_))))
                                                    (let ((_body6952_
                                                           (_generate-values-post6808_
                                                            _post6929_
                                                            _body6950_)))
                                                      (let ((_body6954_
                                                             (_generate-values-check6809_
                                                              _check6928_
                                                              _body6952_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind6927_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6954_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g69307105_
                                               (lambda (_g69336960_)
                                                 (if (gx#stx-pair? _g69336960_)
                                                     (let ((_e69366962_
                                                            (gx#stx-e
                                                             _g69336960_)))
                                                       (let ((_hd69376965_
                                                              (##car _e69366962_))
                                                             (_tl69386967_
                                                              (##cdr _e69366962_)))
                                                         ((lambda (_L6970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6971_)
                    (let ((_g69867011_
                           (lambda (_g69877008_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g69877008_))))
                      (let ((_g69857055_
                             (lambda (_g69877014_)
                               (if (gx#stx-pair? _g69877014_)
                                   (let ((_e70017016_ (gx#stx-e _g69877014_)))
                                     (let ((_hd70027019_ (##car _e70017016_))
                                           (_tl70037021_ (##cdr _e70017016_)))
                                       (if (gx#stx-pair? _tl70037021_)
                                           (let ((_e70047024_
                                                  (gx#stx-e _tl70037021_)))
                                             (let ((_hd70057027_
                                                    (##car _e70047024_))
                                                   (_tl70067029_
                                                    (##cdr _e70047024_)))
                                               (if (gx#stx-null? _tl70067029_)
                                                   ((lambda (_L7032_ _L7033_)
                                                      (let ((_vals7046_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7048_
                                                               (gxc#compile-e
                                                                _L7032_)))
                                                          (let ((_check-values7050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7046_
                          _L7033_)))
                    (let ((_refs7052_
                           (gxc#generate-runtime-let-values-bind
                            _vals7046_
                            _L7033_)))
                      (let ()
                        (_lp6924_
                         _L6970_
                         (cons (cons _vals7046_ (cons _expr7048_ '()))
                               _bind6927_)
                         (cons _check-values7050_ _check6928_)
                         (cons _refs7052_ _post6929_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd70057027_
                                                    _hd70027019_)
                                                   (_g69867011_ _g69877014_))))
                                           (_g69867011_ _g69877014_))))
                                   (_g69867011_ _g69877014_)))))
                        (let ((_g69847102_
                               (lambda (_g69877058_)
                                 (if (gx#stx-pair? _g69877058_)
                                     (let ((_e69907060_
                                            (gx#stx-e _g69877058_)))
                                       (let ((_hd69917063_ (##car _e69907060_))
                                             (_tl69927065_
                                              (##cdr _e69907060_)))
                                         (if (gx#stx-pair? _hd69917063_)
                                             (let ((_e69937068_
                                                    (gx#stx-e _hd69917063_)))
                                               (let ((_hd69947071_
                                                      (##car _e69937068_))
                                                     (_tl69957073_
                                                      (##cdr _e69937068_)))
                                                 (if (gx#stx-null?
                                                      _tl69957073_)
                                                     (if (gx#stx-pair?
                                                          _tl69927065_)
                                                         (let ((_e69967076_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl69927065_)))
                   (let ((_hd69977079_ (##car _e69967076_))
                         (_tl69987081_ (##cdr _e69967076_)))
                     (if (gx#stx-null? _tl69987081_)
                         ((lambda (_L7084_ _L7085_)
                            (let ((_eid7099_
                                   (gxc#generate-runtime-binding-id* _L7085_))
                                  (_expr7100_ (gxc#compile-e _L7084_)))
                              (_lp6924_
                               _L6970_
                               (cons (cons _eid7099_ (cons _expr7100_ '()))
                                     _bind6927_)
                               _check6928_
                               _post6929_)))
                          _hd69977079_
                          _hd69947071_)
                         (_g69857055_ _g69877058_))))
                 (_g69857055_ _g69877058_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69857055_
                                                      _g69877058_))))
                                             (_g69857055_ _g69877058_))))
                                     (_g69857055_ _g69877058_)))))
                          (_g69847102_ _L6971_)))))
                  _tl69386967_
                  _hd69376965_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69316957_
                                                      _g69336960_)))))
                                          (_g69307105_ _rest6926_)))))))
                          _lp6924_)
                        _hd6921_
                        '()
                        '()
                        '()))))
                (let ((_g68116828_
                       (lambda (_g68126825_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g68126825_))))
                  (let ((_g68106874_
                         (lambda (_g68126831_)
                           (if (gx#stx-pair? _g68126831_)
                               (let ((_e68156833_ (gx#stx-e _g68126831_)))
                                 (let ((_hd68166836_ (##car _e68156833_))
                                       (_tl68176838_ (##cdr _e68156833_)))
                                   (if (gx#stx-pair? _tl68176838_)
                                       (let ((_e68186841_
                                              (gx#stx-e _tl68176838_)))
                                         (let ((_hd68196844_
                                                (##car _e68186841_))
                                               (_tl68206846_
                                                (##cdr _e68186841_)))
                                           (if (gx#stx-pair? _tl68206846_)
                                               (let ((_e68216849_
                                                      (gx#stx-e _tl68206846_)))
                                                 (let ((_hd68226852_
                                                        (##car _e68216849_))
                                                       (_tl68236854_
                                                        (##cdr _e68216849_)))
                                                   (if (gx#stx-null?
                                                        _tl68236854_)
                                                       ((lambda (_L6857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6858_)
                  (if (gxc#generate-runtime-simple-let? _L6858_)
                      (_generate-simple6806_ _L6858_ _L6857_)
                      (_generate-values6807_ _L6858_ _L6857_)))
                _hd68226852_
                _hd68196844_)
               (_g68116828_ _g68126831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68116828_ _g68126831_))))
                                       (_g68116828_ _g68126831_))))
                               (_g68116828_ _g68126831_)))))
                    (_g68106874_ _stx6803_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7114_)
          (let ((_compiled-body?7116_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6801
             _stx7114_
             _compiled-body?7116_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g9649_
          (let ((_g9648_ (length _g9649_)))
            (cond ((fx= _g9648_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g9649_))
                  ((fx= _g9648_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6801
                          _g9649_))
                  (else (error "No clause matching arguments" _g9649_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6702_ _hd6703_)
      ((letrec ((_lp6705_
                 (lambda (_rest6707_ _k6708_ _r6709_)
                   (let ((_g67146730_
                          (lambda (_g67156727_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g67156727_))))
                     (let ((_g67136737_
                            (lambda (_g67156733_)
                              ((lambda () (reverse _r6709_))))))
                       (let ((_g67126753_
                              (lambda (_g67156740_)
                                ((lambda (_L6742_)
                                   (if (gx#identifier? _L6742_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6742_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6702_ (cons _k6708_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r6709_)
                                       (_g67136737_ _g67156740_)))
                                 _g67156740_))))
                         (let ((_g67116777_
                                (lambda (_g67156756_)
                                  (if (gx#stx-pair? _g67156756_)
                                      (let ((_e67226758_
                                             (gx#stx-e _g67156756_)))
                                        (let ((_hd67236761_
                                               (##car _e67226758_))
                                              (_tl67246763_
                                               (##cdr _e67226758_)))
                                          ((lambda (_L6766_ _L6767_)
                                             (_lp6705_
                                              _L6766_
                                              (fx+ _k6708_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6767_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6702_ (cons _k6708_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6709_)))
                                           _tl67246763_
                                           _hd67236761_)))
                                      (_g67126753_ _g67156756_)))))
                           (let ((_g67106799_
                                  (lambda (_g67156780_)
                                    (if (gx#stx-pair? _g67156780_)
                                        (let ((_e67176782_
                                               (gx#stx-e _g67156780_)))
                                          (let ((_hd67186785_
                                                 (##car _e67176782_))
                                                (_tl67196787_
                                                 (##cdr _e67176782_)))
                                            (if (gx#stx-datum? _hd67186785_)
                                                (if (equal? (gx#stx-e
                                                             _hd67186785_)
                                                            '#f)
                                                    ((lambda (_L6790_)
                                                       (_lp6705_
                                                        _L6790_
                                                        (fx+ _k6708_ '1)
                                                        _r6709_))
                                                     _tl67196787_)
                                                    (_g67116777_ _g67156780_))
                                                (_g67116777_ _g67156780_))))
                                        (_g67116777_ _g67156780_)))))
                             (_g67106799_ _rest6707_)))))))))
         _lp6705_)
       _hd6703_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6380
      (lambda (_stx6382_ _compiled-body?6383_)
        (let ((_generate-simple6385_
               (lambda (_hd6689_ _body6690_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6689_
                  _body6690_
                  _compiled-body?6383_))))
          (let ((_generate-values-check6387_
                 (lambda (_check6463_ _body6464_)
                   (cons 'begin
                         (foldr cons
                                (cons _body6464_ '())
                                (reverse _check6463_))))))
            (let ((_generate-values-post6388_
                   (lambda (_post6456_ _body6457_)
                     (cons 'begin
                           (foldr cons
                                  (cons _body6457_ '())
                                  (map (lambda (_g64586460_)
                                         (cons 'set! _g64586460_))
                                       (reverse _post6456_)))))))
              (let ((_generate-values6386_
                     (lambda (_hd6466_ _body6467_)
                       ((letrec ((_lp6469_
                                  (lambda (_rest6471_
                                           _bind6472_
                                           _check6473_
                                           _post6474_)
                                    (let ((_g64776488_
                                           (lambda (_g64786485_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g64786485_))))
                                      (let ((_g64766502_
                                             (lambda (_g64786491_)
                                               ((lambda ()
                                                  (let ((_body6495_
                                                         (if _compiled-body?6383_
                                                             _body6467_
                                                             (gxc#compile-e
                                                              _body6467_))))
                                                    (let ((_body6497_
                                                           (_generate-values-post6388_
                                                            _post6474_
                                                            _body6495_)))
                                                      (let ((_body6499_
                                                             (_generate-values-check6387_
                                                              _check6473_
                                                              _body6497_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6472_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6499_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g64756686_
                                               (lambda (_g64786505_)
                                                 (if (gx#stx-pair? _g64786505_)
                                                     (let ((_e64816507_
                                                            (gx#stx-e
                                                             _g64786505_)))
                                                       (let ((_hd64826510_
                                                              (##car _e64816507_))
                                                             (_tl64836512_
                                                              (##cdr _e64816507_)))
                                                         ((lambda (_L6515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6516_)
                    (let ((_g65316556_
                           (lambda (_g65326553_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g65326553_))))
                      (let ((_g65306636_
                             (lambda (_g65326559_)
                               (if (gx#stx-pair? _g65326559_)
                                   (let ((_e65466561_ (gx#stx-e _g65326559_)))
                                     (let ((_hd65476564_ (##car _e65466561_))
                                           (_tl65486566_ (##cdr _e65466561_)))
                                       (if (gx#stx-pair? _tl65486566_)
                                           (let ((_e65496569_
                                                  (gx#stx-e _tl65486566_)))
                                             (let ((_hd65506572_
                                                    (##car _e65496569_))
                                                   (_tl65516574_
                                                    (##cdr _e65496569_)))
                                               (if (gx#stx-null? _tl65516574_)
                                                   ((lambda (_L6577_ _L6578_)
                                                      (let ((_vals6591_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6593_
                                                               (gxc#compile-e
                                                                _L6577_)))
                                                          (let ((_check-values6595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6591_
                          _L6578_)))
                    (let ((_refs6597_
                           (gxc#generate-runtime-let-values-bind
                            _vals6591_
                            _L6578_)))
                      (let ()
                        (_lp6469_
                         _L6515_
                         (foldl cons
                                (cons (cons _vals6591_ (cons _expr6593_ '()))
                                      _bind6472_)
                                (map (lambda (_e65996601_)
                                       (let ((_g66036612_ _e65996601_))
                                         (let ((_E66056616_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g66036612_))))
                                           (let ((_K66066621_
                                                  (lambda (_eid6619_)
                                                    (cons _eid6619_
                                                          (cons '#!void
                                                                '())))))
                                             (if (##pair? _g66036612_)
                                                 (let ((_hd66076624_
                                                        (##car _g66036612_))
                                                       (_tl66086626_
                                                        (##cdr _g66036612_)))
                                                   (let ((_eid6629_
                                                          _hd66076624_))
                                                     (if (##pair? _tl66086626_)
                                                         (let ((_hd66096631_
                                                                (##car _tl66086626_))
                                                               (_tl66106633_
                                                                (##cdr _tl66086626_)))
                                                           (if (##null? _tl66106633_)
                                                               (_K66066621_
                                                                _eid6629_)
                                                               (_E66056616_)))
                                                         (_E66056616_))))
                                                 (_E66056616_))))))
                                     _refs6597_))
                         (cons _check-values6595_ _check6473_)
                         (foldl cons _refs6597_ _post6474_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd65506572_
                                                    _hd65476564_)
                                                   (_g65316556_ _g65326559_))))
                                           (_g65316556_ _g65326559_))))
                                   (_g65316556_ _g65326559_)))))
                        (let ((_g65296683_
                               (lambda (_g65326639_)
                                 (if (gx#stx-pair? _g65326639_)
                                     (let ((_e65356641_
                                            (gx#stx-e _g65326639_)))
                                       (let ((_hd65366644_ (##car _e65356641_))
                                             (_tl65376646_
                                              (##cdr _e65356641_)))
                                         (if (gx#stx-pair? _hd65366644_)
                                             (let ((_e65386649_
                                                    (gx#stx-e _hd65366644_)))
                                               (let ((_hd65396652_
                                                      (##car _e65386649_))
                                                     (_tl65406654_
                                                      (##cdr _e65386649_)))
                                                 (if (gx#stx-null?
                                                      _tl65406654_)
                                                     (if (gx#stx-pair?
                                                          _tl65376646_)
                                                         (let ((_e65416657_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65376646_)))
                   (let ((_hd65426660_ (##car _e65416657_))
                         (_tl65436662_ (##cdr _e65416657_)))
                     (if (gx#stx-null? _tl65436662_)
                         ((lambda (_L6665_ _L6666_)
                            (let ((_eid6680_
                                   (gxc#generate-runtime-binding-id* _L6666_))
                                  (_expr6681_ (gxc#compile-e _L6665_)))
                              (_lp6469_
                               _L6515_
                               (cons (cons _eid6680_ (cons _expr6681_ '()))
                                     _bind6472_)
                               _check6473_
                               _post6474_)))
                          _hd65426660_
                          _hd65396652_)
                         (_g65306636_ _g65326639_))))
                 (_g65306636_ _g65326639_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65306636_
                                                      _g65326639_))))
                                             (_g65306636_ _g65326639_))))
                                     (_g65306636_ _g65326639_)))))
                          (_g65296683_ _L6516_)))))
                  _tl64836512_
                  _hd64826510_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g64766502_
                                                      _g64786505_)))))
                                          (_g64756686_ _rest6471_)))))))
                          _lp6469_)
                        _hd6466_
                        '()
                        '()
                        '()))))
                (let ((_g63906407_
                       (lambda (_g63916404_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g63916404_))))
                  (let ((_g63896453_
                         (lambda (_g63916410_)
                           (if (gx#stx-pair? _g63916410_)
                               (let ((_e63946412_ (gx#stx-e _g63916410_)))
                                 (let ((_hd63956415_ (##car _e63946412_))
                                       (_tl63966417_ (##cdr _e63946412_)))
                                   (if (gx#stx-pair? _tl63966417_)
                                       (let ((_e63976420_
                                              (gx#stx-e _tl63966417_)))
                                         (let ((_hd63986423_
                                                (##car _e63976420_))
                                               (_tl63996425_
                                                (##cdr _e63976420_)))
                                           (if (gx#stx-pair? _tl63996425_)
                                               (let ((_e64006428_
                                                      (gx#stx-e _tl63996425_)))
                                                 (let ((_hd64016431_
                                                        (##car _e64006428_))
                                                       (_tl64026433_
                                                        (##cdr _e64006428_)))
                                                   (if (gx#stx-null?
                                                        _tl64026433_)
                                                       ((lambda (_L6436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6437_)
                  (if (gxc#generate-runtime-simple-let? _L6437_)
                      (_generate-simple6385_ _L6437_ _L6436_)
                      (_generate-values6386_ _L6437_ _L6436_)))
                _hd64016431_
                _hd63986423_)
               (_g63906407_ _g63916410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63906407_ _g63916410_))))
                                       (_g63906407_ _g63916410_))))
                               (_g63906407_ _g63916410_)))))
                    (_g63896453_ _stx6382_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6695_)
          (let ((_compiled-body?6697_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6380
             _stx6695_
             _compiled-body?6697_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g9651_
          (let ((_g9650_ (length _g9651_)))
            (cond ((fx= _g9650_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g9651_))
                  ((fx= _g9650_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6380
                          _g9651_))
                  (else (error "No clause matching arguments" _g9651_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5501_)
      (let ((_collect-closures5504_
             (lambda (_forms6322_)
               (map (lambda (_e63236325_)
                      (let ((_g63276336_ _e63236325_))
                        (let ((_E63296340_
                               (lambda ()
                                 (error '"No clause matching" _g63276336_))))
                          (let ((_K63306345_
                                 (lambda (_expr6343_)
                                   (gxc#collect-expression-refs _expr6343_))))
                            (if (##pair? _g63276336_)
                                (let ((_hd63316348_ (##car _g63276336_))
                                      (_tl63326350_ (##cdr _g63276336_)))
                                  (if (##pair? _tl63326350_)
                                      (let ((_hd63336353_ (##car _tl63326350_))
                                            (_tl63346355_
                                             (##cdr _tl63326350_)))
                                        (let ((_expr6358_ _hd63336353_))
                                          (if (##null? _tl63346355_)
                                              (_K63306345_ _expr6358_)
                                              (_E63296340_))))
                                      (_E63296340_)))
                                (_E63296340_))))))
                    _forms6322_))))
        (let ((_collect-bindings5505_
               (lambda (_forms6246_)
                 (map (lambda (_e62476249_)
                        (let ((_g62516260_ _e62476249_))
                          (let ((_E62536264_
                                 (lambda ()
                                   (error '"No clause matching" _g62516260_))))
                            (let ((_K62546307_
                                   (lambda (_bind6267_)
                                     ((letrec ((_lp6269_
                                                (lambda (_rest6271_ _r6272_)
                                                  (let ((_rest62736281_
                                                         _rest6271_))
                                                    (let ((_E62766285_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest62736281_))))
              (let ((_else62756289_
                     (lambda ()
                       (if (gx#identifier? _rest6271_)
                           (cons _rest6271_ _r6272_)
                           _r6272_))))
                (let ((_K62776295_
                       (lambda (_rest6292_ _id6293_)
                         (if (gx#identifier? _id6293_)
                             (_lp6269_
                              _rest6292_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6293_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6272_))
                             (_lp6269_ _rest6292_ _r6272_)))))
                  (if (##pair? _rest62736281_)
                      (let ((_hd62786298_ (##car _rest62736281_))
                            (_tl62796300_ (##cdr _rest62736281_)))
                        (let ((_id6303_ _hd62786298_))
                          (let ((_rest6305_ _tl62796300_))
                            (_K62776295_ _rest6305_ _id6303_))))
                      (_else62756289_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6269_)
                                      _bind6267_
                                      '()))))
                              (if (##pair? _g62516260_)
                                  (let ((_hd62556310_ (##car _g62516260_))
                                        (_tl62566312_ (##cdr _g62516260_)))
                                    (let ((_bind6315_ _hd62556310_))
                                      (if (##pair? _tl62566312_)
                                          (let ((_hd62576317_
                                                 (##car _tl62566312_))
                                                (_tl62586319_
                                                 (##cdr _tl62566312_)))
                                            (if (##null? _tl62586319_)
                                                (_K62546307_ _bind6315_)
                                                (_E62536264_)))
                                          (_E62536264_))))
                                  (_E62536264_))))))
                      _forms6246_))))
          (let ((_closure-reference?5509_
                 (lambda (_closure5798_ _bindings5799_)
                   (ormap (lambda (_g58005802_)
                            (table-ref _closure5798_ _g58005802_ '#f))
                          _bindings5799_))))
            (let ((_is-effect-expr?5511_
                   (lambda (_expr5709_)
                     (let ((_g57115721_
                            (lambda (_g57125718_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57125718_))))
                       (let ((_g57105744_
                              (lambda (_g57125724_)
                                (if (gx#stx-pair? _g57125724_)
                                    (let ((_e57145726_ (gx#stx-e _g57125724_)))
                                      (let ((_hd57155729_ (##car _e57145726_))
                                            (_tl57165731_ (##cdr _e57145726_)))
                                        ((lambda (_L5734_)
                                           (not (memq (gx#stx-e _L5734_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd57155729_)))
                                    (_g57115721_ _g57125724_)))))
                         (_g57105744_ _expr5709_))))))
              (let ((_is-lambda-expr?5512_
                     (lambda (_expr5671_)
                       (let ((_g56735683_
                              (lambda (_g56745680_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g56745680_))))
                         (let ((_g56725706_
                                (lambda (_g56745686_)
                                  (if (gx#stx-pair? _g56745686_)
                                      (let ((_e56765688_
                                             (gx#stx-e _g56745686_)))
                                        (let ((_hd56775691_
                                               (##car _e56765688_))
                                              (_tl56785693_
                                               (##cdr _e56765688_)))
                                          ((lambda (_L5696_)
                                             (memq (gx#stx-e _L5696_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd56775691_)))
                                      (_g56735683_ _g56745686_)))))
                           (_g56725706_ _expr5671_))))))
                (let ((_lift-rec5508_
                       (lambda (_forms5805_)
                         ((letrec ((_lp5807_
                                    (lambda (_rest5809_
                                             _pre5810_
                                             _bind5811_
                                             _init5812_)
                                      (let ((_rest58135821_ _rest5809_))
                                        (let ((_E58165825_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest58135821_))))
                                          (let ((_else58155829_
                                                 (lambda ()
                                                   (values (reverse _pre5810_)
                                                           (reverse _bind5811_)
                                                           (reverse _init5812_)))))
                                            (let ((_K58176020_
                                                   (lambda (_rest5832_
                                                            _bind-hd5833_)
                                                     (let ((_g58375872_
                                                            (lambda (_g58385869_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g58385869_))))
                                                       (let ((_g58365929_
                                                              (lambda (_g58385875_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g58385875_)
                            (let ((_e58625877_ (gx#stx-e _g58385875_)))
                              (let ((_hd58635880_ (##car _e58625877_))
                                    (_tl58645882_ (##cdr _e58625877_)))
                                (if (gx#stx-pair? _tl58645882_)
                                    (let ((_e58655885_
                                           (gx#stx-e _tl58645882_)))
                                      (let ((_hd58665888_ (##car _e58655885_))
                                            (_tl58675890_ (##cdr _e58655885_)))
                                        (if (gx#stx-null? _tl58675890_)
                                            ((lambda (_L5893_ _L5894_)
                                               (let ((_vals5913_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr5915_
                                                        (gxc#compile-e
                                                         _L5893_)))
                                                   (let ((_check-values5917_
                                                          (gxc#generate-runtime-check-values
                                                           _vals5913_
                                                           _L5894_)))
                                                     (let ((_refs5919_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals5913_
                                                             _L5894_)))
                                                       (let ()
                                                         (_lp5807_
                                                          _rest5832_
                                                          (foldl (lambda (_ref5922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r5923_)
                           (cons (cons (car _ref5922_) (cons '#!void '()))
                                 _r5923_))
                         _pre5810_
                         _refs5919_)
                  _bind5811_
                  (cons (cons 'let
                              (cons (cons (cons _vals5913_
                                                (cons _expr5915_ '()))
                                          '())
                                    (cons _check-values5917_
                                          (cons (map (lambda (_g59245926_)
                                                       (cons 'set!
                                                             _g59245926_))
                                                     _refs5919_)
                                                '()))))
                        _init5812_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd58665888_
                                             _hd58635880_)
                                            (_g58375872_ _g58385875_))))
                                    (_g58375872_ _g58385875_))))
                            (_g58375872_ _g58385875_)))))
                 (let ((_g58355975_
                        (lambda (_g58385932_)
                          (if (gx#stx-pair? _g58385932_)
                              (let ((_e58515934_ (gx#stx-e _g58385932_)))
                                (let ((_hd58525937_ (##car _e58515934_))
                                      (_tl58535939_ (##cdr _e58515934_)))
                                  (if (gx#stx-pair? _hd58525937_)
                                      (let ((_e58545942_
                                             (gx#stx-e _hd58525937_)))
                                        (let ((_hd58555945_
                                               (##car _e58545942_))
                                              (_tl58565947_
                                               (##cdr _e58545942_)))
                                          (if (gx#stx-null? _tl58565947_)
                                              (if (gx#stx-pair? _tl58535939_)
                                                  (let ((_e58575950_
                                                         (gx#stx-e
                                                          _tl58535939_)))
                                                    (let ((_hd58585953_
                                                           (##car _e58575950_))
                                                          (_tl58595955_
                                                           (##cdr _e58575950_)))
                                                      (if (gx#stx-null?
                                                           _tl58595955_)
                                                          ((lambda (_L5958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5959_)
                     (let ((_eid5973_
                            (gxc#generate-runtime-binding-id _L5959_)))
                       (if (_is-lambda-expr?5512_ _L5958_)
                           (_lp5807_
                            _rest5832_
                            _pre5810_
                            (cons (cons _eid5973_
                                        (cons (gxc#compile-e _L5958_) '()))
                                  _bind5811_)
                            _init5812_)
                           (_lp5807_
                            _rest5832_
                            (cons (cons _eid5973_ (cons '#!void '()))
                                  _pre5810_)
                            _bind5811_
                            (cons (cons 'set!
                                        (cons _eid5973_
                                              (cons (gxc#compile-e _L5958_)
                                                    '())))
                                  _init5812_)))))
                   _hd58585953_
                   _hd58555945_)
                  (_g58365929_ _g58385932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g58365929_ _g58385932_))
                                              (_g58365929_ _g58385932_))))
                                      (_g58365929_ _g58385932_))))
                              (_g58365929_ _g58385932_)))))
                   (let ((_g58346017_
                          (lambda (_g58385978_)
                            (if (gx#stx-pair? _g58385978_)
                                (let ((_e58405980_ (gx#stx-e _g58385978_)))
                                  (let ((_hd58415983_ (##car _e58405980_))
                                        (_tl58425985_ (##cdr _e58405980_)))
                                    (if (gx#stx-pair? _hd58415983_)
                                        (let ((_e58435988_
                                               (gx#stx-e _hd58415983_)))
                                          (let ((_hd58445991_
                                                 (##car _e58435988_))
                                                (_tl58455993_
                                                 (##cdr _e58435988_)))
                                            (if (gx#stx-datum? _hd58445991_)
                                                (if (equal? (gx#stx-e
                                                             _hd58445991_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl58455993_)
                                                        (if (gx#stx-pair?
                                                             _tl58425985_)
                                                            (let ((_e58465996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl58425985_)))
                      (let ((_hd58475999_ (##car _e58465996_))
                            (_tl58486001_ (##cdr _e58465996_)))
                        (if (gx#stx-null? _tl58486001_)
                            ((lambda (_L6004_)
                               (_lp5807_
                                _rest5832_
                                _pre5810_
                                _bind5811_
                                (cons (gxc#compile-e _L6004_) _init5812_)))
                             _hd58475999_)
                            (_g58355975_ _g58385978_))))
                    (_g58355975_ _g58385978_))
                (_g58355975_ _g58385978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g58355975_ _g58385978_))
                                                (_g58355975_ _g58385978_))))
                                        (_g58355975_ _g58385978_))))
                                (_g58355975_ _g58385978_)))))
                     (_g58346017_ _bind-hd5833_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest58135821_)
                                                  (let ((_hd58186023_
                                                         (##car _rest58135821_))
                                                        (_tl58196025_
                                                         (##cdr _rest58135821_)))
                                                    (let ((_bind-hd6028_
                                                           _hd58186023_))
                                                      (let ((_rest6030_
                                                             _tl58196025_))
                                                        (_K58176020_
                                                         _rest6030_
                                                         _bind-hd6028_))))
                                                  (_else58155829_)))))))))
                            _lp5807_)
                          _forms5805_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5510_
                         (lambda (_hd-bind5747_)
                           (let ((_g57495762_
                                  (lambda (_g57505759_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g57505759_))))
                             (let ((_g57485795_
                                    (lambda (_g57505765_)
                                      (if (gx#stx-pair? _g57505765_)
                                          (let ((_e57525767_
                                                 (gx#stx-e _g57505765_)))
                                            (let ((_hd57535770_
                                                   (##car _e57525767_))
                                                  (_tl57545772_
                                                   (##cdr _e57525767_)))
                                              (if (gx#stx-pair? _tl57545772_)
                                                  (let ((_e57555775_
                                                         (gx#stx-e
                                                          _tl57545772_)))
                                                    (let ((_hd57565778_
                                                           (##car _e57555775_))
                                                          (_tl57575780_
                                                           (##cdr _e57555775_)))
                                                      (if (gx#stx-null?
                                                           _tl57575780_)
                                                          ((lambda (_L5783_)
                                                             (_is-effect-expr?5511_
                                                              _L5783_))
                                                           _hd57565778_)
                                                          (_g57495762_
                                                           _g57505765_))))
                                                  (_g57495762_ _g57505765_))))
                                          (_g57495762_ _g57505765_)))))
                               (_g57485795_ _hd-bind5747_))))))
                    (let ((_lift-pre5506_
                           (lambda (_hd6139_ _bindings6140_ _closures6141_)
                             ((letrec ((_lp6143_
                                        (lambda (_rest-forms6145_
                                                 _rest-bindings6146_
                                                 _rest-closures6147_
                                                 _post-forms6148_
                                                 _post-bindings6149_
                                                 _post-closures6150_
                                                 _pre-forms6151_
                                                 _lifted?6152_)
                                          (let ((_rest-forms61536169_
                                                 _rest-forms6145_)
                                                (_rest-bindings61546171_
                                                 _rest-bindings6146_)
                                                (_rest-closures61556173_
                                                 _rest-closures6147_))
                                            (let ((_E61586177_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms61536169_
                                                            _rest-bindings61546171_
                                                            _rest-closures61556173_))))
                                              (let ((_else61576181_
                                                     (lambda ()
                                                       (if _lifted?6152_
                                                           (_lp6143_
                                                            (reverse _post-forms6148_)
                                                            (reverse _post-bindings6149_)
                                                            (reverse _post-closures6150_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6151_
                                                            '#f)
                                                           (values (reverse _pre-forms6151_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6148_)
                           (reverse _post-bindings6149_)
                           (reverse _post-closures6150_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K61596234_
                                                       (lambda (_rest-forms6184_
                                                                _form6185_)
                                                         (let ((_K61606222_
                                                                (lambda (_rest-bindings6187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6188_)
                          (let ((_K61616210_
                                 (lambda (_rest-closures6190_ _closure6191_)
                                   (if (let ((_$e6193_
                                              (_closure-reference?5509_
                                               _closure6191_
                                               _bindings6188_)))
                                         (if _$e6193_
                                             _$e6193_
                                             (let ((_$e6200_
                                                    (ormap (lambda (_g61956197_)
                                                             (_closure-reference?5509_
                                                              _closure6191_
                                                              _g61956197_))
                                                           _rest-bindings6187_)))
                                               (if _$e6200_
                                                   _$e6200_
                                                   (let ((_$e6207_
                                                          (ormap (lambda (_g62026204_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?5509_
                            _closure6191_
                            _g62026204_))
                         _post-bindings6149_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6207_
                                                         _$e6207_
                                                         (if (_is-effect-bind?5510_
                                                              _form6185_)
                                                             (find _is-effect-bind?5510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6148_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6143_
                                        _rest-forms6184_
                                        _rest-bindings6187_
                                        _rest-closures6190_
                                        (cons _form6185_ _post-forms6148_)
                                        (cons _bindings6188_
                                              _post-bindings6149_)
                                        (cons _closure6191_
                                              _post-closures6150_)
                                        _pre-forms6151_
                                        _lifted?6152_)
                                       (_lp6143_
                                        _rest-forms6184_
                                        _rest-bindings6187_
                                        _rest-closures6190_
                                        _post-forms6148_
                                        _post-bindings6149_
                                        _post-closures6150_
                                        (cons _form6185_ _pre-forms6151_)
                                        '#t)))))
                            (if (##pair? _rest-closures61556173_)
                                (let ((_hd61626213_
                                       (##car _rest-closures61556173_))
                                      (_tl61636215_
                                       (##cdr _rest-closures61556173_)))
                                  (let ((_closure6218_ _hd61626213_))
                                    (let ((_rest-closures6220_ _tl61636215_))
                                      (_K61616210_
                                       _rest-closures6220_
                                       _closure6218_))))
                                (_else61576181_))))))
                   (if (##pair? _rest-bindings61546171_)
                       (let ((_hd61646225_ (##car _rest-bindings61546171_))
                             (_tl61656227_ (##cdr _rest-bindings61546171_)))
                         (let ((_bindings6230_ _hd61646225_))
                           (let ((_rest-bindings6232_ _tl61656227_))
                             (_K61606222_
                              _rest-bindings6232_
                              _bindings6230_))))
                       (_else61576181_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms61536169_)
                                                      (let ((_hd61666237_
                                                             (##car _rest-forms61536169_))
                                                            (_tl61676239_
                                                             (##cdr _rest-forms61536169_)))
                                                        (let ((_form6242_
                                                               _hd61666237_))
                                                          (let ((_rest-forms6244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl61676239_))
                    (_K61596234_ _rest-forms6244_ _form6242_))))
              (_else61576181_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6143_)
                              _hd6139_
                              _bindings6140_
                              _closures6141_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5507_
                             (lambda (_hd6032_ _bindings6033_ _closures6034_)
                               ((letrec ((_lp6036_
                                          (lambda (_rest-forms6038_
                                                   _rest-bindings6039_
                                                   _rest-closures6040_
                                                   _pre-forms6041_
                                                   _pre-bindings6042_
                                                   _pre-closures6043_
                                                   _post-forms6044_
                                                   _lifted?6045_)
                                            (let ((_rest-forms60466062_
                                                   _rest-forms6038_)
                                                  (_rest-bindings60476064_
                                                   _rest-bindings6039_)
                                                  (_rest-closures60486066_
                                                   _rest-closures6040_))
                                              (let ((_E60516070_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms60466062_
                                                              _rest-bindings60476064_
                                                              _rest-closures60486066_))))
                                                (let ((_else60506074_
                                                       (lambda ()
                                                         (if _lifted?6045_
                                                             (_lp6036_
                                                              (reverse _pre-forms6041_)
                                                              (reverse _pre-bindings6042_)
                                                              (reverse _pre-closures6043_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6044_
                                                              '#f)
                                                             (values _post-forms6044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6041_
                             _pre-bindings6042_
                             _pre-closures6043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K60526127_
                                                         (lambda (_rest-forms6077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6078_)
                   (let ((_K60536115_
                          (lambda (_rest-bindings6080_ _bindings6081_)
                            (let ((_K60546103_
                                   (lambda (_rest-closures6083_ _closure6084_)
                                     (if (let ((_$e6086_
                                                (_closure-reference?5509_
                                                 _closure6084_
                                                 _bindings6081_)))
                                           (if _$e6086_
                                               _$e6086_
                                               (let ((_$e6093_
                                                      (ormap (lambda (_g60886090_)
                                                               (_closure-reference?5509_
                                                                _g60886090_
                                                                _bindings6081_))
                                                             _rest-closures6083_)))
                                                 (if _$e6093_
                                                     _$e6093_
                                                     (let ((_$e6100_
                                                            (ormap (lambda (_g60956097_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?5509_
                              _g60956097_
                              _bindings6081_))
                           _pre-closures6043_)))
               (if _$e6100_
                   _$e6100_
                   (if (_is-effect-bind?5510_ _form6078_)
                       (find _is-effect-bind?5510_ _pre-forms6041_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6036_
                                          _rest-forms6077_
                                          _rest-bindings6080_
                                          _rest-closures6083_
                                          (cons _form6078_ _pre-forms6041_)
                                          (cons _bindings6081_
                                                _pre-bindings6042_)
                                          (cons _closure6084_
                                                _pre-closures6043_)
                                          _post-forms6044_
                                          _lifted?6045_)
                                         (_lp6036_
                                          _rest-forms6077_
                                          _rest-bindings6080_
                                          _rest-closures6083_
                                          _pre-forms6041_
                                          _pre-bindings6042_
                                          _pre-closures6043_
                                          (cons _form6078_ _post-forms6044_)
                                          '#t)))))
                              (if (##pair? _rest-closures60486066_)
                                  (let ((_hd60556106_
                                         (##car _rest-closures60486066_))
                                        (_tl60566108_
                                         (##cdr _rest-closures60486066_)))
                                    (let ((_closure6111_ _hd60556106_))
                                      (let ((_rest-closures6113_ _tl60566108_))
                                        (_K60546103_
                                         _rest-closures6113_
                                         _closure6111_))))
                                  (_else60506074_))))))
                     (if (##pair? _rest-bindings60476064_)
                         (let ((_hd60576118_ (##car _rest-bindings60476064_))
                               (_tl60586120_ (##cdr _rest-bindings60476064_)))
                           (let ((_bindings6123_ _hd60576118_))
                             (let ((_rest-bindings6125_ _tl60586120_))
                               (_K60536115_
                                _rest-bindings6125_
                                _bindings6123_))))
                         (_else60506074_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms60466062_)
                                                        (let ((_hd60596130_
                                                               (##car _rest-forms60466062_))
                                                              (_tl60606132_
                                                               (##cdr _rest-forms60466062_)))
                                                          (let ((_form6135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd60596130_))
                    (let ((_rest-forms6137_ _tl60606132_))
                      (_K60526127_ _rest-forms6137_ _form6135_))))
                (_else60506074_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6036_)
                                (reverse _hd6032_)
                                (reverse _bindings6033_)
                                (reverse _closures6034_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5503_
                               (lambda (_forms6360_)
                                 (let ((_closures6362_
                                        (_collect-closures5504_ _forms6360_)))
                                   (let ((_bindings6364_
                                          (_collect-bindings5505_
                                           _forms6360_)))
                                     (let ((_g9654_ (_lift-pre5506_
                                                     _forms6360_
                                                     _bindings6364_
                                                     _closures6362_)))
                                       (begin
                                         (let ((_g9655_ (values-count
                                                         _g9654_)))
                                           (if (not (fx= _g9655_ 4))
                                               (error "Context expects 4 values"
                                                      _g9655_)))
                                         (let ((_pre-bind6366_
                                                (values-ref _g9654_ 0))
                                               (_forms6367_
                                                (values-ref _g9654_ 1))
                                               (_bindings6368_
                                                (values-ref _g9654_ 2))
                                               (_closures6369_
                                                (values-ref _g9654_ 3)))
                                           (let ((_g9656_ (_lift-post5507_
                                                           _forms6367_
                                                           _bindings6368_
                                                           _closures6369_)))
                                             (begin
                                               (let ((_g9657_ (values-count
                                                               _g9656_)))
                                                 (if (not (fx= _g9657_ 4))
                                                     (error "Context expects 4 values"
                                                            _g9657_)))
                                               (let ((_post-bind6371_
                                                      (values-ref _g9656_ 0))
                                                     (_forms6372_
                                                      (values-ref _g9656_ 1))
                                                     (_bindings6373_
                                                      (values-ref _g9656_ 2))
                                                     (_closures6374_
                                                      (values-ref _g9656_ 3)))
                                                 (let ((_g9658_ (_lift-rec5508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms6372_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g9659_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g9658_)))
               (if (not (fx= _g9659_ 3))
                   (error "Context expects 3 values" _g9659_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6376_
                                                            (values-ref
                                                             _g9658_
                                                             0))
                                                           (_rec-bind6377_
                                                            (values-ref
                                                             _g9658_
                                                             1))
                                                           (_rec-init6378_
                                                            (values-ref
                                                             _g9658_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6376_
                         _rec-bind6377_
                         _rec-init6378_
                         _post-bind6371_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5513_
                                    (lambda (_hd5600_ _body5601_)
                                      (let ((_hd56025610_ _hd5600_))
                                        (let ((_E56055614_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd56025610_))))
                                          (let ((_else56045618_
                                                 (lambda () _body5601_)))
                                            (let ((_K56065659_
                                                   (lambda (_rest5621_
                                                            _bind5622_)
                                                     (let ((_bind56235632_
                                                            _bind5622_))
                                                       (let ((_E56255636_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind56235632_))))
                 (let ((_K56265642_
                        (lambda (_expr5639_ _hd5640_)
                          (if (gx#stx-ormap gx#identifier? _hd5640_)
                              (gxc#generate-runtime-let-values%__opt-lambda6801
                               (cons '%#let-values
                                     (cons (cons _bind5622_ '())
                                           (cons (_generate-let*5513_
                                                  _rest5621_
                                                  _body5601_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5639_)
                                          (cons (_generate-let*5513_
                                                 _rest5621_
                                                 _body5601_)
                                                '())))))))
                   (if (##pair? _bind56235632_)
                       (let ((_hd56275645_ (##car _bind56235632_))
                             (_tl56285647_ (##cdr _bind56235632_)))
                         (let ((_hd5650_ _hd56275645_))
                           (if (##pair? _tl56285647_)
                               (let ((_hd56295652_ (##car _tl56285647_))
                                     (_tl56305654_ (##cdr _tl56285647_)))
                                 (let ((_expr5657_ _hd56295652_))
                                   (if (##null? _tl56305654_)
                                       (_K56265642_ _expr5657_ _hd5650_)
                                       (_E56255636_))))
                               (_E56255636_))))
                       (_E56255636_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd56025610_)
                                                  (let ((_hd56075662_
                                                         (##car _hd56025610_))
                                                        (_tl56085664_
                                                         (##cdr _hd56025610_)))
                                                    (let ((_bind5667_
                                                           _hd56075662_))
                                                      (let ((_rest5669_
                                                             _tl56085664_))
                                                        (_K56065659_
                                                         _rest5669_
                                                         _bind5667_))))
                                                  (_else56045618_)))))))))
                            (let ((_g55155532_
                                   (lambda (_g55165529_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g55165529_))))
                              (let ((_g55145597_
                                     (lambda (_g55165535_)
                                       (if (gx#stx-pair? _g55165535_)
                                           (let ((_e55195537_
                                                  (gx#stx-e _g55165535_)))
                                             (let ((_hd55205540_
                                                    (##car _e55195537_))
                                                   (_tl55215542_
                                                    (##cdr _e55195537_)))
                                               (if (gx#stx-pair? _tl55215542_)
                                                   (let ((_e55225545_
                                                          (gx#stx-e
                                                           _tl55215542_)))
                                                     (let ((_hd55235548_
                                                            (##car _e55225545_))
                                                           (_tl55245550_
                                                            (##cdr _e55225545_)))
                                                       (if (gx#stx-pair?
                                                            _tl55245550_)
                                                           (let ((_e55255553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl55245550_)))
                     (let ((_hd55265556_ (##car _e55255553_))
                           (_tl55275558_ (##cdr _e55255553_)))
                       (if (gx#stx-null? _tl55275558_)
                           ((lambda (_L5561_ _L5562_)
                              (let ((_g9652_ (_linearize5503_ _L5562_)))
                                (begin
                                  (let ((_g9653_ (values-count _g9652_)))
                                    (if (not (fx= _g9653_ 5))
                                        (error "Context expects 5 values"
                                               _g9653_)))
                                  (let ((_pre5578_ (values-ref _g9652_ 0))
                                        (_rec-pre5579_ (values-ref _g9652_ 1))
                                        (_rec-bind5580_ (values-ref _g9652_ 2))
                                        (_rec-init5581_ (values-ref _g9652_ 3))
                                        (_post5582_ (values-ref _g9652_ 4)))
                                    (let ((_body5584_ (gxc#compile-e _L5561_)))
                                      (let ((_body5586_
                                             (if (null? _post5582_)
                                                 _body5584_
                                                 (_generate-let*5513_
                                                  _post5582_
                                                  _body5584_))))
                                        (let ((_body5588_
                                               (if (null? _rec-init5581_)
                                                   _body5586_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body5586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init5581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5590_
                                                 (if (null? _rec-bind5580_)
                                                     _body5588_
                                                     (cons 'letrec
                                                           (cons _rec-bind5580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5588_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5592_
                                                   (if (null? _rec-pre5579_)
                                                       _body5590_
                                                       (cons 'let
                                                             (cons _rec-pre5579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5590_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5594_
                                                     (if (null? _pre5578_)
                                                         _body5592_
                                                         (_generate-let*5513_
                                                          _pre5578_
                                                          _body5592_))))
                                                (let () _body5594_)))))))))))
                            _hd55265556_
                            _hd55235548_)
                           (_g55155532_ _g55165535_))))
                   (_g55155532_ _g55165535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g55155532_ _g55165535_))))
                                           (_g55155532_ _g55165535_)))))
                                (_g55145597_ _stx5501_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5394_)
      ((letrec ((_lp5396_
                 (lambda (_rest5398_)
                   (let ((_g54025423_
                          (lambda (_g54035420_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g54035420_))))
                     (let ((_g54015430_
                            (lambda (_g54035426_) ((lambda () '#f)))))
                       (let ((_g54005437_
                              (lambda (_g54035433_)
                                (if (gx#stx-null? _g54035433_)
                                    ((lambda () '#t))
                                    (_g54015430_ _g54035433_)))))
                         (let ((_g53995498_
                                (lambda (_g54035440_)
                                  (if (gx#stx-pair? _g54035440_)
                                      (let ((_e54075442_
                                             (gx#stx-e _g54035440_)))
                                        (let ((_hd54085445_
                                               (##car _e54075442_))
                                              (_tl54095447_
                                               (##cdr _e54075442_)))
                                          (if (gx#stx-pair? _hd54085445_)
                                              (let ((_e54105450_
                                                     (gx#stx-e _hd54085445_)))
                                                (let ((_hd54115453_
                                                       (##car _e54105450_))
                                                      (_tl54125455_
                                                       (##cdr _e54105450_)))
                                                  (if (gx#stx-pair?
                                                       _hd54115453_)
                                                      (let ((_e54135458_
                                                             (gx#stx-e
                                                              _hd54115453_)))
                                                        (let ((_hd54145461_
                                                               (##car _e54135458_))
                                                              (_tl54155463_
                                                               (##cdr _e54135458_)))
                                                          (if (gx#stx-null?
                                                               _tl54155463_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl54125455_)
                          (let ((_e54165466_ (gx#stx-e _tl54125455_)))
                            (let ((_hd54175469_ (##car _e54165466_))
                                  (_tl54185471_ (##cdr _e54165466_)))
                              (if (gx#stx-null? _tl54185471_)
                                  ((lambda (_L5474_ _L5475_ _L5476_)
                                     (_lp5396_ _L5474_))
                                   _tl54095447_
                                   _hd54175469_
                                   _hd54145461_)
                                  (_g54005437_ _g54035440_))))
                          (_g54005437_ _g54035440_))
                      (_g54005437_ _g54035440_))))
              (_g54005437_ _g54035440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g54005437_ _g54035440_))))
                                      (_g54005437_ _g54035440_)))))
                           (_g53995498_ _rest5398_))))))))
         _lp5396_)
       _hd5394_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5318_ _hd5319_ _body5320_ _compiled-body?5321_)
      (let ((_generate15323_
             (lambda (_bind5325_)
               (let ((_g53275344_
                      (lambda (_g53285341_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g53285341_))))
                 (let ((_g53265391_
                        (lambda (_g53285347_)
                          (if (gx#stx-pair? _g53285347_)
                              (let ((_e53315349_ (gx#stx-e _g53285347_)))
                                (let ((_hd53325352_ (##car _e53315349_))
                                      (_tl53335354_ (##cdr _e53315349_)))
                                  (if (gx#stx-pair? _hd53325352_)
                                      (let ((_e53345357_
                                             (gx#stx-e _hd53325352_)))
                                        (let ((_hd53355360_
                                               (##car _e53345357_))
                                              (_tl53365362_
                                               (##cdr _e53345357_)))
                                          (if (gx#stx-null? _tl53365362_)
                                              (if (gx#stx-pair? _tl53335354_)
                                                  (let ((_e53375365_
                                                         (gx#stx-e
                                                          _tl53335354_)))
                                                    (let ((_hd53385368_
                                                           (##car _e53375365_))
                                                          (_tl53395370_
                                                           (##cdr _e53375365_)))
                                                      (if (gx#stx-null?
                                                           _tl53395370_)
                                                          ((lambda (_L5373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5374_)
                     (cons (gxc#generate-runtime-binding-id* _L5374_)
                           (cons (gxc#compile-e _L5373_) '())))
                   _hd53385368_
                   _hd53355360_)
                  (_g53275344_ _g53285347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g53275344_ _g53285347_))
                                              (_g53275344_ _g53285347_))))
                                      (_g53275344_ _g53285347_))))
                              (_g53275344_ _g53285347_)))))
                   (_g53265391_ _bind5325_))))))
        (cons _form5318_
              (cons (map _generate15323_ _hd5319_)
                    (cons (if _compiled-body?5321_
                              _body5320_
                              (gxc#compile-e _body5320_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5229_)
      (letrec ((_generate15231_
                (lambda (_datum5283_)
                  (if (let ((_$e5285_ (null? _datum5283_)))
                        (if _$e5285_
                            _$e5285_
                            (let ((_$e5288_ (symbol? _datum5283_)))
                              (if _$e5288_
                                  _$e5288_
                                  (gx#self-quoting? _datum5283_)))))
                      _datum5283_
                      (if (uninterned-symbol? _datum5283_)
                          (gxc#generate-runtime-gensym-reference _datum5283_)
                          (if (pair? _datum5283_)
                              (cons (_generate15231_ (car _datum5283_))
                                    (_generate15231_ (cdr _datum5283_)))
                              (if (box? _datum5283_)
                                  (box (_generate15231_ (unbox _datum5283_)))
                                  (if (vector? _datum5283_)
                                      (vector-map _generate15231_ _datum5283_)
                                      (if (let ((_$e5291_
                                                 (s8vector? _datum5283_)))
                                            (if _$e5291_
                                                _$e5291_
                                                (let ((_$e5294_
                                                       (u8vector?
                                                        _datum5283_)))
                                                  (if _$e5294_
                                                      _$e5294_
                                                      (let ((_$e5297_
                                                             (s16vector?
                                                              _datum5283_)))
                                                        (if _$e5297_
                                                            _$e5297_
                                                            (let ((_$e5300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5283_)))
                      (if _$e5300_
                          _$e5300_
                          (let ((_$e5303_ (s32vector? _datum5283_)))
                            (if _$e5303_
                                _$e5303_
                                (let ((_$e5306_ (u32vector? _datum5283_)))
                                  (if _$e5306_
                                      _$e5306_
                                      (let ((_$e5309_
                                             (s64vector? _datum5283_)))
                                        (if _$e5309_
                                            _$e5309_
                                            (let ((_$e5312_
                                                   (u64vector? _datum5283_)))
                                              (if _$e5312_
                                                  _$e5312_
                                                  (let ((_$e5315_
                                                         (f32vector?
                                                          _datum5283_)))
                                                    (if _$e5315_
                                                        _$e5315_
                                                        (f64vector?
                                                         _datum5283_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5283_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5229_))))))))))
        (let ((_g52335246_
               (lambda (_g52345243_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g52345243_))))
          (let ((_g52325280_
                 (lambda (_g52345249_)
                   (if (gx#stx-pair? _g52345249_)
                       (let ((_e52365251_ (gx#stx-e _g52345249_)))
                         (let ((_hd52375254_ (##car _e52365251_))
                               (_tl52385256_ (##cdr _e52365251_)))
                           (if (gx#stx-pair? _tl52385256_)
                               (let ((_e52395259_ (gx#stx-e _tl52385256_)))
                                 (let ((_hd52405262_ (##car _e52395259_))
                                       (_tl52415264_ (##cdr _e52395259_)))
                                   (if (gx#stx-null? _tl52415264_)
                                       ((lambda (_L5267_)
                                          (cons 'quote
                                                (cons (_generate15231_
                                                       (gx#stx-e _L5267_))
                                                      '())))
                                        _hd52405262_)
                                       (_g52335246_ _g52345249_))))
                               (_g52335246_ _g52345249_))))
                       (_g52335246_ _g52345249_)))))
            (_g52325280_ _stx5229_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5191_)
      (let ((_g51935203_
             (lambda (_g51945200_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51945200_))))
        (let ((_g51925226_
               (lambda (_g51945206_)
                 (if (gx#stx-pair? _g51945206_)
                     (let ((_e51965208_ (gx#stx-e _g51945206_)))
                       (let ((_hd51975211_ (##car _e51965208_))
                             (_tl51985213_ (##cdr _e51965208_)))
                         ((lambda (_L5216_) (map gxc#compile-e _L5216_))
                          _tl51985213_)))
                     (_g51935203_ _g51945206_)))))
          (_g51925226_ _stx5191_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5153_)
      (let ((_g51555165_
             (lambda (_g51565162_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51565162_))))
        (let ((_g51545188_
               (lambda (_g51565168_)
                 (if (gx#stx-pair? _g51565168_)
                     (let ((_e51585170_ (gx#stx-e _g51565168_)))
                       (let ((_hd51595173_ (##car _e51585170_))
                             (_tl51605175_ (##cdr _e51585170_)))
                         ((lambda (_L5178_)
                            (cons 'if (map gxc#compile-e _L5178_)))
                          _tl51605175_)))
                     (_g51555165_ _g51565168_)))))
          (_g51545188_ _stx5153_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5102_)
      (let ((_g51045117_
             (lambda (_g51055114_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51055114_))))
        (let ((_g51035150_
               (lambda (_g51055120_)
                 (if (gx#stx-pair? _g51055120_)
                     (let ((_e51075122_ (gx#stx-e _g51055120_)))
                       (let ((_hd51085125_ (##car _e51075122_))
                             (_tl51095127_ (##cdr _e51075122_)))
                         (if (gx#stx-pair? _tl51095127_)
                             (let ((_e51105130_ (gx#stx-e _tl51095127_)))
                               (let ((_hd51115133_ (##car _e51105130_))
                                     (_tl51125135_ (##cdr _e51105130_)))
                                 (if (gx#stx-null? _tl51125135_)
                                     ((lambda (_L5138_)
                                        (gxc#generate-runtime-binding-id
                                         _L5138_))
                                      _hd51115133_)
                                     (_g51045117_ _g51055120_))))
                             (_g51045117_ _g51055120_))))
                     (_g51045117_ _g51055120_)))))
          (_g51035150_ _stx5102_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5035_)
      (let ((_g50375054_
             (lambda (_g50385051_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50385051_))))
        (let ((_g50365099_
               (lambda (_g50385057_)
                 (if (gx#stx-pair? _g50385057_)
                     (let ((_e50415059_ (gx#stx-e _g50385057_)))
                       (let ((_hd50425062_ (##car _e50415059_))
                             (_tl50435064_ (##cdr _e50415059_)))
                         (if (gx#stx-pair? _tl50435064_)
                             (let ((_e50445067_ (gx#stx-e _tl50435064_)))
                               (let ((_hd50455070_ (##car _e50445067_))
                                     (_tl50465072_ (##cdr _e50445067_)))
                                 (if (gx#stx-pair? _tl50465072_)
                                     (let ((_e50475075_
                                            (gx#stx-e _tl50465072_)))
                                       (let ((_hd50485078_ (##car _e50475075_))
                                             (_tl50495080_
                                              (##cdr _e50475075_)))
                                         (if (gx#stx-null? _tl50495080_)
                                             ((lambda (_L5083_ _L5084_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5084_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5083_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd50485078_
                                              _hd50455070_)
                                             (_g50375054_ _g50385057_))))
                                     (_g50375054_ _g50385057_))))
                             (_g50375054_ _g50385057_))))
                     (_g50375054_ _g50385057_)))))
          (_g50365099_ _stx5035_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx4968_)
      (let ((_g49704987_
             (lambda (_g49714984_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49714984_))))
        (let ((_g49695032_
               (lambda (_g49714990_)
                 (if (gx#stx-pair? _g49714990_)
                     (let ((_e49744992_ (gx#stx-e _g49714990_)))
                       (let ((_hd49754995_ (##car _e49744992_))
                             (_tl49764997_ (##cdr _e49744992_)))
                         (if (gx#stx-pair? _tl49764997_)
                             (let ((_e49775000_ (gx#stx-e _tl49764997_)))
                               (let ((_hd49785003_ (##car _e49775000_))
                                     (_tl49795005_ (##cdr _e49775000_)))
                                 (if (gx#stx-pair? _tl49795005_)
                                     (let ((_e49805008_
                                            (gx#stx-e _tl49795005_)))
                                       (let ((_hd49815011_ (##car _e49805008_))
                                             (_tl49825013_
                                              (##cdr _e49805008_)))
                                         (if (gx#stx-null? _tl49825013_)
                                             ((lambda (_L5016_ _L5017_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5016_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5017_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49815011_
                                              _hd49785003_)
                                             (_g49704987_ _g49714990_))))
                                     (_g49704987_ _g49714990_))))
                             (_g49704987_ _g49714990_))))
                     (_g49704987_ _g49714990_)))))
          (_g49695032_ _stx4968_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx4901_)
      (let ((_g49034920_
             (lambda (_g49044917_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49044917_))))
        (let ((_g49024965_
               (lambda (_g49044923_)
                 (if (gx#stx-pair? _g49044923_)
                     (let ((_e49074925_ (gx#stx-e _g49044923_)))
                       (let ((_hd49084928_ (##car _e49074925_))
                             (_tl49094930_ (##cdr _e49074925_)))
                         (if (gx#stx-pair? _tl49094930_)
                             (let ((_e49104933_ (gx#stx-e _tl49094930_)))
                               (let ((_hd49114936_ (##car _e49104933_))
                                     (_tl49124938_ (##cdr _e49104933_)))
                                 (if (gx#stx-pair? _tl49124938_)
                                     (let ((_e49134941_
                                            (gx#stx-e _tl49124938_)))
                                       (let ((_hd49144944_ (##car _e49134941_))
                                             (_tl49154946_
                                              (##cdr _e49134941_)))
                                         (if (gx#stx-null? _tl49154946_)
                                             ((lambda (_L4949_ _L4950_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4949_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4950_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49144944_
                                              _hd49114936_)
                                             (_g49034920_ _g49044923_))))
                                     (_g49034920_ _g49044923_))))
                             (_g49034920_ _g49044923_))))
                     (_g49034920_ _g49044923_)))))
          (_g49024965_ _stx4901_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4818_)
      (let ((_g48204841_
             (lambda (_g48214838_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48214838_))))
        (let ((_g48194898_
               (lambda (_g48214844_)
                 (if (gx#stx-pair? _g48214844_)
                     (let ((_e48254846_ (gx#stx-e _g48214844_)))
                       (let ((_hd48264849_ (##car _e48254846_))
                             (_tl48274851_ (##cdr _e48254846_)))
                         (if (gx#stx-pair? _tl48274851_)
                             (let ((_e48284854_ (gx#stx-e _tl48274851_)))
                               (let ((_hd48294857_ (##car _e48284854_))
                                     (_tl48304859_ (##cdr _e48284854_)))
                                 (if (gx#stx-pair? _tl48304859_)
                                     (let ((_e48314862_
                                            (gx#stx-e _tl48304859_)))
                                       (let ((_hd48324865_ (##car _e48314862_))
                                             (_tl48334867_
                                              (##cdr _e48314862_)))
                                         (if (gx#stx-pair? _tl48334867_)
                                             (let ((_e48344870_
                                                    (gx#stx-e _tl48334867_)))
                                               (let ((_hd48354873_
                                                      (##car _e48344870_))
                                                     (_tl48364875_
                                                      (##cdr _e48344870_)))
                                                 (if (gx#stx-null?
                                                      _tl48364875_)
                                                     ((lambda (_L4878_
                                                               _L4879_
                                                               _L4880_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4878_)
                            (cons (gxc#compile-e _L4879_)
                                  (cons (gxc#compile-e _L4880_)
                                        (cons ''#f '()))))))
              _hd48354873_
              _hd48324865_
              _hd48294857_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48204841_
                                                      _g48214844_))))
                                             (_g48204841_ _g48214844_))))
                                     (_g48204841_ _g48214844_))))
                             (_g48204841_ _g48214844_))))
                     (_g48204841_ _g48214844_)))))
          (_g48194898_ _stx4818_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4719_)
      (let ((_g47214746_
             (lambda (_g47224743_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47224743_))))
        (let ((_g47204815_
               (lambda (_g47224749_)
                 (if (gx#stx-pair? _g47224749_)
                     (let ((_e47274751_ (gx#stx-e _g47224749_)))
                       (let ((_hd47284754_ (##car _e47274751_))
                             (_tl47294756_ (##cdr _e47274751_)))
                         (if (gx#stx-pair? _tl47294756_)
                             (let ((_e47304759_ (gx#stx-e _tl47294756_)))
                               (let ((_hd47314762_ (##car _e47304759_))
                                     (_tl47324764_ (##cdr _e47304759_)))
                                 (if (gx#stx-pair? _tl47324764_)
                                     (let ((_e47334767_
                                            (gx#stx-e _tl47324764_)))
                                       (let ((_hd47344770_ (##car _e47334767_))
                                             (_tl47354772_
                                              (##cdr _e47334767_)))
                                         (if (gx#stx-pair? _tl47354772_)
                                             (let ((_e47364775_
                                                    (gx#stx-e _tl47354772_)))
                                               (let ((_hd47374778_
                                                      (##car _e47364775_))
                                                     (_tl47384780_
                                                      (##cdr _e47364775_)))
                                                 (if (gx#stx-pair?
                                                      _tl47384780_)
                                                     (let ((_e47394783_
                                                            (gx#stx-e
                                                             _tl47384780_)))
                                                       (let ((_hd47404786_
                                                              (##car _e47394783_))
                                                             (_tl47414788_
                                                              (##cdr _e47394783_)))
                                                         (if (gx#stx-null?
                                                              _tl47414788_)
                                                             ((lambda (_L4791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4792_
                               _L4793_
                               _L4794_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4792_)
                                    (cons (gxc#compile-e _L4791_)
                                          (cons (gxc#compile-e _L4793_)
                                                (cons (gxc#compile-e _L4794_)
                                                      (cons ''#f '())))))))
                      _hd47404786_
                      _hd47374778_
                      _hd47344770_
                      _hd47314762_)
                     (_g47214746_ _g47224749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47214746_
                                                      _g47224749_))))
                                             (_g47214746_ _g47224749_))))
                                     (_g47214746_ _g47224749_))))
                             (_g47214746_ _g47224749_))))
                     (_g47214746_ _g47224749_)))))
          (_g47204815_ _stx4719_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4628_)
      (let ((_g46304640_
             (lambda (_g46314637_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46314637_))))
        (let ((_g46294716_
               (lambda (_g46314643_)
                 (if (gx#stx-pair? _g46314643_)
                     (let ((_e46334645_ (gx#stx-e _g46314643_)))
                       (let ((_hd46344648_ (##car _e46334645_))
                             (_tl46354650_ (##cdr _e46334645_)))
                         ((lambda (_L4653_)
                            (let ((_ht4663_ (make-hash-table-eq)))
                              ((letrec ((_lp4665_
                                         (lambda (_rest4667_ _loads4668_)
                                           (let ((_K4670_ (lambda (_ctx4709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4710_)
                    (let ((_id4712_
                           (##structure-ref
                            _ctx4709_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4663_ _id4712_ '#f)
                          (_lp4665_ _rest4710_ _loads4668_)
                          (let ((_rt4714_
                                 (string-append
                                  (symbol->string _id4712_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht4663_ _id4712_ _rt4714_)
                              (_lp4665_
                               _rest4710_
                               (cons _rt4714_ _loads4668_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest46714679_ _rest4667_))
                                               (let ((_E46744683_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest46714679_))))
                                                 (let ((_else46734691_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g46864688_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g46864688_))
                             (reverse _loads4668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K46754697_
                                                          (lambda (_rest4694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4695_)
                    (if (##structure-instance-of?
                         _in4695_
                         'gx#module-context::t)
                        (_K4670_ _in4695_ _rest4694_)
                        (if (##structure-direct-instance-of?
                             _in4695_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in4695_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4665_ _rest4694_ _loads4668_)
                                (_K4670_ (##structure-ref
                                          (##structure-ref
                                           _in4695_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4694_))
                            (if (##structure-direct-instance-of?
                                 _in4695_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in4695_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4665_ _rest4694_ _loads4668_)
                                    (_K4670_ (##structure-ref
                                              _in4695_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4694_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4628_
                                 _in4695_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest46714679_)
                                                         (let ((_hd46764700_
                                                                (##car _rest46714679_))
                                                               (_tl46774702_
                                                                (##cdr _rest46714679_)))
                                                           (let ((_in4705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd46764700_))
                     (let ((_rest4707_ _tl46774702_))
                       (_K46754697_ _rest4707_ _in4705_))))
                 (_else46734691_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4665_)
                               _L4653_
                               '())))
                          _tl46354650_)))
                     (_g46304640_ _g46314643_)))))
          (_g46294716_ _stx4628_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4569_)
      (let ((_generate-quote4571_
             (lambda (_q4626_)
               (if (gx#identifier? _q4626_)
                   (gxc#generate-runtime-identifier _q4626_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4569_
                    _q4626_)))))
        (let ((_g45734586_
               (lambda (_g45744583_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45744583_))))
          (let ((_g45724623_
                 (lambda (_g45744589_)
                   (if (gx#stx-pair? _g45744589_)
                       (let ((_e45764591_ (gx#stx-e _g45744589_)))
                         (let ((_hd45774594_ (##car _e45764591_))
                               (_tl45784596_ (##cdr _e45764591_)))
                           (if (gx#stx-pair? _tl45784596_)
                               (let ((_e45794599_ (gx#stx-e _tl45784596_)))
                                 (let ((_hd45804602_ (##car _e45794599_))
                                       (_tl45814604_ (##cdr _e45794599_)))
                                   (if (gx#stx-null? _tl45814604_)
                                       ((lambda (_L4607_)
                                          (let ((_gid4620_
                                                 (gxc#generate-runtime-temporary__opt-lambda9058
                                                  '#t))
                                                (_quote-e4621_
                                                 (_generate-quote4571_
                                                  _L4607_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4621_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4620_)))
                                        _hd45804602_)
                                       (_g45734586_ _g45744589_))))
                               (_g45734586_ _g45744589_))))
                       (_g45734586_ _g45744589_)))))
            (_g45724623_ _stx4569_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4502_)
      (let ((_g45044521_
             (lambda (_g45054518_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45054518_))))
        (let ((_g45034566_
               (lambda (_g45054524_)
                 (if (gx#stx-pair? _g45054524_)
                     (let ((_e45084526_ (gx#stx-e _g45054524_)))
                       (let ((_hd45094529_ (##car _e45084526_))
                             (_tl45104531_ (##cdr _e45084526_)))
                         (if (gx#stx-pair? _tl45104531_)
                             (let ((_e45114534_ (gx#stx-e _tl45104531_)))
                               (let ((_hd45124537_ (##car _e45114534_))
                                     (_tl45134539_ (##cdr _e45114534_)))
                                 (if (gx#stx-pair? _tl45134539_)
                                     (let ((_e45144542_
                                            (gx#stx-e _tl45134539_)))
                                       (let ((_hd45154545_ (##car _e45144542_))
                                             (_tl45164547_
                                              (##cdr _e45144542_)))
                                         (if (gx#stx-null? _tl45164547_)
                                             ((lambda (_L4550_ _L4551_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4551_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4550_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd45154545_
                                              _hd45124537_)
                                             (_g45044521_ _g45054524_))))
                                     (_g45044521_ _g45054524_))))
                             (_g45044521_ _g45054524_))))
                     (_g45044521_ _g45054524_)))))
          (_g45034566_ _stx4502_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4451_ _state4452_)
      (let ((_g44544464_
             (lambda (_g44554461_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44554461_))))
        (let ((_g44534499_
               (lambda (_g44554467_)
                 (if (gx#stx-pair? _g44554467_)
                     (let ((_e44574469_ (gx#stx-e _g44554467_)))
                       (let ((_hd44584472_ (##car _e44574469_))
                             (_tl44594474_ (##cdr _e44574469_)))
                         ((lambda (_L4477_)
                            (let ((_c-body4491_
                                   (map (lambda (_g44864488_)
                                          (gxc#compile-e
                                           _g44864488_
                                           _state4452_))
                                        _L4477_)))
                              (let ((_c-body4496_
                                     (filter (lambda (_$obj4493_)
                                               (not (eq? _$obj4493_ '#!void)))
                                             _c-body4491_)))
                                (let () (cons '%#begin _c-body4496_)))))
                          _tl44594474_)))
                     (_g44544464_ _g44554467_)))))
          (_g44534499_ _stx4451_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4359_ _state4360_)
      (let ((_g43624372_
             (lambda (_g43634369_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43634369_))))
        (let ((_g43614448_
               (lambda (_g43634375_)
                 (if (gx#stx-pair? _g43634375_)
                     (let ((_e43654377_ (gx#stx-e _g43634375_)))
                       (let ((_hd43664380_ (##car _e43654377_))
                             (_tl43674382_ (##cdr _e43654377_)))
                         ((lambda (_L4385_)
                            (let ((_phi4395_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4397_
                                     (gxc#meta-state-begin-phi!
                                      _state4360_
                                      _phi4395_)))
                                (let ((_compiled4400_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4385_)
                                           _state4360_))
                                        gx#current-expander-phi
                                        _phi4395_)))
                                  (let ()
                                    (let ((_g44034413_
                                           (lambda (_g44044410_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g44044410_))))
                                      (let ((_g44024445_
                                             (lambda (_g44044416_)
                                               (if (gx#stx-pair? _g44044416_)
                                                   (let ((_e44064418_
                                                          (gx#stx-e
                                                           _g44044416_)))
                                                     (let ((_hd44074421_
                                                            (##car _e44064418_))
                                                           (_tl44084423_
                                                            (##cdr _e44064418_)))
                                                       (if (gx#identifier?
                                                            _hd44074421_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd44074421_)
                                                               ((lambda (_L4426_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4443_
                                 (filter (lambda (_$obj4440_)
                                           (not (eq? _$obj4440_ '#!void)))
                                         _L4426_)))
                            (if _block4397_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4397_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4443_))
                                (if (null? _c-body4443_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4443_)))))
                        _tl44084423_)
                       (_g44034413_ _g44044416_))
                   (_g44034413_ _g44044416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g44034413_
                                                    _g44044416_)))))
                                        (_g44024445_ _compiled4400_))))))))
                          _tl43674382_)))
                     (_g43624372_ _g43634375_)))))
          (_g43614448_ _stx4359_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4290_ _state4291_)
      (begin
        (gxc#meta-state-end-phi! _state4291_)
        (let ((_g42934307_
               (lambda (_g42944304_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42944304_))))
          (let ((_g42924356_
                 (lambda (_g42944310_)
                   (if (gx#stx-pair? _g42944310_)
                       (let ((_e42974312_ (gx#stx-e _g42944310_)))
                         (let ((_hd42984315_ (##car _e42974312_))
                               (_tl42994317_ (##cdr _e42974312_)))
                           (if (gx#stx-pair? _tl42994317_)
                               (let ((_e43004320_ (gx#stx-e _tl42994317_)))
                                 (let ((_hd43014323_ (##car _e43004320_))
                                       (_tl43024325_ (##cdr _e43004320_)))
                                   ((lambda (_L4328_ _L4329_)
                                      (let ((_key4342_
                                             (gx#core-identifier-key _L4329_)))
                                        (begin
                                          (if (interned-symbol? _key4342_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4290_
                                               _L4329_
                                               _key4342_))
                                          (let ((_ctx4344_
                                                 (gx#syntax-local-e__0
                                                  _L4329_)))
                                            (let ((_code4347_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4344_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4291_))
                                                    gx#current-expander-context
                                                    _ctx4344_)))
                                              (let ((_rt4349_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4344_
                                                      '#f)))
                                                (let ((_loader4351_
                                                       (if _rt4349_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4349_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4353_
                                                         (gx#stx-e _L4329_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4291_)
                                                        (cons '%#module
                                                              (cons _modid4353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4347_ _loader4351_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl43024325_
                                    _hd43014323_)))
                               (_g42934307_ _g42944310_))))
                       (_g42934307_ _g42944310_)))))
            (_g42924356_ _stx4290_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4280_ _context-chain4281_)
      ((letrec ((_lp4283_
                 (lambda (_ctx4285_ _path4286_)
                   (let ((_super4288_
                          (##structure-ref
                           _ctx4285_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4288_ _context-chain4281_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4285_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4286_)
                         (if (##structure-instance-of?
                              _super4288_
                              'gx#module-context::t)
                             (_lp4283_
                              _super4288_
                              (cons (car (##structure-ref
                                          _ctx4285_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4286_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4285_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4286_)))))))
         _lp4283_)
       _ctx4280_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4275_
                 (lambda (_ctx4277_ _r4278_)
                   (if (##structure-instance-of?
                        _ctx4277_
                        'gx#module-context::t)
                       (_lp4275_
                        (##structure-ref _ctx4277_ '3 gx#phi-context::t '#f)
                        (cons _ctx4277_ _r4278_))
                       _r4278_))))
         _lp4275_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4044_ _state4045_)
      (let ((_context-chain4047_ (gxc#current-context-chain)))
        (let ((_make-import-spec4048_
               (lambda (_in4211_)
                 (let ((_in42124224_ _in4211_))
                   (let ((_E42144228_
                          (lambda ()
                            (error '"No clause matching" _in42124224_))))
                     (let ((_K42154238_
                            (lambda (_phi4231_
                                     _name4232_
                                     _src-name4233_
                                     _src-phi4234_
                                     _src-key4235_
                                     _src-ctx4236_)
                              (cons _phi4231_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4232_)
                                          (cons _src-phi4234_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4233_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in42124224_)
                           (let ((_e42164241_ (##vector-ref _in42124224_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e42164241_)
                                 (let ((_e42194244_
                                        (##vector-ref _e42164241_ '1)))
                                   (let ((_src-ctx4247_ _e42194244_))
                                     (let ((_e42204249_
                                            (##vector-ref _e42164241_ '2)))
                                       (let ((_src-key4252_ _e42204249_))
                                         (let ((_e42214254_
                                                (##vector-ref _e42164241_ '3)))
                                           (let ((_src-phi4257_ _e42214254_))
                                             (let ((_e42224259_
                                                    (##vector-ref
                                                     _e42164241_
                                                     '4)))
                                               (let ((_src-name4262_
                                                      _e42224259_))
                                                 (let ((_e42174264_
                                                        (##vector-ref
                                                         _in42124224_
                                                         '2)))
                                                   (let ((_name4267_
                                                          _e42174264_))
                                                     (let ((_e42184269_
                                                            (##vector-ref
                                                             _in42124224_
                                                             '3)))
                                                       (let ((_phi4272_
                                                              _e42184269_))
                                                         (_K42154238_
                                                          _phi4272_
                                                          _name4267_
                                                          _src-name4262_
                                                          _src-phi4257_
                                                          _src-key4252_
                                                          _src-ctx4247_)))))))))))))
                                 (_E42144228_)))
                           (_E42144228_))))))))
          (let ((_make-import-path4049_
                 (lambda (_ctx4209_)
                   (gxc#generate-meta-import-path
                    _ctx4209_
                    _context-chain4047_))))
            (let ((_make-import-spec-in4050_
                   (lambda (_ctx4206_ _in4207_)
                     (cons 'spec:
                           (cons (_make-import-path4049_ _ctx4206_)
                                 (reverse _in4207_))))))
              (begin
                (gxc#meta-state-end-phi! _state4045_)
                (let ((_g40524062_
                       (lambda (_g40534059_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g40534059_))))
                  (let ((_g40514203_
                         (lambda (_g40534065_)
                           (if (gx#stx-pair? _g40534065_)
                               (let ((_e40554067_ (gx#stx-e _g40534065_)))
                                 (let ((_hd40564070_ (##car _e40554067_))
                                       (_tl40574072_ (##cdr _e40554067_)))
                                   ((lambda (_L4075_)
                                      ((letrec ((_lp4086_
                                                 (lambda (_rest4088_
                                                          _current-src4089_
                                                          _current-in4090_
                                                          _r4091_)
                                                   (let ((_rest40924100_
                                                          _rest4088_))
                                                     (let ((_E40954104_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest40924100_))))
               (let ((_else40944110_
                      (lambda ()
                        (let ((_r4108_ (if _current-src4089_
                                           (cons (_make-import-spec-in4050_
                                                  _current-src4089_
                                                  _current-in4090_)
                                                 _r4091_)
                                           _r4091_)))
                          (cons '%#import (reverse _r4108_))))))
                 (let ((_K40964191_
                        (lambda (_rest4113_ _in4114_)
                          (if (##structure-direct-instance-of?
                               _in4114_
                               'gx#module-import::t)
                              (let ((_in41154122_ _in4114_))
                                (let ((_E41174126_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in41154122_))))
                                  (let ((_K41184131_
                                         (lambda (_src-ctx4129_)
                                           (if (eq? _current-src4089_
                                                    _src-ctx4129_)
                                               (_lp4086_
                                                _rest4113_
                                                _current-src4089_
                                                (cons (_make-import-spec4048_
                                                       _in4114_)
                                                      _current-in4090_)
                                                _r4091_)
                                               (if _current-src4089_
                                                   (_lp4086_
                                                    _rest4113_
                                                    _src-ctx4129_
                                                    (cons (_make-import-spec4048_
                                                           _in4114_)
                                                          '())
                                                    (cons (_make-import-spec-in4050_
                                                           _current-src4089_
                                                           _current-in4090_)
                                                          _r4091_))
                                                   (_lp4086_
                                                    _rest4113_
                                                    _src-ctx4129_
                                                    (cons (_make-import-spec4048_
                                                           _in4114_)
                                                          '())
                                                    _r4091_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in41154122_)
                                        (let ((_e41194134_
                                               (##vector-ref _in41154122_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e41194134_)
                                              (let ((_e41204137_
                                                     (##vector-ref
                                                      _e41194134_
                                                      '1)))
                                                (let ((_src-ctx4140_
                                                       _e41204137_))
                                                  (_K41184131_ _src-ctx4140_)))
                                              (_E41174126_)))
                                        (_E41174126_)))))
                              (if (##structure-direct-instance-of?
                                   _in4114_
                                   'gx#import-set::t)
                                  (let ((_phi4142_
                                         (##structure-ref
                                          _in4114_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4144_
                                           (##structure-ref
                                            _in4114_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4184_
                                             (let ((_g41454154_
                                                    (_make-import-path4049_
                                                     _src4144_)))
                                               (let ((_E41484158_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g41454154_))))
                                                 (let ((_try-match41474169_
                                                        (lambda ()
                                                          (let ((_K41494164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4162_) (cons 'in: _path4162_))))
                    (let ((_path4167_ _g41454154_))
                      (_K41494164_ _path4167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K41504174_
                                                          (lambda (_path4172_)
                                                            _path4172_)))
                                                     (if (##pair? _g41454154_)
                                                         (let ((_hd41514177_
                                                                (##car _g41454154_))
                                                               (_tl41524179_
                                                                (##cdr _g41454154_)))
                                                           (let ((_path4182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd41514177_))
                     (if (##null? _tl41524179_)
                         (_K41504174_ _path4182_)
                         (_try-match41474169_))))
                 (_try-match41474169_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4186_ (if _current-src4089_
                                                           (cons (_make-import-spec-in4050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4089_
                          _current-in4090_)
                         _r4091_)
                   _r4091_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4086_
                                             _rest4113_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4142_)
                                                       _src-in4184_
                                                       (cons 'phi:
                                                             (cons _phi4142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4184_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4186_)))))))
                                  (if (##structure-instance-of?
                                       _in4114_
                                       'gx#module-context::t)
                                      (let ((_r4189_ (if _current-src4089_
                                                         (cons (_make-import-spec-in4050_
                                                                _current-src4089_
                                                                _current-in4090_)
                                                               _r4091_)
                                                         _r4091_)))
                                        (_lp4086_
                                         _rest4113_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4049_
                                                      _in4114_))
                                               _r4189_)))
                                      '#!void))))))
                   (if (##pair? _rest40924100_)
                       (let ((_hd40974194_ (##car _rest40924100_))
                             (_tl40984196_ (##cdr _rest40924100_)))
                         (let ((_in4199_ _hd40974194_))
                           (let ((_rest4201_ _tl40984196_))
                             (_K40964191_ _rest4201_ _in4199_))))
                       (_else40944110_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4086_)
                                       _L4075_
                                       '#f
                                       '()
                                       '()))
                                    _tl40574072_)))
                               (_g40524062_ _g40534065_)))))
                    (_g40514203_ _stx4044_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3854_ _state3855_)
      (let ((_context-chain3857_ (gxc#current-context-chain)))
        (let ((_make-import-path3858_
               (lambda (_ctx4042_)
                 (gxc#generate-meta-import-path
                  _ctx4042_
                  _context-chain3857_))))
          (let ((_g38603870_
                 (lambda (_g38613867_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g38613867_))))
            (let ((_g38594039_
                   (lambda (_g38613873_)
                     (if (gx#stx-pair? _g38613873_)
                         (let ((_e38633875_ (gx#stx-e _g38613873_)))
                           (let ((_hd38643878_ (##car _e38633875_))
                                 (_tl38653880_ (##cdr _e38633875_)))
                             ((lambda (_L3883_)
                                ((letrec ((_lp3894_
                                           (lambda (_rest3896_ _r3897_)
                                             (let ((_rest38983906_ _rest3896_))
                                               (let ((_E39013910_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest38983906_))))
                                                 (let ((_else39003914_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3897_)))))
                                                   (let ((_K39024027_
                                                          (lambda (_rest3917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3918_)
                    (let ((_out39193932_ _out3918_))
                      (let ((_E39223936_
                             (lambda ()
                               (error '"No clause matching" _out39193932_))))
                        (let ((_try-match39213999_
                               (lambda ()
                                 (let ((_K39233986_
                                        (lambda (_phi3940_ _src3941_)
                                          (let ((_out3981_
                                                 (if _src3941_
                                                     (cons 'import:
                                                           (cons (let ((_g39423951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3858_ _src3941_)))
                           (let ((_E39453955_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g39423951_))))
                             (let ((_try-match39443966_
                                    (lambda ()
                                      (let ((_K39463961_
                                             (lambda (_path3959_)
                                               (cons 'in: _path3959_))))
                                        (let ((_path3964_ _g39423951_))
                                          (_K39463961_ _path3964_))))))
                               (let ((_K39473971_
                                      (lambda (_path3969_) _path3969_)))
                                 (if (##pair? _g39423951_)
                                     (let ((_hd39483974_ (##car _g39423951_))
                                           (_tl39493976_ (##cdr _g39423951_)))
                                       (let ((_path3979_ _hd39483974_))
                                         (if (##null? _tl39493976_)
                                             (_K39473971_ _path3979_)
                                             (_try-match39443966_))))
                                     (_try-match39443966_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3983_
                                                   (if (fxzero? _phi3940_)
                                                       _out3981_
                                                       (cons 'phi:
                                                             (cons _phi3940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3981_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3894_
                                                 _rest3917_
                                                 (cons _out3983_
                                                       _r3897_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out39193932_)
                                       (let ((_e39243989_
                                              (##vector-ref _out39193932_ '1)))
                                         (let ((_src3992_ _e39243989_))
                                           (let ((_e39253994_
                                                  (##vector-ref
                                                   _out39193932_
                                                   '2)))
                                             (let ((_phi3997_ _e39253994_))
                                               (_K39233986_
                                                _phi3997_
                                                _src3992_)))))
                                       (_E39223936_))))))
                          (let ((_K39264006_
                                 (lambda (_name4002_ _phi4003_ _key4004_)
                                   (_lp3894_
                                    _rest3917_
                                    (cons (cons 'spec:
                                                (cons _phi4003_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key4004_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name4002_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3897_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out39193932_)
                                (let ((_e39274009_
                                       (##vector-ref _out39193932_ '1)))
                                  (let ((_e39284012_
                                         (##vector-ref _out39193932_ '2)))
                                    (let ((_key4015_ _e39284012_))
                                      (let ((_e39294017_
                                             (##vector-ref _out39193932_ '3)))
                                        (let ((_phi4020_ _e39294017_))
                                          (let ((_e39304022_
                                                 (##vector-ref
                                                  _out39193932_
                                                  '4)))
                                            (let ((_name4025_ _e39304022_))
                                              (_K39264006_
                                               _name4025_
                                               _phi4020_
                                               _key4015_))))))))
                                (_try-match39213999_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest38983906_)
                                                         (let ((_hd39034030_
                                                                (##car _rest38983906_))
                                                               (_tl39044032_
                                                                (##cdr _rest38983906_)))
                                                           (let ((_out4035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd39034030_))
                     (let ((_rest4037_ _tl39044032_))
                       (_K39024027_ _rest4037_ _out4035_))))
                 (_else39003914_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3894_)
                                 _L3883_
                                 '()))
                              _tl38653880_)))
                         (_g38603870_ _g38613873_)))))
              (_g38594039_ _stx3854_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3815_ _state3816_)
      (begin
        (gxc#meta-state-end-phi! _state3816_)
        (let ((_g38183828_
               (lambda (_g38193825_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38193825_))))
          (let ((_g38173851_
                 (lambda (_g38193831_)
                   (if (gx#stx-pair? _g38193831_)
                       (let ((_e38213833_ (gx#stx-e _g38193831_)))
                         (let ((_hd38223836_ (##car _e38213833_))
                               (_tl38233838_ (##cdr _e38213833_)))
                           ((lambda (_L3841_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3841_)))
                            _tl38233838_)))
                       (_g38183828_ _g38193831_)))))
            (_g38173851_ _stx3815_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3686_ _state3687_)
      (let ((_generate13689_
             (lambda (_id3810_ _eid3811_)
               (let ((_eid3813_ (gx#stx-e _eid3811_)))
                 (begin
                   (if (interned-symbol? _eid3813_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3686_
                        _eid3813_))
                   (cons (gxc#generate-runtime-identifier _id3810_)
                         (cons _eid3813_ '())))))))
        (let ((_g36913719_
               (lambda (_g36923716_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36923716_))))
          (let ((_g36903807_
                 (lambda (_g36923722_)
                   (if (gx#stx-pair? _g36923722_)
                       (let ((_e36953724_ (gx#stx-e _g36923722_)))
                         (let ((_hd36963727_ (##car _e36953724_))
                               (_tl36973729_ (##cdr _e36953724_)))
                           (if (gx#stx-pair/null? _tl36973729_)
                               (if (fx>= (gx#stx-length _tl36973729_) '0)
                                   (let ((_g9660_ (gx#syntax-split-splice
                                                   _tl36973729_
                                                   '0)))
                                     (begin
                                       (let ((_g9661_ (values-count _g9660_)))
                                         (if (not (fx= _g9661_ 2))
                                             (error "Context expects 2 values"
                                                    _g9661_)))
                                       (let ((_target36983732_
                                              (values-ref _g9660_ 0))
                                             (_tl37003734_
                                              (values-ref _g9660_ 1)))
                                         (if (gx#stx-null? _tl37003734_)
                                             (letrec ((_loop37013737_
                                                       (lambda (_hd36993740_
                                                                _eid37053742_
                                                                _id37063744_)
                                                         (if (gx#stx-pair?
                                                              _hd36993740_)
                                                             (let ((_e37023747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd36993740_)))
                       (let ((_lp-hd37033750_ (##car _e37023747_))
                             (_lp-tl37043752_ (##cdr _e37023747_)))
                         (if (gx#stx-pair? _lp-hd37033750_)
                             (let ((_e37093755_ (gx#stx-e _lp-hd37033750_)))
                               (let ((_hd37103758_ (##car _e37093755_))
                                     (_tl37113760_ (##cdr _e37093755_)))
                                 (if (gx#stx-pair? _tl37113760_)
                                     (let ((_e37123763_
                                            (gx#stx-e _tl37113760_)))
                                       (let ((_hd37133766_ (##car _e37123763_))
                                             (_tl37143768_
                                              (##cdr _e37123763_)))
                                         (if (gx#stx-null? _tl37143768_)
                                             (_loop37013737_
                                              _lp-tl37043752_
                                              (cons _hd37133766_ _eid37053742_)
                                              (cons _hd37103758_ _id37063744_))
                                             (_g36913719_ _g36923722_))))
                                     (_g36913719_ _g36923722_))))
                             (_g36913719_ _g36923722_))))
                     (let ((_eid37073771_ (reverse _eid37053742_))
                           (_id37083773_ (reverse _id37063744_)))
                       ((lambda (_L3776_ _L3777_)
                          (cons '%#extern
                                (map _generate13689_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g37923795_ _g37933797_)
                                                (cons _g37923795_ _g37933797_))
                                              '()
                                              _L3777_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g37993802_ _g38003804_)
                                                (cons _g37993802_ _g38003804_))
                                              '()
                                              _L3776_)))))
                        _eid37073771_
                        _id37083773_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop37013737_
                                                _target36983732_
                                                '()
                                                '()))
                                             (_g36913719_ _g36923722_)))))
                                   (_g36913719_ _g36923722_))
                               (_g36913719_ _g36923722_))))
                       (_g36913719_ _g36923722_)))))
            (_g36903807_ _stx3686_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3481_ _state3482_)
      (let ((_generate13484_
             (lambda (_id3681_)
               (let ((_eid3683_ (gxc#generate-runtime-binding-id _id3681_))
                     (_ident3684_ (gxc#generate-runtime-identifier _id3681_)))
                 (cons '%#define-runtime
                       (cons _ident3684_ (cons _eid3683_ '())))))))
        (let ((_generate*3485_
               (lambda (_all3649_)
                 (let ((_all36503658_ _all3649_))
                   (let ((_E36533662_
                          (lambda ()
                            (error '"No clause matching" _all36503658_))))
                     (let ((_else36523666_
                            (lambda () (cons '%#begin _all3649_))))
                       (let ((_K36543671_ (lambda (_one3669_) _one3669_)))
                         (if (##pair? _all36503658_)
                             (let ((_hd36553674_ (##car _all36503658_))
                                   (_tl36563676_ (##cdr _all36503658_)))
                               (let ((_one3679_ _hd36553674_))
                                 (if (##null? _tl36563676_)
                                     (_K36543671_ _one3679_)
                                     (_else36523666_))))
                             (_else36523666_)))))))))
          (let ((_g34873504_
                 (lambda (_g34883501_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g34883501_))))
            (let ((_g34863646_
                   (lambda (_g34883507_)
                     (if (gx#stx-pair? _g34883507_)
                         (let ((_e34913509_ (gx#stx-e _g34883507_)))
                           (let ((_hd34923512_ (##car _e34913509_))
                                 (_tl34933514_ (##cdr _e34913509_)))
                             (if (gx#stx-pair? _tl34933514_)
                                 (let ((_e34943517_ (gx#stx-e _tl34933514_)))
                                   (let ((_hd34953520_ (##car _e34943517_))
                                         (_tl34963522_ (##cdr _e34943517_)))
                                     (if (gx#stx-pair? _tl34963522_)
                                         (let ((_e34973525_
                                                (gx#stx-e _tl34963522_)))
                                           (let ((_hd34983528_
                                                  (##car _e34973525_))
                                                 (_tl34993530_
                                                  (##cdr _e34973525_)))
                                             (if (gx#stx-null? _tl34993530_)
                                                 ((lambda (_L3533_ _L3534_)
                                                    ((letrec ((_lp3550_
                                                               (lambda (_rest3552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3553_)
                         (let ((_g35583574_
                                (lambda (_g35593571_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g35593571_))))
                           (let ((_g35573581_
                                  (lambda (_g35593577_)
                                    ((lambda ()
                                       (_generate*3485_ (reverse _r3553_)))))))
                             (let ((_g35563597_
                                    (lambda (_g35593584_)
                                      ((lambda (_L3586_)
                                         (if (gx#identifier? _L3586_)
                                             (_generate*3485_
                                              (foldl cons
                                                     (cons (_generate13484_
                                                            _L3586_)
                                                           '())
                                                     _r3553_))
                                             (_g35573581_ _g35593584_)))
                                       _g35593584_))))
                               (let ((_g35553621_
                                      (lambda (_g35593600_)
                                        (if (gx#stx-pair? _g35593600_)
                                            (let ((_e35663602_
                                                   (gx#stx-e _g35593600_)))
                                              (let ((_hd35673605_
                                                     (##car _e35663602_))
                                                    (_tl35683607_
                                                     (##cdr _e35663602_)))
                                                ((lambda (_L3610_ _L3611_)
                                                   (_lp3550_
                                                    _L3610_
                                                    (cons (_generate13484_
                                                           _L3611_)
                                                          _r3553_)))
                                                 _tl35683607_
                                                 _hd35673605_)))
                                            (_g35563597_ _g35593600_)))))
                                 (let ((_g35543643_
                                        (lambda (_g35593624_)
                                          (if (gx#stx-pair? _g35593624_)
                                              (let ((_e35613626_
                                                     (gx#stx-e _g35593624_)))
                                                (let ((_hd35623629_
                                                       (##car _e35613626_))
                                                      (_tl35633631_
                                                       (##cdr _e35613626_)))
                                                  (if (gx#stx-datum?
                                                       _hd35623629_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd35623629_)
                          '#f)
                  ((lambda (_L3634_) (_lp3550_ _L3634_ _r3553_)) _tl35633631_)
                  (_g35553621_ _g35593624_))
              (_g35553621_ _g35593624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g35553621_ _g35593624_)))))
                                   (_g35543643_ _rest3552_)))))))))
               _lp3550_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3534_
                                                     '()))
                                                  _hd34983528_
                                                  _hd34953520_)
                                                 (_g34873504_ _g34883507_))))
                                         (_g34873504_ _g34883507_))))
                                 (_g34873504_ _g34883507_))))
                         (_g34873504_ _g34883507_)))))
              (_g34863646_ _stx3481_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3378_ _state3379_)
      (let ((_g33813398_
             (lambda (_g33823395_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33823395_))))
        (let ((_g33803478_
               (lambda (_g33823401_)
                 (if (gx#stx-pair? _g33823401_)
                     (let ((_e33853403_ (gx#stx-e _g33823401_)))
                       (let ((_hd33863406_ (##car _e33853403_))
                             (_tl33873408_ (##cdr _e33853403_)))
                         (if (gx#stx-pair? _tl33873408_)
                             (let ((_e33883411_ (gx#stx-e _tl33873408_)))
                               (let ((_hd33893414_ (##car _e33883411_))
                                     (_tl33903416_ (##cdr _e33883411_)))
                                 (if (gx#stx-pair? _tl33903416_)
                                     (let ((_e33913419_
                                            (gx#stx-e _tl33903416_)))
                                       (let ((_hd33923422_ (##car _e33913419_))
                                             (_tl33933424_
                                              (##cdr _e33913419_)))
                                         (if (gx#stx-null? _tl33933424_)
                                             ((lambda (_L3427_ _L3428_)
                                                (let ((_eid3443_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3428_)))
                                                  (let ((_phi3445_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3447_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3379_
                                                            _phi3445_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g34503457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g34513454_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g34513454_))))
                    (let ((_g34493475_
                           (lambda (_g34513460_)
                             ((lambda (_L3462_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3379_
                                   _phi3445_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3462_ (cons _L3427_ '()))))))
                              _g34513460_))))
                      (_g34493475_ _eid3443_)))
                  (if _block3447_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3447_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3428_)
                                                    (cons _eid3443_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3428_)
                                  (cons _eid3443_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33923422_
                                              _hd33893414_)
                                             (_g33813398_ _g33823401_))))
                                     (_g33813398_ _g33823401_))))
                             (_g33813398_ _g33823401_))))
                     (_g33813398_ _g33823401_)))))
          (_g33803478_ _stx3378_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3310_ _state3311_)
      (let ((_g33133330_
             (lambda (_g33143327_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33143327_))))
        (let ((_g33123375_
               (lambda (_g33143333_)
                 (if (gx#stx-pair? _g33143333_)
                     (let ((_e33173335_ (gx#stx-e _g33143333_)))
                       (let ((_hd33183338_ (##car _e33173335_))
                             (_tl33193340_ (##cdr _e33173335_)))
                         (if (gx#stx-pair? _tl33193340_)
                             (let ((_e33203343_ (gx#stx-e _tl33193340_)))
                               (let ((_hd33213346_ (##car _e33203343_))
                                     (_tl33223348_ (##cdr _e33203343_)))
                                 (if (gx#stx-pair? _tl33223348_)
                                     (let ((_e33233351_
                                            (gx#stx-e _tl33223348_)))
                                       (let ((_hd33243354_ (##car _e33233351_))
                                             (_tl33253356_
                                              (##cdr _e33233351_)))
                                         (if (gx#stx-null? _tl33253356_)
                                             ((lambda (_L3359_ _L3360_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3360_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3359_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33243354_
                                              _hd33213346_)
                                             (_g33133330_ _g33143333_))))
                                     (_g33133330_ _g33143333_))))
                             (_g33133330_ _g33143333_))))
                     (_g33133330_ _g33143333_)))))
          (_g33123375_ _stx3310_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3307_ _state3308_)
      (begin
        (gxc#meta-state-add-phi!
         _state3308_
         (gx#current-expander-phi)
         _stx3307_)
        (gxc#generate-meta-define-values% _stx3307_ _state3308_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3304_ _state3305_)
      (begin
        (gxc#meta-state-add-phi!
         _state3305_
         (gx#current-expander-phi)
         _stx3304_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3301_
      (apply make-struct-instance gxc#meta-state::t _$args3301_)))
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
    (lambda (_self3298_ _ctx3299_)
      (direct-struct-instance-init!
       _self3298_
       (symbol->string
        (##structure-ref _ctx3299_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3295_
      (apply make-struct-instance gxc#meta-state-block::t _$args3295_)))
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
    (lambda (_state3254_ _phi3255_)
      (let ((_state32563264_ _state3254_))
        (let ((_E32583268_
               (lambda () (error '"No clause matching" _state32563264_))))
          (let ((_K32593277_
                 (lambda (_open3271_ _n3272_ _src3273_)
                   (if (table-ref _open3271_ _phi3255_ '#f)
                       '#f
                       (let ((_block-ref3275_
                              (string-append
                               _src3273_
                               '"__"
                               (number->string _n3272_))))
                         (begin
                           (##structure-set!
                            _state3254_
                            (fx+ _n3272_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (hash-put!
                            _open3271_
                            _phi3255_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3255_
                             _n3272_
                             '()))
                           _block-ref3275_))))))
            (if (struct-instance? gxc#meta-state::t _state32563264_)
                (let ((_e32603280_ (##vector-ref _state32563264_ '1)))
                  (let ((_src3283_ _e32603280_))
                    (let ((_e32613285_ (##vector-ref _state32563264_ '2)))
                      (let ((_n3288_ _e32613285_))
                        (let ((_e32623290_ (##vector-ref _state32563264_ '3)))
                          (let ((_open3293_ _e32623290_))
                            (_K32593277_ _open3293_ _n3288_ _src3283_)))))))
                (_E32583268_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3248_ _phi3249_ _stx3250_)
      (let ((_block3252_
             (table-ref
              (##structure-ref _state3248_ '3 gxc#meta-state::t '#f)
              _phi3249_
              '#f)))
        (##structure-set!
         _block3252_
         (cons _stx3250_
               (##structure-ref _block3252_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3243_)
      (begin
        (##structure-set!
         _state3243_
         (hash-fold
          (lambda (_g9662_ _block3245_ _r3246_) (cons _block3245_ _r3246_))
          (##structure-ref _state3243_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3243_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3243_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3195_)
      (begin
        (gxc#meta-state-end-phi! _state3195_)
        (foldl (lambda (_block3197_ _r3198_)
                 (let ((_block31993208_ _block3197_))
                   (let ((_E32013212_
                          (lambda ()
                            (error '"No clause matching" _block31993208_))))
                     (let ((_K32023220_
                            (lambda (_code3215_ _n3216_ _phi3217_ _ctx3218_)
                              (if (null? _code3215_)
                                  _r3198_
                                  (cons (cons _ctx3218_
                                              (cons _phi3217_
                                                    (cons _n3216_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code3215_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r3198_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block31993208_)
                           (let ((_e32033223_
                                  (##vector-ref _block31993208_ '1)))
                             (let ((_ctx3226_ _e32033223_))
                               (let ((_e32043228_
                                      (##vector-ref _block31993208_ '2)))
                                 (let ((_phi3231_ _e32043228_))
                                   (let ((_e32053233_
                                          (##vector-ref _block31993208_ '3)))
                                     (let ((_n3236_ _e32053233_))
                                       (let ((_e32063238_
                                              (##vector-ref
                                               _block31993208_
                                               '4)))
                                         (let ((_code3241_ _e32063238_))
                                           (_K32023220_
                                            _code3241_
                                            _n3236_
                                            _phi3231_
                                            _ctx3226_)))))))))
                           (_E32013212_))))))
               '()
               (##structure-ref _state3195_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3191_)
      (let ((_ht3193_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3191_ _ht3193_)
          _ht3193_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx3123_ _ht3124_)
      (let ((_g31263143_
             (lambda (_g31273140_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31273140_))))
        (let ((_g31253188_
               (lambda (_g31273146_)
                 (if (gx#stx-pair? _g31273146_)
                     (let ((_e31303148_ (gx#stx-e _g31273146_)))
                       (let ((_hd31313151_ (##car _e31303148_))
                             (_tl31323153_ (##cdr _e31303148_)))
                         (if (gx#stx-pair? _tl31323153_)
                             (let ((_e31333156_ (gx#stx-e _tl31323153_)))
                               (let ((_hd31343159_ (##car _e31333156_))
                                     (_tl31353161_ (##cdr _e31333156_)))
                                 (if (gx#stx-pair? _tl31353161_)
                                     (let ((_e31363164_
                                            (gx#stx-e _tl31353161_)))
                                       (let ((_hd31373167_ (##car _e31363164_))
                                             (_tl31383169_
                                              (##cdr _e31363164_)))
                                         (if (gx#stx-null? _tl31383169_)
                                             ((lambda (_L3172_ _L3173_)
                                                (gxc#compile-e
                                                 _L3172_
                                                 _ht3124_))
                                              _hd31373167_
                                              _hd31343159_)
                                             (_g31263143_ _g31273146_))))
                                     (_g31263143_ _g31273146_))))
                             (_g31263143_ _g31273146_))))
                     (_g31263143_ _g31273146_)))))
          (_g31253188_ _stx3123_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx3005_ _ht3006_)
      (let ((_g30083036_
             (lambda (_g30093033_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30093033_))))
        (let ((_g30073120_
               (lambda (_g30093039_)
                 (if (gx#stx-pair? _g30093039_)
                     (let ((_e30123041_ (gx#stx-e _g30093039_)))
                       (let ((_hd30133044_ (##car _e30123041_))
                             (_tl30143046_ (##cdr _e30123041_)))
                         (if (gx#stx-pair/null? _tl30143046_)
                             (if (fx>= (gx#stx-length _tl30143046_) '0)
                                 (let ((_g9663_ (gx#syntax-split-splice
                                                 _tl30143046_
                                                 '0)))
                                   (begin
                                     (let ((_g9664_ (values-count _g9663_)))
                                       (if (not (fx= _g9664_ 2))
                                           (error "Context expects 2 values"
                                                  _g9664_)))
                                     (let ((_target30153049_
                                            (values-ref _g9663_ 0))
                                           (_tl30173051_
                                            (values-ref _g9663_ 1)))
                                       (if (gx#stx-null? _tl30173051_)
                                           (letrec ((_loop30183054_
                                                     (lambda (_hd30163057_
                                                              _body30223059_
                                                              _hd30233061_)
                                                       (if (gx#stx-pair?
                                                            _hd30163057_)
                                                           (let ((_e30193064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd30163057_)))
                     (let ((_lp-hd30203067_ (##car _e30193064_))
                           (_lp-tl30213069_ (##cdr _e30193064_)))
                       (if (gx#stx-pair? _lp-hd30203067_)
                           (let ((_e30263072_ (gx#stx-e _lp-hd30203067_)))
                             (let ((_hd30273075_ (##car _e30263072_))
                                   (_tl30283077_ (##cdr _e30263072_)))
                               (if (gx#stx-pair? _tl30283077_)
                                   (let ((_e30293080_ (gx#stx-e _tl30283077_)))
                                     (let ((_hd30303083_ (##car _e30293080_))
                                           (_tl30313085_ (##cdr _e30293080_)))
                                       (if (gx#stx-null? _tl30313085_)
                                           (_loop30183054_
                                            _lp-tl30213069_
                                            (cons _hd30303083_ _body30223059_)
                                            (cons _hd30273075_ _hd30233061_))
                                           (_g30083036_ _g30093039_))))
                                   (_g30083036_ _g30093039_))))
                           (_g30083036_ _g30093039_))))
                   (let ((_body30243088_ (reverse _body30223059_))
                         (_hd30253090_ (reverse _hd30233061_)))
                     ((lambda (_L3093_ _L3094_)
                        (for-each
                         (lambda (_g31083110_)
                           (gxc#compile-e _g31083110_ _ht3006_))
                         (begin
                           '#!void
                           (foldr (lambda (_g31123115_ _g31133117_)
                                    (cons _g31123115_ _g31133117_))
                                  '()
                                  _L3093_))))
                      _body30243088_
                      _hd30253090_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop30183054_
                                              _target30153049_
                                              '()
                                              '()))
                                           (_g30083036_ _g30093039_)))))
                                 (_g30083036_ _g30093039_))
                             (_g30083036_ _g30093039_))))
                     (_g30083036_ _g30093039_)))))
          (_g30073120_ _stx3005_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx2858_ _ht2859_)
      (let ((_g28612896_
             (lambda (_g28622893_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g28622893_))))
        (let ((_g28603002_
               (lambda (_g28622899_)
                 (if (gx#stx-pair? _g28622899_)
                     (let ((_e28662901_ (gx#stx-e _g28622899_)))
                       (let ((_hd28672904_ (##car _e28662901_))
                             (_tl28682906_ (##cdr _e28662901_)))
                         (if (gx#stx-pair? _tl28682906_)
                             (let ((_e28692909_ (gx#stx-e _tl28682906_)))
                               (let ((_hd28702912_ (##car _e28692909_))
                                     (_tl28712914_ (##cdr _e28692909_)))
                                 (if (gx#stx-pair/null? _hd28702912_)
                                     (if (fx>= (gx#stx-length _hd28702912_) '0)
                                         (let ((_g9665_ (gx#syntax-split-splice
                                                         _hd28702912_
                                                         '0)))
                                           (begin
                                             (let ((_g9666_ (values-count
                                                             _g9665_)))
                                               (if (not (fx= _g9666_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9666_)))
                                             (let ((_target28722917_
                                                    (values-ref _g9665_ 0))
                                                   (_tl28742919_
                                                    (values-ref _g9665_ 1)))
                                               (if (gx#stx-null? _tl28742919_)
                                                   (letrec ((_loop28752922_
                                                             (lambda (_hd28732925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr28792927_
                              _hd28802929_)
                       (if (gx#stx-pair? _hd28732925_)
                           (let ((_e28762932_ (gx#stx-e _hd28732925_)))
                             (let ((_lp-hd28772935_ (##car _e28762932_))
                                   (_lp-tl28782937_ (##cdr _e28762932_)))
                               (if (gx#stx-pair? _lp-hd28772935_)
                                   (let ((_e28832940_
                                          (gx#stx-e _lp-hd28772935_)))
                                     (let ((_hd28842943_ (##car _e28832940_))
                                           (_tl28852945_ (##cdr _e28832940_)))
                                       (if (gx#stx-pair? _tl28852945_)
                                           (let ((_e28862948_
                                                  (gx#stx-e _tl28852945_)))
                                             (let ((_hd28872951_
                                                    (##car _e28862948_))
                                                   (_tl28882953_
                                                    (##cdr _e28862948_)))
                                               (if (gx#stx-null? _tl28882953_)
                                                   (_loop28752922_
                                                    _lp-tl28782937_
                                                    (cons _hd28872951_
                                                          _expr28792927_)
                                                    (cons _hd28842943_
                                                          _hd28802929_))
                                                   (_g28612896_ _g28622899_))))
                                           (_g28612896_ _g28622899_))))
                                   (_g28612896_ _g28622899_))))
                           (let ((_expr28812956_ (reverse _expr28792927_))
                                 (_hd28822958_ (reverse _hd28802929_)))
                             (if (gx#stx-pair? _tl28712914_)
                                 (let ((_e28892961_ (gx#stx-e _tl28712914_)))
                                   (let ((_hd28902964_ (##car _e28892961_))
                                         (_tl28912966_ (##cdr _e28892961_)))
                                     (if (gx#stx-null? _tl28912966_)
                                         ((lambda (_L2969_ _L2970_ _L2971_)
                                            (if (for-each
                                                 (lambda (_g29902992_)
                                                   (gxc#compile-e
                                                    _g29902992_
                                                    _ht2859_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g29942997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g29952999_)
                    (cons _g29942997_ _g29952999_))
                  '()
                  _L2970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e
                                                 _L2969_
                                                 _ht2859_)
                                                (_g28612896_ _g28622899_)))
                                          _hd28902964_
                                          _expr28812956_
                                          _hd28822958_)
                                         (_g28612896_ _g28622899_))))
                                 (_g28612896_ _g28622899_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop28752922_
                                                      _target28722917_
                                                      '()
                                                      '()))
                                                   (_g28612896_
                                                    _g28622899_)))))
                                         (_g28612896_ _g28622899_))
                                     (_g28612896_ _g28622899_))))
                             (_g28612896_ _g28622899_))))
                     (_g28612896_ _g28622899_)))))
          (_g28603002_ _stx2858_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx2801_ _ht2802_)
      (let ((_g28042817_
             (lambda (_g28052814_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g28052814_))))
        (let ((_g28032855_
               (lambda (_g28052820_)
                 (if (gx#stx-pair? _g28052820_)
                     (let ((_e28072822_ (gx#stx-e _g28052820_)))
                       (let ((_hd28082825_ (##car _e28072822_))
                             (_tl28092827_ (##cdr _e28072822_)))
                         (if (gx#stx-pair? _tl28092827_)
                             (let ((_e28102830_ (gx#stx-e _tl28092827_)))
                               (let ((_hd28112833_ (##car _e28102830_))
                                     (_tl28122835_ (##cdr _e28102830_)))
                                 (if (gx#stx-null? _tl28122835_)
                                     ((lambda (_L2838_)
                                        (let ((_bind2850_
                                               (gx#resolve-identifier__0
                                                _L2838_)))
                                          (let ((_eid2852_
                                                 (if _bind2850_
                                                     (##structure-ref
                                                      _bind2850_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L2838_))))
                                            (let ()
                                              (hash-put!
                                               _ht2802_
                                               _eid2852_
                                               _eid2852_)))))
                                      _hd28112833_)
                                     (_g28042817_ _g28052820_))))
                             (_g28042817_ _g28052820_))))
                     (_g28042817_ _g28052820_)))))
          (_g28032855_ _stx2801_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx2728_ _ht2729_)
      (let ((_g27312748_
             (lambda (_g27322745_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27322745_))))
        (let ((_g27302798_
               (lambda (_g27322751_)
                 (if (gx#stx-pair? _g27322751_)
                     (let ((_e27352753_ (gx#stx-e _g27322751_)))
                       (let ((_hd27362756_ (##car _e27352753_))
                             (_tl27372758_ (##cdr _e27352753_)))
                         (if (gx#stx-pair? _tl27372758_)
                             (let ((_e27382761_ (gx#stx-e _tl27372758_)))
                               (let ((_hd27392764_ (##car _e27382761_))
                                     (_tl27402766_ (##cdr _e27382761_)))
                                 (if (gx#stx-pair? _tl27402766_)
                                     (let ((_e27412769_
                                            (gx#stx-e _tl27402766_)))
                                       (let ((_hd27422772_ (##car _e27412769_))
                                             (_tl27432774_
                                              (##cdr _e27412769_)))
                                         (if (gx#stx-null? _tl27432774_)
                                             ((lambda (_L2777_ _L2778_)
                                                (let ((_bind2793_
                                                       (gx#resolve-identifier__0
                                                        _L2778_)))
                                                  (let ((_eid2795_
                                                         (if _bind2793_
                                                             (##structure-ref
                                                              _bind2793_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L2778_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht2729_
                                                         _eid2795_
                                                         _eid2795_)
                                                        (gxc#compile-e
                                                         _L2777_
                                                         _ht2729_))))))
                                              _hd27422772_
                                              _hd27392764_)
                                             (_g27312748_ _g27322751_))))
                                     (_g27312748_ _g27322751_))))
                             (_g27312748_ _g27322751_))))
                     (_g27312748_ _g27322751_)))))
          (_g27302798_ _stx2728_)))))
  (define gxc#collect-refs-struct-instancep%
    (lambda (_stx2660_ _ht2661_)
      (let ((_g26632680_
             (lambda (_g26642677_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g26642677_))))
        (let ((_g26622725_
               (lambda (_g26642683_)
                 (if (gx#stx-pair? _g26642683_)
                     (let ((_e26672685_ (gx#stx-e _g26642683_)))
                       (let ((_hd26682688_ (##car _e26672685_))
                             (_tl26692690_ (##cdr _e26672685_)))
                         (if (gx#stx-pair? _tl26692690_)
                             (let ((_e26702693_ (gx#stx-e _tl26692690_)))
                               (let ((_hd26712696_ (##car _e26702693_))
                                     (_tl26722698_ (##cdr _e26702693_)))
                                 (if (gx#stx-pair? _tl26722698_)
                                     (let ((_e26732701_
                                            (gx#stx-e _tl26722698_)))
                                       (let ((_hd26742704_ (##car _e26732701_))
                                             (_tl26752706_
                                              (##cdr _e26732701_)))
                                         (if (gx#stx-null? _tl26752706_)
                                             ((lambda (_L2709_ _L2710_)
                                                (gxc#compile-e
                                                 _L2709_
                                                 _ht2661_))
                                              _hd26742704_
                                              _hd26712696_)
                                             (_g26632680_ _g26642683_))))
                                     (_g26632680_ _g26642683_))))
                             (_g26632680_ _g26642683_))))
                     (_g26632680_ _g26642683_)))))
          (_g26622725_ _stx2660_)))))
  (define gxc#collect-refs-struct-ref%
    (lambda (_stx2576_ _ht2577_)
      (let ((_g25792600_
             (lambda (_g25802597_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g25802597_))))
        (let ((_g25782657_
               (lambda (_g25802603_)
                 (if (gx#stx-pair? _g25802603_)
                     (let ((_e25842605_ (gx#stx-e _g25802603_)))
                       (let ((_hd25852608_ (##car _e25842605_))
                             (_tl25862610_ (##cdr _e25842605_)))
                         (if (gx#stx-pair? _tl25862610_)
                             (let ((_e25872613_ (gx#stx-e _tl25862610_)))
                               (let ((_hd25882616_ (##car _e25872613_))
                                     (_tl25892618_ (##cdr _e25872613_)))
                                 (if (gx#stx-pair? _tl25892618_)
                                     (let ((_e25902621_
                                            (gx#stx-e _tl25892618_)))
                                       (let ((_hd25912624_ (##car _e25902621_))
                                             (_tl25922626_
                                              (##cdr _e25902621_)))
                                         (if (gx#stx-pair? _tl25922626_)
                                             (let ((_e25932629_
                                                    (gx#stx-e _tl25922626_)))
                                               (let ((_hd25942632_
                                                      (##car _e25932629_))
                                                     (_tl25952634_
                                                      (##cdr _e25932629_)))
                                                 (if (gx#stx-null?
                                                      _tl25952634_)
                                                     ((lambda (_L2637_
                                                               _L2638_
                                                               _L2639_)
                                                        (begin
                                                          (gxc#compile-e
                                                           _L2639_
                                                           _ht2577_)
                                                          (gxc#compile-e
                                                           _L2638_
                                                           _ht2577_)
                                                          (gxc#compile-e
                                                           _L2637_
                                                           _ht2577_)))
                                                      _hd25942632_
                                                      _hd25912624_
                                                      _hd25882616_)
                                                     (_g25792600_
                                                      _g25802603_))))
                                             (_g25792600_ _g25802603_))))
                                     (_g25792600_ _g25802603_))))
                             (_g25792600_ _g25802603_))))
                     (_g25792600_ _g25802603_)))))
          (_g25782657_ _stx2576_)))))
  (define gxc#collect-refs-struct-setq%
    (lambda (_stx2476_ _ht2477_)
      (let ((_g24792504_
             (lambda (_g24802501_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g24802501_))))
        (let ((_g24782573_
               (lambda (_g24802507_)
                 (if (gx#stx-pair? _g24802507_)
                     (let ((_e24852509_ (gx#stx-e _g24802507_)))
                       (let ((_hd24862512_ (##car _e24852509_))
                             (_tl24872514_ (##cdr _e24852509_)))
                         (if (gx#stx-pair? _tl24872514_)
                             (let ((_e24882517_ (gx#stx-e _tl24872514_)))
                               (let ((_hd24892520_ (##car _e24882517_))
                                     (_tl24902522_ (##cdr _e24882517_)))
                                 (if (gx#stx-pair? _tl24902522_)
                                     (let ((_e24912525_
                                            (gx#stx-e _tl24902522_)))
                                       (let ((_hd24922528_ (##car _e24912525_))
                                             (_tl24932530_
                                              (##cdr _e24912525_)))
                                         (if (gx#stx-pair? _tl24932530_)
                                             (let ((_e24942533_
                                                    (gx#stx-e _tl24932530_)))
                                               (let ((_hd24952536_
                                                      (##car _e24942533_))
                                                     (_tl24962538_
                                                      (##cdr _e24942533_)))
                                                 (if (gx#stx-pair?
                                                      _tl24962538_)
                                                     (let ((_e24972541_
                                                            (gx#stx-e
                                                             _tl24962538_)))
                                                       (let ((_hd24982544_
                                                              (##car _e24972541_))
                                                             (_tl24992546_
                                                              (##cdr _e24972541_)))
                                                         (if (gx#stx-null?
                                                              _tl24992546_)
                                                             ((lambda (_L2549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L2550_
                               _L2551_
                               _L2552_)
                        (begin
                          (gxc#compile-e _L2552_ _ht2477_)
                          (gxc#compile-e _L2551_ _ht2477_)
                          (gxc#compile-e _L2550_ _ht2477_)
                          (gxc#compile-e _L2549_ _ht2477_)))
                      _hd24982544_
                      _hd24952536_
                      _hd24922528_
                      _hd24892520_)
                     (_g24792504_ _g24802507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24792504_
                                                      _g24802507_))))
                                             (_g24792504_ _g24802507_))))
                                     (_g24792504_ _g24802507_))))
                             (_g24792504_ _g24802507_))))
                     (_g24792504_ _g24802507_)))))
          (_g24782573_ _stx2476_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx2438_)
      (let ((_g24402450_
             (lambda (_g24412447_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g24412447_))))
        (let ((_g24392473_
               (lambda (_g24412453_)
                 (if (gx#stx-pair? _g24412453_)
                     (let ((_e24432455_ (gx#stx-e _g24412453_)))
                       (let ((_hd24442458_ (##car _e24432455_))
                             (_tl24452460_ (##cdr _e24432455_)))
                         ((lambda (_L2463_) (ormap gxc#compile-e _L2463_))
                          _tl24452460_)))
                     (_g24402450_ _g24412453_)))))
          (_g24392473_ _stx2438_))))))
