(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx6430_ . _args6431_)
      (let ((_g64336443_
             (lambda (_g64346440_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g64346440_))))
        (let ((_g64326471_
               (lambda (_g64346446_)
                 (if (gx#stx-pair? _g64346446_)
                     (let ((_e64366448_ (gx#stx-e _g64346446_)))
                       (let ((_hd64376451_ (##car _e64366448_))
                             (_tl64386453_ (##cdr _e64366448_)))
                         ((lambda (_L6456_)
                            (let ((_$e6466_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L6456_))))
                              (if _$e6466_
                                  ((lambda (_method6469_)
                                     (apply _method6469_ _stx6430_ _args6431_))
                                   _$e6466_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx6430_
                                   _L6456_))))
                          _hd64376451_)))
                     (_g64336443_ _g64346446_)))))
          (_g64326471_ _stx6430_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl6427_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl6427_ '%#lambda void)
           (hash-put! _tbl6427_ '%#case-lambda void)
           (hash-put! _tbl6427_ '%#let-values void)
           (hash-put! _tbl6427_ '%#letrec-values void)
           (hash-put! _tbl6427_ '%#letrec*-values void)
           (hash-put! _tbl6427_ '%#quote void)
           (hash-put! _tbl6427_ '%#quote-syntax void)
           (hash-put! _tbl6427_ '%#call void)
           (hash-put! _tbl6427_ '%#if void)
           (hash-put! _tbl6427_ '%#ref void)
           (hash-put! _tbl6427_ '%#set! void)
           (hash-put! _tbl6427_ '%#struct-instance? void)
           (hash-put! _tbl6427_ '%#struct-direct-instance? void)
           (hash-put! _tbl6427_ '%#struct-ref void)
           (hash-put! _tbl6427_ '%#struct-set! void)
           _tbl6427_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl6423_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl6423_ '%#begin void)
           (hash-put! _tbl6423_ '%#begin-syntax void)
           (hash-put! _tbl6423_ '%#begin-foreign void)
           (hash-put! _tbl6423_ '%#module void)
           (hash-put! _tbl6423_ '%#import void)
           (hash-put! _tbl6423_ '%#export void)
           (hash-put! _tbl6423_ '%#provide void)
           (hash-put! _tbl6423_ '%#extern void)
           (hash-put! _tbl6423_ '%#define-values void)
           (hash-put! _tbl6423_ '%#define-syntax void)
           (hash-put! _tbl6423_ '%#define-alias void)
           (hash-put! _tbl6423_ '%#declare void)
           _tbl6423_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl6419_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6419_ (force gxc#&void-special-form))
           (hash-copy! _tbl6419_ (force gxc#&void-expression))
           _tbl6419_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl6415_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6415_ (force gxc#&void-expression))
           (hash-copy! _tbl6415_ (force gxc#&void-special-form))
           (hash-put! _tbl6415_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl6415_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl6415_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl6415_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl6415_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl6415_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx6408_ . _args6410_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6408_ _args6410_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl6405_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6405_ (force gxc#&void))
           (hash-put! _tbl6405_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl6405_ '%#module gxc#lift-modules-module%)
           _tbl6405_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx6398_ . _args6400_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6398_ _args6400_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl6395_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl6395_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl6395_ '%#begin-syntax false)
           (hash-put! _tbl6395_ '%#begin-foreign true)
           (hash-put! _tbl6395_ '%#module false)
           (hash-put! _tbl6395_ '%#import false)
           (hash-put! _tbl6395_ '%#export false)
           (hash-put! _tbl6395_ '%#provide false)
           (hash-put! _tbl6395_ '%#extern false)
           (hash-put! _tbl6395_ '%#define-values true)
           (hash-put! _tbl6395_ '%#define-syntax false)
           (hash-put! _tbl6395_ '%#define-alias false)
           (hash-put! _tbl6395_ '%#declare false)
           (hash-put! _tbl6395_ '%#lambda true)
           (hash-put! _tbl6395_ '%#case-lambda true)
           (hash-put! _tbl6395_ '%#let-values true)
           (hash-put! _tbl6395_ '%#letrec-values true)
           (hash-put! _tbl6395_ '%#letrec*-values true)
           (hash-put! _tbl6395_ '%#quote true)
           (hash-put! _tbl6395_ '%#call true)
           (hash-put! _tbl6395_ '%#if true)
           (hash-put! _tbl6395_ '%#ref true)
           (hash-put! _tbl6395_ '%#set! true)
           (hash-put! _tbl6395_ '%#struct-instance? true)
           (hash-put! _tbl6395_ '%#struct-direct-instance? true)
           (hash-put! _tbl6395_ '%#struct-ref true)
           (hash-put! _tbl6395_ '%#struct-set! true)
           _tbl6395_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx6388_ . _args6390_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6388_ _args6390_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl6385_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl6385_ '%#begin gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#set! gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#struct-instance? gxc#generate-runtime-empty)
           (hash-put!
            _tbl6385_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#struct-ref gxc#generate-runtime-empty)
           (hash-put! _tbl6385_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl6385_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl6381_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6381_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl6381_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl6381_ '%#import gxc#generate-runtime-loader-import%)
           _tbl6381_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx6374_ . _args6376_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6374_ _args6376_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl6371_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6371_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl6371_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl6371_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put!
            _tbl6371_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl6371_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl6371_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl6371_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl6371_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl6371_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl6371_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl6371_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl6371_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl6371_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl6371_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl6371_ '%#set! gxc#generate-runtime-setq%)
           (hash-put!
            _tbl6371_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (hash-put!
            _tbl6371_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (hash-put! _tbl6371_ '%#struct-ref gxc#generate-runtime-struct-ref%)
           (hash-put!
            _tbl6371_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl6371_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx6364_ . _args6366_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6364_ _args6366_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl6361_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6361_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl6361_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl6361_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl6361_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx6354_ . _args6356_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6354_ _args6356_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl6351_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl6351_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl6351_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl6351_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl6351_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl6351_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put! _tbl6351_ '%#letrec*-values gxc#collect-refs-let-values%)
           (hash-put! _tbl6351_ '%#quote void)
           (hash-put! _tbl6351_ '%#quote-syntax void)
           (hash-put! _tbl6351_ '%#call gxc#collect-begin%)
           (hash-put! _tbl6351_ '%#if gxc#collect-begin%)
           (hash-put! _tbl6351_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl6351_ '%#set! gxc#collect-refs-setq%)
           (hash-put!
            _tbl6351_
            '%#struct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put!
            _tbl6351_
            '%#struct-direct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put! _tbl6351_ '%#struct-ref gxc#collect-refs-struct-ref%)
           (hash-put! _tbl6351_ '%#struct-set! gxc#collect-refs-struct-setq%)
           _tbl6351_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx6344_ . _args6346_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6344_ _args6346_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl6341_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl6341_ (force gxc#&void-expression))
           (hash-put! _tbl6341_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl6341_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl6341_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl6341_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl6341_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl6341_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl6341_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl6341_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl6341_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl6341_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl6341_ '%#begin-foreign void)
           (hash-put! _tbl6341_ '%#declare void)
           _tbl6341_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx6334_ . _args6336_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6334_ _args6336_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl6331_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl6331_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl6331_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl6331_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl6331_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl6331_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl6331_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#struct-instance? gxc#generate-meta-phi-expr)
           (hash-put!
            _tbl6331_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#struct-ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#struct-set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl6331_ '%#declare void)
           _tbl6331_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx6324_ . _args6326_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx6324_ _args6326_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx6281_ . _args6282_)
      (let ((_g62846294_
             (lambda (_g62856291_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g62856291_))))
        (let ((_g62836321_
               (lambda (_g62856297_)
                 (if (gx#stx-pair? _g62856297_)
                     (let ((_e62876299_ (gx#stx-e _g62856297_)))
                       (let ((_hd62886302_ (##car _e62876299_))
                             (_tl62896304_ (##cdr _e62876299_)))
                         ((lambda (_L6307_)
                            (for-each
                             (lambda (_g63166318_)
                               (apply gxc#compile-e _g63166318_ _args6282_))
                             (gx#stx-e _L6307_)))
                          _tl62896304_)))
                     (_g62846294_ _g62856297_)))))
          (_g62836321_ _stx6281_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx6237_ . _args6238_)
      (let ((_g62406250_
             (lambda (_g62416247_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g62416247_))))
        (let ((_g62396278_
               (lambda (_g62416253_)
                 (if (gx#stx-pair? _g62416253_)
                     (let ((_e62436255_ (gx#stx-e _g62416253_)))
                       (let ((_hd62446258_ (##car _e62436255_))
                             (_tl62456260_ (##cdr _e62436255_)))
                         ((lambda (_L6263_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g62736275_)
                                  (apply gxc#compile-e _g62736275_ _args6238_))
                                (gx#stx-e _L6263_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl62456260_)))
                     (_g62406250_ _g62416253_)))))
          (_g62396278_ _stx6237_)))))
  (define gxc#collect-module%
    (lambda (_stx6179_ . _args6180_)
      (let ((_g61826196_
             (lambda (_g61836193_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g61836193_))))
        (let ((_g61816234_
               (lambda (_g61836199_)
                 (if (gx#stx-pair? _g61836199_)
                     (let ((_e61866201_ (gx#stx-e _g61836199_)))
                       (let ((_hd61876204_ (##car _e61866201_))
                             (_tl61886206_ (##cdr _e61866201_)))
                         (if (gx#stx-pair? _tl61886206_)
                             (let ((_e61896209_ (gx#stx-e _tl61886206_)))
                               (let ((_hd61906212_ (##car _e61896209_))
                                     (_tl61916214_ (##cdr _e61896209_)))
                                 ((lambda (_L6217_ _L6218_)
                                    (let ((_ctx6231_
                                           (gx#syntax-local-e _L6218_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (gx#module-context-code
                                                 _ctx6231_)
                                                _args6180_))
                                       gx#current-expander-context
                                       _ctx6231_)))
                                  _tl61916214_
                                  _hd61906212_)))
                             (_g61826196_ _g61836199_))))
                     (_g61826196_ _g61836199_)))))
          (_g61816234_ _stx6179_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx6110_)
      (let ((_g61126129_
             (lambda (_g61136126_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g61136126_))))
        (let ((_g61116176_
               (lambda (_g61136132_)
                 (if (gx#stx-pair? _g61136132_)
                     (let ((_e61166134_ (gx#stx-e _g61136132_)))
                       (let ((_hd61176137_ (##car _e61166134_))
                             (_tl61186139_ (##cdr _e61166134_)))
                         (if (gx#stx-pair? _tl61186139_)
                             (let ((_e61196142_ (gx#stx-e _tl61186139_)))
                               (let ((_hd61206145_ (##car _e61196142_))
                                     (_tl61216147_ (##cdr _e61196142_)))
                                 (if (gx#stx-pair? _tl61216147_)
                                     (let ((_e61226150_
                                            (gx#stx-e _tl61216147_)))
                                       (let ((_hd61236153_ (##car _e61226150_))
                                             (_tl61246155_
                                              (##cdr _e61226150_)))
                                         (if (gx#stx-null? _tl61246155_)
                                             ((lambda (_L6158_ _L6159_)
                                                (gx#stx-for-each
                                                 (lambda (_bind6174_)
                                                   (if (gx#identifier?
                                                        _bind6174_)
                                                       (gxc#add-module-binding!
                                                        _bind6174_
                                                        '#f)
                                                       '#!void))
                                                 _L6159_))
                                              _hd61236153_
                                              _hd61206145_)
                                             (_g61126129_ _g61136132_))))
                                     (_g61126129_ _g61136132_))))
                             (_g61126129_ _g61136132_))))
                     (_g61126129_ _g61136132_)))))
          (_g61116176_ _stx6110_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx6043_)
      (let ((_g60456062_
             (lambda (_g60466059_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g60466059_))))
        (let ((_g60446107_
               (lambda (_g60466065_)
                 (if (gx#stx-pair? _g60466065_)
                     (let ((_e60496067_ (gx#stx-e _g60466065_)))
                       (let ((_hd60506070_ (##car _e60496067_))
                             (_tl60516072_ (##cdr _e60496067_)))
                         (if (gx#stx-pair? _tl60516072_)
                             (let ((_e60526075_ (gx#stx-e _tl60516072_)))
                               (let ((_hd60536078_ (##car _e60526075_))
                                     (_tl60546080_ (##cdr _e60526075_)))
                                 (if (gx#stx-pair? _tl60546080_)
                                     (let ((_e60556083_
                                            (gx#stx-e _tl60546080_)))
                                       (let ((_hd60566086_ (##car _e60556083_))
                                             (_tl60576088_
                                              (##cdr _e60556083_)))
                                         (if (gx#stx-null? _tl60576088_)
                                             ((lambda (_L6091_ _L6092_)
                                                (gxc#add-module-binding!
                                                 _L6092_
                                                 '#t))
                                              _hd60566086_
                                              _hd60536078_)
                                             (_g60456062_ _g60466065_))))
                                     (_g60456062_ _g60466065_))))
                             (_g60456062_ _g60466065_))))
                     (_g60456062_ _g60466065_)))))
          (_g60446107_ _stx6043_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx5985_ _modules5986_)
      (let ((_g59886002_
             (lambda (_g59895999_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g59895999_))))
        (let ((_g59876040_
               (lambda (_g59896005_)
                 (if (gx#stx-pair? _g59896005_)
                     (let ((_e59926007_ (gx#stx-e _g59896005_)))
                       (let ((_hd59936010_ (##car _e59926007_))
                             (_tl59946012_ (##cdr _e59926007_)))
                         (if (gx#stx-pair? _tl59946012_)
                             (let ((_e59956015_ (gx#stx-e _tl59946012_)))
                               (let ((_hd59966018_ (##car _e59956015_))
                                     (_tl59976020_ (##cdr _e59956015_)))
                                 ((lambda (_L6023_ _L6024_)
                                    (let ((_ctx6037_
                                           (gx#syntax-local-e _L6024_)))
                                      (begin
                                        (set-box!
                                         _modules5986_
                                         (cons _ctx6037_
                                               (unbox _modules5986_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (gx#module-context-code _ctx6037_)
                                            _modules5986_))
                                         gx#current-expander-context
                                         _ctx6037_))))
                                  _tl59976020_
                                  _hd59966018_)))
                             (_g59886002_ _g59896005_))))
                     (_g59886002_ _g59896005_)))))
          (_g59876040_ _stx5985_)))))
  (define gxc#add-module-binding!
    (lambda (_id5979_ _syntax?5980_)
      (let ((_eid5982_ (gx#binding-id (gx#resolve-identifier _id5979_)))
            (_ht5983_
             (gxc#symbol-table-bindings (gxc#current-compile-symbol-table))))
        (if (interned-symbol? _eid5982_)
            '#!void
            (hash-put!
             _ht5983_
             _eid5982_
             (gx#make-binding-id
              (gxc#generate-runtime-gensym-reference _eid5982_)
              _syntax?5980_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id5967_)
      (let ((_bind5969_ (gx#resolve-identifier _id5967_)))
        (if _bind5969_
            (let ((_eid5971_ (gx#binding-id _bind5969_))
                  (_ht5972_
                   (gxc#symbol-table-bindings
                    (gxc#current-compile-symbol-table))))
              (if (interned-symbol? _eid5971_)
                  _eid5971_
                  (let ((_$e5974_ (hash-get _ht5972_ _eid5971_)))
                    (if _$e5974_
                        (values _$e5974_)
                        (if (gx#local-binding? _bind5969_)
                            (let ((_gid5977_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid5971_)))
                              (begin
                                (hash-put! _ht5972_ _eid5971_ _gid5977_)
                                _gid5977_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id5967_
                             _eid5971_
                             _bind5969_))))))
            (if (interned-symbol? (gx#stx-e _id5967_))
                (gx#stx-e _id5967_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id5967_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id5965_)
      (if (gx#identifier? _id5965_)
          (gxc#generate-runtime-binding-id _id5965_)
          (gxc#generate-runtime-temporary))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym5956_)
      (let ((_ht5958_
             (gxc#symbol-table-gensyms (gxc#current-compile-symbol-table))))
        (let ((_$e5960_ (hash-get _ht5958_ _sym5956_)))
          (if _$e5960_
              (values _$e5960_)
              (let ((_g5963_ (make-symbol '"_" _sym5956_ '"_")))
                (begin (hash-put! _ht5958_ _sym5956_ _g5963_) _g5963_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id5954_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id5954_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key5916_)
      (if (interned-symbol? _key5916_)
          _key5916_
          (if (uninterned-symbol? _key5916_)
              (gxc#generate-runtime-gensym-reference _key5916_)
              (let ((_key59175924_ _key5916_))
                (let ((_E59195928_
                       (lambda ()
                         (error '"No clause matching" _key59175924_))))
                  (let ((_K59205942_
                         (lambda (_mark5931_ _eid5932_)
                           (let ((_$e5934_
                                  (gx#expander-mark-subst _mark5931_)))
                             (if _$e5934_
                                 ((lambda (_ht5937_)
                                    (let ((_$e5939_
                                           (hash-get _ht5937_ _eid5932_)))
                                      (if _$e5939_
                                          (values _$e5939_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid5932_))))
                                  _$e5934_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid5932_))))))
                    (if (##pair? _key59175924_)
                        (let ((_hd59215945_ (##car _key59175924_))
                              (_tl59225947_ (##cdr _key59175924_)))
                          (let ((_eid5950_ _hd59215945_))
                            (let ((_mark5952_ _tl59225947_))
                              (_K59205942_ _mark5952_ _eid5950_))))
                        (_E59195928_)))))))))
  (define gxc#generate-runtime-temporary
    (let ((_opt-lambda59015908_
           (lambda (_top5903_)
             (if _top5903_
                 (let ((_ns5905_
                        (gx#module-context-ns (gx#current-expander-context)))
                       (_phi5906_ (gx#current-expander-phi)))
                   (if (fxpositive? _phi5906_)
                       (make-symbol
                        _ns5905_
                        '"["
                        (number->string _phi5906_)
                        '"]#_"
                        (gensym)
                        '"_")
                       (make-symbol _ns5905_ '"#_" (gensym) '"_")))
                 (make-symbol '"_" (gensym) '"_")))))
      (lambda _g6474_
        (let ((_g6473_ (length _g6474_)))
          (cond ((fx= _g6473_ 0)
                 (apply (lambda ()
                          (let ((_top5912_ '#f))
                            (_opt-lambda59015908_ _top5912_)))
                        _g6474_))
                ((fx= _g6473_ 1)
                 (apply (lambda (_top5914_) (_opt-lambda59015908_ _top5914_))
                        _g6474_))
                (else (error "No clause matching arguments" _g6474_)))))))
  (define gxc#generate-runtime-empty (lambda (_stx5900_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx5820_)
      (let ((_g58225832_
             (lambda (_g58235829_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g58235829_))))
        (let ((_g58215897_
               (lambda (_g58235835_)
                 (if (gx#stx-pair? _g58235835_)
                     (let ((_e58255837_ (gx#stx-e _g58235835_)))
                       (let ((_hd58265840_ (##car _e58255837_))
                             (_tl58275842_ (##cdr _e58255837_)))
                         ((lambda (_L5845_)
                            (let ((_body5855_
                                   (gx#stx-map gxc#compile-e _L5845_)))
                              (let ((_body5894_
                                     (filter (lambda (_stx5857_)
                                               (let ((_g58605869_
                                                      (lambda (_g58615866_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g58615866_))))
                                                 (let ((_g58595876_
                                                        (lambda (_g58615872_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g58585891_
                                                          (lambda (_g58615879_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g58615879_)
                        (let ((_e58625881_ (gx#stx-e _g58615879_)))
                          (let ((_hd58635884_ (##car _e58625881_))
                                (_tl58645886_ (##cdr _e58625881_)))
                            (if (gx#identifier? _hd58635884_)
                                (if (gx#stx-eq? 'begin _hd58635884_)
                                    (if (gx#stx-null? _tl58645886_)
                                        ((lambda () '#f))
                                        (_g58595876_ _g58615879_))
                                    (_g58595876_ _g58615879_))
                                (_g58595876_ _g58615879_))))
                        (_g58595876_ _g58615879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g58585891_
                                                      _stx5857_)))))
                                             _body5855_)))
                                (let () (cons 'begin _body5894_)))))
                          _tl58275842_)))
                     (_g58225832_ _g58235835_)))))
          (_g58215897_ _stx5820_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx5782_)
      (let ((_g57845794_
             (lambda (_g57855791_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g57855791_))))
        (let ((_g57835817_
               (lambda (_g57855797_)
                 (if (gx#stx-pair? _g57855797_)
                     (let ((_e57875799_ (gx#stx-e _g57855797_)))
                       (let ((_hd57885802_ (##car _e57875799_))
                             (_tl57895804_ (##cdr _e57875799_)))
                         ((lambda (_L5807_)
                            (cons 'begin (gx#syntax->datum _L5807_)))
                          _tl57895804_)))
                     (_g57845794_ _g57855797_)))))
          (_g57835817_ _stx5782_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx5744_)
      (let ((_g57465756_
             (lambda (_g57475753_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g57475753_))))
        (let ((_g57455779_
               (lambda (_g57475759_)
                 (if (gx#stx-pair? _g57475759_)
                     (let ((_e57495761_ (gx#stx-e _g57475759_)))
                       (let ((_hd57505764_ (##car _e57495761_))
                             (_tl57515766_ (##cdr _e57495761_)))
                         ((lambda (_L5769_)
                            (cons 'declare (map gx#syntax->datum _L5769_)))
                          _tl57515766_)))
                     (_g57465756_ _g57475759_)))))
          (_g57455779_ _stx5744_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx5508_)
      (let ((_g55105527_
             (lambda (_g55115524_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55115524_))))
        (let ((_g55095741_
               (lambda (_g55115530_)
                 (if (gx#stx-pair? _g55115530_)
                     (let ((_e55145532_ (gx#stx-e _g55115530_)))
                       (let ((_hd55155535_ (##car _e55145532_))
                             (_tl55165537_ (##cdr _e55145532_)))
                         (if (gx#stx-pair? _tl55165537_)
                             (let ((_e55175540_ (gx#stx-e _tl55165537_)))
                               (let ((_hd55185543_ (##car _e55175540_))
                                     (_tl55195545_ (##cdr _e55175540_)))
                                 (if (gx#stx-pair? _tl55195545_)
                                     (let ((_e55205548_
                                            (gx#stx-e _tl55195545_)))
                                       (let ((_hd55215551_ (##car _e55205548_))
                                             (_tl55225553_
                                              (##cdr _e55205548_)))
                                         (if (gx#stx-null? _tl55225553_)
                                             ((lambda (_L5556_ _L5557_)
                                                (let ((_g55745587_
                                                       (lambda (_g55755584_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g55755584_))))
                                                  (let ((_g55735701_
                                                         (lambda (_g55755590_)
                                                           ((lambda ()
                                                              (let ((_tmp5594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary '#t)))
                        (let ((_body5698_
                               ((letrec ((_lp5596_
                                          (lambda (_rest5598_ _k5599_ _r5600_)
                                            (let ((_g56055621_
                                                   (lambda (_g56065618_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g56065618_))))
                                              (let ((_g56045628_
                                                     (lambda (_g56065624_)
                                                       ((lambda ()
                                                          (reverse _r5600_))))))
                                                (let ((_g56035649_
                                                       (lambda (_g56065631_)
                                                         ((lambda (_L5633_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5633_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L5633_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp5594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k5599_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r5600_)
                        (_g56045628_ _g56065631_)))
                  _g56065631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g56025673_
                                                         (lambda (_g56065652_)
                                                           (if (gx#stx-pair?
                                                                _g56065652_)
                                                               (let ((_e56135654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g56065652_)))
                         (let ((_hd56145657_ (##car _e56135654_))
                               (_tl56155659_ (##cdr _e56135654_)))
                           ((lambda (_L5662_ _L5663_)
                              (_lp5596_
                               _L5662_
                               (fx1+ _k5599_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L5663_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp5594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k5599_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r5600_)))
                            _tl56155659_
                            _hd56145657_)))
                       (_g56035649_ _g56065652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g56015695_
                                                           (lambda (_g56065676_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g56065676_)
                         (let ((_e56085678_ (gx#stx-e _g56065676_)))
                           (let ((_hd56095681_ (##car _e56085678_))
                                 (_tl56105683_ (##cdr _e56085678_)))
                             (if (gx#stx-datum? _hd56095681_)
                                 (if (equal? (gx#stx-e _hd56095681_) '#f)
                                     ((lambda (_L5686_)
                                        (_lp5596_
                                         _L5686_
                                         (fx1+ _k5599_)
                                         _r5600_))
                                      _tl56105683_)
                                     (_g56025673_ _g56065676_))
                                 (_g56025673_ _g56065676_))))
                         (_g56025673_ _g56065676_)))))
              (_g56015695_ _rest5598_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp5596_)
                                _L5557_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp5594_
                                                    (cons (gxc#compile-e
                                                           _L5556_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp5594_
                                               _L5557_)
                                              _body5698_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g55725723_
                                                           (lambda (_g55755704_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g55755704_)
                         (let ((_e55805706_ (gx#stx-e _g55755704_)))
                           (let ((_hd55815709_ (##car _e55805706_))
                                 (_tl55825711_ (##cdr _e55805706_)))
                             (if (gx#stx-null? _tl55825711_)
                                 ((lambda (_L5714_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L5714_)
                                                (cons (gxc#compile-e _L5556_)
                                                      '()))))
                                  _hd55815709_)
                                 (_g55735701_ _g55755704_))))
                         (_g55735701_ _g55755704_)))))
              (let ((_g55715738_
                     (lambda (_g55755726_)
                       (if (gx#stx-pair? _g55755726_)
                           (let ((_e55765728_ (gx#stx-e _g55755726_)))
                             (let ((_hd55775731_ (##car _e55765728_))
                                   (_tl55785733_ (##cdr _e55765728_)))
                               (if (gx#stx-datum? _hd55775731_)
                                   (if (equal? (gx#stx-e _hd55775731_) '#f)
                                       (if (gx#stx-null? _tl55785733_)
                                           ((lambda ()
                                              (gxc#compile-e _L5556_)))
                                           (_g55725723_ _g55755726_))
                                       (_g55725723_ _g55755726_))
                                   (_g55725723_ _g55755726_))))
                           (_g55725723_ _g55755726_)))))
                (_g55715738_ _L5557_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd55215551_
                                              _hd55185543_)
                                             (_g55105527_ _g55115530_))))
                                     (_g55105527_ _g55115530_))))
                             (_g55105527_ _g55115530_))))
                     (_g55105527_ _g55115530_)))))
          (_g55095741_ _stx5508_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals5496_ _hd5497_)
      (let ((_len5499_ (gx#stx-length _hd5497_)))
        (let ((_cmp5501_ (if (gx#stx-list? _hd5497_) 'fx= 'fx>=)))
          (let ((_errmsg5503_
                 (string-append
                  (if (gx#stx-list? _hd5497_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len5499_)
                  '" values")))
            (let ((_count5505_ (gxc#generate-runtime-temporary)))
              (let ()
                (if (if (not (gx#stx-list? _hd5497_)) (fx= _len5499_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count5505_
                                            (cons (cons 'values-count
                                                        (cons _vals5496_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp5501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count5505_ (cons _len5499_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg5503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count5505_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx5429_)
      (let ((_g54315448_
             (lambda (_g54325445_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54325445_))))
        (let ((_g54305493_
               (lambda (_g54325451_)
                 (if (gx#stx-pair? _g54325451_)
                     (let ((_e54355453_ (gx#stx-e _g54325451_)))
                       (let ((_hd54365456_ (##car _e54355453_))
                             (_tl54375458_ (##cdr _e54355453_)))
                         (if (gx#stx-pair? _tl54375458_)
                             (let ((_e54385461_ (gx#stx-e _tl54375458_)))
                               (let ((_hd54395464_ (##car _e54385461_))
                                     (_tl54405466_ (##cdr _e54385461_)))
                                 (if (gx#stx-pair? _tl54405466_)
                                     (let ((_e54415469_
                                            (gx#stx-e _tl54405466_)))
                                       (let ((_hd54425472_ (##car _e54415469_))
                                             (_tl54435474_
                                              (##cdr _e54415469_)))
                                         (if (gx#stx-null? _tl54435474_)
                                             ((lambda (_L5477_ _L5478_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L5478_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5477_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd54425472_
                                              _hd54395464_)
                                             (_g54315448_ _g54325451_))))
                                     (_g54315448_ _g54325451_))))
                             (_g54315448_ _g54325451_))))
                     (_g54315448_ _g54325451_)))))
          (_g54305493_ _stx5429_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd5427_) (gx#stx-map gxc#generate-runtime-binding-id* _hd5427_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx5284_)
      (let ((_generate15286_
             (lambda (_args5417_ _arglen5418_ _hd5419_ _body5420_)
               (let ((_len5422_ (gx#stx-length _hd5419_)))
                 (let ((_condition5424_
                        (if (gx#stx-list? _hd5419_)
                            (cons 'fx=
                                  (cons _arglen5418_ (cons _len5422_ '())))
                            (if (> _len5422_ '0)
                                (cons 'fx>=
                                      (cons _arglen5418_ (cons _len5422_ '())))
                                '#t))))
                   (let ()
                     (cons _condition5424_
                           (cons (cons 'apply
                                       (cons (cons 'lambda
                                                   (cons (gxc#generate-runtime-lambda-head
                                                          _hd5419_)
                                                         (cons (gxc#compile-e
                                                                _body5420_)
                                                               '())))
                                             (cons _args5417_ '())))
                                 '()))))))))
        (let ((_g52885316_
               (lambda (_g52895313_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g52895313_))))
          (let ((_g52875414_
                 (lambda (_g52895319_)
                   (if (gx#stx-pair? _g52895319_)
                       (let ((_e52925321_ (gx#stx-e _g52895319_)))
                         (let ((_hd52935324_ (##car _e52925321_))
                               (_tl52945326_ (##cdr _e52925321_)))
                           (if (gx#stx-pair/null? _tl52945326_)
                               (if (fx>= (gx#stx-length _tl52945326_) '0)
                                   (let ((_g6475_ (gx#syntax-split-splice
                                                   _tl52945326_
                                                   '0)))
                                     (begin
                                       (let ((_g6476_ (values-count _g6475_)))
                                         (if (not (fx= _g6476_ 2))
                                             (error "Context expects 2 values"
                                                    _g6476_)))
                                       (let ((_target52955329_
                                              (values-ref _g6475_ 0))
                                             (_tl52975331_
                                              (values-ref _g6475_ 1)))
                                         (if (gx#stx-null? _tl52975331_)
                                             (letrec ((_loop52985334_
                                                       (lambda (_hd52965337_
                                                                _body53025339_
                                                                _hd53035341_)
                                                         (if (gx#stx-pair?
                                                              _hd52965337_)
                                                             (let ((_e52995344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd52965337_)))
                       (let ((_lp-hd53005347_ (##car _e52995344_))
                             (_lp-tl53015349_ (##cdr _e52995344_)))
                         (if (gx#stx-pair? _lp-hd53005347_)
                             (let ((_e53065352_ (gx#stx-e _lp-hd53005347_)))
                               (let ((_hd53075355_ (##car _e53065352_))
                                     (_tl53085357_ (##cdr _e53065352_)))
                                 (if (gx#stx-pair? _tl53085357_)
                                     (let ((_e53095360_
                                            (gx#stx-e _tl53085357_)))
                                       (let ((_hd53105363_ (##car _e53095360_))
                                             (_tl53115365_
                                              (##cdr _e53095360_)))
                                         (if (gx#stx-null? _tl53115365_)
                                             (_loop52985334_
                                              _lp-tl53015349_
                                              (cons _hd53105363_
                                                    _body53025339_)
                                              (cons _hd53075355_ _hd53035341_))
                                             (_g52885316_ _g52895319_))))
                                     (_g52885316_ _g52895319_))))
                             (_g52885316_ _g52895319_))))
                     (let ((_body53045368_ (reverse _body53025339_))
                           (_hd53055370_ (reverse _hd53035341_)))
                       ((lambda (_L5373_ _L5374_)
                          (let ((_args5390_ (gxc#generate-runtime-temporary))
                                (_arglen5391_
                                 (gxc#generate-runtime-temporary)))
                            (cons 'lambda
                                  (cons _args5390_
                                        (cons (cons 'let
                                                    (cons (cons (cons _arglen5391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'length (cons _args5390_ '())) '()))
                        '())
                  (cons (cons 'cond
                              (foldr cons
                                     (cons (cons 'else
                                                 (cons (cons 'error
                                                             (cons '"No clause matching arguments"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args5390_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g53925395_ _g53935397_)
                                            (_generate15286_
                                             _args5390_
                                             _arglen5391_
                                             _g53925395_
                                             _g53935397_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g53995402_
                                                            _g54005404_)
                                                     (cons _g53995402_
                                                           _g54005404_))
                                                   '()
                                                   _L5374_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g54065409_
                                                            _g54075411_)
                                                     (cons _g54065409_
                                                           _g54075411_))
                                                   '()
                                                   _L5373_)))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _body53045368_
                        _hd53055370_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop52985334_
                                                _target52955329_
                                                '()
                                                '()))
                                             (_g52885316_ _g52895319_)))))
                                   (_g52885316_ _g52895319_))
                               (_g52885316_ _g52895319_))))
                       (_g52885316_ _g52895319_)))))
            (_g52875414_ _stx5284_))))))
  (define gxc#generate-runtime-let-values%
    (let ((_opt-lambda49645274_
           (lambda (_stx4966_ _compiled-body?4967_)
             (let ((_generate-simple4969_
                    (lambda (_hd5271_ _body5272_)
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd5271_
                       _body5272_
                       _compiled-body?4967_))))
               (let ((_generate-values-post4971_
                      (lambda (_post5043_ _body5044_)
                        ((letrec ((_lp5046_
                                   (lambda (_rest5048_ _body5049_)
                                     (let ((_rest50505058_ _rest5048_))
                                       (let ((_E50535062_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _rest50505058_))))
                                         (let ((_else50525066_
                                                (lambda () _body5049_)))
                                           (let ((_K50545072_
                                                  (lambda (_rest5069_
                                                           _bind5070_)
                                                    (_lp5046_
                                                     _rest5069_
                                                     (cons 'let
                                                           (cons _bind5070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5049_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _rest50505058_)
                                                 (let ((_hd50555075_
                                                        (##car _rest50505058_))
                                                       (_tl50565077_
                                                        (##cdr _rest50505058_)))
                                                   (let ((_bind5080_
                                                          _hd50555075_))
                                                     (let ((_rest5082_
                                                            _tl50565077_))
                                                       (_K50545072_
                                                        _rest5082_
                                                        _bind5080_))))
                                                 (_else50525066_)))))))))
                           _lp5046_)
                         _post5043_
                         _body5044_))))
                 (let ((_generate-values-check4972_
                        (lambda (_check5040_ _body5041_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body5041_ '())
                                       (reverse _check5040_))))))
                   (let ((_generate-values4970_
                          (lambda (_hd5084_ _body5085_)
                            ((letrec ((_lp5087_
                                       (lambda (_rest5089_
                                                _bind5090_
                                                _check5091_
                                                _post5092_)
                                         (let ((_g50955106_
                                                (lambda (_g50965103_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g50965103_))))
                                           (let ((_g50945120_
                                                  (lambda (_g50965109_)
                                                    ((lambda ()
                                                       (let ((_body5113_
                                                              (if _compiled-body?4967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body5085_
                          (gxc#compile-e _body5085_))))
                 (let ((_body5115_
                        (_generate-values-post4971_ _post5092_ _body5113_)))
                   (let ((_body5117_
                          (_generate-values-check4972_
                           _check5091_
                           _body5115_)))
                     (let ()
                       (cons 'let
                             (cons (reverse _bind5090_)
                                   (cons _body5117_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g50935268_
                                                    (lambda (_g50965123_)
                                                      (if (gx#stx-pair?
                                                           _g50965123_)
                                                          (let ((_e50995125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g50965123_)))
                    (let ((_hd51005128_ (##car _e50995125_))
                          (_tl51015130_ (##cdr _e50995125_)))
                      ((lambda (_L5133_ _L5134_)
                         (let ((_g51495174_
                                (lambda (_g51505171_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g51505171_))))
                           (let ((_g51485218_
                                  (lambda (_g51505177_)
                                    (if (gx#stx-pair? _g51505177_)
                                        (let ((_e51645179_
                                               (gx#stx-e _g51505177_)))
                                          (let ((_hd51655182_
                                                 (##car _e51645179_))
                                                (_tl51665184_
                                                 (##cdr _e51645179_)))
                                            (if (gx#stx-pair? _tl51665184_)
                                                (let ((_e51675187_
                                                       (gx#stx-e
                                                        _tl51665184_)))
                                                  (let ((_hd51685190_
                                                         (##car _e51675187_))
                                                        (_tl51695192_
                                                         (##cdr _e51675187_)))
                                                    (if (gx#stx-null?
                                                         _tl51695192_)
                                                        ((lambda (_L5195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5196_)
                   (let ((_vals5209_ (gxc#generate-runtime-temporary)))
                     (let ((_expr5211_ (gxc#compile-e _L5195_)))
                       (let ((_check-values5213_
                              (gxc#generate-runtime-check-values
                               _vals5209_
                               _L5196_)))
                         (let ((_refs5215_
                                (gxc#generate-runtime-let-values-bind
                                 _vals5209_
                                 _L5196_)))
                           (let ()
                             (_lp5087_
                              _L5133_
                              (cons (cons _vals5209_ (cons _expr5211_ '()))
                                    _bind5090_)
                              (cons _check-values5213_ _check5091_)
                              (cons _refs5215_ _post5092_))))))))
                 _hd51685190_
                 _hd51655182_)
                (_g51495174_ _g51505177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g51495174_ _g51505177_))))
                                        (_g51495174_ _g51505177_)))))
                             (let ((_g51475265_
                                    (lambda (_g51505221_)
                                      (if (gx#stx-pair? _g51505221_)
                                          (let ((_e51535223_
                                                 (gx#stx-e _g51505221_)))
                                            (let ((_hd51545226_
                                                   (##car _e51535223_))
                                                  (_tl51555228_
                                                   (##cdr _e51535223_)))
                                              (if (gx#stx-pair? _hd51545226_)
                                                  (let ((_e51565231_
                                                         (gx#stx-e
                                                          _hd51545226_)))
                                                    (let ((_hd51575234_
                                                           (##car _e51565231_))
                                                          (_tl51585236_
                                                           (##cdr _e51565231_)))
                                                      (if (gx#stx-null?
                                                           _tl51585236_)
                                                          (if (gx#stx-pair?
                                                               _tl51555228_)
                                                              (let ((_e51595239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl51555228_)))
                        (let ((_hd51605242_ (##car _e51595239_))
                              (_tl51615244_ (##cdr _e51595239_)))
                          (if (gx#stx-null? _tl51615244_)
                              ((lambda (_L5247_ _L5248_)
                                 (let ((_eid5262_
                                        (gxc#generate-runtime-binding-id*
                                         _L5248_))
                                       (_expr5263_ (gxc#compile-e _L5247_)))
                                   (_lp5087_
                                    _L5133_
                                    (cons (cons _eid5262_
                                                (cons _expr5263_ '()))
                                          _bind5090_)
                                    _check5091_
                                    _post5092_)))
                               _hd51605242_
                               _hd51575234_)
                              (_g51485218_ _g51505221_))))
                      (_g51485218_ _g51505221_))
                  (_g51485218_ _g51505221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g51485218_ _g51505221_))))
                                          (_g51485218_ _g51505221_)))))
                               (_g51475265_ _L5134_)))))
                       _tl51015130_
                       _hd51005128_)))
                  (_g50945120_ _g50965123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g50935268_ _rest5089_)))))))
                               _lp5087_)
                             _hd5084_
                             '()
                             '()
                             '()))))
                     (let ((_g49744991_
                            (lambda (_g49754988_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g49754988_))))
                       (let ((_g49735037_
                              (lambda (_g49754994_)
                                (if (gx#stx-pair? _g49754994_)
                                    (let ((_e49784996_ (gx#stx-e _g49754994_)))
                                      (let ((_hd49794999_ (##car _e49784996_))
                                            (_tl49805001_ (##cdr _e49784996_)))
                                        (if (gx#stx-pair? _tl49805001_)
                                            (let ((_e49815004_
                                                   (gx#stx-e _tl49805001_)))
                                              (let ((_hd49825007_
                                                     (##car _e49815004_))
                                                    (_tl49835009_
                                                     (##cdr _e49815004_)))
                                                (if (gx#stx-pair? _tl49835009_)
                                                    (let ((_e49845012_
                                                           (gx#stx-e
                                                            _tl49835009_)))
                                                      (let ((_hd49855015_
                                                             (##car _e49845012_))
                                                            (_tl49865017_
                                                             (##cdr _e49845012_)))
                                                        (if (gx#stx-null?
                                                             _tl49865017_)
                                                            ((lambda (_L5020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5021_)
                       (if (gxc#generate-runtime-simple-let? _L5021_)
                           (_generate-simple4969_ _L5021_ _L5020_)
                           (_generate-values4970_ _L5021_ _L5020_)))
                     _hd49855015_
                     _hd49825007_)
                    (_g49744991_ _g49754994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g49744991_
                                                     _g49754994_))))
                                            (_g49744991_ _g49754994_))))
                                    (_g49744991_ _g49754994_)))))
                         (_g49735037_ _stx4966_))))))))))
      (lambda _g6478_
        (let ((_g6477_ (length _g6478_)))
          (cond ((fx= _g6477_ 1)
                 (apply (lambda (_stx5277_)
                          (let ((_compiled-body?5279_ '#f))
                            (_opt-lambda49645274_
                             _stx5277_
                             _compiled-body?5279_)))
                        _g6478_))
                ((fx= _g6477_ 2)
                 (apply (lambda (_stx5281_ _compiled-body?5282_)
                          (_opt-lambda49645274_
                           _stx5281_
                           _compiled-body?5282_))
                        _g6478_))
                (else (error "No clause matching arguments" _g6478_)))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals4865_ _hd4866_)
      ((letrec ((_lp4868_
                 (lambda (_rest4870_ _k4871_ _r4872_)
                   (let ((_g48774893_
                          (lambda (_g48784890_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g48784890_))))
                     (let ((_g48764900_
                            (lambda (_g48784896_)
                              ((lambda () (reverse _r4872_))))))
                       (let ((_g48754916_
                              (lambda (_g48784903_)
                                ((lambda (_L4905_)
                                   (if (gx#identifier? _L4905_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L4905_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals4865_ (cons _k4871_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r4872_)
                                       (_g48764900_ _g48784903_)))
                                 _g48784903_))))
                         (let ((_g48744940_
                                (lambda (_g48784919_)
                                  (if (gx#stx-pair? _g48784919_)
                                      (let ((_e48854921_
                                             (gx#stx-e _g48784919_)))
                                        (let ((_hd48864924_
                                               (##car _e48854921_))
                                              (_tl48874926_
                                               (##cdr _e48854921_)))
                                          ((lambda (_L4929_ _L4930_)
                                             (_lp4868_
                                              _L4929_
                                              (fx1+ _k4871_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L4930_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals4865_ (cons _k4871_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r4872_)))
                                           _tl48874926_
                                           _hd48864924_)))
                                      (_g48754916_ _g48784919_)))))
                           (let ((_g48734962_
                                  (lambda (_g48784943_)
                                    (if (gx#stx-pair? _g48784943_)
                                        (let ((_e48804945_
                                               (gx#stx-e _g48784943_)))
                                          (let ((_hd48814948_
                                                 (##car _e48804945_))
                                                (_tl48824950_
                                                 (##cdr _e48804945_)))
                                            (if (gx#stx-datum? _hd48814948_)
                                                (if (equal? (gx#stx-e
                                                             _hd48814948_)
                                                            '#f)
                                                    ((lambda (_L4953_)
                                                       (_lp4868_
                                                        _L4953_
                                                        (fx1+ _k4871_)
                                                        _r4872_))
                                                     _tl48824950_)
                                                    (_g48744940_ _g48784943_))
                                                (_g48744940_ _g48784943_))))
                                        (_g48744940_ _g48784943_)))))
                             (_g48734962_ _rest4870_)))))))))
         _lp4868_)
       _hd4866_
       '0
       '())))
  (define gxc#generate-runtime-letrec-values%
    (let ((_opt-lambda45434855_
           (lambda (_stx4545_ _compiled-body?4546_)
             (let ((_generate-simple4548_
                    (lambda (_hd4852_ _body4853_)
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd4852_
                       _body4853_
                       _compiled-body?4546_))))
               (let ((_generate-values-check4550_
                      (lambda (_check4626_ _body4627_)
                        (cons 'begin
                              (foldr cons
                                     (cons _body4627_ '())
                                     (reverse _check4626_))))))
                 (let ((_generate-values-post4551_
                        (lambda (_post4619_ _body4620_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body4620_ '())
                                       (map (lambda (_g46214623_)
                                              (cons 'set! _g46214623_))
                                            (reverse _post4619_)))))))
                   (let ((_generate-values4549_
                          (lambda (_hd4629_ _body4630_)
                            ((letrec ((_lp4632_
                                       (lambda (_rest4634_
                                                _bind4635_
                                                _check4636_
                                                _post4637_)
                                         (let ((_g46404651_
                                                (lambda (_g46414648_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g46414648_))))
                                           (let ((_g46394665_
                                                  (lambda (_g46414654_)
                                                    ((lambda ()
                                                       (let ((_body4658_
                                                              (if _compiled-body?4546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4630_
                          (gxc#compile-e _body4630_))))
                 (let ((_body4660_
                        (_generate-values-post4551_ _post4637_ _body4658_)))
                   (let ((_body4662_
                          (_generate-values-check4550_
                           _check4636_
                           _body4660_)))
                     (let ()
                       (cons 'letrec
                             (cons (reverse _bind4635_)
                                   (cons _body4662_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g46384849_
                                                    (lambda (_g46414668_)
                                                      (if (gx#stx-pair?
                                                           _g46414668_)
                                                          (let ((_e46444670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g46414668_)))
                    (let ((_hd46454673_ (##car _e46444670_))
                          (_tl46464675_ (##cdr _e46444670_)))
                      ((lambda (_L4678_ _L4679_)
                         (let ((_g46944719_
                                (lambda (_g46954716_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g46954716_))))
                           (let ((_g46934799_
                                  (lambda (_g46954722_)
                                    (if (gx#stx-pair? _g46954722_)
                                        (let ((_e47094724_
                                               (gx#stx-e _g46954722_)))
                                          (let ((_hd47104727_
                                                 (##car _e47094724_))
                                                (_tl47114729_
                                                 (##cdr _e47094724_)))
                                            (if (gx#stx-pair? _tl47114729_)
                                                (let ((_e47124732_
                                                       (gx#stx-e
                                                        _tl47114729_)))
                                                  (let ((_hd47134735_
                                                         (##car _e47124732_))
                                                        (_tl47144737_
                                                         (##cdr _e47124732_)))
                                                    (if (gx#stx-null?
                                                         _tl47144737_)
                                                        ((lambda (_L4740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4741_)
                   (let ((_vals4754_ (gxc#generate-runtime-temporary)))
                     (let ((_expr4756_ (gxc#compile-e _L4740_)))
                       (let ((_check-values4758_
                              (gxc#generate-runtime-check-values
                               _vals4754_
                               _L4741_)))
                         (let ((_refs4760_
                                (gxc#generate-runtime-let-values-bind
                                 _vals4754_
                                 _L4741_)))
                           (let ()
                             (_lp4632_
                              _L4678_
                              (foldl cons
                                     (cons (cons _vals4754_
                                                 (cons _expr4756_ '()))
                                           _bind4635_)
                                     (map (lambda (_e47624764_)
                                            (let ((_g47664775_ _e47624764_))
                                              (let ((_E47684779_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _g47664775_))))
                                                (let ((_K47694784_
                                                       (lambda (_eid4782_)
                                                         (cons _eid4782_
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _g47664775_)
                                                      (let ((_hd47704787_
                                                             (##car _g47664775_))
                                                            (_tl47714789_
                                                             (##cdr _g47664775_)))
                                                        (let ((_eid4792_
                                                               _hd47704787_))
                                                          (if (##pair? _tl47714789_)
                                                              (let ((_hd47724794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl47714789_))
                            (_tl47734796_ (##cdr _tl47714789_)))
                        (if (##null? _tl47734796_)
                            (_K47694784_ _eid4792_)
                            (_E47684779_)))
                      (_E47684779_))))
              (_E47684779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _refs4760_))
                              (cons _check-values4758_ _check4636_)
                              (foldl cons _refs4760_ _post4637_))))))))
                 _hd47134735_
                 _hd47104727_)
                (_g46944719_ _g46954722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g46944719_ _g46954722_))))
                                        (_g46944719_ _g46954722_)))))
                             (let ((_g46924846_
                                    (lambda (_g46954802_)
                                      (if (gx#stx-pair? _g46954802_)
                                          (let ((_e46984804_
                                                 (gx#stx-e _g46954802_)))
                                            (let ((_hd46994807_
                                                   (##car _e46984804_))
                                                  (_tl47004809_
                                                   (##cdr _e46984804_)))
                                              (if (gx#stx-pair? _hd46994807_)
                                                  (let ((_e47014812_
                                                         (gx#stx-e
                                                          _hd46994807_)))
                                                    (let ((_hd47024815_
                                                           (##car _e47014812_))
                                                          (_tl47034817_
                                                           (##cdr _e47014812_)))
                                                      (if (gx#stx-null?
                                                           _tl47034817_)
                                                          (if (gx#stx-pair?
                                                               _tl47004809_)
                                                              (let ((_e47044820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl47004809_)))
                        (let ((_hd47054823_ (##car _e47044820_))
                              (_tl47064825_ (##cdr _e47044820_)))
                          (if (gx#stx-null? _tl47064825_)
                              ((lambda (_L4828_ _L4829_)
                                 (let ((_eid4843_
                                        (gxc#generate-runtime-binding-id*
                                         _L4829_))
                                       (_expr4844_ (gxc#compile-e _L4828_)))
                                   (_lp4632_
                                    _L4678_
                                    (cons (cons _eid4843_
                                                (cons _expr4844_ '()))
                                          _bind4635_)
                                    _check4636_
                                    _post4637_)))
                               _hd47054823_
                               _hd47024815_)
                              (_g46934799_ _g46954802_))))
                      (_g46934799_ _g46954802_))
                  (_g46934799_ _g46954802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g46934799_ _g46954802_))))
                                          (_g46934799_ _g46954802_)))))
                               (_g46924846_ _L4679_)))))
                       _tl46464675_
                       _hd46454673_)))
                  (_g46394665_ _g46414668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g46384849_ _rest4634_)))))))
                               _lp4632_)
                             _hd4629_
                             '()
                             '()
                             '()))))
                     (let ((_g45534570_
                            (lambda (_g45544567_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g45544567_))))
                       (let ((_g45524616_
                              (lambda (_g45544573_)
                                (if (gx#stx-pair? _g45544573_)
                                    (let ((_e45574575_ (gx#stx-e _g45544573_)))
                                      (let ((_hd45584578_ (##car _e45574575_))
                                            (_tl45594580_ (##cdr _e45574575_)))
                                        (if (gx#stx-pair? _tl45594580_)
                                            (let ((_e45604583_
                                                   (gx#stx-e _tl45594580_)))
                                              (let ((_hd45614586_
                                                     (##car _e45604583_))
                                                    (_tl45624588_
                                                     (##cdr _e45604583_)))
                                                (if (gx#stx-pair? _tl45624588_)
                                                    (let ((_e45634591_
                                                           (gx#stx-e
                                                            _tl45624588_)))
                                                      (let ((_hd45644594_
                                                             (##car _e45634591_))
                                                            (_tl45654596_
                                                             (##cdr _e45634591_)))
                                                        (if (gx#stx-null?
                                                             _tl45654596_)
                                                            ((lambda (_L4599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4600_)
                       (if (gxc#generate-runtime-simple-let? _L4600_)
                           (_generate-simple4548_ _L4600_ _L4599_)
                           (_generate-values4549_ _L4600_ _L4599_)))
                     _hd45644594_
                     _hd45614586_)
                    (_g45534570_ _g45544573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g45534570_
                                                     _g45544573_))))
                                            (_g45534570_ _g45544573_))))
                                    (_g45534570_ _g45544573_)))))
                         (_g45524616_ _stx4545_))))))))))
      (lambda _g6480_
        (let ((_g6479_ (length _g6480_)))
          (cond ((fx= _g6479_ 1)
                 (apply (lambda (_stx4858_)
                          (let ((_compiled-body?4860_ '#f))
                            (_opt-lambda45434855_
                             _stx4858_
                             _compiled-body?4860_)))
                        _g6480_))
                ((fx= _g6479_ 2)
                 (apply (lambda (_stx4862_ _compiled-body?4863_)
                          (_opt-lambda45434855_
                           _stx4862_
                           _compiled-body?4863_))
                        _g6480_))
                (else (error "No clause matching arguments" _g6480_)))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx3664_)
      (let ((_collect-closures3667_
             (lambda (_forms4485_)
               (map (lambda (_e44864488_)
                      (let ((_g44904499_ _e44864488_))
                        (let ((_E44924503_
                               (lambda ()
                                 (error '"No clause matching" _g44904499_))))
                          (let ((_K44934508_
                                 (lambda (_expr4506_)
                                   (gxc#collect-expression-refs _expr4506_))))
                            (if (##pair? _g44904499_)
                                (let ((_hd44944511_ (##car _g44904499_))
                                      (_tl44954513_ (##cdr _g44904499_)))
                                  (if (##pair? _tl44954513_)
                                      (let ((_hd44964516_ (##car _tl44954513_))
                                            (_tl44974518_
                                             (##cdr _tl44954513_)))
                                        (let ((_expr4521_ _hd44964516_))
                                          (if (##null? _tl44974518_)
                                              (_K44934508_ _expr4521_)
                                              (_E44924503_))))
                                      (_E44924503_)))
                                (_E44924503_))))))
                    _forms4485_))))
        (let ((_collect-bindings3668_
               (lambda (_forms4409_)
                 (map (lambda (_e44104412_)
                        (let ((_g44144423_ _e44104412_))
                          (let ((_E44164427_
                                 (lambda ()
                                   (error '"No clause matching" _g44144423_))))
                            (let ((_K44174470_
                                   (lambda (_bind4430_)
                                     ((letrec ((_lp4432_
                                                (lambda (_rest4434_ _r4435_)
                                                  (let ((_rest44364444_
                                                         _rest4434_))
                                                    (let ((_E44394448_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest44364444_))))
              (let ((_else44384452_
                     (lambda ()
                       (if (gx#identifier? _rest4434_)
                           (cons _rest4434_ _r4435_)
                           _r4435_))))
                (let ((_K44404458_
                       (lambda (_rest4455_ _id4456_)
                         (if (gx#identifier? _id4456_)
                             (_lp4432_
                              _rest4455_
                              (cons (gx#binding-id
                                     (gx#resolve-identifier _id4456_))
                                    _r4435_))
                             (_lp4432_ _rest4455_ _r4435_)))))
                  (if (##pair? _rest44364444_)
                      (let ((_hd44414461_ (##car _rest44364444_))
                            (_tl44424463_ (##cdr _rest44364444_)))
                        (let ((_id4466_ _hd44414461_))
                          (let ((_rest4468_ _tl44424463_))
                            (_K44404458_ _rest4468_ _id4466_))))
                      (_else44384452_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp4432_)
                                      _bind4430_
                                      '()))))
                              (if (##pair? _g44144423_)
                                  (let ((_hd44184473_ (##car _g44144423_))
                                        (_tl44194475_ (##cdr _g44144423_)))
                                    (let ((_bind4478_ _hd44184473_))
                                      (if (##pair? _tl44194475_)
                                          (let ((_hd44204480_
                                                 (##car _tl44194475_))
                                                (_tl44214482_
                                                 (##cdr _tl44194475_)))
                                            (if (##null? _tl44214482_)
                                                (_K44174470_ _bind4478_)
                                                (_E44164427_)))
                                          (_E44164427_))))
                                  (_E44164427_))))))
                      _forms4409_))))
          (let ((_closure-reference?3672_
                 (lambda (_closure3961_ _bindings3962_)
                   (ormap (lambda (_g39633965_)
                            (hash-get _closure3961_ _g39633965_))
                          _bindings3962_))))
            (let ((_is-effect-expr?3674_
                   (lambda (_expr3872_)
                     (let ((_g38743884_
                            (lambda (_g38753881_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g38753881_))))
                       (let ((_g38733907_
                              (lambda (_g38753887_)
                                (if (gx#stx-pair? _g38753887_)
                                    (let ((_e38773889_ (gx#stx-e _g38753887_)))
                                      (let ((_hd38783892_ (##car _e38773889_))
                                            (_tl38793894_ (##cdr _e38773889_)))
                                        ((lambda (_L3897_)
                                           (not (memq (gx#stx-e _L3897_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd38783892_)))
                                    (_g38743884_ _g38753887_)))))
                         (_g38733907_ _expr3872_))))))
              (let ((_is-lambda-expr?3675_
                     (lambda (_expr3834_)
                       (let ((_g38363846_
                              (lambda (_g38373843_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g38373843_))))
                         (let ((_g38353869_
                                (lambda (_g38373849_)
                                  (if (gx#stx-pair? _g38373849_)
                                      (let ((_e38393851_
                                             (gx#stx-e _g38373849_)))
                                        (let ((_hd38403854_
                                               (##car _e38393851_))
                                              (_tl38413856_
                                               (##cdr _e38393851_)))
                                          ((lambda (_L3859_)
                                             (memq (gx#stx-e _L3859_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd38403854_)))
                                      (_g38363846_ _g38373849_)))))
                           (_g38353869_ _expr3834_))))))
                (let ((_lift-rec3671_
                       (lambda (_forms3968_)
                         ((letrec ((_lp3970_
                                    (lambda (_rest3972_
                                             _pre3973_
                                             _bind3974_
                                             _init3975_)
                                      (let ((_rest39763984_ _rest3972_))
                                        (let ((_E39793988_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest39763984_))))
                                          (let ((_else39783992_
                                                 (lambda ()
                                                   (values (reverse _pre3973_)
                                                           (reverse _bind3974_)
                                                           (reverse _init3975_)))))
                                            (let ((_K39804183_
                                                   (lambda (_rest3995_
                                                            _bind-hd3996_)
                                                     (let ((_g40004035_
                                                            (lambda (_g40014032_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g40014032_))))
                                                       (let ((_g39994092_
                                                              (lambda (_g40014038_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g40014038_)
                            (let ((_e40254040_ (gx#stx-e _g40014038_)))
                              (let ((_hd40264043_ (##car _e40254040_))
                                    (_tl40274045_ (##cdr _e40254040_)))
                                (if (gx#stx-pair? _tl40274045_)
                                    (let ((_e40284048_
                                           (gx#stx-e _tl40274045_)))
                                      (let ((_hd40294051_ (##car _e40284048_))
                                            (_tl40304053_ (##cdr _e40284048_)))
                                        (if (gx#stx-null? _tl40304053_)
                                            ((lambda (_L4056_ _L4057_)
                                               (let ((_vals4076_
                                                      (gxc#generate-runtime-temporary)))
                                                 (let ((_expr4078_
                                                        (gxc#compile-e
                                                         _L4056_)))
                                                   (let ((_check-values4080_
                                                          (gxc#generate-runtime-check-values
                                                           _vals4076_
                                                           _L4057_)))
                                                     (let ((_refs4082_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals4076_
                                                             _L4057_)))
                                                       (let ()
                                                         (_lp3970_
                                                          _rest3995_
                                                          (foldl (lambda (_ref4085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r4086_)
                           (cons (cons (car _ref4085_) (cons '#!void '()))
                                 _r4086_))
                         _pre3973_
                         _refs4082_)
                  _bind3974_
                  (cons (cons 'let
                              (cons (cons (cons _vals4076_
                                                (cons _expr4078_ '()))
                                          '())
                                    (cons _check-values4080_
                                          (cons (map (lambda (_g40874089_)
                                                       (cons 'set!
                                                             _g40874089_))
                                                     _refs4082_)
                                                '()))))
                        _init3975_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd40294051_
                                             _hd40264043_)
                                            (_g40004035_ _g40014038_))))
                                    (_g40004035_ _g40014038_))))
                            (_g40004035_ _g40014038_)))))
                 (let ((_g39984138_
                        (lambda (_g40014095_)
                          (if (gx#stx-pair? _g40014095_)
                              (let ((_e40144097_ (gx#stx-e _g40014095_)))
                                (let ((_hd40154100_ (##car _e40144097_))
                                      (_tl40164102_ (##cdr _e40144097_)))
                                  (if (gx#stx-pair? _hd40154100_)
                                      (let ((_e40174105_
                                             (gx#stx-e _hd40154100_)))
                                        (let ((_hd40184108_
                                               (##car _e40174105_))
                                              (_tl40194110_
                                               (##cdr _e40174105_)))
                                          (if (gx#stx-null? _tl40194110_)
                                              (if (gx#stx-pair? _tl40164102_)
                                                  (let ((_e40204113_
                                                         (gx#stx-e
                                                          _tl40164102_)))
                                                    (let ((_hd40214116_
                                                           (##car _e40204113_))
                                                          (_tl40224118_
                                                           (##cdr _e40204113_)))
                                                      (if (gx#stx-null?
                                                           _tl40224118_)
                                                          ((lambda (_L4121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4122_)
                     (let ((_eid4136_
                            (gxc#generate-runtime-binding-id _L4122_)))
                       (if (_is-lambda-expr?3675_ _L4121_)
                           (_lp3970_
                            _rest3995_
                            _pre3973_
                            (cons (cons _eid4136_
                                        (cons (gxc#compile-e _L4121_) '()))
                                  _bind3974_)
                            _init3975_)
                           (_lp3970_
                            _rest3995_
                            (cons (cons _eid4136_ (cons '#!void '()))
                                  _pre3973_)
                            _bind3974_
                            (cons (cons 'set!
                                        (cons _eid4136_
                                              (cons (gxc#compile-e _L4121_)
                                                    '())))
                                  _init3975_)))))
                   _hd40214116_
                   _hd40184108_)
                  (_g39994092_ _g40014095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g39994092_ _g40014095_))
                                              (_g39994092_ _g40014095_))))
                                      (_g39994092_ _g40014095_))))
                              (_g39994092_ _g40014095_)))))
                   (let ((_g39974180_
                          (lambda (_g40014141_)
                            (if (gx#stx-pair? _g40014141_)
                                (let ((_e40034143_ (gx#stx-e _g40014141_)))
                                  (let ((_hd40044146_ (##car _e40034143_))
                                        (_tl40054148_ (##cdr _e40034143_)))
                                    (if (gx#stx-pair? _hd40044146_)
                                        (let ((_e40064151_
                                               (gx#stx-e _hd40044146_)))
                                          (let ((_hd40074154_
                                                 (##car _e40064151_))
                                                (_tl40084156_
                                                 (##cdr _e40064151_)))
                                            (if (gx#stx-datum? _hd40074154_)
                                                (if (equal? (gx#stx-e
                                                             _hd40074154_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl40084156_)
                                                        (if (gx#stx-pair?
                                                             _tl40054148_)
                                                            (let ((_e40094159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl40054148_)))
                      (let ((_hd40104162_ (##car _e40094159_))
                            (_tl40114164_ (##cdr _e40094159_)))
                        (if (gx#stx-null? _tl40114164_)
                            ((lambda (_L4167_)
                               (_lp3970_
                                _rest3995_
                                _pre3973_
                                _bind3974_
                                (cons (gxc#compile-e _L4167_) _init3975_)))
                             _hd40104162_)
                            (_g39984138_ _g40014141_))))
                    (_g39984138_ _g40014141_))
                (_g39984138_ _g40014141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g39984138_ _g40014141_))
                                                (_g39984138_ _g40014141_))))
                                        (_g39984138_ _g40014141_))))
                                (_g39984138_ _g40014141_)))))
                     (_g39974180_ _bind-hd3996_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest39763984_)
                                                  (let ((_hd39814186_
                                                         (##car _rest39763984_))
                                                        (_tl39824188_
                                                         (##cdr _rest39763984_)))
                                                    (let ((_bind-hd4191_
                                                           _hd39814186_))
                                                      (let ((_rest4193_
                                                             _tl39824188_))
                                                        (_K39804183_
                                                         _rest4193_
                                                         _bind-hd4191_))))
                                                  (_else39783992_)))))))))
                            _lp3970_)
                          _forms3968_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?3673_
                         (lambda (_hd-bind3910_)
                           (let ((_g39123925_
                                  (lambda (_g39133922_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g39133922_))))
                             (let ((_g39113958_
                                    (lambda (_g39133928_)
                                      (if (gx#stx-pair? _g39133928_)
                                          (let ((_e39153930_
                                                 (gx#stx-e _g39133928_)))
                                            (let ((_hd39163933_
                                                   (##car _e39153930_))
                                                  (_tl39173935_
                                                   (##cdr _e39153930_)))
                                              (if (gx#stx-pair? _tl39173935_)
                                                  (let ((_e39183938_
                                                         (gx#stx-e
                                                          _tl39173935_)))
                                                    (let ((_hd39193941_
                                                           (##car _e39183938_))
                                                          (_tl39203943_
                                                           (##cdr _e39183938_)))
                                                      (if (gx#stx-null?
                                                           _tl39203943_)
                                                          ((lambda (_L3946_)
                                                             (_is-effect-expr?3674_
                                                              _L3946_))
                                                           _hd39193941_)
                                                          (_g39123925_
                                                           _g39133928_))))
                                                  (_g39123925_ _g39133928_))))
                                          (_g39123925_ _g39133928_)))))
                               (_g39113958_ _hd-bind3910_))))))
                    (let ((_lift-pre3669_
                           (lambda (_hd4302_ _bindings4303_ _closures4304_)
                             ((letrec ((_lp4306_
                                        (lambda (_rest-forms4308_
                                                 _rest-bindings4309_
                                                 _rest-closures4310_
                                                 _post-forms4311_
                                                 _post-bindings4312_
                                                 _post-closures4313_
                                                 _pre-forms4314_
                                                 _lifted?4315_)
                                          (let ((_rest-forms43164332_
                                                 _rest-forms4308_)
                                                (_rest-bindings43174334_
                                                 _rest-bindings4309_)
                                                (_rest-closures43184336_
                                                 _rest-closures4310_))
                                            (let ((_E43214340_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms43164332_
                                                            _rest-bindings43174334_
                                                            _rest-closures43184336_))))
                                              (let ((_else43204344_
                                                     (lambda ()
                                                       (if _lifted?4315_
                                                           (_lp4306_
                                                            (reverse _post-forms4311_)
                                                            (reverse _post-bindings4312_)
                                                            (reverse _post-closures4313_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms4314_
                                                            '#f)
                                                           (values (reverse _pre-forms4314_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms4311_)
                           (reverse _post-bindings4312_)
                           (reverse _post-closures4313_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K43224397_
                                                       (lambda (_rest-forms4347_
                                                                _form4348_)
                                                         (let ((_K43234385_
                                                                (lambda (_rest-bindings4350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings4351_)
                          (let ((_K43244373_
                                 (lambda (_rest-closures4353_ _closure4354_)
                                   (if (let ((_$e4356_
                                              (_closure-reference?3672_
                                               _closure4354_
                                               _bindings4351_)))
                                         (if _$e4356_
                                             _$e4356_
                                             (let ((_$e4363_
                                                    (ormap (lambda (_g43584360_)
                                                             (_closure-reference?3672_
                                                              _closure4354_
                                                              _g43584360_))
                                                           _rest-bindings4350_)))
                                               (if _$e4363_
                                                   _$e4363_
                                                   (let ((_$e4370_
                                                          (ormap (lambda (_g43654367_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?3672_
                            _closure4354_
                            _g43654367_))
                         _post-bindings4312_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e4370_
                                                         _$e4370_
                                                         (if (_is-effect-bind?3673_
                                                              _form4348_)
                                                             (find _is-effect-bind?3673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms4311_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp4306_
                                        _rest-forms4347_
                                        _rest-bindings4350_
                                        _rest-closures4353_
                                        (cons _form4348_ _post-forms4311_)
                                        (cons _bindings4351_
                                              _post-bindings4312_)
                                        (cons _closure4354_
                                              _post-closures4313_)
                                        _pre-forms4314_
                                        _lifted?4315_)
                                       (_lp4306_
                                        _rest-forms4347_
                                        _rest-bindings4350_
                                        _rest-closures4353_
                                        _post-forms4311_
                                        _post-bindings4312_
                                        _post-closures4313_
                                        (cons _form4348_ _pre-forms4314_)
                                        '#t)))))
                            (if (##pair? _rest-closures43184336_)
                                (let ((_hd43254376_
                                       (##car _rest-closures43184336_))
                                      (_tl43264378_
                                       (##cdr _rest-closures43184336_)))
                                  (let ((_closure4381_ _hd43254376_))
                                    (let ((_rest-closures4383_ _tl43264378_))
                                      (_K43244373_
                                       _rest-closures4383_
                                       _closure4381_))))
                                (_else43204344_))))))
                   (if (##pair? _rest-bindings43174334_)
                       (let ((_hd43274388_ (##car _rest-bindings43174334_))
                             (_tl43284390_ (##cdr _rest-bindings43174334_)))
                         (let ((_bindings4393_ _hd43274388_))
                           (let ((_rest-bindings4395_ _tl43284390_))
                             (_K43234385_
                              _rest-bindings4395_
                              _bindings4393_))))
                       (_else43204344_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms43164332_)
                                                      (let ((_hd43294400_
                                                             (##car _rest-forms43164332_))
                                                            (_tl43304402_
                                                             (##cdr _rest-forms43164332_)))
                                                        (let ((_form4405_
                                                               _hd43294400_))
                                                          (let ((_rest-forms4407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl43304402_))
                    (_K43224397_ _rest-forms4407_ _form4405_))))
              (_else43204344_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp4306_)
                              _hd4302_
                              _bindings4303_
                              _closures4304_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post3670_
                             (lambda (_hd4195_ _bindings4196_ _closures4197_)
                               ((letrec ((_lp4199_
                                          (lambda (_rest-forms4201_
                                                   _rest-bindings4202_
                                                   _rest-closures4203_
                                                   _pre-forms4204_
                                                   _pre-bindings4205_
                                                   _pre-closures4206_
                                                   _post-forms4207_
                                                   _lifted?4208_)
                                            (let ((_rest-forms42094225_
                                                   _rest-forms4201_)
                                                  (_rest-bindings42104227_
                                                   _rest-bindings4202_)
                                                  (_rest-closures42114229_
                                                   _rest-closures4203_))
                                              (let ((_E42144233_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms42094225_
                                                              _rest-bindings42104227_
                                                              _rest-closures42114229_))))
                                                (let ((_else42134237_
                                                       (lambda ()
                                                         (if _lifted?4208_
                                                             (_lp4199_
                                                              (reverse _pre-forms4204_)
                                                              (reverse _pre-bindings4205_)
                                                              (reverse _pre-closures4206_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms4207_
                                                              '#f)
                                                             (values _post-forms4207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms4204_
                             _pre-bindings4205_
                             _pre-closures4206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K42154290_
                                                         (lambda (_rest-forms4240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form4241_)
                   (let ((_K42164278_
                          (lambda (_rest-bindings4243_ _bindings4244_)
                            (let ((_K42174266_
                                   (lambda (_rest-closures4246_ _closure4247_)
                                     (if (let ((_$e4249_
                                                (_closure-reference?3672_
                                                 _closure4247_
                                                 _bindings4244_)))
                                           (if _$e4249_
                                               _$e4249_
                                               (let ((_$e4256_
                                                      (ormap (lambda (_g42514253_)
                                                               (_closure-reference?3672_
                                                                _g42514253_
                                                                _bindings4244_))
                                                             _rest-closures4246_)))
                                                 (if _$e4256_
                                                     _$e4256_
                                                     (let ((_$e4263_
                                                            (ormap (lambda (_g42584260_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?3672_
                              _g42584260_
                              _bindings4244_))
                           _pre-closures4206_)))
               (if _$e4263_
                   _$e4263_
                   (if (_is-effect-bind?3673_ _form4241_)
                       (find _is-effect-bind?3673_ _pre-forms4204_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp4199_
                                          _rest-forms4240_
                                          _rest-bindings4243_
                                          _rest-closures4246_
                                          (cons _form4241_ _pre-forms4204_)
                                          (cons _bindings4244_
                                                _pre-bindings4205_)
                                          (cons _closure4247_
                                                _pre-closures4206_)
                                          _post-forms4207_
                                          _lifted?4208_)
                                         (_lp4199_
                                          _rest-forms4240_
                                          _rest-bindings4243_
                                          _rest-closures4246_
                                          _pre-forms4204_
                                          _pre-bindings4205_
                                          _pre-closures4206_
                                          (cons _form4241_ _post-forms4207_)
                                          '#t)))))
                              (if (##pair? _rest-closures42114229_)
                                  (let ((_hd42184269_
                                         (##car _rest-closures42114229_))
                                        (_tl42194271_
                                         (##cdr _rest-closures42114229_)))
                                    (let ((_closure4274_ _hd42184269_))
                                      (let ((_rest-closures4276_ _tl42194271_))
                                        (_K42174266_
                                         _rest-closures4276_
                                         _closure4274_))))
                                  (_else42134237_))))))
                     (if (##pair? _rest-bindings42104227_)
                         (let ((_hd42204281_ (##car _rest-bindings42104227_))
                               (_tl42214283_ (##cdr _rest-bindings42104227_)))
                           (let ((_bindings4286_ _hd42204281_))
                             (let ((_rest-bindings4288_ _tl42214283_))
                               (_K42164278_
                                _rest-bindings4288_
                                _bindings4286_))))
                         (_else42134237_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms42094225_)
                                                        (let ((_hd42224293_
                                                               (##car _rest-forms42094225_))
                                                              (_tl42234295_
                                                               (##cdr _rest-forms42094225_)))
                                                          (let ((_form4298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd42224293_))
                    (let ((_rest-forms4300_ _tl42234295_))
                      (_K42154290_ _rest-forms4300_ _form4298_))))
                (_else42134237_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp4199_)
                                (reverse _hd4195_)
                                (reverse _bindings4196_)
                                (reverse _closures4197_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize3666_
                               (lambda (_forms4523_)
                                 (let ((_closures4525_
                                        (_collect-closures3667_ _forms4523_)))
                                   (let ((_bindings4527_
                                          (_collect-bindings3668_
                                           _forms4523_)))
                                     (let ((_g6483_ (_lift-pre3669_
                                                     _forms4523_
                                                     _bindings4527_
                                                     _closures4525_)))
                                       (begin
                                         (let ((_g6484_ (values-count
                                                         _g6483_)))
                                           (if (not (fx= _g6484_ 4))
                                               (error "Context expects 4 values"
                                                      _g6484_)))
                                         (let ((_pre-bind4529_
                                                (values-ref _g6483_ 0))
                                               (_forms4530_
                                                (values-ref _g6483_ 1))
                                               (_bindings4531_
                                                (values-ref _g6483_ 2))
                                               (_closures4532_
                                                (values-ref _g6483_ 3)))
                                           (let ((_g6485_ (_lift-post3670_
                                                           _forms4530_
                                                           _bindings4531_
                                                           _closures4532_)))
                                             (begin
                                               (let ((_g6486_ (values-count
                                                               _g6485_)))
                                                 (if (not (fx= _g6486_ 4))
                                                     (error "Context expects 4 values"
                                                            _g6486_)))
                                               (let ((_post-bind4534_
                                                      (values-ref _g6485_ 0))
                                                     (_forms4535_
                                                      (values-ref _g6485_ 1))
                                                     (_bindings4536_
                                                      (values-ref _g6485_ 2))
                                                     (_closures4537_
                                                      (values-ref _g6485_ 3)))
                                                 (let ((_g6487_ (_lift-rec3671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms4535_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g6488_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g6487_)))
               (if (not (fx= _g6488_ 3))
                   (error "Context expects 3 values" _g6488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre4539_
                                                            (values-ref
                                                             _g6487_
                                                             0))
                                                           (_rec-bind4540_
                                                            (values-ref
                                                             _g6487_
                                                             1))
                                                           (_rec-init4541_
                                                            (values-ref
                                                             _g6487_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind4529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre4539_
                         _rec-bind4540_
                         _rec-init4541_
                         _post-bind4534_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*3676_
                                    (lambda (_hd3763_ _body3764_)
                                      (let ((_hd37653773_ _hd3763_))
                                        (let ((_E37683777_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd37653773_))))
                                          (let ((_else37673781_
                                                 (lambda () _body3764_)))
                                            (let ((_K37693822_
                                                   (lambda (_rest3784_
                                                            _bind3785_)
                                                     (let ((_bind37863795_
                                                            _bind3785_))
                                                       (let ((_E37883799_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind37863795_))))
                 (let ((_K37893805_
                        (lambda (_expr3802_ _hd3803_)
                          (if (gx#stx-ormap gx#identifier? _hd3803_)
                              (gxc#generate-runtime-let-values%
                               (cons '%#let-values
                                     (cons (cons _bind3785_ '())
                                           (cons (_generate-let*3676_
                                                  _rest3784_
                                                  _body3764_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr3802_)
                                          (cons (_generate-let*3676_
                                                 _rest3784_
                                                 _body3764_)
                                                '())))))))
                   (if (##pair? _bind37863795_)
                       (let ((_hd37903808_ (##car _bind37863795_))
                             (_tl37913810_ (##cdr _bind37863795_)))
                         (let ((_hd3813_ _hd37903808_))
                           (if (##pair? _tl37913810_)
                               (let ((_hd37923815_ (##car _tl37913810_))
                                     (_tl37933817_ (##cdr _tl37913810_)))
                                 (let ((_expr3820_ _hd37923815_))
                                   (if (##null? _tl37933817_)
                                       (_K37893805_ _expr3820_ _hd3813_)
                                       (_E37883799_))))
                               (_E37883799_))))
                       (_E37883799_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd37653773_)
                                                  (let ((_hd37703825_
                                                         (##car _hd37653773_))
                                                        (_tl37713827_
                                                         (##cdr _hd37653773_)))
                                                    (let ((_bind3830_
                                                           _hd37703825_))
                                                      (let ((_rest3832_
                                                             _tl37713827_))
                                                        (_K37693822_
                                                         _rest3832_
                                                         _bind3830_))))
                                                  (_else37673781_)))))))))
                            (let ((_g36783695_
                                   (lambda (_g36793692_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g36793692_))))
                              (let ((_g36773760_
                                     (lambda (_g36793698_)
                                       (if (gx#stx-pair? _g36793698_)
                                           (let ((_e36823700_
                                                  (gx#stx-e _g36793698_)))
                                             (let ((_hd36833703_
                                                    (##car _e36823700_))
                                                   (_tl36843705_
                                                    (##cdr _e36823700_)))
                                               (if (gx#stx-pair? _tl36843705_)
                                                   (let ((_e36853708_
                                                          (gx#stx-e
                                                           _tl36843705_)))
                                                     (let ((_hd36863711_
                                                            (##car _e36853708_))
                                                           (_tl36873713_
                                                            (##cdr _e36853708_)))
                                                       (if (gx#stx-pair?
                                                            _tl36873713_)
                                                           (let ((_e36883716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl36873713_)))
                     (let ((_hd36893719_ (##car _e36883716_))
                           (_tl36903721_ (##cdr _e36883716_)))
                       (if (gx#stx-null? _tl36903721_)
                           ((lambda (_L3724_ _L3725_)
                              (let ((_g6481_ (_linearize3666_ _L3725_)))
                                (begin
                                  (let ((_g6482_ (values-count _g6481_)))
                                    (if (not (fx= _g6482_ 5))
                                        (error "Context expects 5 values"
                                               _g6482_)))
                                  (let ((_pre3741_ (values-ref _g6481_ 0))
                                        (_rec-pre3742_ (values-ref _g6481_ 1))
                                        (_rec-bind3743_ (values-ref _g6481_ 2))
                                        (_rec-init3744_ (values-ref _g6481_ 3))
                                        (_post3745_ (values-ref _g6481_ 4)))
                                    (let ((_body3747_ (gxc#compile-e _L3724_)))
                                      (let ((_body3749_
                                             (if (null? _post3745_)
                                                 _body3747_
                                                 (_generate-let*3676_
                                                  _post3745_
                                                  _body3747_))))
                                        (let ((_body3751_
                                               (if (null? _rec-init3744_)
                                                   _body3749_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body3749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init3744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body3753_
                                                 (if (null? _rec-bind3743_)
                                                     _body3751_
                                                     (cons 'letrec
                                                           (cons _rec-bind3743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body3751_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body3755_
                                                   (if (null? _rec-pre3742_)
                                                       _body3753_
                                                       (cons 'let
                                                             (cons _rec-pre3742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body3753_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body3757_
                                                     (if (null? _pre3741_)
                                                         _body3755_
                                                         (_generate-let*3676_
                                                          _pre3741_
                                                          _body3755_))))
                                                (let () _body3757_)))))))))))
                            _hd36893719_
                            _hd36863711_)
                           (_g36783695_ _g36793698_))))
                   (_g36783695_ _g36793698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g36783695_ _g36793698_))))
                                           (_g36783695_ _g36793698_)))))
                                (_g36773760_ _stx3664_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd3557_)
      ((letrec ((_lp3559_
                 (lambda (_rest3561_)
                   (let ((_g35653586_
                          (lambda (_g35663583_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g35663583_))))
                     (let ((_g35643593_
                            (lambda (_g35663589_) ((lambda () '#f)))))
                       (let ((_g35633600_
                              (lambda (_g35663596_)
                                (if (gx#stx-null? _g35663596_)
                                    ((lambda () '#t))
                                    (_g35643593_ _g35663596_)))))
                         (let ((_g35623661_
                                (lambda (_g35663603_)
                                  (if (gx#stx-pair? _g35663603_)
                                      (let ((_e35703605_
                                             (gx#stx-e _g35663603_)))
                                        (let ((_hd35713608_
                                               (##car _e35703605_))
                                              (_tl35723610_
                                               (##cdr _e35703605_)))
                                          (if (gx#stx-pair? _hd35713608_)
                                              (let ((_e35733613_
                                                     (gx#stx-e _hd35713608_)))
                                                (let ((_hd35743616_
                                                       (##car _e35733613_))
                                                      (_tl35753618_
                                                       (##cdr _e35733613_)))
                                                  (if (gx#stx-pair?
                                                       _hd35743616_)
                                                      (let ((_e35763621_
                                                             (gx#stx-e
                                                              _hd35743616_)))
                                                        (let ((_hd35773624_
                                                               (##car _e35763621_))
                                                              (_tl35783626_
                                                               (##cdr _e35763621_)))
                                                          (if (gx#stx-null?
                                                               _tl35783626_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl35753618_)
                          (let ((_e35793629_ (gx#stx-e _tl35753618_)))
                            (let ((_hd35803632_ (##car _e35793629_))
                                  (_tl35813634_ (##cdr _e35793629_)))
                              (if (gx#stx-null? _tl35813634_)
                                  ((lambda (_L3637_ _L3638_ _L3639_)
                                     (_lp3559_ _L3637_))
                                   _tl35723610_
                                   _hd35803632_
                                   _hd35773624_)
                                  (_g35633600_ _g35663603_))))
                          (_g35633600_ _g35663603_))
                      (_g35633600_ _g35663603_))))
              (_g35633600_ _g35663603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g35633600_ _g35663603_))))
                                      (_g35633600_ _g35663603_)))))
                           (_g35623661_ _rest3561_))))))))
         _lp3559_)
       _hd3557_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form3481_ _hd3482_ _body3483_ _compiled-body?3484_)
      (let ((_generate13486_
             (lambda (_bind3488_)
               (let ((_g34903507_
                      (lambda (_g34913504_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g34913504_))))
                 (let ((_g34893554_
                        (lambda (_g34913510_)
                          (if (gx#stx-pair? _g34913510_)
                              (let ((_e34943512_ (gx#stx-e _g34913510_)))
                                (let ((_hd34953515_ (##car _e34943512_))
                                      (_tl34963517_ (##cdr _e34943512_)))
                                  (if (gx#stx-pair? _hd34953515_)
                                      (let ((_e34973520_
                                             (gx#stx-e _hd34953515_)))
                                        (let ((_hd34983523_
                                               (##car _e34973520_))
                                              (_tl34993525_
                                               (##cdr _e34973520_)))
                                          (if (gx#stx-null? _tl34993525_)
                                              (if (gx#stx-pair? _tl34963517_)
                                                  (let ((_e35003528_
                                                         (gx#stx-e
                                                          _tl34963517_)))
                                                    (let ((_hd35013531_
                                                           (##car _e35003528_))
                                                          (_tl35023533_
                                                           (##cdr _e35003528_)))
                                                      (if (gx#stx-null?
                                                           _tl35023533_)
                                                          ((lambda (_L3536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L3537_)
                     (cons (gxc#generate-runtime-binding-id* _L3537_)
                           (cons (gxc#compile-e _L3536_) '())))
                   _hd35013531_
                   _hd34983523_)
                  (_g34903507_ _g34913510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g34903507_ _g34913510_))
                                              (_g34903507_ _g34913510_))))
                                      (_g34903507_ _g34913510_))))
                              (_g34903507_ _g34913510_)))))
                   (_g34893554_ _bind3488_))))))
        (cons _form3481_
              (cons (map _generate13486_ _hd3482_)
                    (cons (if _compiled-body?3484_
                              _body3483_
                              (gxc#compile-e _body3483_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx3392_)
      (letrec ((_generate13394_
                (lambda (_datum3446_)
                  (if (let ((_$e3448_ (null? _datum3446_)))
                        (if _$e3448_
                            _$e3448_
                            (let ((_$e3451_ (symbol? _datum3446_)))
                              (if _$e3451_
                                  _$e3451_
                                  (gx#self-quoting? _datum3446_)))))
                      _datum3446_
                      (if (uninterned-symbol? _datum3446_)
                          (gxc#generate-runtime-gensym-reference _datum3446_)
                          (if (pair? _datum3446_)
                              (cons (_generate13394_ (car _datum3446_))
                                    (_generate13394_ (cdr _datum3446_)))
                              (if (box? _datum3446_)
                                  (box (_generate13394_ (unbox _datum3446_)))
                                  (if (vector? _datum3446_)
                                      (vector-map _generate13394_ _datum3446_)
                                      (if (let ((_$e3454_
                                                 (s8vector? _datum3446_)))
                                            (if _$e3454_
                                                _$e3454_
                                                (let ((_$e3457_
                                                       (u8vector?
                                                        _datum3446_)))
                                                  (if _$e3457_
                                                      _$e3457_
                                                      (let ((_$e3460_
                                                             (s16vector?
                                                              _datum3446_)))
                                                        (if _$e3460_
                                                            _$e3460_
                                                            (let ((_$e3463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum3446_)))
                      (if _$e3463_
                          _$e3463_
                          (let ((_$e3466_ (s32vector? _datum3446_)))
                            (if _$e3466_
                                _$e3466_
                                (let ((_$e3469_ (u32vector? _datum3446_)))
                                  (if _$e3469_
                                      _$e3469_
                                      (let ((_$e3472_
                                             (s64vector? _datum3446_)))
                                        (if _$e3472_
                                            _$e3472_
                                            (let ((_$e3475_
                                                   (u64vector? _datum3446_)))
                                              (if _$e3475_
                                                  _$e3475_
                                                  (let ((_$e3478_
                                                         (f32vector?
                                                          _datum3446_)))
                                                    (if _$e3478_
                                                        _$e3478_
                                                        (f64vector?
                                                         _datum3446_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum3446_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx3392_))))))))))
        (let ((_g33963409_
               (lambda (_g33973406_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g33973406_))))
          (let ((_g33953443_
                 (lambda (_g33973412_)
                   (if (gx#stx-pair? _g33973412_)
                       (let ((_e33993414_ (gx#stx-e _g33973412_)))
                         (let ((_hd34003417_ (##car _e33993414_))
                               (_tl34013419_ (##cdr _e33993414_)))
                           (if (gx#stx-pair? _tl34013419_)
                               (let ((_e34023422_ (gx#stx-e _tl34013419_)))
                                 (let ((_hd34033425_ (##car _e34023422_))
                                       (_tl34043427_ (##cdr _e34023422_)))
                                   (if (gx#stx-null? _tl34043427_)
                                       ((lambda (_L3430_)
                                          (cons 'quote
                                                (cons (_generate13394_
                                                       (gx#stx-e _L3430_))
                                                      '())))
                                        _hd34033425_)
                                       (_g33963409_ _g33973412_))))
                               (_g33963409_ _g33973412_))))
                       (_g33963409_ _g33973412_)))))
            (_g33953443_ _stx3392_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx3354_)
      (let ((_g33563366_
             (lambda (_g33573363_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33573363_))))
        (let ((_g33553389_
               (lambda (_g33573369_)
                 (if (gx#stx-pair? _g33573369_)
                     (let ((_e33593371_ (gx#stx-e _g33573369_)))
                       (let ((_hd33603374_ (##car _e33593371_))
                             (_tl33613376_ (##cdr _e33593371_)))
                         ((lambda (_L3379_) (map gxc#compile-e _L3379_))
                          _tl33613376_)))
                     (_g33563366_ _g33573369_)))))
          (_g33553389_ _stx3354_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx3316_)
      (let ((_g33183328_
             (lambda (_g33193325_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33193325_))))
        (let ((_g33173351_
               (lambda (_g33193331_)
                 (if (gx#stx-pair? _g33193331_)
                     (let ((_e33213333_ (gx#stx-e _g33193331_)))
                       (let ((_hd33223336_ (##car _e33213333_))
                             (_tl33233338_ (##cdr _e33213333_)))
                         ((lambda (_L3341_)
                            (cons 'if (map gxc#compile-e _L3341_)))
                          _tl33233338_)))
                     (_g33183328_ _g33193331_)))))
          (_g33173351_ _stx3316_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx3265_)
      (let ((_g32673280_
             (lambda (_g32683277_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32683277_))))
        (let ((_g32663313_
               (lambda (_g32683283_)
                 (if (gx#stx-pair? _g32683283_)
                     (let ((_e32703285_ (gx#stx-e _g32683283_)))
                       (let ((_hd32713288_ (##car _e32703285_))
                             (_tl32723290_ (##cdr _e32703285_)))
                         (if (gx#stx-pair? _tl32723290_)
                             (let ((_e32733293_ (gx#stx-e _tl32723290_)))
                               (let ((_hd32743296_ (##car _e32733293_))
                                     (_tl32753298_ (##cdr _e32733293_)))
                                 (if (gx#stx-null? _tl32753298_)
                                     ((lambda (_L3301_)
                                        (gxc#generate-runtime-binding-id
                                         _L3301_))
                                      _hd32743296_)
                                     (_g32673280_ _g32683283_))))
                             (_g32673280_ _g32683283_))))
                     (_g32673280_ _g32683283_)))))
          (_g32663313_ _stx3265_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx3198_)
      (let ((_g32003217_
             (lambda (_g32013214_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32013214_))))
        (let ((_g31993262_
               (lambda (_g32013220_)
                 (if (gx#stx-pair? _g32013220_)
                     (let ((_e32043222_ (gx#stx-e _g32013220_)))
                       (let ((_hd32053225_ (##car _e32043222_))
                             (_tl32063227_ (##cdr _e32043222_)))
                         (if (gx#stx-pair? _tl32063227_)
                             (let ((_e32073230_ (gx#stx-e _tl32063227_)))
                               (let ((_hd32083233_ (##car _e32073230_))
                                     (_tl32093235_ (##cdr _e32073230_)))
                                 (if (gx#stx-pair? _tl32093235_)
                                     (let ((_e32103238_
                                            (gx#stx-e _tl32093235_)))
                                       (let ((_hd32113241_ (##car _e32103238_))
                                             (_tl32123243_
                                              (##cdr _e32103238_)))
                                         (if (gx#stx-null? _tl32123243_)
                                             ((lambda (_L3246_ _L3247_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L3247_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3246_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd32113241_
                                              _hd32083233_)
                                             (_g32003217_ _g32013220_))))
                                     (_g32003217_ _g32013220_))))
                             (_g32003217_ _g32013220_))))
                     (_g32003217_ _g32013220_)))))
          (_g31993262_ _stx3198_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx3131_)
      (let ((_g31333150_
             (lambda (_g31343147_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31343147_))))
        (let ((_g31323195_
               (lambda (_g31343153_)
                 (if (gx#stx-pair? _g31343153_)
                     (let ((_e31373155_ (gx#stx-e _g31343153_)))
                       (let ((_hd31383158_ (##car _e31373155_))
                             (_tl31393160_ (##cdr _e31373155_)))
                         (if (gx#stx-pair? _tl31393160_)
                             (let ((_e31403163_ (gx#stx-e _tl31393160_)))
                               (let ((_hd31413166_ (##car _e31403163_))
                                     (_tl31423168_ (##cdr _e31403163_)))
                                 (if (gx#stx-pair? _tl31423168_)
                                     (let ((_e31433171_
                                            (gx#stx-e _tl31423168_)))
                                       (let ((_hd31443174_ (##car _e31433171_))
                                             (_tl31453176_
                                              (##cdr _e31433171_)))
                                         (if (gx#stx-null? _tl31453176_)
                                             ((lambda (_L3179_ _L3180_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L3179_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3180_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd31443174_
                                              _hd31413166_)
                                             (_g31333150_ _g31343153_))))
                                     (_g31333150_ _g31343153_))))
                             (_g31333150_ _g31343153_))))
                     (_g31333150_ _g31343153_)))))
          (_g31323195_ _stx3131_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx3064_)
      (let ((_g30663083_
             (lambda (_g30673080_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30673080_))))
        (let ((_g30653128_
               (lambda (_g30673086_)
                 (if (gx#stx-pair? _g30673086_)
                     (let ((_e30703088_ (gx#stx-e _g30673086_)))
                       (let ((_hd30713091_ (##car _e30703088_))
                             (_tl30723093_ (##cdr _e30703088_)))
                         (if (gx#stx-pair? _tl30723093_)
                             (let ((_e30733096_ (gx#stx-e _tl30723093_)))
                               (let ((_hd30743099_ (##car _e30733096_))
                                     (_tl30753101_ (##cdr _e30733096_)))
                                 (if (gx#stx-pair? _tl30753101_)
                                     (let ((_e30763104_
                                            (gx#stx-e _tl30753101_)))
                                       (let ((_hd30773107_ (##car _e30763104_))
                                             (_tl30783109_
                                              (##cdr _e30763104_)))
                                         (if (gx#stx-null? _tl30783109_)
                                             ((lambda (_L3112_ _L3113_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L3112_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3113_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd30773107_
                                              _hd30743099_)
                                             (_g30663083_ _g30673086_))))
                                     (_g30663083_ _g30673086_))))
                             (_g30663083_ _g30673086_))))
                     (_g30663083_ _g30673086_)))))
          (_g30653128_ _stx3064_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx2981_)
      (let ((_g29833004_
             (lambda (_g29843001_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g29843001_))))
        (let ((_g29823061_
               (lambda (_g29843007_)
                 (if (gx#stx-pair? _g29843007_)
                     (let ((_e29883009_ (gx#stx-e _g29843007_)))
                       (let ((_hd29893012_ (##car _e29883009_))
                             (_tl29903014_ (##cdr _e29883009_)))
                         (if (gx#stx-pair? _tl29903014_)
                             (let ((_e29913017_ (gx#stx-e _tl29903014_)))
                               (let ((_hd29923020_ (##car _e29913017_))
                                     (_tl29933022_ (##cdr _e29913017_)))
                                 (if (gx#stx-pair? _tl29933022_)
                                     (let ((_e29943025_
                                            (gx#stx-e _tl29933022_)))
                                       (let ((_hd29953028_ (##car _e29943025_))
                                             (_tl29963030_
                                              (##cdr _e29943025_)))
                                         (if (gx#stx-pair? _tl29963030_)
                                             (let ((_e29973033_
                                                    (gx#stx-e _tl29963030_)))
                                               (let ((_hd29983036_
                                                      (##car _e29973033_))
                                                     (_tl29993038_
                                                      (##cdr _e29973033_)))
                                                 (if (gx#stx-null?
                                                      _tl29993038_)
                                                     ((lambda (_L3041_
                                                               _L3042_
                                                               _L3043_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L3041_)
                            (cons (gxc#compile-e _L3042_)
                                  (cons (gxc#compile-e _L3043_)
                                        (cons ''#f '()))))))
              _hd29983036_
              _hd29953028_
              _hd29923020_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29833004_
                                                      _g29843007_))))
                                             (_g29833004_ _g29843007_))))
                                     (_g29833004_ _g29843007_))))
                             (_g29833004_ _g29843007_))))
                     (_g29833004_ _g29843007_)))))
          (_g29823061_ _stx2981_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx2882_)
      (let ((_g28842909_
             (lambda (_g28852906_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g28852906_))))
        (let ((_g28832978_
               (lambda (_g28852912_)
                 (if (gx#stx-pair? _g28852912_)
                     (let ((_e28902914_ (gx#stx-e _g28852912_)))
                       (let ((_hd28912917_ (##car _e28902914_))
                             (_tl28922919_ (##cdr _e28902914_)))
                         (if (gx#stx-pair? _tl28922919_)
                             (let ((_e28932922_ (gx#stx-e _tl28922919_)))
                               (let ((_hd28942925_ (##car _e28932922_))
                                     (_tl28952927_ (##cdr _e28932922_)))
                                 (if (gx#stx-pair? _tl28952927_)
                                     (let ((_e28962930_
                                            (gx#stx-e _tl28952927_)))
                                       (let ((_hd28972933_ (##car _e28962930_))
                                             (_tl28982935_
                                              (##cdr _e28962930_)))
                                         (if (gx#stx-pair? _tl28982935_)
                                             (let ((_e28992938_
                                                    (gx#stx-e _tl28982935_)))
                                               (let ((_hd29002941_
                                                      (##car _e28992938_))
                                                     (_tl29012943_
                                                      (##cdr _e28992938_)))
                                                 (if (gx#stx-pair?
                                                      _tl29012943_)
                                                     (let ((_e29022946_
                                                            (gx#stx-e
                                                             _tl29012943_)))
                                                       (let ((_hd29032949_
                                                              (##car _e29022946_))
                                                             (_tl29042951_
                                                              (##cdr _e29022946_)))
                                                         (if (gx#stx-null?
                                                              _tl29042951_)
                                                             ((lambda (_L2954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L2955_
                               _L2956_
                               _L2957_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L2955_)
                                    (cons (gxc#compile-e _L2954_)
                                          (cons (gxc#compile-e _L2956_)
                                                (cons (gxc#compile-e _L2957_)
                                                      (cons ''#f '())))))))
                      _hd29032949_
                      _hd29002941_
                      _hd28972933_
                      _hd28942925_)
                     (_g28842909_ _g28852912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g28842909_
                                                      _g28852912_))))
                                             (_g28842909_ _g28852912_))))
                                     (_g28842909_ _g28852912_))))
                             (_g28842909_ _g28852912_))))
                     (_g28842909_ _g28852912_)))))
          (_g28832978_ _stx2882_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx2791_)
      (let ((_g27932803_
             (lambda (_g27942800_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27942800_))))
        (let ((_g27922879_
               (lambda (_g27942806_)
                 (if (gx#stx-pair? _g27942806_)
                     (let ((_e27962808_ (gx#stx-e _g27942806_)))
                       (let ((_hd27972811_ (##car _e27962808_))
                             (_tl27982813_ (##cdr _e27962808_)))
                         ((lambda (_L2816_)
                            (let ((_ht2826_ (make-hash-table-eq)))
                              ((letrec ((_lp2828_
                                         (lambda (_rest2830_ _loads2831_)
                                           (let ((_K2833_ (lambda (_ctx2872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest2873_)
                    (let ((_id2875_ (gx#expander-context-id _ctx2872_)))
                      (if (hash-get _ht2826_ _id2875_)
                          (_lp2828_ _rest2873_ _loads2831_)
                          (let ((_rt2877_
                                 (string-append
                                  (symbol->string _id2875_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht2826_ _id2875_ _rt2877_)
                              (_lp2828_
                               _rest2873_
                               (cons _rt2877_ _loads2831_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest28342842_ _rest2830_))
                                               (let ((_E28372846_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest28342842_))))
                                                 (let ((_else28362854_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g28492851_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g28492851_))
                             (reverse _loads2831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K28382860_
                                                          (lambda (_rest2857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in2858_)
                    (if (gx#module-context? _in2858_)
                        (_K2833_ _in2858_ _rest2857_)
                        (if (gx#module-import? _in2858_)
                            (if (fxpositive? (gx#module-import-phi _in2858_))
                                (_lp2828_ _rest2857_ _loads2831_)
                                (_K2833_ (gx#module-export-context
                                          (gx#module-import-source _in2858_))
                                         _rest2857_))
                            (if (gx#import-set? _in2858_)
                                (if (fxpositive? (gx#import-set-phi _in2858_))
                                    (_lp2828_ _rest2857_ _loads2831_)
                                    (_K2833_ (gx#import-set-source _in2858_)
                                             _rest2857_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx2791_
                                 _in2858_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest28342842_)
                                                         (let ((_hd28392863_
                                                                (##car _rest28342842_))
                                                               (_tl28402865_
                                                                (##cdr _rest28342842_)))
                                                           (let ((_in2868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd28392863_))
                     (let ((_rest2870_ _tl28402865_))
                       (_K28382860_ _rest2870_ _in2868_))))
                 (_else28362854_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp2828_)
                               _L2816_
                               '())))
                          _tl27982813_)))
                     (_g27932803_ _g27942806_)))))
          (_g27922879_ _stx2791_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx2732_)
      (let ((_generate-quote2734_
             (lambda (_q2789_)
               (if (gx#identifier? _q2789_)
                   (gxc#generate-runtime-identifier _q2789_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx2732_
                    _q2789_)))))
        (let ((_g27362749_
               (lambda (_g27372746_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g27372746_))))
          (let ((_g27352786_
                 (lambda (_g27372752_)
                   (if (gx#stx-pair? _g27372752_)
                       (let ((_e27392754_ (gx#stx-e _g27372752_)))
                         (let ((_hd27402757_ (##car _e27392754_))
                               (_tl27412759_ (##cdr _e27392754_)))
                           (if (gx#stx-pair? _tl27412759_)
                               (let ((_e27422762_ (gx#stx-e _tl27412759_)))
                                 (let ((_hd27432765_ (##car _e27422762_))
                                       (_tl27442767_ (##cdr _e27422762_)))
                                   (if (gx#stx-null? _tl27442767_)
                                       ((lambda (_L2770_)
                                          (let ((_gid2783_
                                                 (gxc#generate-runtime-temporary
                                                  '#t))
                                                (_quote-e2784_
                                                 (_generate-quote2734_
                                                  _L2770_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid2783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e2784_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid2783_)))
                                        _hd27432765_)
                                       (_g27362749_ _g27372752_))))
                               (_g27362749_ _g27372752_))))
                       (_g27362749_ _g27372752_)))))
            (_g27352786_ _stx2732_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx2665_)
      (let ((_g26672684_
             (lambda (_g26682681_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g26682681_))))
        (let ((_g26662729_
               (lambda (_g26682687_)
                 (if (gx#stx-pair? _g26682687_)
                     (let ((_e26712689_ (gx#stx-e _g26682687_)))
                       (let ((_hd26722692_ (##car _e26712689_))
                             (_tl26732694_ (##cdr _e26712689_)))
                         (if (gx#stx-pair? _tl26732694_)
                             (let ((_e26742697_ (gx#stx-e _tl26732694_)))
                               (let ((_hd26752700_ (##car _e26742697_))
                                     (_tl26762702_ (##cdr _e26742697_)))
                                 (if (gx#stx-pair? _tl26762702_)
                                     (let ((_e26772705_
                                            (gx#stx-e _tl26762702_)))
                                       (let ((_hd26782708_ (##car _e26772705_))
                                             (_tl26792710_
                                              (##cdr _e26772705_)))
                                         (if (gx#stx-null? _tl26792710_)
                                             ((lambda (_L2713_ _L2714_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L2714_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2713_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd26782708_
                                              _hd26752700_)
                                             (_g26672684_ _g26682687_))))
                                     (_g26672684_ _g26682687_))))
                             (_g26672684_ _g26682687_))))
                     (_g26672684_ _g26682687_)))))
          (_g26662729_ _stx2665_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx2614_ _state2615_)
      (let ((_g26172627_
             (lambda (_g26182624_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g26182624_))))
        (let ((_g26162662_
               (lambda (_g26182630_)
                 (if (gx#stx-pair? _g26182630_)
                     (let ((_e26202632_ (gx#stx-e _g26182630_)))
                       (let ((_hd26212635_ (##car _e26202632_))
                             (_tl26222637_ (##cdr _e26202632_)))
                         ((lambda (_L2640_)
                            (let ((_c-body2654_
                                   (map (lambda (_g26492651_)
                                          (gxc#compile-e
                                           _g26492651_
                                           _state2615_))
                                        _L2640_)))
                              (let ((_c-body2659_
                                     (filter (lambda (_$obj2656_)
                                               (not (void? _$obj2656_)))
                                             _c-body2654_)))
                                (let () (cons '%#begin _c-body2659_)))))
                          _tl26222637_)))
                     (_g26172627_ _g26182630_)))))
          (_g26162662_ _stx2614_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx2522_ _state2523_)
      (let ((_g25252535_
             (lambda (_g25262532_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g25262532_))))
        (let ((_g25242611_
               (lambda (_g25262538_)
                 (if (gx#stx-pair? _g25262538_)
                     (let ((_e25282540_ (gx#stx-e _g25262538_)))
                       (let ((_hd25292543_ (##car _e25282540_))
                             (_tl25302545_ (##cdr _e25282540_)))
                         ((lambda (_L2548_)
                            (let ((_phi2558_ (fx1+ (gx#current-expander-phi))))
                              (let ((_block2560_
                                     (gxc#meta-state-begin-phi!
                                      _state2523_
                                      _phi2558_)))
                                (let ((_compiled2563_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '%#begin)
                                                 _L2548_)
                                           _state2523_))
                                        gx#current-expander-phi
                                        _phi2558_)))
                                  (let ()
                                    (let ((_g25662576_
                                           (lambda (_g25672573_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g25672573_))))
                                      (let ((_g25652608_
                                             (lambda (_g25672579_)
                                               (if (gx#stx-pair? _g25672579_)
                                                   (let ((_e25692581_
                                                          (gx#stx-e
                                                           _g25672579_)))
                                                     (let ((_hd25702584_
                                                            (##car _e25692581_))
                                                           (_tl25712586_
                                                            (##cdr _e25692581_)))
                                                       (if (gx#identifier?
                                                            _hd25702584_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd25702584_)
                                                               ((lambda (_L2589_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body2606_
                                 (filter (lambda (_$obj2603_)
                                           (not (void? _$obj2603_)))
                                         _L2589_)))
                            (if _block2560_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block2560_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body2606_))
                                (if (null? _c-body2606_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body2606_)))))
                        _tl25712586_)
                       (_g25662576_ _g25672579_))
                   (_g25662576_ _g25672579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g25662576_
                                                    _g25672579_)))))
                                        (_g25652608_ _compiled2563_))))))))
                          _tl25302545_)))
                     (_g25252535_ _g25262538_)))))
          (_g25242611_ _stx2522_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx2453_ _state2454_)
      (begin
        (gxc#meta-state-end-phi! _state2454_)
        (let ((_g24562470_
               (lambda (_g24572467_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24572467_))))
          (let ((_g24552519_
                 (lambda (_g24572473_)
                   (if (gx#stx-pair? _g24572473_)
                       (let ((_e24602475_ (gx#stx-e _g24572473_)))
                         (let ((_hd24612478_ (##car _e24602475_))
                               (_tl24622480_ (##cdr _e24602475_)))
                           (if (gx#stx-pair? _tl24622480_)
                               (let ((_e24632483_ (gx#stx-e _tl24622480_)))
                                 (let ((_hd24642486_ (##car _e24632483_))
                                       (_tl24652488_ (##cdr _e24632483_)))
                                   ((lambda (_L2491_ _L2492_)
                                      (let ((_key2505_
                                             (gx#core-identifier-key _L2492_)))
                                        (begin
                                          (if (interned-symbol? _key2505_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx2453_
                                               _L2492_
                                               _key2505_))
                                          (let ((_ctx2507_
                                                 (gx#syntax-local-e _L2492_)))
                                            (let ((_code2510_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (gx#module-context-code
                                                        _ctx2507_)
                                                       _state2454_))
                                                    gx#current-expander-context
                                                    _ctx2507_)))
                                              (let ((_rt2512_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx2507_)))
                                                (let ((_loader2514_
                                                       (if _rt2512_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt2512_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid2516_
                                                         (gx#stx-e _L2492_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state2454_)
                                                        (cons '%#module
                                                              (cons _modid2516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code2510_ _loader2514_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl24652488_
                                    _hd24642486_)))
                               (_g24562470_ _g24572473_))))
                       (_g24562470_ _g24572473_)))))
            (_g24552519_ _stx2453_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx2443_ _context-chain2444_)
      ((letrec ((_lp2446_
                 (lambda (_ctx2448_ _path2449_)
                   (let ((_super2451_ (gx#phi-context-super _ctx2448_)))
                     (if (memq _super2451_ _context-chain2444_)
                         (cons* '#f
                                (car (gx#module-context-path _ctx2448_))
                                _path2449_)
                         (if (gx#module-context? _super2451_)
                             (_lp2446_
                              _super2451_
                              (cons (car (gx#module-context-path _ctx2448_))
                                    _path2449_))
                             (cons (make-symbol
                                    '":"
                                    (gx#expander-context-id _ctx2448_))
                                   _path2449_)))))))
         _lp2446_)
       _ctx2443_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp2438_
                 (lambda (_ctx2440_ _r2441_)
                   (if (gx#module-context? _ctx2440_)
                       (_lp2438_
                        (gx#phi-context-super _ctx2440_)
                        (cons _ctx2440_ _r2441_))
                       _r2441_))))
         _lp2438_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx2207_ _state2208_)
      (let ((_context-chain2210_ (gxc#current-context-chain)))
        (let ((_make-import-spec2211_
               (lambda (_in2374_)
                 (let ((_in23752387_ _in2374_))
                   (let ((_E23772391_
                          (lambda ()
                            (error '"No clause matching" _in23752387_))))
                     (let ((_K23782401_
                            (lambda (_phi2394_
                                     _name2395_
                                     _src-name2396_
                                     _src-phi2397_
                                     _src-key2398_
                                     _src-ctx2399_)
                              (cons _phi2394_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name2395_)
                                          (cons _src-phi2397_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name2396_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in23752387_)
                           (let ((_e23792404_ (##vector-ref _in23752387_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e23792404_)
                                 (let ((_e23822407_
                                        (##vector-ref _e23792404_ '1)))
                                   (let ((_src-ctx2410_ _e23822407_))
                                     (let ((_e23832412_
                                            (##vector-ref _e23792404_ '2)))
                                       (let ((_src-key2415_ _e23832412_))
                                         (let ((_e23842417_
                                                (##vector-ref _e23792404_ '3)))
                                           (let ((_src-phi2420_ _e23842417_))
                                             (let ((_e23852422_
                                                    (##vector-ref
                                                     _e23792404_
                                                     '4)))
                                               (let ((_src-name2425_
                                                      _e23852422_))
                                                 (let ((_e23802427_
                                                        (##vector-ref
                                                         _in23752387_
                                                         '2)))
                                                   (let ((_name2430_
                                                          _e23802427_))
                                                     (let ((_e23812432_
                                                            (##vector-ref
                                                             _in23752387_
                                                             '3)))
                                                       (let ((_phi2435_
                                                              _e23812432_))
                                                         (_K23782401_
                                                          _phi2435_
                                                          _name2430_
                                                          _src-name2425_
                                                          _src-phi2420_
                                                          _src-key2415_
                                                          _src-ctx2410_)))))))))))))
                                 (_E23772391_)))
                           (_E23772391_))))))))
          (let ((_make-import-path2212_
                 (lambda (_ctx2372_)
                   (gxc#generate-meta-import-path
                    _ctx2372_
                    _context-chain2210_))))
            (let ((_make-import-spec-in2213_
                   (lambda (_ctx2369_ _in2370_)
                     (cons 'spec:
                           (cons (_make-import-path2212_ _ctx2369_)
                                 (reverse _in2370_))))))
              (begin
                (gxc#meta-state-end-phi! _state2208_)
                (let ((_g22152225_
                       (lambda (_g22162222_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g22162222_))))
                  (let ((_g22142366_
                         (lambda (_g22162228_)
                           (if (gx#stx-pair? _g22162228_)
                               (let ((_e22182230_ (gx#stx-e _g22162228_)))
                                 (let ((_hd22192233_ (##car _e22182230_))
                                       (_tl22202235_ (##cdr _e22182230_)))
                                   ((lambda (_L2238_)
                                      ((letrec ((_lp2249_
                                                 (lambda (_rest2251_
                                                          _current-src2252_
                                                          _current-in2253_
                                                          _r2254_)
                                                   (let ((_rest22552263_
                                                          _rest2251_))
                                                     (let ((_E22582267_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest22552263_))))
               (let ((_else22572273_
                      (lambda ()
                        (let ((_r2271_ (if _current-src2252_
                                           (cons (_make-import-spec-in2213_
                                                  _current-src2252_
                                                  _current-in2253_)
                                                 _r2254_)
                                           _r2254_)))
                          (cons '%#import (reverse _r2271_))))))
                 (let ((_K22592354_
                        (lambda (_rest2276_ _in2277_)
                          (if (gx#module-import? _in2277_)
                              (let ((_in22782285_ _in2277_))
                                (let ((_E22802289_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in22782285_))))
                                  (let ((_K22812294_
                                         (lambda (_src-ctx2292_)
                                           (if (eq? _current-src2252_
                                                    _src-ctx2292_)
                                               (_lp2249_
                                                _rest2276_
                                                _current-src2252_
                                                (cons (_make-import-spec2211_
                                                       _in2277_)
                                                      _current-in2253_)
                                                _r2254_)
                                               (if _current-src2252_
                                                   (_lp2249_
                                                    _rest2276_
                                                    _src-ctx2292_
                                                    (cons (_make-import-spec2211_
                                                           _in2277_)
                                                          '())
                                                    (cons (_make-import-spec-in2213_
                                                           _current-src2252_
                                                           _current-in2253_)
                                                          _r2254_))
                                                   (_lp2249_
                                                    _rest2276_
                                                    _src-ctx2292_
                                                    (cons (_make-import-spec2211_
                                                           _in2277_)
                                                          '())
                                                    _r2254_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in22782285_)
                                        (let ((_e22822297_
                                               (##vector-ref _in22782285_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e22822297_)
                                              (let ((_e22832300_
                                                     (##vector-ref
                                                      _e22822297_
                                                      '1)))
                                                (let ((_src-ctx2303_
                                                       _e22832300_))
                                                  (_K22812294_ _src-ctx2303_)))
                                              (_E22802289_)))
                                        (_E22802289_)))))
                              (if (gx#import-set? _in2277_)
                                  (let ((_phi2305_
                                         (gx#import-set-phi _in2277_)))
                                    (let ((_src2307_
                                           (gx#import-set-source _in2277_)))
                                      (let ((_src-in2347_
                                             (let ((_g23082317_
                                                    (_make-import-path2212_
                                                     _src2307_)))
                                               (let ((_E23112321_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g23082317_))))
                                                 (let ((_try-match23102332_
                                                        (lambda ()
                                                          (let ((_K23122327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path2325_) (cons 'in: _path2325_))))
                    (let ((_path2330_ _g23082317_))
                      (_K23122327_ _path2330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K23132337_
                                                          (lambda (_path2335_)
                                                            _path2335_)))
                                                     (if (##pair? _g23082317_)
                                                         (let ((_hd23142340_
                                                                (##car _g23082317_))
                                                               (_tl23152342_
                                                                (##cdr _g23082317_)))
                                                           (let ((_path2345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd23142340_))
                     (if (##null? _tl23152342_)
                         (_K23132337_ _path2345_)
                         (_try-match23102332_))))
                 (_try-match23102332_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r2349_ (if _current-src2252_
                                                           (cons (_make-import-spec-in2213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src2252_
                          _current-in2253_)
                         _r2254_)
                   _r2254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp2249_
                                             _rest2276_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi2305_)
                                                       _src-in2347_
                                                       (cons 'phi:
                                                             (cons _phi2305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in2347_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r2349_)))))))
                                  (if (gx#module-context? _in2277_)
                                      (let ((_r2352_ (if _current-src2252_
                                                         (cons (_make-import-spec-in2213_
                                                                _current-src2252_
                                                                _current-in2253_)
                                                               _r2254_)
                                                         _r2254_)))
                                        (_lp2249_
                                         _rest2276_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path2212_
                                                      _in2277_))
                                               _r2352_)))
                                      '#!void))))))
                   (if (##pair? _rest22552263_)
                       (let ((_hd22602357_ (##car _rest22552263_))
                             (_tl22612359_ (##cdr _rest22552263_)))
                         (let ((_in2362_ _hd22602357_))
                           (let ((_rest2364_ _tl22612359_))
                             (_K22592354_ _rest2364_ _in2362_))))
                       (_else22572273_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp2249_)
                                       _L2238_
                                       '#f
                                       '()
                                       '()))
                                    _tl22202235_)))
                               (_g22152225_ _g22162228_)))))
                    (_g22142366_ _stx2207_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx2017_ _state2018_)
      (let ((_context-chain2020_ (gxc#current-context-chain)))
        (let ((_make-import-path2021_
               (lambda (_ctx2205_)
                 (gxc#generate-meta-import-path
                  _ctx2205_
                  _context-chain2020_))))
          (let ((_g20232033_
                 (lambda (_g20242030_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g20242030_))))
            (let ((_g20222202_
                   (lambda (_g20242036_)
                     (if (gx#stx-pair? _g20242036_)
                         (let ((_e20262038_ (gx#stx-e _g20242036_)))
                           (let ((_hd20272041_ (##car _e20262038_))
                                 (_tl20282043_ (##cdr _e20262038_)))
                             ((lambda (_L2046_)
                                ((letrec ((_lp2057_
                                           (lambda (_rest2059_ _r2060_)
                                             (let ((_rest20612069_ _rest2059_))
                                               (let ((_E20642073_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest20612069_))))
                                                 (let ((_else20632077_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r2060_)))))
                                                   (let ((_K20652190_
                                                          (lambda (_rest2080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out2081_)
                    (let ((_out20822095_ _out2081_))
                      (let ((_E20852099_
                             (lambda ()
                               (error '"No clause matching" _out20822095_))))
                        (let ((_try-match20842162_
                               (lambda ()
                                 (let ((_K20862149_
                                        (lambda (_phi2103_ _src2104_)
                                          (let ((_out2144_
                                                 (if _src2104_
                                                     (cons 'import:
                                                           (cons (let ((_g21052114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path2021_ _src2104_)))
                           (let ((_E21082118_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g21052114_))))
                             (let ((_try-match21072129_
                                    (lambda ()
                                      (let ((_K21092124_
                                             (lambda (_path2122_)
                                               (cons 'in: _path2122_))))
                                        (let ((_path2127_ _g21052114_))
                                          (_K21092124_ _path2127_))))))
                               (let ((_K21102134_
                                      (lambda (_path2132_) _path2132_)))
                                 (if (##pair? _g21052114_)
                                     (let ((_hd21112137_ (##car _g21052114_))
                                           (_tl21122139_ (##cdr _g21052114_)))
                                       (let ((_path2142_ _hd21112137_))
                                         (if (##null? _tl21122139_)
                                             (_K21102134_ _path2142_)
                                             (_try-match21072129_))))
                                     (_try-match21072129_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out2146_
                                                   (if (fxzero? _phi2103_)
                                                       _out2144_
                                                       (cons 'phi:
                                                             (cons _phi2103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out2144_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp2057_
                                                 _rest2080_
                                                 (cons _out2146_
                                                       _r2060_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out20822095_)
                                       (let ((_e20872152_
                                              (##vector-ref _out20822095_ '1)))
                                         (let ((_src2155_ _e20872152_))
                                           (let ((_e20882157_
                                                  (##vector-ref
                                                   _out20822095_
                                                   '2)))
                                             (let ((_phi2160_ _e20882157_))
                                               (_K20862149_
                                                _phi2160_
                                                _src2155_)))))
                                       (_E20852099_))))))
                          (let ((_K20892169_
                                 (lambda (_name2165_ _phi2166_ _key2167_)
                                   (_lp2057_
                                    _rest2080_
                                    (cons (cons 'spec:
                                                (cons _phi2166_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key2167_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name2165_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r2060_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out20822095_)
                                (let ((_e20902172_
                                       (##vector-ref _out20822095_ '1)))
                                  (let ((_e20912175_
                                         (##vector-ref _out20822095_ '2)))
                                    (let ((_key2178_ _e20912175_))
                                      (let ((_e20922180_
                                             (##vector-ref _out20822095_ '3)))
                                        (let ((_phi2183_ _e20922180_))
                                          (let ((_e20932185_
                                                 (##vector-ref
                                                  _out20822095_
                                                  '4)))
                                            (let ((_name2188_ _e20932185_))
                                              (_K20892169_
                                               _name2188_
                                               _phi2183_
                                               _key2178_))))))))
                                (_try-match20842162_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest20612069_)
                                                         (let ((_hd20662193_
                                                                (##car _rest20612069_))
                                                               (_tl20672195_
                                                                (##cdr _rest20612069_)))
                                                           (let ((_out2198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd20662193_))
                     (let ((_rest2200_ _tl20672195_))
                       (_K20652190_ _rest2200_ _out2198_))))
                 (_else20632077_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp2057_)
                                 _L2046_
                                 '()))
                              _tl20282043_)))
                         (_g20232033_ _g20242036_)))))
              (_g20222202_ _stx2017_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx1978_ _state1979_)
      (begin
        (gxc#meta-state-end-phi! _state1979_)
        (let ((_g19811991_
               (lambda (_g19821988_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g19821988_))))
          (let ((_g19802014_
                 (lambda (_g19821994_)
                   (if (gx#stx-pair? _g19821994_)
                       (let ((_e19841996_ (gx#stx-e _g19821994_)))
                         (let ((_hd19851999_ (##car _e19841996_))
                               (_tl19862001_ (##cdr _e19841996_)))
                           ((lambda (_L2004_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L2004_)))
                            _tl19862001_)))
                       (_g19811991_ _g19821994_)))))
            (_g19802014_ _stx1978_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx1849_ _state1850_)
      (let ((_generate11852_
             (lambda (_id1973_ _eid1974_)
               (let ((_eid1976_ (gx#stx-e _eid1974_)))
                 (begin
                   (if (interned-symbol? _eid1976_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx1849_
                        _eid1976_))
                   (cons (gxc#generate-runtime-identifier _id1973_)
                         (cons _eid1976_ '())))))))
        (let ((_g18541882_
               (lambda (_g18551879_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g18551879_))))
          (let ((_g18531970_
                 (lambda (_g18551885_)
                   (if (gx#stx-pair? _g18551885_)
                       (let ((_e18581887_ (gx#stx-e _g18551885_)))
                         (let ((_hd18591890_ (##car _e18581887_))
                               (_tl18601892_ (##cdr _e18581887_)))
                           (if (gx#stx-pair/null? _tl18601892_)
                               (if (fx>= (gx#stx-length _tl18601892_) '0)
                                   (let ((_g6489_ (gx#syntax-split-splice
                                                   _tl18601892_
                                                   '0)))
                                     (begin
                                       (let ((_g6490_ (values-count _g6489_)))
                                         (if (not (fx= _g6490_ 2))
                                             (error "Context expects 2 values"
                                                    _g6490_)))
                                       (let ((_target18611895_
                                              (values-ref _g6489_ 0))
                                             (_tl18631897_
                                              (values-ref _g6489_ 1)))
                                         (if (gx#stx-null? _tl18631897_)
                                             (letrec ((_loop18641900_
                                                       (lambda (_hd18621903_
                                                                _eid18681905_
                                                                _id18691907_)
                                                         (if (gx#stx-pair?
                                                              _hd18621903_)
                                                             (let ((_e18651910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd18621903_)))
                       (let ((_lp-hd18661913_ (##car _e18651910_))
                             (_lp-tl18671915_ (##cdr _e18651910_)))
                         (if (gx#stx-pair? _lp-hd18661913_)
                             (let ((_e18721918_ (gx#stx-e _lp-hd18661913_)))
                               (let ((_hd18731921_ (##car _e18721918_))
                                     (_tl18741923_ (##cdr _e18721918_)))
                                 (if (gx#stx-pair? _tl18741923_)
                                     (let ((_e18751926_
                                            (gx#stx-e _tl18741923_)))
                                       (let ((_hd18761929_ (##car _e18751926_))
                                             (_tl18771931_
                                              (##cdr _e18751926_)))
                                         (if (gx#stx-null? _tl18771931_)
                                             (_loop18641900_
                                              _lp-tl18671915_
                                              (cons _hd18761929_ _eid18681905_)
                                              (cons _hd18731921_ _id18691907_))
                                             (_g18541882_ _g18551885_))))
                                     (_g18541882_ _g18551885_))))
                             (_g18541882_ _g18551885_))))
                     (let ((_eid18701934_ (reverse _eid18681905_))
                           (_id18711936_ (reverse _id18691907_)))
                       ((lambda (_L1939_ _L1940_)
                          (cons '%#extern
                                (map _generate11852_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g19551958_ _g19561960_)
                                                (cons _g19551958_ _g19561960_))
                                              '()
                                              _L1940_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g19621965_ _g19631967_)
                                                (cons _g19621965_ _g19631967_))
                                              '()
                                              _L1939_)))))
                        _eid18701934_
                        _id18711936_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop18641900_
                                                _target18611895_
                                                '()
                                                '()))
                                             (_g18541882_ _g18551885_)))))
                                   (_g18541882_ _g18551885_))
                               (_g18541882_ _g18551885_))))
                       (_g18541882_ _g18551885_)))))
            (_g18531970_ _stx1849_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx1644_ _state1645_)
      (let ((_generate11647_
             (lambda (_id1844_)
               (let ((_eid1846_ (gxc#generate-runtime-binding-id _id1844_))
                     (_ident1847_ (gxc#generate-runtime-identifier _id1844_)))
                 (cons '%#define-runtime
                       (cons _ident1847_ (cons _eid1846_ '())))))))
        (let ((_generate*1648_
               (lambda (_all1812_)
                 (let ((_all18131821_ _all1812_))
                   (let ((_E18161825_
                          (lambda ()
                            (error '"No clause matching" _all18131821_))))
                     (let ((_else18151829_
                            (lambda () (cons '%#begin _all1812_))))
                       (let ((_K18171834_ (lambda (_one1832_) _one1832_)))
                         (if (##pair? _all18131821_)
                             (let ((_hd18181837_ (##car _all18131821_))
                                   (_tl18191839_ (##cdr _all18131821_)))
                               (let ((_one1842_ _hd18181837_))
                                 (if (##null? _tl18191839_)
                                     (_K18171834_ _one1842_)
                                     (_else18151829_))))
                             (_else18151829_)))))))))
          (let ((_g16501667_
                 (lambda (_g16511664_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g16511664_))))
            (let ((_g16491809_
                   (lambda (_g16511670_)
                     (if (gx#stx-pair? _g16511670_)
                         (let ((_e16541672_ (gx#stx-e _g16511670_)))
                           (let ((_hd16551675_ (##car _e16541672_))
                                 (_tl16561677_ (##cdr _e16541672_)))
                             (if (gx#stx-pair? _tl16561677_)
                                 (let ((_e16571680_ (gx#stx-e _tl16561677_)))
                                   (let ((_hd16581683_ (##car _e16571680_))
                                         (_tl16591685_ (##cdr _e16571680_)))
                                     (if (gx#stx-pair? _tl16591685_)
                                         (let ((_e16601688_
                                                (gx#stx-e _tl16591685_)))
                                           (let ((_hd16611691_
                                                  (##car _e16601688_))
                                                 (_tl16621693_
                                                  (##cdr _e16601688_)))
                                             (if (gx#stx-null? _tl16621693_)
                                                 ((lambda (_L1696_ _L1697_)
                                                    ((letrec ((_lp1713_
                                                               (lambda (_rest1715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r1716_)
                         (let ((_g17211737_
                                (lambda (_g17221734_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g17221734_))))
                           (let ((_g17201744_
                                  (lambda (_g17221740_)
                                    ((lambda ()
                                       (_generate*1648_ (reverse _r1716_)))))))
                             (let ((_g17191760_
                                    (lambda (_g17221747_)
                                      ((lambda (_L1749_)
                                         (if (gx#identifier? _L1749_)
                                             (_generate*1648_
                                              (foldl cons
                                                     (cons (_generate11647_
                                                            _L1749_)
                                                           '())
                                                     _r1716_))
                                             (_g17201744_ _g17221747_)))
                                       _g17221747_))))
                               (let ((_g17181784_
                                      (lambda (_g17221763_)
                                        (if (gx#stx-pair? _g17221763_)
                                            (let ((_e17291765_
                                                   (gx#stx-e _g17221763_)))
                                              (let ((_hd17301768_
                                                     (##car _e17291765_))
                                                    (_tl17311770_
                                                     (##cdr _e17291765_)))
                                                ((lambda (_L1773_ _L1774_)
                                                   (_lp1713_
                                                    _L1773_
                                                    (cons (_generate11647_
                                                           _L1774_)
                                                          _r1716_)))
                                                 _tl17311770_
                                                 _hd17301768_)))
                                            (_g17191760_ _g17221763_)))))
                                 (let ((_g17171806_
                                        (lambda (_g17221787_)
                                          (if (gx#stx-pair? _g17221787_)
                                              (let ((_e17241789_
                                                     (gx#stx-e _g17221787_)))
                                                (let ((_hd17251792_
                                                       (##car _e17241789_))
                                                      (_tl17261794_
                                                       (##cdr _e17241789_)))
                                                  (if (gx#stx-datum?
                                                       _hd17251792_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd17251792_)
                          '#f)
                  ((lambda (_L1797_) (_lp1713_ _L1797_ _r1716_)) _tl17261794_)
                  (_g17181784_ _g17221787_))
              (_g17181784_ _g17221787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g17181784_ _g17221787_)))))
                                   (_g17171806_ _rest1715_)))))))))
               _lp1713_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L1697_
                                                     '()))
                                                  _hd16611691_
                                                  _hd16581683_)
                                                 (_g16501667_ _g16511670_))))
                                         (_g16501667_ _g16511670_))))
                                 (_g16501667_ _g16511670_))))
                         (_g16501667_ _g16511670_)))))
              (_g16491809_ _stx1644_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx1541_ _state1542_)
      (let ((_g15441561_
             (lambda (_g15451558_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g15451558_))))
        (let ((_g15431641_
               (lambda (_g15451564_)
                 (if (gx#stx-pair? _g15451564_)
                     (let ((_e15481566_ (gx#stx-e _g15451564_)))
                       (let ((_hd15491569_ (##car _e15481566_))
                             (_tl15501571_ (##cdr _e15481566_)))
                         (if (gx#stx-pair? _tl15501571_)
                             (let ((_e15511574_ (gx#stx-e _tl15501571_)))
                               (let ((_hd15521577_ (##car _e15511574_))
                                     (_tl15531579_ (##cdr _e15511574_)))
                                 (if (gx#stx-pair? _tl15531579_)
                                     (let ((_e15541582_
                                            (gx#stx-e _tl15531579_)))
                                       (let ((_hd15551585_ (##car _e15541582_))
                                             (_tl15561587_
                                              (##cdr _e15541582_)))
                                         (if (gx#stx-null? _tl15561587_)
                                             ((lambda (_L1590_ _L1591_)
                                                (let ((_eid1606_
                                                       (gxc#generate-runtime-binding-id
                                                        _L1591_)))
                                                  (let ((_phi1608_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block1610_
                                                           (gxc#meta-state-begin-phi!
                                                            _state1542_
                                                            _phi1608_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g16131620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g16141617_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g16141617_))))
                    (let ((_g16121638_
                           (lambda (_g16141623_)
                             ((lambda (_L1625_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state1542_
                                   _phi1608_
                                   (cons (gx#datum->syntax
                                          '#f
                                          '%#define-runtime)
                                         (cons _L1625_ (cons _L1590_ '()))))))
                              _g16141623_))))
                      (_g16121638_ _eid1606_)))
                  (if _block1610_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block1610_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L1591_)
                                                    (cons _eid1606_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L1591_)
                                  (cons _eid1606_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd15551585_
                                              _hd15521577_)
                                             (_g15441561_ _g15451564_))))
                                     (_g15441561_ _g15451564_))))
                             (_g15441561_ _g15451564_))))
                     (_g15441561_ _g15451564_)))))
          (_g15431641_ _stx1541_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx1473_ _state1474_)
      (let ((_g14761493_
             (lambda (_g14771490_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g14771490_))))
        (let ((_g14751538_
               (lambda (_g14771496_)
                 (if (gx#stx-pair? _g14771496_)
                     (let ((_e14801498_ (gx#stx-e _g14771496_)))
                       (let ((_hd14811501_ (##car _e14801498_))
                             (_tl14821503_ (##cdr _e14801498_)))
                         (if (gx#stx-pair? _tl14821503_)
                             (let ((_e14831506_ (gx#stx-e _tl14821503_)))
                               (let ((_hd14841509_ (##car _e14831506_))
                                     (_tl14851511_ (##cdr _e14831506_)))
                                 (if (gx#stx-pair? _tl14851511_)
                                     (let ((_e14861514_
                                            (gx#stx-e _tl14851511_)))
                                       (let ((_hd14871517_ (##car _e14861514_))
                                             (_tl14881519_
                                              (##cdr _e14861514_)))
                                         (if (gx#stx-null? _tl14881519_)
                                             ((lambda (_L1522_ _L1523_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L1523_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L1522_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd14871517_
                                              _hd14841509_)
                                             (_g14761493_ _g14771496_))))
                                     (_g14761493_ _g14771496_))))
                             (_g14761493_ _g14771496_))))
                     (_g14761493_ _g14771496_)))))
          (_g14751538_ _stx1473_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx1470_ _state1471_)
      (begin
        (gxc#meta-state-add-phi!
         _state1471_
         (gx#current-expander-phi)
         _stx1470_)
        (gxc#generate-meta-define-values% _stx1470_ _state1471_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx1467_ _state1468_)
      (begin
        (gxc#meta-state-add-phi!
         _state1468_
         (gx#current-expander-phi)
         _stx1467_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args1464_
      (apply make-struct-instance gxc#meta-state::t _$args1464_)))
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
    (lambda (_self1461_ _ctx1462_)
      (direct-struct-instance-init!
       _self1461_
       (symbol->string (gx#expander-context-id _ctx1462_))
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
    (lambda _$args1458_
      (apply make-struct-instance gxc#meta-state-block::t _$args1458_)))
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
    (lambda (_state1417_ _phi1418_)
      (let ((_state14191427_ _state1417_))
        (let ((_E14211431_
               (lambda () (error '"No clause matching" _state14191427_))))
          (let ((_K14221440_
                 (lambda (_open1434_ _n1435_ _src1436_)
                   (if (hash-get _open1434_ _phi1418_)
                       '#f
                       (let ((_block-ref1438_
                              (string-append
                               _src1436_
                               '"__"
                               (number->string _n1435_))))
                         (begin
                           (gxc#meta-state-n-set! _state1417_ (fx1+ _n1435_))
                           (hash-put!
                            _open1434_
                            _phi1418_
                            (gxc#make-meta-state-block
                             (gx#current-expander-context)
                             _phi1418_
                             _n1435_
                             '()))
                           _block-ref1438_))))))
            (if (struct-instance? gxc#meta-state::t _state14191427_)
                (let ((_e14231443_ (##vector-ref _state14191427_ '1)))
                  (let ((_src1446_ _e14231443_))
                    (let ((_e14241448_ (##vector-ref _state14191427_ '2)))
                      (let ((_n1451_ _e14241448_))
                        (let ((_e14251453_ (##vector-ref _state14191427_ '3)))
                          (let ((_open1456_ _e14251453_))
                            (_K14221440_ _open1456_ _n1451_ _src1446_)))))))
                (_E14211431_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state1411_ _phi1412_ _stx1413_)
      (let ((_block1415_
             (hash-get (gxc#meta-state-open _state1411_) _phi1412_)))
        (gxc#meta-state-block-code-set!
         _block1415_
         (cons _stx1413_ (gxc#meta-state-block-code _block1415_))))))
  (define gxc#meta-state-end-phi!
    (lambda (_state1406_)
      (begin
        (gxc#meta-state-blocks-set!
         _state1406_
         (hash-fold
          (lambda (_g6491_ _block1408_ _r1409_) (cons _block1408_ _r1409_))
          (gxc#meta-state-blocks _state1406_)
          (gxc#meta-state-open _state1406_)))
        (gxc#meta-state-open-set! _state1406_ (make-hash-table-eq)))))
  (define gxc#meta-state-end!
    (lambda (_state1358_)
      (begin
        (gxc#meta-state-end-phi! _state1358_)
        (foldl (lambda (_block1360_ _r1361_)
                 (let ((_block13621371_ _block1360_))
                   (let ((_E13641375_
                          (lambda ()
                            (error '"No clause matching" _block13621371_))))
                     (let ((_K13651383_
                            (lambda (_code1378_ _n1379_ _phi1380_ _ctx1381_)
                              (if (null? _code1378_)
                                  _r1361_
                                  (cons (cons _ctx1381_
                                              (cons _phi1380_
                                                    (cons _n1379_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code1378_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r1361_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block13621371_)
                           (let ((_e13661386_
                                  (##vector-ref _block13621371_ '1)))
                             (let ((_ctx1389_ _e13661386_))
                               (let ((_e13671391_
                                      (##vector-ref _block13621371_ '2)))
                                 (let ((_phi1394_ _e13671391_))
                                   (let ((_e13681396_
                                          (##vector-ref _block13621371_ '3)))
                                     (let ((_n1399_ _e13681396_))
                                       (let ((_e13691401_
                                              (##vector-ref
                                               _block13621371_
                                               '4)))
                                         (let ((_code1404_ _e13691401_))
                                           (_K13651383_
                                            _code1404_
                                            _n1399_
                                            _phi1394_
                                            _ctx1389_)))))))))
                           (_E13641375_))))))
               '()
               (gxc#meta-state-blocks _state1358_)))))
  (define gxc#collect-expression-refs
    (lambda (_stx1354_)
      (let ((_ht1356_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx1354_ _ht1356_)
          _ht1356_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx1286_ _ht1287_)
      (let ((_g12891306_
             (lambda (_g12901303_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12901303_))))
        (let ((_g12881351_
               (lambda (_g12901309_)
                 (if (gx#stx-pair? _g12901309_)
                     (let ((_e12931311_ (gx#stx-e _g12901309_)))
                       (let ((_hd12941314_ (##car _e12931311_))
                             (_tl12951316_ (##cdr _e12931311_)))
                         (if (gx#stx-pair? _tl12951316_)
                             (let ((_e12961319_ (gx#stx-e _tl12951316_)))
                               (let ((_hd12971322_ (##car _e12961319_))
                                     (_tl12981324_ (##cdr _e12961319_)))
                                 (if (gx#stx-pair? _tl12981324_)
                                     (let ((_e12991327_
                                            (gx#stx-e _tl12981324_)))
                                       (let ((_hd13001330_ (##car _e12991327_))
                                             (_tl13011332_
                                              (##cdr _e12991327_)))
                                         (if (gx#stx-null? _tl13011332_)
                                             ((lambda (_L1335_ _L1336_)
                                                (gxc#compile-e
                                                 _L1335_
                                                 _ht1287_))
                                              _hd13001330_
                                              _hd12971322_)
                                             (_g12891306_ _g12901309_))))
                                     (_g12891306_ _g12901309_))))
                             (_g12891306_ _g12901309_))))
                     (_g12891306_ _g12901309_)))))
          (_g12881351_ _stx1286_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx1168_ _ht1169_)
      (let ((_g11711199_
             (lambda (_g11721196_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g11721196_))))
        (let ((_g11701283_
               (lambda (_g11721202_)
                 (if (gx#stx-pair? _g11721202_)
                     (let ((_e11751204_ (gx#stx-e _g11721202_)))
                       (let ((_hd11761207_ (##car _e11751204_))
                             (_tl11771209_ (##cdr _e11751204_)))
                         (if (gx#stx-pair/null? _tl11771209_)
                             (if (fx>= (gx#stx-length _tl11771209_) '0)
                                 (let ((_g6492_ (gx#syntax-split-splice
                                                 _tl11771209_
                                                 '0)))
                                   (begin
                                     (let ((_g6493_ (values-count _g6492_)))
                                       (if (not (fx= _g6493_ 2))
                                           (error "Context expects 2 values"
                                                  _g6493_)))
                                     (let ((_target11781212_
                                            (values-ref _g6492_ 0))
                                           (_tl11801214_
                                            (values-ref _g6492_ 1)))
                                       (if (gx#stx-null? _tl11801214_)
                                           (letrec ((_loop11811217_
                                                     (lambda (_hd11791220_
                                                              _body11851222_
                                                              _hd11861224_)
                                                       (if (gx#stx-pair?
                                                            _hd11791220_)
                                                           (let ((_e11821227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd11791220_)))
                     (let ((_lp-hd11831230_ (##car _e11821227_))
                           (_lp-tl11841232_ (##cdr _e11821227_)))
                       (if (gx#stx-pair? _lp-hd11831230_)
                           (let ((_e11891235_ (gx#stx-e _lp-hd11831230_)))
                             (let ((_hd11901238_ (##car _e11891235_))
                                   (_tl11911240_ (##cdr _e11891235_)))
                               (if (gx#stx-pair? _tl11911240_)
                                   (let ((_e11921243_ (gx#stx-e _tl11911240_)))
                                     (let ((_hd11931246_ (##car _e11921243_))
                                           (_tl11941248_ (##cdr _e11921243_)))
                                       (if (gx#stx-null? _tl11941248_)
                                           (_loop11811217_
                                            _lp-tl11841232_
                                            (cons _hd11931246_ _body11851222_)
                                            (cons _hd11901238_ _hd11861224_))
                                           (_g11711199_ _g11721202_))))
                                   (_g11711199_ _g11721202_))))
                           (_g11711199_ _g11721202_))))
                   (let ((_body11871251_ (reverse _body11851222_))
                         (_hd11881253_ (reverse _hd11861224_)))
                     ((lambda (_L1256_ _L1257_)
                        (for-each
                         (lambda (_g12711273_)
                           (gxc#compile-e _g12711273_ _ht1169_))
                         (begin
                           '#!void
                           (foldr (lambda (_g12751278_ _g12761280_)
                                    (cons _g12751278_ _g12761280_))
                                  '()
                                  _L1256_))))
                      _body11871251_
                      _hd11881253_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop11811217_
                                              _target11781212_
                                              '()
                                              '()))
                                           (_g11711199_ _g11721202_)))))
                                 (_g11711199_ _g11721202_))
                             (_g11711199_ _g11721202_))))
                     (_g11711199_ _g11721202_)))))
          (_g11701283_ _stx1168_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx1021_ _ht1022_)
      (let ((_g10241059_
             (lambda (_g10251056_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g10251056_))))
        (let ((_g10231165_
               (lambda (_g10251062_)
                 (if (gx#stx-pair? _g10251062_)
                     (let ((_e10291064_ (gx#stx-e _g10251062_)))
                       (let ((_hd10301067_ (##car _e10291064_))
                             (_tl10311069_ (##cdr _e10291064_)))
                         (if (gx#stx-pair? _tl10311069_)
                             (let ((_e10321072_ (gx#stx-e _tl10311069_)))
                               (let ((_hd10331075_ (##car _e10321072_))
                                     (_tl10341077_ (##cdr _e10321072_)))
                                 (if (gx#stx-pair/null? _hd10331075_)
                                     (if (fx>= (gx#stx-length _hd10331075_) '0)
                                         (let ((_g6494_ (gx#syntax-split-splice
                                                         _hd10331075_
                                                         '0)))
                                           (begin
                                             (let ((_g6495_ (values-count
                                                             _g6494_)))
                                               (if (not (fx= _g6495_ 2))
                                                   (error "Context expects 2 values"
                                                          _g6495_)))
                                             (let ((_target10351080_
                                                    (values-ref _g6494_ 0))
                                                   (_tl10371082_
                                                    (values-ref _g6494_ 1)))
                                               (if (gx#stx-null? _tl10371082_)
                                                   (letrec ((_loop10381085_
                                                             (lambda (_hd10361088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr10421090_
                              _hd10431092_)
                       (if (gx#stx-pair? _hd10361088_)
                           (let ((_e10391095_ (gx#stx-e _hd10361088_)))
                             (let ((_lp-hd10401098_ (##car _e10391095_))
                                   (_lp-tl10411100_ (##cdr _e10391095_)))
                               (if (gx#stx-pair? _lp-hd10401098_)
                                   (let ((_e10461103_
                                          (gx#stx-e _lp-hd10401098_)))
                                     (let ((_hd10471106_ (##car _e10461103_))
                                           (_tl10481108_ (##cdr _e10461103_)))
                                       (if (gx#stx-pair? _tl10481108_)
                                           (let ((_e10491111_
                                                  (gx#stx-e _tl10481108_)))
                                             (let ((_hd10501114_
                                                    (##car _e10491111_))
                                                   (_tl10511116_
                                                    (##cdr _e10491111_)))
                                               (if (gx#stx-null? _tl10511116_)
                                                   (_loop10381085_
                                                    _lp-tl10411100_
                                                    (cons _hd10501114_
                                                          _expr10421090_)
                                                    (cons _hd10471106_
                                                          _hd10431092_))
                                                   (_g10241059_ _g10251062_))))
                                           (_g10241059_ _g10251062_))))
                                   (_g10241059_ _g10251062_))))
                           (let ((_expr10441119_ (reverse _expr10421090_))
                                 (_hd10451121_ (reverse _hd10431092_)))
                             (if (gx#stx-pair? _tl10341077_)
                                 (let ((_e10521124_ (gx#stx-e _tl10341077_)))
                                   (let ((_hd10531127_ (##car _e10521124_))
                                         (_tl10541129_ (##cdr _e10521124_)))
                                     (if (gx#stx-null? _tl10541129_)
                                         ((lambda (_L1132_ _L1133_ _L1134_)
                                            (if (for-each
                                                 (lambda (_g11531155_)
                                                   (gxc#compile-e
                                                    _g11531155_
                                                    _ht1022_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g11571160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g11581162_)
                    (cons _g11571160_ _g11581162_))
                  '()
                  _L1133_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e
                                                 _L1132_
                                                 _ht1022_)
                                                (_g10241059_ _g10251062_)))
                                          _hd10531127_
                                          _expr10441119_
                                          _hd10451121_)
                                         (_g10241059_ _g10251062_))))
                                 (_g10241059_ _g10251062_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop10381085_
                                                      _target10351080_
                                                      '()
                                                      '()))
                                                   (_g10241059_
                                                    _g10251062_)))))
                                         (_g10241059_ _g10251062_))
                                     (_g10241059_ _g10251062_))))
                             (_g10241059_ _g10251062_))))
                     (_g10241059_ _g10251062_)))))
          (_g10231165_ _stx1021_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx964_ _ht965_)
      (let ((_g967980_
             (lambda (_g968977_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g968977_))))
        (let ((_g9661018_
               (lambda (_g968983_)
                 (if (gx#stx-pair? _g968983_)
                     (let ((_e970985_ (gx#stx-e _g968983_)))
                       (let ((_hd971988_ (##car _e970985_))
                             (_tl972990_ (##cdr _e970985_)))
                         (if (gx#stx-pair? _tl972990_)
                             (let ((_e973993_ (gx#stx-e _tl972990_)))
                               (let ((_hd974996_ (##car _e973993_))
                                     (_tl975998_ (##cdr _e973993_)))
                                 (if (gx#stx-null? _tl975998_)
                                     ((lambda (_L1001_)
                                        (let ((_bind1013_
                                               (gx#resolve-identifier
                                                _L1001_)))
                                          (let ((_eid1015_
                                                 (if _bind1013_
                                                     (gx#binding-id _bind1013_)
                                                     (gx#stx-e _L1001_))))
                                            (let ()
                                              (hash-put!
                                               _ht965_
                                               _eid1015_
                                               _eid1015_)))))
                                      _hd974996_)
                                     (_g967980_ _g968983_))))
                             (_g967980_ _g968983_))))
                     (_g967980_ _g968983_)))))
          (_g9661018_ _stx964_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx891_ _ht892_)
      (let ((_g894911_
             (lambda (_g895908_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g895908_))))
        (let ((_g893961_
               (lambda (_g895914_)
                 (if (gx#stx-pair? _g895914_)
                     (let ((_e898916_ (gx#stx-e _g895914_)))
                       (let ((_hd899919_ (##car _e898916_))
                             (_tl900921_ (##cdr _e898916_)))
                         (if (gx#stx-pair? _tl900921_)
                             (let ((_e901924_ (gx#stx-e _tl900921_)))
                               (let ((_hd902927_ (##car _e901924_))
                                     (_tl903929_ (##cdr _e901924_)))
                                 (if (gx#stx-pair? _tl903929_)
                                     (let ((_e904932_ (gx#stx-e _tl903929_)))
                                       (let ((_hd905935_ (##car _e904932_))
                                             (_tl906937_ (##cdr _e904932_)))
                                         (if (gx#stx-null? _tl906937_)
                                             ((lambda (_L940_ _L941_)
                                                (let ((_bind956_
                                                       (gx#resolve-identifier
                                                        _L941_)))
                                                  (let ((_eid958_
                                                         (if _bind956_
                                                             (gx#binding-id
                                                              _bind956_)
                                                             (gx#stx-e
                                                              _L941_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht892_
                                                         _eid958_
                                                         _eid958_)
                                                        (gxc#compile-e
                                                         _L940_
                                                         _ht892_))))))
                                              _hd905935_
                                              _hd902927_)
                                             (_g894911_ _g895914_))))
                                     (_g894911_ _g895914_))))
                             (_g894911_ _g895914_))))
                     (_g894911_ _g895914_)))))
          (_g893961_ _stx891_)))))
  (define gxc#collect-refs-struct-instancep%
    (lambda (_stx823_ _ht824_)
      (let ((_g826843_
             (lambda (_g827840_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g827840_))))
        (let ((_g825888_
               (lambda (_g827846_)
                 (if (gx#stx-pair? _g827846_)
                     (let ((_e830848_ (gx#stx-e _g827846_)))
                       (let ((_hd831851_ (##car _e830848_))
                             (_tl832853_ (##cdr _e830848_)))
                         (if (gx#stx-pair? _tl832853_)
                             (let ((_e833856_ (gx#stx-e _tl832853_)))
                               (let ((_hd834859_ (##car _e833856_))
                                     (_tl835861_ (##cdr _e833856_)))
                                 (if (gx#stx-pair? _tl835861_)
                                     (let ((_e836864_ (gx#stx-e _tl835861_)))
                                       (let ((_hd837867_ (##car _e836864_))
                                             (_tl838869_ (##cdr _e836864_)))
                                         (if (gx#stx-null? _tl838869_)
                                             ((lambda (_L872_ _L873_)
                                                (gxc#compile-e _L872_ _ht824_))
                                              _hd837867_
                                              _hd834859_)
                                             (_g826843_ _g827846_))))
                                     (_g826843_ _g827846_))))
                             (_g826843_ _g827846_))))
                     (_g826843_ _g827846_)))))
          (_g825888_ _stx823_)))))
  (define gxc#collect-refs-struct-ref%
    (lambda (_stx739_ _ht740_)
      (let ((_g742763_
             (lambda (_g743760_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g743760_))))
        (let ((_g741820_
               (lambda (_g743766_)
                 (if (gx#stx-pair? _g743766_)
                     (let ((_e747768_ (gx#stx-e _g743766_)))
                       (let ((_hd748771_ (##car _e747768_))
                             (_tl749773_ (##cdr _e747768_)))
                         (if (gx#stx-pair? _tl749773_)
                             (let ((_e750776_ (gx#stx-e _tl749773_)))
                               (let ((_hd751779_ (##car _e750776_))
                                     (_tl752781_ (##cdr _e750776_)))
                                 (if (gx#stx-pair? _tl752781_)
                                     (let ((_e753784_ (gx#stx-e _tl752781_)))
                                       (let ((_hd754787_ (##car _e753784_))
                                             (_tl755789_ (##cdr _e753784_)))
                                         (if (gx#stx-pair? _tl755789_)
                                             (let ((_e756792_
                                                    (gx#stx-e _tl755789_)))
                                               (let ((_hd757795_
                                                      (##car _e756792_))
                                                     (_tl758797_
                                                      (##cdr _e756792_)))
                                                 (if (gx#stx-null? _tl758797_)
                                                     ((lambda (_L800_
                                                               _L801_
                                                               _L802_)
                                                        (begin
                                                          (gxc#compile-e
                                                           _L802_
                                                           _ht740_)
                                                          (gxc#compile-e
                                                           _L801_
                                                           _ht740_)
                                                          (gxc#compile-e
                                                           _L800_
                                                           _ht740_)))
                                                      _hd757795_
                                                      _hd754787_
                                                      _hd751779_)
                                                     (_g742763_ _g743766_))))
                                             (_g742763_ _g743766_))))
                                     (_g742763_ _g743766_))))
                             (_g742763_ _g743766_))))
                     (_g742763_ _g743766_)))))
          (_g741820_ _stx739_)))))
  (define gxc#collect-refs-struct-setq%
    (lambda (_stx639_ _ht640_)
      (let ((_g642667_
             (lambda (_g643664_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g643664_))))
        (let ((_g641736_
               (lambda (_g643670_)
                 (if (gx#stx-pair? _g643670_)
                     (let ((_e648672_ (gx#stx-e _g643670_)))
                       (let ((_hd649675_ (##car _e648672_))
                             (_tl650677_ (##cdr _e648672_)))
                         (if (gx#stx-pair? _tl650677_)
                             (let ((_e651680_ (gx#stx-e _tl650677_)))
                               (let ((_hd652683_ (##car _e651680_))
                                     (_tl653685_ (##cdr _e651680_)))
                                 (if (gx#stx-pair? _tl653685_)
                                     (let ((_e654688_ (gx#stx-e _tl653685_)))
                                       (let ((_hd655691_ (##car _e654688_))
                                             (_tl656693_ (##cdr _e654688_)))
                                         (if (gx#stx-pair? _tl656693_)
                                             (let ((_e657696_
                                                    (gx#stx-e _tl656693_)))
                                               (let ((_hd658699_
                                                      (##car _e657696_))
                                                     (_tl659701_
                                                      (##cdr _e657696_)))
                                                 (if (gx#stx-pair? _tl659701_)
                                                     (let ((_e660704_
                                                            (gx#stx-e
                                                             _tl659701_)))
                                                       (let ((_hd661707_
                                                              (##car _e660704_))
                                                             (_tl662709_
                                                              (##cdr _e660704_)))
                                                         (if (gx#stx-null?
                                                              _tl662709_)
                                                             ((lambda (_L712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L713_
                               _L714_
                               _L715_)
                        (begin
                          (gxc#compile-e _L715_ _ht640_)
                          (gxc#compile-e _L714_ _ht640_)
                          (gxc#compile-e _L713_ _ht640_)
                          (gxc#compile-e _L712_ _ht640_)))
                      _hd661707_
                      _hd658699_
                      _hd655691_
                      _hd652683_)
                     (_g642667_ _g643670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g642667_ _g643670_))))
                                             (_g642667_ _g643670_))))
                                     (_g642667_ _g643670_))))
                             (_g642667_ _g643670_))))
                     (_g642667_ _g643670_)))))
          (_g641736_ _stx639_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx601_)
      (let ((_g603613_
             (lambda (_g604610_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g604610_))))
        (let ((_g602636_
               (lambda (_g604616_)
                 (if (gx#stx-pair? _g604616_)
                     (let ((_e606618_ (gx#stx-e _g604616_)))
                       (let ((_hd607621_ (##car _e606618_))
                             (_tl608623_ (##cdr _e606618_)))
                         ((lambda (_L626_) (ormap gxc#compile-e _L626_))
                          _tl608623_)))
                     (_g603613_ _g604616_)))))
          (_g602636_ _stx601_))))))
