(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10596_ . _args10597_)
      (let ((_g1059910609_
             (lambda (_g1060010606_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1060010606_))))
        (let ((_g1059810637_
               (lambda (_g1060010612_)
                 (if (gx#stx-pair? _g1060010612_)
                     (let ((_e1060210614_ (gx#stx-e _g1060010612_)))
                       (let ((_hd1060310617_ (##car _e1060210614_))
                             (_tl1060410619_ (##cdr _e1060210614_)))
                         ((lambda (_L10622_)
                            (let ((_$e10632_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10622_)
                                    '#f)))
                              (if _$e10632_
                                  ((lambda (_method10635_)
                                     (apply _method10635_
                                            _stx10596_
                                            _args10597_))
                                   _$e10632_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10596_
                                   _L10622_))))
                          _hd1060310617_)))
                     (_g1059910609_ _g1060010612_)))))
          (_g1059810637_ _stx10596_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10593_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10593_ '%#lambda void)
           (table-set! _tbl10593_ '%#case-lambda void)
           (table-set! _tbl10593_ '%#let-values void)
           (table-set! _tbl10593_ '%#letrec-values void)
           (table-set! _tbl10593_ '%#letrec*-values void)
           (table-set! _tbl10593_ '%#quote void)
           (table-set! _tbl10593_ '%#quote-syntax void)
           (table-set! _tbl10593_ '%#call void)
           (table-set! _tbl10593_ '%#if void)
           (table-set! _tbl10593_ '%#ref void)
           (table-set! _tbl10593_ '%#set! void)
           (table-set! _tbl10593_ '%#struct-instance? void)
           (table-set! _tbl10593_ '%#struct-direct-instance? void)
           (table-set! _tbl10593_ '%#struct-ref void)
           (table-set! _tbl10593_ '%#struct-set! void)
           (table-set! _tbl10593_ '%#struct-direct-ref void)
           (table-set! _tbl10593_ '%#struct-direct-set! void)
           (table-set! _tbl10593_ '%#struct-unchecked-ref void)
           (table-set! _tbl10593_ '%#struct-unchecked-set! void)
           _tbl10593_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10589_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10589_ '%#begin void)
           (table-set! _tbl10589_ '%#begin-syntax void)
           (table-set! _tbl10589_ '%#begin-foreign void)
           (table-set! _tbl10589_ '%#module void)
           (table-set! _tbl10589_ '%#import void)
           (table-set! _tbl10589_ '%#export void)
           (table-set! _tbl10589_ '%#provide void)
           (table-set! _tbl10589_ '%#extern void)
           (table-set! _tbl10589_ '%#define-values void)
           (table-set! _tbl10589_ '%#define-syntax void)
           (table-set! _tbl10589_ '%#define-alias void)
           (table-set! _tbl10589_ '%#declare void)
           _tbl10589_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10585_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10585_ (force gxc#&void-special-form))
           (hash-copy! _tbl10585_ (force gxc#&void-expression))
           _tbl10585_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl10581_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10581_ '%#lambda false)
           (table-set! _tbl10581_ '%#case-lambda false)
           (table-set! _tbl10581_ '%#let-values false)
           (table-set! _tbl10581_ '%#letrec-values false)
           (table-set! _tbl10581_ '%#letrec*-values false)
           (table-set! _tbl10581_ '%#quote false)
           (table-set! _tbl10581_ '%#quote-syntax false)
           (table-set! _tbl10581_ '%#call false)
           (table-set! _tbl10581_ '%#if false)
           (table-set! _tbl10581_ '%#ref false)
           (table-set! _tbl10581_ '%#set! false)
           (table-set! _tbl10581_ '%#struct-instance? false)
           (table-set! _tbl10581_ '%#struct-direct-instance? false)
           (table-set! _tbl10581_ '%#struct-ref false)
           (table-set! _tbl10581_ '%#struct-set! false)
           (table-set! _tbl10581_ '%#struct-direct-ref false)
           (table-set! _tbl10581_ '%#struct-direct-set! false)
           (table-set! _tbl10581_ '%#struct-unchecked-ref false)
           (table-set! _tbl10581_ '%#struct-unchecked-set! false)
           _tbl10581_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10577_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10577_ '%#begin false)
           (table-set! _tbl10577_ '%#begin-syntax false)
           (table-set! _tbl10577_ '%#begin-foreign false)
           (table-set! _tbl10577_ '%#module false)
           (table-set! _tbl10577_ '%#import false)
           (table-set! _tbl10577_ '%#export false)
           (table-set! _tbl10577_ '%#provide false)
           (table-set! _tbl10577_ '%#extern false)
           (table-set! _tbl10577_ '%#define-values false)
           (table-set! _tbl10577_ '%#define-syntax false)
           (table-set! _tbl10577_ '%#define-alias false)
           (table-set! _tbl10577_ '%#declare false)
           _tbl10577_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl10573_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10573_ (force gxc#&false-special-form))
           (hash-copy! _tbl10573_ (force gxc#&false-expression))
           _tbl10573_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10569_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10569_ (force gxc#&void-expression))
           (hash-copy! _tbl10569_ (force gxc#&void-special-form))
           (table-set! _tbl10569_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10569_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10569_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10569_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10569_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10569_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10562_ . _args10564_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10562_ _args10564_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10559_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10559_ (force gxc#&void))
           (table-set! _tbl10559_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10559_ '%#module gxc#lift-modules-module%)
           _tbl10559_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10552_ . _args10554_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10552_ _args10554_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10549_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10549_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10549_ '%#begin-syntax false)
           (table-set! _tbl10549_ '%#begin-foreign true)
           (table-set! _tbl10549_ '%#module false)
           (table-set! _tbl10549_ '%#import false)
           (table-set! _tbl10549_ '%#export false)
           (table-set! _tbl10549_ '%#provide false)
           (table-set! _tbl10549_ '%#extern false)
           (table-set! _tbl10549_ '%#define-values true)
           (table-set! _tbl10549_ '%#define-syntax false)
           (table-set! _tbl10549_ '%#define-alias false)
           (table-set! _tbl10549_ '%#declare false)
           (table-set! _tbl10549_ '%#lambda true)
           (table-set! _tbl10549_ '%#case-lambda true)
           (table-set! _tbl10549_ '%#let-values true)
           (table-set! _tbl10549_ '%#letrec-values true)
           (table-set! _tbl10549_ '%#letrec*-values true)
           (table-set! _tbl10549_ '%#quote true)
           (table-set! _tbl10549_ '%#call true)
           (table-set! _tbl10549_ '%#if true)
           (table-set! _tbl10549_ '%#ref true)
           (table-set! _tbl10549_ '%#set! true)
           (table-set! _tbl10549_ '%#struct-instance? true)
           (table-set! _tbl10549_ '%#struct-direct-instance? true)
           (table-set! _tbl10549_ '%#struct-ref true)
           (table-set! _tbl10549_ '%#struct-set! true)
           (table-set! _tbl10549_ '%#struct-direct-ref true)
           (table-set! _tbl10549_ '%#struct-direct-set! true)
           (table-set! _tbl10549_ '%#struct-unchecked-ref true)
           (table-set! _tbl10549_ '%#struct-unchecked-set! true)
           _tbl10549_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10542_ . _args10544_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10542_ _args10544_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl10539_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10539_ (force gxc#&false))
           (table-set! _tbl10539_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set! _tbl10539_ '%#lambda values)
           (table-set! _tbl10539_ '%#case-lambda values)
           (table-set!
            _tbl10539_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10539_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10539_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl10539_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx10532_ . _args10534_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10532_ _args10534_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10529_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10529_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10529_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10529_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10529_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10529_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10529_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10529_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10529_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl10529_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10525_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10525_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10525_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10525_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10525_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10518_ . _args10520_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10518_ _args10520_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10515_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10515_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10515_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10515_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10515_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10515_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10515_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10515_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10515_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10515_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10515_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10515_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10515_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10515_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10515_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10515_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10515_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10515_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10515_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10515_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl10515_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl10515_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl10515_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl10515_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl10515_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10508_ . _args10510_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10508_ _args10510_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10505_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10505_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10505_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10505_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10505_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10498_ . _args10500_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10498_ _args10500_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10495_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10495_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10495_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10495_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10495_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10495_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10495_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10495_ '%#quote void)
           (table-set! _tbl10495_ '%#quote-syntax void)
           (table-set! _tbl10495_ '%#call gxc#collect-operands)
           (table-set! _tbl10495_ '%#if gxc#collect-operands)
           (table-set! _tbl10495_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10495_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10495_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10495_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10495_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10495_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl10495_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl10495_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl10495_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl10495_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl10495_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10488_ . _args10490_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10488_ _args10490_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10485_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10485_ (force gxc#&void-expression))
           (table-set! _tbl10485_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10485_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10485_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10485_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10485_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10485_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10485_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10485_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10485_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10485_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10485_ '%#begin-foreign void)
           (table-set! _tbl10485_ '%#declare void)
           _tbl10485_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx10478_ . _args10480_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10478_ _args10480_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl10475_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10475_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10475_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10475_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10475_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10475_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl10475_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10475_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10475_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10475_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10475_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10475_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10475_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10475_ '%#declare void)
           _tbl10475_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx10468_ . _args10470_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10468_ _args10470_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx10425_ . _args10426_)
      (let ((_g1042810438_
             (lambda (_g1042910435_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1042910435_))))
        (let ((_g1042710465_
               (lambda (_g1042910441_)
                 (if (gx#stx-pair? _g1042910441_)
                     (let ((_e1043110443_ (gx#stx-e _g1042910441_)))
                       (let ((_hd1043210446_ (##car _e1043110443_))
                             (_tl1043310448_ (##cdr _e1043110443_)))
                         ((lambda (_L10451_)
                            (for-each
                             (lambda (_g1046010462_)
                               (apply gxc#compile-e _g1046010462_ _args10426_))
                             (gx#stx-e _L10451_)))
                          _tl1043310448_)))
                     (_g1042810438_ _g1042910441_)))))
          (_g1042710465_ _stx10425_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx10381_ . _args10382_)
      (let ((_g1038410394_
             (lambda (_g1038510391_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1038510391_))))
        (let ((_g1038310422_
               (lambda (_g1038510397_)
                 (if (gx#stx-pair? _g1038510397_)
                     (let ((_e1038710399_ (gx#stx-e _g1038510397_)))
                       (let ((_hd1038810402_ (##car _e1038710399_))
                             (_tl1038910404_ (##cdr _e1038710399_)))
                         ((lambda (_L10407_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g1041710419_)
                                  (apply gxc#compile-e
                                         _g1041710419_
                                         _args10382_))
                                (gx#stx-e _L10407_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl1038910404_)))
                     (_g1038410394_ _g1038510397_)))))
          (_g1038310422_ _stx10381_)))))
  (define gxc#collect-module%
    (lambda (_stx10323_ . _args10324_)
      (let ((_g1032610340_
             (lambda (_g1032710337_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1032710337_))))
        (let ((_g1032510378_
               (lambda (_g1032710343_)
                 (if (gx#stx-pair? _g1032710343_)
                     (let ((_e1033010345_ (gx#stx-e _g1032710343_)))
                       (let ((_hd1033110348_ (##car _e1033010345_))
                             (_tl1033210350_ (##cdr _e1033010345_)))
                         (if (gx#stx-pair? _tl1033210350_)
                             (let ((_e1033310353_ (gx#stx-e _tl1033210350_)))
                               (let ((_hd1033410356_ (##car _e1033310353_))
                                     (_tl1033510358_ (##cdr _e1033310353_)))
                                 ((lambda (_L10361_ _L10362_)
                                    (let ((_ctx10375_
                                           (gx#syntax-local-e__0 _L10362_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx10375_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args10324_))
                                       gx#current-expander-context
                                       _ctx10375_)))
                                  _tl1033510358_
                                  _hd1033410356_)))
                             (_g1032610340_ _g1032710343_))))
                     (_g1032610340_ _g1032710343_)))))
          (_g1032510378_ _stx10323_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx10255_ . _args10256_)
      (let ((_g1025810275_
             (lambda (_g1025910272_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1025910272_))))
        (let ((_g1025710320_
               (lambda (_g1025910278_)
                 (if (gx#stx-pair? _g1025910278_)
                     (let ((_e1026210280_ (gx#stx-e _g1025910278_)))
                       (let ((_hd1026310283_ (##car _e1026210280_))
                             (_tl1026410285_ (##cdr _e1026210280_)))
                         (if (gx#stx-pair? _tl1026410285_)
                             (let ((_e1026510288_ (gx#stx-e _tl1026410285_)))
                               (let ((_hd1026610291_ (##car _e1026510288_))
                                     (_tl1026710293_ (##cdr _e1026510288_)))
                                 (if (gx#stx-pair? _tl1026710293_)
                                     (let ((_e1026810296_
                                            (gx#stx-e _tl1026710293_)))
                                       (let ((_hd1026910299_
                                              (##car _e1026810296_))
                                             (_tl1027010301_
                                              (##cdr _e1026810296_)))
                                         (if (gx#stx-null? _tl1027010301_)
                                             ((lambda (_L10304_ _L10305_)
                                                (apply gxc#compile-e
                                                       _L10304_
                                                       _args10256_))
                                              _hd1026910299_
                                              _hd1026610291_)
                                             (_g1025810275_ _g1025910278_))))
                                     (_g1025810275_ _g1025910278_))))
                             (_g1025810275_ _g1025910278_))))
                     (_g1025810275_ _g1025910278_)))))
          (_g1025710320_ _stx10255_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx10137_ . _args10138_)
      (let ((_g1014010168_
             (lambda (_g1014110165_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1014110165_))))
        (let ((_g1013910252_
               (lambda (_g1014110171_)
                 (if (gx#stx-pair? _g1014110171_)
                     (let ((_e1014410173_ (gx#stx-e _g1014110171_)))
                       (let ((_hd1014510176_ (##car _e1014410173_))
                             (_tl1014610178_ (##cdr _e1014410173_)))
                         (if (gx#stx-pair/null? _tl1014610178_)
                             (if (fx>= (gx#stx-length _tl1014610178_) '0)
                                 (let ((_g10639_
                                        (gx#syntax-split-splice
                                         _tl1014610178_
                                         '0)))
                                   (begin
                                     (let ((_g10640_ (values-count _g10639_)))
                                       (if (not (fx= _g10640_ 2))
                                           (error "Context expects 2 values"
                                                  _g10640_)))
                                     (let ((_target1014710181_
                                            (values-ref _g10639_ 0))
                                           (_tl1014910183_
                                            (values-ref _g10639_ 1)))
                                       (if (gx#stx-null? _tl1014910183_)
                                           (letrec ((_loop1015010186_
                                                     (lambda (_hd1014810189_
                                                              _body1015410191_
                                                              _hd1015510193_)
                                                       (if (gx#stx-pair?
                                                            _hd1014810189_)
                                                           (let ((_e1015110196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1014810189_)))
                     (let ((_lp-hd1015210199_ (##car _e1015110196_))
                           (_lp-tl1015310201_ (##cdr _e1015110196_)))
                       (if (gx#stx-pair? _lp-hd1015210199_)
                           (let ((_e1015810204_ (gx#stx-e _lp-hd1015210199_)))
                             (let ((_hd1015910207_ (##car _e1015810204_))
                                   (_tl1016010209_ (##cdr _e1015810204_)))
                               (if (gx#stx-pair? _tl1016010209_)
                                   (let ((_e1016110212_
                                          (gx#stx-e _tl1016010209_)))
                                     (let ((_hd1016210215_
                                            (##car _e1016110212_))
                                           (_tl1016310217_
                                            (##cdr _e1016110212_)))
                                       (if (gx#stx-null? _tl1016310217_)
                                           (_loop1015010186_
                                            _lp-tl1015310201_
                                            (cons _hd1016210215_
                                                  _body1015410191_)
                                            (cons _hd1015910207_
                                                  _hd1015510193_))
                                           (_g1014010168_ _g1014110171_))))
                                   (_g1014010168_ _g1014110171_))))
                           (_g1014010168_ _g1014110171_))))
                   (let ((_body1015610220_ (reverse _body1015410191_))
                         (_hd1015710222_ (reverse _hd1015510193_)))
                     ((lambda (_L10225_ _L10226_)
                        (for-each
                         (lambda (_g1024010242_)
                           (apply gxc#compile-e _g1024010242_ _args10138_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1024410247_ _g1024510249_)
                                     (cons _g1024410247_ _g1024510249_))
                                   '()
                                   _L10225_))))
                      _body1015610220_
                      _hd1015710222_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1015010186_
                                              _target1014710181_
                                              '()
                                              '()))
                                           (_g1014010168_ _g1014110171_)))))
                                 (_g1014010168_ _g1014110171_))
                             (_g1014010168_ _g1014110171_))))
                     (_g1014010168_ _g1014110171_)))))
          (_g1013910252_ _stx10137_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9990_ . _args9991_)
      (let ((_g999310028_
             (lambda (_g999410025_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g999410025_))))
        (let ((_g999210134_
               (lambda (_g999410031_)
                 (if (gx#stx-pair? _g999410031_)
                     (let ((_e999810033_ (gx#stx-e _g999410031_)))
                       (let ((_hd999910036_ (##car _e999810033_))
                             (_tl1000010038_ (##cdr _e999810033_)))
                         (if (gx#stx-pair? _tl1000010038_)
                             (let ((_e1000110041_ (gx#stx-e _tl1000010038_)))
                               (let ((_hd1000210044_ (##car _e1000110041_))
                                     (_tl1000310046_ (##cdr _e1000110041_)))
                                 (if (gx#stx-pair/null? _hd1000210044_)
                                     (if (fx>= (gx#stx-length _hd1000210044_)
                                               '0)
                                         (let ((_g10641_
                                                (gx#syntax-split-splice
                                                 _hd1000210044_
                                                 '0)))
                                           (begin
                                             (let ((_g10642_
                                                    (values-count _g10641_)))
                                               (if (not (fx= _g10642_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10642_)))
                                             (let ((_target1000410049_
                                                    (values-ref _g10641_ 0))
                                                   (_tl1000610051_
                                                    (values-ref _g10641_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1000610051_)
                                                   (letrec ((_loop1000710054_
                                                             (lambda (_hd1000510057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1001110059_
                              _hd1001210061_)
                       (if (gx#stx-pair? _hd1000510057_)
                           (let ((_e1000810064_ (gx#stx-e _hd1000510057_)))
                             (let ((_lp-hd1000910067_ (##car _e1000810064_))
                                   (_lp-tl1001010069_ (##cdr _e1000810064_)))
                               (if (gx#stx-pair? _lp-hd1000910067_)
                                   (let ((_e1001510072_
                                          (gx#stx-e _lp-hd1000910067_)))
                                     (let ((_hd1001610075_
                                            (##car _e1001510072_))
                                           (_tl1001710077_
                                            (##cdr _e1001510072_)))
                                       (if (gx#stx-pair? _tl1001710077_)
                                           (let ((_e1001810080_
                                                  (gx#stx-e _tl1001710077_)))
                                             (let ((_hd1001910083_
                                                    (##car _e1001810080_))
                                                   (_tl1002010085_
                                                    (##cdr _e1001810080_)))
                                               (if (gx#stx-null?
                                                    _tl1002010085_)
                                                   (_loop1000710054_
                                                    _lp-tl1001010069_
                                                    (cons _hd1001910083_
                                                          _expr1001110059_)
                                                    (cons _hd1001610075_
                                                          _hd1001210061_))
                                                   (_g999310028_
                                                    _g999410031_))))
                                           (_g999310028_ _g999410031_))))
                                   (_g999310028_ _g999410031_))))
                           (let ((_expr1001310088_ (reverse _expr1001110059_))
                                 (_hd1001410090_ (reverse _hd1001210061_)))
                             (if (gx#stx-pair? _tl1000310046_)
                                 (let ((_e1002110093_
                                        (gx#stx-e _tl1000310046_)))
                                   (let ((_hd1002210096_ (##car _e1002110093_))
                                         (_tl1002310098_
                                          (##cdr _e1002110093_)))
                                     (if (gx#stx-null? _tl1002310098_)
                                         ((lambda (_L10101_ _L10102_ _L10103_)
                                            (for-each
                                             (lambda (_g1012210124_)
                                               (apply gxc#compile-e
                                                      _g1012210124_
                                                      _args9991_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1012610129_
                                                                _g1012710131_)
                                                         (cons _g1012610129_
                                                               _g1012710131_))
                                                       (cons _L10101_ '())
                                                       _L10102_))))
                                          _hd1002210096_
                                          _expr1001310088_
                                          _hd1001410090_)
                                         (_g999310028_ _g999410031_))))
                                 (_g999310028_ _g999410031_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1000710054_
                                                      _target1000410049_
                                                      '()
                                                      '()))
                                                   (_g999310028_
                                                    _g999410031_)))))
                                         (_g999310028_ _g999410031_))
                                     (_g999310028_ _g999410031_))))
                             (_g999310028_ _g999410031_))))
                     (_g999310028_ _g999410031_)))))
          (_g999210134_ _stx9990_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9922_ . _args9923_)
      (let ((_g99259942_
             (lambda (_g99269939_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99269939_))))
        (let ((_g99249987_
               (lambda (_g99269945_)
                 (if (gx#stx-pair? _g99269945_)
                     (let ((_e99299947_ (gx#stx-e _g99269945_)))
                       (let ((_hd99309950_ (##car _e99299947_))
                             (_tl99319952_ (##cdr _e99299947_)))
                         (if (gx#stx-pair? _tl99319952_)
                             (let ((_e99329955_ (gx#stx-e _tl99319952_)))
                               (let ((_hd99339958_ (##car _e99329955_))
                                     (_tl99349960_ (##cdr _e99329955_)))
                                 (if (gx#stx-pair? _tl99349960_)
                                     (let ((_e99359963_
                                            (gx#stx-e _tl99349960_)))
                                       (let ((_hd99369966_ (##car _e99359963_))
                                             (_tl99379968_
                                              (##cdr _e99359963_)))
                                         (if (gx#stx-null? _tl99379968_)
                                             ((lambda (_L9971_ _L9972_)
                                                (apply gxc#compile-e
                                                       _L9971_
                                                       _args9923_))
                                              _hd99369966_
                                              _hd99339958_)
                                             (_g99259942_ _g99269945_))))
                                     (_g99259942_ _g99269945_))))
                             (_g99259942_ _g99269945_))))
                     (_g99259942_ _g99269945_)))))
          (_g99249987_ _stx9922_)))))
  (define gxc#collect-operands
    (lambda (_stx9835_ . _args9836_)
      (let ((_g98389857_
             (lambda (_g98399854_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98399854_))))
        (let ((_g98379919_
               (lambda (_g98399860_)
                 (if (gx#stx-pair? _g98399860_)
                     (let ((_e98419862_ (gx#stx-e _g98399860_)))
                       (let ((_hd98429865_ (##car _e98419862_))
                             (_tl98439867_ (##cdr _e98419862_)))
                         (if (gx#stx-pair/null? _tl98439867_)
                             (if (fx>= (gx#stx-length _tl98439867_) '0)
                                 (let ((_g10643_
                                        (gx#syntax-split-splice
                                         _tl98439867_
                                         '0)))
                                   (begin
                                     (let ((_g10644_ (values-count _g10643_)))
                                       (if (not (fx= _g10644_ 2))
                                           (error "Context expects 2 values"
                                                  _g10644_)))
                                     (let ((_target98449870_
                                            (values-ref _g10643_ 0))
                                           (_tl98469872_
                                            (values-ref _g10643_ 1)))
                                       (if (gx#stx-null? _tl98469872_)
                                           (letrec ((_loop98479875_
                                                     (lambda (_hd98459878_
                                                              _rands98519880_)
                                                       (if (gx#stx-pair?
                                                            _hd98459878_)
                                                           (let ((_e98489883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd98459878_)))
                     (let ((_lp-hd98499886_ (##car _e98489883_))
                           (_lp-tl98509888_ (##cdr _e98489883_)))
                       (_loop98479875_
                        _lp-tl98509888_
                        (cons _lp-hd98499886_ _rands98519880_))))
                   (let ((_rands98529891_ (reverse _rands98519880_)))
                     ((lambda (_L9894_)
                        (for-each
                         (lambda (_g99079909_)
                           (apply gxc#compile-e _g99079909_ _args9836_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g99119914_ _g99129916_)
                                     (cons _g99119914_ _g99129916_))
                                   '()
                                   _L9894_))))
                      _rands98529891_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop98479875_
                                              _target98449870_
                                              '()))
                                           (_g98389857_ _g98399860_)))))
                                 (_g98389857_ _g98399860_))
                             (_g98389857_ _g98399860_))))
                     (_g98389857_ _g98399860_)))))
          (_g98379919_ _stx9835_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9766_)
      (let ((_g97689785_
             (lambda (_g97699782_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97699782_))))
        (let ((_g97679832_
               (lambda (_g97699788_)
                 (if (gx#stx-pair? _g97699788_)
                     (let ((_e97729790_ (gx#stx-e _g97699788_)))
                       (let ((_hd97739793_ (##car _e97729790_))
                             (_tl97749795_ (##cdr _e97729790_)))
                         (if (gx#stx-pair? _tl97749795_)
                             (let ((_e97759798_ (gx#stx-e _tl97749795_)))
                               (let ((_hd97769801_ (##car _e97759798_))
                                     (_tl97779803_ (##cdr _e97759798_)))
                                 (if (gx#stx-pair? _tl97779803_)
                                     (let ((_e97789806_
                                            (gx#stx-e _tl97779803_)))
                                       (let ((_hd97799809_ (##car _e97789806_))
                                             (_tl97809811_
                                              (##cdr _e97789806_)))
                                         (if (gx#stx-null? _tl97809811_)
                                             ((lambda (_L9814_ _L9815_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9830_)
                                                   (if (gx#identifier?
                                                        _bind9830_)
                                                       (gxc#add-module-binding!
                                                        _bind9830_
                                                        '#f)
                                                       '#!void))
                                                 _L9815_))
                                              _hd97799809_
                                              _hd97769801_)
                                             (_g97689785_ _g97699788_))))
                                     (_g97689785_ _g97699788_))))
                             (_g97689785_ _g97699788_))))
                     (_g97689785_ _g97699788_)))))
          (_g97679832_ _stx9766_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9699_)
      (let ((_g97019718_
             (lambda (_g97029715_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97029715_))))
        (let ((_g97009763_
               (lambda (_g97029721_)
                 (if (gx#stx-pair? _g97029721_)
                     (let ((_e97059723_ (gx#stx-e _g97029721_)))
                       (let ((_hd97069726_ (##car _e97059723_))
                             (_tl97079728_ (##cdr _e97059723_)))
                         (if (gx#stx-pair? _tl97079728_)
                             (let ((_e97089731_ (gx#stx-e _tl97079728_)))
                               (let ((_hd97099734_ (##car _e97089731_))
                                     (_tl97109736_ (##cdr _e97089731_)))
                                 (if (gx#stx-pair? _tl97109736_)
                                     (let ((_e97119739_
                                            (gx#stx-e _tl97109736_)))
                                       (let ((_hd97129742_ (##car _e97119739_))
                                             (_tl97139744_
                                              (##cdr _e97119739_)))
                                         (if (gx#stx-null? _tl97139744_)
                                             ((lambda (_L9747_ _L9748_)
                                                (gxc#add-module-binding!
                                                 _L9748_
                                                 '#t))
                                              _hd97129742_
                                              _hd97099734_)
                                             (_g97019718_ _g97029721_))))
                                     (_g97019718_ _g97029721_))))
                             (_g97019718_ _g97029721_))))
                     (_g97019718_ _g97029721_)))))
          (_g97009763_ _stx9699_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9641_ _modules9642_)
      (let ((_g96449658_
             (lambda (_g96459655_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96459655_))))
        (let ((_g96439696_
               (lambda (_g96459661_)
                 (if (gx#stx-pair? _g96459661_)
                     (let ((_e96489663_ (gx#stx-e _g96459661_)))
                       (let ((_hd96499666_ (##car _e96489663_))
                             (_tl96509668_ (##cdr _e96489663_)))
                         (if (gx#stx-pair? _tl96509668_)
                             (let ((_e96519671_ (gx#stx-e _tl96509668_)))
                               (let ((_hd96529674_ (##car _e96519671_))
                                     (_tl96539676_ (##cdr _e96519671_)))
                                 ((lambda (_L9679_ _L9680_)
                                    (let ((_ctx9693_
                                           (gx#syntax-local-e__0 _L9680_)))
                                      (begin
                                        (set-box!
                                         _modules9642_
                                         (cons _ctx9693_
                                               (unbox _modules9642_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9693_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9642_))
                                         gx#current-expander-context
                                         _ctx9693_))))
                                  _tl96539676_
                                  _hd96529674_)))
                             (_g96449658_ _g96459661_))))
                     (_g96449658_ _g96459661_)))))
          (_g96439696_ _stx9641_)))))
  (define gxc#add-module-binding!
    (lambda (_id9635_ _syntax?9636_)
      (let ((_eid9638_
             (##structure-ref
              (gx#resolve-identifier__0 _id9635_)
              '1
              gx#binding::t
              '#f))
            (_ht9639_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9638_)
            '#!void
            (table-set!
             _ht9639_
             _eid9638_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9638_)
              _syntax?9636_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9616_)
      (let ((_bind9618_ (gx#resolve-identifier__0 _id9616_)))
        (if _bind9618_
            (let ((_eid9620_ (##structure-ref _bind9618_ '1 gx#binding::t '#f))
                  (_ht9621_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9620_)
                  _eid9620_
                  (let ((_$e9623_ (table-ref _ht9621_ _eid9620_ '#f)))
                    (if _$e9623_
                        (values _$e9623_)
                        (if (##structure-instance-of?
                             _bind9618_
                             'gx#local-binding::t)
                            (let ((_gid9626_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9620_)))
                              (begin
                                (table-set! _ht9621_ _eid9620_ _gid9626_)
                                _gid9626_))
                            (if (##structure-instance-of?
                                 _bind9618_
                                 'gx#module-binding::t)
                                (let ((_gid9633_
                                       (let ((_$e9628_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9618_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9628_
                                             ((lambda (_ns9631_)
                                                (make-symbol
                                                 _ns9631_
                                                 '"#"
                                                 _eid9620_))
                                              _$e9628_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9620_)))))
                                  (begin
                                    (table-set! _ht9621_ _eid9620_ _gid9633_)
                                    _gid9633_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9616_
                                 _eid9620_
                                 _bind9618_)))))))
            (if (interned-symbol? (gx#stx-e _id9616_))
                (gx#stx-e _id9616_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9616_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9614_)
      (if (gx#identifier? _id9614_)
          (gxc#generate-runtime-binding-id _id9614_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9592
      (lambda (_sym9594_ _quote?9595_)
        (let ((_ht9597_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9599_ (table-ref _ht9597_ _sym9594_ '#f)))
            (if _$e9599_
                (values _$e9599_)
                (let ((_g9602_ (if _quote?9595_
                                   (make-symbol
                                    '"__"
                                    _sym9594_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9594_ '"_"))))
                  (begin (table-set! _ht9597_ _sym9594_ _g9602_) _g9602_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9607_)
          (let ((_quote?9609_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9592
             _sym9607_
             _quote?9609_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10646_
          (let ((_g10645_ (length _g10646_)))
            (cond ((fx= _g10645_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10646_))
                  ((fx= _g10645_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9592
                          _g10646_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g10646_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9591_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9591_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9553_)
      (if (interned-symbol? _key9553_)
          _key9553_
          (if (uninterned-symbol? _key9553_)
              (gxc#generate-runtime-gensym-reference__0 _key9553_)
              (let ((_key95549561_ _key9553_))
                (let ((_E95569565_
                       (lambda ()
                         (error '"No clause matching" _key95549561_))))
                  (let ((_K95579579_
                         (lambda (_mark9568_ _eid9569_)
                           (let ((_$e9571_
                                  (##structure-ref
                                   _mark9568_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9571_
                                 ((lambda (_ht9574_)
                                    (let ((_$e9576_
                                           (table-ref _ht9574_ _eid9569_ '#f)))
                                      (if _$e9576_
                                          (values _$e9576_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9569_))))
                                  _$e9571_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9569_))))))
                    (if (##pair? _key95549561_)
                        (let ((_hd95589582_ (##car _key95549561_))
                              (_tl95599584_ (##cdr _key95549561_)))
                          (let ((_eid9587_ _hd95589582_))
                            (let ((_mark9589_ _tl95599584_))
                              (_K95579579_ _mark9589_ _eid9587_))))
                        (_E95569565_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9538
      (lambda (_top9540_)
        (if _top9540_
            (let ((_ns9542_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9543_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9543_)
                  (make-symbol
                   _ns9542_
                   '"["
                   (number->string _phi9543_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9542_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9549_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9538 _top9549_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10648_
          (let ((_g10647_ (length _g10648_)))
            (cond ((fx= _g10647_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10648_))
                  ((fx= _g10647_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9538
                          _g10648_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g10648_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9537_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx9457_)
      (let ((_g94599469_
             (lambda (_g94609466_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94609466_))))
        (let ((_g94589534_
               (lambda (_g94609472_)
                 (if (gx#stx-pair? _g94609472_)
                     (let ((_e94629474_ (gx#stx-e _g94609472_)))
                       (let ((_hd94639477_ (##car _e94629474_))
                             (_tl94649479_ (##cdr _e94629474_)))
                         ((lambda (_L9482_)
                            (let ((_body9492_
                                   (gx#stx-map1 gxc#compile-e _L9482_)))
                              (let ((_body9531_
                                     (filter (lambda (_stx9494_)
                                               (let ((_g94979506_
                                                      (lambda (_g94989503_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g94989503_))))
                                                 (let ((_g94969513_
                                                        (lambda (_g94989509_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g94959528_
                                                          (lambda (_g94989516_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g94989516_)
                        (let ((_e94999518_ (gx#stx-e _g94989516_)))
                          (let ((_hd95009521_ (##car _e94999518_))
                                (_tl95019523_ (##cdr _e94999518_)))
                            (if (gx#identifier? _hd95009521_)
                                (if (gx#stx-eq? 'begin _hd95009521_)
                                    (if (gx#stx-null? _tl95019523_)
                                        ((lambda () '#f))
                                        (_g94969513_ _g94989516_))
                                    (_g94969513_ _g94989516_))
                                (_g94969513_ _g94989516_))))
                        (_g94969513_ _g94989516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94959528_
                                                      _stx9494_)))))
                                             _body9492_)))
                                (let ()
                                  (if (fx= (length _body9531_) '1)
                                      (car _body9531_)
                                      (cons 'begin _body9531_))))))
                          _tl94649479_)))
                     (_g94599469_ _g94609472_)))))
          (_g94589534_ _stx9457_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx9419_)
      (let ((_g94219431_
             (lambda (_g94229428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94229428_))))
        (let ((_g94209454_
               (lambda (_g94229434_)
                 (if (gx#stx-pair? _g94229434_)
                     (let ((_e94249436_ (gx#stx-e _g94229434_)))
                       (let ((_hd94259439_ (##car _e94249436_))
                             (_tl94269441_ (##cdr _e94249436_)))
                         ((lambda (_L9444_)
                            (cons 'begin (gx#syntax->datum _L9444_)))
                          _tl94269441_)))
                     (_g94219431_ _g94229434_)))))
          (_g94209454_ _stx9419_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9381_)
      (let ((_g93839393_
             (lambda (_g93849390_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93849390_))))
        (let ((_g93829416_
               (lambda (_g93849396_)
                 (if (gx#stx-pair? _g93849396_)
                     (let ((_e93869398_ (gx#stx-e _g93849396_)))
                       (let ((_hd93879401_ (##car _e93869398_))
                             (_tl93889403_ (##cdr _e93869398_)))
                         ((lambda (_L9406_)
                            (cons 'declare (map gx#syntax->datum _L9406_)))
                          _tl93889403_)))
                     (_g93839393_ _g93849396_)))))
          (_g93829416_ _stx9381_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx9137_)
      (let ((_g91399156_
             (lambda (_g91409153_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91409153_))))
        (let ((_g91389378_
               (lambda (_g91409159_)
                 (if (gx#stx-pair? _g91409159_)
                     (let ((_e91439161_ (gx#stx-e _g91409159_)))
                       (let ((_hd91449164_ (##car _e91439161_))
                             (_tl91459166_ (##cdr _e91439161_)))
                         (if (gx#stx-pair? _tl91459166_)
                             (let ((_e91469169_ (gx#stx-e _tl91459166_)))
                               (let ((_hd91479172_ (##car _e91469169_))
                                     (_tl91489174_ (##cdr _e91469169_)))
                                 (if (gx#stx-pair? _tl91489174_)
                                     (let ((_e91499177_
                                            (gx#stx-e _tl91489174_)))
                                       (let ((_hd91509180_ (##car _e91499177_))
                                             (_tl91519182_
                                              (##cdr _e91499177_)))
                                         (if (gx#stx-null? _tl91519182_)
                                             ((lambda (_L9185_ _L9186_)
                                                (let ((_g92039216_
                                                       (lambda (_g92049213_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g92049213_))))
                                                  (let ((_g92029330_
                                                         (lambda (_g92049219_)
                                                           ((lambda ()
                                                              (let ((_tmp9223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9538
                              '#t)))
                        (let ((_body9327_
                               ((letrec ((_lp9225_
                                          (lambda (_rest9227_ _k9228_ _r9229_)
                                            (let ((_g92349250_
                                                   (lambda (_g92359247_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g92359247_))))
                                              (let ((_g92339257_
                                                     (lambda (_g92359253_)
                                                       ((lambda ()
                                                          (reverse _r9229_))))))
                                                (let ((_g92329278_
                                                       (lambda (_g92359260_)
                                                         ((lambda (_L9262_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9262_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L9262_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp9223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k9228_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r9229_)
                        (_g92339257_ _g92359260_)))
                  _g92359260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g92319302_
                                                         (lambda (_g92359281_)
                                                           (if (gx#stx-pair?
                                                                _g92359281_)
                                                               (let ((_e92429283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g92359281_)))
                         (let ((_hd92439286_ (##car _e92429283_))
                               (_tl92449288_ (##cdr _e92429283_)))
                           ((lambda (_L9291_ _L9292_)
                              (_lp9225_
                               _L9291_
                               (fx+ _k9228_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L9292_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp9223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k9228_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r9229_)))
                            _tl92449288_
                            _hd92439286_)))
                       (_g92329278_ _g92359281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g92309324_
                                                           (lambda (_g92359305_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g92359305_)
                         (let ((_e92379307_ (gx#stx-e _g92359305_)))
                           (let ((_hd92389310_ (##car _e92379307_))
                                 (_tl92399312_ (##cdr _e92379307_)))
                             (if (gx#stx-datum? _hd92389310_)
                                 (if (equal? (gx#stx-e _hd92389310_) '#f)
                                     ((lambda (_L9315_)
                                        (_lp9225_
                                         _L9315_
                                         (fx+ _k9228_ '1)
                                         _r9229_))
                                      _tl92399312_)
                                     (_g92319302_ _g92359305_))
                                 (_g92319302_ _g92359305_))))
                         (_g92319302_ _g92359305_)))))
              (_g92309324_ _rest9227_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp9225_)
                                _L9186_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp9223_
                                                    (cons (gxc#compile-e
                                                           _L9185_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp9223_
                                               _L9186_)
                                              _body9327_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g92019360_
                                                           (lambda (_g92049333_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g92049333_)
                         (let ((_e92099335_ (gx#stx-e _g92049333_)))
                           (let ((_hd92109338_ (##car _e92099335_))
                                 (_tl92119340_ (##cdr _e92099335_)))
                             (if (gx#stx-null? _tl92119340_)
                                 ((lambda (_L9343_)
                                    (let ((_eid9352_
                                           (gxc#generate-runtime-binding-id
                                            _L9343_)))
                                      (begin
                                        (let ((_lambda-expr93539355_
                                               (gxc#apply-find-lambda-expression
                                                _L9185_)))
                                          (if _lambda-expr93539355_
                                              (let ((_lambda-expr9358_
                                                     _lambda-expr93539355_))
                                                (table-set!
                                                 (gxc#current-compile-runtime-names)
                                                 _lambda-expr9358_
                                                 _eid9352_))
                                              '#f))
                                        (cons 'define
                                              (cons _eid9352_
                                                    (cons (gxc#compile-e
                                                           _L9185_)
                                                          '()))))))
                                  _hd92109338_)
                                 (_g92029330_ _g92049333_))))
                         (_g92029330_ _g92049333_)))))
              (let ((_g92009375_
                     (lambda (_g92049363_)
                       (if (gx#stx-pair? _g92049363_)
                           (let ((_e92059365_ (gx#stx-e _g92049363_)))
                             (let ((_hd92069368_ (##car _e92059365_))
                                   (_tl92079370_ (##cdr _e92059365_)))
                               (if (gx#stx-datum? _hd92069368_)
                                   (if (equal? (gx#stx-e _hd92069368_) '#f)
                                       (if (gx#stx-null? _tl92079370_)
                                           ((lambda ()
                                              (gxc#compile-e _L9185_)))
                                           (_g92019360_ _g92049363_))
                                       (_g92019360_ _g92049363_))
                                   (_g92019360_ _g92049363_))))
                           (_g92019360_ _g92049363_)))))
                (_g92009375_ _L9186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd91509180_
                                              _hd91479172_)
                                             (_g91399156_ _g91409159_))))
                                     (_g91399156_ _g91409159_))))
                             (_g91399156_ _g91409159_))))
                     (_g91399156_ _g91409159_)))))
          (_g91389378_ _stx9137_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals9125_ _hd9126_)
      (let ((_len9128_ (gx#stx-length _hd9126_)))
        (let ((_cmp9130_ (if (gx#stx-list? _hd9126_) 'fx= 'fx>=)))
          (let ((_errmsg9132_
                 (string-append
                  (if (gx#stx-list? _hd9126_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len9128_)
                  '" values")))
            (let ((_count9134_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd9126_)) (fx= _len9128_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count9134_
                                            (cons (cons 'values-count
                                                        (cons _vals9125_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp9130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count9134_ (cons _len9128_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg9132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count9134_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx9058_)
      (let ((_g90609077_
             (lambda (_g90619074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90619074_))))
        (let ((_g90599122_
               (lambda (_g90619080_)
                 (if (gx#stx-pair? _g90619080_)
                     (let ((_e90649082_ (gx#stx-e _g90619080_)))
                       (let ((_hd90659085_ (##car _e90649082_))
                             (_tl90669087_ (##cdr _e90649082_)))
                         (if (gx#stx-pair? _tl90669087_)
                             (let ((_e90679090_ (gx#stx-e _tl90669087_)))
                               (let ((_hd90689093_ (##car _e90679090_))
                                     (_tl90699095_ (##cdr _e90679090_)))
                                 (if (gx#stx-pair? _tl90699095_)
                                     (let ((_e90709098_
                                            (gx#stx-e _tl90699095_)))
                                       (let ((_hd90719101_ (##car _e90709098_))
                                             (_tl90729103_
                                              (##cdr _e90709098_)))
                                         (if (gx#stx-null? _tl90729103_)
                                             ((lambda (_L9106_ _L9107_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L9107_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L9106_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd90719101_
                                              _hd90689093_)
                                             (_g90609077_ _g90619080_))))
                                     (_g90609077_ _g90619080_))))
                             (_g90609077_ _g90619080_))))
                     (_g90609077_ _g90619080_)))))
          (_g90599122_ _stx9058_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd9056_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd9056_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7589_)
      (let ((_runtime-identifier=?7591_
             (lambda (_id-stx9047_ _sym9048_)
               (let ((_bind90499051_ (gx#resolve-identifier__0 _id-stx9047_)))
                 (if _bind90499051_
                     (let ((_bind9054_ _bind90499051_))
                       (eq? (##structure-ref _bind9054_ '1 gx#binding::t '#f)
                            _sym9048_))
                     '#f)))))
        (let ((_dispatch-case?7592_
               (lambda (_hd8277_ _body8278_)
                 (let ((_form8280_ (cons _hd8277_ (cons _body8278_ '()))))
                   (let ((_g82858442_
                          (lambda (_g82868439_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g82868439_))))
                     (let ((_g82848449_
                            (lambda (_g82868445_) ((lambda () '#f)))))
                       (let ((_g82838590_
                              (lambda (_g82868452_)
                                (if (gx#stx-pair? _g82868452_)
                                    (let ((_e84028454_ (gx#stx-e _g82868452_)))
                                      (let ((_hd84038457_ (##car _e84028454_))
                                            (_tl84048459_ (##cdr _e84028454_)))
                                        (if (gx#stx-pair? _tl84048459_)
                                            (let ((_e84058462_
                                                   (gx#stx-e _tl84048459_)))
                                              (let ((_hd84068465_
                                                     (##car _e84058462_))
                                                    (_tl84078467_
                                                     (##cdr _e84058462_)))
                                                (if (gx#stx-pair? _hd84068465_)
                                                    (let ((_e84088470_
                                                           (gx#stx-e
                                                            _hd84068465_)))
                                                      (let ((_hd84098473_
                                                             (##car _e84088470_))
                                                            (_tl84108475_
                                                             (##cdr _e84088470_)))
                                                        (if (gx#identifier?
                                                             _hd84098473_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd84098473_)
                        (if (gx#stx-pair? _tl84108475_)
                            (let ((_e84118478_ (gx#stx-e _tl84108475_)))
                              (let ((_hd84128481_ (##car _e84118478_))
                                    (_tl84138483_ (##cdr _e84118478_)))
                                (if (gx#stx-pair? _hd84128481_)
                                    (let ((_e84148486_
                                           (gx#stx-e _hd84128481_)))
                                      (let ((_hd84158489_ (##car _e84148486_))
                                            (_tl84168491_ (##cdr _e84148486_)))
                                        (if (gx#identifier? _hd84158489_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd84158489_)
                                                (if (gx#stx-pair? _tl84168491_)
                                                    (let ((_e84178494_
                                                           (gx#stx-e
                                                            _tl84168491_)))
                                                      (let ((_hd84188497_
                                                             (##car _e84178494_))
                                                            (_tl84198499_
                                                             (##cdr _e84178494_)))
                                                        (if (gx#stx-null?
                                                             _tl84198499_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl84138483_)
                        (let ((_e84208502_ (gx#stx-e _tl84138483_)))
                          (let ((_hd84218505_ (##car _e84208502_))
                                (_tl84228507_ (##cdr _e84208502_)))
                            (if (gx#stx-pair? _hd84218505_)
                                (let ((_e84238510_ (gx#stx-e _hd84218505_)))
                                  (let ((_hd84248513_ (##car _e84238510_))
                                        (_tl84258515_ (##cdr _e84238510_)))
                                    (if (gx#identifier? _hd84248513_)
                                        (if (gx#stx-eq? '%#ref _hd84248513_)
                                            (if (gx#stx-pair? _tl84258515_)
                                                (let ((_e84268518_
                                                       (gx#stx-e
                                                        _tl84258515_)))
                                                  (let ((_hd84278521_
                                                         (##car _e84268518_))
                                                        (_tl84288523_
                                                         (##cdr _e84268518_)))
                                                    (if (gx#stx-null?
                                                         _tl84288523_)
                                                        (if (gx#stx-pair?
                                                             _tl84228507_)
                                                            (let ((_e84298526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl84228507_)))
                      (let ((_hd84308529_ (##car _e84298526_))
                            (_tl84318531_ (##cdr _e84298526_)))
                        (if (gx#stx-pair? _hd84308529_)
                            (let ((_e84328534_ (gx#stx-e _hd84308529_)))
                              (let ((_hd84338537_ (##car _e84328534_))
                                    (_tl84348539_ (##cdr _e84328534_)))
                                (if (gx#identifier? _hd84338537_)
                                    (if (gx#stx-eq? '%#ref _hd84338537_)
                                        (if (gx#stx-pair? _tl84348539_)
                                            (let ((_e84358542_
                                                   (gx#stx-e _tl84348539_)))
                                              (let ((_hd84368545_
                                                     (##car _e84358542_))
                                                    (_tl84378547_
                                                     (##cdr _e84358542_)))
                                                (if (gx#stx-null? _tl84378547_)
                                                    (if (gx#stx-null?
                                                         _tl84318531_)
                                                        (if (gx#stx-null?
                                                             _tl84078467_)
                                                            ((lambda (_L8550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8551_
                              _L8552_
                              _L8553_)
                       (if (if (gx#identifier? _L8553_)
                               (if (_runtime-identifier=?7591_ _L8552_ 'apply)
                                   (if (gx#free-identifier=? _L8553_ _L8550_)
                                       (not (gx#free-identifier=?
                                             _L8551_
                                             _L8553_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g82848449_ _g82868452_)))
                     _hd84368545_
                     _hd84278521_
                     _hd84188497_
                     _hd84038457_)
                    (_g82848449_ _g82868452_))
                (_g82848449_ _g82868452_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82848449_
                                                     _g82868452_))))
                                            (_g82848449_ _g82868452_))
                                        (_g82848449_ _g82868452_))
                                    (_g82848449_ _g82868452_))))
                            (_g82848449_ _g82868452_))))
                    (_g82848449_ _g82868452_))
                (_g82848449_ _g82868452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82848449_ _g82868452_))
                                            (_g82848449_ _g82868452_))
                                        (_g82848449_ _g82868452_))))
                                (_g82848449_ _g82868452_))))
                        (_g82848449_ _g82868452_))
                    (_g82848449_ _g82868452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82848449_ _g82868452_))
                                                (_g82848449_ _g82868452_))
                                            (_g82848449_ _g82868452_))))
                                    (_g82848449_ _g82868452_))))
                            (_g82848449_ _g82868452_))
                        (_g82848449_ _g82868452_))
                    (_g82848449_ _g82868452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82848449_
                                                     _g82868452_))))
                                            (_g82848449_ _g82868452_))))
                                    (_g82848449_ _g82868452_)))))
                         (let ((_g82828850_
                                (lambda (_g82868593_)
                                  (if (gx#stx-pair? _g82868593_)
                                      (let ((_e83388595_
                                             (gx#stx-e _g82868593_)))
                                        (let ((_hd83398598_
                                               (##car _e83388595_))
                                              (_tl83408600_
                                               (##cdr _e83388595_)))
                                          (if (gx#stx-pair/null? _hd83398598_)
                                              (if (fx>= (gx#stx-length
                                                         _hd83398598_)
                                                        '0)
                                                  (let ((_g10657_
                                                         (gx#syntax-split-splice
                                                          _hd83398598_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10658_
                                                             (values-count
                                                              _g10657_)))
                                                        (if (not (fx= _g10658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10658_)))
              (let ((_target83418603_ (values-ref _g10657_ 0))
                    (_tl83438605_ (values-ref _g10657_ 1)))
                (letrec ((_loop83448608_
                          (lambda (_hd83428611_ _arg83488613_)
                            (if (gx#stx-pair? _hd83428611_)
                                (let ((_e83458616_ (gx#stx-e _hd83428611_)))
                                  (let ((_lp-hd83468619_ (##car _e83458616_))
                                        (_lp-tl83478621_ (##cdr _e83458616_)))
                                    (_loop83448608_
                                     _lp-tl83478621_
                                     (cons _lp-hd83468619_ _arg83488613_))))
                                (let ((_arg83498624_ (reverse _arg83488613_)))
                                  (if (gx#stx-pair? _tl83408600_)
                                      (let ((_e83508627_
                                             (gx#stx-e _tl83408600_)))
                                        (let ((_hd83518630_
                                               (##car _e83508627_))
                                              (_tl83528632_
                                               (##cdr _e83508627_)))
                                          (if (gx#stx-pair? _hd83518630_)
                                              (let ((_e83538635_
                                                     (gx#stx-e _hd83518630_)))
                                                (let ((_hd83548638_
                                                       (##car _e83538635_))
                                                      (_tl83558640_
                                                       (##cdr _e83538635_)))
                                                  (if (gx#identifier?
                                                       _hd83548638_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd83548638_)
                                                          (if (gx#stx-pair?
                                                               _tl83558640_)
                                                              (let ((_e83568643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl83558640_)))
                        (let ((_hd83578646_ (##car _e83568643_))
                              (_tl83588648_ (##cdr _e83568643_)))
                          (if (gx#stx-pair? _hd83578646_)
                              (let ((_e83598651_ (gx#stx-e _hd83578646_)))
                                (let ((_hd83608654_ (##car _e83598651_))
                                      (_tl83618656_ (##cdr _e83598651_)))
                                  (if (gx#identifier? _hd83608654_)
                                      (if (gx#stx-eq? '%#ref _hd83608654_)
                                          (if (gx#stx-pair? _tl83618656_)
                                              (let ((_e83628659_
                                                     (gx#stx-e _tl83618656_)))
                                                (let ((_hd83638662_
                                                       (##car _e83628659_))
                                                      (_tl83648664_
                                                       (##cdr _e83628659_)))
                                                  (if (gx#stx-null?
                                                       _tl83648664_)
                                                      (if (gx#stx-pair?
                                                           _tl83588648_)
                                                          (let ((_e83658667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl83588648_)))
                    (let ((_hd83668670_ (##car _e83658667_))
                          (_tl83678672_ (##cdr _e83658667_)))
                      (if (gx#stx-pair? _hd83668670_)
                          (let ((_e83688675_ (gx#stx-e _hd83668670_)))
                            (let ((_hd83698678_ (##car _e83688675_))
                                  (_tl83708680_ (##cdr _e83688675_)))
                              (if (gx#identifier? _hd83698678_)
                                  (if (gx#stx-eq? '%#ref _hd83698678_)
                                      (if (gx#stx-pair? _tl83708680_)
                                          (let ((_e83718683_
                                                 (gx#stx-e _tl83708680_)))
                                            (let ((_hd83728686_
                                                   (##car _e83718683_))
                                                  (_tl83738688_
                                                   (##cdr _e83718683_)))
                                              (if (gx#stx-null? _tl83738688_)
                                                  (if (gx#stx-pair/null?
                                                       _tl83678672_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83678672_)
                        '1)
                  (let ((_g10659_ (gx#syntax-split-splice _tl83678672_ '1)))
                    (begin
                      (let ((_g10660_ (values-count _g10659_)))
                        (if (not (fx= _g10660_ 2))
                            (error "Context expects 2 values" _g10660_)))
                      (let ((_target83748691_ (values-ref _g10659_ 0))
                            (_tl83768693_ (values-ref _g10659_ 1)))
                        (if (gx#stx-pair? _tl83768693_)
                            (let ((_e83838696_ (gx#stx-e _tl83768693_)))
                              (let ((_hd83848699_ (##car _e83838696_))
                                    (_tl83858701_ (##cdr _e83838696_)))
                                (if (gx#stx-pair? _hd83848699_)
                                    (let ((_e83868704_
                                           (gx#stx-e _hd83848699_)))
                                      (let ((_hd83878707_ (##car _e83868704_))
                                            (_tl83888709_ (##cdr _e83868704_)))
                                        (if (gx#identifier? _hd83878707_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd83878707_)
                                                (if (gx#stx-pair? _tl83888709_)
                                                    (let ((_e83898712_
                                                           (gx#stx-e
                                                            _tl83888709_)))
                                                      (let ((_hd83908715_
                                                             (##car _e83898712_))
                                                            (_tl83918717_
                                                             (##cdr _e83898712_)))
                                                        (if (gx#stx-null?
                                                             _tl83918717_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83858701_)
                        (letrec ((_loop83778720_
                                  (lambda (_hd83758723_ _xarg83818725_)
                                    (if (gx#stx-pair? _hd83758723_)
                                        (let ((_e83788728_
                                               (gx#stx-e _hd83758723_)))
                                          (let ((_lp-hd83798731_
                                                 (##car _e83788728_))
                                                (_lp-tl83808733_
                                                 (##cdr _e83788728_)))
                                            (if (gx#stx-pair? _lp-hd83798731_)
                                                (let ((_e83928736_
                                                       (gx#stx-e
                                                        _lp-hd83798731_)))
                                                  (let ((_hd83938739_
                                                         (##car _e83928736_))
                                                        (_tl83948741_
                                                         (##cdr _e83928736_)))
                                                    (if (gx#identifier?
                                                         _hd83938739_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd83938739_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83948741_)
                        (let ((_e83958744_ (gx#stx-e _tl83948741_)))
                          (let ((_hd83968747_ (##car _e83958744_))
                                (_tl83978749_ (##cdr _e83958744_)))
                            (if (gx#stx-null? _tl83978749_)
                                (_loop83778720_
                                 _lp-tl83808733_
                                 (cons _hd83968747_ _xarg83818725_))
                                (_g82838590_ _g82868593_))))
                        (_g82838590_ _g82868593_))
                    (_g82838590_ _g82868593_))
                (_g82838590_ _g82868593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82838590_ _g82868593_))))
                                        (let ((_xarg83828752_
                                               (reverse _xarg83818725_)))
                                          (if (gx#stx-null? _tl83528632_)
                                              ((lambda (_L8755_
                                                        _L8756_
                                                        _L8757_
                                                        _L8758_
                                                        _L8759_
                                                        _L8760_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g88038806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g88048808_)
                              (cons _g88038806_ _g88048808_))
                            '()
                            _L8760_)))
                 (if (gx#identifier? _L8759_)
                     (if (_runtime-identifier=?7591_ _L8758_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g88108813_
                                                             _g88118815_)
                                                      (cons _g88108813_
                                                            _g88118815_))
                                                    '()
                                                    _L8760_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g88178820_
                                                             _g88188822_)
                                                      (cons _g88178820_
                                                            _g88188822_))
                                                    '()
                                                    _L8756_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g88248827_
                                                            _g88258829_)
                                                     (cons _g88248827_
                                                           _g88258829_))
                                                   '()
                                                   _L8760_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g88318834_
                                                            _g88328836_)
                                                     (cons _g88318834_
                                                           _g88328836_))
                                                   '()
                                                   _L8756_)))
                                 (if (gx#free-identifier=? _L8759_ _L8755_)
                                     (not (find (lambda (_g88388840_)
                                                  (gx#free-identifier=?
                                                   _g88388840_
                                                   _L8757_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g88428845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g88438847_)
                    (cons _g88428845_ _g88438847_))
                  (cons _L8759_ '())
                  _L8760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g82838590_
                                                      _g82868593_)))
                                               _hd83908715_
                                               _xarg83828752_
                                               _hd83728686_
                                               _hd83638662_
                                               _tl83438605_
                                               _arg83498624_)
                                              (_g82838590_ _g82868593_)))))))
                          (_loop83778720_ _target83748691_ '()))
                        (_g82838590_ _g82868593_))
                    (_g82838590_ _g82868593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82838590_ _g82868593_))
                                                (_g82838590_ _g82868593_))
                                            (_g82838590_ _g82868593_))))
                                    (_g82838590_ _g82868593_))))
                            (_g82838590_ _g82868593_)))))
                  (_g82838590_ _g82868593_))
              (_g82838590_ _g82868593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82838590_ _g82868593_))))
                                          (_g82838590_ _g82868593_))
                                      (_g82838590_ _g82868593_))
                                  (_g82838590_ _g82868593_))))
                          (_g82838590_ _g82868593_))))
                  (_g82838590_ _g82868593_))
              (_g82838590_ _g82868593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82838590_ _g82868593_))
                                          (_g82838590_ _g82868593_))
                                      (_g82838590_ _g82868593_))))
                              (_g82838590_ _g82868593_))))
                      (_g82838590_ _g82868593_))
                  (_g82838590_ _g82868593_))
              (_g82838590_ _g82868593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82838590_ _g82868593_))))
                                      (_g82838590_ _g82868593_)))))))
                  (_loop83448608_ _target83418603_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82838590_ _g82868593_))
                                              (_g82838590_ _g82868593_))))
                                      (_g82838590_ _g82868593_)))))
                           (let ((_g82819044_
                                  (lambda (_g82868853_)
                                    (if (gx#stx-pair? _g82868853_)
                                        (let ((_e82908855_
                                               (gx#stx-e _g82868853_)))
                                          (let ((_hd82918858_
                                                 (##car _e82908855_))
                                                (_tl82928860_
                                                 (##cdr _e82908855_)))
                                            (if (gx#stx-pair/null?
                                                 _hd82918858_)
                                                (if (fx>= (gx#stx-length
                                                           _hd82918858_)
                                                          '0)
                                                    (let ((_g10661_
                                                           (gx#syntax-split-splice
                                                            _hd82918858_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10662_
                                                               (values-count
                                                                _g10661_)))
                                                          (if (not (fx= _g10662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10662_)))
                (let ((_target82938863_ (values-ref _g10661_ 0))
                      (_tl82958865_ (values-ref _g10661_ 1)))
                  (if (gx#stx-null? _tl82958865_)
                      (letrec ((_loop82968868_
                                (lambda (_hd82948871_ _arg83008873_)
                                  (if (gx#stx-pair? _hd82948871_)
                                      (let ((_e82978876_
                                             (gx#stx-e _hd82948871_)))
                                        (let ((_lp-hd82988879_
                                               (##car _e82978876_))
                                              (_lp-tl82998881_
                                               (##cdr _e82978876_)))
                                          (_loop82968868_
                                           _lp-tl82998881_
                                           (cons _lp-hd82988879_
                                                 _arg83008873_))))
                                      (let ((_arg83018884_
                                             (reverse _arg83008873_)))
                                        (if (gx#stx-pair? _tl82928860_)
                                            (let ((_e83028887_
                                                   (gx#stx-e _tl82928860_)))
                                              (let ((_hd83038890_
                                                     (##car _e83028887_))
                                                    (_tl83048892_
                                                     (##cdr _e83028887_)))
                                                (if (gx#stx-pair? _hd83038890_)
                                                    (let ((_e83058895_
                                                           (gx#stx-e
                                                            _hd83038890_)))
                                                      (let ((_hd83068898_
                                                             (##car _e83058895_))
                                                            (_tl83078900_
                                                             (##cdr _e83058895_)))
                                                        (if (gx#identifier?
                                                             _hd83068898_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd83068898_)
                        (if (gx#stx-pair? _tl83078900_)
                            (let ((_e83088903_ (gx#stx-e _tl83078900_)))
                              (let ((_hd83098906_ (##car _e83088903_))
                                    (_tl83108908_ (##cdr _e83088903_)))
                                (if (gx#stx-pair? _hd83098906_)
                                    (let ((_e83118911_
                                           (gx#stx-e _hd83098906_)))
                                      (let ((_hd83128914_ (##car _e83118911_))
                                            (_tl83138916_ (##cdr _e83118911_)))
                                        (if (gx#identifier? _hd83128914_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd83128914_)
                                                (if (gx#stx-pair? _tl83138916_)
                                                    (let ((_e83148919_
                                                           (gx#stx-e
                                                            _tl83138916_)))
                                                      (let ((_hd83158922_
                                                             (##car _e83148919_))
                                                            (_tl83168924_
                                                             (##cdr _e83148919_)))
                                                        (if (gx#stx-null?
                                                             _tl83168924_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83108908_)
                        (if (fx>= (gx#stx-length _tl83108908_) '0)
                            (let ((_g10663_
                                   (gx#syntax-split-splice _tl83108908_ '0)))
                              (begin
                                (let ((_g10664_ (values-count _g10663_)))
                                  (if (not (fx= _g10664_ 2))
                                      (error "Context expects 2 values"
                                             _g10664_)))
                                (let ((_target83178927_
                                       (values-ref _g10663_ 0))
                                      (_tl83198929_ (values-ref _g10663_ 1)))
                                  (if (gx#stx-null? _tl83198929_)
                                      (letrec ((_loop83208932_
                                                (lambda (_hd83188935_
                                                         _xarg83248937_)
                                                  (if (gx#stx-pair?
                                                       _hd83188935_)
                                                      (let ((_e83218940_
                                                             (gx#stx-e
                                                              _hd83188935_)))
                                                        (let ((_lp-hd83228943_
                                                               (##car _e83218940_))
                                                              (_lp-tl83238945_
                                                               (##cdr _e83218940_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd83228943_)
                                                              (let ((_e83268948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd83228943_)))
                        (let ((_hd83278951_ (##car _e83268948_))
                              (_tl83288953_ (##cdr _e83268948_)))
                          (if (gx#identifier? _hd83278951_)
                              (if (gx#stx-eq? '%#ref _hd83278951_)
                                  (if (gx#stx-pair? _tl83288953_)
                                      (let ((_e83298956_
                                             (gx#stx-e _tl83288953_)))
                                        (let ((_hd83308959_
                                               (##car _e83298956_))
                                              (_tl83318961_
                                               (##cdr _e83298956_)))
                                          (if (gx#stx-null? _tl83318961_)
                                              (_loop83208932_
                                               _lp-tl83238945_
                                               (cons _hd83308959_
                                                     _xarg83248937_))
                                              (_g82828850_ _g82868853_))))
                                      (_g82828850_ _g82868853_))
                                  (_g82828850_ _g82868853_))
                              (_g82828850_ _g82868853_))))
                      (_g82828850_ _g82868853_))))
              (let ((_xarg83258964_ (reverse _xarg83248937_)))
                (if (gx#stx-null? _tl83048892_)
                    ((lambda (_L8967_ _L8968_ _L8969_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g89979000_ _g89989002_)
                                            (cons _g89979000_ _g89989002_))
                                          '()
                                          _L8969_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g90049007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g90059009_)
                    (cons _g90049007_ _g90059009_))
                  '()
                  _L8969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g90119014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g90129016_)
                    (cons _g90119014_ _g90129016_))
                  '()
                  _L8967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g90189021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g90199023_)
                   (cons _g90189021_ _g90199023_))
                 '()
                 _L8969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g90259028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g90269030_)
                   (cons _g90259028_ _g90269030_))
                 '()
                 _L8967_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g90329034_)
                                                    (gx#free-identifier=?
                                                     _g90329034_
                                                     _L8968_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g90369039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g90379041_)
                      (cons _g90369039_ _g90379041_))
                    '()
                    _L8969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g82828850_ _g82868853_)))
                     _xarg83258964_
                     _hd83158922_
                     _arg83018884_)
                    (_g82828850_ _g82868853_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop83208932_ _target83178927_ '()))
                                      (_g82828850_ _g82868853_)))))
                            (_g82828850_ _g82868853_))
                        (_g82828850_ _g82868853_))
                    (_g82828850_ _g82868853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82828850_ _g82868853_))
                                                (_g82828850_ _g82868853_))
                                            (_g82828850_ _g82868853_))))
                                    (_g82828850_ _g82868853_))))
                            (_g82828850_ _g82868853_))
                        (_g82828850_ _g82868853_))
                    (_g82828850_ _g82868853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82828850_
                                                     _g82868853_))))
                                            (_g82828850_ _g82868853_)))))))
                        (_loop82968868_ _target82938863_ '()))
                      (_g82828850_ _g82868853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82828850_ _g82868853_))
                                                (_g82828850_ _g82868853_))))
                                        (_g82828850_ _g82868853_)))))
                             (_g82819044_ _form8280_))))))))))
          (let ((_dispatch-case-e7593_
                 (lambda (_hd7741_ _body7742_)
                   (let ((_form7744_ (cons _hd7741_ (cons _body7742_ '()))))
                     (let ((_g77487872_
                            (lambda (_g77497869_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g77497869_))))
                       (let ((_g77477990_
                              (lambda (_g77497875_)
                                (if (gx#stx-pair? _g77497875_)
                                    (let ((_e78387877_ (gx#stx-e _g77497875_)))
                                      (let ((_hd78397880_ (##car _e78387877_))
                                            (_tl78407882_ (##cdr _e78387877_)))
                                        (if (gx#stx-pair? _tl78407882_)
                                            (let ((_e78417885_
                                                   (gx#stx-e _tl78407882_)))
                                              (let ((_hd78427888_
                                                     (##car _e78417885_))
                                                    (_tl78437890_
                                                     (##cdr _e78417885_)))
                                                (if (gx#stx-pair? _hd78427888_)
                                                    (let ((_e78447893_
                                                           (gx#stx-e
                                                            _hd78427888_)))
                                                      (let ((_hd78457896_
                                                             (##car _e78447893_))
                                                            (_tl78467898_
                                                             (##cdr _e78447893_)))
                                                        (if (gx#identifier?
                                                             _hd78457896_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd78457896_)
                        (if (gx#stx-pair? _tl78467898_)
                            (let ((_e78477901_ (gx#stx-e _tl78467898_)))
                              (let ((_hd78487904_ (##car _e78477901_))
                                    (_tl78497906_ (##cdr _e78477901_)))
                                (if (gx#stx-pair? _hd78487904_)
                                    (let ((_e78507909_
                                           (gx#stx-e _hd78487904_)))
                                      (let ((_hd78517912_ (##car _e78507909_))
                                            (_tl78527914_ (##cdr _e78507909_)))
                                        (if (gx#identifier? _hd78517912_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd78517912_)
                                                (if (gx#stx-pair? _tl78527914_)
                                                    (let ((_e78537917_
                                                           (gx#stx-e
                                                            _tl78527914_)))
                                                      (let ((_hd78547920_
                                                             (##car _e78537917_))
                                                            (_tl78557922_
                                                             (##cdr _e78537917_)))
                                                        (if (gx#stx-null?
                                                             _tl78557922_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78497906_)
                        (let ((_e78567925_ (gx#stx-e _tl78497906_)))
                          (let ((_hd78577928_ (##car _e78567925_))
                                (_tl78587930_ (##cdr _e78567925_)))
                            (if (gx#stx-pair? _hd78577928_)
                                (let ((_e78597933_ (gx#stx-e _hd78577928_)))
                                  (let ((_hd78607936_ (##car _e78597933_))
                                        (_tl78617938_ (##cdr _e78597933_)))
                                    (if (gx#identifier? _hd78607936_)
                                        (if (gx#stx-eq? '%#ref _hd78607936_)
                                            (if (gx#stx-pair? _tl78617938_)
                                                (let ((_e78627941_
                                                       (gx#stx-e
                                                        _tl78617938_)))
                                                  (let ((_hd78637944_
                                                         (##car _e78627941_))
                                                        (_tl78647946_
                                                         (##cdr _e78627941_)))
                                                    (if (gx#stx-null?
                                                         _tl78647946_)
                                                        (if (gx#stx-pair?
                                                             _tl78587930_)
                                                            (let ((_e78657949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl78587930_)))
                      (let ((_hd78667952_ (##car _e78657949_))
                            (_tl78677954_ (##cdr _e78657949_)))
                        (if (gx#stx-null? _tl78677954_)
                            (if (gx#stx-null? _tl78437890_)
                                ((lambda (_L7957_ _L7958_ _L7959_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7957_ '()))))
                                 _hd78637944_
                                 _hd78547920_
                                 _hd78397880_)
                                (_g77487872_ _g77497875_))
                            (_g77487872_ _g77497875_))))
                    (_g77487872_ _g77497875_))
                (_g77487872_ _g77497875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g77487872_ _g77497875_))
                                            (_g77487872_ _g77497875_))
                                        (_g77487872_ _g77497875_))))
                                (_g77487872_ _g77497875_))))
                        (_g77487872_ _g77497875_))
                    (_g77487872_ _g77497875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77487872_ _g77497875_))
                                                (_g77487872_ _g77497875_))
                                            (_g77487872_ _g77497875_))))
                                    (_g77487872_ _g77497875_))))
                            (_g77487872_ _g77497875_))
                        (_g77487872_ _g77497875_))
                    (_g77487872_ _g77497875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77487872_
                                                     _g77497875_))))
                                            (_g77487872_ _g77497875_))))
                                    (_g77487872_ _g77497875_)))))
                         (let ((_g77468126_
                                (lambda (_g77497993_)
                                  (if (gx#stx-pair? _g77497993_)
                                      (let ((_e77997995_
                                             (gx#stx-e _g77497993_)))
                                        (let ((_hd78007998_
                                               (##car _e77997995_))
                                              (_tl78018000_
                                               (##cdr _e77997995_)))
                                          (if (gx#stx-pair/null? _hd78007998_)
                                              (if (fx>= (gx#stx-length
                                                         _hd78007998_)
                                                        '0)
                                                  (let ((_g10651_
                                                         (gx#syntax-split-splice
                                                          _hd78007998_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10652_
                                                             (values-count
                                                              _g10651_)))
                                                        (if (not (fx= _g10652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10652_)))
              (let ((_target78028003_ (values-ref _g10651_ 0))
                    (_tl78048005_ (values-ref _g10651_ 1)))
                (letrec ((_loop78058008_
                          (lambda (_hd78038011_ _arg78098013_)
                            (if (gx#stx-pair? _hd78038011_)
                                (let ((_e78068016_ (gx#stx-e _hd78038011_)))
                                  (let ((_lp-hd78078019_ (##car _e78068016_))
                                        (_lp-tl78088021_ (##cdr _e78068016_)))
                                    (_loop78058008_
                                     _lp-tl78088021_
                                     (cons _lp-hd78078019_ _arg78098013_))))
                                (let ((_arg78108024_ (reverse _arg78098013_)))
                                  (if (gx#stx-pair? _tl78018000_)
                                      (let ((_e78118027_
                                             (gx#stx-e _tl78018000_)))
                                        (let ((_hd78128030_
                                               (##car _e78118027_))
                                              (_tl78138032_
                                               (##cdr _e78118027_)))
                                          (if (gx#stx-pair? _hd78128030_)
                                              (let ((_e78148035_
                                                     (gx#stx-e _hd78128030_)))
                                                (let ((_hd78158038_
                                                       (##car _e78148035_))
                                                      (_tl78168040_
                                                       (##cdr _e78148035_)))
                                                  (if (gx#identifier?
                                                       _hd78158038_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd78158038_)
                                                          (if (gx#stx-pair?
                                                               _tl78168040_)
                                                              (let ((_e78178043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl78168040_)))
                        (let ((_hd78188046_ (##car _e78178043_))
                              (_tl78198048_ (##cdr _e78178043_)))
                          (if (gx#stx-pair? _hd78188046_)
                              (let ((_e78208051_ (gx#stx-e _hd78188046_)))
                                (let ((_hd78218054_ (##car _e78208051_))
                                      (_tl78228056_ (##cdr _e78208051_)))
                                  (if (gx#identifier? _hd78218054_)
                                      (if (gx#stx-eq? '%#ref _hd78218054_)
                                          (if (gx#stx-pair? _tl78228056_)
                                              (let ((_e78238059_
                                                     (gx#stx-e _tl78228056_)))
                                                (let ((_hd78248062_
                                                       (##car _e78238059_))
                                                      (_tl78258064_
                                                       (##cdr _e78238059_)))
                                                  (if (gx#stx-null?
                                                       _tl78258064_)
                                                      (if (gx#stx-pair?
                                                           _tl78198048_)
                                                          (let ((_e78268067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl78198048_)))
                    (let ((_hd78278070_ (##car _e78268067_))
                          (_tl78288072_ (##cdr _e78268067_)))
                      (if (gx#stx-pair? _hd78278070_)
                          (let ((_e78298075_ (gx#stx-e _hd78278070_)))
                            (let ((_hd78308078_ (##car _e78298075_))
                                  (_tl78318080_ (##cdr _e78298075_)))
                              (if (gx#identifier? _hd78308078_)
                                  (if (gx#stx-eq? '%#ref _hd78308078_)
                                      (if (gx#stx-pair? _tl78318080_)
                                          (let ((_e78328083_
                                                 (gx#stx-e _tl78318080_)))
                                            (let ((_hd78338086_
                                                   (##car _e78328083_))
                                                  (_tl78348088_
                                                   (##cdr _e78328083_)))
                                              (if (gx#stx-null? _tl78348088_)
                                                  (if (gx#stx-null?
                                                       _tl78138032_)
                                                      ((lambda (_L8091_
                                                                _L8092_
                                                                _L8093_
                                                                _L8094_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L8091_ '()))))
               _hd78338086_
               _hd78248062_
               _tl78048005_
               _arg78108024_)
              (_g77477990_ _g77497993_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77477990_ _g77497993_))))
                                          (_g77477990_ _g77497993_))
                                      (_g77477990_ _g77497993_))
                                  (_g77477990_ _g77497993_))))
                          (_g77477990_ _g77497993_))))
                  (_g77477990_ _g77497993_))
              (_g77477990_ _g77497993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g77477990_ _g77497993_))
                                          (_g77477990_ _g77497993_))
                                      (_g77477990_ _g77497993_))))
                              (_g77477990_ _g77497993_))))
                      (_g77477990_ _g77497993_))
                  (_g77477990_ _g77497993_))
              (_g77477990_ _g77497993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g77477990_ _g77497993_))))
                                      (_g77477990_ _g77497993_)))))))
                  (_loop78058008_ _target78028003_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77477990_ _g77497993_))
                                              (_g77477990_ _g77497993_))))
                                      (_g77477990_ _g77497993_)))))
                           (let ((_g77458274_
                                  (lambda (_g77498129_)
                                    (if (gx#stx-pair? _g77498129_)
                                        (let ((_e77538131_
                                               (gx#stx-e _g77498129_)))
                                          (let ((_hd77548134_
                                                 (##car _e77538131_))
                                                (_tl77558136_
                                                 (##cdr _e77538131_)))
                                            (if (gx#stx-pair/null?
                                                 _hd77548134_)
                                                (if (fx>= (gx#stx-length
                                                           _hd77548134_)
                                                          '0)
                                                    (let ((_g10653_
                                                           (gx#syntax-split-splice
                                                            _hd77548134_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10654_
                                                               (values-count
                                                                _g10653_)))
                                                          (if (not (fx= _g10654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10654_)))
                (let ((_target77568139_ (values-ref _g10653_ 0))
                      (_tl77588141_ (values-ref _g10653_ 1)))
                  (if (gx#stx-null? _tl77588141_)
                      (letrec ((_loop77598144_
                                (lambda (_hd77578147_ _arg77638149_)
                                  (if (gx#stx-pair? _hd77578147_)
                                      (let ((_e77608152_
                                             (gx#stx-e _hd77578147_)))
                                        (let ((_lp-hd77618155_
                                               (##car _e77608152_))
                                              (_lp-tl77628157_
                                               (##cdr _e77608152_)))
                                          (_loop77598144_
                                           _lp-tl77628157_
                                           (cons _lp-hd77618155_
                                                 _arg77638149_))))
                                      (let ((_arg77648160_
                                             (reverse _arg77638149_)))
                                        (if (gx#stx-pair? _tl77558136_)
                                            (let ((_e77658163_
                                                   (gx#stx-e _tl77558136_)))
                                              (let ((_hd77668166_
                                                     (##car _e77658163_))
                                                    (_tl77678168_
                                                     (##cdr _e77658163_)))
                                                (if (gx#stx-pair? _hd77668166_)
                                                    (let ((_e77688171_
                                                           (gx#stx-e
                                                            _hd77668166_)))
                                                      (let ((_hd77698174_
                                                             (##car _e77688171_))
                                                            (_tl77708176_
                                                             (##cdr _e77688171_)))
                                                        (if (gx#identifier?
                                                             _hd77698174_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd77698174_)
                        (if (gx#stx-pair? _tl77708176_)
                            (let ((_e77718179_ (gx#stx-e _tl77708176_)))
                              (let ((_hd77728182_ (##car _e77718179_))
                                    (_tl77738184_ (##cdr _e77718179_)))
                                (if (gx#stx-pair? _hd77728182_)
                                    (let ((_e77748187_
                                           (gx#stx-e _hd77728182_)))
                                      (let ((_hd77758190_ (##car _e77748187_))
                                            (_tl77768192_ (##cdr _e77748187_)))
                                        (if (gx#identifier? _hd77758190_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd77758190_)
                                                (if (gx#stx-pair? _tl77768192_)
                                                    (let ((_e77778195_
                                                           (gx#stx-e
                                                            _tl77768192_)))
                                                      (let ((_hd77788198_
                                                             (##car _e77778195_))
                                                            (_tl77798200_
                                                             (##cdr _e77778195_)))
                                                        (if (gx#stx-null?
                                                             _tl77798200_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77738184_)
                        (if (fx>= (gx#stx-length _tl77738184_) '0)
                            (let ((_g10655_
                                   (gx#syntax-split-splice _tl77738184_ '0)))
                              (begin
                                (let ((_g10656_ (values-count _g10655_)))
                                  (if (not (fx= _g10656_ 2))
                                      (error "Context expects 2 values"
                                             _g10656_)))
                                (let ((_target77808203_
                                       (values-ref _g10655_ 0))
                                      (_tl77828205_ (values-ref _g10655_ 1)))
                                  (if (gx#stx-null? _tl77828205_)
                                      (letrec ((_loop77838208_
                                                (lambda (_hd77818211_
                                                         _xarg77878213_)
                                                  (if (gx#stx-pair?
                                                       _hd77818211_)
                                                      (let ((_e77848216_
                                                             (gx#stx-e
                                                              _hd77818211_)))
                                                        (let ((_lp-hd77858219_
                                                               (##car _e77848216_))
                                                              (_lp-tl77868221_
                                                               (##cdr _e77848216_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd77858219_)
                                                              (let ((_e77898224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd77858219_)))
                        (let ((_hd77908227_ (##car _e77898224_))
                              (_tl77918229_ (##cdr _e77898224_)))
                          (if (gx#identifier? _hd77908227_)
                              (if (gx#stx-eq? '%#ref _hd77908227_)
                                  (if (gx#stx-pair? _tl77918229_)
                                      (let ((_e77928232_
                                             (gx#stx-e _tl77918229_)))
                                        (let ((_hd77938235_
                                               (##car _e77928232_))
                                              (_tl77948237_
                                               (##cdr _e77928232_)))
                                          (if (gx#stx-null? _tl77948237_)
                                              (_loop77838208_
                                               _lp-tl77868221_
                                               (cons _hd77938235_
                                                     _xarg77878213_))
                                              (_g77468126_ _g77498129_))))
                                      (_g77468126_ _g77498129_))
                                  (_g77468126_ _g77498129_))
                              (_g77468126_ _g77498129_))))
                      (_g77468126_ _g77498129_))))
              (let ((_xarg77888240_ (reverse _xarg77878213_)))
                (if (gx#stx-null? _tl77678168_)
                    ((lambda (_L8243_ _L8244_ _L8245_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L8244_ '()))))
                     _xarg77888240_
                     _hd77788198_
                     _arg77648160_)
                    (_g77468126_ _g77498129_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop77838208_ _target77808203_ '()))
                                      (_g77468126_ _g77498129_)))))
                            (_g77468126_ _g77498129_))
                        (_g77468126_ _g77498129_))
                    (_g77468126_ _g77498129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77468126_ _g77498129_))
                                                (_g77468126_ _g77498129_))
                                            (_g77468126_ _g77498129_))))
                                    (_g77468126_ _g77498129_))))
                            (_g77468126_ _g77498129_))
                        (_g77468126_ _g77498129_))
                    (_g77468126_ _g77498129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77468126_
                                                     _g77498129_))))
                                            (_g77468126_ _g77498129_)))))))
                        (_loop77598144_ _target77568139_ '()))
                      (_g77468126_ _g77498129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77468126_ _g77498129_))
                                                (_g77468126_ _g77498129_))))
                                        (_g77468126_ _g77498129_)))))
                             (_g77458274_ _form7744_)))))))))
            (let ((_generate17594_
                   (lambda (_args7729_ _arglen7730_ _hd7731_ _body7732_)
                     (let ((_len7734_ (gx#stx-length _hd7731_)))
                       (let ((_condition7736_
                              (if (gx#stx-list? _hd7731_)
                                  (cons 'fx=
                                        (cons _arglen7730_
                                              (cons _len7734_ '())))
                                  (if (> _len7734_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7730_
                                                  (cons _len7734_ '())))
                                      '#t))))
                         (let ((_dispatch7738_
                                (if (_dispatch-case?7592_ _hd7731_ _body7732_)
                                    (_dispatch-case-e7593_ _hd7731_ _body7732_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7731_)
                                                (cons (gxc#compile-e
                                                       _body7732_)
                                                      '()))))))
                           (let ()
                             (cons _condition7736_
                                   (cons (cons 'apply
                                               (cons _dispatch7738_
                                                     (cons _args7729_ '())))
                                         '())))))))))
              (let ((_g75967624_
                     (lambda (_g75977621_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g75977621_))))
                (let ((_g75957726_
                       (lambda (_g75977627_)
                         (if (gx#stx-pair? _g75977627_)
                             (let ((_e76007629_ (gx#stx-e _g75977627_)))
                               (let ((_hd76017632_ (##car _e76007629_))
                                     (_tl76027634_ (##cdr _e76007629_)))
                                 (if (gx#stx-pair/null? _tl76027634_)
                                     (if (fx>= (gx#stx-length _tl76027634_) '0)
                                         (let ((_g10649_
                                                (gx#syntax-split-splice
                                                 _tl76027634_
                                                 '0)))
                                           (begin
                                             (let ((_g10650_
                                                    (values-count _g10649_)))
                                               (if (not (fx= _g10650_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10650_)))
                                             (let ((_target76037637_
                                                    (values-ref _g10649_ 0))
                                                   (_tl76057639_
                                                    (values-ref _g10649_ 1)))
                                               (if (gx#stx-null? _tl76057639_)
                                                   (letrec ((_loop76067642_
                                                             (lambda (_hd76047645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body76107647_
                              _hd76117649_)
                       (if (gx#stx-pair? _hd76047645_)
                           (let ((_e76077652_ (gx#stx-e _hd76047645_)))
                             (let ((_lp-hd76087655_ (##car _e76077652_))
                                   (_lp-tl76097657_ (##cdr _e76077652_)))
                               (if (gx#stx-pair? _lp-hd76087655_)
                                   (let ((_e76147660_
                                          (gx#stx-e _lp-hd76087655_)))
                                     (let ((_hd76157663_ (##car _e76147660_))
                                           (_tl76167665_ (##cdr _e76147660_)))
                                       (if (gx#stx-pair? _tl76167665_)
                                           (let ((_e76177668_
                                                  (gx#stx-e _tl76167665_)))
                                             (let ((_hd76187671_
                                                    (##car _e76177668_))
                                                   (_tl76197673_
                                                    (##cdr _e76177668_)))
                                               (if (gx#stx-null? _tl76197673_)
                                                   (_loop76067642_
                                                    _lp-tl76097657_
                                                    (cons _hd76187671_
                                                          _body76107647_)
                                                    (cons _hd76157663_
                                                          _hd76117649_))
                                                   (_g75967624_ _g75977627_))))
                                           (_g75967624_ _g75977627_))))
                                   (_g75967624_ _g75977627_))))
                           (let ((_body76127676_ (reverse _body76107647_))
                                 (_hd76137678_ (reverse _hd76117649_)))
                             ((lambda (_L7681_ _L7682_)
                                (let ((_args7701_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7702_
                                       (gxc#generate-runtime-temporary__0))
                                      (_name7703_
                                       (let ((_$e7698_
                                              (table-ref
                                               (gxc#current-compile-runtime-names)
                                               _stx7589_
                                               '#f)))
                                         (if _$e7698_
                                             _$e7698_
                                             ''case-lambda-dispatch))))
                                  (cons 'lambda
                                        (cons _args7701_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7701_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons '##raise-wrong-number-of-arguments-exception
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _name7703_ (cons _args7701_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g77047707_
                                                          _g77057709_)
                                                   (_generate17594_
                                                    _args7701_
                                                    _arglen7702_
                                                    _g77047707_
                                                    _g77057709_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g77117714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g77127716_)
                     (cons _g77117714_ _g77127716_))
                   '()
                   _L7682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g77187721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g77197723_)
                     (cons _g77187721_ _g77197723_))
                   '()
                   _L7681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body76127676_
                              _hd76137678_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop76067642_
                                                      _target76037637_
                                                      '()
                                                      '()))
                                                   (_g75967624_
                                                    _g75977627_)))))
                                         (_g75967624_ _g75977627_))
                                     (_g75967624_ _g75977627_))))
                             (_g75967624_ _g75977627_)))))
                  (_g75957726_ _stx7589_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7269
      (lambda (_stx7271_ _compiled-body?7272_)
        (let ((_generate-simple7274_
               (lambda (_hd7576_ _body7577_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7576_
                  _body7577_
                  _compiled-body?7272_))))
          (let ((_generate-values-post7276_
                 (lambda (_post7348_ _body7349_)
                   ((letrec ((_lp7351_
                              (lambda (_rest7353_ _body7354_)
                                (let ((_rest73557363_ _rest7353_))
                                  (let ((_E73587367_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest73557363_))))
                                    (let ((_else73577371_
                                           (lambda () _body7354_)))
                                      (let ((_K73597377_
                                             (lambda (_rest7374_ _bind7375_)
                                               (_lp7351_
                                                _rest7374_
                                                (cons 'let
                                                      (cons _bind7375_
                                                            (cons _body7354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest73557363_)
                                            (let ((_hd73607380_
                                                   (##car _rest73557363_))
                                                  (_tl73617382_
                                                   (##cdr _rest73557363_)))
                                              (let ((_bind7385_ _hd73607380_))
                                                (let ((_rest7387_
                                                       _tl73617382_))
                                                  (_K73597377_
                                                   _rest7387_
                                                   _bind7385_))))
                                            (_else73577371_)))))))))
                      _lp7351_)
                    _post7348_
                    _body7349_))))
            (let ((_generate-values-check7277_
                   (lambda (_check7345_ _body7346_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body7346_ '())
                                   (reverse _check7345_))))))
              (let ((_generate-values7275_
                     (lambda (_hd7389_ _body7390_)
                       ((letrec ((_lp7392_
                                  (lambda (_rest7394_
                                           _bind7395_
                                           _check7396_
                                           _post7397_)
                                    (let ((_g74007411_
                                           (lambda (_g74017408_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g74017408_))))
                                      (let ((_g73997425_
                                             (lambda (_g74017414_)
                                               ((lambda ()
                                                  (let ((_body7418_
                                                         (if _compiled-body?7272_
                                                             _body7390_
                                                             (gxc#compile-e
                                                              _body7390_))))
                                                    (let ((_body7420_
                                                           (_generate-values-post7276_
                                                            _post7397_
                                                            _body7418_)))
                                                      (let ((_body7422_
                                                             (_generate-values-check7277_
                                                              _check7396_
                                                              _body7420_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind7395_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body7422_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g73987573_
                                               (lambda (_g74017428_)
                                                 (if (gx#stx-pair? _g74017428_)
                                                     (let ((_e74047430_
                                                            (gx#stx-e
                                                             _g74017428_)))
                                                       (let ((_hd74057433_
                                                              (##car _e74047430_))
                                                             (_tl74067435_
                                                              (##cdr _e74047430_)))
                                                         ((lambda (_L7438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7439_)
                    (let ((_g74547479_
                           (lambda (_g74557476_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g74557476_))))
                      (let ((_g74537523_
                             (lambda (_g74557482_)
                               (if (gx#stx-pair? _g74557482_)
                                   (let ((_e74697484_ (gx#stx-e _g74557482_)))
                                     (let ((_hd74707487_ (##car _e74697484_))
                                           (_tl74717489_ (##cdr _e74697484_)))
                                       (if (gx#stx-pair? _tl74717489_)
                                           (let ((_e74727492_
                                                  (gx#stx-e _tl74717489_)))
                                             (let ((_hd74737495_
                                                    (##car _e74727492_))
                                                   (_tl74747497_
                                                    (##cdr _e74727492_)))
                                               (if (gx#stx-null? _tl74747497_)
                                                   ((lambda (_L7500_ _L7501_)
                                                      (let ((_vals7514_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7516_
                                                               (gxc#compile-e
                                                                _L7500_)))
                                                          (let ((_check-values7518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7514_
                          _L7501_)))
                    (let ((_refs7520_
                           (gxc#generate-runtime-let-values-bind
                            _vals7514_
                            _L7501_)))
                      (let ()
                        (_lp7392_
                         _L7438_
                         (cons (cons _vals7514_ (cons _expr7516_ '()))
                               _bind7395_)
                         (cons _check-values7518_ _check7396_)
                         (cons _refs7520_ _post7397_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd74737495_
                                                    _hd74707487_)
                                                   (_g74547479_ _g74557482_))))
                                           (_g74547479_ _g74557482_))))
                                   (_g74547479_ _g74557482_)))))
                        (let ((_g74527570_
                               (lambda (_g74557526_)
                                 (if (gx#stx-pair? _g74557526_)
                                     (let ((_e74587528_
                                            (gx#stx-e _g74557526_)))
                                       (let ((_hd74597531_ (##car _e74587528_))
                                             (_tl74607533_
                                              (##cdr _e74587528_)))
                                         (if (gx#stx-pair? _hd74597531_)
                                             (let ((_e74617536_
                                                    (gx#stx-e _hd74597531_)))
                                               (let ((_hd74627539_
                                                      (##car _e74617536_))
                                                     (_tl74637541_
                                                      (##cdr _e74617536_)))
                                                 (if (gx#stx-null?
                                                      _tl74637541_)
                                                     (if (gx#stx-pair?
                                                          _tl74607533_)
                                                         (let ((_e74647544_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl74607533_)))
                   (let ((_hd74657547_ (##car _e74647544_))
                         (_tl74667549_ (##cdr _e74647544_)))
                     (if (gx#stx-null? _tl74667549_)
                         ((lambda (_L7552_ _L7553_)
                            (let ((_eid7567_
                                   (gxc#generate-runtime-binding-id* _L7553_))
                                  (_expr7568_ (gxc#compile-e _L7552_)))
                              (_lp7392_
                               _L7438_
                               (cons (cons _eid7567_ (cons _expr7568_ '()))
                                     _bind7395_)
                               _check7396_
                               _post7397_)))
                          _hd74657547_
                          _hd74627539_)
                         (_g74537523_ _g74557526_))))
                 (_g74537523_ _g74557526_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74537523_
                                                      _g74557526_))))
                                             (_g74537523_ _g74557526_))))
                                     (_g74537523_ _g74557526_)))))
                          (_g74527570_ _L7439_)))))
                  _tl74067435_
                  _hd74057433_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73997425_
                                                      _g74017428_)))))
                                          (_g73987573_ _rest7394_)))))))
                          _lp7392_)
                        _hd7389_
                        '()
                        '()
                        '()))))
                (let ((_g72797296_
                       (lambda (_g72807293_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g72807293_))))
                  (let ((_g72787342_
                         (lambda (_g72807299_)
                           (if (gx#stx-pair? _g72807299_)
                               (let ((_e72837301_ (gx#stx-e _g72807299_)))
                                 (let ((_hd72847304_ (##car _e72837301_))
                                       (_tl72857306_ (##cdr _e72837301_)))
                                   (if (gx#stx-pair? _tl72857306_)
                                       (let ((_e72867309_
                                              (gx#stx-e _tl72857306_)))
                                         (let ((_hd72877312_
                                                (##car _e72867309_))
                                               (_tl72887314_
                                                (##cdr _e72867309_)))
                                           (if (gx#stx-pair? _tl72887314_)
                                               (let ((_e72897317_
                                                      (gx#stx-e _tl72887314_)))
                                                 (let ((_hd72907320_
                                                        (##car _e72897317_))
                                                       (_tl72917322_
                                                        (##cdr _e72897317_)))
                                                   (if (gx#stx-null?
                                                        _tl72917322_)
                                                       ((lambda (_L7325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7326_)
                  (if (gxc#generate-runtime-simple-let? _L7326_)
                      (_generate-simple7274_ _L7326_ _L7325_)
                      (_generate-values7275_ _L7326_ _L7325_)))
                _hd72907320_
                _hd72877312_)
               (_g72797296_ _g72807299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g72797296_ _g72807299_))))
                                       (_g72797296_ _g72807299_))))
                               (_g72797296_ _g72807299_)))))
                    (_g72787342_ _stx7271_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7582_)
          (let ((_compiled-body?7584_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7269
             _stx7582_
             _compiled-body?7584_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10666_
          (let ((_g10665_ (length _g10666_)))
            (cond ((fx= _g10665_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10666_))
                  ((fx= _g10665_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7269
                          _g10666_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g10666_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7170_ _hd7171_)
      ((letrec ((_lp7173_
                 (lambda (_rest7175_ _k7176_ _r7177_)
                   (let ((_g71827198_
                          (lambda (_g71837195_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g71837195_))))
                     (let ((_g71817205_
                            (lambda (_g71837201_)
                              ((lambda () (reverse _r7177_))))))
                       (let ((_g71807221_
                              (lambda (_g71837208_)
                                ((lambda (_L7210_)
                                   (if (gx#identifier? _L7210_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L7210_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals7170_ (cons _k7176_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r7177_)
                                       (_g71817205_ _g71837208_)))
                                 _g71837208_))))
                         (let ((_g71797245_
                                (lambda (_g71837224_)
                                  (if (gx#stx-pair? _g71837224_)
                                      (let ((_e71907226_
                                             (gx#stx-e _g71837224_)))
                                        (let ((_hd71917229_
                                               (##car _e71907226_))
                                              (_tl71927231_
                                               (##cdr _e71907226_)))
                                          ((lambda (_L7234_ _L7235_)
                                             (_lp7173_
                                              _L7234_
                                              (fx+ _k7176_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L7235_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals7170_ (cons _k7176_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r7177_)))
                                           _tl71927231_
                                           _hd71917229_)))
                                      (_g71807221_ _g71837224_)))))
                           (let ((_g71787267_
                                  (lambda (_g71837248_)
                                    (if (gx#stx-pair? _g71837248_)
                                        (let ((_e71857250_
                                               (gx#stx-e _g71837248_)))
                                          (let ((_hd71867253_
                                                 (##car _e71857250_))
                                                (_tl71877255_
                                                 (##cdr _e71857250_)))
                                            (if (gx#stx-datum? _hd71867253_)
                                                (if (equal? (gx#stx-e
                                                             _hd71867253_)
                                                            '#f)
                                                    ((lambda (_L7258_)
                                                       (_lp7173_
                                                        _L7258_
                                                        (fx+ _k7176_ '1)
                                                        _r7177_))
                                                     _tl71877255_)
                                                    (_g71797245_ _g71837248_))
                                                (_g71797245_ _g71837248_))))
                                        (_g71797245_ _g71837248_)))))
                             (_g71787267_ _rest7175_)))))))))
         _lp7173_)
       _hd7171_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6848
      (lambda (_stx6850_ _compiled-body?6851_)
        (let ((_generate-simple6853_
               (lambda (_hd7157_ _body7158_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd7157_
                  _body7158_
                  _compiled-body?6851_))))
          (let ((_generate-values-check6855_
                 (lambda (_check6931_ _body6932_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6932_ '())
                                 (reverse _check6931_))))))
            (let ((_generate-values-post6856_
                   (lambda (_post6924_ _body6925_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6925_ '())
                                   (map (lambda (_g69266928_)
                                          (cons 'set! _g69266928_))
                                        (reverse _post6924_)))))))
              (let ((_generate-values6854_
                     (lambda (_hd6934_ _body6935_)
                       ((letrec ((_lp6937_
                                  (lambda (_rest6939_
                                           _bind6940_
                                           _check6941_
                                           _post6942_)
                                    (let ((_g69456956_
                                           (lambda (_g69466953_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69466953_))))
                                      (let ((_g69446970_
                                             (lambda (_g69466959_)
                                               ((lambda ()
                                                  (let ((_body6963_
                                                         (if _compiled-body?6851_
                                                             _body6935_
                                                             (gxc#compile-e
                                                              _body6935_))))
                                                    (let ((_body6965_
                                                           (_generate-values-post6856_
                                                            _post6942_
                                                            _body6963_)))
                                                      (let ((_body6967_
                                                             (_generate-values-check6855_
                                                              _check6941_
                                                              _body6965_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6940_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6967_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g69437154_
                                               (lambda (_g69466973_)
                                                 (if (gx#stx-pair? _g69466973_)
                                                     (let ((_e69496975_
                                                            (gx#stx-e
                                                             _g69466973_)))
                                                       (let ((_hd69506978_
                                                              (##car _e69496975_))
                                                             (_tl69516980_
                                                              (##cdr _e69496975_)))
                                                         ((lambda (_L6983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6984_)
                    (let ((_g69997024_
                           (lambda (_g70007021_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g70007021_))))
                      (let ((_g69987104_
                             (lambda (_g70007027_)
                               (if (gx#stx-pair? _g70007027_)
                                   (let ((_e70147029_ (gx#stx-e _g70007027_)))
                                     (let ((_hd70157032_ (##car _e70147029_))
                                           (_tl70167034_ (##cdr _e70147029_)))
                                       (if (gx#stx-pair? _tl70167034_)
                                           (let ((_e70177037_
                                                  (gx#stx-e _tl70167034_)))
                                             (let ((_hd70187040_
                                                    (##car _e70177037_))
                                                   (_tl70197042_
                                                    (##cdr _e70177037_)))
                                               (if (gx#stx-null? _tl70197042_)
                                                   ((lambda (_L7045_ _L7046_)
                                                      (let ((_vals7059_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7061_
                                                               (gxc#compile-e
                                                                _L7045_)))
                                                          (let ((_check-values7063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7059_
                          _L7046_)))
                    (let ((_refs7065_
                           (gxc#generate-runtime-let-values-bind
                            _vals7059_
                            _L7046_)))
                      (let ()
                        (_lp6937_
                         _L6983_
                         (foldl1 cons
                                 (cons (cons _vals7059_ (cons _expr7061_ '()))
                                       _bind6940_)
                                 (map (lambda (_e70677069_)
                                        (let ((_g70717080_ _e70677069_))
                                          (let ((_E70737084_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g70717080_))))
                                            (let ((_K70747089_
                                                   (lambda (_eid7087_)
                                                     (cons _eid7087_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g70717080_)
                                                  (let ((_hd70757092_
                                                         (##car _g70717080_))
                                                        (_tl70767094_
                                                         (##cdr _g70717080_)))
                                                    (let ((_eid7097_
                                                           _hd70757092_))
                                                      (if (##pair? _tl70767094_)
                                                          (let ((_hd70777099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl70767094_))
                        (_tl70787101_ (##cdr _tl70767094_)))
                    (if (##null? _tl70787101_)
                        (_K70747089_ _eid7097_)
                        (_E70737084_)))
                  (_E70737084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E70737084_))))))
                                      _refs7065_))
                         (cons _check-values7063_ _check6941_)
                         (foldl1 cons _refs7065_ _post6942_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd70187040_
                                                    _hd70157032_)
                                                   (_g69997024_ _g70007027_))))
                                           (_g69997024_ _g70007027_))))
                                   (_g69997024_ _g70007027_)))))
                        (let ((_g69977151_
                               (lambda (_g70007107_)
                                 (if (gx#stx-pair? _g70007107_)
                                     (let ((_e70037109_
                                            (gx#stx-e _g70007107_)))
                                       (let ((_hd70047112_ (##car _e70037109_))
                                             (_tl70057114_
                                              (##cdr _e70037109_)))
                                         (if (gx#stx-pair? _hd70047112_)
                                             (let ((_e70067117_
                                                    (gx#stx-e _hd70047112_)))
                                               (let ((_hd70077120_
                                                      (##car _e70067117_))
                                                     (_tl70087122_
                                                      (##cdr _e70067117_)))
                                                 (if (gx#stx-null?
                                                      _tl70087122_)
                                                     (if (gx#stx-pair?
                                                          _tl70057114_)
                                                         (let ((_e70097125_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70057114_)))
                   (let ((_hd70107128_ (##car _e70097125_))
                         (_tl70117130_ (##cdr _e70097125_)))
                     (if (gx#stx-null? _tl70117130_)
                         ((lambda (_L7133_ _L7134_)
                            (let ((_eid7148_
                                   (gxc#generate-runtime-binding-id* _L7134_))
                                  (_expr7149_ (gxc#compile-e _L7133_)))
                              (_lp6937_
                               _L6983_
                               (cons (cons _eid7148_ (cons _expr7149_ '()))
                                     _bind6940_)
                               _check6941_
                               _post6942_)))
                          _hd70107128_
                          _hd70077120_)
                         (_g69987104_ _g70007107_))))
                 (_g69987104_ _g70007107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69987104_
                                                      _g70007107_))))
                                             (_g69987104_ _g70007107_))))
                                     (_g69987104_ _g70007107_)))))
                          (_g69977151_ _L6984_)))))
                  _tl69516980_
                  _hd69506978_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69446970_
                                                      _g69466973_)))))
                                          (_g69437154_ _rest6939_)))))))
                          _lp6937_)
                        _hd6934_
                        '()
                        '()
                        '()))))
                (let ((_g68586875_
                       (lambda (_g68596872_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g68596872_))))
                  (let ((_g68576921_
                         (lambda (_g68596878_)
                           (if (gx#stx-pair? _g68596878_)
                               (let ((_e68626880_ (gx#stx-e _g68596878_)))
                                 (let ((_hd68636883_ (##car _e68626880_))
                                       (_tl68646885_ (##cdr _e68626880_)))
                                   (if (gx#stx-pair? _tl68646885_)
                                       (let ((_e68656888_
                                              (gx#stx-e _tl68646885_)))
                                         (let ((_hd68666891_
                                                (##car _e68656888_))
                                               (_tl68676893_
                                                (##cdr _e68656888_)))
                                           (if (gx#stx-pair? _tl68676893_)
                                               (let ((_e68686896_
                                                      (gx#stx-e _tl68676893_)))
                                                 (let ((_hd68696899_
                                                        (##car _e68686896_))
                                                       (_tl68706901_
                                                        (##cdr _e68686896_)))
                                                   (if (gx#stx-null?
                                                        _tl68706901_)
                                                       ((lambda (_L6904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6905_)
                  (if (gxc#generate-runtime-simple-let? _L6905_)
                      (_generate-simple6853_ _L6905_ _L6904_)
                      (_generate-values6854_ _L6905_ _L6904_)))
                _hd68696899_
                _hd68666891_)
               (_g68586875_ _g68596878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68586875_ _g68596878_))))
                                       (_g68586875_ _g68596878_))))
                               (_g68586875_ _g68596878_)))))
                    (_g68576921_ _stx6850_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7163_)
          (let ((_compiled-body?7165_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6848
             _stx7163_
             _compiled-body?7165_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10668_
          (let ((_g10667_ (length _g10668_)))
            (cond ((fx= _g10667_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10668_))
                  ((fx= _g10667_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6848
                          _g10668_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g10668_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5969_)
      (let ((_collect-closures5972_
             (lambda (_forms6790_)
               (map (lambda (_e67916793_)
                      (let ((_g67956804_ _e67916793_))
                        (let ((_E67976808_
                               (lambda ()
                                 (error '"No clause matching" _g67956804_))))
                          (let ((_K67986813_
                                 (lambda (_expr6811_)
                                   (gxc#collect-expression-refs _expr6811_))))
                            (if (##pair? _g67956804_)
                                (let ((_hd67996816_ (##car _g67956804_))
                                      (_tl68006818_ (##cdr _g67956804_)))
                                  (if (##pair? _tl68006818_)
                                      (let ((_hd68016821_ (##car _tl68006818_))
                                            (_tl68026823_
                                             (##cdr _tl68006818_)))
                                        (let ((_expr6826_ _hd68016821_))
                                          (if (##null? _tl68026823_)
                                              (_K67986813_ _expr6826_)
                                              (_E67976808_))))
                                      (_E67976808_)))
                                (_E67976808_))))))
                    _forms6790_))))
        (let ((_collect-bindings5973_
               (lambda (_forms6714_)
                 (map (lambda (_e67156717_)
                        (let ((_g67196728_ _e67156717_))
                          (let ((_E67216732_
                                 (lambda ()
                                   (error '"No clause matching" _g67196728_))))
                            (let ((_K67226775_
                                   (lambda (_bind6735_)
                                     ((letrec ((_lp6737_
                                                (lambda (_rest6739_ _r6740_)
                                                  (let ((_rest67416749_
                                                         _rest6739_))
                                                    (let ((_E67446753_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest67416749_))))
              (let ((_else67436757_
                     (lambda ()
                       (if (gx#identifier? _rest6739_)
                           (cons _rest6739_ _r6740_)
                           _r6740_))))
                (let ((_K67456763_
                       (lambda (_rest6760_ _id6761_)
                         (if (gx#identifier? _id6761_)
                             (_lp6737_
                              _rest6760_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6761_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6740_))
                             (_lp6737_ _rest6760_ _r6740_)))))
                  (if (##pair? _rest67416749_)
                      (let ((_hd67466766_ (##car _rest67416749_))
                            (_tl67476768_ (##cdr _rest67416749_)))
                        (let ((_id6771_ _hd67466766_))
                          (let ((_rest6773_ _tl67476768_))
                            (_K67456763_ _rest6773_ _id6771_))))
                      (_else67436757_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6737_)
                                      _bind6735_
                                      '()))))
                              (if (##pair? _g67196728_)
                                  (let ((_hd67236778_ (##car _g67196728_))
                                        (_tl67246780_ (##cdr _g67196728_)))
                                    (let ((_bind6783_ _hd67236778_))
                                      (if (##pair? _tl67246780_)
                                          (let ((_hd67256785_
                                                 (##car _tl67246780_))
                                                (_tl67266787_
                                                 (##cdr _tl67246780_)))
                                            (if (##null? _tl67266787_)
                                                (_K67226775_ _bind6783_)
                                                (_E67216732_)))
                                          (_E67216732_))))
                                  (_E67216732_))))))
                      _forms6714_))))
          (let ((_closure-reference?5977_
                 (lambda (_closure6266_ _bindings6267_)
                   (ormap1 (lambda (_g62686270_)
                             (table-ref _closure6266_ _g62686270_ '#f))
                           _bindings6267_))))
            (let ((_is-effect-expr?5979_
                   (lambda (_expr6177_)
                     (let ((_g61796189_
                            (lambda (_g61806186_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g61806186_))))
                       (let ((_g61786212_
                              (lambda (_g61806192_)
                                (if (gx#stx-pair? _g61806192_)
                                    (let ((_e61826194_ (gx#stx-e _g61806192_)))
                                      (let ((_hd61836197_ (##car _e61826194_))
                                            (_tl61846199_ (##cdr _e61826194_)))
                                        ((lambda (_L6202_)
                                           (not (memq (gx#stx-e _L6202_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd61836197_)))
                                    (_g61796189_ _g61806192_)))))
                         (_g61786212_ _expr6177_))))))
              (let ((_is-lambda-expr?5980_
                     (lambda (_expr6139_)
                       (let ((_g61416151_
                              (lambda (_g61426148_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g61426148_))))
                         (let ((_g61406174_
                                (lambda (_g61426154_)
                                  (if (gx#stx-pair? _g61426154_)
                                      (let ((_e61446156_
                                             (gx#stx-e _g61426154_)))
                                        (let ((_hd61456159_
                                               (##car _e61446156_))
                                              (_tl61466161_
                                               (##cdr _e61446156_)))
                                          ((lambda (_L6164_)
                                             (memq (gx#stx-e _L6164_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd61456159_)))
                                      (_g61416151_ _g61426154_)))))
                           (_g61406174_ _expr6139_))))))
                (let ((_lift-rec5976_
                       (lambda (_forms6273_)
                         ((letrec ((_lp6275_
                                    (lambda (_rest6277_
                                             _pre6278_
                                             _bind6279_
                                             _init6280_)
                                      (let ((_rest62816289_ _rest6277_))
                                        (let ((_E62846293_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest62816289_))))
                                          (let ((_else62836297_
                                                 (lambda ()
                                                   (values (reverse _pre6278_)
                                                           (reverse _bind6279_)
                                                           (reverse _init6280_)))))
                                            (let ((_K62856488_
                                                   (lambda (_rest6300_
                                                            _bind-hd6301_)
                                                     (let ((_g63056340_
                                                            (lambda (_g63066337_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g63066337_))))
                                                       (let ((_g63046397_
                                                              (lambda (_g63066343_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g63066343_)
                            (let ((_e63306345_ (gx#stx-e _g63066343_)))
                              (let ((_hd63316348_ (##car _e63306345_))
                                    (_tl63326350_ (##cdr _e63306345_)))
                                (if (gx#stx-pair? _tl63326350_)
                                    (let ((_e63336353_
                                           (gx#stx-e _tl63326350_)))
                                      (let ((_hd63346356_ (##car _e63336353_))
                                            (_tl63356358_ (##cdr _e63336353_)))
                                        (if (gx#stx-null? _tl63356358_)
                                            ((lambda (_L6361_ _L6362_)
                                               (let ((_vals6381_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr6383_
                                                        (gxc#compile-e
                                                         _L6361_)))
                                                   (let ((_check-values6385_
                                                          (gxc#generate-runtime-check-values
                                                           _vals6381_
                                                           _L6362_)))
                                                     (let ((_refs6387_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals6381_
                                                             _L6362_)))
                                                       (let ()
                                                         (_lp6275_
                                                          _rest6300_
                                                          (foldl1 (lambda (_ref6390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r6391_)
                            (cons (cons (car _ref6390_) (cons '#!void '()))
                                  _r6391_))
                          _pre6278_
                          _refs6387_)
                  _bind6279_
                  (cons (cons 'let
                              (cons (cons (cons _vals6381_
                                                (cons _expr6383_ '()))
                                          '())
                                    (cons _check-values6385_
                                          (cons (map (lambda (_g63926394_)
                                                       (cons 'set!
                                                             _g63926394_))
                                                     _refs6387_)
                                                '()))))
                        _init6280_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63346356_
                                             _hd63316348_)
                                            (_g63056340_ _g63066343_))))
                                    (_g63056340_ _g63066343_))))
                            (_g63056340_ _g63066343_)))))
                 (let ((_g63036443_
                        (lambda (_g63066400_)
                          (if (gx#stx-pair? _g63066400_)
                              (let ((_e63196402_ (gx#stx-e _g63066400_)))
                                (let ((_hd63206405_ (##car _e63196402_))
                                      (_tl63216407_ (##cdr _e63196402_)))
                                  (if (gx#stx-pair? _hd63206405_)
                                      (let ((_e63226410_
                                             (gx#stx-e _hd63206405_)))
                                        (let ((_hd63236413_
                                               (##car _e63226410_))
                                              (_tl63246415_
                                               (##cdr _e63226410_)))
                                          (if (gx#stx-null? _tl63246415_)
                                              (if (gx#stx-pair? _tl63216407_)
                                                  (let ((_e63256418_
                                                         (gx#stx-e
                                                          _tl63216407_)))
                                                    (let ((_hd63266421_
                                                           (##car _e63256418_))
                                                          (_tl63276423_
                                                           (##cdr _e63256418_)))
                                                      (if (gx#stx-null?
                                                           _tl63276423_)
                                                          ((lambda (_L6426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6427_)
                     (let ((_eid6441_
                            (gxc#generate-runtime-binding-id _L6427_)))
                       (if (_is-lambda-expr?5980_ _L6426_)
                           (_lp6275_
                            _rest6300_
                            _pre6278_
                            (cons (cons _eid6441_
                                        (cons (gxc#compile-e _L6426_) '()))
                                  _bind6279_)
                            _init6280_)
                           (_lp6275_
                            _rest6300_
                            (cons (cons _eid6441_ (cons '#!void '()))
                                  _pre6278_)
                            _bind6279_
                            (cons (cons 'set!
                                        (cons _eid6441_
                                              (cons (gxc#compile-e _L6426_)
                                                    '())))
                                  _init6280_)))))
                   _hd63266421_
                   _hd63236413_)
                  (_g63046397_ _g63066400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63046397_ _g63066400_))
                                              (_g63046397_ _g63066400_))))
                                      (_g63046397_ _g63066400_))))
                              (_g63046397_ _g63066400_)))))
                   (let ((_g63026485_
                          (lambda (_g63066446_)
                            (if (gx#stx-pair? _g63066446_)
                                (let ((_e63086448_ (gx#stx-e _g63066446_)))
                                  (let ((_hd63096451_ (##car _e63086448_))
                                        (_tl63106453_ (##cdr _e63086448_)))
                                    (if (gx#stx-pair? _hd63096451_)
                                        (let ((_e63116456_
                                               (gx#stx-e _hd63096451_)))
                                          (let ((_hd63126459_
                                                 (##car _e63116456_))
                                                (_tl63136461_
                                                 (##cdr _e63116456_)))
                                            (if (gx#stx-datum? _hd63126459_)
                                                (if (equal? (gx#stx-e
                                                             _hd63126459_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl63136461_)
                                                        (if (gx#stx-pair?
                                                             _tl63106453_)
                                                            (let ((_e63146464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl63106453_)))
                      (let ((_hd63156467_ (##car _e63146464_))
                            (_tl63166469_ (##cdr _e63146464_)))
                        (if (gx#stx-null? _tl63166469_)
                            ((lambda (_L6472_)
                               (_lp6275_
                                _rest6300_
                                _pre6278_
                                _bind6279_
                                (cons (gxc#compile-e _L6472_) _init6280_)))
                             _hd63156467_)
                            (_g63036443_ _g63066446_))))
                    (_g63036443_ _g63066446_))
                (_g63036443_ _g63066446_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g63036443_ _g63066446_))
                                                (_g63036443_ _g63066446_))))
                                        (_g63036443_ _g63066446_))))
                                (_g63036443_ _g63066446_)))))
                     (_g63026485_ _bind-hd6301_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest62816289_)
                                                  (let ((_hd62866491_
                                                         (##car _rest62816289_))
                                                        (_tl62876493_
                                                         (##cdr _rest62816289_)))
                                                    (let ((_bind-hd6496_
                                                           _hd62866491_))
                                                      (let ((_rest6498_
                                                             _tl62876493_))
                                                        (_K62856488_
                                                         _rest6498_
                                                         _bind-hd6496_))))
                                                  (_else62836297_)))))))))
                            _lp6275_)
                          _forms6273_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5978_
                         (lambda (_hd-bind6215_)
                           (let ((_g62176230_
                                  (lambda (_g62186227_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62186227_))))
                             (let ((_g62166263_
                                    (lambda (_g62186233_)
                                      (if (gx#stx-pair? _g62186233_)
                                          (let ((_e62206235_
                                                 (gx#stx-e _g62186233_)))
                                            (let ((_hd62216238_
                                                   (##car _e62206235_))
                                                  (_tl62226240_
                                                   (##cdr _e62206235_)))
                                              (if (gx#stx-pair? _tl62226240_)
                                                  (let ((_e62236243_
                                                         (gx#stx-e
                                                          _tl62226240_)))
                                                    (let ((_hd62246246_
                                                           (##car _e62236243_))
                                                          (_tl62256248_
                                                           (##cdr _e62236243_)))
                                                      (if (gx#stx-null?
                                                           _tl62256248_)
                                                          ((lambda (_L6251_)
                                                             (_is-effect-expr?5979_
                                                              _L6251_))
                                                           _hd62246246_)
                                                          (_g62176230_
                                                           _g62186233_))))
                                                  (_g62176230_ _g62186233_))))
                                          (_g62176230_ _g62186233_)))))
                               (_g62166263_ _hd-bind6215_))))))
                    (let ((_lift-pre5974_
                           (lambda (_hd6607_ _bindings6608_ _closures6609_)
                             ((letrec ((_lp6611_
                                        (lambda (_rest-forms6613_
                                                 _rest-bindings6614_
                                                 _rest-closures6615_
                                                 _post-forms6616_
                                                 _post-bindings6617_
                                                 _post-closures6618_
                                                 _pre-forms6619_
                                                 _lifted?6620_)
                                          (let ((_rest-forms66216637_
                                                 _rest-forms6613_)
                                                (_rest-bindings66226639_
                                                 _rest-bindings6614_)
                                                (_rest-closures66236641_
                                                 _rest-closures6615_))
                                            (let ((_E66266645_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms66216637_
                                                            _rest-bindings66226639_
                                                            _rest-closures66236641_))))
                                              (let ((_else66256649_
                                                     (lambda ()
                                                       (if _lifted?6620_
                                                           (_lp6611_
                                                            (reverse _post-forms6616_)
                                                            (reverse _post-bindings6617_)
                                                            (reverse _post-closures6618_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6619_
                                                            '#f)
                                                           (values (reverse _pre-forms6619_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6616_)
                           (reverse _post-bindings6617_)
                           (reverse _post-closures6618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K66276702_
                                                       (lambda (_rest-forms6652_
                                                                _form6653_)
                                                         (let ((_K66286690_
                                                                (lambda (_rest-bindings6655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6656_)
                          (let ((_K66296678_
                                 (lambda (_rest-closures6658_ _closure6659_)
                                   (if (let ((_$e6661_
                                              (_closure-reference?5977_
                                               _closure6659_
                                               _bindings6656_)))
                                         (if _$e6661_
                                             _$e6661_
                                             (let ((_$e6668_
                                                    (ormap1 (lambda (_g66636665_)
                                                              (_closure-reference?5977_
                                                               _closure6659_
                                                               _g66636665_))
                                                            _rest-bindings6655_)))
                                               (if _$e6668_
                                                   _$e6668_
                                                   (let ((_$e6675_
                                                          (ormap1 (lambda (_g66706672_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5977_
                             _closure6659_
                             _g66706672_))
                          _post-bindings6617_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6675_
                                                         _$e6675_
                                                         (if (_is-effect-bind?5978_
                                                              _form6653_)
                                                             (find _is-effect-bind?5978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6616_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6611_
                                        _rest-forms6652_
                                        _rest-bindings6655_
                                        _rest-closures6658_
                                        (cons _form6653_ _post-forms6616_)
                                        (cons _bindings6656_
                                              _post-bindings6617_)
                                        (cons _closure6659_
                                              _post-closures6618_)
                                        _pre-forms6619_
                                        _lifted?6620_)
                                       (_lp6611_
                                        _rest-forms6652_
                                        _rest-bindings6655_
                                        _rest-closures6658_
                                        _post-forms6616_
                                        _post-bindings6617_
                                        _post-closures6618_
                                        (cons _form6653_ _pre-forms6619_)
                                        '#t)))))
                            (if (##pair? _rest-closures66236641_)
                                (let ((_hd66306681_
                                       (##car _rest-closures66236641_))
                                      (_tl66316683_
                                       (##cdr _rest-closures66236641_)))
                                  (let ((_closure6686_ _hd66306681_))
                                    (let ((_rest-closures6688_ _tl66316683_))
                                      (_K66296678_
                                       _rest-closures6688_
                                       _closure6686_))))
                                (_else66256649_))))))
                   (if (##pair? _rest-bindings66226639_)
                       (let ((_hd66326693_ (##car _rest-bindings66226639_))
                             (_tl66336695_ (##cdr _rest-bindings66226639_)))
                         (let ((_bindings6698_ _hd66326693_))
                           (let ((_rest-bindings6700_ _tl66336695_))
                             (_K66286690_
                              _rest-bindings6700_
                              _bindings6698_))))
                       (_else66256649_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms66216637_)
                                                      (let ((_hd66346705_
                                                             (##car _rest-forms66216637_))
                                                            (_tl66356707_
                                                             (##cdr _rest-forms66216637_)))
                                                        (let ((_form6710_
                                                               _hd66346705_))
                                                          (let ((_rest-forms6712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl66356707_))
                    (_K66276702_ _rest-forms6712_ _form6710_))))
              (_else66256649_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6611_)
                              _hd6607_
                              _bindings6608_
                              _closures6609_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5975_
                             (lambda (_hd6500_ _bindings6501_ _closures6502_)
                               ((letrec ((_lp6504_
                                          (lambda (_rest-forms6506_
                                                   _rest-bindings6507_
                                                   _rest-closures6508_
                                                   _pre-forms6509_
                                                   _pre-bindings6510_
                                                   _pre-closures6511_
                                                   _post-forms6512_
                                                   _lifted?6513_)
                                            (let ((_rest-forms65146530_
                                                   _rest-forms6506_)
                                                  (_rest-bindings65156532_
                                                   _rest-bindings6507_)
                                                  (_rest-closures65166534_
                                                   _rest-closures6508_))
                                              (let ((_E65196538_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms65146530_
                                                              _rest-bindings65156532_
                                                              _rest-closures65166534_))))
                                                (let ((_else65186542_
                                                       (lambda ()
                                                         (if _lifted?6513_
                                                             (_lp6504_
                                                              (reverse _pre-forms6509_)
                                                              (reverse _pre-bindings6510_)
                                                              (reverse _pre-closures6511_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6512_
                                                              '#f)
                                                             (values _post-forms6512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6509_
                             _pre-bindings6510_
                             _pre-closures6511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K65206595_
                                                         (lambda (_rest-forms6545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6546_)
                   (let ((_K65216583_
                          (lambda (_rest-bindings6548_ _bindings6549_)
                            (let ((_K65226571_
                                   (lambda (_rest-closures6551_ _closure6552_)
                                     (if (let ((_$e6554_
                                                (_closure-reference?5977_
                                                 _closure6552_
                                                 _bindings6549_)))
                                           (if _$e6554_
                                               _$e6554_
                                               (let ((_$e6561_
                                                      (ormap1 (lambda (_g65566558_)
                                                                (_closure-reference?5977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g65566558_
                         _bindings6549_))
                      _rest-closures6551_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6561_
                                                     _$e6561_
                                                     (let ((_$e6568_
                                                            (ormap1 (lambda (_g65636565_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5977_
                               _g65636565_
                               _bindings6549_))
                            _pre-closures6511_)))
               (if _$e6568_
                   _$e6568_
                   (if (_is-effect-bind?5978_ _form6546_)
                       (find _is-effect-bind?5978_ _pre-forms6509_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6504_
                                          _rest-forms6545_
                                          _rest-bindings6548_
                                          _rest-closures6551_
                                          (cons _form6546_ _pre-forms6509_)
                                          (cons _bindings6549_
                                                _pre-bindings6510_)
                                          (cons _closure6552_
                                                _pre-closures6511_)
                                          _post-forms6512_
                                          _lifted?6513_)
                                         (_lp6504_
                                          _rest-forms6545_
                                          _rest-bindings6548_
                                          _rest-closures6551_
                                          _pre-forms6509_
                                          _pre-bindings6510_
                                          _pre-closures6511_
                                          (cons _form6546_ _post-forms6512_)
                                          '#t)))))
                              (if (##pair? _rest-closures65166534_)
                                  (let ((_hd65236574_
                                         (##car _rest-closures65166534_))
                                        (_tl65246576_
                                         (##cdr _rest-closures65166534_)))
                                    (let ((_closure6579_ _hd65236574_))
                                      (let ((_rest-closures6581_ _tl65246576_))
                                        (_K65226571_
                                         _rest-closures6581_
                                         _closure6579_))))
                                  (_else65186542_))))))
                     (if (##pair? _rest-bindings65156532_)
                         (let ((_hd65256586_ (##car _rest-bindings65156532_))
                               (_tl65266588_ (##cdr _rest-bindings65156532_)))
                           (let ((_bindings6591_ _hd65256586_))
                             (let ((_rest-bindings6593_ _tl65266588_))
                               (_K65216583_
                                _rest-bindings6593_
                                _bindings6591_))))
                         (_else65186542_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms65146530_)
                                                        (let ((_hd65276598_
                                                               (##car _rest-forms65146530_))
                                                              (_tl65286600_
                                                               (##cdr _rest-forms65146530_)))
                                                          (let ((_form6603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd65276598_))
                    (let ((_rest-forms6605_ _tl65286600_))
                      (_K65206595_ _rest-forms6605_ _form6603_))))
                (_else65186542_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6504_)
                                (reverse _hd6500_)
                                (reverse _bindings6501_)
                                (reverse _closures6502_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5971_
                               (lambda (_forms6828_)
                                 (let ((_closures6830_
                                        (_collect-closures5972_ _forms6828_)))
                                   (let ((_bindings6832_
                                          (_collect-bindings5973_
                                           _forms6828_)))
                                     (let ((_g10671_
                                            (_lift-pre5974_
                                             _forms6828_
                                             _bindings6832_
                                             _closures6830_)))
                                       (begin
                                         (let ((_g10672_
                                                (values-count _g10671_)))
                                           (if (not (fx= _g10672_ 4))
                                               (error "Context expects 4 values"
                                                      _g10672_)))
                                         (let ((_pre-bind6834_
                                                (values-ref _g10671_ 0))
                                               (_forms6835_
                                                (values-ref _g10671_ 1))
                                               (_bindings6836_
                                                (values-ref _g10671_ 2))
                                               (_closures6837_
                                                (values-ref _g10671_ 3)))
                                           (let ((_g10673_
                                                  (_lift-post5975_
                                                   _forms6835_
                                                   _bindings6836_
                                                   _closures6837_)))
                                             (begin
                                               (let ((_g10674_
                                                      (values-count _g10673_)))
                                                 (if (not (fx= _g10674_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10674_)))
                                               (let ((_post-bind6839_
                                                      (values-ref _g10673_ 0))
                                                     (_forms6840_
                                                      (values-ref _g10673_ 1))
                                                     (_bindings6841_
                                                      (values-ref _g10673_ 2))
                                                     (_closures6842_
                                                      (values-ref _g10673_ 3)))
                                                 (let ((_g10675_
                                                        (_lift-rec5976_
                                                         _forms6840_)))
                                                   (begin
                                                     (let ((_g10676_
                                                            (values-count
                                                             _g10675_)))
                                                       (if (not (fx= _g10676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10676_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6844_
                                                            (values-ref
                                                             _g10675_
                                                             0))
                                                           (_rec-bind6845_
                                                            (values-ref
                                                             _g10675_
                                                             1))
                                                           (_rec-init6846_
                                                            (values-ref
                                                             _g10675_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6844_
                         _rec-bind6845_
                         _rec-init6846_
                         _post-bind6839_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5981_
                                    (lambda (_hd6068_ _body6069_)
                                      (let ((_hd60706078_ _hd6068_))
                                        (let ((_E60736082_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd60706078_))))
                                          (let ((_else60726086_
                                                 (lambda () _body6069_)))
                                            (let ((_K60746127_
                                                   (lambda (_rest6089_
                                                            _bind6090_)
                                                     (let ((_bind60916100_
                                                            _bind6090_))
                                                       (let ((_E60936104_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind60916100_))))
                 (let ((_K60946110_
                        (lambda (_expr6107_ _hd6108_)
                          (if (gx#stx-ormap gx#identifier? _hd6108_)
                              (gxc#generate-runtime-let-values%__opt-lambda7269
                               (cons '%#let-values
                                     (cons (cons _bind6090_ '())
                                           (cons (_generate-let*5981_
                                                  _rest6089_
                                                  _body6069_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr6107_)
                                          (cons (_generate-let*5981_
                                                 _rest6089_
                                                 _body6069_)
                                                '())))))))
                   (if (##pair? _bind60916100_)
                       (let ((_hd60956113_ (##car _bind60916100_))
                             (_tl60966115_ (##cdr _bind60916100_)))
                         (let ((_hd6118_ _hd60956113_))
                           (if (##pair? _tl60966115_)
                               (let ((_hd60976120_ (##car _tl60966115_))
                                     (_tl60986122_ (##cdr _tl60966115_)))
                                 (let ((_expr6125_ _hd60976120_))
                                   (if (##null? _tl60986122_)
                                       (_K60946110_ _expr6125_ _hd6118_)
                                       (_E60936104_))))
                               (_E60936104_))))
                       (_E60936104_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd60706078_)
                                                  (let ((_hd60756130_
                                                         (##car _hd60706078_))
                                                        (_tl60766132_
                                                         (##cdr _hd60706078_)))
                                                    (let ((_bind6135_
                                                           _hd60756130_))
                                                      (let ((_rest6137_
                                                             _tl60766132_))
                                                        (_K60746127_
                                                         _rest6137_
                                                         _bind6135_))))
                                                  (_else60726086_)))))))))
                            (let ((_g59836000_
                                   (lambda (_g59845997_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g59845997_))))
                              (let ((_g59826065_
                                     (lambda (_g59846003_)
                                       (if (gx#stx-pair? _g59846003_)
                                           (let ((_e59876005_
                                                  (gx#stx-e _g59846003_)))
                                             (let ((_hd59886008_
                                                    (##car _e59876005_))
                                                   (_tl59896010_
                                                    (##cdr _e59876005_)))
                                               (if (gx#stx-pair? _tl59896010_)
                                                   (let ((_e59906013_
                                                          (gx#stx-e
                                                           _tl59896010_)))
                                                     (let ((_hd59916016_
                                                            (##car _e59906013_))
                                                           (_tl59926018_
                                                            (##cdr _e59906013_)))
                                                       (if (gx#stx-pair?
                                                            _tl59926018_)
                                                           (let ((_e59936021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl59926018_)))
                     (let ((_hd59946024_ (##car _e59936021_))
                           (_tl59956026_ (##cdr _e59936021_)))
                       (if (gx#stx-null? _tl59956026_)
                           ((lambda (_L6029_ _L6030_)
                              (let ((_g10669_ (_linearize5971_ _L6030_)))
                                (begin
                                  (let ((_g10670_ (values-count _g10669_)))
                                    (if (not (fx= _g10670_ 5))
                                        (error "Context expects 5 values"
                                               _g10670_)))
                                  (let ((_pre6046_ (values-ref _g10669_ 0))
                                        (_rec-pre6047_ (values-ref _g10669_ 1))
                                        (_rec-bind6048_
                                         (values-ref _g10669_ 2))
                                        (_rec-init6049_
                                         (values-ref _g10669_ 3))
                                        (_post6050_ (values-ref _g10669_ 4)))
                                    (let ((_body6052_ (gxc#compile-e _L6029_)))
                                      (let ((_body6054_
                                             (if (null? _post6050_)
                                                 _body6052_
                                                 (_generate-let*5981_
                                                  _post6050_
                                                  _body6052_))))
                                        (let ((_body6056_
                                               (if (null? _rec-init6049_)
                                                   _body6054_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body6054_ '())
                         _rec-init6049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body6058_
                                                 (if (null? _rec-bind6048_)
                                                     _body6056_
                                                     (cons 'letrec
                                                           (cons _rec-bind6048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body6056_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body6060_
                                                   (if (null? _rec-pre6047_)
                                                       _body6058_
                                                       (cons 'let
                                                             (cons _rec-pre6047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body6058_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body6062_
                                                     (if (null? _pre6046_)
                                                         _body6060_
                                                         (_generate-let*5981_
                                                          _pre6046_
                                                          _body6060_))))
                                                (let () _body6062_)))))))))))
                            _hd59946024_
                            _hd59916016_)
                           (_g59836000_ _g59846003_))))
                   (_g59836000_ _g59846003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59836000_ _g59846003_))))
                                           (_g59836000_ _g59846003_)))))
                                (_g59826065_ _stx5969_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5862_)
      ((letrec ((_lp5864_
                 (lambda (_rest5866_)
                   (let ((_g58705891_
                          (lambda (_g58715888_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g58715888_))))
                     (let ((_g58695898_
                            (lambda (_g58715894_) ((lambda () '#f)))))
                       (let ((_g58685905_
                              (lambda (_g58715901_)
                                (if (gx#stx-null? _g58715901_)
                                    ((lambda () '#t))
                                    (_g58695898_ _g58715901_)))))
                         (let ((_g58675966_
                                (lambda (_g58715908_)
                                  (if (gx#stx-pair? _g58715908_)
                                      (let ((_e58755910_
                                             (gx#stx-e _g58715908_)))
                                        (let ((_hd58765913_
                                               (##car _e58755910_))
                                              (_tl58775915_
                                               (##cdr _e58755910_)))
                                          (if (gx#stx-pair? _hd58765913_)
                                              (let ((_e58785918_
                                                     (gx#stx-e _hd58765913_)))
                                                (let ((_hd58795921_
                                                       (##car _e58785918_))
                                                      (_tl58805923_
                                                       (##cdr _e58785918_)))
                                                  (if (gx#stx-pair?
                                                       _hd58795921_)
                                                      (let ((_e58815926_
                                                             (gx#stx-e
                                                              _hd58795921_)))
                                                        (let ((_hd58825929_
                                                               (##car _e58815926_))
                                                              (_tl58835931_
                                                               (##cdr _e58815926_)))
                                                          (if (gx#stx-null?
                                                               _tl58835931_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl58805923_)
                          (let ((_e58845934_ (gx#stx-e _tl58805923_)))
                            (let ((_hd58855937_ (##car _e58845934_))
                                  (_tl58865939_ (##cdr _e58845934_)))
                              (if (gx#stx-null? _tl58865939_)
                                  ((lambda (_L5942_ _L5943_ _L5944_)
                                     (_lp5864_ _L5942_))
                                   _tl58775915_
                                   _hd58855937_
                                   _hd58825929_)
                                  (_g58685905_ _g58715908_))))
                          (_g58685905_ _g58715908_))
                      (_g58685905_ _g58715908_))))
              (_g58685905_ _g58715908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g58685905_ _g58715908_))))
                                      (_g58685905_ _g58715908_)))))
                           (_g58675966_ _rest5866_))))))))
         _lp5864_)
       _hd5862_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5786_ _hd5787_ _body5788_ _compiled-body?5789_)
      (let ((_generate15791_
             (lambda (_bind5793_)
               (let ((_g57955812_
                      (lambda (_g57965809_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g57965809_))))
                 (let ((_g57945859_
                        (lambda (_g57965815_)
                          (if (gx#stx-pair? _g57965815_)
                              (let ((_e57995817_ (gx#stx-e _g57965815_)))
                                (let ((_hd58005820_ (##car _e57995817_))
                                      (_tl58015822_ (##cdr _e57995817_)))
                                  (if (gx#stx-pair? _hd58005820_)
                                      (let ((_e58025825_
                                             (gx#stx-e _hd58005820_)))
                                        (let ((_hd58035828_
                                               (##car _e58025825_))
                                              (_tl58045830_
                                               (##cdr _e58025825_)))
                                          (if (gx#stx-null? _tl58045830_)
                                              (if (gx#stx-pair? _tl58015822_)
                                                  (let ((_e58055833_
                                                         (gx#stx-e
                                                          _tl58015822_)))
                                                    (let ((_hd58065836_
                                                           (##car _e58055833_))
                                                          (_tl58075838_
                                                           (##cdr _e58055833_)))
                                                      (if (gx#stx-null?
                                                           _tl58075838_)
                                                          ((lambda (_L5841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5842_)
                     (cons (gxc#generate-runtime-binding-id* _L5842_)
                           (cons (gxc#compile-e _L5841_) '())))
                   _hd58065836_
                   _hd58035828_)
                  (_g57955812_ _g57965815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g57955812_ _g57965815_))
                                              (_g57955812_ _g57965815_))))
                                      (_g57955812_ _g57965815_))))
                              (_g57955812_ _g57965815_)))))
                   (_g57945859_ _bind5793_))))))
        (cons _form5786_
              (cons (map _generate15791_ _hd5787_)
                    (cons (if _compiled-body?5789_
                              _body5788_
                              (gxc#compile-e _body5788_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5694_)
      (letrec ((_generate15696_
                (lambda (_datum5748_)
                  (if (let ((_$e5750_ (null? _datum5748_)))
                        (if _$e5750_
                            _$e5750_
                            (let ((_$e5753_ (interned-symbol? _datum5748_)))
                              (if _$e5753_
                                  _$e5753_
                                  (let ((_$e5756_
                                         (gx#self-quoting? _datum5748_)))
                                    (if _$e5756_
                                        _$e5756_
                                        (eof-object? _datum5748_)))))))
                      _datum5748_
                      (if (uninterned-symbol? _datum5748_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9592
                           _datum5748_
                           '#t)
                          (if (pair? _datum5748_)
                              (cons (_generate15696_ (car _datum5748_))
                                    (_generate15696_ (cdr _datum5748_)))
                              (if (box? _datum5748_)
                                  (box (_generate15696_ (unbox _datum5748_)))
                                  (if (vector? _datum5748_)
                                      (vector-map _generate15696_ _datum5748_)
                                      (if (let ((_$e5759_
                                                 (s8vector? _datum5748_)))
                                            (if _$e5759_
                                                _$e5759_
                                                (let ((_$e5762_
                                                       (u8vector?
                                                        _datum5748_)))
                                                  (if _$e5762_
                                                      _$e5762_
                                                      (let ((_$e5765_
                                                             (s16vector?
                                                              _datum5748_)))
                                                        (if _$e5765_
                                                            _$e5765_
                                                            (let ((_$e5768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5748_)))
                      (if _$e5768_
                          _$e5768_
                          (let ((_$e5771_ (s32vector? _datum5748_)))
                            (if _$e5771_
                                _$e5771_
                                (let ((_$e5774_ (u32vector? _datum5748_)))
                                  (if _$e5774_
                                      _$e5774_
                                      (let ((_$e5777_
                                             (s64vector? _datum5748_)))
                                        (if _$e5777_
                                            _$e5777_
                                            (let ((_$e5780_
                                                   (u64vector? _datum5748_)))
                                              (if _$e5780_
                                                  _$e5780_
                                                  (let ((_$e5783_
                                                         (f32vector?
                                                          _datum5748_)))
                                                    (if _$e5783_
                                                        _$e5783_
                                                        (f64vector?
                                                         _datum5748_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5748_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5694_))))))))))
        (let ((_g56985711_
               (lambda (_g56995708_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g56995708_))))
          (let ((_g56975745_
                 (lambda (_g56995714_)
                   (if (gx#stx-pair? _g56995714_)
                       (let ((_e57015716_ (gx#stx-e _g56995714_)))
                         (let ((_hd57025719_ (##car _e57015716_))
                               (_tl57035721_ (##cdr _e57015716_)))
                           (if (gx#stx-pair? _tl57035721_)
                               (let ((_e57045724_ (gx#stx-e _tl57035721_)))
                                 (let ((_hd57055727_ (##car _e57045724_))
                                       (_tl57065729_ (##cdr _e57045724_)))
                                   (if (gx#stx-null? _tl57065729_)
                                       ((lambda (_L5732_)
                                          (cons 'quote
                                                (cons (_generate15696_
                                                       (gx#stx-e _L5732_))
                                                      '())))
                                        _hd57055727_)
                                       (_g56985711_ _g56995714_))))
                               (_g56985711_ _g56995714_))))
                       (_g56985711_ _g56995714_)))))
            (_g56975745_ _stx5694_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5656_)
      (let ((_g56585668_
             (lambda (_g56595665_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56595665_))))
        (let ((_g56575691_
               (lambda (_g56595671_)
                 (if (gx#stx-pair? _g56595671_)
                     (let ((_e56615673_ (gx#stx-e _g56595671_)))
                       (let ((_hd56625676_ (##car _e56615673_))
                             (_tl56635678_ (##cdr _e56615673_)))
                         ((lambda (_L5681_) (map gxc#compile-e _L5681_))
                          _tl56635678_)))
                     (_g56585668_ _g56595671_)))))
          (_g56575691_ _stx5656_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5618_)
      (let ((_g56205630_
             (lambda (_g56215627_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56215627_))))
        (let ((_g56195653_
               (lambda (_g56215633_)
                 (if (gx#stx-pair? _g56215633_)
                     (let ((_e56235635_ (gx#stx-e _g56215633_)))
                       (let ((_hd56245638_ (##car _e56235635_))
                             (_tl56255640_ (##cdr _e56235635_)))
                         ((lambda (_L5643_)
                            (cons 'if (map gxc#compile-e _L5643_)))
                          _tl56255640_)))
                     (_g56205630_ _g56215633_)))))
          (_g56195653_ _stx5618_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5567_)
      (let ((_g55695582_
             (lambda (_g55705579_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55705579_))))
        (let ((_g55685615_
               (lambda (_g55705585_)
                 (if (gx#stx-pair? _g55705585_)
                     (let ((_e55725587_ (gx#stx-e _g55705585_)))
                       (let ((_hd55735590_ (##car _e55725587_))
                             (_tl55745592_ (##cdr _e55725587_)))
                         (if (gx#stx-pair? _tl55745592_)
                             (let ((_e55755595_ (gx#stx-e _tl55745592_)))
                               (let ((_hd55765598_ (##car _e55755595_))
                                     (_tl55775600_ (##cdr _e55755595_)))
                                 (if (gx#stx-null? _tl55775600_)
                                     ((lambda (_L5603_)
                                        (gxc#generate-runtime-binding-id
                                         _L5603_))
                                      _hd55765598_)
                                     (_g55695582_ _g55705585_))))
                             (_g55695582_ _g55705585_))))
                     (_g55695582_ _g55705585_)))))
          (_g55685615_ _stx5567_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5500_)
      (let ((_g55025519_
             (lambda (_g55035516_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55035516_))))
        (let ((_g55015564_
               (lambda (_g55035522_)
                 (if (gx#stx-pair? _g55035522_)
                     (let ((_e55065524_ (gx#stx-e _g55035522_)))
                       (let ((_hd55075527_ (##car _e55065524_))
                             (_tl55085529_ (##cdr _e55065524_)))
                         (if (gx#stx-pair? _tl55085529_)
                             (let ((_e55095532_ (gx#stx-e _tl55085529_)))
                               (let ((_hd55105535_ (##car _e55095532_))
                                     (_tl55115537_ (##cdr _e55095532_)))
                                 (if (gx#stx-pair? _tl55115537_)
                                     (let ((_e55125540_
                                            (gx#stx-e _tl55115537_)))
                                       (let ((_hd55135543_ (##car _e55125540_))
                                             (_tl55145545_
                                              (##cdr _e55125540_)))
                                         (if (gx#stx-null? _tl55145545_)
                                             ((lambda (_L5548_ _L5549_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5549_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5548_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd55135543_
                                              _hd55105535_)
                                             (_g55025519_ _g55035522_))))
                                     (_g55025519_ _g55035522_))))
                             (_g55025519_ _g55035522_))))
                     (_g55025519_ _g55035522_)))))
          (_g55015564_ _stx5500_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5433_)
      (let ((_g54355452_
             (lambda (_g54365449_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54365449_))))
        (let ((_g54345497_
               (lambda (_g54365455_)
                 (if (gx#stx-pair? _g54365455_)
                     (let ((_e54395457_ (gx#stx-e _g54365455_)))
                       (let ((_hd54405460_ (##car _e54395457_))
                             (_tl54415462_ (##cdr _e54395457_)))
                         (if (gx#stx-pair? _tl54415462_)
                             (let ((_e54425465_ (gx#stx-e _tl54415462_)))
                               (let ((_hd54435468_ (##car _e54425465_))
                                     (_tl54445470_ (##cdr _e54425465_)))
                                 (if (gx#stx-pair? _tl54445470_)
                                     (let ((_e54455473_
                                            (gx#stx-e _tl54445470_)))
                                       (let ((_hd54465476_ (##car _e54455473_))
                                             (_tl54475478_
                                              (##cdr _e54455473_)))
                                         (if (gx#stx-null? _tl54475478_)
                                             ((lambda (_L5481_ _L5482_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5481_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5482_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd54465476_
                                              _hd54435468_)
                                             (_g54355452_ _g54365455_))))
                                     (_g54355452_ _g54365455_))))
                             (_g54355452_ _g54365455_))))
                     (_g54355452_ _g54365455_)))))
          (_g54345497_ _stx5433_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5366_)
      (let ((_g53685385_
             (lambda (_g53695382_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53695382_))))
        (let ((_g53675430_
               (lambda (_g53695388_)
                 (if (gx#stx-pair? _g53695388_)
                     (let ((_e53725390_ (gx#stx-e _g53695388_)))
                       (let ((_hd53735393_ (##car _e53725390_))
                             (_tl53745395_ (##cdr _e53725390_)))
                         (if (gx#stx-pair? _tl53745395_)
                             (let ((_e53755398_ (gx#stx-e _tl53745395_)))
                               (let ((_hd53765401_ (##car _e53755398_))
                                     (_tl53775403_ (##cdr _e53755398_)))
                                 (if (gx#stx-pair? _tl53775403_)
                                     (let ((_e53785406_
                                            (gx#stx-e _tl53775403_)))
                                       (let ((_hd53795409_ (##car _e53785406_))
                                             (_tl53805411_
                                              (##cdr _e53785406_)))
                                         (if (gx#stx-null? _tl53805411_)
                                             ((lambda (_L5414_ _L5415_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5414_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5415_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd53795409_
                                              _hd53765401_)
                                             (_g53685385_ _g53695388_))))
                                     (_g53685385_ _g53695388_))))
                             (_g53685385_ _g53695388_))))
                     (_g53685385_ _g53695388_)))))
          (_g53675430_ _stx5366_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5283_)
      (let ((_g52855306_
             (lambda (_g52865303_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52865303_))))
        (let ((_g52845363_
               (lambda (_g52865309_)
                 (if (gx#stx-pair? _g52865309_)
                     (let ((_e52905311_ (gx#stx-e _g52865309_)))
                       (let ((_hd52915314_ (##car _e52905311_))
                             (_tl52925316_ (##cdr _e52905311_)))
                         (if (gx#stx-pair? _tl52925316_)
                             (let ((_e52935319_ (gx#stx-e _tl52925316_)))
                               (let ((_hd52945322_ (##car _e52935319_))
                                     (_tl52955324_ (##cdr _e52935319_)))
                                 (if (gx#stx-pair? _tl52955324_)
                                     (let ((_e52965327_
                                            (gx#stx-e _tl52955324_)))
                                       (let ((_hd52975330_ (##car _e52965327_))
                                             (_tl52985332_
                                              (##cdr _e52965327_)))
                                         (if (gx#stx-pair? _tl52985332_)
                                             (let ((_e52995335_
                                                    (gx#stx-e _tl52985332_)))
                                               (let ((_hd53005338_
                                                      (##car _e52995335_))
                                                     (_tl53015340_
                                                      (##cdr _e52995335_)))
                                                 (if (gx#stx-null?
                                                      _tl53015340_)
                                                     ((lambda (_L5343_
                                                               _L5344_
                                                               _L5345_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5343_)
                            (cons (gxc#compile-e _L5344_)
                                  (cons (gxc#compile-e _L5345_)
                                        (cons ''#f '()))))))
              _hd53005338_
              _hd52975330_
              _hd52945322_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g52855306_
                                                      _g52865309_))))
                                             (_g52855306_ _g52865309_))))
                                     (_g52855306_ _g52865309_))))
                             (_g52855306_ _g52865309_))))
                     (_g52855306_ _g52865309_)))))
          (_g52845363_ _stx5283_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5184_)
      (let ((_g51865211_
             (lambda (_g51875208_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51875208_))))
        (let ((_g51855280_
               (lambda (_g51875214_)
                 (if (gx#stx-pair? _g51875214_)
                     (let ((_e51925216_ (gx#stx-e _g51875214_)))
                       (let ((_hd51935219_ (##car _e51925216_))
                             (_tl51945221_ (##cdr _e51925216_)))
                         (if (gx#stx-pair? _tl51945221_)
                             (let ((_e51955224_ (gx#stx-e _tl51945221_)))
                               (let ((_hd51965227_ (##car _e51955224_))
                                     (_tl51975229_ (##cdr _e51955224_)))
                                 (if (gx#stx-pair? _tl51975229_)
                                     (let ((_e51985232_
                                            (gx#stx-e _tl51975229_)))
                                       (let ((_hd51995235_ (##car _e51985232_))
                                             (_tl52005237_
                                              (##cdr _e51985232_)))
                                         (if (gx#stx-pair? _tl52005237_)
                                             (let ((_e52015240_
                                                    (gx#stx-e _tl52005237_)))
                                               (let ((_hd52025243_
                                                      (##car _e52015240_))
                                                     (_tl52035245_
                                                      (##cdr _e52015240_)))
                                                 (if (gx#stx-pair?
                                                      _tl52035245_)
                                                     (let ((_e52045248_
                                                            (gx#stx-e
                                                             _tl52035245_)))
                                                       (let ((_hd52055251_
                                                              (##car _e52045248_))
                                                             (_tl52065253_
                                                              (##cdr _e52045248_)))
                                                         (if (gx#stx-null?
                                                              _tl52065253_)
                                                             ((lambda (_L5256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L5257_
                               _L5258_
                               _L5259_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L5257_)
                                    (cons (gxc#compile-e _L5256_)
                                          (cons (gxc#compile-e _L5258_)
                                                (cons (gxc#compile-e _L5259_)
                                                      (cons ''#f '())))))))
                      _hd52055251_
                      _hd52025243_
                      _hd51995235_
                      _hd51965227_)
                     (_g51865211_ _g51875214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g51865211_
                                                      _g51875214_))))
                                             (_g51865211_ _g51875214_))))
                                     (_g51865211_ _g51875214_))))
                             (_g51865211_ _g51875214_))))
                     (_g51865211_ _g51875214_)))))
          (_g51855280_ _stx5184_)))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5101_)
      (let ((_g51035124_
             (lambda (_g51045121_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51045121_))))
        (let ((_g51025181_
               (lambda (_g51045127_)
                 (if (gx#stx-pair? _g51045127_)
                     (let ((_e51085129_ (gx#stx-e _g51045127_)))
                       (let ((_hd51095132_ (##car _e51085129_))
                             (_tl51105134_ (##cdr _e51085129_)))
                         (if (gx#stx-pair? _tl51105134_)
                             (let ((_e51115137_ (gx#stx-e _tl51105134_)))
                               (let ((_hd51125140_ (##car _e51115137_))
                                     (_tl51135142_ (##cdr _e51115137_)))
                                 (if (gx#stx-pair? _tl51135142_)
                                     (let ((_e51145145_
                                            (gx#stx-e _tl51135142_)))
                                       (let ((_hd51155148_ (##car _e51145145_))
                                             (_tl51165150_
                                              (##cdr _e51145145_)))
                                         (if (gx#stx-pair? _tl51165150_)
                                             (let ((_e51175153_
                                                    (gx#stx-e _tl51165150_)))
                                               (let ((_hd51185156_
                                                      (##car _e51175153_))
                                                     (_tl51195158_
                                                      (##cdr _e51175153_)))
                                                 (if (gx#stx-null?
                                                      _tl51195158_)
                                                     ((lambda (_L5161_
                                                               _L5162_
                                                               _L5163_)
                                                        (cons '##direct-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5161_)
                            (cons (gxc#compile-e _L5162_)
                                  (cons (gxc#compile-e _L5163_)
                                        (cons ''#f '()))))))
              _hd51185156_
              _hd51155148_
              _hd51125140_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g51035124_
                                                      _g51045127_))))
                                             (_g51035124_ _g51045127_))))
                                     (_g51035124_ _g51045127_))))
                             (_g51035124_ _g51045127_))))
                     (_g51035124_ _g51045127_)))))
          (_g51025181_ _stx5101_)))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5002_)
      (let ((_g50045029_
             (lambda (_g50055026_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50055026_))))
        (let ((_g50035098_
               (lambda (_g50055032_)
                 (if (gx#stx-pair? _g50055032_)
                     (let ((_e50105034_ (gx#stx-e _g50055032_)))
                       (let ((_hd50115037_ (##car _e50105034_))
                             (_tl50125039_ (##cdr _e50105034_)))
                         (if (gx#stx-pair? _tl50125039_)
                             (let ((_e50135042_ (gx#stx-e _tl50125039_)))
                               (let ((_hd50145045_ (##car _e50135042_))
                                     (_tl50155047_ (##cdr _e50135042_)))
                                 (if (gx#stx-pair? _tl50155047_)
                                     (let ((_e50165050_
                                            (gx#stx-e _tl50155047_)))
                                       (let ((_hd50175053_ (##car _e50165050_))
                                             (_tl50185055_
                                              (##cdr _e50165050_)))
                                         (if (gx#stx-pair? _tl50185055_)
                                             (let ((_e50195058_
                                                    (gx#stx-e _tl50185055_)))
                                               (let ((_hd50205061_
                                                      (##car _e50195058_))
                                                     (_tl50215063_
                                                      (##cdr _e50195058_)))
                                                 (if (gx#stx-pair?
                                                      _tl50215063_)
                                                     (let ((_e50225066_
                                                            (gx#stx-e
                                                             _tl50215063_)))
                                                       (let ((_hd50235069_
                                                              (##car _e50225066_))
                                                             (_tl50245071_
                                                              (##cdr _e50225066_)))
                                                         (if (gx#stx-null?
                                                              _tl50245071_)
                                                             ((lambda (_L5074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L5075_
                               _L5076_
                               _L5077_)
                        (cons '##direct-structure-set!
                              (cons (gxc#compile-e _L5075_)
                                    (cons (gxc#compile-e _L5074_)
                                          (cons (gxc#compile-e _L5076_)
                                                (cons (gxc#compile-e _L5077_)
                                                      (cons ''#f '())))))))
                      _hd50235069_
                      _hd50205061_
                      _hd50175053_
                      _hd50145045_)
                     (_g50045029_ _g50055032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50045029_
                                                      _g50055032_))))
                                             (_g50045029_ _g50055032_))))
                                     (_g50045029_ _g50055032_))))
                             (_g50045029_ _g50055032_))))
                     (_g50045029_ _g50055032_)))))
          (_g50035098_ _stx5002_)))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx4919_)
      (let ((_g49214942_
             (lambda (_g49224939_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49224939_))))
        (let ((_g49204999_
               (lambda (_g49224945_)
                 (if (gx#stx-pair? _g49224945_)
                     (let ((_e49264947_ (gx#stx-e _g49224945_)))
                       (let ((_hd49274950_ (##car _e49264947_))
                             (_tl49284952_ (##cdr _e49264947_)))
                         (if (gx#stx-pair? _tl49284952_)
                             (let ((_e49294955_ (gx#stx-e _tl49284952_)))
                               (let ((_hd49304958_ (##car _e49294955_))
                                     (_tl49314960_ (##cdr _e49294955_)))
                                 (if (gx#stx-pair? _tl49314960_)
                                     (let ((_e49324963_
                                            (gx#stx-e _tl49314960_)))
                                       (let ((_hd49334966_ (##car _e49324963_))
                                             (_tl49344968_
                                              (##cdr _e49324963_)))
                                         (if (gx#stx-pair? _tl49344968_)
                                             (let ((_e49354971_
                                                    (gx#stx-e _tl49344968_)))
                                               (let ((_hd49364974_
                                                      (##car _e49354971_))
                                                     (_tl49374976_
                                                      (##cdr _e49354971_)))
                                                 (if (gx#stx-null?
                                                      _tl49374976_)
                                                     ((lambda (_L4979_
                                                               _L4980_
                                                               _L4981_)
                                                        (cons '##unchecked-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4979_)
                            (cons (gxc#compile-e _L4980_)
                                  (cons (gxc#compile-e _L4981_)
                                        (cons ''#f '()))))))
              _hd49364974_
              _hd49334966_
              _hd49304958_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49214942_
                                                      _g49224945_))))
                                             (_g49214942_ _g49224945_))))
                                     (_g49214942_ _g49224945_))))
                             (_g49214942_ _g49224945_))))
                     (_g49214942_ _g49224945_)))))
          (_g49204999_ _stx4919_)))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx4820_)
      (let ((_g48224847_
             (lambda (_g48234844_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48234844_))))
        (let ((_g48214916_
               (lambda (_g48234850_)
                 (if (gx#stx-pair? _g48234850_)
                     (let ((_e48284852_ (gx#stx-e _g48234850_)))
                       (let ((_hd48294855_ (##car _e48284852_))
                             (_tl48304857_ (##cdr _e48284852_)))
                         (if (gx#stx-pair? _tl48304857_)
                             (let ((_e48314860_ (gx#stx-e _tl48304857_)))
                               (let ((_hd48324863_ (##car _e48314860_))
                                     (_tl48334865_ (##cdr _e48314860_)))
                                 (if (gx#stx-pair? _tl48334865_)
                                     (let ((_e48344868_
                                            (gx#stx-e _tl48334865_)))
                                       (let ((_hd48354871_ (##car _e48344868_))
                                             (_tl48364873_
                                              (##cdr _e48344868_)))
                                         (if (gx#stx-pair? _tl48364873_)
                                             (let ((_e48374876_
                                                    (gx#stx-e _tl48364873_)))
                                               (let ((_hd48384879_
                                                      (##car _e48374876_))
                                                     (_tl48394881_
                                                      (##cdr _e48374876_)))
                                                 (if (gx#stx-pair?
                                                      _tl48394881_)
                                                     (let ((_e48404884_
                                                            (gx#stx-e
                                                             _tl48394881_)))
                                                       (let ((_hd48414887_
                                                              (##car _e48404884_))
                                                             (_tl48424889_
                                                              (##cdr _e48404884_)))
                                                         (if (gx#stx-null?
                                                              _tl48424889_)
                                                             ((lambda (_L4892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4893_
                               _L4894_
                               _L4895_)
                        (cons '##unchecked-structure-set!
                              (cons (gxc#compile-e _L4893_)
                                    (cons (gxc#compile-e _L4892_)
                                          (cons (gxc#compile-e _L4894_)
                                                (cons (gxc#compile-e _L4895_)
                                                      (cons ''#f '())))))))
                      _hd48414887_
                      _hd48384879_
                      _hd48354871_
                      _hd48324863_)
                     (_g48224847_ _g48234850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48224847_
                                                      _g48234850_))))
                                             (_g48224847_ _g48234850_))))
                                     (_g48224847_ _g48234850_))))
                             (_g48224847_ _g48234850_))))
                     (_g48224847_ _g48234850_)))))
          (_g48214916_ _stx4820_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4729_)
      (let ((_g47314741_
             (lambda (_g47324738_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47324738_))))
        (let ((_g47304817_
               (lambda (_g47324744_)
                 (if (gx#stx-pair? _g47324744_)
                     (let ((_e47344746_ (gx#stx-e _g47324744_)))
                       (let ((_hd47354749_ (##car _e47344746_))
                             (_tl47364751_ (##cdr _e47344746_)))
                         ((lambda (_L4754_)
                            (let ((_ht4764_ (make-hash-table-eq)))
                              ((letrec ((_lp4766_
                                         (lambda (_rest4768_ _loads4769_)
                                           (let ((_K4771_ (lambda (_ctx4810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4811_)
                    (let ((_id4813_
                           (##structure-ref
                            _ctx4810_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4764_ _id4813_ '#f)
                          (_lp4766_ _rest4811_ _loads4769_)
                          (let ((_rt4815_
                                 (string-append
                                  (symbol->string _id4813_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4764_ _id4813_ _rt4815_)
                              (_lp4766_
                               _rest4811_
                               (cons _rt4815_ _loads4769_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest47724780_ _rest4768_))
                                               (let ((_E47754784_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest47724780_))))
                                                 (let ((_else47744792_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g47874789_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g47874789_))
                             (reverse _loads4769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K47764798_
                                                          (lambda (_rest4795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4796_)
                    (if (##structure-instance-of?
                         _in4796_
                         'gx#module-context::t)
                        (_K4771_ _in4796_ _rest4795_)
                        (if (##structure-direct-instance-of?
                             _in4796_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##direct-structure-ref
                                  _in4796_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4766_ _rest4795_ _loads4769_)
                                (_K4771_ (##direct-structure-ref
                                          (##direct-structure-ref
                                           _in4796_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4795_))
                            (if (##structure-direct-instance-of?
                                 _in4796_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##direct-structure-ref
                                      _in4796_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4766_ _rest4795_ _loads4769_)
                                    (_K4771_ (##direct-structure-ref
                                              _in4796_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4795_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4729_
                                 _in4796_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest47724780_)
                                                         (let ((_hd47774801_
                                                                (##car _rest47724780_))
                                                               (_tl47784803_
                                                                (##cdr _rest47724780_)))
                                                           (let ((_in4806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd47774801_))
                     (let ((_rest4808_ _tl47784803_))
                       (_K47764798_ _rest4808_ _in4806_))))
                 (_else47744792_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4766_)
                               _L4754_
                               '())))
                          _tl47364751_)))
                     (_g47314741_ _g47324744_)))))
          (_g47304817_ _stx4729_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4670_)
      (let ((_generate-quote4672_
             (lambda (_q4727_)
               (if (gx#identifier? _q4727_)
                   (gxc#generate-runtime-identifier _q4727_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4670_
                    _q4727_)))))
        (let ((_g46744687_
               (lambda (_g46754684_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46754684_))))
          (let ((_g46734724_
                 (lambda (_g46754690_)
                   (if (gx#stx-pair? _g46754690_)
                       (let ((_e46774692_ (gx#stx-e _g46754690_)))
                         (let ((_hd46784695_ (##car _e46774692_))
                               (_tl46794697_ (##cdr _e46774692_)))
                           (if (gx#stx-pair? _tl46794697_)
                               (let ((_e46804700_ (gx#stx-e _tl46794697_)))
                                 (let ((_hd46814703_ (##car _e46804700_))
                                       (_tl46824705_ (##cdr _e46804700_)))
                                   (if (gx#stx-null? _tl46824705_)
                                       ((lambda (_L4708_)
                                          (let ((_gid4721_
                                                 (gxc#generate-runtime-temporary__opt-lambda9538
                                                  '#t))
                                                (_quote-e4722_
                                                 (_generate-quote4672_
                                                  _L4708_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4722_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4721_)))
                                        _hd46814703_)
                                       (_g46744687_ _g46754690_))))
                               (_g46744687_ _g46754690_))))
                       (_g46744687_ _g46754690_)))))
            (_g46734724_ _stx4670_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4603_)
      (let ((_g46054622_
             (lambda (_g46064619_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46064619_))))
        (let ((_g46044667_
               (lambda (_g46064625_)
                 (if (gx#stx-pair? _g46064625_)
                     (let ((_e46094627_ (gx#stx-e _g46064625_)))
                       (let ((_hd46104630_ (##car _e46094627_))
                             (_tl46114632_ (##cdr _e46094627_)))
                         (if (gx#stx-pair? _tl46114632_)
                             (let ((_e46124635_ (gx#stx-e _tl46114632_)))
                               (let ((_hd46134638_ (##car _e46124635_))
                                     (_tl46144640_ (##cdr _e46124635_)))
                                 (if (gx#stx-pair? _tl46144640_)
                                     (let ((_e46154643_
                                            (gx#stx-e _tl46144640_)))
                                       (let ((_hd46164646_ (##car _e46154643_))
                                             (_tl46174648_
                                              (##cdr _e46154643_)))
                                         (if (gx#stx-null? _tl46174648_)
                                             ((lambda (_L4651_ _L4652_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4652_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4651_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd46164646_
                                              _hd46134638_)
                                             (_g46054622_ _g46064625_))))
                                     (_g46054622_ _g46064625_))))
                             (_g46054622_ _g46064625_))))
                     (_g46054622_ _g46064625_)))))
          (_g46044667_ _stx4603_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4552_ _state4553_)
      (let ((_g45554565_
             (lambda (_g45564562_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45564562_))))
        (let ((_g45544600_
               (lambda (_g45564568_)
                 (if (gx#stx-pair? _g45564568_)
                     (let ((_e45584570_ (gx#stx-e _g45564568_)))
                       (let ((_hd45594573_ (##car _e45584570_))
                             (_tl45604575_ (##cdr _e45584570_)))
                         ((lambda (_L4578_)
                            (let ((_c-body4592_
                                   (map (lambda (_g45874589_)
                                          (gxc#compile-e
                                           _g45874589_
                                           _state4553_))
                                        _L4578_)))
                              (let ((_c-body4597_
                                     (filter (lambda (_$obj4594_)
                                               (not (eq? _$obj4594_ '#!void)))
                                             _c-body4592_)))
                                (let () (cons '%#begin _c-body4597_)))))
                          _tl45604575_)))
                     (_g45554565_ _g45564568_)))))
          (_g45544600_ _stx4552_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4460_ _state4461_)
      (let ((_g44634473_
             (lambda (_g44644470_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44644470_))))
        (let ((_g44624549_
               (lambda (_g44644476_)
                 (if (gx#stx-pair? _g44644476_)
                     (let ((_e44664478_ (gx#stx-e _g44644476_)))
                       (let ((_hd44674481_ (##car _e44664478_))
                             (_tl44684483_ (##cdr _e44664478_)))
                         ((lambda (_L4486_)
                            (let ((_phi4496_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4498_
                                     (gxc#meta-state-begin-phi!
                                      _state4461_
                                      _phi4496_)))
                                (let ((_compiled4501_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4486_)
                                           _state4461_))
                                        gx#current-expander-phi
                                        _phi4496_)))
                                  (let ()
                                    (let ((_g45044514_
                                           (lambda (_g45054511_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g45054511_))))
                                      (let ((_g45034546_
                                             (lambda (_g45054517_)
                                               (if (gx#stx-pair? _g45054517_)
                                                   (let ((_e45074519_
                                                          (gx#stx-e
                                                           _g45054517_)))
                                                     (let ((_hd45084522_
                                                            (##car _e45074519_))
                                                           (_tl45094524_
                                                            (##cdr _e45074519_)))
                                                       (if (gx#identifier?
                                                            _hd45084522_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd45084522_)
                                                               ((lambda (_L4527_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4544_
                                 (filter (lambda (_$obj4541_)
                                           (not (eq? _$obj4541_ '#!void)))
                                         _L4527_)))
                            (if _block4498_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4498_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4544_))
                                (if (null? _c-body4544_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4544_)))))
                        _tl45094524_)
                       (_g45044514_ _g45054517_))
                   (_g45044514_ _g45054517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45044514_
                                                    _g45054517_)))))
                                        (_g45034546_ _compiled4501_))))))))
                          _tl44684483_)))
                     (_g44634473_ _g44644476_)))))
          (_g44624549_ _stx4460_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4391_ _state4392_)
      (begin
        (gxc#meta-state-end-phi! _state4392_)
        (let ((_g43944408_
               (lambda (_g43954405_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43954405_))))
          (let ((_g43934457_
                 (lambda (_g43954411_)
                   (if (gx#stx-pair? _g43954411_)
                       (let ((_e43984413_ (gx#stx-e _g43954411_)))
                         (let ((_hd43994416_ (##car _e43984413_))
                               (_tl44004418_ (##cdr _e43984413_)))
                           (if (gx#stx-pair? _tl44004418_)
                               (let ((_e44014421_ (gx#stx-e _tl44004418_)))
                                 (let ((_hd44024424_ (##car _e44014421_))
                                       (_tl44034426_ (##cdr _e44014421_)))
                                   ((lambda (_L4429_ _L4430_)
                                      (let ((_key4443_
                                             (gx#core-identifier-key _L4430_)))
                                        (begin
                                          (if (interned-symbol? _key4443_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4391_
                                               _L4430_
                                               _key4443_))
                                          (let ((_ctx4445_
                                                 (gx#syntax-local-e__0
                                                  _L4430_)))
                                            (let ((_code4448_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4445_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4392_))
                                                    gx#current-expander-context
                                                    _ctx4445_)))
                                              (let ((_rt4450_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4445_
                                                      '#f)))
                                                (let ((_loader4452_
                                                       (if _rt4450_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4450_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4454_
                                                         (gx#stx-e _L4430_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4392_)
                                                        (cons '%#module
                                                              (cons _modid4454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4448_ _loader4452_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl44034426_
                                    _hd44024424_)))
                               (_g43944408_ _g43954411_))))
                       (_g43944408_ _g43954411_)))))
            (_g43934457_ _stx4391_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4381_ _context-chain4382_)
      ((letrec ((_lp4384_
                 (lambda (_ctx4386_ _path4387_)
                   (let ((_super4389_
                          (##structure-ref
                           _ctx4386_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4389_ _context-chain4382_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4386_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4387_)
                         (if (##structure-instance-of?
                              _super4389_
                              'gx#module-context::t)
                             (_lp4384_
                              _super4389_
                              (cons (car (##structure-ref
                                          _ctx4386_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4387_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4386_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4387_)))))))
         _lp4384_)
       _ctx4381_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4376_
                 (lambda (_ctx4378_ _r4379_)
                   (if (##structure-instance-of?
                        _ctx4378_
                        'gx#module-context::t)
                       (_lp4376_
                        (##structure-ref _ctx4378_ '3 gx#phi-context::t '#f)
                        (cons _ctx4378_ _r4379_))
                       _r4379_))))
         _lp4376_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4145_ _state4146_)
      (let ((_context-chain4148_ (gxc#current-context-chain)))
        (let ((_make-import-spec4149_
               (lambda (_in4312_)
                 (let ((_in43134325_ _in4312_))
                   (let ((_E43154329_
                          (lambda ()
                            (error '"No clause matching" _in43134325_))))
                     (let ((_K43164339_
                            (lambda (_phi4332_
                                     _name4333_
                                     _src-name4334_
                                     _src-phi4335_
                                     _src-key4336_
                                     _src-ctx4337_)
                              (cons _phi4332_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4333_)
                                          (cons _src-phi4335_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4334_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in43134325_
                            (##type-id gx#module-import::t))
                           (let ((_e43174342_ (##vector-ref _in43134325_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e43174342_
                                  (##type-id gx#module-export::t))
                                 (let ((_e43204345_
                                        (##vector-ref _e43174342_ '1)))
                                   (let ((_src-ctx4348_ _e43204345_))
                                     (let ((_e43214350_
                                            (##vector-ref _e43174342_ '2)))
                                       (let ((_src-key4353_ _e43214350_))
                                         (let ((_e43224355_
                                                (##vector-ref _e43174342_ '3)))
                                           (let ((_src-phi4358_ _e43224355_))
                                             (let ((_e43234360_
                                                    (##vector-ref
                                                     _e43174342_
                                                     '4)))
                                               (let ((_src-name4363_
                                                      _e43234360_))
                                                 (let ((_e43184365_
                                                        (##vector-ref
                                                         _in43134325_
                                                         '2)))
                                                   (let ((_name4368_
                                                          _e43184365_))
                                                     (let ((_e43194370_
                                                            (##vector-ref
                                                             _in43134325_
                                                             '3)))
                                                       (let ((_phi4373_
                                                              _e43194370_))
                                                         (_K43164339_
                                                          _phi4373_
                                                          _name4368_
                                                          _src-name4363_
                                                          _src-phi4358_
                                                          _src-key4353_
                                                          _src-ctx4348_)))))))))))))
                                 (_E43154329_)))
                           (_E43154329_))))))))
          (let ((_make-import-path4150_
                 (lambda (_ctx4310_)
                   (gxc#generate-meta-import-path
                    _ctx4310_
                    _context-chain4148_))))
            (let ((_make-import-spec-in4151_
                   (lambda (_ctx4307_ _in4308_)
                     (cons 'spec:
                           (cons (_make-import-path4150_ _ctx4307_)
                                 (reverse _in4308_))))))
              (begin
                (gxc#meta-state-end-phi! _state4146_)
                (let ((_g41534163_
                       (lambda (_g41544160_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g41544160_))))
                  (let ((_g41524304_
                         (lambda (_g41544166_)
                           (if (gx#stx-pair? _g41544166_)
                               (let ((_e41564168_ (gx#stx-e _g41544166_)))
                                 (let ((_hd41574171_ (##car _e41564168_))
                                       (_tl41584173_ (##cdr _e41564168_)))
                                   ((lambda (_L4176_)
                                      ((letrec ((_lp4187_
                                                 (lambda (_rest4189_
                                                          _current-src4190_
                                                          _current-in4191_
                                                          _r4192_)
                                                   (let ((_rest41934201_
                                                          _rest4189_))
                                                     (let ((_E41964205_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest41934201_))))
               (let ((_else41954211_
                      (lambda ()
                        (let ((_r4209_ (if _current-src4190_
                                           (cons (_make-import-spec-in4151_
                                                  _current-src4190_
                                                  _current-in4191_)
                                                 _r4192_)
                                           _r4192_)))
                          (cons '%#import (reverse _r4209_))))))
                 (let ((_K41974292_
                        (lambda (_rest4214_ _in4215_)
                          (if (##structure-direct-instance-of?
                               _in4215_
                               'gx#module-import::t)
                              (let ((_in42164223_ _in4215_))
                                (let ((_E42184227_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in42164223_))))
                                  (let ((_K42194232_
                                         (lambda (_src-ctx4230_)
                                           (if (eq? _current-src4190_
                                                    _src-ctx4230_)
                                               (_lp4187_
                                                _rest4214_
                                                _current-src4190_
                                                (cons (_make-import-spec4149_
                                                       _in4215_)
                                                      _current-in4191_)
                                                _r4192_)
                                               (if _current-src4190_
                                                   (_lp4187_
                                                    _rest4214_
                                                    _src-ctx4230_
                                                    (cons (_make-import-spec4149_
                                                           _in4215_)
                                                          '())
                                                    (cons (_make-import-spec-in4151_
                                                           _current-src4190_
                                                           _current-in4191_)
                                                          _r4192_))
                                                   (_lp4187_
                                                    _rest4214_
                                                    _src-ctx4230_
                                                    (cons (_make-import-spec4149_
                                                           _in4215_)
                                                          '())
                                                    _r4192_))))))
                                    (if (##structure-direct-instance-of?
                                         _in42164223_
                                         (##type-id gx#module-import::t))
                                        (let ((_e42204235_
                                               (##vector-ref _in42164223_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e42204235_
                                               (##type-id gx#module-export::t))
                                              (let ((_e42214238_
                                                     (##vector-ref
                                                      _e42204235_
                                                      '1)))
                                                (let ((_src-ctx4241_
                                                       _e42214238_))
                                                  (_K42194232_ _src-ctx4241_)))
                                              (_E42184227_)))
                                        (_E42184227_)))))
                              (if (##structure-direct-instance-of?
                                   _in4215_
                                   'gx#import-set::t)
                                  (let ((_phi4243_
                                         (##direct-structure-ref
                                          _in4215_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4245_
                                           (##direct-structure-ref
                                            _in4215_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4285_
                                             (let ((_g42464255_
                                                    (_make-import-path4150_
                                                     _src4245_)))
                                               (let ((_E42494259_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g42464255_))))
                                                 (let ((_try-match42484270_
                                                        (lambda ()
                                                          (let ((_K42504265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4263_) (cons 'in: _path4263_))))
                    (let ((_path4268_ _g42464255_))
                      (_K42504265_ _path4268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K42514275_
                                                          (lambda (_path4273_)
                                                            _path4273_)))
                                                     (if (##pair? _g42464255_)
                                                         (let ((_hd42524278_
                                                                (##car _g42464255_))
                                                               (_tl42534280_
                                                                (##cdr _g42464255_)))
                                                           (let ((_path4283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd42524278_))
                     (if (##null? _tl42534280_)
                         (_K42514275_ _path4283_)
                         (_try-match42484270_))))
                 (_try-match42484270_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4287_ (if _current-src4190_
                                                           (cons (_make-import-spec-in4151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4190_
                          _current-in4191_)
                         _r4192_)
                   _r4192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4187_
                                             _rest4214_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4243_)
                                                       _src-in4285_
                                                       (cons 'phi:
                                                             (cons _phi4243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4285_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4287_)))))))
                                  (if (##structure-instance-of?
                                       _in4215_
                                       'gx#module-context::t)
                                      (let ((_r4290_ (if _current-src4190_
                                                         (cons (_make-import-spec-in4151_
                                                                _current-src4190_
                                                                _current-in4191_)
                                                               _r4192_)
                                                         _r4192_)))
                                        (_lp4187_
                                         _rest4214_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4150_
                                                      _in4215_))
                                               _r4290_)))
                                      '#!void))))))
                   (if (##pair? _rest41934201_)
                       (let ((_hd41984295_ (##car _rest41934201_))
                             (_tl41994297_ (##cdr _rest41934201_)))
                         (let ((_in4300_ _hd41984295_))
                           (let ((_rest4302_ _tl41994297_))
                             (_K41974292_ _rest4302_ _in4300_))))
                       (_else41954211_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4187_)
                                       _L4176_
                                       '#f
                                       '()
                                       '()))
                                    _tl41584173_)))
                               (_g41534163_ _g41544166_)))))
                    (_g41524304_ _stx4145_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3955_ _state3956_)
      (let ((_context-chain3958_ (gxc#current-context-chain)))
        (let ((_make-import-path3959_
               (lambda (_ctx4143_)
                 (gxc#generate-meta-import-path
                  _ctx4143_
                  _context-chain3958_))))
          (let ((_g39613971_
                 (lambda (_g39623968_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g39623968_))))
            (let ((_g39604140_
                   (lambda (_g39623974_)
                     (if (gx#stx-pair? _g39623974_)
                         (let ((_e39643976_ (gx#stx-e _g39623974_)))
                           (let ((_hd39653979_ (##car _e39643976_))
                                 (_tl39663981_ (##cdr _e39643976_)))
                             ((lambda (_L3984_)
                                ((letrec ((_lp3995_
                                           (lambda (_rest3997_ _r3998_)
                                             (let ((_rest39994007_ _rest3997_))
                                               (let ((_E40024011_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest39994007_))))
                                                 (let ((_else40014015_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3998_)))))
                                                   (let ((_K40034128_
                                                          (lambda (_rest4018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out4019_)
                    (let ((_out40204033_ _out4019_))
                      (let ((_E40234037_
                             (lambda ()
                               (error '"No clause matching" _out40204033_))))
                        (let ((_try-match40224100_
                               (lambda ()
                                 (let ((_K40244087_
                                        (lambda (_phi4041_ _src4042_)
                                          (let ((_out4082_
                                                 (if _src4042_
                                                     (cons 'import:
                                                           (cons (let ((_g40434052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3959_ _src4042_)))
                           (let ((_E40464056_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g40434052_))))
                             (let ((_try-match40454067_
                                    (lambda ()
                                      (let ((_K40474062_
                                             (lambda (_path4060_)
                                               (cons 'in: _path4060_))))
                                        (let ((_path4065_ _g40434052_))
                                          (_K40474062_ _path4065_))))))
                               (let ((_K40484072_
                                      (lambda (_path4070_) _path4070_)))
                                 (if (##pair? _g40434052_)
                                     (let ((_hd40494075_ (##car _g40434052_))
                                           (_tl40504077_ (##cdr _g40434052_)))
                                       (let ((_path4080_ _hd40494075_))
                                         (if (##null? _tl40504077_)
                                             (_K40484072_ _path4080_)
                                             (_try-match40454067_))))
                                     (_try-match40454067_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out4084_
                                                   (if (fxzero? _phi4041_)
                                                       _out4082_
                                                       (cons 'phi:
                                                             (cons _phi4041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out4082_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3995_
                                                 _rest4018_
                                                 (cons _out4084_
                                                       _r3998_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out40204033_
                                        (##type-id gx#export-set::t))
                                       (let ((_e40254090_
                                              (##vector-ref _out40204033_ '1)))
                                         (let ((_src4093_ _e40254090_))
                                           (let ((_e40264095_
                                                  (##vector-ref
                                                   _out40204033_
                                                   '2)))
                                             (let ((_phi4098_ _e40264095_))
                                               (_K40244087_
                                                _phi4098_
                                                _src4093_)))))
                                       (_E40234037_))))))
                          (let ((_K40274107_
                                 (lambda (_name4103_ _phi4104_ _key4105_)
                                   (_lp3995_
                                    _rest4018_
                                    (cons (cons 'spec:
                                                (cons _phi4104_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key4105_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name4103_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3998_)))))
                            (if (##structure-direct-instance-of?
                                 _out40204033_
                                 (##type-id gx#module-export::t))
                                (let ((_e40284110_
                                       (##vector-ref _out40204033_ '1)))
                                  (let ((_e40294113_
                                         (##vector-ref _out40204033_ '2)))
                                    (let ((_key4116_ _e40294113_))
                                      (let ((_e40304118_
                                             (##vector-ref _out40204033_ '3)))
                                        (let ((_phi4121_ _e40304118_))
                                          (let ((_e40314123_
                                                 (##vector-ref
                                                  _out40204033_
                                                  '4)))
                                            (let ((_name4126_ _e40314123_))
                                              (_K40274107_
                                               _name4126_
                                               _phi4121_
                                               _key4116_))))))))
                                (_try-match40224100_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest39994007_)
                                                         (let ((_hd40044131_
                                                                (##car _rest39994007_))
                                                               (_tl40054133_
                                                                (##cdr _rest39994007_)))
                                                           (let ((_out4136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd40044131_))
                     (let ((_rest4138_ _tl40054133_))
                       (_K40034128_ _rest4138_ _out4136_))))
                 (_else40014015_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3995_)
                                 _L3984_
                                 '()))
                              _tl39663981_)))
                         (_g39613971_ _g39623974_)))))
              (_g39604140_ _stx3955_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3916_ _state3917_)
      (begin
        (gxc#meta-state-end-phi! _state3917_)
        (let ((_g39193929_
               (lambda (_g39203926_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g39203926_))))
          (let ((_g39183952_
                 (lambda (_g39203932_)
                   (if (gx#stx-pair? _g39203932_)
                       (let ((_e39223934_ (gx#stx-e _g39203932_)))
                         (let ((_hd39233937_ (##car _e39223934_))
                               (_tl39243939_ (##cdr _e39223934_)))
                           ((lambda (_L3942_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3942_)))
                            _tl39243939_)))
                       (_g39193929_ _g39203932_)))))
            (_g39183952_ _stx3916_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3787_ _state3788_)
      (let ((_generate13790_
             (lambda (_id3911_ _eid3912_)
               (let ((_eid3914_ (gx#stx-e _eid3912_)))
                 (begin
                   (if (interned-symbol? _eid3914_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3787_
                        _eid3914_))
                   (cons (gxc#generate-runtime-identifier _id3911_)
                         (cons _eid3914_ '())))))))
        (let ((_g37923820_
               (lambda (_g37933817_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37933817_))))
          (let ((_g37913908_
                 (lambda (_g37933823_)
                   (if (gx#stx-pair? _g37933823_)
                       (let ((_e37963825_ (gx#stx-e _g37933823_)))
                         (let ((_hd37973828_ (##car _e37963825_))
                               (_tl37983830_ (##cdr _e37963825_)))
                           (if (gx#stx-pair/null? _tl37983830_)
                               (if (fx>= (gx#stx-length _tl37983830_) '0)
                                   (let ((_g10677_
                                          (gx#syntax-split-splice
                                           _tl37983830_
                                           '0)))
                                     (begin
                                       (let ((_g10678_
                                              (values-count _g10677_)))
                                         (if (not (fx= _g10678_ 2))
                                             (error "Context expects 2 values"
                                                    _g10678_)))
                                       (let ((_target37993833_
                                              (values-ref _g10677_ 0))
                                             (_tl38013835_
                                              (values-ref _g10677_ 1)))
                                         (if (gx#stx-null? _tl38013835_)
                                             (letrec ((_loop38023838_
                                                       (lambda (_hd38003841_
                                                                _eid38063843_
                                                                _id38073845_)
                                                         (if (gx#stx-pair?
                                                              _hd38003841_)
                                                             (let ((_e38033848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd38003841_)))
                       (let ((_lp-hd38043851_ (##car _e38033848_))
                             (_lp-tl38053853_ (##cdr _e38033848_)))
                         (if (gx#stx-pair? _lp-hd38043851_)
                             (let ((_e38103856_ (gx#stx-e _lp-hd38043851_)))
                               (let ((_hd38113859_ (##car _e38103856_))
                                     (_tl38123861_ (##cdr _e38103856_)))
                                 (if (gx#stx-pair? _tl38123861_)
                                     (let ((_e38133864_
                                            (gx#stx-e _tl38123861_)))
                                       (let ((_hd38143867_ (##car _e38133864_))
                                             (_tl38153869_
                                              (##cdr _e38133864_)))
                                         (if (gx#stx-null? _tl38153869_)
                                             (_loop38023838_
                                              _lp-tl38053853_
                                              (cons _hd38143867_ _eid38063843_)
                                              (cons _hd38113859_ _id38073845_))
                                             (_g37923820_ _g37933823_))))
                                     (_g37923820_ _g37933823_))))
                             (_g37923820_ _g37933823_))))
                     (let ((_eid38083872_ (reverse _eid38063843_))
                           (_id38093874_ (reverse _id38073845_)))
                       ((lambda (_L3877_ _L3878_)
                          (cons '%#extern
                                (map _generate13790_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g38933896_
                                                        _g38943898_)
                                                 (cons _g38933896_
                                                       _g38943898_))
                                               '()
                                               _L3878_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g39003903_
                                                        _g39013905_)
                                                 (cons _g39003903_
                                                       _g39013905_))
                                               '()
                                               _L3877_)))))
                        _eid38083872_
                        _id38093874_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop38023838_
                                                _target37993833_
                                                '()
                                                '()))
                                             (_g37923820_ _g37933823_)))))
                                   (_g37923820_ _g37933823_))
                               (_g37923820_ _g37933823_))))
                       (_g37923820_ _g37933823_)))))
            (_g37913908_ _stx3787_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3582_ _state3583_)
      (let ((_generate13585_
             (lambda (_id3782_)
               (let ((_eid3784_ (gxc#generate-runtime-binding-id _id3782_))
                     (_ident3785_ (gxc#generate-runtime-identifier _id3782_)))
                 (cons '%#define-runtime
                       (cons _ident3785_ (cons _eid3784_ '())))))))
        (let ((_generate*3586_
               (lambda (_all3750_)
                 (let ((_all37513759_ _all3750_))
                   (let ((_E37543763_
                          (lambda ()
                            (error '"No clause matching" _all37513759_))))
                     (let ((_else37533767_
                            (lambda () (cons '%#begin _all3750_))))
                       (let ((_K37553772_ (lambda (_one3770_) _one3770_)))
                         (if (##pair? _all37513759_)
                             (let ((_hd37563775_ (##car _all37513759_))
                                   (_tl37573777_ (##cdr _all37513759_)))
                               (let ((_one3780_ _hd37563775_))
                                 (if (##null? _tl37573777_)
                                     (_K37553772_ _one3780_)
                                     (_else37533767_))))
                             (_else37533767_)))))))))
          (let ((_g35883605_
                 (lambda (_g35893602_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g35893602_))))
            (let ((_g35873747_
                   (lambda (_g35893608_)
                     (if (gx#stx-pair? _g35893608_)
                         (let ((_e35923610_ (gx#stx-e _g35893608_)))
                           (let ((_hd35933613_ (##car _e35923610_))
                                 (_tl35943615_ (##cdr _e35923610_)))
                             (if (gx#stx-pair? _tl35943615_)
                                 (let ((_e35953618_ (gx#stx-e _tl35943615_)))
                                   (let ((_hd35963621_ (##car _e35953618_))
                                         (_tl35973623_ (##cdr _e35953618_)))
                                     (if (gx#stx-pair? _tl35973623_)
                                         (let ((_e35983626_
                                                (gx#stx-e _tl35973623_)))
                                           (let ((_hd35993629_
                                                  (##car _e35983626_))
                                                 (_tl36003631_
                                                  (##cdr _e35983626_)))
                                             (if (gx#stx-null? _tl36003631_)
                                                 ((lambda (_L3634_ _L3635_)
                                                    ((letrec ((_lp3651_
                                                               (lambda (_rest3653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3654_)
                         (let ((_g36593675_
                                (lambda (_g36603672_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g36603672_))))
                           (let ((_g36583682_
                                  (lambda (_g36603678_)
                                    ((lambda ()
                                       (_generate*3586_ (reverse _r3654_)))))))
                             (let ((_g36573698_
                                    (lambda (_g36603685_)
                                      ((lambda (_L3687_)
                                         (if (gx#identifier? _L3687_)
                                             (_generate*3586_
                                              (foldl1 cons
                                                      (cons (_generate13585_
                                                             _L3687_)
                                                            '())
                                                      _r3654_))
                                             (_g36583682_ _g36603685_)))
                                       _g36603685_))))
                               (let ((_g36563722_
                                      (lambda (_g36603701_)
                                        (if (gx#stx-pair? _g36603701_)
                                            (let ((_e36673703_
                                                   (gx#stx-e _g36603701_)))
                                              (let ((_hd36683706_
                                                     (##car _e36673703_))
                                                    (_tl36693708_
                                                     (##cdr _e36673703_)))
                                                ((lambda (_L3711_ _L3712_)
                                                   (_lp3651_
                                                    _L3711_
                                                    (cons (_generate13585_
                                                           _L3712_)
                                                          _r3654_)))
                                                 _tl36693708_
                                                 _hd36683706_)))
                                            (_g36573698_ _g36603701_)))))
                                 (let ((_g36553744_
                                        (lambda (_g36603725_)
                                          (if (gx#stx-pair? _g36603725_)
                                              (let ((_e36623727_
                                                     (gx#stx-e _g36603725_)))
                                                (let ((_hd36633730_
                                                       (##car _e36623727_))
                                                      (_tl36643732_
                                                       (##cdr _e36623727_)))
                                                  (if (gx#stx-datum?
                                                       _hd36633730_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd36633730_)
                          '#f)
                  ((lambda (_L3735_) (_lp3651_ _L3735_ _r3654_)) _tl36643732_)
                  (_g36563722_ _g36603725_))
              (_g36563722_ _g36603725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g36563722_ _g36603725_)))))
                                   (_g36553744_ _rest3653_)))))))))
               _lp3651_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3635_
                                                     '()))
                                                  _hd35993629_
                                                  _hd35963621_)
                                                 (_g35883605_ _g35893608_))))
                                         (_g35883605_ _g35893608_))))
                                 (_g35883605_ _g35893608_))))
                         (_g35883605_ _g35893608_)))))
              (_g35873747_ _stx3582_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3479_ _state3480_)
      (let ((_g34823499_
             (lambda (_g34833496_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34833496_))))
        (let ((_g34813579_
               (lambda (_g34833502_)
                 (if (gx#stx-pair? _g34833502_)
                     (let ((_e34863504_ (gx#stx-e _g34833502_)))
                       (let ((_hd34873507_ (##car _e34863504_))
                             (_tl34883509_ (##cdr _e34863504_)))
                         (if (gx#stx-pair? _tl34883509_)
                             (let ((_e34893512_ (gx#stx-e _tl34883509_)))
                               (let ((_hd34903515_ (##car _e34893512_))
                                     (_tl34913517_ (##cdr _e34893512_)))
                                 (if (gx#stx-pair? _tl34913517_)
                                     (let ((_e34923520_
                                            (gx#stx-e _tl34913517_)))
                                       (let ((_hd34933523_ (##car _e34923520_))
                                             (_tl34943525_
                                              (##cdr _e34923520_)))
                                         (if (gx#stx-null? _tl34943525_)
                                             ((lambda (_L3528_ _L3529_)
                                                (let ((_eid3544_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3529_)))
                                                  (let ((_phi3546_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3548_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3480_
                                                            _phi3546_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g35513558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g35523555_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g35523555_))))
                    (let ((_g35503576_
                           (lambda (_g35523561_)
                             ((lambda (_L3563_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3480_
                                   _phi3546_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3563_ (cons _L3528_ '()))))))
                              _g35523561_))))
                      (_g35503576_ _eid3544_)))
                  (if _block3548_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3548_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3529_)
                                                    (cons _eid3544_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3529_)
                                  (cons _eid3544_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd34933523_
                                              _hd34903515_)
                                             (_g34823499_ _g34833502_))))
                                     (_g34823499_ _g34833502_))))
                             (_g34823499_ _g34833502_))))
                     (_g34823499_ _g34833502_)))))
          (_g34813579_ _stx3479_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3411_ _state3412_)
      (let ((_g34143431_
             (lambda (_g34153428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34153428_))))
        (let ((_g34133476_
               (lambda (_g34153434_)
                 (if (gx#stx-pair? _g34153434_)
                     (let ((_e34183436_ (gx#stx-e _g34153434_)))
                       (let ((_hd34193439_ (##car _e34183436_))
                             (_tl34203441_ (##cdr _e34183436_)))
                         (if (gx#stx-pair? _tl34203441_)
                             (let ((_e34213444_ (gx#stx-e _tl34203441_)))
                               (let ((_hd34223447_ (##car _e34213444_))
                                     (_tl34233449_ (##cdr _e34213444_)))
                                 (if (gx#stx-pair? _tl34233449_)
                                     (let ((_e34243452_
                                            (gx#stx-e _tl34233449_)))
                                       (let ((_hd34253455_ (##car _e34243452_))
                                             (_tl34263457_
                                              (##cdr _e34243452_)))
                                         (if (gx#stx-null? _tl34263457_)
                                             ((lambda (_L3460_ _L3461_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3461_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3460_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd34253455_
                                              _hd34223447_)
                                             (_g34143431_ _g34153434_))))
                                     (_g34143431_ _g34153434_))))
                             (_g34143431_ _g34153434_))))
                     (_g34143431_ _g34153434_)))))
          (_g34133476_ _stx3411_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3408_ _state3409_)
      (begin
        (gxc#meta-state-add-phi!
         _state3409_
         (gx#current-expander-phi)
         _stx3408_)
        (gxc#generate-meta-define-values% _stx3408_ _state3409_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3405_ _state3406_)
      (begin
        (gxc#meta-state-add-phi!
         _state3406_
         (gx#current-expander-phi)
         _stx3405_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3402_
      (apply make-struct-instance gxc#meta-state::t _$args3402_)))
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
    (lambda (_self3399_ _ctx3400_)
      (struct-instance-init!
       _self3399_
       (symbol->string
        (##structure-ref _ctx3400_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3396_
      (apply make-struct-instance gxc#meta-state-block::t _$args3396_)))
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
    (lambda (_state3355_ _phi3356_)
      (let ((_state33573365_ _state3355_))
        (let ((_E33593369_
               (lambda () (error '"No clause matching" _state33573365_))))
          (let ((_K33603378_
                 (lambda (_open3372_ _n3373_ _src3374_)
                   (if (table-ref _open3372_ _phi3356_ '#f)
                       '#f
                       (let ((_block-ref3376_
                              (string-append
                               _src3374_
                               '"__"
                               (number->string _n3373_))))
                         (begin
                           (##structure-set!
                            _state3355_
                            (fx+ _n3373_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3372_
                            _phi3356_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3356_
                             _n3373_
                             '()))
                           _block-ref3376_))))))
            (if (##structure-instance-of?
                 _state33573365_
                 (##type-id gxc#meta-state::t))
                (let ((_e33613381_ (##vector-ref _state33573365_ '1)))
                  (let ((_src3384_ _e33613381_))
                    (let ((_e33623386_ (##vector-ref _state33573365_ '2)))
                      (let ((_n3389_ _e33623386_))
                        (let ((_e33633391_ (##vector-ref _state33573365_ '3)))
                          (let ((_open3394_ _e33633391_))
                            (_K33603378_ _open3394_ _n3389_ _src3384_)))))))
                (_E33593369_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3349_ _phi3350_ _stx3351_)
      (let ((_block3353_
             (table-ref
              (##structure-ref _state3349_ '3 gxc#meta-state::t '#f)
              _phi3350_
              '#f)))
        (##structure-set!
         _block3353_
         (cons _stx3351_
               (##structure-ref _block3353_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3344_)
      (begin
        (##structure-set!
         _state3344_
         (hash-fold
          (lambda (_g10679_ _block3346_ _r3347_) (cons _block3346_ _r3347_))
          (##structure-ref _state3344_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3344_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3344_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3296_)
      (begin
        (gxc#meta-state-end-phi! _state3296_)
        (foldl1 (lambda (_block3298_ _r3299_)
                  (let ((_block33003309_ _block3298_))
                    (let ((_E33023313_
                           (lambda ()
                             (error '"No clause matching" _block33003309_))))
                      (let ((_K33033321_
                             (lambda (_code3316_ _n3317_ _phi3318_ _ctx3319_)
                               (if (null? _code3316_)
                                   _r3299_
                                   (cons (cons _ctx3319_
                                               (cons _phi3318_
                                                     (cons _n3317_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3316_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3299_)))))
                        (if (##structure-instance-of?
                             _block33003309_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e33043324_
                                   (##vector-ref _block33003309_ '1)))
                              (let ((_ctx3327_ _e33043324_))
                                (let ((_e33053329_
                                       (##vector-ref _block33003309_ '2)))
                                  (let ((_phi3332_ _e33053329_))
                                    (let ((_e33063334_
                                           (##vector-ref _block33003309_ '3)))
                                      (let ((_n3337_ _e33063334_))
                                        (let ((_e33073339_
                                               (##vector-ref
                                                _block33003309_
                                                '4)))
                                          (let ((_code3342_ _e33073339_))
                                            (_K33033321_
                                             _code3342_
                                             _n3337_
                                             _phi3332_
                                             _ctx3327_)))))))))
                            (_E33023313_))))))
                '()
                (##structure-ref _state3296_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3292_)
      (let ((_ht3294_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3292_ _ht3294_)
          _ht3294_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3235_ _ht3236_)
      (let ((_g32383251_
             (lambda (_g32393248_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32393248_))))
        (let ((_g32373289_
               (lambda (_g32393254_)
                 (if (gx#stx-pair? _g32393254_)
                     (let ((_e32413256_ (gx#stx-e _g32393254_)))
                       (let ((_hd32423259_ (##car _e32413256_))
                             (_tl32433261_ (##cdr _e32413256_)))
                         (if (gx#stx-pair? _tl32433261_)
                             (let ((_e32443264_ (gx#stx-e _tl32433261_)))
                               (let ((_hd32453267_ (##car _e32443264_))
                                     (_tl32463269_ (##cdr _e32443264_)))
                                 (if (gx#stx-null? _tl32463269_)
                                     ((lambda (_L3272_)
                                        (let ((_bind3284_
                                               (gx#resolve-identifier__0
                                                _L3272_)))
                                          (let ((_eid3286_
                                                 (if _bind3284_
                                                     (##structure-ref
                                                      _bind3284_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3272_))))
                                            (let ()
                                              (table-set!
                                               _ht3236_
                                               _eid3286_
                                               _eid3286_)))))
                                      _hd32453267_)
                                     (_g32383251_ _g32393254_))))
                             (_g32383251_ _g32393254_))))
                     (_g32383251_ _g32393254_)))))
          (_g32373289_ _stx3235_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3162_ _ht3163_)
      (let ((_g31653182_
             (lambda (_g31663179_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31663179_))))
        (let ((_g31643232_
               (lambda (_g31663185_)
                 (if (gx#stx-pair? _g31663185_)
                     (let ((_e31693187_ (gx#stx-e _g31663185_)))
                       (let ((_hd31703190_ (##car _e31693187_))
                             (_tl31713192_ (##cdr _e31693187_)))
                         (if (gx#stx-pair? _tl31713192_)
                             (let ((_e31723195_ (gx#stx-e _tl31713192_)))
                               (let ((_hd31733198_ (##car _e31723195_))
                                     (_tl31743200_ (##cdr _e31723195_)))
                                 (if (gx#stx-pair? _tl31743200_)
                                     (let ((_e31753203_
                                            (gx#stx-e _tl31743200_)))
                                       (let ((_hd31763206_ (##car _e31753203_))
                                             (_tl31773208_
                                              (##cdr _e31753203_)))
                                         (if (gx#stx-null? _tl31773208_)
                                             ((lambda (_L3211_ _L3212_)
                                                (let ((_bind3227_
                                                       (gx#resolve-identifier__0
                                                        _L3212_)))
                                                  (let ((_eid3229_
                                                         (if _bind3227_
                                                             (##structure-ref
                                                              _bind3227_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3212_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3163_
                                                         _eid3229_
                                                         _eid3229_)
                                                        (gxc#compile-e
                                                         _L3211_
                                                         _ht3163_))))))
                                              _hd31763206_
                                              _hd31733198_)
                                             (_g31653182_ _g31663185_))))
                                     (_g31653182_ _g31663185_))))
                             (_g31653182_ _g31663185_))))
                     (_g31653182_ _g31663185_)))))
          (_g31643232_ _stx3162_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3124_)
      (let ((_g31263136_
             (lambda (_g31273133_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31273133_))))
        (let ((_g31253159_
               (lambda (_g31273139_)
                 (if (gx#stx-pair? _g31273139_)
                     (let ((_e31293141_ (gx#stx-e _g31273139_)))
                       (let ((_hd31303144_ (##car _e31293141_))
                             (_tl31313146_ (##cdr _e31293141_)))
                         ((lambda (_L3149_) (ormap1 gxc#compile-e _L3149_))
                          _tl31313146_)))
                     (_g31263136_ _g31273139_)))))
          (_g31253159_ _stx3124_)))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3086_)
      (let ((_g30883098_
             (lambda (_g30893095_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30893095_))))
        (let ((_g30873121_
               (lambda (_g30893101_)
                 (if (gx#stx-pair? _g30893101_)
                     (let ((_e30913103_ (gx#stx-e _g30893101_)))
                       (let ((_hd30923106_ (##car _e30913103_))
                             (_tl30933108_ (##cdr _e30913103_)))
                         ((lambda (_L3111_) (gxc#compile-e (last _L3111_)))
                          _tl30933108_)))
                     (_g30883098_ _g30893101_)))))
          (_g30873121_ _stx3086_)))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3019_)
      (let ((_g30213038_
             (lambda (_g30223035_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30223035_))))
        (let ((_g30203083_
               (lambda (_g30223041_)
                 (if (gx#stx-pair? _g30223041_)
                     (let ((_e30253043_ (gx#stx-e _g30223041_)))
                       (let ((_hd30263046_ (##car _e30253043_))
                             (_tl30273048_ (##cdr _e30253043_)))
                         (if (gx#stx-pair? _tl30273048_)
                             (let ((_e30283051_ (gx#stx-e _tl30273048_)))
                               (let ((_hd30293054_ (##car _e30283051_))
                                     (_tl30303056_ (##cdr _e30283051_)))
                                 (if (gx#stx-pair? _tl30303056_)
                                     (let ((_e30313059_
                                            (gx#stx-e _tl30303056_)))
                                       (let ((_hd30323062_ (##car _e30313059_))
                                             (_tl30333064_
                                              (##cdr _e30313059_)))
                                         (if (gx#stx-null? _tl30333064_)
                                             ((lambda (_L3067_ _L3068_)
                                                (gxc#compile-e _L3067_))
                                              _hd30323062_
                                              _hd30293054_)
                                             (_g30213038_ _g30223041_))))
                                     (_g30213038_ _g30223041_))))
                             (_g30213038_ _g30223041_))))
                     (_g30213038_ _g30223041_)))))
          (_g30203083_ _stx3019_))))))
