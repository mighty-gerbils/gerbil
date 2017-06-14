(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10090_ . _args10091_)
      (let ((_g1009310103_
             (lambda (_g1009410100_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1009410100_))))
        (let ((_g1009210131_
               (lambda (_g1009410106_)
                 (if (gx#stx-pair? _g1009410106_)
                     (let ((_e1009610108_ (gx#stx-e _g1009410106_)))
                       (let ((_hd1009710111_ (##car _e1009610108_))
                             (_tl1009810113_ (##cdr _e1009610108_)))
                         ((lambda (_L10116_)
                            (let ((_$e10126_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10116_)
                                    '#f)))
                              (if _$e10126_
                                  ((lambda (_method10129_)
                                     (apply _method10129_
                                            _stx10090_
                                            _args10091_))
                                   _$e10126_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10090_
                                   _L10116_))))
                          _hd1009710111_)))
                     (_g1009310103_ _g1009410106_)))))
          (_g1009210131_ _stx10090_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10087_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10087_ '%#lambda void)
           (table-set! _tbl10087_ '%#case-lambda void)
           (table-set! _tbl10087_ '%#let-values void)
           (table-set! _tbl10087_ '%#letrec-values void)
           (table-set! _tbl10087_ '%#letrec*-values void)
           (table-set! _tbl10087_ '%#quote void)
           (table-set! _tbl10087_ '%#quote-syntax void)
           (table-set! _tbl10087_ '%#call void)
           (table-set! _tbl10087_ '%#if void)
           (table-set! _tbl10087_ '%#ref void)
           (table-set! _tbl10087_ '%#set! void)
           (table-set! _tbl10087_ '%#struct-instance? void)
           (table-set! _tbl10087_ '%#struct-direct-instance? void)
           (table-set! _tbl10087_ '%#struct-ref void)
           (table-set! _tbl10087_ '%#struct-set! void)
           _tbl10087_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10083_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10083_ '%#begin void)
           (table-set! _tbl10083_ '%#begin-syntax void)
           (table-set! _tbl10083_ '%#begin-foreign void)
           (table-set! _tbl10083_ '%#module void)
           (table-set! _tbl10083_ '%#import void)
           (table-set! _tbl10083_ '%#export void)
           (table-set! _tbl10083_ '%#provide void)
           (table-set! _tbl10083_ '%#extern void)
           (table-set! _tbl10083_ '%#define-values void)
           (table-set! _tbl10083_ '%#define-syntax void)
           (table-set! _tbl10083_ '%#define-alias void)
           (table-set! _tbl10083_ '%#declare void)
           _tbl10083_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10079_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10079_ (force gxc#&void-special-form))
           (hash-copy! _tbl10079_ (force gxc#&void-expression))
           _tbl10079_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10075_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10075_ (force gxc#&void-expression))
           (hash-copy! _tbl10075_ (force gxc#&void-special-form))
           (table-set! _tbl10075_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10075_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10075_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10075_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10075_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10075_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10068_ . _args10070_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10068_ _args10070_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10065_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10065_ (force gxc#&void))
           (table-set! _tbl10065_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10065_ '%#module gxc#lift-modules-module%)
           _tbl10065_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10058_ . _args10060_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10058_ _args10060_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10055_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10055_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10055_ '%#begin-syntax false)
           (table-set! _tbl10055_ '%#begin-foreign true)
           (table-set! _tbl10055_ '%#module false)
           (table-set! _tbl10055_ '%#import false)
           (table-set! _tbl10055_ '%#export false)
           (table-set! _tbl10055_ '%#provide false)
           (table-set! _tbl10055_ '%#extern false)
           (table-set! _tbl10055_ '%#define-values true)
           (table-set! _tbl10055_ '%#define-syntax false)
           (table-set! _tbl10055_ '%#define-alias false)
           (table-set! _tbl10055_ '%#declare false)
           (table-set! _tbl10055_ '%#lambda true)
           (table-set! _tbl10055_ '%#case-lambda true)
           (table-set! _tbl10055_ '%#let-values true)
           (table-set! _tbl10055_ '%#letrec-values true)
           (table-set! _tbl10055_ '%#letrec*-values true)
           (table-set! _tbl10055_ '%#quote true)
           (table-set! _tbl10055_ '%#call true)
           (table-set! _tbl10055_ '%#if true)
           (table-set! _tbl10055_ '%#ref true)
           (table-set! _tbl10055_ '%#set! true)
           (table-set! _tbl10055_ '%#struct-instance? true)
           (table-set! _tbl10055_ '%#struct-direct-instance? true)
           (table-set! _tbl10055_ '%#struct-ref true)
           (table-set! _tbl10055_ '%#struct-set! true)
           _tbl10055_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10048_ . _args10050_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10048_ _args10050_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10045_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10045_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10045_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10045_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10045_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl10045_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10041_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10041_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10041_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10041_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10041_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10034_ . _args10036_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10034_ _args10036_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10031_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10031_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10031_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10031_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10031_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10031_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10031_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10031_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10031_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10031_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10031_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10031_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10031_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10031_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10031_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10031_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10031_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10031_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10031_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10031_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl10031_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10024_ . _args10026_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10024_ _args10026_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10021_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10021_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10021_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10021_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10021_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10014_ . _args10016_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10014_ _args10016_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10011_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10011_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10011_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10011_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10011_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10011_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10011_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10011_ '%#quote void)
           (table-set! _tbl10011_ '%#quote-syntax void)
           (table-set! _tbl10011_ '%#call gxc#collect-operands)
           (table-set! _tbl10011_ '%#if gxc#collect-operands)
           (table-set! _tbl10011_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10011_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10011_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10011_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10011_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10011_ '%#struct-set! gxc#collect-operands)
           _tbl10011_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10004_ . _args10006_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10004_ _args10006_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10001_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10001_ (force gxc#&void-expression))
           (table-set! _tbl10001_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10001_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10001_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10001_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10001_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10001_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10001_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10001_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10001_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10001_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10001_ '%#begin-foreign void)
           (table-set! _tbl10001_ '%#declare void)
           _tbl10001_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx9994_ . _args9996_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9994_ _args9996_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl9991_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9991_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9991_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl9991_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9991_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl9991_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl9991_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9991_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9991_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set! _tbl9991_ '%#declare void)
           _tbl9991_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx9984_ . _args9986_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9984_ _args9986_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx9941_ . _args9942_)
      (let ((_g99449954_
             (lambda (_g99459951_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99459951_))))
        (let ((_g99439981_
               (lambda (_g99459957_)
                 (if (gx#stx-pair? _g99459957_)
                     (let ((_e99479959_ (gx#stx-e _g99459957_)))
                       (let ((_hd99489962_ (##car _e99479959_))
                             (_tl99499964_ (##cdr _e99479959_)))
                         ((lambda (_L9967_)
                            (for-each
                             (lambda (_g99769978_)
                               (apply gxc#compile-e _g99769978_ _args9942_))
                             (gx#stx-e _L9967_)))
                          _tl99499964_)))
                     (_g99449954_ _g99459957_)))))
          (_g99439981_ _stx9941_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx9897_ . _args9898_)
      (let ((_g99009910_
             (lambda (_g99019907_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99019907_))))
        (let ((_g98999938_
               (lambda (_g99019913_)
                 (if (gx#stx-pair? _g99019913_)
                     (let ((_e99039915_ (gx#stx-e _g99019913_)))
                       (let ((_hd99049918_ (##car _e99039915_))
                             (_tl99059920_ (##cdr _e99039915_)))
                         ((lambda (_L9923_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g99339935_)
                                  (apply gxc#compile-e _g99339935_ _args9898_))
                                (gx#stx-e _L9923_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl99059920_)))
                     (_g99009910_ _g99019913_)))))
          (_g98999938_ _stx9897_)))))
  (define gxc#collect-module%
    (lambda (_stx9839_ . _args9840_)
      (let ((_g98429856_
             (lambda (_g98439853_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98439853_))))
        (let ((_g98419894_
               (lambda (_g98439859_)
                 (if (gx#stx-pair? _g98439859_)
                     (let ((_e98469861_ (gx#stx-e _g98439859_)))
                       (let ((_hd98479864_ (##car _e98469861_))
                             (_tl98489866_ (##cdr _e98469861_)))
                         (if (gx#stx-pair? _tl98489866_)
                             (let ((_e98499869_ (gx#stx-e _tl98489866_)))
                               (let ((_hd98509872_ (##car _e98499869_))
                                     (_tl98519874_ (##cdr _e98499869_)))
                                 ((lambda (_L9877_ _L9878_)
                                    (let ((_ctx9891_
                                           (gx#syntax-local-e__0 _L9878_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx9891_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args9840_))
                                       gx#current-expander-context
                                       _ctx9891_)))
                                  _tl98519874_
                                  _hd98509872_)))
                             (_g98429856_ _g98439859_))))
                     (_g98429856_ _g98439859_)))))
          (_g98419894_ _stx9839_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx9771_ . _args9772_)
      (let ((_g97749791_
             (lambda (_g97759788_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97759788_))))
        (let ((_g97739836_
               (lambda (_g97759794_)
                 (if (gx#stx-pair? _g97759794_)
                     (let ((_e97789796_ (gx#stx-e _g97759794_)))
                       (let ((_hd97799799_ (##car _e97789796_))
                             (_tl97809801_ (##cdr _e97789796_)))
                         (if (gx#stx-pair? _tl97809801_)
                             (let ((_e97819804_ (gx#stx-e _tl97809801_)))
                               (let ((_hd97829807_ (##car _e97819804_))
                                     (_tl97839809_ (##cdr _e97819804_)))
                                 (if (gx#stx-pair? _tl97839809_)
                                     (let ((_e97849812_
                                            (gx#stx-e _tl97839809_)))
                                       (let ((_hd97859815_ (##car _e97849812_))
                                             (_tl97869817_
                                              (##cdr _e97849812_)))
                                         (if (gx#stx-null? _tl97869817_)
                                             ((lambda (_L9820_ _L9821_)
                                                (apply gxc#compile-e
                                                       _L9820_
                                                       _args9772_))
                                              _hd97859815_
                                              _hd97829807_)
                                             (_g97749791_ _g97759794_))))
                                     (_g97749791_ _g97759794_))))
                             (_g97749791_ _g97759794_))))
                     (_g97749791_ _g97759794_)))))
          (_g97739836_ _stx9771_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx9653_ . _args9654_)
      (let ((_g96569684_
             (lambda (_g96579681_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96579681_))))
        (let ((_g96559768_
               (lambda (_g96579687_)
                 (if (gx#stx-pair? _g96579687_)
                     (let ((_e96609689_ (gx#stx-e _g96579687_)))
                       (let ((_hd96619692_ (##car _e96609689_))
                             (_tl96629694_ (##cdr _e96609689_)))
                         (if (gx#stx-pair/null? _tl96629694_)
                             (if (fx>= (gx#stx-length _tl96629694_) '0)
                                 (let ((_g10133_
                                        (gx#syntax-split-splice
                                         _tl96629694_
                                         '0)))
                                   (begin
                                     (let ((_g10134_ (values-count _g10133_)))
                                       (if (not (fx= _g10134_ 2))
                                           (error "Context expects 2 values"
                                                  _g10134_)))
                                     (let ((_target96639697_
                                            (values-ref _g10133_ 0))
                                           (_tl96659699_
                                            (values-ref _g10133_ 1)))
                                       (if (gx#stx-null? _tl96659699_)
                                           (letrec ((_loop96669702_
                                                     (lambda (_hd96649705_
                                                              _body96709707_
                                                              _hd96719709_)
                                                       (if (gx#stx-pair?
                                                            _hd96649705_)
                                                           (let ((_e96679712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd96649705_)))
                     (let ((_lp-hd96689715_ (##car _e96679712_))
                           (_lp-tl96699717_ (##cdr _e96679712_)))
                       (if (gx#stx-pair? _lp-hd96689715_)
                           (let ((_e96749720_ (gx#stx-e _lp-hd96689715_)))
                             (let ((_hd96759723_ (##car _e96749720_))
                                   (_tl96769725_ (##cdr _e96749720_)))
                               (if (gx#stx-pair? _tl96769725_)
                                   (let ((_e96779728_ (gx#stx-e _tl96769725_)))
                                     (let ((_hd96789731_ (##car _e96779728_))
                                           (_tl96799733_ (##cdr _e96779728_)))
                                       (if (gx#stx-null? _tl96799733_)
                                           (_loop96669702_
                                            _lp-tl96699717_
                                            (cons _hd96789731_ _body96709707_)
                                            (cons _hd96759723_ _hd96719709_))
                                           (_g96569684_ _g96579687_))))
                                   (_g96569684_ _g96579687_))))
                           (_g96569684_ _g96579687_))))
                   (let ((_body96729736_ (reverse _body96709707_))
                         (_hd96739738_ (reverse _hd96719709_)))
                     ((lambda (_L9741_ _L9742_)
                        (for-each
                         (lambda (_g97569758_)
                           (apply gxc#compile-e _g97569758_ _args9654_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g97609763_ _g97619765_)
                                     (cons _g97609763_ _g97619765_))
                                   '()
                                   _L9741_))))
                      _body96729736_
                      _hd96739738_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop96669702_
                                              _target96639697_
                                              '()
                                              '()))
                                           (_g96569684_ _g96579687_)))))
                                 (_g96569684_ _g96579687_))
                             (_g96569684_ _g96579687_))))
                     (_g96569684_ _g96579687_)))))
          (_g96559768_ _stx9653_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9506_ . _args9507_)
      (let ((_g95099544_
             (lambda (_g95109541_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95109541_))))
        (let ((_g95089650_
               (lambda (_g95109547_)
                 (if (gx#stx-pair? _g95109547_)
                     (let ((_e95149549_ (gx#stx-e _g95109547_)))
                       (let ((_hd95159552_ (##car _e95149549_))
                             (_tl95169554_ (##cdr _e95149549_)))
                         (if (gx#stx-pair? _tl95169554_)
                             (let ((_e95179557_ (gx#stx-e _tl95169554_)))
                               (let ((_hd95189560_ (##car _e95179557_))
                                     (_tl95199562_ (##cdr _e95179557_)))
                                 (if (gx#stx-pair/null? _hd95189560_)
                                     (if (fx>= (gx#stx-length _hd95189560_) '0)
                                         (let ((_g10135_
                                                (gx#syntax-split-splice
                                                 _hd95189560_
                                                 '0)))
                                           (begin
                                             (let ((_g10136_
                                                    (values-count _g10135_)))
                                               (if (not (fx= _g10136_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10136_)))
                                             (let ((_target95209565_
                                                    (values-ref _g10135_ 0))
                                                   (_tl95229567_
                                                    (values-ref _g10135_ 1)))
                                               (if (gx#stx-null? _tl95229567_)
                                                   (letrec ((_loop95239570_
                                                             (lambda (_hd95219573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr95279575_
                              _hd95289577_)
                       (if (gx#stx-pair? _hd95219573_)
                           (let ((_e95249580_ (gx#stx-e _hd95219573_)))
                             (let ((_lp-hd95259583_ (##car _e95249580_))
                                   (_lp-tl95269585_ (##cdr _e95249580_)))
                               (if (gx#stx-pair? _lp-hd95259583_)
                                   (let ((_e95319588_
                                          (gx#stx-e _lp-hd95259583_)))
                                     (let ((_hd95329591_ (##car _e95319588_))
                                           (_tl95339593_ (##cdr _e95319588_)))
                                       (if (gx#stx-pair? _tl95339593_)
                                           (let ((_e95349596_
                                                  (gx#stx-e _tl95339593_)))
                                             (let ((_hd95359599_
                                                    (##car _e95349596_))
                                                   (_tl95369601_
                                                    (##cdr _e95349596_)))
                                               (if (gx#stx-null? _tl95369601_)
                                                   (_loop95239570_
                                                    _lp-tl95269585_
                                                    (cons _hd95359599_
                                                          _expr95279575_)
                                                    (cons _hd95329591_
                                                          _hd95289577_))
                                                   (_g95099544_ _g95109547_))))
                                           (_g95099544_ _g95109547_))))
                                   (_g95099544_ _g95109547_))))
                           (let ((_expr95299604_ (reverse _expr95279575_))
                                 (_hd95309606_ (reverse _hd95289577_)))
                             (if (gx#stx-pair? _tl95199562_)
                                 (let ((_e95379609_ (gx#stx-e _tl95199562_)))
                                   (let ((_hd95389612_ (##car _e95379609_))
                                         (_tl95399614_ (##cdr _e95379609_)))
                                     (if (gx#stx-null? _tl95399614_)
                                         ((lambda (_L9617_ _L9618_ _L9619_)
                                            (for-each
                                             (lambda (_g96389640_)
                                               (apply gxc#compile-e
                                                      _g96389640_
                                                      _args9507_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g96429645_
                                                                _g96439647_)
                                                         (cons _g96429645_
                                                               _g96439647_))
                                                       (cons _L9617_ '())
                                                       _L9618_))))
                                          _hd95389612_
                                          _expr95299604_
                                          _hd95309606_)
                                         (_g95099544_ _g95109547_))))
                                 (_g95099544_ _g95109547_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop95239570_
                                                      _target95209565_
                                                      '()
                                                      '()))
                                                   (_g95099544_
                                                    _g95109547_)))))
                                         (_g95099544_ _g95109547_))
                                     (_g95099544_ _g95109547_))))
                             (_g95099544_ _g95109547_))))
                     (_g95099544_ _g95109547_)))))
          (_g95089650_ _stx9506_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9438_ . _args9439_)
      (let ((_g94419458_
             (lambda (_g94429455_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94429455_))))
        (let ((_g94409503_
               (lambda (_g94429461_)
                 (if (gx#stx-pair? _g94429461_)
                     (let ((_e94459463_ (gx#stx-e _g94429461_)))
                       (let ((_hd94469466_ (##car _e94459463_))
                             (_tl94479468_ (##cdr _e94459463_)))
                         (if (gx#stx-pair? _tl94479468_)
                             (let ((_e94489471_ (gx#stx-e _tl94479468_)))
                               (let ((_hd94499474_ (##car _e94489471_))
                                     (_tl94509476_ (##cdr _e94489471_)))
                                 (if (gx#stx-pair? _tl94509476_)
                                     (let ((_e94519479_
                                            (gx#stx-e _tl94509476_)))
                                       (let ((_hd94529482_ (##car _e94519479_))
                                             (_tl94539484_
                                              (##cdr _e94519479_)))
                                         (if (gx#stx-null? _tl94539484_)
                                             ((lambda (_L9487_ _L9488_)
                                                (apply gxc#compile-e
                                                       _L9487_
                                                       _args9439_))
                                              _hd94529482_
                                              _hd94499474_)
                                             (_g94419458_ _g94429461_))))
                                     (_g94419458_ _g94429461_))))
                             (_g94419458_ _g94429461_))))
                     (_g94419458_ _g94429461_)))))
          (_g94409503_ _stx9438_)))))
  (define gxc#collect-operands
    (lambda (_stx9351_ . _args9352_)
      (let ((_g93549373_
             (lambda (_g93559370_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93559370_))))
        (let ((_g93539435_
               (lambda (_g93559376_)
                 (if (gx#stx-pair? _g93559376_)
                     (let ((_e93579378_ (gx#stx-e _g93559376_)))
                       (let ((_hd93589381_ (##car _e93579378_))
                             (_tl93599383_ (##cdr _e93579378_)))
                         (if (gx#stx-pair/null? _tl93599383_)
                             (if (fx>= (gx#stx-length _tl93599383_) '0)
                                 (let ((_g10137_
                                        (gx#syntax-split-splice
                                         _tl93599383_
                                         '0)))
                                   (begin
                                     (let ((_g10138_ (values-count _g10137_)))
                                       (if (not (fx= _g10138_ 2))
                                           (error "Context expects 2 values"
                                                  _g10138_)))
                                     (let ((_target93609386_
                                            (values-ref _g10137_ 0))
                                           (_tl93629388_
                                            (values-ref _g10137_ 1)))
                                       (if (gx#stx-null? _tl93629388_)
                                           (letrec ((_loop93639391_
                                                     (lambda (_hd93619394_
                                                              _rands93679396_)
                                                       (if (gx#stx-pair?
                                                            _hd93619394_)
                                                           (let ((_e93649399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd93619394_)))
                     (let ((_lp-hd93659402_ (##car _e93649399_))
                           (_lp-tl93669404_ (##cdr _e93649399_)))
                       (_loop93639391_
                        _lp-tl93669404_
                        (cons _lp-hd93659402_ _rands93679396_))))
                   (let ((_rands93689407_ (reverse _rands93679396_)))
                     ((lambda (_L9410_)
                        (for-each
                         (lambda (_g94239425_)
                           (apply gxc#compile-e _g94239425_ _args9352_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g94279430_ _g94289432_)
                                     (cons _g94279430_ _g94289432_))
                                   '()
                                   _L9410_))))
                      _rands93689407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop93639391_
                                              _target93609386_
                                              '()))
                                           (_g93549373_ _g93559376_)))))
                                 (_g93549373_ _g93559376_))
                             (_g93549373_ _g93559376_))))
                     (_g93549373_ _g93559376_)))))
          (_g93539435_ _stx9351_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9282_)
      (let ((_g92849301_
             (lambda (_g92859298_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92859298_))))
        (let ((_g92839348_
               (lambda (_g92859304_)
                 (if (gx#stx-pair? _g92859304_)
                     (let ((_e92889306_ (gx#stx-e _g92859304_)))
                       (let ((_hd92899309_ (##car _e92889306_))
                             (_tl92909311_ (##cdr _e92889306_)))
                         (if (gx#stx-pair? _tl92909311_)
                             (let ((_e92919314_ (gx#stx-e _tl92909311_)))
                               (let ((_hd92929317_ (##car _e92919314_))
                                     (_tl92939319_ (##cdr _e92919314_)))
                                 (if (gx#stx-pair? _tl92939319_)
                                     (let ((_e92949322_
                                            (gx#stx-e _tl92939319_)))
                                       (let ((_hd92959325_ (##car _e92949322_))
                                             (_tl92969327_
                                              (##cdr _e92949322_)))
                                         (if (gx#stx-null? _tl92969327_)
                                             ((lambda (_L9330_ _L9331_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9346_)
                                                   (if (gx#identifier?
                                                        _bind9346_)
                                                       (gxc#add-module-binding!
                                                        _bind9346_
                                                        '#f)
                                                       '#!void))
                                                 _L9331_))
                                              _hd92959325_
                                              _hd92929317_)
                                             (_g92849301_ _g92859304_))))
                                     (_g92849301_ _g92859304_))))
                             (_g92849301_ _g92859304_))))
                     (_g92849301_ _g92859304_)))))
          (_g92839348_ _stx9282_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9215_)
      (let ((_g92179234_
             (lambda (_g92189231_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92189231_))))
        (let ((_g92169279_
               (lambda (_g92189237_)
                 (if (gx#stx-pair? _g92189237_)
                     (let ((_e92219239_ (gx#stx-e _g92189237_)))
                       (let ((_hd92229242_ (##car _e92219239_))
                             (_tl92239244_ (##cdr _e92219239_)))
                         (if (gx#stx-pair? _tl92239244_)
                             (let ((_e92249247_ (gx#stx-e _tl92239244_)))
                               (let ((_hd92259250_ (##car _e92249247_))
                                     (_tl92269252_ (##cdr _e92249247_)))
                                 (if (gx#stx-pair? _tl92269252_)
                                     (let ((_e92279255_
                                            (gx#stx-e _tl92269252_)))
                                       (let ((_hd92289258_ (##car _e92279255_))
                                             (_tl92299260_
                                              (##cdr _e92279255_)))
                                         (if (gx#stx-null? _tl92299260_)
                                             ((lambda (_L9263_ _L9264_)
                                                (gxc#add-module-binding!
                                                 _L9264_
                                                 '#t))
                                              _hd92289258_
                                              _hd92259250_)
                                             (_g92179234_ _g92189237_))))
                                     (_g92179234_ _g92189237_))))
                             (_g92179234_ _g92189237_))))
                     (_g92179234_ _g92189237_)))))
          (_g92169279_ _stx9215_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9157_ _modules9158_)
      (let ((_g91609174_
             (lambda (_g91619171_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91619171_))))
        (let ((_g91599212_
               (lambda (_g91619177_)
                 (if (gx#stx-pair? _g91619177_)
                     (let ((_e91649179_ (gx#stx-e _g91619177_)))
                       (let ((_hd91659182_ (##car _e91649179_))
                             (_tl91669184_ (##cdr _e91649179_)))
                         (if (gx#stx-pair? _tl91669184_)
                             (let ((_e91679187_ (gx#stx-e _tl91669184_)))
                               (let ((_hd91689190_ (##car _e91679187_))
                                     (_tl91699192_ (##cdr _e91679187_)))
                                 ((lambda (_L9195_ _L9196_)
                                    (let ((_ctx9209_
                                           (gx#syntax-local-e__0 _L9196_)))
                                      (begin
                                        (set-box!
                                         _modules9158_
                                         (cons _ctx9209_
                                               (unbox _modules9158_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9209_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9158_))
                                         gx#current-expander-context
                                         _ctx9209_))))
                                  _tl91699192_
                                  _hd91689190_)))
                             (_g91609174_ _g91619177_))))
                     (_g91609174_ _g91619177_)))))
          (_g91599212_ _stx9157_)))))
  (define gxc#add-module-binding!
    (lambda (_id9151_ _syntax?9152_)
      (let ((_eid9154_
             (##structure-ref
              (gx#resolve-identifier__0 _id9151_)
              '1
              gx#binding::t
              '#f))
            (_ht9155_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9154_)
            '#!void
            (table-set!
             _ht9155_
             _eid9154_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9154_)
              _syntax?9152_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9132_)
      (let ((_bind9134_ (gx#resolve-identifier__0 _id9132_)))
        (if _bind9134_
            (let ((_eid9136_ (##structure-ref _bind9134_ '1 gx#binding::t '#f))
                  (_ht9137_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9136_)
                  _eid9136_
                  (let ((_$e9139_ (table-ref _ht9137_ _eid9136_ '#f)))
                    (if _$e9139_
                        (values _$e9139_)
                        (if (##structure-instance-of?
                             _bind9134_
                             'gx#local-binding::t)
                            (let ((_gid9142_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9136_)))
                              (begin
                                (table-set! _ht9137_ _eid9136_ _gid9142_)
                                _gid9142_))
                            (if (##structure-instance-of?
                                 _bind9134_
                                 'gx#module-binding::t)
                                (let ((_gid9149_
                                       (let ((_$e9144_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9134_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9144_
                                             ((lambda (_ns9147_)
                                                (make-symbol
                                                 _ns9147_
                                                 '"#"
                                                 _eid9136_))
                                              _$e9144_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9136_)))))
                                  (begin
                                    (table-set! _ht9137_ _eid9136_ _gid9149_)
                                    _gid9149_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9132_
                                 _eid9136_
                                 _bind9134_)))))))
            (if (interned-symbol? (gx#stx-e _id9132_))
                (gx#stx-e _id9132_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9132_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9130_)
      (if (gx#identifier? _id9130_)
          (gxc#generate-runtime-binding-id _id9130_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9108
      (lambda (_sym9110_ _quote?9111_)
        (let ((_ht9113_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9115_ (table-ref _ht9113_ _sym9110_ '#f)))
            (if _$e9115_
                (values _$e9115_)
                (let ((_g9118_ (if _quote?9111_
                                   (make-symbol
                                    '"__"
                                    _sym9110_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9110_ '"_"))))
                  (begin (table-set! _ht9113_ _sym9110_ _g9118_) _g9118_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9123_)
          (let ((_quote?9125_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9108
             _sym9123_
             _quote?9125_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10140_
          (let ((_g10139_ (length _g10140_)))
            (cond ((fx= _g10139_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10140_))
                  ((fx= _g10139_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9108
                          _g10140_))
                  (else (error "No clause matching arguments" _g10140_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9107_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9107_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9069_)
      (if (interned-symbol? _key9069_)
          _key9069_
          (if (uninterned-symbol? _key9069_)
              (gxc#generate-runtime-gensym-reference__0 _key9069_)
              (let ((_key90709077_ _key9069_))
                (let ((_E90729081_
                       (lambda ()
                         (error '"No clause matching" _key90709077_))))
                  (let ((_K90739095_
                         (lambda (_mark9084_ _eid9085_)
                           (let ((_$e9087_
                                  (##structure-ref
                                   _mark9084_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9087_
                                 ((lambda (_ht9090_)
                                    (let ((_$e9092_
                                           (table-ref _ht9090_ _eid9085_ '#f)))
                                      (if _$e9092_
                                          (values _$e9092_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9085_))))
                                  _$e9087_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9085_))))))
                    (if (##pair? _key90709077_)
                        (let ((_hd90749098_ (##car _key90709077_))
                              (_tl90759100_ (##cdr _key90709077_)))
                          (let ((_eid9103_ _hd90749098_))
                            (let ((_mark9105_ _tl90759100_))
                              (_K90739095_ _mark9105_ _eid9103_))))
                        (_E90729081_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9054
      (lambda (_top9056_)
        (if _top9056_
            (let ((_ns9058_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9059_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9059_)
                  (make-symbol
                   _ns9058_
                   '"["
                   (number->string _phi9059_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9058_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9065_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9054 _top9065_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10142_
          (let ((_g10141_ (length _g10142_)))
            (cond ((fx= _g10141_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10142_))
                  ((fx= _g10141_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9054
                          _g10142_))
                  (else (error "No clause matching arguments" _g10142_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9053_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx8973_)
      (let ((_g89758985_
             (lambda (_g89768982_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89768982_))))
        (let ((_g89749050_
               (lambda (_g89768988_)
                 (if (gx#stx-pair? _g89768988_)
                     (let ((_e89788990_ (gx#stx-e _g89768988_)))
                       (let ((_hd89798993_ (##car _e89788990_))
                             (_tl89808995_ (##cdr _e89788990_)))
                         ((lambda (_L8998_)
                            (let ((_body9008_
                                   (gx#stx-map1 gxc#compile-e _L8998_)))
                              (let ((_body9047_
                                     (filter (lambda (_stx9010_)
                                               (let ((_g90139022_
                                                      (lambda (_g90149019_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g90149019_))))
                                                 (let ((_g90129029_
                                                        (lambda (_g90149025_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g90119044_
                                                          (lambda (_g90149032_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g90149032_)
                        (let ((_e90159034_ (gx#stx-e _g90149032_)))
                          (let ((_hd90169037_ (##car _e90159034_))
                                (_tl90179039_ (##cdr _e90159034_)))
                            (if (gx#identifier? _hd90169037_)
                                (if (gx#stx-eq? 'begin _hd90169037_)
                                    (if (gx#stx-null? _tl90179039_)
                                        ((lambda () '#f))
                                        (_g90129029_ _g90149032_))
                                    (_g90129029_ _g90149032_))
                                (_g90129029_ _g90149032_))))
                        (_g90129029_ _g90149032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90119044_
                                                      _stx9010_)))))
                                             _body9008_)))
                                (let ()
                                  (if (fx= (length _body9047_) '1)
                                      (car _body9047_)
                                      (cons 'begin _body9047_))))))
                          _tl89808995_)))
                     (_g89758985_ _g89768988_)))))
          (_g89749050_ _stx8973_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx8935_)
      (let ((_g89378947_
             (lambda (_g89388944_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89388944_))))
        (let ((_g89368970_
               (lambda (_g89388950_)
                 (if (gx#stx-pair? _g89388950_)
                     (let ((_e89408952_ (gx#stx-e _g89388950_)))
                       (let ((_hd89418955_ (##car _e89408952_))
                             (_tl89428957_ (##cdr _e89408952_)))
                         ((lambda (_L8960_)
                            (cons 'begin (gx#syntax->datum _L8960_)))
                          _tl89428957_)))
                     (_g89378947_ _g89388950_)))))
          (_g89368970_ _stx8935_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx8897_)
      (let ((_g88998909_
             (lambda (_g89008906_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89008906_))))
        (let ((_g88988932_
               (lambda (_g89008912_)
                 (if (gx#stx-pair? _g89008912_)
                     (let ((_e89028914_ (gx#stx-e _g89008912_)))
                       (let ((_hd89038917_ (##car _e89028914_))
                             (_tl89048919_ (##cdr _e89028914_)))
                         ((lambda (_L8922_)
                            (cons 'declare (map gx#syntax->datum _L8922_)))
                          _tl89048919_)))
                     (_g88998909_ _g89008912_)))))
          (_g88988932_ _stx8897_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8661_)
      (let ((_g86638680_
             (lambda (_g86648677_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86648677_))))
        (let ((_g86628894_
               (lambda (_g86648683_)
                 (if (gx#stx-pair? _g86648683_)
                     (let ((_e86678685_ (gx#stx-e _g86648683_)))
                       (let ((_hd86688688_ (##car _e86678685_))
                             (_tl86698690_ (##cdr _e86678685_)))
                         (if (gx#stx-pair? _tl86698690_)
                             (let ((_e86708693_ (gx#stx-e _tl86698690_)))
                               (let ((_hd86718696_ (##car _e86708693_))
                                     (_tl86728698_ (##cdr _e86708693_)))
                                 (if (gx#stx-pair? _tl86728698_)
                                     (let ((_e86738701_
                                            (gx#stx-e _tl86728698_)))
                                       (let ((_hd86748704_ (##car _e86738701_))
                                             (_tl86758706_
                                              (##cdr _e86738701_)))
                                         (if (gx#stx-null? _tl86758706_)
                                             ((lambda (_L8709_ _L8710_)
                                                (let ((_g87278740_
                                                       (lambda (_g87288737_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g87288737_))))
                                                  (let ((_g87268854_
                                                         (lambda (_g87288743_)
                                                           ((lambda ()
                                                              (let ((_tmp8747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9054
                              '#t)))
                        (let ((_body8851_
                               ((letrec ((_lp8749_
                                          (lambda (_rest8751_ _k8752_ _r8753_)
                                            (let ((_g87588774_
                                                   (lambda (_g87598771_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g87598771_))))
                                              (let ((_g87578781_
                                                     (lambda (_g87598777_)
                                                       ((lambda ()
                                                          (reverse _r8753_))))))
                                                (let ((_g87568802_
                                                       (lambda (_g87598784_)
                                                         ((lambda (_L8786_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8786_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L8786_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp8747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k8752_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r8753_)
                        (_g87578781_ _g87598784_)))
                  _g87598784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g87558826_
                                                         (lambda (_g87598805_)
                                                           (if (gx#stx-pair?
                                                                _g87598805_)
                                                               (let ((_e87668807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g87598805_)))
                         (let ((_hd87678810_ (##car _e87668807_))
                               (_tl87688812_ (##cdr _e87668807_)))
                           ((lambda (_L8815_ _L8816_)
                              (_lp8749_
                               _L8815_
                               (fx+ _k8752_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8816_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8752_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8753_)))
                            _tl87688812_
                            _hd87678810_)))
                       (_g87568802_ _g87598805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g87548848_
                                                           (lambda (_g87598829_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87598829_)
                         (let ((_e87618831_ (gx#stx-e _g87598829_)))
                           (let ((_hd87628834_ (##car _e87618831_))
                                 (_tl87638836_ (##cdr _e87618831_)))
                             (if (gx#stx-datum? _hd87628834_)
                                 (if (equal? (gx#stx-e _hd87628834_) '#f)
                                     ((lambda (_L8839_)
                                        (_lp8749_
                                         _L8839_
                                         (fx+ _k8752_ '1)
                                         _r8753_))
                                      _tl87638836_)
                                     (_g87558826_ _g87598829_))
                                 (_g87558826_ _g87598829_))))
                         (_g87558826_ _g87598829_)))))
              (_g87548848_ _rest8751_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8749_)
                                _L8710_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8747_
                                                    (cons (gxc#compile-e
                                                           _L8709_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8747_
                                               _L8710_)
                                              _body8851_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g87258876_
                                                           (lambda (_g87288857_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87288857_)
                         (let ((_e87338859_ (gx#stx-e _g87288857_)))
                           (let ((_hd87348862_ (##car _e87338859_))
                                 (_tl87358864_ (##cdr _e87338859_)))
                             (if (gx#stx-null? _tl87358864_)
                                 ((lambda (_L8867_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L8867_)
                                                (cons (gxc#compile-e _L8709_)
                                                      '()))))
                                  _hd87348862_)
                                 (_g87268854_ _g87288857_))))
                         (_g87268854_ _g87288857_)))))
              (let ((_g87248891_
                     (lambda (_g87288879_)
                       (if (gx#stx-pair? _g87288879_)
                           (let ((_e87298881_ (gx#stx-e _g87288879_)))
                             (let ((_hd87308884_ (##car _e87298881_))
                                   (_tl87318886_ (##cdr _e87298881_)))
                               (if (gx#stx-datum? _hd87308884_)
                                   (if (equal? (gx#stx-e _hd87308884_) '#f)
                                       (if (gx#stx-null? _tl87318886_)
                                           ((lambda ()
                                              (gxc#compile-e _L8709_)))
                                           (_g87258876_ _g87288879_))
                                       (_g87258876_ _g87288879_))
                                   (_g87258876_ _g87288879_))))
                           (_g87258876_ _g87288879_)))))
                (_g87248891_ _L8710_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd86748704_
                                              _hd86718696_)
                                             (_g86638680_ _g86648683_))))
                                     (_g86638680_ _g86648683_))))
                             (_g86638680_ _g86648683_))))
                     (_g86638680_ _g86648683_)))))
          (_g86628894_ _stx8661_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8649_ _hd8650_)
      (let ((_len8652_ (gx#stx-length _hd8650_)))
        (let ((_cmp8654_ (if (gx#stx-list? _hd8650_) 'fx= 'fx>=)))
          (let ((_errmsg8656_
                 (string-append
                  (if (gx#stx-list? _hd8650_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8652_)
                  '" values")))
            (let ((_count8658_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8650_)) (fx= _len8652_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8658_
                                            (cons (cons 'values-count
                                                        (cons _vals8649_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8658_ (cons _len8652_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8658_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8582_)
      (let ((_g85848601_
             (lambda (_g85858598_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g85858598_))))
        (let ((_g85838646_
               (lambda (_g85858604_)
                 (if (gx#stx-pair? _g85858604_)
                     (let ((_e85888606_ (gx#stx-e _g85858604_)))
                       (let ((_hd85898609_ (##car _e85888606_))
                             (_tl85908611_ (##cdr _e85888606_)))
                         (if (gx#stx-pair? _tl85908611_)
                             (let ((_e85918614_ (gx#stx-e _tl85908611_)))
                               (let ((_hd85928617_ (##car _e85918614_))
                                     (_tl85938619_ (##cdr _e85918614_)))
                                 (if (gx#stx-pair? _tl85938619_)
                                     (let ((_e85948622_
                                            (gx#stx-e _tl85938619_)))
                                       (let ((_hd85958625_ (##car _e85948622_))
                                             (_tl85968627_
                                              (##cdr _e85948622_)))
                                         (if (gx#stx-null? _tl85968627_)
                                             ((lambda (_L8630_ _L8631_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8631_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8630_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd85958625_
                                              _hd85928617_)
                                             (_g85848601_ _g85858604_))))
                                     (_g85848601_ _g85858604_))))
                             (_g85848601_ _g85858604_))))
                     (_g85848601_ _g85858604_)))))
          (_g85838646_ _stx8582_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8580_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8580_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7117_)
      (let ((_runtime-identifier=?7119_
             (lambda (_id-stx8571_ _sym8572_)
               (let ((_bind85738575_ (gx#resolve-identifier__0 _id-stx8571_)))
                 (if _bind85738575_
                     (let ((_bind8578_ _bind85738575_))
                       (eq? (##structure-ref _bind8578_ '1 gx#binding::t '#f)
                            _sym8572_))
                     '#f)))))
        (let ((_dispatch-case?7120_
               (lambda (_hd7801_ _body7802_)
                 (let ((_form7804_ (cons _hd7801_ (cons _body7802_ '()))))
                   (let ((_g78097966_
                          (lambda (_g78107963_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g78107963_))))
                     (let ((_g78087973_
                            (lambda (_g78107969_) ((lambda () '#f)))))
                       (let ((_g78078114_
                              (lambda (_g78107976_)
                                (if (gx#stx-pair? _g78107976_)
                                    (let ((_e79267978_ (gx#stx-e _g78107976_)))
                                      (let ((_hd79277981_ (##car _e79267978_))
                                            (_tl79287983_ (##cdr _e79267978_)))
                                        (if (gx#stx-pair? _tl79287983_)
                                            (let ((_e79297986_
                                                   (gx#stx-e _tl79287983_)))
                                              (let ((_hd79307989_
                                                     (##car _e79297986_))
                                                    (_tl79317991_
                                                     (##cdr _e79297986_)))
                                                (if (gx#stx-pair? _hd79307989_)
                                                    (let ((_e79327994_
                                                           (gx#stx-e
                                                            _hd79307989_)))
                                                      (let ((_hd79337997_
                                                             (##car _e79327994_))
                                                            (_tl79347999_
                                                             (##cdr _e79327994_)))
                                                        (if (gx#identifier?
                                                             _hd79337997_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd79337997_)
                        (if (gx#stx-pair? _tl79347999_)
                            (let ((_e79358002_ (gx#stx-e _tl79347999_)))
                              (let ((_hd79368005_ (##car _e79358002_))
                                    (_tl79378007_ (##cdr _e79358002_)))
                                (if (gx#stx-pair? _hd79368005_)
                                    (let ((_e79388010_
                                           (gx#stx-e _hd79368005_)))
                                      (let ((_hd79398013_ (##car _e79388010_))
                                            (_tl79408015_ (##cdr _e79388010_)))
                                        (if (gx#identifier? _hd79398013_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd79398013_)
                                                (if (gx#stx-pair? _tl79408015_)
                                                    (let ((_e79418018_
                                                           (gx#stx-e
                                                            _tl79408015_)))
                                                      (let ((_hd79428021_
                                                             (##car _e79418018_))
                                                            (_tl79438023_
                                                             (##cdr _e79418018_)))
                                                        (if (gx#stx-null?
                                                             _tl79438023_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79378007_)
                        (let ((_e79448026_ (gx#stx-e _tl79378007_)))
                          (let ((_hd79458029_ (##car _e79448026_))
                                (_tl79468031_ (##cdr _e79448026_)))
                            (if (gx#stx-pair? _hd79458029_)
                                (let ((_e79478034_ (gx#stx-e _hd79458029_)))
                                  (let ((_hd79488037_ (##car _e79478034_))
                                        (_tl79498039_ (##cdr _e79478034_)))
                                    (if (gx#identifier? _hd79488037_)
                                        (if (gx#stx-eq? '%#ref _hd79488037_)
                                            (if (gx#stx-pair? _tl79498039_)
                                                (let ((_e79508042_
                                                       (gx#stx-e
                                                        _tl79498039_)))
                                                  (let ((_hd79518045_
                                                         (##car _e79508042_))
                                                        (_tl79528047_
                                                         (##cdr _e79508042_)))
                                                    (if (gx#stx-null?
                                                         _tl79528047_)
                                                        (if (gx#stx-pair?
                                                             _tl79468031_)
                                                            (let ((_e79538050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl79468031_)))
                      (let ((_hd79548053_ (##car _e79538050_))
                            (_tl79558055_ (##cdr _e79538050_)))
                        (if (gx#stx-pair? _hd79548053_)
                            (let ((_e79568058_ (gx#stx-e _hd79548053_)))
                              (let ((_hd79578061_ (##car _e79568058_))
                                    (_tl79588063_ (##cdr _e79568058_)))
                                (if (gx#identifier? _hd79578061_)
                                    (if (gx#stx-eq? '%#ref _hd79578061_)
                                        (if (gx#stx-pair? _tl79588063_)
                                            (let ((_e79598066_
                                                   (gx#stx-e _tl79588063_)))
                                              (let ((_hd79608069_
                                                     (##car _e79598066_))
                                                    (_tl79618071_
                                                     (##cdr _e79598066_)))
                                                (if (gx#stx-null? _tl79618071_)
                                                    (if (gx#stx-null?
                                                         _tl79558055_)
                                                        (if (gx#stx-null?
                                                             _tl79317991_)
                                                            ((lambda (_L8074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8075_
                              _L8076_
                              _L8077_)
                       (if (if (gx#identifier? _L8077_)
                               (if (_runtime-identifier=?7119_ _L8076_ 'apply)
                                   (if (gx#free-identifier=? _L8077_ _L8074_)
                                       (not (gx#free-identifier=?
                                             _L8075_
                                             _L8077_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g78087973_ _g78107976_)))
                     _hd79608069_
                     _hd79518045_
                     _hd79428021_
                     _hd79277981_)
                    (_g78087973_ _g78107976_))
                (_g78087973_ _g78107976_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78087973_
                                                     _g78107976_))))
                                            (_g78087973_ _g78107976_))
                                        (_g78087973_ _g78107976_))
                                    (_g78087973_ _g78107976_))))
                            (_g78087973_ _g78107976_))))
                    (_g78087973_ _g78107976_))
                (_g78087973_ _g78107976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g78087973_ _g78107976_))
                                            (_g78087973_ _g78107976_))
                                        (_g78087973_ _g78107976_))))
                                (_g78087973_ _g78107976_))))
                        (_g78087973_ _g78107976_))
                    (_g78087973_ _g78107976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78087973_ _g78107976_))
                                                (_g78087973_ _g78107976_))
                                            (_g78087973_ _g78107976_))))
                                    (_g78087973_ _g78107976_))))
                            (_g78087973_ _g78107976_))
                        (_g78087973_ _g78107976_))
                    (_g78087973_ _g78107976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78087973_
                                                     _g78107976_))))
                                            (_g78087973_ _g78107976_))))
                                    (_g78087973_ _g78107976_)))))
                         (let ((_g78068374_
                                (lambda (_g78108117_)
                                  (if (gx#stx-pair? _g78108117_)
                                      (let ((_e78628119_
                                             (gx#stx-e _g78108117_)))
                                        (let ((_hd78638122_
                                               (##car _e78628119_))
                                              (_tl78648124_
                                               (##cdr _e78628119_)))
                                          (if (gx#stx-pair/null? _hd78638122_)
                                              (if (fx>= (gx#stx-length
                                                         _hd78638122_)
                                                        '0)
                                                  (let ((_g10151_
                                                         (gx#syntax-split-splice
                                                          _hd78638122_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10152_
                                                             (values-count
                                                              _g10151_)))
                                                        (if (not (fx= _g10152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10152_)))
              (let ((_target78658127_ (values-ref _g10151_ 0))
                    (_tl78678129_ (values-ref _g10151_ 1)))
                (letrec ((_loop78688132_
                          (lambda (_hd78668135_ _arg78728137_)
                            (if (gx#stx-pair? _hd78668135_)
                                (let ((_e78698140_ (gx#stx-e _hd78668135_)))
                                  (let ((_lp-hd78708143_ (##car _e78698140_))
                                        (_lp-tl78718145_ (##cdr _e78698140_)))
                                    (_loop78688132_
                                     _lp-tl78718145_
                                     (cons _lp-hd78708143_ _arg78728137_))))
                                (let ((_arg78738148_ (reverse _arg78728137_)))
                                  (if (gx#stx-pair? _tl78648124_)
                                      (let ((_e78748151_
                                             (gx#stx-e _tl78648124_)))
                                        (let ((_hd78758154_
                                               (##car _e78748151_))
                                              (_tl78768156_
                                               (##cdr _e78748151_)))
                                          (if (gx#stx-pair? _hd78758154_)
                                              (let ((_e78778159_
                                                     (gx#stx-e _hd78758154_)))
                                                (let ((_hd78788162_
                                                       (##car _e78778159_))
                                                      (_tl78798164_
                                                       (##cdr _e78778159_)))
                                                  (if (gx#identifier?
                                                       _hd78788162_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd78788162_)
                                                          (if (gx#stx-pair?
                                                               _tl78798164_)
                                                              (let ((_e78808167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl78798164_)))
                        (let ((_hd78818170_ (##car _e78808167_))
                              (_tl78828172_ (##cdr _e78808167_)))
                          (if (gx#stx-pair? _hd78818170_)
                              (let ((_e78838175_ (gx#stx-e _hd78818170_)))
                                (let ((_hd78848178_ (##car _e78838175_))
                                      (_tl78858180_ (##cdr _e78838175_)))
                                  (if (gx#identifier? _hd78848178_)
                                      (if (gx#stx-eq? '%#ref _hd78848178_)
                                          (if (gx#stx-pair? _tl78858180_)
                                              (let ((_e78868183_
                                                     (gx#stx-e _tl78858180_)))
                                                (let ((_hd78878186_
                                                       (##car _e78868183_))
                                                      (_tl78888188_
                                                       (##cdr _e78868183_)))
                                                  (if (gx#stx-null?
                                                       _tl78888188_)
                                                      (if (gx#stx-pair?
                                                           _tl78828172_)
                                                          (let ((_e78898191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl78828172_)))
                    (let ((_hd78908194_ (##car _e78898191_))
                          (_tl78918196_ (##cdr _e78898191_)))
                      (if (gx#stx-pair? _hd78908194_)
                          (let ((_e78928199_ (gx#stx-e _hd78908194_)))
                            (let ((_hd78938202_ (##car _e78928199_))
                                  (_tl78948204_ (##cdr _e78928199_)))
                              (if (gx#identifier? _hd78938202_)
                                  (if (gx#stx-eq? '%#ref _hd78938202_)
                                      (if (gx#stx-pair? _tl78948204_)
                                          (let ((_e78958207_
                                                 (gx#stx-e _tl78948204_)))
                                            (let ((_hd78968210_
                                                   (##car _e78958207_))
                                                  (_tl78978212_
                                                   (##cdr _e78958207_)))
                                              (if (gx#stx-null? _tl78978212_)
                                                  (if (gx#stx-pair/null?
                                                       _tl78918196_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78918196_)
                        '1)
                  (let ((_g10153_ (gx#syntax-split-splice _tl78918196_ '1)))
                    (begin
                      (let ((_g10154_ (values-count _g10153_)))
                        (if (not (fx= _g10154_ 2))
                            (error "Context expects 2 values" _g10154_)))
                      (let ((_target78988215_ (values-ref _g10153_ 0))
                            (_tl79008217_ (values-ref _g10153_ 1)))
                        (if (gx#stx-pair? _tl79008217_)
                            (let ((_e79078220_ (gx#stx-e _tl79008217_)))
                              (let ((_hd79088223_ (##car _e79078220_))
                                    (_tl79098225_ (##cdr _e79078220_)))
                                (if (gx#stx-pair? _hd79088223_)
                                    (let ((_e79108228_
                                           (gx#stx-e _hd79088223_)))
                                      (let ((_hd79118231_ (##car _e79108228_))
                                            (_tl79128233_ (##cdr _e79108228_)))
                                        (if (gx#identifier? _hd79118231_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd79118231_)
                                                (if (gx#stx-pair? _tl79128233_)
                                                    (let ((_e79138236_
                                                           (gx#stx-e
                                                            _tl79128233_)))
                                                      (let ((_hd79148239_
                                                             (##car _e79138236_))
                                                            (_tl79158241_
                                                             (##cdr _e79138236_)))
                                                        (if (gx#stx-null?
                                                             _tl79158241_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79098225_)
                        (letrec ((_loop79018244_
                                  (lambda (_hd78998247_ _xarg79058249_)
                                    (if (gx#stx-pair? _hd78998247_)
                                        (let ((_e79028252_
                                               (gx#stx-e _hd78998247_)))
                                          (let ((_lp-hd79038255_
                                                 (##car _e79028252_))
                                                (_lp-tl79048257_
                                                 (##cdr _e79028252_)))
                                            (if (gx#stx-pair? _lp-hd79038255_)
                                                (let ((_e79168260_
                                                       (gx#stx-e
                                                        _lp-hd79038255_)))
                                                  (let ((_hd79178263_
                                                         (##car _e79168260_))
                                                        (_tl79188265_
                                                         (##cdr _e79168260_)))
                                                    (if (gx#identifier?
                                                         _hd79178263_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd79178263_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79188265_)
                        (let ((_e79198268_ (gx#stx-e _tl79188265_)))
                          (let ((_hd79208271_ (##car _e79198268_))
                                (_tl79218273_ (##cdr _e79198268_)))
                            (if (gx#stx-null? _tl79218273_)
                                (_loop79018244_
                                 _lp-tl79048257_
                                 (cons _hd79208271_ _xarg79058249_))
                                (_g78078114_ _g78108117_))))
                        (_g78078114_ _g78108117_))
                    (_g78078114_ _g78108117_))
                (_g78078114_ _g78108117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g78078114_ _g78108117_))))
                                        (let ((_xarg79068276_
                                               (reverse _xarg79058249_)))
                                          (if (gx#stx-null? _tl78768156_)
                                              ((lambda (_L8279_
                                                        _L8280_
                                                        _L8281_
                                                        _L8282_
                                                        _L8283_
                                                        _L8284_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g83278330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g83288332_)
                              (cons _g83278330_ _g83288332_))
                            '()
                            _L8284_)))
                 (if (gx#identifier? _L8283_)
                     (if (_runtime-identifier=?7119_ _L8282_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g83348337_
                                                             _g83358339_)
                                                      (cons _g83348337_
                                                            _g83358339_))
                                                    '()
                                                    _L8284_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g83418344_
                                                             _g83428346_)
                                                      (cons _g83418344_
                                                            _g83428346_))
                                                    '()
                                                    _L8280_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g83488351_
                                                            _g83498353_)
                                                     (cons _g83488351_
                                                           _g83498353_))
                                                   '()
                                                   _L8284_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g83558358_
                                                            _g83568360_)
                                                     (cons _g83558358_
                                                           _g83568360_))
                                                   '()
                                                   _L8280_)))
                                 (if (gx#free-identifier=? _L8283_ _L8279_)
                                     (not (find (lambda (_g83628364_)
                                                  (gx#free-identifier=?
                                                   _g83628364_
                                                   _L8281_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g83668369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g83678371_)
                    (cons _g83668369_ _g83678371_))
                  (cons _L8283_ '())
                  _L8284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g78078114_
                                                      _g78108117_)))
                                               _hd79148239_
                                               _xarg79068276_
                                               _hd78968210_
                                               _hd78878186_
                                               _tl78678129_
                                               _arg78738148_)
                                              (_g78078114_ _g78108117_)))))))
                          (_loop79018244_ _target78988215_ '()))
                        (_g78078114_ _g78108117_))
                    (_g78078114_ _g78108117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78078114_ _g78108117_))
                                                (_g78078114_ _g78108117_))
                                            (_g78078114_ _g78108117_))))
                                    (_g78078114_ _g78108117_))))
                            (_g78078114_ _g78108117_)))))
                  (_g78078114_ _g78108117_))
              (_g78078114_ _g78108117_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78078114_ _g78108117_))))
                                          (_g78078114_ _g78108117_))
                                      (_g78078114_ _g78108117_))
                                  (_g78078114_ _g78108117_))))
                          (_g78078114_ _g78108117_))))
                  (_g78078114_ _g78108117_))
              (_g78078114_ _g78108117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g78078114_ _g78108117_))
                                          (_g78078114_ _g78108117_))
                                      (_g78078114_ _g78108117_))))
                              (_g78078114_ _g78108117_))))
                      (_g78078114_ _g78108117_))
                  (_g78078114_ _g78108117_))
              (_g78078114_ _g78108117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g78078114_ _g78108117_))))
                                      (_g78078114_ _g78108117_)))))))
                  (_loop78688132_ _target78658127_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78078114_ _g78108117_))
                                              (_g78078114_ _g78108117_))))
                                      (_g78078114_ _g78108117_)))))
                           (let ((_g78058568_
                                  (lambda (_g78108377_)
                                    (if (gx#stx-pair? _g78108377_)
                                        (let ((_e78148379_
                                               (gx#stx-e _g78108377_)))
                                          (let ((_hd78158382_
                                                 (##car _e78148379_))
                                                (_tl78168384_
                                                 (##cdr _e78148379_)))
                                            (if (gx#stx-pair/null?
                                                 _hd78158382_)
                                                (if (fx>= (gx#stx-length
                                                           _hd78158382_)
                                                          '0)
                                                    (let ((_g10155_
                                                           (gx#syntax-split-splice
                                                            _hd78158382_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10156_
                                                               (values-count
                                                                _g10155_)))
                                                          (if (not (fx= _g10156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10156_)))
                (let ((_target78178387_ (values-ref _g10155_ 0))
                      (_tl78198389_ (values-ref _g10155_ 1)))
                  (if (gx#stx-null? _tl78198389_)
                      (letrec ((_loop78208392_
                                (lambda (_hd78188395_ _arg78248397_)
                                  (if (gx#stx-pair? _hd78188395_)
                                      (let ((_e78218400_
                                             (gx#stx-e _hd78188395_)))
                                        (let ((_lp-hd78228403_
                                               (##car _e78218400_))
                                              (_lp-tl78238405_
                                               (##cdr _e78218400_)))
                                          (_loop78208392_
                                           _lp-tl78238405_
                                           (cons _lp-hd78228403_
                                                 _arg78248397_))))
                                      (let ((_arg78258408_
                                             (reverse _arg78248397_)))
                                        (if (gx#stx-pair? _tl78168384_)
                                            (let ((_e78268411_
                                                   (gx#stx-e _tl78168384_)))
                                              (let ((_hd78278414_
                                                     (##car _e78268411_))
                                                    (_tl78288416_
                                                     (##cdr _e78268411_)))
                                                (if (gx#stx-pair? _hd78278414_)
                                                    (let ((_e78298419_
                                                           (gx#stx-e
                                                            _hd78278414_)))
                                                      (let ((_hd78308422_
                                                             (##car _e78298419_))
                                                            (_tl78318424_
                                                             (##cdr _e78298419_)))
                                                        (if (gx#identifier?
                                                             _hd78308422_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd78308422_)
                        (if (gx#stx-pair? _tl78318424_)
                            (let ((_e78328427_ (gx#stx-e _tl78318424_)))
                              (let ((_hd78338430_ (##car _e78328427_))
                                    (_tl78348432_ (##cdr _e78328427_)))
                                (if (gx#stx-pair? _hd78338430_)
                                    (let ((_e78358435_
                                           (gx#stx-e _hd78338430_)))
                                      (let ((_hd78368438_ (##car _e78358435_))
                                            (_tl78378440_ (##cdr _e78358435_)))
                                        (if (gx#identifier? _hd78368438_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd78368438_)
                                                (if (gx#stx-pair? _tl78378440_)
                                                    (let ((_e78388443_
                                                           (gx#stx-e
                                                            _tl78378440_)))
                                                      (let ((_hd78398446_
                                                             (##car _e78388443_))
                                                            (_tl78408448_
                                                             (##cdr _e78388443_)))
                                                        (if (gx#stx-null?
                                                             _tl78408448_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78348432_)
                        (if (fx>= (gx#stx-length _tl78348432_) '0)
                            (let ((_g10157_
                                   (gx#syntax-split-splice _tl78348432_ '0)))
                              (begin
                                (let ((_g10158_ (values-count _g10157_)))
                                  (if (not (fx= _g10158_ 2))
                                      (error "Context expects 2 values"
                                             _g10158_)))
                                (let ((_target78418451_
                                       (values-ref _g10157_ 0))
                                      (_tl78438453_ (values-ref _g10157_ 1)))
                                  (if (gx#stx-null? _tl78438453_)
                                      (letrec ((_loop78448456_
                                                (lambda (_hd78428459_
                                                         _xarg78488461_)
                                                  (if (gx#stx-pair?
                                                       _hd78428459_)
                                                      (let ((_e78458464_
                                                             (gx#stx-e
                                                              _hd78428459_)))
                                                        (let ((_lp-hd78468467_
                                                               (##car _e78458464_))
                                                              (_lp-tl78478469_
                                                               (##cdr _e78458464_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd78468467_)
                                                              (let ((_e78508472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd78468467_)))
                        (let ((_hd78518475_ (##car _e78508472_))
                              (_tl78528477_ (##cdr _e78508472_)))
                          (if (gx#identifier? _hd78518475_)
                              (if (gx#stx-eq? '%#ref _hd78518475_)
                                  (if (gx#stx-pair? _tl78528477_)
                                      (let ((_e78538480_
                                             (gx#stx-e _tl78528477_)))
                                        (let ((_hd78548483_
                                               (##car _e78538480_))
                                              (_tl78558485_
                                               (##cdr _e78538480_)))
                                          (if (gx#stx-null? _tl78558485_)
                                              (_loop78448456_
                                               _lp-tl78478469_
                                               (cons _hd78548483_
                                                     _xarg78488461_))
                                              (_g78068374_ _g78108377_))))
                                      (_g78068374_ _g78108377_))
                                  (_g78068374_ _g78108377_))
                              (_g78068374_ _g78108377_))))
                      (_g78068374_ _g78108377_))))
              (let ((_xarg78498488_ (reverse _xarg78488461_)))
                (if (gx#stx-null? _tl78288416_)
                    ((lambda (_L8491_ _L8492_ _L8493_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g85218524_ _g85228526_)
                                            (cons _g85218524_ _g85228526_))
                                          '()
                                          _L8493_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g85288531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85298533_)
                    (cons _g85288531_ _g85298533_))
                  '()
                  _L8493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g85358538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85368540_)
                    (cons _g85358538_ _g85368540_))
                  '()
                  _L8491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g85428545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85438547_)
                   (cons _g85428545_ _g85438547_))
                 '()
                 _L8493_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g85498552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85508554_)
                   (cons _g85498552_ _g85508554_))
                 '()
                 _L8491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g85568558_)
                                                    (gx#free-identifier=?
                                                     _g85568558_
                                                     _L8492_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g85608563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g85618565_)
                      (cons _g85608563_ _g85618565_))
                    '()
                    _L8493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g78068374_ _g78108377_)))
                     _xarg78498488_
                     _hd78398446_
                     _arg78258408_)
                    (_g78068374_ _g78108377_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop78448456_ _target78418451_ '()))
                                      (_g78068374_ _g78108377_)))))
                            (_g78068374_ _g78108377_))
                        (_g78068374_ _g78108377_))
                    (_g78068374_ _g78108377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78068374_ _g78108377_))
                                                (_g78068374_ _g78108377_))
                                            (_g78068374_ _g78108377_))))
                                    (_g78068374_ _g78108377_))))
                            (_g78068374_ _g78108377_))
                        (_g78068374_ _g78108377_))
                    (_g78068374_ _g78108377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78068374_
                                                     _g78108377_))))
                                            (_g78068374_ _g78108377_)))))))
                        (_loop78208392_ _target78178387_ '()))
                      (_g78068374_ _g78108377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78068374_ _g78108377_))
                                                (_g78068374_ _g78108377_))))
                                        (_g78068374_ _g78108377_)))))
                             (_g78058568_ _form7804_))))))))))
          (let ((_dispatch-case-e7121_
                 (lambda (_hd7265_ _body7266_)
                   (let ((_form7268_ (cons _hd7265_ (cons _body7266_ '()))))
                     (let ((_g72727396_
                            (lambda (_g72737393_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g72737393_))))
                       (let ((_g72717514_
                              (lambda (_g72737399_)
                                (if (gx#stx-pair? _g72737399_)
                                    (let ((_e73627401_ (gx#stx-e _g72737399_)))
                                      (let ((_hd73637404_ (##car _e73627401_))
                                            (_tl73647406_ (##cdr _e73627401_)))
                                        (if (gx#stx-pair? _tl73647406_)
                                            (let ((_e73657409_
                                                   (gx#stx-e _tl73647406_)))
                                              (let ((_hd73667412_
                                                     (##car _e73657409_))
                                                    (_tl73677414_
                                                     (##cdr _e73657409_)))
                                                (if (gx#stx-pair? _hd73667412_)
                                                    (let ((_e73687417_
                                                           (gx#stx-e
                                                            _hd73667412_)))
                                                      (let ((_hd73697420_
                                                             (##car _e73687417_))
                                                            (_tl73707422_
                                                             (##cdr _e73687417_)))
                                                        (if (gx#identifier?
                                                             _hd73697420_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd73697420_)
                        (if (gx#stx-pair? _tl73707422_)
                            (let ((_e73717425_ (gx#stx-e _tl73707422_)))
                              (let ((_hd73727428_ (##car _e73717425_))
                                    (_tl73737430_ (##cdr _e73717425_)))
                                (if (gx#stx-pair? _hd73727428_)
                                    (let ((_e73747433_
                                           (gx#stx-e _hd73727428_)))
                                      (let ((_hd73757436_ (##car _e73747433_))
                                            (_tl73767438_ (##cdr _e73747433_)))
                                        (if (gx#identifier? _hd73757436_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd73757436_)
                                                (if (gx#stx-pair? _tl73767438_)
                                                    (let ((_e73777441_
                                                           (gx#stx-e
                                                            _tl73767438_)))
                                                      (let ((_hd73787444_
                                                             (##car _e73777441_))
                                                            (_tl73797446_
                                                             (##cdr _e73777441_)))
                                                        (if (gx#stx-null?
                                                             _tl73797446_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73737430_)
                        (let ((_e73807449_ (gx#stx-e _tl73737430_)))
                          (let ((_hd73817452_ (##car _e73807449_))
                                (_tl73827454_ (##cdr _e73807449_)))
                            (if (gx#stx-pair? _hd73817452_)
                                (let ((_e73837457_ (gx#stx-e _hd73817452_)))
                                  (let ((_hd73847460_ (##car _e73837457_))
                                        (_tl73857462_ (##cdr _e73837457_)))
                                    (if (gx#identifier? _hd73847460_)
                                        (if (gx#stx-eq? '%#ref _hd73847460_)
                                            (if (gx#stx-pair? _tl73857462_)
                                                (let ((_e73867465_
                                                       (gx#stx-e
                                                        _tl73857462_)))
                                                  (let ((_hd73877468_
                                                         (##car _e73867465_))
                                                        (_tl73887470_
                                                         (##cdr _e73867465_)))
                                                    (if (gx#stx-null?
                                                         _tl73887470_)
                                                        (if (gx#stx-pair?
                                                             _tl73827454_)
                                                            (let ((_e73897473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl73827454_)))
                      (let ((_hd73907476_ (##car _e73897473_))
                            (_tl73917478_ (##cdr _e73897473_)))
                        (if (gx#stx-null? _tl73917478_)
                            (if (gx#stx-null? _tl73677414_)
                                ((lambda (_L7481_ _L7482_ _L7483_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7481_ '()))))
                                 _hd73877468_
                                 _hd73787444_
                                 _hd73637404_)
                                (_g72727396_ _g72737399_))
                            (_g72727396_ _g72737399_))))
                    (_g72727396_ _g72737399_))
                (_g72727396_ _g72737399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g72727396_ _g72737399_))
                                            (_g72727396_ _g72737399_))
                                        (_g72727396_ _g72737399_))))
                                (_g72727396_ _g72737399_))))
                        (_g72727396_ _g72737399_))
                    (_g72727396_ _g72737399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72727396_ _g72737399_))
                                                (_g72727396_ _g72737399_))
                                            (_g72727396_ _g72737399_))))
                                    (_g72727396_ _g72737399_))))
                            (_g72727396_ _g72737399_))
                        (_g72727396_ _g72737399_))
                    (_g72727396_ _g72737399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72727396_
                                                     _g72737399_))))
                                            (_g72727396_ _g72737399_))))
                                    (_g72727396_ _g72737399_)))))
                         (let ((_g72707650_
                                (lambda (_g72737517_)
                                  (if (gx#stx-pair? _g72737517_)
                                      (let ((_e73237519_
                                             (gx#stx-e _g72737517_)))
                                        (let ((_hd73247522_
                                               (##car _e73237519_))
                                              (_tl73257524_
                                               (##cdr _e73237519_)))
                                          (if (gx#stx-pair/null? _hd73247522_)
                                              (if (fx>= (gx#stx-length
                                                         _hd73247522_)
                                                        '0)
                                                  (let ((_g10145_
                                                         (gx#syntax-split-splice
                                                          _hd73247522_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10146_
                                                             (values-count
                                                              _g10145_)))
                                                        (if (not (fx= _g10146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10146_)))
              (let ((_target73267527_ (values-ref _g10145_ 0))
                    (_tl73287529_ (values-ref _g10145_ 1)))
                (letrec ((_loop73297532_
                          (lambda (_hd73277535_ _arg73337537_)
                            (if (gx#stx-pair? _hd73277535_)
                                (let ((_e73307540_ (gx#stx-e _hd73277535_)))
                                  (let ((_lp-hd73317543_ (##car _e73307540_))
                                        (_lp-tl73327545_ (##cdr _e73307540_)))
                                    (_loop73297532_
                                     _lp-tl73327545_
                                     (cons _lp-hd73317543_ _arg73337537_))))
                                (let ((_arg73347548_ (reverse _arg73337537_)))
                                  (if (gx#stx-pair? _tl73257524_)
                                      (let ((_e73357551_
                                             (gx#stx-e _tl73257524_)))
                                        (let ((_hd73367554_
                                               (##car _e73357551_))
                                              (_tl73377556_
                                               (##cdr _e73357551_)))
                                          (if (gx#stx-pair? _hd73367554_)
                                              (let ((_e73387559_
                                                     (gx#stx-e _hd73367554_)))
                                                (let ((_hd73397562_
                                                       (##car _e73387559_))
                                                      (_tl73407564_
                                                       (##cdr _e73387559_)))
                                                  (if (gx#identifier?
                                                       _hd73397562_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd73397562_)
                                                          (if (gx#stx-pair?
                                                               _tl73407564_)
                                                              (let ((_e73417567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl73407564_)))
                        (let ((_hd73427570_ (##car _e73417567_))
                              (_tl73437572_ (##cdr _e73417567_)))
                          (if (gx#stx-pair? _hd73427570_)
                              (let ((_e73447575_ (gx#stx-e _hd73427570_)))
                                (let ((_hd73457578_ (##car _e73447575_))
                                      (_tl73467580_ (##cdr _e73447575_)))
                                  (if (gx#identifier? _hd73457578_)
                                      (if (gx#stx-eq? '%#ref _hd73457578_)
                                          (if (gx#stx-pair? _tl73467580_)
                                              (let ((_e73477583_
                                                     (gx#stx-e _tl73467580_)))
                                                (let ((_hd73487586_
                                                       (##car _e73477583_))
                                                      (_tl73497588_
                                                       (##cdr _e73477583_)))
                                                  (if (gx#stx-null?
                                                       _tl73497588_)
                                                      (if (gx#stx-pair?
                                                           _tl73437572_)
                                                          (let ((_e73507591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl73437572_)))
                    (let ((_hd73517594_ (##car _e73507591_))
                          (_tl73527596_ (##cdr _e73507591_)))
                      (if (gx#stx-pair? _hd73517594_)
                          (let ((_e73537599_ (gx#stx-e _hd73517594_)))
                            (let ((_hd73547602_ (##car _e73537599_))
                                  (_tl73557604_ (##cdr _e73537599_)))
                              (if (gx#identifier? _hd73547602_)
                                  (if (gx#stx-eq? '%#ref _hd73547602_)
                                      (if (gx#stx-pair? _tl73557604_)
                                          (let ((_e73567607_
                                                 (gx#stx-e _tl73557604_)))
                                            (let ((_hd73577610_
                                                   (##car _e73567607_))
                                                  (_tl73587612_
                                                   (##cdr _e73567607_)))
                                              (if (gx#stx-null? _tl73587612_)
                                                  (if (gx#stx-null?
                                                       _tl73377556_)
                                                      ((lambda (_L7615_
                                                                _L7616_
                                                                _L7617_
                                                                _L7618_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7615_ '()))))
               _hd73577610_
               _hd73487586_
               _tl73287529_
               _arg73347548_)
              (_g72717514_ _g72737517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72717514_ _g72737517_))))
                                          (_g72717514_ _g72737517_))
                                      (_g72717514_ _g72737517_))
                                  (_g72717514_ _g72737517_))))
                          (_g72717514_ _g72737517_))))
                  (_g72717514_ _g72737517_))
              (_g72717514_ _g72737517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72717514_ _g72737517_))
                                          (_g72717514_ _g72737517_))
                                      (_g72717514_ _g72737517_))))
                              (_g72717514_ _g72737517_))))
                      (_g72717514_ _g72737517_))
                  (_g72717514_ _g72737517_))
              (_g72717514_ _g72737517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72717514_ _g72737517_))))
                                      (_g72717514_ _g72737517_)))))))
                  (_loop73297532_ _target73267527_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72717514_ _g72737517_))
                                              (_g72717514_ _g72737517_))))
                                      (_g72717514_ _g72737517_)))))
                           (let ((_g72697798_
                                  (lambda (_g72737653_)
                                    (if (gx#stx-pair? _g72737653_)
                                        (let ((_e72777655_
                                               (gx#stx-e _g72737653_)))
                                          (let ((_hd72787658_
                                                 (##car _e72777655_))
                                                (_tl72797660_
                                                 (##cdr _e72777655_)))
                                            (if (gx#stx-pair/null?
                                                 _hd72787658_)
                                                (if (fx>= (gx#stx-length
                                                           _hd72787658_)
                                                          '0)
                                                    (let ((_g10147_
                                                           (gx#syntax-split-splice
                                                            _hd72787658_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10148_
                                                               (values-count
                                                                _g10147_)))
                                                          (if (not (fx= _g10148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10148_)))
                (let ((_target72807663_ (values-ref _g10147_ 0))
                      (_tl72827665_ (values-ref _g10147_ 1)))
                  (if (gx#stx-null? _tl72827665_)
                      (letrec ((_loop72837668_
                                (lambda (_hd72817671_ _arg72877673_)
                                  (if (gx#stx-pair? _hd72817671_)
                                      (let ((_e72847676_
                                             (gx#stx-e _hd72817671_)))
                                        (let ((_lp-hd72857679_
                                               (##car _e72847676_))
                                              (_lp-tl72867681_
                                               (##cdr _e72847676_)))
                                          (_loop72837668_
                                           _lp-tl72867681_
                                           (cons _lp-hd72857679_
                                                 _arg72877673_))))
                                      (let ((_arg72887684_
                                             (reverse _arg72877673_)))
                                        (if (gx#stx-pair? _tl72797660_)
                                            (let ((_e72897687_
                                                   (gx#stx-e _tl72797660_)))
                                              (let ((_hd72907690_
                                                     (##car _e72897687_))
                                                    (_tl72917692_
                                                     (##cdr _e72897687_)))
                                                (if (gx#stx-pair? _hd72907690_)
                                                    (let ((_e72927695_
                                                           (gx#stx-e
                                                            _hd72907690_)))
                                                      (let ((_hd72937698_
                                                             (##car _e72927695_))
                                                            (_tl72947700_
                                                             (##cdr _e72927695_)))
                                                        (if (gx#identifier?
                                                             _hd72937698_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd72937698_)
                        (if (gx#stx-pair? _tl72947700_)
                            (let ((_e72957703_ (gx#stx-e _tl72947700_)))
                              (let ((_hd72967706_ (##car _e72957703_))
                                    (_tl72977708_ (##cdr _e72957703_)))
                                (if (gx#stx-pair? _hd72967706_)
                                    (let ((_e72987711_
                                           (gx#stx-e _hd72967706_)))
                                      (let ((_hd72997714_ (##car _e72987711_))
                                            (_tl73007716_ (##cdr _e72987711_)))
                                        (if (gx#identifier? _hd72997714_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd72997714_)
                                                (if (gx#stx-pair? _tl73007716_)
                                                    (let ((_e73017719_
                                                           (gx#stx-e
                                                            _tl73007716_)))
                                                      (let ((_hd73027722_
                                                             (##car _e73017719_))
                                                            (_tl73037724_
                                                             (##cdr _e73017719_)))
                                                        (if (gx#stx-null?
                                                             _tl73037724_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72977708_)
                        (if (fx>= (gx#stx-length _tl72977708_) '0)
                            (let ((_g10149_
                                   (gx#syntax-split-splice _tl72977708_ '0)))
                              (begin
                                (let ((_g10150_ (values-count _g10149_)))
                                  (if (not (fx= _g10150_ 2))
                                      (error "Context expects 2 values"
                                             _g10150_)))
                                (let ((_target73047727_
                                       (values-ref _g10149_ 0))
                                      (_tl73067729_ (values-ref _g10149_ 1)))
                                  (if (gx#stx-null? _tl73067729_)
                                      (letrec ((_loop73077732_
                                                (lambda (_hd73057735_
                                                         _xarg73117737_)
                                                  (if (gx#stx-pair?
                                                       _hd73057735_)
                                                      (let ((_e73087740_
                                                             (gx#stx-e
                                                              _hd73057735_)))
                                                        (let ((_lp-hd73097743_
                                                               (##car _e73087740_))
                                                              (_lp-tl73107745_
                                                               (##cdr _e73087740_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd73097743_)
                                                              (let ((_e73137748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd73097743_)))
                        (let ((_hd73147751_ (##car _e73137748_))
                              (_tl73157753_ (##cdr _e73137748_)))
                          (if (gx#identifier? _hd73147751_)
                              (if (gx#stx-eq? '%#ref _hd73147751_)
                                  (if (gx#stx-pair? _tl73157753_)
                                      (let ((_e73167756_
                                             (gx#stx-e _tl73157753_)))
                                        (let ((_hd73177759_
                                               (##car _e73167756_))
                                              (_tl73187761_
                                               (##cdr _e73167756_)))
                                          (if (gx#stx-null? _tl73187761_)
                                              (_loop73077732_
                                               _lp-tl73107745_
                                               (cons _hd73177759_
                                                     _xarg73117737_))
                                              (_g72707650_ _g72737653_))))
                                      (_g72707650_ _g72737653_))
                                  (_g72707650_ _g72737653_))
                              (_g72707650_ _g72737653_))))
                      (_g72707650_ _g72737653_))))
              (let ((_xarg73127764_ (reverse _xarg73117737_)))
                (if (gx#stx-null? _tl72917692_)
                    ((lambda (_L7767_ _L7768_ _L7769_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7768_ '()))))
                     _xarg73127764_
                     _hd73027722_
                     _arg72887684_)
                    (_g72707650_ _g72737653_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop73077732_ _target73047727_ '()))
                                      (_g72707650_ _g72737653_)))))
                            (_g72707650_ _g72737653_))
                        (_g72707650_ _g72737653_))
                    (_g72707650_ _g72737653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72707650_ _g72737653_))
                                                (_g72707650_ _g72737653_))
                                            (_g72707650_ _g72737653_))))
                                    (_g72707650_ _g72737653_))))
                            (_g72707650_ _g72737653_))
                        (_g72707650_ _g72737653_))
                    (_g72707650_ _g72737653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72707650_
                                                     _g72737653_))))
                                            (_g72707650_ _g72737653_)))))))
                        (_loop72837668_ _target72807663_ '()))
                      (_g72707650_ _g72737653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72707650_ _g72737653_))
                                                (_g72707650_ _g72737653_))))
                                        (_g72707650_ _g72737653_)))))
                             (_g72697798_ _form7268_)))))))))
            (let ((_generate17122_
                   (lambda (_args7253_ _arglen7254_ _hd7255_ _body7256_)
                     (let ((_len7258_ (gx#stx-length _hd7255_)))
                       (let ((_condition7260_
                              (if (gx#stx-list? _hd7255_)
                                  (cons 'fx=
                                        (cons _arglen7254_
                                              (cons _len7258_ '())))
                                  (if (> _len7258_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7254_
                                                  (cons _len7258_ '())))
                                      '#t))))
                         (let ((_dispatch7262_
                                (if (_dispatch-case?7120_ _hd7255_ _body7256_)
                                    (_dispatch-case-e7121_ _hd7255_ _body7256_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7255_)
                                                (cons (gxc#compile-e
                                                       _body7256_)
                                                      '()))))))
                           (let ()
                             (cons _condition7260_
                                   (cons (cons 'apply
                                               (cons _dispatch7262_
                                                     (cons _args7253_ '())))
                                         '())))))))))
              (let ((_g71247152_
                     (lambda (_g71257149_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g71257149_))))
                (let ((_g71237250_
                       (lambda (_g71257155_)
                         (if (gx#stx-pair? _g71257155_)
                             (let ((_e71287157_ (gx#stx-e _g71257155_)))
                               (let ((_hd71297160_ (##car _e71287157_))
                                     (_tl71307162_ (##cdr _e71287157_)))
                                 (if (gx#stx-pair/null? _tl71307162_)
                                     (if (fx>= (gx#stx-length _tl71307162_) '0)
                                         (let ((_g10143_
                                                (gx#syntax-split-splice
                                                 _tl71307162_
                                                 '0)))
                                           (begin
                                             (let ((_g10144_
                                                    (values-count _g10143_)))
                                               (if (not (fx= _g10144_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10144_)))
                                             (let ((_target71317165_
                                                    (values-ref _g10143_ 0))
                                                   (_tl71337167_
                                                    (values-ref _g10143_ 1)))
                                               (if (gx#stx-null? _tl71337167_)
                                                   (letrec ((_loop71347170_
                                                             (lambda (_hd71327173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body71387175_
                              _hd71397177_)
                       (if (gx#stx-pair? _hd71327173_)
                           (let ((_e71357180_ (gx#stx-e _hd71327173_)))
                             (let ((_lp-hd71367183_ (##car _e71357180_))
                                   (_lp-tl71377185_ (##cdr _e71357180_)))
                               (if (gx#stx-pair? _lp-hd71367183_)
                                   (let ((_e71427188_
                                          (gx#stx-e _lp-hd71367183_)))
                                     (let ((_hd71437191_ (##car _e71427188_))
                                           (_tl71447193_ (##cdr _e71427188_)))
                                       (if (gx#stx-pair? _tl71447193_)
                                           (let ((_e71457196_
                                                  (gx#stx-e _tl71447193_)))
                                             (let ((_hd71467199_
                                                    (##car _e71457196_))
                                                   (_tl71477201_
                                                    (##cdr _e71457196_)))
                                               (if (gx#stx-null? _tl71477201_)
                                                   (_loop71347170_
                                                    _lp-tl71377185_
                                                    (cons _hd71467199_
                                                          _body71387175_)
                                                    (cons _hd71437191_
                                                          _hd71397177_))
                                                   (_g71247152_ _g71257155_))))
                                           (_g71247152_ _g71257155_))))
                                   (_g71247152_ _g71257155_))))
                           (let ((_body71407204_ (reverse _body71387175_))
                                 (_hd71417206_ (reverse _hd71397177_)))
                             ((lambda (_L7209_ _L7210_)
                                (let ((_args7226_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7227_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args7226_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7226_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '"No clause matching arguments"
                                  (cons _args7226_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g72287231_
                                                          _g72297233_)
                                                   (_generate17122_
                                                    _args7226_
                                                    _arglen7227_
                                                    _g72287231_
                                                    _g72297233_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g72357238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g72367240_)
                     (cons _g72357238_ _g72367240_))
                   '()
                   _L7210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g72427245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g72437247_)
                     (cons _g72427245_ _g72437247_))
                   '()
                   _L7209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body71407204_
                              _hd71417206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop71347170_
                                                      _target71317165_
                                                      '()
                                                      '()))
                                                   (_g71247152_
                                                    _g71257155_)))))
                                         (_g71247152_ _g71257155_))
                                     (_g71247152_ _g71257155_))))
                             (_g71247152_ _g71257155_)))))
                  (_g71237250_ _stx7117_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6797
      (lambda (_stx6799_ _compiled-body?6800_)
        (let ((_generate-simple6802_
               (lambda (_hd7104_ _body7105_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7104_
                  _body7105_
                  _compiled-body?6800_))))
          (let ((_generate-values-post6804_
                 (lambda (_post6876_ _body6877_)
                   ((letrec ((_lp6879_
                              (lambda (_rest6881_ _body6882_)
                                (let ((_rest68836891_ _rest6881_))
                                  (let ((_E68866895_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest68836891_))))
                                    (let ((_else68856899_
                                           (lambda () _body6882_)))
                                      (let ((_K68876905_
                                             (lambda (_rest6902_ _bind6903_)
                                               (_lp6879_
                                                _rest6902_
                                                (cons 'let
                                                      (cons _bind6903_
                                                            (cons _body6882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest68836891_)
                                            (let ((_hd68886908_
                                                   (##car _rest68836891_))
                                                  (_tl68896910_
                                                   (##cdr _rest68836891_)))
                                              (let ((_bind6913_ _hd68886908_))
                                                (let ((_rest6915_
                                                       _tl68896910_))
                                                  (_K68876905_
                                                   _rest6915_
                                                   _bind6913_))))
                                            (_else68856899_)))))))))
                      _lp6879_)
                    _post6876_
                    _body6877_))))
            (let ((_generate-values-check6805_
                   (lambda (_check6873_ _body6874_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6874_ '())
                                   (reverse _check6873_))))))
              (let ((_generate-values6803_
                     (lambda (_hd6917_ _body6918_)
                       ((letrec ((_lp6920_
                                  (lambda (_rest6922_
                                           _bind6923_
                                           _check6924_
                                           _post6925_)
                                    (let ((_g69286939_
                                           (lambda (_g69296936_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69296936_))))
                                      (let ((_g69276953_
                                             (lambda (_g69296942_)
                                               ((lambda ()
                                                  (let ((_body6946_
                                                         (if _compiled-body?6800_
                                                             _body6918_
                                                             (gxc#compile-e
                                                              _body6918_))))
                                                    (let ((_body6948_
                                                           (_generate-values-post6804_
                                                            _post6925_
                                                            _body6946_)))
                                                      (let ((_body6950_
                                                             (_generate-values-check6805_
                                                              _check6924_
                                                              _body6948_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind6923_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6950_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g69267101_
                                               (lambda (_g69296956_)
                                                 (if (gx#stx-pair? _g69296956_)
                                                     (let ((_e69326958_
                                                            (gx#stx-e
                                                             _g69296956_)))
                                                       (let ((_hd69336961_
                                                              (##car _e69326958_))
                                                             (_tl69346963_
                                                              (##cdr _e69326958_)))
                                                         ((lambda (_L6966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6967_)
                    (let ((_g69827007_
                           (lambda (_g69837004_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g69837004_))))
                      (let ((_g69817051_
                             (lambda (_g69837010_)
                               (if (gx#stx-pair? _g69837010_)
                                   (let ((_e69977012_ (gx#stx-e _g69837010_)))
                                     (let ((_hd69987015_ (##car _e69977012_))
                                           (_tl69997017_ (##cdr _e69977012_)))
                                       (if (gx#stx-pair? _tl69997017_)
                                           (let ((_e70007020_
                                                  (gx#stx-e _tl69997017_)))
                                             (let ((_hd70017023_
                                                    (##car _e70007020_))
                                                   (_tl70027025_
                                                    (##cdr _e70007020_)))
                                               (if (gx#stx-null? _tl70027025_)
                                                   ((lambda (_L7028_ _L7029_)
                                                      (let ((_vals7042_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7044_
                                                               (gxc#compile-e
                                                                _L7028_)))
                                                          (let ((_check-values7046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7042_
                          _L7029_)))
                    (let ((_refs7048_
                           (gxc#generate-runtime-let-values-bind
                            _vals7042_
                            _L7029_)))
                      (let ()
                        (_lp6920_
                         _L6966_
                         (cons (cons _vals7042_ (cons _expr7044_ '()))
                               _bind6923_)
                         (cons _check-values7046_ _check6924_)
                         (cons _refs7048_ _post6925_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd70017023_
                                                    _hd69987015_)
                                                   (_g69827007_ _g69837010_))))
                                           (_g69827007_ _g69837010_))))
                                   (_g69827007_ _g69837010_)))))
                        (let ((_g69807098_
                               (lambda (_g69837054_)
                                 (if (gx#stx-pair? _g69837054_)
                                     (let ((_e69867056_
                                            (gx#stx-e _g69837054_)))
                                       (let ((_hd69877059_ (##car _e69867056_))
                                             (_tl69887061_
                                              (##cdr _e69867056_)))
                                         (if (gx#stx-pair? _hd69877059_)
                                             (let ((_e69897064_
                                                    (gx#stx-e _hd69877059_)))
                                               (let ((_hd69907067_
                                                      (##car _e69897064_))
                                                     (_tl69917069_
                                                      (##cdr _e69897064_)))
                                                 (if (gx#stx-null?
                                                      _tl69917069_)
                                                     (if (gx#stx-pair?
                                                          _tl69887061_)
                                                         (let ((_e69927072_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl69887061_)))
                   (let ((_hd69937075_ (##car _e69927072_))
                         (_tl69947077_ (##cdr _e69927072_)))
                     (if (gx#stx-null? _tl69947077_)
                         ((lambda (_L7080_ _L7081_)
                            (let ((_eid7095_
                                   (gxc#generate-runtime-binding-id* _L7081_))
                                  (_expr7096_ (gxc#compile-e _L7080_)))
                              (_lp6920_
                               _L6966_
                               (cons (cons _eid7095_ (cons _expr7096_ '()))
                                     _bind6923_)
                               _check6924_
                               _post6925_)))
                          _hd69937075_
                          _hd69907067_)
                         (_g69817051_ _g69837054_))))
                 (_g69817051_ _g69837054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69817051_
                                                      _g69837054_))))
                                             (_g69817051_ _g69837054_))))
                                     (_g69817051_ _g69837054_)))))
                          (_g69807098_ _L6967_)))))
                  _tl69346963_
                  _hd69336961_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69276953_
                                                      _g69296956_)))))
                                          (_g69267101_ _rest6922_)))))))
                          _lp6920_)
                        _hd6917_
                        '()
                        '()
                        '()))))
                (let ((_g68076824_
                       (lambda (_g68086821_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g68086821_))))
                  (let ((_g68066870_
                         (lambda (_g68086827_)
                           (if (gx#stx-pair? _g68086827_)
                               (let ((_e68116829_ (gx#stx-e _g68086827_)))
                                 (let ((_hd68126832_ (##car _e68116829_))
                                       (_tl68136834_ (##cdr _e68116829_)))
                                   (if (gx#stx-pair? _tl68136834_)
                                       (let ((_e68146837_
                                              (gx#stx-e _tl68136834_)))
                                         (let ((_hd68156840_
                                                (##car _e68146837_))
                                               (_tl68166842_
                                                (##cdr _e68146837_)))
                                           (if (gx#stx-pair? _tl68166842_)
                                               (let ((_e68176845_
                                                      (gx#stx-e _tl68166842_)))
                                                 (let ((_hd68186848_
                                                        (##car _e68176845_))
                                                       (_tl68196850_
                                                        (##cdr _e68176845_)))
                                                   (if (gx#stx-null?
                                                        _tl68196850_)
                                                       ((lambda (_L6853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6854_)
                  (if (gxc#generate-runtime-simple-let? _L6854_)
                      (_generate-simple6802_ _L6854_ _L6853_)
                      (_generate-values6803_ _L6854_ _L6853_)))
                _hd68186848_
                _hd68156840_)
               (_g68076824_ _g68086827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68076824_ _g68086827_))))
                                       (_g68076824_ _g68086827_))))
                               (_g68076824_ _g68086827_)))))
                    (_g68066870_ _stx6799_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7110_)
          (let ((_compiled-body?7112_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6797
             _stx7110_
             _compiled-body?7112_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10160_
          (let ((_g10159_ (length _g10160_)))
            (cond ((fx= _g10159_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10160_))
                  ((fx= _g10159_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6797
                          _g10160_))
                  (else (error "No clause matching arguments" _g10160_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6698_ _hd6699_)
      ((letrec ((_lp6701_
                 (lambda (_rest6703_ _k6704_ _r6705_)
                   (let ((_g67106726_
                          (lambda (_g67116723_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g67116723_))))
                     (let ((_g67096733_
                            (lambda (_g67116729_)
                              ((lambda () (reverse _r6705_))))))
                       (let ((_g67086749_
                              (lambda (_g67116736_)
                                ((lambda (_L6738_)
                                   (if (gx#identifier? _L6738_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L6738_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals6698_ (cons _k6704_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r6705_)
                                       (_g67096733_ _g67116736_)))
                                 _g67116736_))))
                         (let ((_g67076773_
                                (lambda (_g67116752_)
                                  (if (gx#stx-pair? _g67116752_)
                                      (let ((_e67186754_
                                             (gx#stx-e _g67116752_)))
                                        (let ((_hd67196757_
                                               (##car _e67186754_))
                                              (_tl67206759_
                                               (##cdr _e67186754_)))
                                          ((lambda (_L6762_ _L6763_)
                                             (_lp6701_
                                              _L6762_
                                              (fx+ _k6704_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6763_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6698_ (cons _k6704_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6705_)))
                                           _tl67206759_
                                           _hd67196757_)))
                                      (_g67086749_ _g67116752_)))))
                           (let ((_g67066795_
                                  (lambda (_g67116776_)
                                    (if (gx#stx-pair? _g67116776_)
                                        (let ((_e67136778_
                                               (gx#stx-e _g67116776_)))
                                          (let ((_hd67146781_
                                                 (##car _e67136778_))
                                                (_tl67156783_
                                                 (##cdr _e67136778_)))
                                            (if (gx#stx-datum? _hd67146781_)
                                                (if (equal? (gx#stx-e
                                                             _hd67146781_)
                                                            '#f)
                                                    ((lambda (_L6786_)
                                                       (_lp6701_
                                                        _L6786_
                                                        (fx+ _k6704_ '1)
                                                        _r6705_))
                                                     _tl67156783_)
                                                    (_g67076773_ _g67116776_))
                                                (_g67076773_ _g67116776_))))
                                        (_g67076773_ _g67116776_)))))
                             (_g67066795_ _rest6703_)))))))))
         _lp6701_)
       _hd6699_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6376
      (lambda (_stx6378_ _compiled-body?6379_)
        (let ((_generate-simple6381_
               (lambda (_hd6685_ _body6686_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6685_
                  _body6686_
                  _compiled-body?6379_))))
          (let ((_generate-values-check6383_
                 (lambda (_check6459_ _body6460_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6460_ '())
                                 (reverse _check6459_))))))
            (let ((_generate-values-post6384_
                   (lambda (_post6452_ _body6453_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6453_ '())
                                   (map (lambda (_g64546456_)
                                          (cons 'set! _g64546456_))
                                        (reverse _post6452_)))))))
              (let ((_generate-values6382_
                     (lambda (_hd6462_ _body6463_)
                       ((letrec ((_lp6465_
                                  (lambda (_rest6467_
                                           _bind6468_
                                           _check6469_
                                           _post6470_)
                                    (let ((_g64736484_
                                           (lambda (_g64746481_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g64746481_))))
                                      (let ((_g64726498_
                                             (lambda (_g64746487_)
                                               ((lambda ()
                                                  (let ((_body6491_
                                                         (if _compiled-body?6379_
                                                             _body6463_
                                                             (gxc#compile-e
                                                              _body6463_))))
                                                    (let ((_body6493_
                                                           (_generate-values-post6384_
                                                            _post6470_
                                                            _body6491_)))
                                                      (let ((_body6495_
                                                             (_generate-values-check6383_
                                                              _check6469_
                                                              _body6493_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6468_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6495_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g64716682_
                                               (lambda (_g64746501_)
                                                 (if (gx#stx-pair? _g64746501_)
                                                     (let ((_e64776503_
                                                            (gx#stx-e
                                                             _g64746501_)))
                                                       (let ((_hd64786506_
                                                              (##car _e64776503_))
                                                             (_tl64796508_
                                                              (##cdr _e64776503_)))
                                                         ((lambda (_L6511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6512_)
                    (let ((_g65276552_
                           (lambda (_g65286549_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g65286549_))))
                      (let ((_g65266632_
                             (lambda (_g65286555_)
                               (if (gx#stx-pair? _g65286555_)
                                   (let ((_e65426557_ (gx#stx-e _g65286555_)))
                                     (let ((_hd65436560_ (##car _e65426557_))
                                           (_tl65446562_ (##cdr _e65426557_)))
                                       (if (gx#stx-pair? _tl65446562_)
                                           (let ((_e65456565_
                                                  (gx#stx-e _tl65446562_)))
                                             (let ((_hd65466568_
                                                    (##car _e65456565_))
                                                   (_tl65476570_
                                                    (##cdr _e65456565_)))
                                               (if (gx#stx-null? _tl65476570_)
                                                   ((lambda (_L6573_ _L6574_)
                                                      (let ((_vals6587_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6589_
                                                               (gxc#compile-e
                                                                _L6573_)))
                                                          (let ((_check-values6591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6587_
                          _L6574_)))
                    (let ((_refs6593_
                           (gxc#generate-runtime-let-values-bind
                            _vals6587_
                            _L6574_)))
                      (let ()
                        (_lp6465_
                         _L6511_
                         (foldl1 cons
                                 (cons (cons _vals6587_ (cons _expr6589_ '()))
                                       _bind6468_)
                                 (map (lambda (_e65956597_)
                                        (let ((_g65996608_ _e65956597_))
                                          (let ((_E66016612_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g65996608_))))
                                            (let ((_K66026617_
                                                   (lambda (_eid6615_)
                                                     (cons _eid6615_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g65996608_)
                                                  (let ((_hd66036620_
                                                         (##car _g65996608_))
                                                        (_tl66046622_
                                                         (##cdr _g65996608_)))
                                                    (let ((_eid6625_
                                                           _hd66036620_))
                                                      (if (##pair? _tl66046622_)
                                                          (let ((_hd66056627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl66046622_))
                        (_tl66066629_ (##cdr _tl66046622_)))
                    (if (##null? _tl66066629_)
                        (_K66026617_ _eid6625_)
                        (_E66016612_)))
                  (_E66016612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E66016612_))))))
                                      _refs6593_))
                         (cons _check-values6591_ _check6469_)
                         (foldl1 cons _refs6593_ _post6470_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd65466568_
                                                    _hd65436560_)
                                                   (_g65276552_ _g65286555_))))
                                           (_g65276552_ _g65286555_))))
                                   (_g65276552_ _g65286555_)))))
                        (let ((_g65256679_
                               (lambda (_g65286635_)
                                 (if (gx#stx-pair? _g65286635_)
                                     (let ((_e65316637_
                                            (gx#stx-e _g65286635_)))
                                       (let ((_hd65326640_ (##car _e65316637_))
                                             (_tl65336642_
                                              (##cdr _e65316637_)))
                                         (if (gx#stx-pair? _hd65326640_)
                                             (let ((_e65346645_
                                                    (gx#stx-e _hd65326640_)))
                                               (let ((_hd65356648_
                                                      (##car _e65346645_))
                                                     (_tl65366650_
                                                      (##cdr _e65346645_)))
                                                 (if (gx#stx-null?
                                                      _tl65366650_)
                                                     (if (gx#stx-pair?
                                                          _tl65336642_)
                                                         (let ((_e65376653_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65336642_)))
                   (let ((_hd65386656_ (##car _e65376653_))
                         (_tl65396658_ (##cdr _e65376653_)))
                     (if (gx#stx-null? _tl65396658_)
                         ((lambda (_L6661_ _L6662_)
                            (let ((_eid6676_
                                   (gxc#generate-runtime-binding-id* _L6662_))
                                  (_expr6677_ (gxc#compile-e _L6661_)))
                              (_lp6465_
                               _L6511_
                               (cons (cons _eid6676_ (cons _expr6677_ '()))
                                     _bind6468_)
                               _check6469_
                               _post6470_)))
                          _hd65386656_
                          _hd65356648_)
                         (_g65266632_ _g65286635_))))
                 (_g65266632_ _g65286635_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65266632_
                                                      _g65286635_))))
                                             (_g65266632_ _g65286635_))))
                                     (_g65266632_ _g65286635_)))))
                          (_g65256679_ _L6512_)))))
                  _tl64796508_
                  _hd64786506_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g64726498_
                                                      _g64746501_)))))
                                          (_g64716682_ _rest6467_)))))))
                          _lp6465_)
                        _hd6462_
                        '()
                        '()
                        '()))))
                (let ((_g63866403_
                       (lambda (_g63876400_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g63876400_))))
                  (let ((_g63856449_
                         (lambda (_g63876406_)
                           (if (gx#stx-pair? _g63876406_)
                               (let ((_e63906408_ (gx#stx-e _g63876406_)))
                                 (let ((_hd63916411_ (##car _e63906408_))
                                       (_tl63926413_ (##cdr _e63906408_)))
                                   (if (gx#stx-pair? _tl63926413_)
                                       (let ((_e63936416_
                                              (gx#stx-e _tl63926413_)))
                                         (let ((_hd63946419_
                                                (##car _e63936416_))
                                               (_tl63956421_
                                                (##cdr _e63936416_)))
                                           (if (gx#stx-pair? _tl63956421_)
                                               (let ((_e63966424_
                                                      (gx#stx-e _tl63956421_)))
                                                 (let ((_hd63976427_
                                                        (##car _e63966424_))
                                                       (_tl63986429_
                                                        (##cdr _e63966424_)))
                                                   (if (gx#stx-null?
                                                        _tl63986429_)
                                                       ((lambda (_L6432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6433_)
                  (if (gxc#generate-runtime-simple-let? _L6433_)
                      (_generate-simple6381_ _L6433_ _L6432_)
                      (_generate-values6382_ _L6433_ _L6432_)))
                _hd63976427_
                _hd63946419_)
               (_g63866403_ _g63876406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63866403_ _g63876406_))))
                                       (_g63866403_ _g63876406_))))
                               (_g63866403_ _g63876406_)))))
                    (_g63856449_ _stx6378_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6691_)
          (let ((_compiled-body?6693_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6376
             _stx6691_
             _compiled-body?6693_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10162_
          (let ((_g10161_ (length _g10162_)))
            (cond ((fx= _g10161_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10162_))
                  ((fx= _g10161_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6376
                          _g10162_))
                  (else (error "No clause matching arguments" _g10162_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5497_)
      (let ((_collect-closures5500_
             (lambda (_forms6318_)
               (map (lambda (_e63196321_)
                      (let ((_g63236332_ _e63196321_))
                        (let ((_E63256336_
                               (lambda ()
                                 (error '"No clause matching" _g63236332_))))
                          (let ((_K63266341_
                                 (lambda (_expr6339_)
                                   (gxc#collect-expression-refs _expr6339_))))
                            (if (##pair? _g63236332_)
                                (let ((_hd63276344_ (##car _g63236332_))
                                      (_tl63286346_ (##cdr _g63236332_)))
                                  (if (##pair? _tl63286346_)
                                      (let ((_hd63296349_ (##car _tl63286346_))
                                            (_tl63306351_
                                             (##cdr _tl63286346_)))
                                        (let ((_expr6354_ _hd63296349_))
                                          (if (##null? _tl63306351_)
                                              (_K63266341_ _expr6354_)
                                              (_E63256336_))))
                                      (_E63256336_)))
                                (_E63256336_))))))
                    _forms6318_))))
        (let ((_collect-bindings5501_
               (lambda (_forms6242_)
                 (map (lambda (_e62436245_)
                        (let ((_g62476256_ _e62436245_))
                          (let ((_E62496260_
                                 (lambda ()
                                   (error '"No clause matching" _g62476256_))))
                            (let ((_K62506303_
                                   (lambda (_bind6263_)
                                     ((letrec ((_lp6265_
                                                (lambda (_rest6267_ _r6268_)
                                                  (let ((_rest62696277_
                                                         _rest6267_))
                                                    (let ((_E62726281_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest62696277_))))
              (let ((_else62716285_
                     (lambda ()
                       (if (gx#identifier? _rest6267_)
                           (cons _rest6267_ _r6268_)
                           _r6268_))))
                (let ((_K62736291_
                       (lambda (_rest6288_ _id6289_)
                         (if (gx#identifier? _id6289_)
                             (_lp6265_
                              _rest6288_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6289_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6268_))
                             (_lp6265_ _rest6288_ _r6268_)))))
                  (if (##pair? _rest62696277_)
                      (let ((_hd62746294_ (##car _rest62696277_))
                            (_tl62756296_ (##cdr _rest62696277_)))
                        (let ((_id6299_ _hd62746294_))
                          (let ((_rest6301_ _tl62756296_))
                            (_K62736291_ _rest6301_ _id6299_))))
                      (_else62716285_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6265_)
                                      _bind6263_
                                      '()))))
                              (if (##pair? _g62476256_)
                                  (let ((_hd62516306_ (##car _g62476256_))
                                        (_tl62526308_ (##cdr _g62476256_)))
                                    (let ((_bind6311_ _hd62516306_))
                                      (if (##pair? _tl62526308_)
                                          (let ((_hd62536313_
                                                 (##car _tl62526308_))
                                                (_tl62546315_
                                                 (##cdr _tl62526308_)))
                                            (if (##null? _tl62546315_)
                                                (_K62506303_ _bind6311_)
                                                (_E62496260_)))
                                          (_E62496260_))))
                                  (_E62496260_))))))
                      _forms6242_))))
          (let ((_closure-reference?5505_
                 (lambda (_closure5794_ _bindings5795_)
                   (ormap1 (lambda (_g57965798_)
                             (table-ref _closure5794_ _g57965798_ '#f))
                           _bindings5795_))))
            (let ((_is-effect-expr?5507_
                   (lambda (_expr5705_)
                     (let ((_g57075717_
                            (lambda (_g57085714_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57085714_))))
                       (let ((_g57065740_
                              (lambda (_g57085720_)
                                (if (gx#stx-pair? _g57085720_)
                                    (let ((_e57105722_ (gx#stx-e _g57085720_)))
                                      (let ((_hd57115725_ (##car _e57105722_))
                                            (_tl57125727_ (##cdr _e57105722_)))
                                        ((lambda (_L5730_)
                                           (not (memq (gx#stx-e _L5730_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd57115725_)))
                                    (_g57075717_ _g57085720_)))))
                         (_g57065740_ _expr5705_))))))
              (let ((_is-lambda-expr?5508_
                     (lambda (_expr5667_)
                       (let ((_g56695679_
                              (lambda (_g56705676_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g56705676_))))
                         (let ((_g56685702_
                                (lambda (_g56705682_)
                                  (if (gx#stx-pair? _g56705682_)
                                      (let ((_e56725684_
                                             (gx#stx-e _g56705682_)))
                                        (let ((_hd56735687_
                                               (##car _e56725684_))
                                              (_tl56745689_
                                               (##cdr _e56725684_)))
                                          ((lambda (_L5692_)
                                             (memq (gx#stx-e _L5692_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd56735687_)))
                                      (_g56695679_ _g56705682_)))))
                           (_g56685702_ _expr5667_))))))
                (let ((_lift-rec5504_
                       (lambda (_forms5801_)
                         ((letrec ((_lp5803_
                                    (lambda (_rest5805_
                                             _pre5806_
                                             _bind5807_
                                             _init5808_)
                                      (let ((_rest58095817_ _rest5805_))
                                        (let ((_E58125821_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest58095817_))))
                                          (let ((_else58115825_
                                                 (lambda ()
                                                   (values (reverse _pre5806_)
                                                           (reverse _bind5807_)
                                                           (reverse _init5808_)))))
                                            (let ((_K58136016_
                                                   (lambda (_rest5828_
                                                            _bind-hd5829_)
                                                     (let ((_g58335868_
                                                            (lambda (_g58345865_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g58345865_))))
                                                       (let ((_g58325925_
                                                              (lambda (_g58345871_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g58345871_)
                            (let ((_e58585873_ (gx#stx-e _g58345871_)))
                              (let ((_hd58595876_ (##car _e58585873_))
                                    (_tl58605878_ (##cdr _e58585873_)))
                                (if (gx#stx-pair? _tl58605878_)
                                    (let ((_e58615881_
                                           (gx#stx-e _tl58605878_)))
                                      (let ((_hd58625884_ (##car _e58615881_))
                                            (_tl58635886_ (##cdr _e58615881_)))
                                        (if (gx#stx-null? _tl58635886_)
                                            ((lambda (_L5889_ _L5890_)
                                               (let ((_vals5909_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr5911_
                                                        (gxc#compile-e
                                                         _L5889_)))
                                                   (let ((_check-values5913_
                                                          (gxc#generate-runtime-check-values
                                                           _vals5909_
                                                           _L5890_)))
                                                     (let ((_refs5915_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals5909_
                                                             _L5890_)))
                                                       (let ()
                                                         (_lp5803_
                                                          _rest5828_
                                                          (foldl1 (lambda (_ref5918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r5919_)
                            (cons (cons (car _ref5918_) (cons '#!void '()))
                                  _r5919_))
                          _pre5806_
                          _refs5915_)
                  _bind5807_
                  (cons (cons 'let
                              (cons (cons (cons _vals5909_
                                                (cons _expr5911_ '()))
                                          '())
                                    (cons _check-values5913_
                                          (cons (map (lambda (_g59205922_)
                                                       (cons 'set!
                                                             _g59205922_))
                                                     _refs5915_)
                                                '()))))
                        _init5808_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd58625884_
                                             _hd58595876_)
                                            (_g58335868_ _g58345871_))))
                                    (_g58335868_ _g58345871_))))
                            (_g58335868_ _g58345871_)))))
                 (let ((_g58315971_
                        (lambda (_g58345928_)
                          (if (gx#stx-pair? _g58345928_)
                              (let ((_e58475930_ (gx#stx-e _g58345928_)))
                                (let ((_hd58485933_ (##car _e58475930_))
                                      (_tl58495935_ (##cdr _e58475930_)))
                                  (if (gx#stx-pair? _hd58485933_)
                                      (let ((_e58505938_
                                             (gx#stx-e _hd58485933_)))
                                        (let ((_hd58515941_
                                               (##car _e58505938_))
                                              (_tl58525943_
                                               (##cdr _e58505938_)))
                                          (if (gx#stx-null? _tl58525943_)
                                              (if (gx#stx-pair? _tl58495935_)
                                                  (let ((_e58535946_
                                                         (gx#stx-e
                                                          _tl58495935_)))
                                                    (let ((_hd58545949_
                                                           (##car _e58535946_))
                                                          (_tl58555951_
                                                           (##cdr _e58535946_)))
                                                      (if (gx#stx-null?
                                                           _tl58555951_)
                                                          ((lambda (_L5954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5955_)
                     (let ((_eid5969_
                            (gxc#generate-runtime-binding-id _L5955_)))
                       (if (_is-lambda-expr?5508_ _L5954_)
                           (_lp5803_
                            _rest5828_
                            _pre5806_
                            (cons (cons _eid5969_
                                        (cons (gxc#compile-e _L5954_) '()))
                                  _bind5807_)
                            _init5808_)
                           (_lp5803_
                            _rest5828_
                            (cons (cons _eid5969_ (cons '#!void '()))
                                  _pre5806_)
                            _bind5807_
                            (cons (cons 'set!
                                        (cons _eid5969_
                                              (cons (gxc#compile-e _L5954_)
                                                    '())))
                                  _init5808_)))))
                   _hd58545949_
                   _hd58515941_)
                  (_g58325925_ _g58345928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g58325925_ _g58345928_))
                                              (_g58325925_ _g58345928_))))
                                      (_g58325925_ _g58345928_))))
                              (_g58325925_ _g58345928_)))))
                   (let ((_g58306013_
                          (lambda (_g58345974_)
                            (if (gx#stx-pair? _g58345974_)
                                (let ((_e58365976_ (gx#stx-e _g58345974_)))
                                  (let ((_hd58375979_ (##car _e58365976_))
                                        (_tl58385981_ (##cdr _e58365976_)))
                                    (if (gx#stx-pair? _hd58375979_)
                                        (let ((_e58395984_
                                               (gx#stx-e _hd58375979_)))
                                          (let ((_hd58405987_
                                                 (##car _e58395984_))
                                                (_tl58415989_
                                                 (##cdr _e58395984_)))
                                            (if (gx#stx-datum? _hd58405987_)
                                                (if (equal? (gx#stx-e
                                                             _hd58405987_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl58415989_)
                                                        (if (gx#stx-pair?
                                                             _tl58385981_)
                                                            (let ((_e58425992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl58385981_)))
                      (let ((_hd58435995_ (##car _e58425992_))
                            (_tl58445997_ (##cdr _e58425992_)))
                        (if (gx#stx-null? _tl58445997_)
                            ((lambda (_L6000_)
                               (_lp5803_
                                _rest5828_
                                _pre5806_
                                _bind5807_
                                (cons (gxc#compile-e _L6000_) _init5808_)))
                             _hd58435995_)
                            (_g58315971_ _g58345974_))))
                    (_g58315971_ _g58345974_))
                (_g58315971_ _g58345974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g58315971_ _g58345974_))
                                                (_g58315971_ _g58345974_))))
                                        (_g58315971_ _g58345974_))))
                                (_g58315971_ _g58345974_)))))
                     (_g58306013_ _bind-hd5829_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest58095817_)
                                                  (let ((_hd58146019_
                                                         (##car _rest58095817_))
                                                        (_tl58156021_
                                                         (##cdr _rest58095817_)))
                                                    (let ((_bind-hd6024_
                                                           _hd58146019_))
                                                      (let ((_rest6026_
                                                             _tl58156021_))
                                                        (_K58136016_
                                                         _rest6026_
                                                         _bind-hd6024_))))
                                                  (_else58115825_)))))))))
                            _lp5803_)
                          _forms5801_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5506_
                         (lambda (_hd-bind5743_)
                           (let ((_g57455758_
                                  (lambda (_g57465755_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g57465755_))))
                             (let ((_g57445791_
                                    (lambda (_g57465761_)
                                      (if (gx#stx-pair? _g57465761_)
                                          (let ((_e57485763_
                                                 (gx#stx-e _g57465761_)))
                                            (let ((_hd57495766_
                                                   (##car _e57485763_))
                                                  (_tl57505768_
                                                   (##cdr _e57485763_)))
                                              (if (gx#stx-pair? _tl57505768_)
                                                  (let ((_e57515771_
                                                         (gx#stx-e
                                                          _tl57505768_)))
                                                    (let ((_hd57525774_
                                                           (##car _e57515771_))
                                                          (_tl57535776_
                                                           (##cdr _e57515771_)))
                                                      (if (gx#stx-null?
                                                           _tl57535776_)
                                                          ((lambda (_L5779_)
                                                             (_is-effect-expr?5507_
                                                              _L5779_))
                                                           _hd57525774_)
                                                          (_g57455758_
                                                           _g57465761_))))
                                                  (_g57455758_ _g57465761_))))
                                          (_g57455758_ _g57465761_)))))
                               (_g57445791_ _hd-bind5743_))))))
                    (let ((_lift-pre5502_
                           (lambda (_hd6135_ _bindings6136_ _closures6137_)
                             ((letrec ((_lp6139_
                                        (lambda (_rest-forms6141_
                                                 _rest-bindings6142_
                                                 _rest-closures6143_
                                                 _post-forms6144_
                                                 _post-bindings6145_
                                                 _post-closures6146_
                                                 _pre-forms6147_
                                                 _lifted?6148_)
                                          (let ((_rest-forms61496165_
                                                 _rest-forms6141_)
                                                (_rest-bindings61506167_
                                                 _rest-bindings6142_)
                                                (_rest-closures61516169_
                                                 _rest-closures6143_))
                                            (let ((_E61546173_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms61496165_
                                                            _rest-bindings61506167_
                                                            _rest-closures61516169_))))
                                              (let ((_else61536177_
                                                     (lambda ()
                                                       (if _lifted?6148_
                                                           (_lp6139_
                                                            (reverse _post-forms6144_)
                                                            (reverse _post-bindings6145_)
                                                            (reverse _post-closures6146_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6147_
                                                            '#f)
                                                           (values (reverse _pre-forms6147_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6144_)
                           (reverse _post-bindings6145_)
                           (reverse _post-closures6146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K61556230_
                                                       (lambda (_rest-forms6180_
                                                                _form6181_)
                                                         (let ((_K61566218_
                                                                (lambda (_rest-bindings6183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6184_)
                          (let ((_K61576206_
                                 (lambda (_rest-closures6186_ _closure6187_)
                                   (if (let ((_$e6189_
                                              (_closure-reference?5505_
                                               _closure6187_
                                               _bindings6184_)))
                                         (if _$e6189_
                                             _$e6189_
                                             (let ((_$e6196_
                                                    (ormap1 (lambda (_g61916193_)
                                                              (_closure-reference?5505_
                                                               _closure6187_
                                                               _g61916193_))
                                                            _rest-bindings6183_)))
                                               (if _$e6196_
                                                   _$e6196_
                                                   (let ((_$e6203_
                                                          (ormap1 (lambda (_g61986200_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5505_
                             _closure6187_
                             _g61986200_))
                          _post-bindings6145_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6203_
                                                         _$e6203_
                                                         (if (_is-effect-bind?5506_
                                                              _form6181_)
                                                             (find _is-effect-bind?5506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6144_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6139_
                                        _rest-forms6180_
                                        _rest-bindings6183_
                                        _rest-closures6186_
                                        (cons _form6181_ _post-forms6144_)
                                        (cons _bindings6184_
                                              _post-bindings6145_)
                                        (cons _closure6187_
                                              _post-closures6146_)
                                        _pre-forms6147_
                                        _lifted?6148_)
                                       (_lp6139_
                                        _rest-forms6180_
                                        _rest-bindings6183_
                                        _rest-closures6186_
                                        _post-forms6144_
                                        _post-bindings6145_
                                        _post-closures6146_
                                        (cons _form6181_ _pre-forms6147_)
                                        '#t)))))
                            (if (##pair? _rest-closures61516169_)
                                (let ((_hd61586209_
                                       (##car _rest-closures61516169_))
                                      (_tl61596211_
                                       (##cdr _rest-closures61516169_)))
                                  (let ((_closure6214_ _hd61586209_))
                                    (let ((_rest-closures6216_ _tl61596211_))
                                      (_K61576206_
                                       _rest-closures6216_
                                       _closure6214_))))
                                (_else61536177_))))))
                   (if (##pair? _rest-bindings61506167_)
                       (let ((_hd61606221_ (##car _rest-bindings61506167_))
                             (_tl61616223_ (##cdr _rest-bindings61506167_)))
                         (let ((_bindings6226_ _hd61606221_))
                           (let ((_rest-bindings6228_ _tl61616223_))
                             (_K61566218_
                              _rest-bindings6228_
                              _bindings6226_))))
                       (_else61536177_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms61496165_)
                                                      (let ((_hd61626233_
                                                             (##car _rest-forms61496165_))
                                                            (_tl61636235_
                                                             (##cdr _rest-forms61496165_)))
                                                        (let ((_form6238_
                                                               _hd61626233_))
                                                          (let ((_rest-forms6240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl61636235_))
                    (_K61556230_ _rest-forms6240_ _form6238_))))
              (_else61536177_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6139_)
                              _hd6135_
                              _bindings6136_
                              _closures6137_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5503_
                             (lambda (_hd6028_ _bindings6029_ _closures6030_)
                               ((letrec ((_lp6032_
                                          (lambda (_rest-forms6034_
                                                   _rest-bindings6035_
                                                   _rest-closures6036_
                                                   _pre-forms6037_
                                                   _pre-bindings6038_
                                                   _pre-closures6039_
                                                   _post-forms6040_
                                                   _lifted?6041_)
                                            (let ((_rest-forms60426058_
                                                   _rest-forms6034_)
                                                  (_rest-bindings60436060_
                                                   _rest-bindings6035_)
                                                  (_rest-closures60446062_
                                                   _rest-closures6036_))
                                              (let ((_E60476066_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms60426058_
                                                              _rest-bindings60436060_
                                                              _rest-closures60446062_))))
                                                (let ((_else60466070_
                                                       (lambda ()
                                                         (if _lifted?6041_
                                                             (_lp6032_
                                                              (reverse _pre-forms6037_)
                                                              (reverse _pre-bindings6038_)
                                                              (reverse _pre-closures6039_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6040_
                                                              '#f)
                                                             (values _post-forms6040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6037_
                             _pre-bindings6038_
                             _pre-closures6039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K60486123_
                                                         (lambda (_rest-forms6073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6074_)
                   (let ((_K60496111_
                          (lambda (_rest-bindings6076_ _bindings6077_)
                            (let ((_K60506099_
                                   (lambda (_rest-closures6079_ _closure6080_)
                                     (if (let ((_$e6082_
                                                (_closure-reference?5505_
                                                 _closure6080_
                                                 _bindings6077_)))
                                           (if _$e6082_
                                               _$e6082_
                                               (let ((_$e6089_
                                                      (ormap1 (lambda (_g60846086_)
                                                                (_closure-reference?5505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g60846086_
                         _bindings6077_))
                      _rest-closures6079_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6089_
                                                     _$e6089_
                                                     (let ((_$e6096_
                                                            (ormap1 (lambda (_g60916093_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5505_
                               _g60916093_
                               _bindings6077_))
                            _pre-closures6039_)))
               (if _$e6096_
                   _$e6096_
                   (if (_is-effect-bind?5506_ _form6074_)
                       (find _is-effect-bind?5506_ _pre-forms6037_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6032_
                                          _rest-forms6073_
                                          _rest-bindings6076_
                                          _rest-closures6079_
                                          (cons _form6074_ _pre-forms6037_)
                                          (cons _bindings6077_
                                                _pre-bindings6038_)
                                          (cons _closure6080_
                                                _pre-closures6039_)
                                          _post-forms6040_
                                          _lifted?6041_)
                                         (_lp6032_
                                          _rest-forms6073_
                                          _rest-bindings6076_
                                          _rest-closures6079_
                                          _pre-forms6037_
                                          _pre-bindings6038_
                                          _pre-closures6039_
                                          (cons _form6074_ _post-forms6040_)
                                          '#t)))))
                              (if (##pair? _rest-closures60446062_)
                                  (let ((_hd60516102_
                                         (##car _rest-closures60446062_))
                                        (_tl60526104_
                                         (##cdr _rest-closures60446062_)))
                                    (let ((_closure6107_ _hd60516102_))
                                      (let ((_rest-closures6109_ _tl60526104_))
                                        (_K60506099_
                                         _rest-closures6109_
                                         _closure6107_))))
                                  (_else60466070_))))))
                     (if (##pair? _rest-bindings60436060_)
                         (let ((_hd60536114_ (##car _rest-bindings60436060_))
                               (_tl60546116_ (##cdr _rest-bindings60436060_)))
                           (let ((_bindings6119_ _hd60536114_))
                             (let ((_rest-bindings6121_ _tl60546116_))
                               (_K60496111_
                                _rest-bindings6121_
                                _bindings6119_))))
                         (_else60466070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms60426058_)
                                                        (let ((_hd60556126_
                                                               (##car _rest-forms60426058_))
                                                              (_tl60566128_
                                                               (##cdr _rest-forms60426058_)))
                                                          (let ((_form6131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd60556126_))
                    (let ((_rest-forms6133_ _tl60566128_))
                      (_K60486123_ _rest-forms6133_ _form6131_))))
                (_else60466070_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6032_)
                                (reverse _hd6028_)
                                (reverse _bindings6029_)
                                (reverse _closures6030_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5499_
                               (lambda (_forms6356_)
                                 (let ((_closures6358_
                                        (_collect-closures5500_ _forms6356_)))
                                   (let ((_bindings6360_
                                          (_collect-bindings5501_
                                           _forms6356_)))
                                     (let ((_g10165_
                                            (_lift-pre5502_
                                             _forms6356_
                                             _bindings6360_
                                             _closures6358_)))
                                       (begin
                                         (let ((_g10166_
                                                (values-count _g10165_)))
                                           (if (not (fx= _g10166_ 4))
                                               (error "Context expects 4 values"
                                                      _g10166_)))
                                         (let ((_pre-bind6362_
                                                (values-ref _g10165_ 0))
                                               (_forms6363_
                                                (values-ref _g10165_ 1))
                                               (_bindings6364_
                                                (values-ref _g10165_ 2))
                                               (_closures6365_
                                                (values-ref _g10165_ 3)))
                                           (let ((_g10167_
                                                  (_lift-post5503_
                                                   _forms6363_
                                                   _bindings6364_
                                                   _closures6365_)))
                                             (begin
                                               (let ((_g10168_
                                                      (values-count _g10167_)))
                                                 (if (not (fx= _g10168_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10168_)))
                                               (let ((_post-bind6367_
                                                      (values-ref _g10167_ 0))
                                                     (_forms6368_
                                                      (values-ref _g10167_ 1))
                                                     (_bindings6369_
                                                      (values-ref _g10167_ 2))
                                                     (_closures6370_
                                                      (values-ref _g10167_ 3)))
                                                 (let ((_g10169_
                                                        (_lift-rec5504_
                                                         _forms6368_)))
                                                   (begin
                                                     (let ((_g10170_
                                                            (values-count
                                                             _g10169_)))
                                                       (if (not (fx= _g10170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10170_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6372_
                                                            (values-ref
                                                             _g10169_
                                                             0))
                                                           (_rec-bind6373_
                                                            (values-ref
                                                             _g10169_
                                                             1))
                                                           (_rec-init6374_
                                                            (values-ref
                                                             _g10169_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6372_
                         _rec-bind6373_
                         _rec-init6374_
                         _post-bind6367_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5509_
                                    (lambda (_hd5596_ _body5597_)
                                      (let ((_hd55985606_ _hd5596_))
                                        (let ((_E56015610_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd55985606_))))
                                          (let ((_else56005614_
                                                 (lambda () _body5597_)))
                                            (let ((_K56025655_
                                                   (lambda (_rest5617_
                                                            _bind5618_)
                                                     (let ((_bind56195628_
                                                            _bind5618_))
                                                       (let ((_E56215632_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind56195628_))))
                 (let ((_K56225638_
                        (lambda (_expr5635_ _hd5636_)
                          (if (gx#stx-ormap gx#identifier? _hd5636_)
                              (gxc#generate-runtime-let-values%__opt-lambda6797
                               (cons '%#let-values
                                     (cons (cons _bind5618_ '())
                                           (cons (_generate-let*5509_
                                                  _rest5617_
                                                  _body5597_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5635_)
                                          (cons (_generate-let*5509_
                                                 _rest5617_
                                                 _body5597_)
                                                '())))))))
                   (if (##pair? _bind56195628_)
                       (let ((_hd56235641_ (##car _bind56195628_))
                             (_tl56245643_ (##cdr _bind56195628_)))
                         (let ((_hd5646_ _hd56235641_))
                           (if (##pair? _tl56245643_)
                               (let ((_hd56255648_ (##car _tl56245643_))
                                     (_tl56265650_ (##cdr _tl56245643_)))
                                 (let ((_expr5653_ _hd56255648_))
                                   (if (##null? _tl56265650_)
                                       (_K56225638_ _expr5653_ _hd5646_)
                                       (_E56215632_))))
                               (_E56215632_))))
                       (_E56215632_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd55985606_)
                                                  (let ((_hd56035658_
                                                         (##car _hd55985606_))
                                                        (_tl56045660_
                                                         (##cdr _hd55985606_)))
                                                    (let ((_bind5663_
                                                           _hd56035658_))
                                                      (let ((_rest5665_
                                                             _tl56045660_))
                                                        (_K56025655_
                                                         _rest5665_
                                                         _bind5663_))))
                                                  (_else56005614_)))))))))
                            (let ((_g55115528_
                                   (lambda (_g55125525_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g55125525_))))
                              (let ((_g55105593_
                                     (lambda (_g55125531_)
                                       (if (gx#stx-pair? _g55125531_)
                                           (let ((_e55155533_
                                                  (gx#stx-e _g55125531_)))
                                             (let ((_hd55165536_
                                                    (##car _e55155533_))
                                                   (_tl55175538_
                                                    (##cdr _e55155533_)))
                                               (if (gx#stx-pair? _tl55175538_)
                                                   (let ((_e55185541_
                                                          (gx#stx-e
                                                           _tl55175538_)))
                                                     (let ((_hd55195544_
                                                            (##car _e55185541_))
                                                           (_tl55205546_
                                                            (##cdr _e55185541_)))
                                                       (if (gx#stx-pair?
                                                            _tl55205546_)
                                                           (let ((_e55215549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl55205546_)))
                     (let ((_hd55225552_ (##car _e55215549_))
                           (_tl55235554_ (##cdr _e55215549_)))
                       (if (gx#stx-null? _tl55235554_)
                           ((lambda (_L5557_ _L5558_)
                              (let ((_g10163_ (_linearize5499_ _L5558_)))
                                (begin
                                  (let ((_g10164_ (values-count _g10163_)))
                                    (if (not (fx= _g10164_ 5))
                                        (error "Context expects 5 values"
                                               _g10164_)))
                                  (let ((_pre5574_ (values-ref _g10163_ 0))
                                        (_rec-pre5575_ (values-ref _g10163_ 1))
                                        (_rec-bind5576_
                                         (values-ref _g10163_ 2))
                                        (_rec-init5577_
                                         (values-ref _g10163_ 3))
                                        (_post5578_ (values-ref _g10163_ 4)))
                                    (let ((_body5580_ (gxc#compile-e _L5557_)))
                                      (let ((_body5582_
                                             (if (null? _post5578_)
                                                 _body5580_
                                                 (_generate-let*5509_
                                                  _post5578_
                                                  _body5580_))))
                                        (let ((_body5584_
                                               (if (null? _rec-init5577_)
                                                   _body5582_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5582_ '())
                         _rec-init5577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5586_
                                                 (if (null? _rec-bind5576_)
                                                     _body5584_
                                                     (cons 'letrec
                                                           (cons _rec-bind5576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5584_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5588_
                                                   (if (null? _rec-pre5575_)
                                                       _body5586_
                                                       (cons 'let
                                                             (cons _rec-pre5575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5586_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5590_
                                                     (if (null? _pre5574_)
                                                         _body5588_
                                                         (_generate-let*5509_
                                                          _pre5574_
                                                          _body5588_))))
                                                (let () _body5590_)))))))))))
                            _hd55225552_
                            _hd55195544_)
                           (_g55115528_ _g55125531_))))
                   (_g55115528_ _g55125531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g55115528_ _g55125531_))))
                                           (_g55115528_ _g55125531_)))))
                                (_g55105593_ _stx5497_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5390_)
      ((letrec ((_lp5392_
                 (lambda (_rest5394_)
                   (let ((_g53985419_
                          (lambda (_g53995416_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g53995416_))))
                     (let ((_g53975426_
                            (lambda (_g53995422_) ((lambda () '#f)))))
                       (let ((_g53965433_
                              (lambda (_g53995429_)
                                (if (gx#stx-null? _g53995429_)
                                    ((lambda () '#t))
                                    (_g53975426_ _g53995429_)))))
                         (let ((_g53955494_
                                (lambda (_g53995436_)
                                  (if (gx#stx-pair? _g53995436_)
                                      (let ((_e54035438_
                                             (gx#stx-e _g53995436_)))
                                        (let ((_hd54045441_
                                               (##car _e54035438_))
                                              (_tl54055443_
                                               (##cdr _e54035438_)))
                                          (if (gx#stx-pair? _hd54045441_)
                                              (let ((_e54065446_
                                                     (gx#stx-e _hd54045441_)))
                                                (let ((_hd54075449_
                                                       (##car _e54065446_))
                                                      (_tl54085451_
                                                       (##cdr _e54065446_)))
                                                  (if (gx#stx-pair?
                                                       _hd54075449_)
                                                      (let ((_e54095454_
                                                             (gx#stx-e
                                                              _hd54075449_)))
                                                        (let ((_hd54105457_
                                                               (##car _e54095454_))
                                                              (_tl54115459_
                                                               (##cdr _e54095454_)))
                                                          (if (gx#stx-null?
                                                               _tl54115459_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl54085451_)
                          (let ((_e54125462_ (gx#stx-e _tl54085451_)))
                            (let ((_hd54135465_ (##car _e54125462_))
                                  (_tl54145467_ (##cdr _e54125462_)))
                              (if (gx#stx-null? _tl54145467_)
                                  ((lambda (_L5470_ _L5471_ _L5472_)
                                     (_lp5392_ _L5470_))
                                   _tl54055443_
                                   _hd54135465_
                                   _hd54105457_)
                                  (_g53965433_ _g53995436_))))
                          (_g53965433_ _g53995436_))
                      (_g53965433_ _g53995436_))))
              (_g53965433_ _g53995436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g53965433_ _g53995436_))))
                                      (_g53965433_ _g53995436_)))))
                           (_g53955494_ _rest5394_))))))))
         _lp5392_)
       _hd5390_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5314_ _hd5315_ _body5316_ _compiled-body?5317_)
      (let ((_generate15319_
             (lambda (_bind5321_)
               (let ((_g53235340_
                      (lambda (_g53245337_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g53245337_))))
                 (let ((_g53225387_
                        (lambda (_g53245343_)
                          (if (gx#stx-pair? _g53245343_)
                              (let ((_e53275345_ (gx#stx-e _g53245343_)))
                                (let ((_hd53285348_ (##car _e53275345_))
                                      (_tl53295350_ (##cdr _e53275345_)))
                                  (if (gx#stx-pair? _hd53285348_)
                                      (let ((_e53305353_
                                             (gx#stx-e _hd53285348_)))
                                        (let ((_hd53315356_
                                               (##car _e53305353_))
                                              (_tl53325358_
                                               (##cdr _e53305353_)))
                                          (if (gx#stx-null? _tl53325358_)
                                              (if (gx#stx-pair? _tl53295350_)
                                                  (let ((_e53335361_
                                                         (gx#stx-e
                                                          _tl53295350_)))
                                                    (let ((_hd53345364_
                                                           (##car _e53335361_))
                                                          (_tl53355366_
                                                           (##cdr _e53335361_)))
                                                      (if (gx#stx-null?
                                                           _tl53355366_)
                                                          ((lambda (_L5369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5370_)
                     (cons (gxc#generate-runtime-binding-id* _L5370_)
                           (cons (gxc#compile-e _L5369_) '())))
                   _hd53345364_
                   _hd53315356_)
                  (_g53235340_ _g53245343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g53235340_ _g53245343_))
                                              (_g53235340_ _g53245343_))))
                                      (_g53235340_ _g53245343_))))
                              (_g53235340_ _g53245343_)))))
                   (_g53225387_ _bind5321_))))))
        (cons _form5314_
              (cons (map _generate15319_ _hd5315_)
                    (cons (if _compiled-body?5317_
                              _body5316_
                              (gxc#compile-e _body5316_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5225_)
      (letrec ((_generate15227_
                (lambda (_datum5279_)
                  (if (let ((_$e5281_ (null? _datum5279_)))
                        (if _$e5281_
                            _$e5281_
                            (let ((_$e5284_ (interned-symbol? _datum5279_)))
                              (if _$e5284_
                                  _$e5284_
                                  (gx#self-quoting? _datum5279_)))))
                      _datum5279_
                      (if (uninterned-symbol? _datum5279_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9108
                           _datum5279_
                           '#t)
                          (if (pair? _datum5279_)
                              (cons (_generate15227_ (car _datum5279_))
                                    (_generate15227_ (cdr _datum5279_)))
                              (if (box? _datum5279_)
                                  (box (_generate15227_ (unbox _datum5279_)))
                                  (if (vector? _datum5279_)
                                      (vector-map _generate15227_ _datum5279_)
                                      (if (let ((_$e5287_
                                                 (s8vector? _datum5279_)))
                                            (if _$e5287_
                                                _$e5287_
                                                (let ((_$e5290_
                                                       (u8vector?
                                                        _datum5279_)))
                                                  (if _$e5290_
                                                      _$e5290_
                                                      (let ((_$e5293_
                                                             (s16vector?
                                                              _datum5279_)))
                                                        (if _$e5293_
                                                            _$e5293_
                                                            (let ((_$e5296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5279_)))
                      (if _$e5296_
                          _$e5296_
                          (let ((_$e5299_ (s32vector? _datum5279_)))
                            (if _$e5299_
                                _$e5299_
                                (let ((_$e5302_ (u32vector? _datum5279_)))
                                  (if _$e5302_
                                      _$e5302_
                                      (let ((_$e5305_
                                             (s64vector? _datum5279_)))
                                        (if _$e5305_
                                            _$e5305_
                                            (let ((_$e5308_
                                                   (u64vector? _datum5279_)))
                                              (if _$e5308_
                                                  _$e5308_
                                                  (let ((_$e5311_
                                                         (f32vector?
                                                          _datum5279_)))
                                                    (if _$e5311_
                                                        _$e5311_
                                                        (f64vector?
                                                         _datum5279_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5279_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5225_))))))))))
        (let ((_g52295242_
               (lambda (_g52305239_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g52305239_))))
          (let ((_g52285276_
                 (lambda (_g52305245_)
                   (if (gx#stx-pair? _g52305245_)
                       (let ((_e52325247_ (gx#stx-e _g52305245_)))
                         (let ((_hd52335250_ (##car _e52325247_))
                               (_tl52345252_ (##cdr _e52325247_)))
                           (if (gx#stx-pair? _tl52345252_)
                               (let ((_e52355255_ (gx#stx-e _tl52345252_)))
                                 (let ((_hd52365258_ (##car _e52355255_))
                                       (_tl52375260_ (##cdr _e52355255_)))
                                   (if (gx#stx-null? _tl52375260_)
                                       ((lambda (_L5263_)
                                          (cons 'quote
                                                (cons (_generate15227_
                                                       (gx#stx-e _L5263_))
                                                      '())))
                                        _hd52365258_)
                                       (_g52295242_ _g52305245_))))
                               (_g52295242_ _g52305245_))))
                       (_g52295242_ _g52305245_)))))
            (_g52285276_ _stx5225_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5187_)
      (let ((_g51895199_
             (lambda (_g51905196_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51905196_))))
        (let ((_g51885222_
               (lambda (_g51905202_)
                 (if (gx#stx-pair? _g51905202_)
                     (let ((_e51925204_ (gx#stx-e _g51905202_)))
                       (let ((_hd51935207_ (##car _e51925204_))
                             (_tl51945209_ (##cdr _e51925204_)))
                         ((lambda (_L5212_) (map gxc#compile-e _L5212_))
                          _tl51945209_)))
                     (_g51895199_ _g51905202_)))))
          (_g51885222_ _stx5187_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5149_)
      (let ((_g51515161_
             (lambda (_g51525158_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51525158_))))
        (let ((_g51505184_
               (lambda (_g51525164_)
                 (if (gx#stx-pair? _g51525164_)
                     (let ((_e51545166_ (gx#stx-e _g51525164_)))
                       (let ((_hd51555169_ (##car _e51545166_))
                             (_tl51565171_ (##cdr _e51545166_)))
                         ((lambda (_L5174_)
                            (cons 'if (map gxc#compile-e _L5174_)))
                          _tl51565171_)))
                     (_g51515161_ _g51525164_)))))
          (_g51505184_ _stx5149_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5098_)
      (let ((_g51005113_
             (lambda (_g51015110_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51015110_))))
        (let ((_g50995146_
               (lambda (_g51015116_)
                 (if (gx#stx-pair? _g51015116_)
                     (let ((_e51035118_ (gx#stx-e _g51015116_)))
                       (let ((_hd51045121_ (##car _e51035118_))
                             (_tl51055123_ (##cdr _e51035118_)))
                         (if (gx#stx-pair? _tl51055123_)
                             (let ((_e51065126_ (gx#stx-e _tl51055123_)))
                               (let ((_hd51075129_ (##car _e51065126_))
                                     (_tl51085131_ (##cdr _e51065126_)))
                                 (if (gx#stx-null? _tl51085131_)
                                     ((lambda (_L5134_)
                                        (gxc#generate-runtime-binding-id
                                         _L5134_))
                                      _hd51075129_)
                                     (_g51005113_ _g51015116_))))
                             (_g51005113_ _g51015116_))))
                     (_g51005113_ _g51015116_)))))
          (_g50995146_ _stx5098_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5031_)
      (let ((_g50335050_
             (lambda (_g50345047_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50345047_))))
        (let ((_g50325095_
               (lambda (_g50345053_)
                 (if (gx#stx-pair? _g50345053_)
                     (let ((_e50375055_ (gx#stx-e _g50345053_)))
                       (let ((_hd50385058_ (##car _e50375055_))
                             (_tl50395060_ (##cdr _e50375055_)))
                         (if (gx#stx-pair? _tl50395060_)
                             (let ((_e50405063_ (gx#stx-e _tl50395060_)))
                               (let ((_hd50415066_ (##car _e50405063_))
                                     (_tl50425068_ (##cdr _e50405063_)))
                                 (if (gx#stx-pair? _tl50425068_)
                                     (let ((_e50435071_
                                            (gx#stx-e _tl50425068_)))
                                       (let ((_hd50445074_ (##car _e50435071_))
                                             (_tl50455076_
                                              (##cdr _e50435071_)))
                                         (if (gx#stx-null? _tl50455076_)
                                             ((lambda (_L5079_ _L5080_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5080_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5079_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd50445074_
                                              _hd50415066_)
                                             (_g50335050_ _g50345053_))))
                                     (_g50335050_ _g50345053_))))
                             (_g50335050_ _g50345053_))))
                     (_g50335050_ _g50345053_)))))
          (_g50325095_ _stx5031_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx4964_)
      (let ((_g49664983_
             (lambda (_g49674980_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49674980_))))
        (let ((_g49655028_
               (lambda (_g49674986_)
                 (if (gx#stx-pair? _g49674986_)
                     (let ((_e49704988_ (gx#stx-e _g49674986_)))
                       (let ((_hd49714991_ (##car _e49704988_))
                             (_tl49724993_ (##cdr _e49704988_)))
                         (if (gx#stx-pair? _tl49724993_)
                             (let ((_e49734996_ (gx#stx-e _tl49724993_)))
                               (let ((_hd49744999_ (##car _e49734996_))
                                     (_tl49755001_ (##cdr _e49734996_)))
                                 (if (gx#stx-pair? _tl49755001_)
                                     (let ((_e49765004_
                                            (gx#stx-e _tl49755001_)))
                                       (let ((_hd49775007_ (##car _e49765004_))
                                             (_tl49785009_
                                              (##cdr _e49765004_)))
                                         (if (gx#stx-null? _tl49785009_)
                                             ((lambda (_L5012_ _L5013_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5012_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5013_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49775007_
                                              _hd49744999_)
                                             (_g49664983_ _g49674986_))))
                                     (_g49664983_ _g49674986_))))
                             (_g49664983_ _g49674986_))))
                     (_g49664983_ _g49674986_)))))
          (_g49655028_ _stx4964_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx4897_)
      (let ((_g48994916_
             (lambda (_g49004913_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49004913_))))
        (let ((_g48984961_
               (lambda (_g49004919_)
                 (if (gx#stx-pair? _g49004919_)
                     (let ((_e49034921_ (gx#stx-e _g49004919_)))
                       (let ((_hd49044924_ (##car _e49034921_))
                             (_tl49054926_ (##cdr _e49034921_)))
                         (if (gx#stx-pair? _tl49054926_)
                             (let ((_e49064929_ (gx#stx-e _tl49054926_)))
                               (let ((_hd49074932_ (##car _e49064929_))
                                     (_tl49084934_ (##cdr _e49064929_)))
                                 (if (gx#stx-pair? _tl49084934_)
                                     (let ((_e49094937_
                                            (gx#stx-e _tl49084934_)))
                                       (let ((_hd49104940_ (##car _e49094937_))
                                             (_tl49114942_
                                              (##cdr _e49094937_)))
                                         (if (gx#stx-null? _tl49114942_)
                                             ((lambda (_L4945_ _L4946_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4945_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4946_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49104940_
                                              _hd49074932_)
                                             (_g48994916_ _g49004919_))))
                                     (_g48994916_ _g49004919_))))
                             (_g48994916_ _g49004919_))))
                     (_g48994916_ _g49004919_)))))
          (_g48984961_ _stx4897_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4814_)
      (let ((_g48164837_
             (lambda (_g48174834_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48174834_))))
        (let ((_g48154894_
               (lambda (_g48174840_)
                 (if (gx#stx-pair? _g48174840_)
                     (let ((_e48214842_ (gx#stx-e _g48174840_)))
                       (let ((_hd48224845_ (##car _e48214842_))
                             (_tl48234847_ (##cdr _e48214842_)))
                         (if (gx#stx-pair? _tl48234847_)
                             (let ((_e48244850_ (gx#stx-e _tl48234847_)))
                               (let ((_hd48254853_ (##car _e48244850_))
                                     (_tl48264855_ (##cdr _e48244850_)))
                                 (if (gx#stx-pair? _tl48264855_)
                                     (let ((_e48274858_
                                            (gx#stx-e _tl48264855_)))
                                       (let ((_hd48284861_ (##car _e48274858_))
                                             (_tl48294863_
                                              (##cdr _e48274858_)))
                                         (if (gx#stx-pair? _tl48294863_)
                                             (let ((_e48304866_
                                                    (gx#stx-e _tl48294863_)))
                                               (let ((_hd48314869_
                                                      (##car _e48304866_))
                                                     (_tl48324871_
                                                      (##cdr _e48304866_)))
                                                 (if (gx#stx-null?
                                                      _tl48324871_)
                                                     ((lambda (_L4874_
                                                               _L4875_
                                                               _L4876_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4874_)
                            (cons (gxc#compile-e _L4875_)
                                  (cons (gxc#compile-e _L4876_)
                                        (cons ''#f '()))))))
              _hd48314869_
              _hd48284861_
              _hd48254853_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48164837_
                                                      _g48174840_))))
                                             (_g48164837_ _g48174840_))))
                                     (_g48164837_ _g48174840_))))
                             (_g48164837_ _g48174840_))))
                     (_g48164837_ _g48174840_)))))
          (_g48154894_ _stx4814_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4715_)
      (let ((_g47174742_
             (lambda (_g47184739_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47184739_))))
        (let ((_g47164811_
               (lambda (_g47184745_)
                 (if (gx#stx-pair? _g47184745_)
                     (let ((_e47234747_ (gx#stx-e _g47184745_)))
                       (let ((_hd47244750_ (##car _e47234747_))
                             (_tl47254752_ (##cdr _e47234747_)))
                         (if (gx#stx-pair? _tl47254752_)
                             (let ((_e47264755_ (gx#stx-e _tl47254752_)))
                               (let ((_hd47274758_ (##car _e47264755_))
                                     (_tl47284760_ (##cdr _e47264755_)))
                                 (if (gx#stx-pair? _tl47284760_)
                                     (let ((_e47294763_
                                            (gx#stx-e _tl47284760_)))
                                       (let ((_hd47304766_ (##car _e47294763_))
                                             (_tl47314768_
                                              (##cdr _e47294763_)))
                                         (if (gx#stx-pair? _tl47314768_)
                                             (let ((_e47324771_
                                                    (gx#stx-e _tl47314768_)))
                                               (let ((_hd47334774_
                                                      (##car _e47324771_))
                                                     (_tl47344776_
                                                      (##cdr _e47324771_)))
                                                 (if (gx#stx-pair?
                                                      _tl47344776_)
                                                     (let ((_e47354779_
                                                            (gx#stx-e
                                                             _tl47344776_)))
                                                       (let ((_hd47364782_
                                                              (##car _e47354779_))
                                                             (_tl47374784_
                                                              (##cdr _e47354779_)))
                                                         (if (gx#stx-null?
                                                              _tl47374784_)
                                                             ((lambda (_L4787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4788_
                               _L4789_
                               _L4790_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4788_)
                                    (cons (gxc#compile-e _L4787_)
                                          (cons (gxc#compile-e _L4789_)
                                                (cons (gxc#compile-e _L4790_)
                                                      (cons ''#f '())))))))
                      _hd47364782_
                      _hd47334774_
                      _hd47304766_
                      _hd47274758_)
                     (_g47174742_ _g47184745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47174742_
                                                      _g47184745_))))
                                             (_g47174742_ _g47184745_))))
                                     (_g47174742_ _g47184745_))))
                             (_g47174742_ _g47184745_))))
                     (_g47174742_ _g47184745_)))))
          (_g47164811_ _stx4715_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4624_)
      (let ((_g46264636_
             (lambda (_g46274633_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46274633_))))
        (let ((_g46254712_
               (lambda (_g46274639_)
                 (if (gx#stx-pair? _g46274639_)
                     (let ((_e46294641_ (gx#stx-e _g46274639_)))
                       (let ((_hd46304644_ (##car _e46294641_))
                             (_tl46314646_ (##cdr _e46294641_)))
                         ((lambda (_L4649_)
                            (let ((_ht4659_ (make-hash-table-eq)))
                              ((letrec ((_lp4661_
                                         (lambda (_rest4663_ _loads4664_)
                                           (let ((_K4666_ (lambda (_ctx4705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4706_)
                    (let ((_id4708_
                           (##structure-ref
                            _ctx4705_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4659_ _id4708_ '#f)
                          (_lp4661_ _rest4706_ _loads4664_)
                          (let ((_rt4710_
                                 (string-append
                                  (symbol->string _id4708_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4659_ _id4708_ _rt4710_)
                              (_lp4661_
                               _rest4706_
                               (cons _rt4710_ _loads4664_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest46674675_ _rest4663_))
                                               (let ((_E46704679_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest46674675_))))
                                                 (let ((_else46694687_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g46824684_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g46824684_))
                             (reverse _loads4664_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K46714693_
                                                          (lambda (_rest4690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4691_)
                    (if (##structure-instance-of?
                         _in4691_
                         'gx#module-context::t)
                        (_K4666_ _in4691_ _rest4690_)
                        (if (##structure-direct-instance-of?
                             _in4691_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in4691_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4661_ _rest4690_ _loads4664_)
                                (_K4666_ (##structure-ref
                                          (##structure-ref
                                           _in4691_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4690_))
                            (if (##structure-direct-instance-of?
                                 _in4691_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in4691_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4661_ _rest4690_ _loads4664_)
                                    (_K4666_ (##structure-ref
                                              _in4691_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4690_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4624_
                                 _in4691_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest46674675_)
                                                         (let ((_hd46724696_
                                                                (##car _rest46674675_))
                                                               (_tl46734698_
                                                                (##cdr _rest46674675_)))
                                                           (let ((_in4701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd46724696_))
                     (let ((_rest4703_ _tl46734698_))
                       (_K46714693_ _rest4703_ _in4701_))))
                 (_else46694687_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4661_)
                               _L4649_
                               '())))
                          _tl46314646_)))
                     (_g46264636_ _g46274639_)))))
          (_g46254712_ _stx4624_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4565_)
      (let ((_generate-quote4567_
             (lambda (_q4622_)
               (if (gx#identifier? _q4622_)
                   (gxc#generate-runtime-identifier _q4622_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4565_
                    _q4622_)))))
        (let ((_g45694582_
               (lambda (_g45704579_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45704579_))))
          (let ((_g45684619_
                 (lambda (_g45704585_)
                   (if (gx#stx-pair? _g45704585_)
                       (let ((_e45724587_ (gx#stx-e _g45704585_)))
                         (let ((_hd45734590_ (##car _e45724587_))
                               (_tl45744592_ (##cdr _e45724587_)))
                           (if (gx#stx-pair? _tl45744592_)
                               (let ((_e45754595_ (gx#stx-e _tl45744592_)))
                                 (let ((_hd45764598_ (##car _e45754595_))
                                       (_tl45774600_ (##cdr _e45754595_)))
                                   (if (gx#stx-null? _tl45774600_)
                                       ((lambda (_L4603_)
                                          (let ((_gid4616_
                                                 (gxc#generate-runtime-temporary__opt-lambda9054
                                                  '#t))
                                                (_quote-e4617_
                                                 (_generate-quote4567_
                                                  _L4603_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4617_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4616_)))
                                        _hd45764598_)
                                       (_g45694582_ _g45704585_))))
                               (_g45694582_ _g45704585_))))
                       (_g45694582_ _g45704585_)))))
            (_g45684619_ _stx4565_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4498_)
      (let ((_g45004517_
             (lambda (_g45014514_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45014514_))))
        (let ((_g44994562_
               (lambda (_g45014520_)
                 (if (gx#stx-pair? _g45014520_)
                     (let ((_e45044522_ (gx#stx-e _g45014520_)))
                       (let ((_hd45054525_ (##car _e45044522_))
                             (_tl45064527_ (##cdr _e45044522_)))
                         (if (gx#stx-pair? _tl45064527_)
                             (let ((_e45074530_ (gx#stx-e _tl45064527_)))
                               (let ((_hd45084533_ (##car _e45074530_))
                                     (_tl45094535_ (##cdr _e45074530_)))
                                 (if (gx#stx-pair? _tl45094535_)
                                     (let ((_e45104538_
                                            (gx#stx-e _tl45094535_)))
                                       (let ((_hd45114541_ (##car _e45104538_))
                                             (_tl45124543_
                                              (##cdr _e45104538_)))
                                         (if (gx#stx-null? _tl45124543_)
                                             ((lambda (_L4546_ _L4547_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4547_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4546_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd45114541_
                                              _hd45084533_)
                                             (_g45004517_ _g45014520_))))
                                     (_g45004517_ _g45014520_))))
                             (_g45004517_ _g45014520_))))
                     (_g45004517_ _g45014520_)))))
          (_g44994562_ _stx4498_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4447_ _state4448_)
      (let ((_g44504460_
             (lambda (_g44514457_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44514457_))))
        (let ((_g44494495_
               (lambda (_g44514463_)
                 (if (gx#stx-pair? _g44514463_)
                     (let ((_e44534465_ (gx#stx-e _g44514463_)))
                       (let ((_hd44544468_ (##car _e44534465_))
                             (_tl44554470_ (##cdr _e44534465_)))
                         ((lambda (_L4473_)
                            (let ((_c-body4487_
                                   (map (lambda (_g44824484_)
                                          (gxc#compile-e
                                           _g44824484_
                                           _state4448_))
                                        _L4473_)))
                              (let ((_c-body4492_
                                     (filter (lambda (_$obj4489_)
                                               (not (eq? _$obj4489_ '#!void)))
                                             _c-body4487_)))
                                (let () (cons '%#begin _c-body4492_)))))
                          _tl44554470_)))
                     (_g44504460_ _g44514463_)))))
          (_g44494495_ _stx4447_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4355_ _state4356_)
      (let ((_g43584368_
             (lambda (_g43594365_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43594365_))))
        (let ((_g43574444_
               (lambda (_g43594371_)
                 (if (gx#stx-pair? _g43594371_)
                     (let ((_e43614373_ (gx#stx-e _g43594371_)))
                       (let ((_hd43624376_ (##car _e43614373_))
                             (_tl43634378_ (##cdr _e43614373_)))
                         ((lambda (_L4381_)
                            (let ((_phi4391_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4393_
                                     (gxc#meta-state-begin-phi!
                                      _state4356_
                                      _phi4391_)))
                                (let ((_compiled4396_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4381_)
                                           _state4356_))
                                        gx#current-expander-phi
                                        _phi4391_)))
                                  (let ()
                                    (let ((_g43994409_
                                           (lambda (_g44004406_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g44004406_))))
                                      (let ((_g43984441_
                                             (lambda (_g44004412_)
                                               (if (gx#stx-pair? _g44004412_)
                                                   (let ((_e44024414_
                                                          (gx#stx-e
                                                           _g44004412_)))
                                                     (let ((_hd44034417_
                                                            (##car _e44024414_))
                                                           (_tl44044419_
                                                            (##cdr _e44024414_)))
                                                       (if (gx#identifier?
                                                            _hd44034417_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd44034417_)
                                                               ((lambda (_L4422_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4439_
                                 (filter (lambda (_$obj4436_)
                                           (not (eq? _$obj4436_ '#!void)))
                                         _L4422_)))
                            (if _block4393_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4393_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4439_))
                                (if (null? _c-body4439_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4439_)))))
                        _tl44044419_)
                       (_g43994409_ _g44004412_))
                   (_g43994409_ _g44004412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g43994409_
                                                    _g44004412_)))))
                                        (_g43984441_ _compiled4396_))))))))
                          _tl43634378_)))
                     (_g43584368_ _g43594371_)))))
          (_g43574444_ _stx4355_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4286_ _state4287_)
      (begin
        (gxc#meta-state-end-phi! _state4287_)
        (let ((_g42894303_
               (lambda (_g42904300_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42904300_))))
          (let ((_g42884352_
                 (lambda (_g42904306_)
                   (if (gx#stx-pair? _g42904306_)
                       (let ((_e42934308_ (gx#stx-e _g42904306_)))
                         (let ((_hd42944311_ (##car _e42934308_))
                               (_tl42954313_ (##cdr _e42934308_)))
                           (if (gx#stx-pair? _tl42954313_)
                               (let ((_e42964316_ (gx#stx-e _tl42954313_)))
                                 (let ((_hd42974319_ (##car _e42964316_))
                                       (_tl42984321_ (##cdr _e42964316_)))
                                   ((lambda (_L4324_ _L4325_)
                                      (let ((_key4338_
                                             (gx#core-identifier-key _L4325_)))
                                        (begin
                                          (if (interned-symbol? _key4338_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4286_
                                               _L4325_
                                               _key4338_))
                                          (let ((_ctx4340_
                                                 (gx#syntax-local-e__0
                                                  _L4325_)))
                                            (let ((_code4343_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4340_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4287_))
                                                    gx#current-expander-context
                                                    _ctx4340_)))
                                              (let ((_rt4345_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4340_
                                                      '#f)))
                                                (let ((_loader4347_
                                                       (if _rt4345_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4345_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4349_
                                                         (gx#stx-e _L4325_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4287_)
                                                        (cons '%#module
                                                              (cons _modid4349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4343_ _loader4347_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl42984321_
                                    _hd42974319_)))
                               (_g42894303_ _g42904306_))))
                       (_g42894303_ _g42904306_)))))
            (_g42884352_ _stx4286_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4276_ _context-chain4277_)
      ((letrec ((_lp4279_
                 (lambda (_ctx4281_ _path4282_)
                   (let ((_super4284_
                          (##structure-ref
                           _ctx4281_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4284_ _context-chain4277_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4281_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4282_)
                         (if (##structure-instance-of?
                              _super4284_
                              'gx#module-context::t)
                             (_lp4279_
                              _super4284_
                              (cons (car (##structure-ref
                                          _ctx4281_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4282_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4281_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4282_)))))))
         _lp4279_)
       _ctx4276_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4271_
                 (lambda (_ctx4273_ _r4274_)
                   (if (##structure-instance-of?
                        _ctx4273_
                        'gx#module-context::t)
                       (_lp4271_
                        (##structure-ref _ctx4273_ '3 gx#phi-context::t '#f)
                        (cons _ctx4273_ _r4274_))
                       _r4274_))))
         _lp4271_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4040_ _state4041_)
      (let ((_context-chain4043_ (gxc#current-context-chain)))
        (let ((_make-import-spec4044_
               (lambda (_in4207_)
                 (let ((_in42084220_ _in4207_))
                   (let ((_E42104224_
                          (lambda ()
                            (error '"No clause matching" _in42084220_))))
                     (let ((_K42114234_
                            (lambda (_phi4227_
                                     _name4228_
                                     _src-name4229_
                                     _src-phi4230_
                                     _src-key4231_
                                     _src-ctx4232_)
                              (cons _phi4227_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4228_)
                                          (cons _src-phi4230_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4229_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in42084220_
                            (##type-id gx#module-import::t))
                           (let ((_e42124237_ (##vector-ref _in42084220_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e42124237_
                                  (##type-id gx#module-export::t))
                                 (let ((_e42154240_
                                        (##vector-ref _e42124237_ '1)))
                                   (let ((_src-ctx4243_ _e42154240_))
                                     (let ((_e42164245_
                                            (##vector-ref _e42124237_ '2)))
                                       (let ((_src-key4248_ _e42164245_))
                                         (let ((_e42174250_
                                                (##vector-ref _e42124237_ '3)))
                                           (let ((_src-phi4253_ _e42174250_))
                                             (let ((_e42184255_
                                                    (##vector-ref
                                                     _e42124237_
                                                     '4)))
                                               (let ((_src-name4258_
                                                      _e42184255_))
                                                 (let ((_e42134260_
                                                        (##vector-ref
                                                         _in42084220_
                                                         '2)))
                                                   (let ((_name4263_
                                                          _e42134260_))
                                                     (let ((_e42144265_
                                                            (##vector-ref
                                                             _in42084220_
                                                             '3)))
                                                       (let ((_phi4268_
                                                              _e42144265_))
                                                         (_K42114234_
                                                          _phi4268_
                                                          _name4263_
                                                          _src-name4258_
                                                          _src-phi4253_
                                                          _src-key4248_
                                                          _src-ctx4243_)))))))))))))
                                 (_E42104224_)))
                           (_E42104224_))))))))
          (let ((_make-import-path4045_
                 (lambda (_ctx4205_)
                   (gxc#generate-meta-import-path
                    _ctx4205_
                    _context-chain4043_))))
            (let ((_make-import-spec-in4046_
                   (lambda (_ctx4202_ _in4203_)
                     (cons 'spec:
                           (cons (_make-import-path4045_ _ctx4202_)
                                 (reverse _in4203_))))))
              (begin
                (gxc#meta-state-end-phi! _state4041_)
                (let ((_g40484058_
                       (lambda (_g40494055_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g40494055_))))
                  (let ((_g40474199_
                         (lambda (_g40494061_)
                           (if (gx#stx-pair? _g40494061_)
                               (let ((_e40514063_ (gx#stx-e _g40494061_)))
                                 (let ((_hd40524066_ (##car _e40514063_))
                                       (_tl40534068_ (##cdr _e40514063_)))
                                   ((lambda (_L4071_)
                                      ((letrec ((_lp4082_
                                                 (lambda (_rest4084_
                                                          _current-src4085_
                                                          _current-in4086_
                                                          _r4087_)
                                                   (let ((_rest40884096_
                                                          _rest4084_))
                                                     (let ((_E40914100_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest40884096_))))
               (let ((_else40904106_
                      (lambda ()
                        (let ((_r4104_ (if _current-src4085_
                                           (cons (_make-import-spec-in4046_
                                                  _current-src4085_
                                                  _current-in4086_)
                                                 _r4087_)
                                           _r4087_)))
                          (cons '%#import (reverse _r4104_))))))
                 (let ((_K40924187_
                        (lambda (_rest4109_ _in4110_)
                          (if (##structure-direct-instance-of?
                               _in4110_
                               'gx#module-import::t)
                              (let ((_in41114118_ _in4110_))
                                (let ((_E41134122_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in41114118_))))
                                  (let ((_K41144127_
                                         (lambda (_src-ctx4125_)
                                           (if (eq? _current-src4085_
                                                    _src-ctx4125_)
                                               (_lp4082_
                                                _rest4109_
                                                _current-src4085_
                                                (cons (_make-import-spec4044_
                                                       _in4110_)
                                                      _current-in4086_)
                                                _r4087_)
                                               (if _current-src4085_
                                                   (_lp4082_
                                                    _rest4109_
                                                    _src-ctx4125_
                                                    (cons (_make-import-spec4044_
                                                           _in4110_)
                                                          '())
                                                    (cons (_make-import-spec-in4046_
                                                           _current-src4085_
                                                           _current-in4086_)
                                                          _r4087_))
                                                   (_lp4082_
                                                    _rest4109_
                                                    _src-ctx4125_
                                                    (cons (_make-import-spec4044_
                                                           _in4110_)
                                                          '())
                                                    _r4087_))))))
                                    (if (##structure-direct-instance-of?
                                         _in41114118_
                                         (##type-id gx#module-import::t))
                                        (let ((_e41154130_
                                               (##vector-ref _in41114118_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e41154130_
                                               (##type-id gx#module-export::t))
                                              (let ((_e41164133_
                                                     (##vector-ref
                                                      _e41154130_
                                                      '1)))
                                                (let ((_src-ctx4136_
                                                       _e41164133_))
                                                  (_K41144127_ _src-ctx4136_)))
                                              (_E41134122_)))
                                        (_E41134122_)))))
                              (if (##structure-direct-instance-of?
                                   _in4110_
                                   'gx#import-set::t)
                                  (let ((_phi4138_
                                         (##structure-ref
                                          _in4110_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4140_
                                           (##structure-ref
                                            _in4110_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4180_
                                             (let ((_g41414150_
                                                    (_make-import-path4045_
                                                     _src4140_)))
                                               (let ((_E41444154_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g41414150_))))
                                                 (let ((_try-match41434165_
                                                        (lambda ()
                                                          (let ((_K41454160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4158_) (cons 'in: _path4158_))))
                    (let ((_path4163_ _g41414150_))
                      (_K41454160_ _path4163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K41464170_
                                                          (lambda (_path4168_)
                                                            _path4168_)))
                                                     (if (##pair? _g41414150_)
                                                         (let ((_hd41474173_
                                                                (##car _g41414150_))
                                                               (_tl41484175_
                                                                (##cdr _g41414150_)))
                                                           (let ((_path4178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd41474173_))
                     (if (##null? _tl41484175_)
                         (_K41464170_ _path4178_)
                         (_try-match41434165_))))
                 (_try-match41434165_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4182_ (if _current-src4085_
                                                           (cons (_make-import-spec-in4046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4085_
                          _current-in4086_)
                         _r4087_)
                   _r4087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4082_
                                             _rest4109_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4138_)
                                                       _src-in4180_
                                                       (cons 'phi:
                                                             (cons _phi4138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4180_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4182_)))))))
                                  (if (##structure-instance-of?
                                       _in4110_
                                       'gx#module-context::t)
                                      (let ((_r4185_ (if _current-src4085_
                                                         (cons (_make-import-spec-in4046_
                                                                _current-src4085_
                                                                _current-in4086_)
                                                               _r4087_)
                                                         _r4087_)))
                                        (_lp4082_
                                         _rest4109_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4045_
                                                      _in4110_))
                                               _r4185_)))
                                      '#!void))))))
                   (if (##pair? _rest40884096_)
                       (let ((_hd40934190_ (##car _rest40884096_))
                             (_tl40944192_ (##cdr _rest40884096_)))
                         (let ((_in4195_ _hd40934190_))
                           (let ((_rest4197_ _tl40944192_))
                             (_K40924187_ _rest4197_ _in4195_))))
                       (_else40904106_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4082_)
                                       _L4071_
                                       '#f
                                       '()
                                       '()))
                                    _tl40534068_)))
                               (_g40484058_ _g40494061_)))))
                    (_g40474199_ _stx4040_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3850_ _state3851_)
      (let ((_context-chain3853_ (gxc#current-context-chain)))
        (let ((_make-import-path3854_
               (lambda (_ctx4038_)
                 (gxc#generate-meta-import-path
                  _ctx4038_
                  _context-chain3853_))))
          (let ((_g38563866_
                 (lambda (_g38573863_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g38573863_))))
            (let ((_g38554035_
                   (lambda (_g38573869_)
                     (if (gx#stx-pair? _g38573869_)
                         (let ((_e38593871_ (gx#stx-e _g38573869_)))
                           (let ((_hd38603874_ (##car _e38593871_))
                                 (_tl38613876_ (##cdr _e38593871_)))
                             ((lambda (_L3879_)
                                ((letrec ((_lp3890_
                                           (lambda (_rest3892_ _r3893_)
                                             (let ((_rest38943902_ _rest3892_))
                                               (let ((_E38973906_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest38943902_))))
                                                 (let ((_else38963910_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3893_)))))
                                                   (let ((_K38984023_
                                                          (lambda (_rest3913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3914_)
                    (let ((_out39153928_ _out3914_))
                      (let ((_E39183932_
                             (lambda ()
                               (error '"No clause matching" _out39153928_))))
                        (let ((_try-match39173995_
                               (lambda ()
                                 (let ((_K39193982_
                                        (lambda (_phi3936_ _src3937_)
                                          (let ((_out3977_
                                                 (if _src3937_
                                                     (cons 'import:
                                                           (cons (let ((_g39383947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3854_ _src3937_)))
                           (let ((_E39413951_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g39383947_))))
                             (let ((_try-match39403962_
                                    (lambda ()
                                      (let ((_K39423957_
                                             (lambda (_path3955_)
                                               (cons 'in: _path3955_))))
                                        (let ((_path3960_ _g39383947_))
                                          (_K39423957_ _path3960_))))))
                               (let ((_K39433967_
                                      (lambda (_path3965_) _path3965_)))
                                 (if (##pair? _g39383947_)
                                     (let ((_hd39443970_ (##car _g39383947_))
                                           (_tl39453972_ (##cdr _g39383947_)))
                                       (let ((_path3975_ _hd39443970_))
                                         (if (##null? _tl39453972_)
                                             (_K39433967_ _path3975_)
                                             (_try-match39403962_))))
                                     (_try-match39403962_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3979_
                                                   (if (fxzero? _phi3936_)
                                                       _out3977_
                                                       (cons 'phi:
                                                             (cons _phi3936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3977_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3890_
                                                 _rest3913_
                                                 (cons _out3979_
                                                       _r3893_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out39153928_
                                        (##type-id gx#export-set::t))
                                       (let ((_e39203985_
                                              (##vector-ref _out39153928_ '1)))
                                         (let ((_src3988_ _e39203985_))
                                           (let ((_e39213990_
                                                  (##vector-ref
                                                   _out39153928_
                                                   '2)))
                                             (let ((_phi3993_ _e39213990_))
                                               (_K39193982_
                                                _phi3993_
                                                _src3988_)))))
                                       (_E39183932_))))))
                          (let ((_K39224002_
                                 (lambda (_name3998_ _phi3999_ _key4000_)
                                   (_lp3890_
                                    _rest3913_
                                    (cons (cons 'spec:
                                                (cons _phi3999_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key4000_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3998_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3893_)))))
                            (if (##structure-direct-instance-of?
                                 _out39153928_
                                 (##type-id gx#module-export::t))
                                (let ((_e39234005_
                                       (##vector-ref _out39153928_ '1)))
                                  (let ((_e39244008_
                                         (##vector-ref _out39153928_ '2)))
                                    (let ((_key4011_ _e39244008_))
                                      (let ((_e39254013_
                                             (##vector-ref _out39153928_ '3)))
                                        (let ((_phi4016_ _e39254013_))
                                          (let ((_e39264018_
                                                 (##vector-ref
                                                  _out39153928_
                                                  '4)))
                                            (let ((_name4021_ _e39264018_))
                                              (_K39224002_
                                               _name4021_
                                               _phi4016_
                                               _key4011_))))))))
                                (_try-match39173995_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest38943902_)
                                                         (let ((_hd38994026_
                                                                (##car _rest38943902_))
                                                               (_tl39004028_
                                                                (##cdr _rest38943902_)))
                                                           (let ((_out4031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd38994026_))
                     (let ((_rest4033_ _tl39004028_))
                       (_K38984023_ _rest4033_ _out4031_))))
                 (_else38963910_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3890_)
                                 _L3879_
                                 '()))
                              _tl38613876_)))
                         (_g38563866_ _g38573869_)))))
              (_g38554035_ _stx3850_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3811_ _state3812_)
      (begin
        (gxc#meta-state-end-phi! _state3812_)
        (let ((_g38143824_
               (lambda (_g38153821_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38153821_))))
          (let ((_g38133847_
                 (lambda (_g38153827_)
                   (if (gx#stx-pair? _g38153827_)
                       (let ((_e38173829_ (gx#stx-e _g38153827_)))
                         (let ((_hd38183832_ (##car _e38173829_))
                               (_tl38193834_ (##cdr _e38173829_)))
                           ((lambda (_L3837_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3837_)))
                            _tl38193834_)))
                       (_g38143824_ _g38153827_)))))
            (_g38133847_ _stx3811_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3682_ _state3683_)
      (let ((_generate13685_
             (lambda (_id3806_ _eid3807_)
               (let ((_eid3809_ (gx#stx-e _eid3807_)))
                 (begin
                   (if (interned-symbol? _eid3809_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3682_
                        _eid3809_))
                   (cons (gxc#generate-runtime-identifier _id3806_)
                         (cons _eid3809_ '())))))))
        (let ((_g36873715_
               (lambda (_g36883712_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36883712_))))
          (let ((_g36863803_
                 (lambda (_g36883718_)
                   (if (gx#stx-pair? _g36883718_)
                       (let ((_e36913720_ (gx#stx-e _g36883718_)))
                         (let ((_hd36923723_ (##car _e36913720_))
                               (_tl36933725_ (##cdr _e36913720_)))
                           (if (gx#stx-pair/null? _tl36933725_)
                               (if (fx>= (gx#stx-length _tl36933725_) '0)
                                   (let ((_g10171_
                                          (gx#syntax-split-splice
                                           _tl36933725_
                                           '0)))
                                     (begin
                                       (let ((_g10172_
                                              (values-count _g10171_)))
                                         (if (not (fx= _g10172_ 2))
                                             (error "Context expects 2 values"
                                                    _g10172_)))
                                       (let ((_target36943728_
                                              (values-ref _g10171_ 0))
                                             (_tl36963730_
                                              (values-ref _g10171_ 1)))
                                         (if (gx#stx-null? _tl36963730_)
                                             (letrec ((_loop36973733_
                                                       (lambda (_hd36953736_
                                                                _eid37013738_
                                                                _id37023740_)
                                                         (if (gx#stx-pair?
                                                              _hd36953736_)
                                                             (let ((_e36983743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd36953736_)))
                       (let ((_lp-hd36993746_ (##car _e36983743_))
                             (_lp-tl37003748_ (##cdr _e36983743_)))
                         (if (gx#stx-pair? _lp-hd36993746_)
                             (let ((_e37053751_ (gx#stx-e _lp-hd36993746_)))
                               (let ((_hd37063754_ (##car _e37053751_))
                                     (_tl37073756_ (##cdr _e37053751_)))
                                 (if (gx#stx-pair? _tl37073756_)
                                     (let ((_e37083759_
                                            (gx#stx-e _tl37073756_)))
                                       (let ((_hd37093762_ (##car _e37083759_))
                                             (_tl37103764_
                                              (##cdr _e37083759_)))
                                         (if (gx#stx-null? _tl37103764_)
                                             (_loop36973733_
                                              _lp-tl37003748_
                                              (cons _hd37093762_ _eid37013738_)
                                              (cons _hd37063754_ _id37023740_))
                                             (_g36873715_ _g36883718_))))
                                     (_g36873715_ _g36883718_))))
                             (_g36873715_ _g36883718_))))
                     (let ((_eid37033767_ (reverse _eid37013738_))
                           (_id37043769_ (reverse _id37023740_)))
                       ((lambda (_L3772_ _L3773_)
                          (cons '%#extern
                                (map _generate13685_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37883791_
                                                        _g37893793_)
                                                 (cons _g37883791_
                                                       _g37893793_))
                                               '()
                                               _L3773_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37953798_
                                                        _g37963800_)
                                                 (cons _g37953798_
                                                       _g37963800_))
                                               '()
                                               _L3772_)))))
                        _eid37033767_
                        _id37043769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop36973733_
                                                _target36943728_
                                                '()
                                                '()))
                                             (_g36873715_ _g36883718_)))))
                                   (_g36873715_ _g36883718_))
                               (_g36873715_ _g36883718_))))
                       (_g36873715_ _g36883718_)))))
            (_g36863803_ _stx3682_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3477_ _state3478_)
      (let ((_generate13480_
             (lambda (_id3677_)
               (let ((_eid3679_ (gxc#generate-runtime-binding-id _id3677_))
                     (_ident3680_ (gxc#generate-runtime-identifier _id3677_)))
                 (cons '%#define-runtime
                       (cons _ident3680_ (cons _eid3679_ '())))))))
        (let ((_generate*3481_
               (lambda (_all3645_)
                 (let ((_all36463654_ _all3645_))
                   (let ((_E36493658_
                          (lambda ()
                            (error '"No clause matching" _all36463654_))))
                     (let ((_else36483662_
                            (lambda () (cons '%#begin _all3645_))))
                       (let ((_K36503667_ (lambda (_one3665_) _one3665_)))
                         (if (##pair? _all36463654_)
                             (let ((_hd36513670_ (##car _all36463654_))
                                   (_tl36523672_ (##cdr _all36463654_)))
                               (let ((_one3675_ _hd36513670_))
                                 (if (##null? _tl36523672_)
                                     (_K36503667_ _one3675_)
                                     (_else36483662_))))
                             (_else36483662_)))))))))
          (let ((_g34833500_
                 (lambda (_g34843497_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g34843497_))))
            (let ((_g34823642_
                   (lambda (_g34843503_)
                     (if (gx#stx-pair? _g34843503_)
                         (let ((_e34873505_ (gx#stx-e _g34843503_)))
                           (let ((_hd34883508_ (##car _e34873505_))
                                 (_tl34893510_ (##cdr _e34873505_)))
                             (if (gx#stx-pair? _tl34893510_)
                                 (let ((_e34903513_ (gx#stx-e _tl34893510_)))
                                   (let ((_hd34913516_ (##car _e34903513_))
                                         (_tl34923518_ (##cdr _e34903513_)))
                                     (if (gx#stx-pair? _tl34923518_)
                                         (let ((_e34933521_
                                                (gx#stx-e _tl34923518_)))
                                           (let ((_hd34943524_
                                                  (##car _e34933521_))
                                                 (_tl34953526_
                                                  (##cdr _e34933521_)))
                                             (if (gx#stx-null? _tl34953526_)
                                                 ((lambda (_L3529_ _L3530_)
                                                    ((letrec ((_lp3546_
                                                               (lambda (_rest3548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3549_)
                         (let ((_g35543570_
                                (lambda (_g35553567_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g35553567_))))
                           (let ((_g35533577_
                                  (lambda (_g35553573_)
                                    ((lambda ()
                                       (_generate*3481_ (reverse _r3549_)))))))
                             (let ((_g35523593_
                                    (lambda (_g35553580_)
                                      ((lambda (_L3582_)
                                         (if (gx#identifier? _L3582_)
                                             (_generate*3481_
                                              (foldl1 cons
                                                      (cons (_generate13480_
                                                             _L3582_)
                                                            '())
                                                      _r3549_))
                                             (_g35533577_ _g35553580_)))
                                       _g35553580_))))
                               (let ((_g35513617_
                                      (lambda (_g35553596_)
                                        (if (gx#stx-pair? _g35553596_)
                                            (let ((_e35623598_
                                                   (gx#stx-e _g35553596_)))
                                              (let ((_hd35633601_
                                                     (##car _e35623598_))
                                                    (_tl35643603_
                                                     (##cdr _e35623598_)))
                                                ((lambda (_L3606_ _L3607_)
                                                   (_lp3546_
                                                    _L3606_
                                                    (cons (_generate13480_
                                                           _L3607_)
                                                          _r3549_)))
                                                 _tl35643603_
                                                 _hd35633601_)))
                                            (_g35523593_ _g35553596_)))))
                                 (let ((_g35503639_
                                        (lambda (_g35553620_)
                                          (if (gx#stx-pair? _g35553620_)
                                              (let ((_e35573622_
                                                     (gx#stx-e _g35553620_)))
                                                (let ((_hd35583625_
                                                       (##car _e35573622_))
                                                      (_tl35593627_
                                                       (##cdr _e35573622_)))
                                                  (if (gx#stx-datum?
                                                       _hd35583625_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd35583625_)
                          '#f)
                  ((lambda (_L3630_) (_lp3546_ _L3630_ _r3549_)) _tl35593627_)
                  (_g35513617_ _g35553620_))
              (_g35513617_ _g35553620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g35513617_ _g35553620_)))))
                                   (_g35503639_ _rest3548_)))))))))
               _lp3546_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3530_
                                                     '()))
                                                  _hd34943524_
                                                  _hd34913516_)
                                                 (_g34833500_ _g34843503_))))
                                         (_g34833500_ _g34843503_))))
                                 (_g34833500_ _g34843503_))))
                         (_g34833500_ _g34843503_)))))
              (_g34823642_ _stx3477_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3374_ _state3375_)
      (let ((_g33773394_
             (lambda (_g33783391_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33783391_))))
        (let ((_g33763474_
               (lambda (_g33783397_)
                 (if (gx#stx-pair? _g33783397_)
                     (let ((_e33813399_ (gx#stx-e _g33783397_)))
                       (let ((_hd33823402_ (##car _e33813399_))
                             (_tl33833404_ (##cdr _e33813399_)))
                         (if (gx#stx-pair? _tl33833404_)
                             (let ((_e33843407_ (gx#stx-e _tl33833404_)))
                               (let ((_hd33853410_ (##car _e33843407_))
                                     (_tl33863412_ (##cdr _e33843407_)))
                                 (if (gx#stx-pair? _tl33863412_)
                                     (let ((_e33873415_
                                            (gx#stx-e _tl33863412_)))
                                       (let ((_hd33883418_ (##car _e33873415_))
                                             (_tl33893420_
                                              (##cdr _e33873415_)))
                                         (if (gx#stx-null? _tl33893420_)
                                             ((lambda (_L3423_ _L3424_)
                                                (let ((_eid3439_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3424_)))
                                                  (let ((_phi3441_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3443_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3375_
                                                            _phi3441_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g34463453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g34473450_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g34473450_))))
                    (let ((_g34453471_
                           (lambda (_g34473456_)
                             ((lambda (_L3458_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3375_
                                   _phi3441_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3458_ (cons _L3423_ '()))))))
                              _g34473456_))))
                      (_g34453471_ _eid3439_)))
                  (if _block3443_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3443_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3424_)
                                                    (cons _eid3439_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3424_)
                                  (cons _eid3439_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33883418_
                                              _hd33853410_)
                                             (_g33773394_ _g33783397_))))
                                     (_g33773394_ _g33783397_))))
                             (_g33773394_ _g33783397_))))
                     (_g33773394_ _g33783397_)))))
          (_g33763474_ _stx3374_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3306_ _state3307_)
      (let ((_g33093326_
             (lambda (_g33103323_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33103323_))))
        (let ((_g33083371_
               (lambda (_g33103329_)
                 (if (gx#stx-pair? _g33103329_)
                     (let ((_e33133331_ (gx#stx-e _g33103329_)))
                       (let ((_hd33143334_ (##car _e33133331_))
                             (_tl33153336_ (##cdr _e33133331_)))
                         (if (gx#stx-pair? _tl33153336_)
                             (let ((_e33163339_ (gx#stx-e _tl33153336_)))
                               (let ((_hd33173342_ (##car _e33163339_))
                                     (_tl33183344_ (##cdr _e33163339_)))
                                 (if (gx#stx-pair? _tl33183344_)
                                     (let ((_e33193347_
                                            (gx#stx-e _tl33183344_)))
                                       (let ((_hd33203350_ (##car _e33193347_))
                                             (_tl33213352_
                                              (##cdr _e33193347_)))
                                         (if (gx#stx-null? _tl33213352_)
                                             ((lambda (_L3355_ _L3356_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3356_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3355_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33203350_
                                              _hd33173342_)
                                             (_g33093326_ _g33103329_))))
                                     (_g33093326_ _g33103329_))))
                             (_g33093326_ _g33103329_))))
                     (_g33093326_ _g33103329_)))))
          (_g33083371_ _stx3306_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3303_ _state3304_)
      (begin
        (gxc#meta-state-add-phi!
         _state3304_
         (gx#current-expander-phi)
         _stx3303_)
        (gxc#generate-meta-define-values% _stx3303_ _state3304_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3300_ _state3301_)
      (begin
        (gxc#meta-state-add-phi!
         _state3301_
         (gx#current-expander-phi)
         _stx3300_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3297_
      (apply make-struct-instance gxc#meta-state::t _$args3297_)))
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
    (lambda (_self3294_ _ctx3295_)
      (struct-instance-init!
       _self3294_
       (symbol->string
        (##structure-ref _ctx3295_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3291_
      (apply make-struct-instance gxc#meta-state-block::t _$args3291_)))
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
    (lambda (_state3250_ _phi3251_)
      (let ((_state32523260_ _state3250_))
        (let ((_E32543264_
               (lambda () (error '"No clause matching" _state32523260_))))
          (let ((_K32553273_
                 (lambda (_open3267_ _n3268_ _src3269_)
                   (if (table-ref _open3267_ _phi3251_ '#f)
                       '#f
                       (let ((_block-ref3271_
                              (string-append
                               _src3269_
                               '"__"
                               (number->string _n3268_))))
                         (begin
                           (##structure-set!
                            _state3250_
                            (fx+ _n3268_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3267_
                            _phi3251_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3251_
                             _n3268_
                             '()))
                           _block-ref3271_))))))
            (if (##structure-instance-of?
                 _state32523260_
                 (##type-id gxc#meta-state::t))
                (let ((_e32563276_ (##vector-ref _state32523260_ '1)))
                  (let ((_src3279_ _e32563276_))
                    (let ((_e32573281_ (##vector-ref _state32523260_ '2)))
                      (let ((_n3284_ _e32573281_))
                        (let ((_e32583286_ (##vector-ref _state32523260_ '3)))
                          (let ((_open3289_ _e32583286_))
                            (_K32553273_ _open3289_ _n3284_ _src3279_)))))))
                (_E32543264_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3244_ _phi3245_ _stx3246_)
      (let ((_block3248_
             (table-ref
              (##structure-ref _state3244_ '3 gxc#meta-state::t '#f)
              _phi3245_
              '#f)))
        (##structure-set!
         _block3248_
         (cons _stx3246_
               (##structure-ref _block3248_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3239_)
      (begin
        (##structure-set!
         _state3239_
         (hash-fold
          (lambda (_g10173_ _block3241_ _r3242_) (cons _block3241_ _r3242_))
          (##structure-ref _state3239_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3239_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3239_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3191_)
      (begin
        (gxc#meta-state-end-phi! _state3191_)
        (foldl1 (lambda (_block3193_ _r3194_)
                  (let ((_block31953204_ _block3193_))
                    (let ((_E31973208_
                           (lambda ()
                             (error '"No clause matching" _block31953204_))))
                      (let ((_K31983216_
                             (lambda (_code3211_ _n3212_ _phi3213_ _ctx3214_)
                               (if (null? _code3211_)
                                   _r3194_
                                   (cons (cons _ctx3214_
                                               (cons _phi3213_
                                                     (cons _n3212_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3211_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3194_)))))
                        (if (##structure-instance-of?
                             _block31953204_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e31993219_
                                   (##vector-ref _block31953204_ '1)))
                              (let ((_ctx3222_ _e31993219_))
                                (let ((_e32003224_
                                       (##vector-ref _block31953204_ '2)))
                                  (let ((_phi3227_ _e32003224_))
                                    (let ((_e32013229_
                                           (##vector-ref _block31953204_ '3)))
                                      (let ((_n3232_ _e32013229_))
                                        (let ((_e32023234_
                                               (##vector-ref
                                                _block31953204_
                                                '4)))
                                          (let ((_code3237_ _e32023234_))
                                            (_K31983216_
                                             _code3237_
                                             _n3232_
                                             _phi3227_
                                             _ctx3222_)))))))))
                            (_E31973208_))))))
                '()
                (##structure-ref _state3191_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3187_)
      (let ((_ht3189_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3187_ _ht3189_)
          _ht3189_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3130_ _ht3131_)
      (let ((_g31333146_
             (lambda (_g31343143_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31343143_))))
        (let ((_g31323184_
               (lambda (_g31343149_)
                 (if (gx#stx-pair? _g31343149_)
                     (let ((_e31363151_ (gx#stx-e _g31343149_)))
                       (let ((_hd31373154_ (##car _e31363151_))
                             (_tl31383156_ (##cdr _e31363151_)))
                         (if (gx#stx-pair? _tl31383156_)
                             (let ((_e31393159_ (gx#stx-e _tl31383156_)))
                               (let ((_hd31403162_ (##car _e31393159_))
                                     (_tl31413164_ (##cdr _e31393159_)))
                                 (if (gx#stx-null? _tl31413164_)
                                     ((lambda (_L3167_)
                                        (let ((_bind3179_
                                               (gx#resolve-identifier__0
                                                _L3167_)))
                                          (let ((_eid3181_
                                                 (if _bind3179_
                                                     (##structure-ref
                                                      _bind3179_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3167_))))
                                            (let ()
                                              (table-set!
                                               _ht3131_
                                               _eid3181_
                                               _eid3181_)))))
                                      _hd31403162_)
                                     (_g31333146_ _g31343149_))))
                             (_g31333146_ _g31343149_))))
                     (_g31333146_ _g31343149_)))))
          (_g31323184_ _stx3130_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3057_ _ht3058_)
      (let ((_g30603077_
             (lambda (_g30613074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30613074_))))
        (let ((_g30593127_
               (lambda (_g30613080_)
                 (if (gx#stx-pair? _g30613080_)
                     (let ((_e30643082_ (gx#stx-e _g30613080_)))
                       (let ((_hd30653085_ (##car _e30643082_))
                             (_tl30663087_ (##cdr _e30643082_)))
                         (if (gx#stx-pair? _tl30663087_)
                             (let ((_e30673090_ (gx#stx-e _tl30663087_)))
                               (let ((_hd30683093_ (##car _e30673090_))
                                     (_tl30693095_ (##cdr _e30673090_)))
                                 (if (gx#stx-pair? _tl30693095_)
                                     (let ((_e30703098_
                                            (gx#stx-e _tl30693095_)))
                                       (let ((_hd30713101_ (##car _e30703098_))
                                             (_tl30723103_
                                              (##cdr _e30703098_)))
                                         (if (gx#stx-null? _tl30723103_)
                                             ((lambda (_L3106_ _L3107_)
                                                (let ((_bind3122_
                                                       (gx#resolve-identifier__0
                                                        _L3107_)))
                                                  (let ((_eid3124_
                                                         (if _bind3122_
                                                             (##structure-ref
                                                              _bind3122_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3107_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3058_
                                                         _eid3124_
                                                         _eid3124_)
                                                        (gxc#compile-e
                                                         _L3106_
                                                         _ht3058_))))))
                                              _hd30713101_
                                              _hd30683093_)
                                             (_g30603077_ _g30613080_))))
                                     (_g30603077_ _g30613080_))))
                             (_g30603077_ _g30613080_))))
                     (_g30603077_ _g30613080_)))))
          (_g30593127_ _stx3057_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3019_)
      (let ((_g30213031_
             (lambda (_g30223028_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30223028_))))
        (let ((_g30203054_
               (lambda (_g30223034_)
                 (if (gx#stx-pair? _g30223034_)
                     (let ((_e30243036_ (gx#stx-e _g30223034_)))
                       (let ((_hd30253039_ (##car _e30243036_))
                             (_tl30263041_ (##cdr _e30243036_)))
                         ((lambda (_L3044_) (ormap1 gxc#compile-e _L3044_))
                          _tl30263041_)))
                     (_g30213031_ _g30223034_)))))
          (_g30203054_ _stx3019_))))))
