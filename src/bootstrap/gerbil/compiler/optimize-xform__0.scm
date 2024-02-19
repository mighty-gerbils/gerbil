(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708352925)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl116824_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116824_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116824_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116824_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116824_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl116824_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl116820_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116820_ '%#declare gxc#xform-identity))
           _tbl116820_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl116816_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117070 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl116816_ __tmp117070))
           (let ((__tmp117071 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl116816_ __tmp117071))
           _tbl116816_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl116812_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116812_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116812_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116812_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116812_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116812_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl116812_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl116808_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117072 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl116808_ __tmp117072))
           (let ((__tmp117073 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl116808_ __tmp117073))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116808_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116808_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116808_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116808_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116808_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl116808_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl116804_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117074 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl116804_ __tmp117074))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116804_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116804_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl116804_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx116787_ . _args116789_)
        (let ((__tmp117076
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116789_)
                     (gxc#compile-e__0 _stx116787_)
                     (let ((_arg1116794_ (car _args116789_))
                           (_rest116796_ (cdr _args116789_)))
                       (if (null? _rest116796_)
                           (gxc#compile-e__1 _stx116787_ _arg1116794_)
                           (let ((_arg2116799_ (car _rest116796_))
                                 (_rest116801_ (cdr _rest116796_)))
                             (if (null? _rest116801_)
                                 (gxc#compile-e__2
                                  _stx116787_
                                  _arg1116794_
                                  _arg2116799_)
                                 (apply gxc#compile-e
                                        _stx116787_
                                        _arg1116794_
                                        _arg2116799_
                                        _rest116801_))))))))
              (__tmp117075 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp117076
           gxc#current-compile-methods
           __tmp117075))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl116784_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117077 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl116784_ __tmp117077))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116784_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116784_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116784_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116784_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116784_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl116784_))))
    (define gxc#apply-collect-methods
      (lambda (_stx116767_ . _args116769_)
        (let ((__tmp117079
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116769_)
                     (gxc#compile-e__0 _stx116767_)
                     (let ((_arg1116774_ (car _args116769_))
                           (_rest116776_ (cdr _args116769_)))
                       (if (null? _rest116776_)
                           (gxc#compile-e__1 _stx116767_ _arg1116774_)
                           (let ((_arg2116779_ (car _rest116776_))
                                 (_rest116781_ (cdr _rest116776_)))
                             (if (null? _rest116781_)
                                 (gxc#compile-e__2
                                  _stx116767_
                                  _arg1116774_
                                  _arg2116779_)
                                 (apply gxc#compile-e
                                        _stx116767_
                                        _arg1116774_
                                        _arg2116779_
                                        _rest116781_))))))))
              (__tmp117078 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp117079
           gxc#current-compile-methods
           __tmp117078))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl116764_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117080 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl116764_ __tmp117080))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116764_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116764_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116764_ '%#set! gxc#expression-subst-setq%))
           _tbl116764_))))
    (define gxc#apply-expression-subst
      (lambda (_stx116747_ . _args116749_)
        (let ((__tmp117082
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116749_)
                     (gxc#compile-e__0 _stx116747_)
                     (let ((_arg1116754_ (car _args116749_))
                           (_rest116756_ (cdr _args116749_)))
                       (if (null? _rest116756_)
                           (gxc#compile-e__1 _stx116747_ _arg1116754_)
                           (let ((_arg2116759_ (car _rest116756_))
                                 (_rest116761_ (cdr _rest116756_)))
                             (if (null? _rest116761_)
                                 (gxc#compile-e__2
                                  _stx116747_
                                  _arg1116754_
                                  _arg2116759_)
                                 (apply gxc#compile-e
                                        _stx116747_
                                        _arg1116754_
                                        _arg2116759_
                                        _rest116761_))))))))
              (__tmp117081 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp117082
           gxc#current-compile-methods
           __tmp117081))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl116744_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117083 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl116744_ __tmp117083))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116744_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116744_ '%#set! gxc#expression-subst*-setq%))
           _tbl116744_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx116727_ . _args116729_)
        (let ((__tmp117085
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116729_)
                     (gxc#compile-e__0 _stx116727_)
                     (let ((_arg1116734_ (car _args116729_))
                           (_rest116736_ (cdr _args116729_)))
                       (if (null? _rest116736_)
                           (gxc#compile-e__1 _stx116727_ _arg1116734_)
                           (let ((_arg2116739_ (car _rest116736_))
                                 (_rest116741_ (cdr _rest116736_)))
                             (if (null? _rest116741_)
                                 (gxc#compile-e__2
                                  _stx116727_
                                  _arg1116734_
                                  _arg2116739_)
                                 (apply gxc#compile-e
                                        _stx116727_
                                        _arg1116734_
                                        _arg2116739_
                                        _rest116741_))))))))
              (__tmp117084 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp117085
           gxc#current-compile-methods
           __tmp117084))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl116724_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117086 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl116724_ __tmp117086))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116724_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116724_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl116724_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl116720_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117087 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl116720_ __tmp117087))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116720_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116720_ '%#set! gxc#find-var-refs-setq%))
           _tbl116720_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx116703_ . _args116705_)
        (let ((__tmp117089
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116705_)
                     (gxc#compile-e__0 _stx116703_)
                     (let ((_arg1116710_ (car _args116705_))
                           (_rest116712_ (cdr _args116705_)))
                       (if (null? _rest116712_)
                           (gxc#compile-e__1 _stx116703_ _arg1116710_)
                           (let ((_arg2116715_ (car _rest116712_))
                                 (_rest116717_ (cdr _rest116712_)))
                             (if (null? _rest116717_)
                                 (gxc#compile-e__2
                                  _stx116703_
                                  _arg1116710_
                                  _arg2116715_)
                                 (apply gxc#compile-e
                                        _stx116703_
                                        _arg1116710_
                                        _arg2116715_
                                        _rest116717_))))))))
              (__tmp117088 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117089
           gxc#current-compile-methods
           __tmp117088))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl116700_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117090 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl116700_ __tmp117090))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116700_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116700_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl116700_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx116683_ . _args116685_)
        (let ((__tmp117092
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116685_)
                     (gxc#compile-e__0 _stx116683_)
                     (let ((_arg1116690_ (car _args116685_))
                           (_rest116692_ (cdr _args116685_)))
                       (if (null? _rest116692_)
                           (gxc#compile-e__1 _stx116683_ _arg1116690_)
                           (let ((_arg2116695_ (car _rest116692_))
                                 (_rest116697_ (cdr _rest116692_)))
                             (if (null? _rest116697_)
                                 (gxc#compile-e__2
                                  _stx116683_
                                  _arg1116690_
                                  _arg2116695_)
                                 (apply gxc#compile-e
                                        _stx116683_
                                        _arg1116690_
                                        _arg2116695_
                                        _rest116697_))))))))
              (__tmp117091 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117092
           gxc#current-compile-methods
           __tmp117091))))
    (define gxc#xform-identity
      (lambda (_stx116680_ . _args116681_) _stx116680_))
    (define gxc#xform-wrap-source
      (lambda (_stx116677_ _src-stx116678_)
        (let ((__tmp117093
               (let () (declare (not safe)) (gx#stx-source _src-stx116678_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx116677_ __tmp117093))))
    (define gxc#xform-apply-compile-e
      (lambda (_args116664_)
        (lambda (_stx116666_)
          (if (let () (declare (not safe)) (null? _args116664_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx116666_))
              (let ((_arg1116668_ (car _args116664_))
                    (_rest116670_ (cdr _args116664_)))
                (if (let () (declare (not safe)) (null? _rest116670_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx116666_ _arg1116668_))
                    (let ((_arg2116673_ (car _rest116670_))
                          (_rest116675_ (cdr _rest116670_)))
                      (if (let () (declare (not safe)) (null? _rest116675_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx116666_
                             _arg1116668_
                             _arg2116673_))
                          (apply gxc#compile-e
                                 _stx116666_
                                 _arg1116668_
                                 _arg2116673_
                                 _rest116675_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx116623_ . _args116624_)
        (let* ((_g116626116636_
                (lambda (_g116627116633_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116627116633_))))
               (_g116625116661_
                (lambda (_g116627116639_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116627116639_))
                      (let ((_e116631116641_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116627116639_))))
                        (let ((_hd116630116644_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116631116641_)))
                              (_tl116629116646_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116631116641_))))
                          ((lambda (_L116649_)
                             (let* ((_forms116659_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116624_))
                                          _L116649_))
                                    (__tmp117094
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms116659_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117094
                                _stx116623_)))
                           _tl116629116646_)))
                      (let ()
                        (declare (not safe))
                        (_g116626116636_ _g116627116639_))))))
          (declare (not safe))
          (_g116625116661_ _stx116623_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx116581_ . _args116582_)
        (let* ((_g116584116594_
                (lambda (_g116585116591_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116585116591_))))
               (_g116583116620_
                (lambda (_g116585116597_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116585116597_))
                      (let ((_e116589116599_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116585116597_))))
                        (let ((_hd116588116602_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116589116599_)))
                              (_tl116587116604_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116589116599_))))
                          ((lambda (_L116607_)
                             (let ((__tmp117097
                                    (lambda ()
                                      (let* ((_forms116618_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args116582_))
                                                   _L116607_))
                                             (__tmp117098
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms116618_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp117098
                                         _stx116581_))))
                                   (__tmp117095
                                    (let ((__tmp117096
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp117096 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp117097
                                gx#current-expander-phi
                                __tmp117095)))
                           _tl116587116604_)))
                      (let ()
                        (declare (not safe))
                        (_g116584116594_ _g116585116597_))))))
          (declare (not safe))
          (_g116583116620_ _stx116581_))))
    (define gxc#xform-module%
      (lambda (_stx116509_ . _args116510_)
        (let* ((_g116512116526_
                (lambda (_g116513116523_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116513116523_))))
               (_g116511116578_
                (lambda (_g116513116529_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116513116529_))
                      (let ((_e116518116531_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116513116529_))))
                        (let ((_hd116517116534_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116518116531_)))
                              (_tl116516116536_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116518116531_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116516116536_))
                              (let ((_e116521116539_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116516116536_))))
                                (let ((_hd116520116542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116521116539_)))
                                      (_tl116519116544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116521116539_))))
                                  ((lambda (_L116547_ _L116548_)
                                     (let* ((_ctx116561_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L116548_)))
                                            (_code116563_
                                             (##structure-ref
                                              _ctx116561_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code116575_
                                             (let ((__tmp117099
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args116510_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code116563_))
                                                          (let ((_arg1116566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args116510_))
                        (_rest116568_ (cdr _args116510_)))
                    (if (let () (declare (not safe)) (null? _rest116568_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code116563_ _arg1116566_))
                        (let ((_arg2116571_ (car _rest116568_))
                              (_rest116573_ (cdr _rest116568_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest116573_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code116563_
                                 _arg1116566_
                                 _arg2116571_))
                              (apply gxc#compile-e
                                     _code116563_
                                     _arg1116566_
                                     _arg2116571_
                                     _rest116573_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp117099
                                                gx#current-expander-context
                                                _ctx116561_))))
                                       (##structure-set!
                                        _ctx116561_
                                        _code116575_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp117100
                                              (let ((__tmp117101
                                                     (let ((__tmp117102
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code116575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L116548_ __tmp117102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp117101))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp117100
                                          _stx116509_))))
                                   _tl116519116544_
                                   _hd116520116542_)))
                              (let ()
                                (declare (not safe))
                                (_g116512116526_ _g116513116529_)))))
                      (let ()
                        (declare (not safe))
                        (_g116512116526_ _g116513116529_))))))
          (declare (not safe))
          (_g116511116578_ _stx116509_))))
    (define gxc#xform-define-values%
      (lambda (_stx116430_ . _args116431_)
        (let* ((_g116433116450_
                (lambda (_g116434116447_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116434116447_))))
               (_g116432116506_
                (lambda (_g116434116453_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116434116453_))
                      (let ((_e116439116455_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116434116453_))))
                        (let ((_hd116438116458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116439116455_)))
                              (_tl116437116460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116439116455_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116437116460_))
                              (let ((_e116442116463_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116437116460_))))
                                (let ((_hd116441116466_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116442116463_)))
                                      (_tl116440116468_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116442116463_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116440116468_))
                                      (let ((_e116445116471_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116440116468_))))
                                        (let ((_hd116444116474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116445116471_)))
                                              (_tl116443116476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116445116471_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116443116476_))
                                              ((lambda (_L116479_ _L116480_)
                                                 (let* ((_expr116504_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116431_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116479_))
                     (let ((_arg1116495_ (car _args116431_))
                           (_rest116497_ (cdr _args116431_)))
                       (if (let () (declare (not safe)) (null? _rest116497_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116479_ _arg1116495_))
                           (let ((_arg2116500_ (car _rest116497_))
                                 (_rest116502_ (cdr _rest116497_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116502_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116479_
                                    _arg1116495_
                                    _arg2116500_))
                                 (apply gxc#compile-e
                                        _L116479_
                                        _arg1116495_
                                        _arg2116500_
                                        _rest116502_)))))))
                (__tmp117103
                 (let ((__tmp117104
                        (let ((__tmp117105
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116504_ '()))))
                          (declare (not safe))
                          (cons _L116480_ __tmp117105))))
                   (declare (not safe))
                   (cons '%#define-values __tmp117104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117103
                                                    _stx116430_)))
                                               _hd116444116474_
                                               _hd116441116466_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116433116450_
                                                 _g116434116453_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116433116450_ _g116434116453_)))))
                              (let ()
                                (declare (not safe))
                                (_g116433116450_ _g116434116453_)))))
                      (let ()
                        (declare (not safe))
                        (_g116433116450_ _g116434116453_))))))
          (declare (not safe))
          (_g116432116506_ _stx116430_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx116350_ . _args116351_)
        (let* ((_g116353116370_
                (lambda (_g116354116367_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116354116367_))))
               (_g116352116427_
                (lambda (_g116354116373_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116354116373_))
                      (let ((_e116359116375_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116354116373_))))
                        (let ((_hd116358116378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116359116375_)))
                              (_tl116357116380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116359116375_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116357116380_))
                              (let ((_e116362116383_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116357116380_))))
                                (let ((_hd116361116386_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116362116383_)))
                                      (_tl116360116388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116362116383_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116360116388_))
                                      (let ((_e116365116391_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116360116388_))))
                                        (let ((_hd116364116394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116365116391_)))
                                              (_tl116363116396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116365116391_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116363116396_))
                                              ((lambda (_L116399_ _L116400_)
                                                 (let ((__tmp117108
                                                        (lambda ()
                                                          (let* ((_expr116425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args116351_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L116399_))
                              (let ((_arg1116416_ (car _args116351_))
                                    (_rest116418_ (cdr _args116351_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest116418_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L116399_
                                       _arg1116416_))
                                    (let ((_arg2116421_ (car _rest116418_))
                                          (_rest116423_ (cdr _rest116418_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest116423_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L116399_
                                             _arg1116416_
                                             _arg2116421_))
                                          (apply gxc#compile-e
                                                 _L116399_
                                                 _arg1116416_
                                                 _arg2116421_
                                                 _rest116423_)))))))
                         (__tmp117109
                          (let ((__tmp117110
                                 (let ((__tmp117111
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr116425_ '()))))
                                   (declare (not safe))
                                   (cons _L116400_ __tmp117111))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp117110))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp117109 _stx116350_))))
               (__tmp117106
                (let ((__tmp117107 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp117107 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp117108
                                                    gx#current-expander-phi
                                                    __tmp117106)))
                                               _hd116364116394_
                                               _hd116361116386_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116353116370_
                                                 _g116354116373_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116353116370_ _g116354116373_)))))
                              (let ()
                                (declare (not safe))
                                (_g116353116370_ _g116354116373_)))))
                      (let ()
                        (declare (not safe))
                        (_g116353116370_ _g116354116373_))))))
          (declare (not safe))
          (_g116352116427_ _stx116350_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx116271_ . _args116272_)
        (let* ((_g116274116291_
                (lambda (_g116275116288_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116275116288_))))
               (_g116273116347_
                (lambda (_g116275116294_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116275116294_))
                      (let ((_e116280116296_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116275116294_))))
                        (let ((_hd116279116299_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116280116296_)))
                              (_tl116278116301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116280116296_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116278116301_))
                              (let ((_e116283116304_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116278116301_))))
                                (let ((_hd116282116307_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116283116304_)))
                                      (_tl116281116309_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116283116304_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116281116309_))
                                      (let ((_e116286116312_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116281116309_))))
                                        (let ((_hd116285116315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116286116312_)))
                                              (_tl116284116317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116286116312_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116284116317_))
                                              ((lambda (_L116320_ _L116321_)
                                                 (let* ((_expr116345_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116272_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116320_))
                     (let ((_arg1116336_ (car _args116272_))
                           (_rest116338_ (cdr _args116272_)))
                       (if (let () (declare (not safe)) (null? _rest116338_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116320_ _arg1116336_))
                           (let ((_arg2116341_ (car _rest116338_))
                                 (_rest116343_ (cdr _rest116338_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116343_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116320_
                                    _arg1116336_
                                    _arg2116341_))
                                 (apply gxc#compile-e
                                        _L116320_
                                        _arg1116336_
                                        _arg2116341_
                                        _rest116343_)))))))
                (__tmp117112
                 (let ((__tmp117113
                        (let ((__tmp117114
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116345_ '()))))
                          (declare (not safe))
                          (cons _L116321_ __tmp117114))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp117113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117112
                                                    _stx116271_)))
                                               _hd116285116315_
                                               _hd116282116307_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116274116291_
                                                 _g116275116294_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116274116291_ _g116275116294_)))))
                              (let ()
                                (declare (not safe))
                                (_g116274116291_ _g116275116294_)))))
                      (let ()
                        (declare (not safe))
                        (_g116274116291_ _g116275116294_))))))
          (declare (not safe))
          (_g116273116347_ _stx116271_))))
    (define gxc#xform-lambda%
      (lambda (_stx116214_ . _args116215_)
        (let* ((_g116217116231_
                (lambda (_g116218116228_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116218116228_))))
               (_g116216116268_
                (lambda (_g116218116234_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116218116234_))
                      (let ((_e116223116236_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116218116234_))))
                        (let ((_hd116222116239_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116223116236_)))
                              (_tl116221116241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116223116236_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116221116241_))
                              (let ((_e116226116244_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116221116241_))))
                                (let ((_hd116225116247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116226116244_)))
                                      (_tl116224116249_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116226116244_))))
                                  ((lambda (_L116252_ _L116253_)
                                     (let* ((_body116266_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args116215_))
                                                  _L116252_))
                                            (__tmp117115
                                             (let ((__tmp117116
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L116253_
                                                            _body116266_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp117116))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp117115
                                        _stx116214_)))
                                   _tl116224116249_
                                   _hd116225116247_)))
                              (let ()
                                (declare (not safe))
                                (_g116217116231_ _g116218116234_)))))
                      (let ()
                        (declare (not safe))
                        (_g116217116231_ _g116218116234_))))))
          (declare (not safe))
          (_g116216116268_ _stx116214_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx116127_ . _args116128_)
        (letrec ((_clause-e116130_
                  (lambda (_clause116171_)
                    (let* ((_g116173116184_
                            (lambda (_g116174116181_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g116174116181_))))
                           (_g116172116211_
                            (lambda (_g116174116187_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g116174116187_))
                                  (let ((_e116179116189_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g116174116187_))))
                                    (let ((_hd116178116192_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116179116189_)))
                                          (_tl116177116194_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116179116189_))))
                                      ((lambda (_L116197_ _L116198_)
                                         (let ((_body116209_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args116128_))
                                                     _L116197_)))
                                           (declare (not safe))
                                           (cons _L116198_ _body116209_)))
                                       _tl116177116194_
                                       _hd116178116192_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116173116184_ _g116174116187_))))))
                      (declare (not safe))
                      (_g116172116211_ _clause116171_)))))
          (let* ((_g116132116142_
                  (lambda (_g116133116139_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g116133116139_))))
                 (_g116131116168_
                  (lambda (_g116133116145_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g116133116145_))
                        (let ((_e116137116147_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g116133116145_))))
                          (let ((_hd116136116150_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116137116147_)))
                                (_tl116135116152_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116137116147_))))
                            ((lambda (_L116155_)
                               (let* ((_clauses116166_
                                       (map _clause-e116130_ _L116155_))
                                      (__tmp117117
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses116166_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp117117
                                  _stx116127_)))
                             _tl116135116152_)))
                        (let ()
                          (declare (not safe))
                          (_g116132116142_ _g116133116145_))))))
            (declare (not safe))
            (_g116131116168_ _stx116127_)))))
    (define gxc#xform-let-values%
      (lambda (_stx115921_ . _args115922_)
        (let* ((_g115924115957_
                (lambda (_g115925115954_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115925115954_))))
               (_g115923116124_
                (lambda (_g115925115960_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115925115960_))
                      (let ((_e115932115962_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115925115960_))))
                        (let ((_hd115931115965_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115932115962_)))
                              (_tl115930115967_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115932115962_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115930115967_))
                              (let ((_e115935115970_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115930115967_))))
                                (let ((_hd115934115973_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115935115970_)))
                                      (_tl115933115975_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115935115970_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115934115973_))
                                      (let ((_g117118_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115934115973_
                                                '0))))
                                        (begin
                                          (let ((_g117119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117118_)
                                                       (##vector-length
                                                        _g117118_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117119_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117119_)))
                                          (let ((_target115936115978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117118_ 0)))
                                                (_tl115938115980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117118_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115938115980_))
                                                (letrec ((_loop115939115983_
                                                          (lambda (_hd115937115986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115943115988_
                           _hd115944115990_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115937115986_))
                        (let ((_e115940115993_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115937115986_))))
                          (let ((_lp-hd115941115996_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115940115993_)))
                                (_lp-tl115942115998_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115940115993_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115941115996_))
                                (let ((_e115949116001_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115941115996_))))
                                  (let ((_hd115948116004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115949116001_)))
                                        (_tl115947116006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115949116001_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115947116006_))
                                        (let ((_e115952116009_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115947116006_))))
                                          (let ((_hd115951116012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115952116009_)))
                                                (_tl115950116014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115952116009_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115950116014_))
                                                (let ((__tmp117132
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115951116012_
                                                               _expr115943115988_)))
                                                      (__tmp117131
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115948116004_
                                                               _hd115944115990_))))
                                                  (declare (not safe))
                                                  (_loop115939115983_
                                                   _lp-tl115942115998_
                                                   __tmp117132
                                                   __tmp117131))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115924115957_
                                                   _g115925115960_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115924115957_ _g115925115960_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115924115957_ _g115925115960_)))))
                        (let ((_expr115945116017_ (reverse _expr115943115988_))
                              (_hd115946116019_ (reverse _hd115944115990_)))
                          ((lambda (_L116022_ _L116023_ _L116024_ _L116025_)
                             (let* ((_g116044116060_
                                     (lambda (_g116045116057_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g116045116057_))))
                                    (_g116043116114_
                                     (lambda (_g116045116063_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g116045116063_))
                                           (let ((_g117120_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g116045116063_
                                                     '0))))
                                             (begin
                                               (let ((_g117121_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g117120_)
                                                            (##vector-length
                                                             _g117120_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g117121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g117121_)))
                                               (let ((_target116047116065_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117120_
                                                         0)))
                                                     (_tl116049116067_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117120_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116049116067_))
                                                     (letrec ((_loop116050116070_
                                                               (lambda (_hd116048116073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr116054116075_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd116048116073_))
                             (let ((_e116051116078_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd116048116073_))))
                               (let ((_lp-hd116052116081_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116051116078_)))
                                     (_lp-tl116053116083_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116051116078_))))
                                 (let ((__tmp117128
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd116052116081_
                                                _expr116054116075_))))
                                   (declare (not safe))
                                   (_loop116050116070_
                                    _lp-tl116053116083_
                                    __tmp117128))))
                             (let ((_expr116055116086_
                                    (reverse _expr116054116075_)))
                               ((lambda (_L116089_)
                                  (let ()
                                    (let* ((_body116102_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args115922_))
                                                 _L116022_))
                                           (__tmp117122
                                            (let ((__tmp117123
                                                   (let ((__tmp117124
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L116089_
                                                               _L116024_))
                                                            (let ((__tmp117125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g116103116107_
                                    _g116104116109_
                                    _g116105116111_)
                             (let ((__tmp117126
                                    (let ((__tmp117127
                                           (let ()
                                             (declare (not safe))
                                             (cons _g116103116107_ '()))))
                                      (declare (not safe))
                                      (cons _g116104116109_ __tmp117127))))
                               (declare (not safe))
                               (cons __tmp117126 _g116105116111_)))))
                      (declare (not safe))
                      (foldr2 __tmp117125 '() _L116089_ _L116024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp117124
                                                           _body116102_))))
                                              (declare (not safe))
                                              (cons _L116025_ __tmp117123))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp117122
                                       _stx115921_))))
                                _expr116055116086_))))))
               (let ()
                 (declare (not safe))
                 (_loop116050116070_ _target116047116065_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g116044116060_
                                                        _g116045116063_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g116044116060_
                                              _g116045116063_)))))
                                    (__tmp117129
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args115922_))
                                          (let ((__tmp117130
                                                 (lambda (_g116116116119_
                                                          _g116117116121_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g116116116119_
                                                           _g116117116121_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp117130
                                                    '()
                                                    _L116023_)))))
                               (declare (not safe))
                               (_g116043116114_ __tmp117129)))
                           _tl115933115975_
                           _expr115945116017_
                           _hd115946116019_
                           _hd115931115965_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115939115983_
                                                     _target115936115978_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115924115957_
                                                   _g115925115960_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115924115957_ _g115925115960_)))))
                              (let ()
                                (declare (not safe))
                                (_g115924115957_ _g115925115960_)))))
                      (let ()
                        (declare (not safe))
                        (_g115924115957_ _g115925115960_))))))
          (declare (not safe))
          (_g115923116124_ _stx115921_))))
    (define gxc#xform-operands
      (lambda (_stx115877_ . _args115878_)
        (let* ((_g115880115891_
                (lambda (_g115881115888_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115881115888_))))
               (_g115879115918_
                (lambda (_g115881115894_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115881115894_))
                      (let ((_e115886115896_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115881115894_))))
                        (let ((_hd115885115899_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115886115896_)))
                              (_tl115884115901_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115886115896_))))
                          ((lambda (_L115904_ _L115905_)
                             (let* ((_rands115916_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args115878_))
                                          _L115904_))
                                    (__tmp117133
                                     (let ()
                                       (declare (not safe))
                                       (cons _L115905_ _rands115916_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117133
                                _stx115877_)))
                           _tl115884115901_
                           _hd115885115899_)))
                      (let ()
                        (declare (not safe))
                        (_g115880115891_ _g115881115894_))))))
          (declare (not safe))
          (_g115879115918_ _stx115877_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx115798_ . _args115799_)
        (let* ((_g115801115818_
                (lambda (_g115802115815_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115802115815_))))
               (_g115800115874_
                (lambda (_g115802115821_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115802115821_))
                      (let ((_e115807115823_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115802115821_))))
                        (let ((_hd115806115826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115807115823_)))
                              (_tl115805115828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115807115823_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115805115828_))
                              (let ((_e115810115831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115805115828_))))
                                (let ((_hd115809115834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115810115831_)))
                                      (_tl115808115836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115810115831_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115808115836_))
                                      (let ((_e115813115839_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115808115836_))))
                                        (let ((_hd115812115842_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115813115839_)))
                                              (_tl115811115844_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115813115839_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115811115844_))
                                              ((lambda (_L115847_ _L115848_)
                                                 (let* ((_expr115872_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args115799_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L115847_))
                     (let ((_arg1115863_ (car _args115799_))
                           (_rest115865_ (cdr _args115799_)))
                       (if (let () (declare (not safe)) (null? _rest115865_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L115847_ _arg1115863_))
                           (let ((_arg2115868_ (car _rest115865_))
                                 (_rest115870_ (cdr _rest115865_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest115870_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L115847_
                                    _arg1115863_
                                    _arg2115868_))
                                 (apply gxc#compile-e
                                        _L115847_
                                        _arg1115863_
                                        _arg2115868_
                                        _rest115870_)))))))
                (__tmp117134
                 (let ((__tmp117135
                        (let ((__tmp117136
                               (let ()
                                 (declare (not safe))
                                 (cons _expr115872_ '()))))
                          (declare (not safe))
                          (cons _L115848_ __tmp117136))))
                   (declare (not safe))
                   (cons '%#set! __tmp117135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117134
                                                    _stx115798_)))
                                               _hd115812115842_
                                               _hd115809115834_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115801115818_
                                                 _g115802115821_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115801115818_ _g115802115821_)))))
                              (let ()
                                (declare (not safe))
                                (_g115801115818_ _g115802115821_)))))
                      (let ()
                        (declare (not safe))
                        (_g115801115818_ _g115802115821_))))))
          (declare (not safe))
          (_g115800115874_ _stx115798_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx115729_)
        (let* ((_g115731115748_
                (lambda (_g115732115745_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115732115745_))))
               (_g115730115795_
                (lambda (_g115732115751_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115732115751_))
                      (let ((_e115737115753_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115732115751_))))
                        (let ((_hd115736115756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115737115753_)))
                              (_tl115735115758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115737115753_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115735115758_))
                              (let ((_e115740115761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115735115758_))))
                                (let ((_hd115739115764_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115740115761_)))
                                      (_tl115738115766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115740115761_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115738115766_))
                                      (let ((_e115743115769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115738115766_))))
                                        (let ((_hd115742115772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115743115769_)))
                                              (_tl115741115774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115743115769_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115741115774_))
                                              ((lambda (_L115777_ _L115778_)
                                                 (let ((_sym115793_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115778_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym115793_))
                                                   (let ((__tmp117137
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp117137
                                                      _sym115793_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L115777_))))
                                               _hd115742115772_
                                               _hd115739115764_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115731115748_
                                                 _g115732115751_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115731115748_ _g115732115751_)))))
                              (let ()
                                (declare (not safe))
                                (_g115731115748_ _g115732115751_)))))
                      (let ()
                        (declare (not safe))
                        (_g115731115748_ _g115732115751_))))))
          (declare (not safe))
          (_g115730115795_ _stx115729_))))
    (define gxc#collect-methods-call%
      (lambda (_stx115283_)
        (let* ((___stx116827116828_ _stx115283_)
               (_g115287115389_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx116827116828_)))))
          (let ((___kont116829116830_
                 (lambda (_L115679_ _L115680_ _L115681_ _L115682_ _L115683_)
                   (let ((__tmp117138
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115680_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117138))))
                (___kont116831116832_
                 (lambda (_L115505_ _L115506_ _L115507_ _L115508_)
                   (let ((__tmp117139
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115505_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117139))))
                (___kont116833116834_ (lambda () '#!void)))
            (let ((___match116962116963_
                   (lambda (_e115296115551_
                            _hd115295115554_
                            _tl115294115556_
                            _e115299115559_
                            _hd115298115562_
                            _tl115297115564_
                            _e115302115567_
                            _hd115301115570_
                            _tl115300115572_
                            _e115305115575_
                            _hd115304115578_
                            _tl115303115580_
                            _e115308115583_
                            _hd115307115586_
                            _tl115306115588_
                            _e115311115591_
                            _hd115310115594_
                            _tl115309115596_
                            _e115314115599_
                            _hd115313115602_
                            _tl115312115604_
                            _e115317115607_
                            _hd115316115610_
                            _tl115315115612_
                            _e115320115615_
                            _hd115319115618_
                            _tl115318115620_
                            _e115323115623_
                            _hd115322115626_
                            _tl115321115628_
                            _e115326115631_
                            _hd115325115634_
                            _tl115324115636_
                            _e115329115639_
                            _hd115328115642_
                            _tl115327115644_
                            _e115332115647_
                            _hd115331115650_
                            _tl115330115652_
                            _e115335115655_
                            _hd115334115658_
                            _tl115333115660_
                            _e115338115663_
                            _hd115337115666_
                            _tl115336115668_
                            _e115341115671_
                            _hd115340115674_
                            _tl115339115676_)
                     (let ((_L115679_ _hd115340115674_)
                           (_L115680_ _hd115331115650_)
                           (_L115681_ _hd115322115626_)
                           (_L115682_ _hd115313115602_)
                           (_L115683_ _hd115304115578_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L115683_
                              'bind-method!))
                           (___kont116829116830_
                            _L115679_
                            _L115680_
                            _L115681_
                            _L115682_
                            _L115683_)
                           (___kont116833116834_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx116827116828_))
                  (let ((_e115296115551_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx116827116828_))))
                    (let ((_tl115294115556_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115296115551_)))
                          (_hd115295115554_
                           (let ()
                             (declare (not safe))
                             (##car _e115296115551_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115294115556_))
                          (let ((_e115299115559_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115294115556_))))
                            (let ((_tl115297115564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115299115559_)))
                                  (_hd115298115562_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115299115559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115298115562_))
                                  (let ((_e115302115567_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115298115562_))))
                                    (let ((_tl115300115572_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115302115567_)))
                                          (_hd115301115570_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115302115567_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115301115570_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115301115570_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115300115572_))
                                                  (let ((_e115305115575_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115300115572_))))
                                                    (let ((_tl115303115580_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115305115575_)))
                                                          (_hd115304115578_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115305115575_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115303115580_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115297115564_))
                      (let ((_e115308115583_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115297115564_))))
                        (let ((_tl115306115588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115308115583_)))
                              (_hd115307115586_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115308115583_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115307115586_))
                              (let ((_e115311115591_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115307115586_))))
                                (let ((_tl115309115596_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115311115591_)))
                                      (_hd115310115594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115311115591_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115310115594_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115310115594_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115309115596_))
                                              (let ((_e115314115599_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115309115596_))))
                                                (let ((_tl115312115604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115314115599_)))
                                                      (_hd115313115602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115314115599_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115312115604_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115306115588_))
                                                          (let ((_e115317115607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115306115588_))))
                    (let ((_tl115315115612_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115317115607_)))
                          (_hd115316115610_
                           (let ()
                             (declare (not safe))
                             (##car _e115317115607_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115316115610_))
                          (let ((_e115320115615_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115316115610_))))
                            (let ((_tl115318115620_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115320115615_)))
                                  (_hd115319115618_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115320115615_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115319115618_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115319115618_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115318115620_))
                                          (let ((_e115323115623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115318115620_))))
                                            (let ((_tl115321115628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115323115623_)))
                                                  (_hd115322115626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115323115623_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115321115628_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115315115612_))
                                                      (let ((_e115326115631_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115315115612_))))
                (let ((_tl115324115636_
                       (let () (declare (not safe)) (##cdr _e115326115631_)))
                      (_hd115325115634_
                       (let () (declare (not safe)) (##car _e115326115631_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115325115634_))
                      (let ((_e115329115639_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115325115634_))))
                        (let ((_tl115327115644_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115329115639_)))
                              (_hd115328115642_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115329115639_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115328115642_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115328115642_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115327115644_))
                                      (let ((_e115332115647_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115327115644_))))
                                        (let ((_tl115330115652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115332115647_)))
                                              (_hd115331115650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115332115647_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115330115652_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115324115636_))
                                                  (let ((_e115335115655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115324115636_))))
                                                    (let ((_tl115333115660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115335115655_)))
                                                          (_hd115334115658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115335115655_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115334115658_))
                                                          (let ((_e115338115663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115334115658_))))
                    (let ((_tl115336115668_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115338115663_)))
                          (_hd115337115666_
                           (let ()
                             (declare (not safe))
                             (##car _e115338115663_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115337115666_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115337115666_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115336115668_))
                                  (let ((_e115341115671_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115336115668_))))
                                    (let ((_tl115339115676_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115341115671_)))
                                          (_hd115340115674_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115341115671_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115339115676_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115333115660_))
                                              (___match116962116963_
                                               _e115296115551_
                                               _hd115295115554_
                                               _tl115294115556_
                                               _e115299115559_
                                               _hd115298115562_
                                               _tl115297115564_
                                               _e115302115567_
                                               _hd115301115570_
                                               _tl115300115572_
                                               _e115305115575_
                                               _hd115304115578_
                                               _tl115303115580_
                                               _e115308115583_
                                               _hd115307115586_
                                               _tl115306115588_
                                               _e115311115591_
                                               _hd115310115594_
                                               _tl115309115596_
                                               _e115314115599_
                                               _hd115313115602_
                                               _tl115312115604_
                                               _e115317115607_
                                               _hd115316115610_
                                               _tl115315115612_
                                               _e115320115615_
                                               _hd115319115618_
                                               _tl115318115620_
                                               _e115323115623_
                                               _hd115322115626_
                                               _tl115321115628_
                                               _e115326115631_
                                               _hd115325115634_
                                               _tl115324115636_
                                               _e115329115639_
                                               _hd115328115642_
                                               _tl115327115644_
                                               _e115332115647_
                                               _hd115331115650_
                                               _tl115330115652_
                                               _e115335115655_
                                               _hd115334115658_
                                               _tl115333115660_
                                               _e115338115663_
                                               _hd115337115666_
                                               _tl115336115668_
                                               _e115341115671_
                                               _hd115340115674_
                                               _tl115339115676_)
                                              (___kont116833116834_))
                                          (___kont116833116834_))))
                                  (___kont116833116834_))
                              (___kont116833116834_))
                          (___kont116833116834_))))
                  (___kont116833116834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115324115636_))
                                                      (if (let ((__tmp117140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp117140 'bind-method!))
                  (let ((_L115505_ _hd115331115650_)
                        (_L115506_ _hd115322115626_)
                        (_L115507_ _hd115313115602_)
                        (_L115508_ _hd115304115578_))
                    (___kont116831116832_
                     _L115505_
                     _L115506_
                     _L115507_
                     _L115508_))
                  (___kont116833116834_))
              (___kont116833116834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116833116834_))))
                                      (___kont116833116834_))
                                  (___kont116833116834_))
                              (___kont116833116834_))))
                      (___kont116833116834_))))
              (___kont116833116834_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116833116834_))))
                                          (___kont116833116834_))
                                      (___kont116833116834_))
                                  (___kont116833116834_))))
                          (___kont116833116834_))))
                  (___kont116833116834_))
              (___kont116833116834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116833116834_))
                                          (___kont116833116834_))
                                      (___kont116833116834_))))
                              (___kont116833116834_))))
                      (___kont116833116834_))
                  (___kont116833116834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116833116834_))
                                              (___kont116833116834_))
                                          (___kont116833116834_))))
                                  (___kont116833116834_))))
                          (___kont116833116834_))))
                  (___kont116833116834_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx115230_ _id115231_ _new-id115232_)
        (let* ((_g115234115247_
                (lambda (_g115235115244_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115235115244_))))
               (_g115233115280_
                (lambda (_g115235115250_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115235115250_))
                      (let ((_e115239115252_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115235115250_))))
                        (let ((_hd115238115255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115239115252_)))
                              (_tl115237115257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115239115252_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115237115257_))
                              (let ((_e115242115260_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115237115257_))))
                                (let ((_hd115241115263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115242115260_)))
                                      (_tl115240115265_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115242115260_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115240115265_))
                                      ((lambda (_L115268_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115268_
                                                _id115231_))
                                             (let ((__tmp117141
                                                    (let ((__tmp117142
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id115232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp117142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp117141
                                                _stx115230_))
                                             _stx115230_))
                                       _hd115241115263_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115234115247_ _g115235115250_)))))
                              (let ()
                                (declare (not safe))
                                (_g115234115247_ _g115235115250_)))))
                      (let ()
                        (declare (not safe))
                        (_g115234115247_ _g115235115250_))))))
          (declare (not safe))
          (_g115233115280_ _stx115230_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx115171_ _subst115172_)
        (let* ((_g115174115187_
                (lambda (_g115175115184_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115175115184_))))
               (_g115173115227_
                (lambda (_g115175115190_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115175115190_))
                      (let ((_e115179115192_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115175115190_))))
                        (let ((_hd115178115195_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115179115192_)))
                              (_tl115177115197_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115179115192_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115177115197_))
                              (let ((_e115182115200_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115177115197_))))
                                (let ((_hd115181115203_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115182115200_)))
                                      (_tl115180115205_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115182115200_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115180115205_))
                                      ((lambda (_L115208_)
                                         (let ((_$e115222_
                                                (let ((__tmp117143
                                                       (lambda (_sub115220_)
                                                         (let ((__tmp117144
                                                                (car _sub115220_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115208_
                                                            __tmp117144)))))
                                                  (declare (not safe))
                                                  (find __tmp117143
                                                        _subst115172_))))
                                           (if _$e115222_
                                               ((lambda (_sub115225_)
                                                  (let ((__tmp117145
                                                         (let ((__tmp117146
                                                                (let ((__tmp117147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115225_)))
                          (declare (not safe))
                          (cons __tmp117147 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp117146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp117145
                                                     _stx115171_)))
                                                _$e115222_)
                                               _stx115171_)))
                                       _hd115181115203_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115174115187_ _g115175115190_)))))
                              (let ()
                                (declare (not safe))
                                (_g115174115187_ _g115175115190_)))))
                      (let ()
                        (declare (not safe))
                        (_g115174115187_ _g115175115190_))))))
          (declare (not safe))
          (_g115173115227_ _stx115171_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx115099_ _id115100_ _new-id115101_)
        (let* ((_g115103115120_
                (lambda (_g115104115117_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115104115117_))))
               (_g115102115168_
                (lambda (_g115104115123_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115104115123_))
                      (let ((_e115109115125_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115104115123_))))
                        (let ((_hd115108115128_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115109115125_)))
                              (_tl115107115130_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115109115125_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115107115130_))
                              (let ((_e115112115133_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115107115130_))))
                                (let ((_hd115111115136_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115112115133_)))
                                      (_tl115110115138_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115112115133_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115110115138_))
                                      (let ((_e115115115141_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115110115138_))))
                                        (let ((_hd115114115144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115115115141_)))
                                              (_tl115113115146_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115115115141_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115113115146_))
                                              ((lambda (_L115149_ _L115150_)
                                                 (let ((_new-expr115165_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L115149_
                                                           _id115100_
                                                           _new-id115101_)))
                                                       (_new-xid115166_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L115150_
                                                               _id115100_))
                                                            _new-id115101_
                                                            _L115150_)))
                                                   (let ((__tmp117148
                                                          (let ((__tmp117149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117150
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115165_ '()))))
                           (declare (not safe))
                           (cons _new-xid115166_ __tmp117150))))
                    (declare (not safe))
                    (cons '%#set! __tmp117149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117148
                                                      _stx115099_))))
                                               _hd115114115144_
                                               _hd115111115136_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115103115120_
                                                 _g115104115123_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115103115120_ _g115104115123_)))))
                              (let ()
                                (declare (not safe))
                                (_g115103115120_ _g115104115123_)))))
                      (let ()
                        (declare (not safe))
                        (_g115103115120_ _g115104115123_))))))
          (declare (not safe))
          (_g115102115168_ _stx115099_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx115023_ _subst115024_)
        (let* ((_g115026115043_
                (lambda (_g115027115040_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115027115040_))))
               (_g115025115096_
                (lambda (_g115027115046_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115027115046_))
                      (let ((_e115032115048_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115027115046_))))
                        (let ((_hd115031115051_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115032115048_)))
                              (_tl115030115053_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115032115048_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115030115053_))
                              (let ((_e115035115056_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115030115053_))))
                                (let ((_hd115034115059_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115035115056_)))
                                      (_tl115033115061_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115035115056_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115033115061_))
                                      (let ((_e115038115064_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115033115061_))))
                                        (let ((_hd115037115067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115038115064_)))
                                              (_tl115036115069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115038115064_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115036115069_))
                                              ((lambda (_L115072_ _L115073_)
                                                 (let ((_new-expr115093_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L115072_
                                                           _subst115024_)))
                                                       (_new-xid115094_
                                                        (let ((_$e115090_
                                                               (let ((__tmp117151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115088_)
                                (let ((__tmp117152 (car _sub115088_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115073_
                                   __tmp117152)))))
                         (declare (not safe))
                         (find __tmp117151 _subst115024_))))
                  (if _$e115090_ (cdr _$e115090_) _L115073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp117153
                                                          (let ((__tmp117154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117155
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115093_ '()))))
                           (declare (not safe))
                           (cons _new-xid115094_ __tmp117155))))
                    (declare (not safe))
                    (cons '%#set! __tmp117154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117153
                                                      _stx115023_))))
                                               _hd115037115067_
                                               _hd115034115059_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115026115043_
                                                 _g115027115046_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115026115043_ _g115027115046_)))))
                              (let ()
                                (declare (not safe))
                                (_g115026115043_ _g115027115046_)))))
                      (let ()
                        (declare (not safe))
                        (_g115026115043_ _g115027115046_))))))
          (declare (not safe))
          (_g115025115096_ _stx115023_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx114969_ _ht114970_)
        (let* ((_g114972114985_
                (lambda (_g114973114982_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114973114982_))))
               (_g114971115020_
                (lambda (_g114973114988_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114973114988_))
                      (let ((_e114977114990_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114973114988_))))
                        (let ((_hd114976114993_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114977114990_)))
                              (_tl114975114995_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114977114990_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114975114995_))
                              (let ((_e114980114998_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114975114995_))))
                                (let ((_hd114979115001_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114980114998_)))
                                      (_tl114978115003_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114980114998_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114978115003_))
                                      ((lambda (_L115006_)
                                         (let ((_eid115018_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L115006_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht114970_
                                            _eid115018_
                                            1+
                                            '0)))
                                       _hd114979115001_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114972114985_ _g114973114988_)))))
                              (let ()
                                (declare (not safe))
                                (_g114972114985_ _g114973114988_)))))
                      (let ()
                        (declare (not safe))
                        (_g114972114985_ _g114973114988_))))))
          (declare (not safe))
          (_g114971115020_ _stx114969_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx114899_ _ht114900_)
        (let* ((_g114902114919_
                (lambda (_g114903114916_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114903114916_))))
               (_g114901114966_
                (lambda (_g114903114922_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114903114922_))
                      (let ((_e114908114924_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114903114922_))))
                        (let ((_hd114907114927_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114908114924_)))
                              (_tl114906114929_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114908114924_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114906114929_))
                              (let ((_e114911114932_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114906114929_))))
                                (let ((_hd114910114935_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114911114932_)))
                                      (_tl114909114937_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114911114932_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114909114937_))
                                      (let ((_e114914114940_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114909114937_))))
                                        (let ((_hd114913114943_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114914114940_)))
                                              (_tl114912114945_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114914114940_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114912114945_))
                                              ((lambda (_L114948_ _L114949_)
                                                 (let ((_eid114964_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L114949_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht114900_
                                                      _eid114964_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L114948_
                                                      _ht114900_))))
                                               _hd114913114943_
                                               _hd114910114935_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114902114919_
                                                 _g114903114922_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114902114919_ _g114903114922_)))))
                              (let ()
                                (declare (not safe))
                                (_g114902114919_ _g114903114922_)))))
                      (let ()
                        (declare (not safe))
                        (_g114902114919_ _g114903114922_))))))
          (declare (not safe))
          (_g114901114966_ _stx114899_))))
    (define gxc#find-body%
      (lambda (_stx114812_ _arg114813_)
        (let* ((_g114815114834_
                (lambda (_g114816114831_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114816114831_))))
               (_g114814114896_
                (lambda (_g114816114837_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114816114837_))
                      (let ((_e114820114839_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114816114837_))))
                        (let ((_hd114819114842_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114820114839_)))
                              (_tl114818114844_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114820114839_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114818114844_))
                              (let ((_g117156_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114818114844_
                                        '0))))
                                (begin
                                  (let ((_g117157_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117156_)
                                               (##vector-length _g117156_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117157_ 2)))
                                        (error "Context expects 2 values"
                                               _g117157_)))
                                  (let ((_target114821114847_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117156_ 0)))
                                        (_tl114823114849_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117156_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114823114849_))
                                        (letrec ((_loop114824114852_
                                                  (lambda (_hd114822114855_
                                                           _expr114828114857_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114822114855_))
                                                        (let ((_e114825114860_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114822114855_))))
                  (let ((_lp-hd114826114863_
                         (let () (declare (not safe)) (##car _e114825114860_)))
                        (_lp-tl114827114865_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114825114860_))))
                    (let ((__tmp117161
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd114826114863_ _expr114828114857_))))
                      (declare (not safe))
                      (_loop114824114852_ _lp-tl114827114865_ __tmp117161))))
                (let ((_expr114829114868_ (reverse _expr114828114857_)))
                  ((lambda (_L114871_)
                     (let ((__tmp117160
                            (lambda (_g114884114886_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g114884114886_
                                 _arg114813_))))
                           (__tmp117158
                            (let ((__tmp117159
                                   (lambda (_g114888114891_ _g114889114893_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g114888114891_
                                             _g114889114893_)))))
                              (declare (not safe))
                              (foldr1 __tmp117159 '() _L114871_))))
                       (declare (not safe))
                       (ormap1 __tmp117160 __tmp117158)))
                   _expr114829114868_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114824114852_
                                             _target114821114847_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114815114834_
                                           _g114816114837_))))))
                              (let ()
                                (declare (not safe))
                                (_g114815114834_ _g114816114837_)))))
                      (let ()
                        (declare (not safe))
                        (_g114815114834_ _g114816114837_))))))
          (declare (not safe))
          (_g114814114896_ _stx114812_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx114744_ _arg114745_)
        (let* ((_g114747114764_
                (lambda (_g114748114761_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114748114761_))))
               (_g114746114809_
                (lambda (_g114748114767_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114748114767_))
                      (let ((_e114753114769_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114748114767_))))
                        (let ((_hd114752114772_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114753114769_)))
                              (_tl114751114774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114753114769_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114751114774_))
                              (let ((_e114756114777_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114751114774_))))
                                (let ((_hd114755114780_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114756114777_)))
                                      (_tl114754114782_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114756114777_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114754114782_))
                                      (let ((_e114759114785_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114754114782_))))
                                        (let ((_hd114758114788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114759114785_)))
                                              (_tl114757114790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114759114785_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114757114790_))
                                              ((lambda (_L114793_ _L114794_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114793_
                                                    _arg114745_)))
                                               _hd114758114788_
                                               _hd114755114780_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114747114764_
                                                 _g114748114767_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114747114764_ _g114748114767_)))))
                              (let ()
                                (declare (not safe))
                                (_g114747114764_ _g114748114767_)))))
                      (let ()
                        (declare (not safe))
                        (_g114747114764_ _g114748114767_))))))
          (declare (not safe))
          (_g114746114809_ _stx114744_))))
    (define gxc#find-lambda%
      (lambda (_stx114676_ _arg114677_)
        (let* ((_g114679114696_
                (lambda (_g114680114693_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114680114693_))))
               (_g114678114741_
                (lambda (_g114680114699_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114680114699_))
                      (let ((_e114685114701_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114680114699_))))
                        (let ((_hd114684114704_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114685114701_)))
                              (_tl114683114706_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114685114701_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114683114706_))
                              (let ((_e114688114709_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114683114706_))))
                                (let ((_hd114687114712_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114688114709_)))
                                      (_tl114686114714_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114688114709_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114686114714_))
                                      (let ((_e114691114717_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114686114714_))))
                                        (let ((_hd114690114720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114691114717_)))
                                              (_tl114689114722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114691114717_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114689114722_))
                                              ((lambda (_L114725_ _L114726_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114725_
                                                    _arg114677_)))
                                               _hd114690114720_
                                               _hd114687114712_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114679114696_
                                                 _g114680114699_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114679114696_ _g114680114699_)))))
                              (let ()
                                (declare (not safe))
                                (_g114679114696_ _g114680114699_)))))
                      (let ()
                        (declare (not safe))
                        (_g114679114696_ _g114680114699_))))))
          (declare (not safe))
          (_g114678114741_ _stx114676_))))
    (define gxc#find-case-lambda%
      (lambda (_stx114558_ _arg114559_)
        (let* ((_g114561114589_
                (lambda (_g114562114586_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114562114586_))))
               (_g114560114673_
                (lambda (_g114562114592_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114562114592_))
                      (let ((_e114567114594_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114562114592_))))
                        (let ((_hd114566114597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114567114594_)))
                              (_tl114565114599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114567114594_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114565114599_))
                              (let ((_g117162_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114565114599_
                                        '0))))
                                (begin
                                  (let ((_g117163_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117162_)
                                               (##vector-length _g117162_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117163_ 2)))
                                        (error "Context expects 2 values"
                                               _g117163_)))
                                  (let ((_target114568114602_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117162_ 0)))
                                        (_tl114570114604_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117162_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114570114604_))
                                        (letrec ((_loop114571114607_
                                                  (lambda (_hd114569114610_
                                                           _body114575114612_
                                                           _hd114576114614_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114569114610_))
                                                        (let ((_e114572114617_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114569114610_))))
                  (let ((_lp-hd114573114620_
                         (let () (declare (not safe)) (##car _e114572114617_)))
                        (_lp-tl114574114622_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114572114617_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd114573114620_))
                        (let ((_e114581114625_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd114573114620_))))
                          (let ((_hd114580114628_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114581114625_)))
                                (_tl114579114630_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114581114625_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl114579114630_))
                                (let ((_e114584114633_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl114579114630_))))
                                  (let ((_hd114583114636_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114584114633_)))
                                        (_tl114582114638_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114584114633_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114582114638_))
                                        (let ((__tmp117168
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114583114636_
                                                       _body114575114612_)))
                                              (__tmp117167
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114580114628_
                                                       _hd114576114614_))))
                                          (declare (not safe))
                                          (_loop114571114607_
                                           _lp-tl114574114622_
                                           __tmp117168
                                           __tmp117167))
                                        (let ()
                                          (declare (not safe))
                                          (_g114561114589_ _g114562114592_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114561114589_ _g114562114592_)))))
                        (let ()
                          (declare (not safe))
                          (_g114561114589_ _g114562114592_)))))
                (let ((_body114577114641_ (reverse _body114575114612_))
                      (_hd114578114643_ (reverse _hd114576114614_)))
                  ((lambda (_L114646_ _L114647_)
                     (let ((__tmp117166
                            (lambda (_g114661114663_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g114661114663_
                                 _arg114559_))))
                           (__tmp117164
                            (let ((__tmp117165
                                   (lambda (_g114665114668_ _g114666114670_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g114665114668_
                                             _g114666114670_)))))
                              (declare (not safe))
                              (foldr1 __tmp117165 '() _L114646_))))
                       (declare (not safe))
                       (ormap1 __tmp117166 __tmp117164)))
                   _body114577114641_
                   _hd114578114643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114571114607_
                                             _target114568114602_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114561114589_
                                           _g114562114592_))))))
                              (let ()
                                (declare (not safe))
                                (_g114561114589_ _g114562114592_)))))
                      (let ()
                        (declare (not safe))
                        (_g114561114589_ _g114562114592_))))))
          (declare (not safe))
          (_g114560114673_ _stx114558_))))
    (define gxc#find-let-values%
      (lambda (_stx114408_ _arg114409_)
        (let* ((_g114411114446_
                (lambda (_g114412114443_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114412114443_))))
               (_g114410114555_
                (lambda (_g114412114449_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114412114449_))
                      (let ((_e114418114451_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114412114449_))))
                        (let ((_hd114417114454_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114418114451_)))
                              (_tl114416114456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114418114451_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114416114456_))
                              (let ((_e114421114459_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114416114456_))))
                                (let ((_hd114420114462_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114421114459_)))
                                      (_tl114419114464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114421114459_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd114420114462_))
                                      (let ((_g117169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd114420114462_
                                                '0))))
                                        (begin
                                          (let ((_g117170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117169_)
                                                       (##vector-length
                                                        _g117169_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117170_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117170_)))
                                          (let ((_target114422114467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117169_ 0)))
                                                (_tl114424114469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117169_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114424114469_))
                                                (letrec ((_loop114425114472_
                                                          (lambda (_hd114423114475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr114429114477_
                           _bind114430114479_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd114423114475_))
                        (let ((_e114426114482_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd114423114475_))))
                          (let ((_lp-hd114427114485_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114426114482_)))
                                (_lp-tl114428114487_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114426114482_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd114427114485_))
                                (let ((_e114435114490_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd114427114485_))))
                                  (let ((_hd114434114493_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114435114490_)))
                                        (_tl114433114495_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114435114490_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl114433114495_))
                                        (let ((_e114438114498_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl114433114495_))))
                                          (let ((_hd114437114501_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e114438114498_)))
                                                (_tl114436114503_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e114438114498_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114436114503_))
                                                (let ((__tmp117175
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114437114501_
                                                               _expr114429114477_)))
                                                      (__tmp117174
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114434114493_
                                                               _bind114430114479_))))
                                                  (declare (not safe))
                                                  (_loop114425114472_
                                                   _lp-tl114428114487_
                                                   __tmp117175
                                                   __tmp117174))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114411114446_
                                                   _g114412114449_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g114411114446_ _g114412114449_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114411114446_ _g114412114449_)))))
                        (let ((_expr114431114506_ (reverse _expr114429114477_))
                              (_bind114432114508_
                               (reverse _bind114430114479_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114419114464_))
                              (let ((_e114441114511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114419114464_))))
                                (let ((_hd114440114514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114441114511_)))
                                      (_tl114439114516_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114441114511_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114439114516_))
                                      ((lambda (_L114519_ _L114520_ _L114521_)
                                         (let ((_$e114552_
                                                (let ((__tmp117173
                                                       (lambda (_g114540114542_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g114540114542_
                                                            _arg114409_))))
                                                      (__tmp117171
                                                       (let ((__tmp117172
                                                              (lambda (_g114544114547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g114545114549_)
                        (let ()
                          (declare (not safe))
                          (cons _g114544114547_ _g114545114549_)))))
                 (declare (not safe))
                 (foldr1 __tmp117172 '() _L114520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp117173
                                                          __tmp117171))))
                                           (if _$e114552_
                                               _$e114552_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L114519_
                                                  _arg114409_)))))
                                       _hd114440114514_
                                       _expr114431114506_
                                       _bind114432114508_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114411114446_ _g114412114449_)))))
                              (let ()
                                (declare (not safe))
                                (_g114411114446_ _g114412114449_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop114425114472_
                                                     _target114422114467_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114411114446_
                                                   _g114412114449_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114411114446_ _g114412114449_)))))
                              (let ()
                                (declare (not safe))
                                (_g114411114446_ _g114412114449_)))))
                      (let ()
                        (declare (not safe))
                        (_g114411114446_ _g114412114449_))))))
          (declare (not safe))
          (_g114410114555_ _stx114408_))))
    (define gxc#find-setq%
      (lambda (_stx114340_ _arg114341_)
        (let* ((_g114343114360_
                (lambda (_g114344114357_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114344114357_))))
               (_g114342114405_
                (lambda (_g114344114363_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114344114363_))
                      (let ((_e114349114365_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114344114363_))))
                        (let ((_hd114348114368_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114349114365_)))
                              (_tl114347114370_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114349114365_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114347114370_))
                              (let ((_e114352114373_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114347114370_))))
                                (let ((_hd114351114376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114352114373_)))
                                      (_tl114350114378_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114352114373_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114350114378_))
                                      (let ((_e114355114381_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114350114378_))))
                                        (let ((_hd114354114384_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114355114381_)))
                                              (_tl114353114386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114355114381_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114353114386_))
                                              ((lambda (_L114389_ _L114390_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114389_
                                                    _arg114341_)))
                                               _hd114354114384_
                                               _hd114351114376_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114343114360_
                                                 _g114344114363_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114343114360_ _g114344114363_)))))
                              (let ()
                                (declare (not safe))
                                (_g114343114360_ _g114344114363_)))))
                      (let ()
                        (declare (not safe))
                        (_g114343114360_ _g114344114363_))))))
          (declare (not safe))
          (_g114342114405_ _stx114340_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx114284_ _ids114285_)
        (let* ((_g114287114300_
                (lambda (_g114288114297_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114288114297_))))
               (_g114286114337_
                (lambda (_g114288114303_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114288114303_))
                      (let ((_e114292114305_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114288114303_))))
                        (let ((_hd114291114308_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114292114305_)))
                              (_tl114290114310_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114292114305_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114290114310_))
                              (let ((_e114295114313_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114290114310_))))
                                (let ((_hd114294114316_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114295114313_)))
                                      (_tl114293114318_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114295114313_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114293114318_))
                                      ((lambda (_L114321_)
                                         (let ((__tmp117176
                                                (lambda (_g114332114334_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L114321_
                                                     _g114332114334_)))))
                                           (declare (not safe))
                                           (find __tmp117176 _ids114285_)))
                                       _hd114294114316_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114287114300_ _g114288114303_)))))
                              (let ()
                                (declare (not safe))
                                (_g114287114300_ _g114288114303_)))))
                      (let ()
                        (declare (not safe))
                        (_g114287114300_ _g114288114303_))))))
          (declare (not safe))
          (_g114286114337_ _stx114284_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx114208_ _ids114209_)
        (let* ((_g114211114228_
                (lambda (_g114212114225_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114212114225_))))
               (_g114210114281_
                (lambda (_g114212114231_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114212114231_))
                      (let ((_e114217114233_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114212114231_))))
                        (let ((_hd114216114236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114217114233_)))
                              (_tl114215114238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114217114233_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114215114238_))
                              (let ((_e114220114241_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114215114238_))))
                                (let ((_hd114219114244_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114220114241_)))
                                      (_tl114218114246_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114220114241_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114218114246_))
                                      (let ((_e114223114249_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114218114246_))))
                                        (let ((_hd114222114252_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114223114249_)))
                                              (_tl114221114254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114223114249_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114221114254_))
                                              ((lambda (_L114257_ _L114258_)
                                                 (let ((_$e114278_
                                                        (let ((__tmp117177
                                                               (lambda (_g114273114275_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L114258_ _g114273114275_)))))
                  (declare (not safe))
                  (find __tmp117177 _ids114209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e114278_
                                                       _$e114278_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L114257_
                                                          _ids114209_)))))
                                               _hd114222114252_
                                               _hd114219114244_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114211114228_
                                                 _g114212114231_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114211114228_ _g114212114231_)))))
                              (let ()
                                (declare (not safe))
                                (_g114211114228_ _g114212114231_)))))
                      (let ()
                        (declare (not safe))
                        (_g114211114228_ _g114212114231_))))))
          (declare (not safe))
          (_g114210114281_ _stx114208_))))))
