(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710067693)
  (begin
    (define gxc#&identity-expression
      (let ((__tmp117692
             (lambda ()
               (let ((_tbl117446_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#begin-annotation
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#lambda gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#case-lambda gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#let-values gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#letrec-values gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#letrec*-values
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#quote gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#quote-syntax gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#call gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#call-unchecked
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#if gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#ref gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#set! gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#struct-instance?
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#struct-direct-instance?
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#struct-ref gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117446_ '%#struct-set! gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#struct-direct-ref
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#struct-direct-set!
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#struct-unchecked-ref
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117446_
                    '%#struct-unchecked-set!
                    gxc#xform-identity))
                 _tbl117446_))))
        (declare (not safe))
        (make-promise __tmp117692)))
    (define gxc#&identity-special-form
      (let ((__tmp117693
             (lambda ()
               (let ((_tbl117442_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#begin gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#begin-syntax gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#begin-foreign gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#module gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#import gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#export gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#provide gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#extern gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#define-values gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#define-syntax gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#define-alias gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117442_ '%#declare gxc#xform-identity))
                 _tbl117442_))))
        (declare (not safe))
        (make-promise __tmp117693)))
    (define gxc#&identity
      (let ((__tmp117694
             (lambda ()
               (let ((_tbl117438_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117695 (force gxc#&identity-special-form)))
                   (declare (not safe))
                   (hash-merge! _tbl117438_ __tmp117695))
                 (let ((__tmp117696 (force gxc#&identity-expression)))
                   (declare (not safe))
                   (hash-merge! _tbl117438_ __tmp117696))
                 _tbl117438_))))
        (declare (not safe))
        (make-promise __tmp117694)))
    (define gxc#&basic-xform-expression
      (let ((__tmp117697
             (lambda ()
               (let ((_tbl117434_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#begin-annotation
                    gxc#xform-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#lambda gxc#xform-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#case-lambda
                    gxc#xform-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#let-values gxc#xform-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#letrec-values
                    gxc#xform-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#letrec*-values
                    gxc#xform-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#quote gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#quote-syntax gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#call gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#call-unchecked
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#if gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#ref gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#set! gxc#xform-setq%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#struct-instance?
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#struct-direct-instance?
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#struct-ref gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117434_ '%#struct-set! gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#struct-direct-ref
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#struct-direct-set!
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#struct-unchecked-ref
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117434_
                    '%#struct-unchecked-set!
                    gxc#xform-operands))
                 _tbl117434_))))
        (declare (not safe))
        (make-promise __tmp117697)))
    (define gxc#&basic-xform
      (let ((__tmp117698
             (lambda ()
               (let ((_tbl117430_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117699 (force gxc#&basic-xform-expression)))
                   (declare (not safe))
                   (hash-merge! _tbl117430_ __tmp117699))
                 (let ((__tmp117700 (force gxc#&identity)))
                   (declare (not safe))
                   (hash-merge! _tbl117430_ __tmp117700))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117430_ '%#begin gxc#xform-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117430_
                    '%#begin-syntax
                    gxc#xform-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117430_ '%#module gxc#xform-module%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117430_
                    '%#define-values
                    gxc#xform-define-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117430_
                    '%#define-syntax
                    gxc#xform-define-syntax%))
                 _tbl117430_))))
        (declare (not safe))
        (make-promise __tmp117698)))
    (define gxc#&collect-mutators
      (let ((__tmp117701
             (lambda ()
               (let ((_tbl117426_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117702 (force gxc#&void)))
                   (declare (not safe))
                   (hash-merge! _tbl117426_ __tmp117702))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117426_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#begin-syntax
                    gxc#collect-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#begin-annotation
                    gxc#collect-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117426_ '%#module gxc#collect-module%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#define-values
                    gxc#collect-define-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#define-syntax
                    gxc#collect-define-syntax%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117426_ '%#lambda gxc#collect-body-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#case-lambda
                    gxc#collect-body-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#let-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#letrec-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#letrec*-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117426_ '%#call gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#call-unchecked
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117426_ '%#if gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117426_ '%#set! gxc#collect-mutators-setq%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#struct-instance?
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#struct-direct-instance?
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117426_ '%#struct-ref gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117426_ '%#struct-set! gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#struct-direct-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#struct-direct-set!
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#struct-unchecked-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117426_
                    '%#struct-unchecked-set!
                    gxc#collect-operands))
                 _tbl117426_))))
        (declare (not safe))
        (make-promise __tmp117701)))
    (define gxc#apply-collect-mutators
      (lambda (_stx117409_ . _args117411_)
        (let ((__tmp117704
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117411_)
                     (gxc#compile-e__0 _stx117409_)
                     (let ((_arg1117416_ (car _args117411_))
                           (_rest117418_ (cdr _args117411_)))
                       (if (null? _rest117418_)
                           (gxc#compile-e__1 _stx117409_ _arg1117416_)
                           (let ((_arg2117421_ (car _rest117418_))
                                 (_rest117423_ (cdr _rest117418_)))
                             (if (null? _rest117423_)
                                 (gxc#compile-e__2
                                  _stx117409_
                                  _arg1117416_
                                  _arg2117421_)
                                 (apply gxc#compile-e
                                        _stx117409_
                                        _arg1117416_
                                        _arg2117421_
                                        _rest117423_))))))))
              (__tmp117703 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp117704
           gxc#current-compile-methods
           __tmp117703))))
    (define gxc#&collect-methods
      (let ((__tmp117705
             (lambda ()
               (let ((_tbl117406_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117706 (force gxc#&void)))
                   (declare (not safe))
                   (hash-merge! _tbl117406_ __tmp117706))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117406_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117406_
                    '%#begin-syntax
                    gxc#collect-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117406_ '%#module gxc#collect-module%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117406_ '%#call gxc#collect-methods-call%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117406_
                    '%#call-unchecked
                    gxc#collect-methods-call%))
                 _tbl117406_))))
        (declare (not safe))
        (make-promise __tmp117705)))
    (define gxc#apply-collect-methods
      (lambda (_stx117389_ . _args117391_)
        (let ((__tmp117708
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117391_)
                     (gxc#compile-e__0 _stx117389_)
                     (let ((_arg1117396_ (car _args117391_))
                           (_rest117398_ (cdr _args117391_)))
                       (if (null? _rest117398_)
                           (gxc#compile-e__1 _stx117389_ _arg1117396_)
                           (let ((_arg2117401_ (car _rest117398_))
                                 (_rest117403_ (cdr _rest117398_)))
                             (if (null? _rest117403_)
                                 (gxc#compile-e__2
                                  _stx117389_
                                  _arg1117396_
                                  _arg2117401_)
                                 (apply gxc#compile-e
                                        _stx117389_
                                        _arg1117396_
                                        _arg2117401_
                                        _rest117403_))))))))
              (__tmp117707 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp117708
           gxc#current-compile-methods
           __tmp117707))))
    (define gxc#&expression-subst
      (let ((__tmp117709
             (lambda ()
               (let ((_tbl117386_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117710 (force gxc#&basic-xform-expression)))
                   (declare (not safe))
                   (hash-merge! _tbl117386_ __tmp117710))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117386_ '%#begin gxc#xform-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117386_ '%#ref gxc#expression-subst-ref%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117386_ '%#set! gxc#expression-subst-setq%))
                 _tbl117386_))))
        (declare (not safe))
        (make-promise __tmp117709)))
    (define gxc#apply-expression-subst
      (lambda (_stx117369_ . _args117371_)
        (let ((__tmp117712
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117371_)
                     (gxc#compile-e__0 _stx117369_)
                     (let ((_arg1117376_ (car _args117371_))
                           (_rest117378_ (cdr _args117371_)))
                       (if (null? _rest117378_)
                           (gxc#compile-e__1 _stx117369_ _arg1117376_)
                           (let ((_arg2117381_ (car _rest117378_))
                                 (_rest117383_ (cdr _rest117378_)))
                             (if (null? _rest117383_)
                                 (gxc#compile-e__2
                                  _stx117369_
                                  _arg1117376_
                                  _arg2117381_)
                                 (apply gxc#compile-e
                                        _stx117369_
                                        _arg1117376_
                                        _arg2117381_
                                        _rest117383_))))))))
              (__tmp117711 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp117712
           gxc#current-compile-methods
           __tmp117711))))
    (define gxc#&expression-subst*
      (let ((__tmp117713
             (lambda ()
               (let ((_tbl117366_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117714 (force gxc#&expression-subst)))
                   (declare (not safe))
                   (hash-merge! _tbl117366_ __tmp117714))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117366_ '%#ref gxc#expression-subst*-ref%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117366_ '%#set! gxc#expression-subst*-setq%))
                 _tbl117366_))))
        (declare (not safe))
        (make-promise __tmp117713)))
    (define gxc#apply-expression-subst*
      (lambda (_stx117349_ . _args117351_)
        (let ((__tmp117716
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117351_)
                     (gxc#compile-e__0 _stx117349_)
                     (let ((_arg1117356_ (car _args117351_))
                           (_rest117358_ (cdr _args117351_)))
                       (if (null? _rest117358_)
                           (gxc#compile-e__1 _stx117349_ _arg1117356_)
                           (let ((_arg2117361_ (car _rest117358_))
                                 (_rest117363_ (cdr _rest117358_)))
                             (if (null? _rest117363_)
                                 (gxc#compile-e__2
                                  _stx117349_
                                  _arg1117356_
                                  _arg2117361_)
                                 (apply gxc#compile-e
                                        _stx117349_
                                        _arg1117356_
                                        _arg2117361_
                                        _rest117363_))))))))
              (__tmp117715 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp117716
           gxc#current-compile-methods
           __tmp117715))))
    (define gxc#&find-expression
      (let ((__tmp117717
             (lambda ()
               (let ((_tbl117346_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117718 (force gxc#&false-expression)))
                   (declare (not safe))
                   (hash-merge! _tbl117346_ __tmp117718))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#begin gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117346_
                    '%#begin-annotation
                    gxc#find-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#lambda gxc#find-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117346_
                    '%#case-lambda
                    gxc#find-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#let-values gxc#find-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117346_
                    '%#letrec-values
                    gxc#find-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117346_
                    '%#letrec*-values
                    gxc#find-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#call gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#call-unchecked gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#if gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#set! gxc#find-setq%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#struct-instance? gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117346_
                    '%#struct-direct-instance?
                    gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#struct-ref gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#struct-set! gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117346_ '%#struct-direct-ref gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117346_
                    '%#struct-direct-set!
                    gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117346_
                    '%#struct-unchecked-ref
                    gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117346_
                    '%#struct-unchecked-set!
                    gxc#find-body%))
                 _tbl117346_))))
        (declare (not safe))
        (make-promise __tmp117717)))
    (define gxc#&find-var-refs
      (let ((__tmp117719
             (lambda ()
               (let ((_tbl117342_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117720 (force gxc#&find-expression)))
                   (declare (not safe))
                   (hash-merge! _tbl117342_ __tmp117720))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117342_ '%#ref gxc#find-var-refs-ref%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl117342_ '%#set! gxc#find-var-refs-setq%))
                 _tbl117342_))))
        (declare (not safe))
        (make-promise __tmp117719)))
    (define gxc#apply-find-var-refs
      (lambda (_stx117325_ . _args117327_)
        (let ((__tmp117722
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117327_)
                     (gxc#compile-e__0 _stx117325_)
                     (let ((_arg1117332_ (car _args117327_))
                           (_rest117334_ (cdr _args117327_)))
                       (if (null? _rest117334_)
                           (gxc#compile-e__1 _stx117325_ _arg1117332_)
                           (let ((_arg2117337_ (car _rest117334_))
                                 (_rest117339_ (cdr _rest117334_)))
                             (if (null? _rest117339_)
                                 (gxc#compile-e__2
                                  _stx117325_
                                  _arg1117332_
                                  _arg2117337_)
                                 (apply gxc#compile-e
                                        _stx117325_
                                        _arg1117332_
                                        _arg2117337_
                                        _rest117339_))))))))
              (__tmp117721 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117722
           gxc#current-compile-methods
           __tmp117721))))
    (define gxc#&collect-runtime-refs
      (let ((__tmp117723
             (lambda ()
               (let ((_tbl117322_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp117724 (force gxc#&collect-expression-refs)))
                   (declare (not safe))
                   (hash-merge! _tbl117322_ __tmp117724))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117322_
                    '%#ref
                    gxc#collect-runtime-refs-ref%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl117322_
                    '%#set!
                    gxc#collect-runtime-refs-setq%))
                 _tbl117322_))))
        (declare (not safe))
        (make-promise __tmp117723)))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx117305_ . _args117307_)
        (let ((__tmp117726
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117307_)
                     (gxc#compile-e__0 _stx117305_)
                     (let ((_arg1117312_ (car _args117307_))
                           (_rest117314_ (cdr _args117307_)))
                       (if (null? _rest117314_)
                           (gxc#compile-e__1 _stx117305_ _arg1117312_)
                           (let ((_arg2117317_ (car _rest117314_))
                                 (_rest117319_ (cdr _rest117314_)))
                             (if (null? _rest117319_)
                                 (gxc#compile-e__2
                                  _stx117305_
                                  _arg1117312_
                                  _arg2117317_)
                                 (apply gxc#compile-e
                                        _stx117305_
                                        _arg1117312_
                                        _arg2117317_
                                        _rest117319_))))))))
              (__tmp117725 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117726
           gxc#current-compile-methods
           __tmp117725))))
    (define gxc#xform-identity
      (lambda (_stx117302_ . _args117303_) _stx117302_))
    (define gxc#xform-wrap-source
      (lambda (_stx117299_ _src-stx117300_)
        (let ((__tmp117727
               (let () (declare (not safe)) (gx#stx-source _src-stx117300_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx117299_ __tmp117727))))
    (define gxc#xform-apply-compile-e
      (lambda (_args117286_)
        (lambda (_stx117288_)
          (if (let () (declare (not safe)) (null? _args117286_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx117288_))
              (let ((_arg1117290_ (car _args117286_))
                    (_rest117292_ (cdr _args117286_)))
                (if (let () (declare (not safe)) (null? _rest117292_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx117288_ _arg1117290_))
                    (let ((_arg2117295_ (car _rest117292_))
                          (_rest117297_ (cdr _rest117292_)))
                      (if (let () (declare (not safe)) (null? _rest117297_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx117288_
                             _arg1117290_
                             _arg2117295_))
                          (apply gxc#compile-e
                                 _stx117288_
                                 _arg1117290_
                                 _arg2117295_
                                 _rest117297_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117245_ . _args117246_)
        (let* ((_g117248117258_
                (lambda (_g117249117255_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117249117255_))))
               (_g117247117283_
                (lambda (_g117249117261_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117249117261_))
                      (let ((_e117253117263_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117249117261_))))
                        (let ((_hd117252117266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117253117263_)))
                              (_tl117251117268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117253117263_))))
                          ((lambda (_L117271_)
                             (let* ((_forms117281_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117246_))
                                          _L117271_))
                                    (__tmp117728
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117281_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117728
                                _stx117245_)))
                           _tl117251117268_)))
                      (let ()
                        (declare (not safe))
                        (_g117248117258_ _g117249117261_))))))
          (declare (not safe))
          (_g117247117283_ _stx117245_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx117203_ . _args117204_)
        (let* ((_g117206117216_
                (lambda (_g117207117213_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117207117213_))))
               (_g117205117242_
                (lambda (_g117207117219_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117207117219_))
                      (let ((_e117211117221_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117207117219_))))
                        (let ((_hd117210117224_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117211117221_)))
                              (_tl117209117226_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117211117221_))))
                          ((lambda (_L117229_)
                             (let ((__tmp117731
                                    (lambda ()
                                      (let* ((_forms117240_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args117204_))
                                                   _L117229_))
                                             (__tmp117732
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117240_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp117732
                                         _stx117203_))))
                                   (__tmp117729
                                    (let ((__tmp117730
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp117730 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp117731
                                gx#current-expander-phi
                                __tmp117729)))
                           _tl117209117226_)))
                      (let ()
                        (declare (not safe))
                        (_g117206117216_ _g117207117219_))))))
          (declare (not safe))
          (_g117205117242_ _stx117203_))))
    (define gxc#xform-module%
      (lambda (_stx117131_ . _args117132_)
        (let* ((_g117134117148_
                (lambda (_g117135117145_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117135117145_))))
               (_g117133117200_
                (lambda (_g117135117151_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117135117151_))
                      (let ((_e117140117153_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117135117151_))))
                        (let ((_hd117139117156_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117140117153_)))
                              (_tl117138117158_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117140117153_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117138117158_))
                              (let ((_e117143117161_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117138117158_))))
                                (let ((_hd117142117164_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117143117161_)))
                                      (_tl117141117166_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117143117161_))))
                                  ((lambda (_L117169_ _L117170_)
                                     (let* ((_ctx117183_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117170_)))
                                            (_code117185_
                                             (##structure-ref
                                              _ctx117183_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code117197_
                                             (let ((__tmp117733
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args117132_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code117185_))
                                                          (let ((_arg1117188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args117132_))
                        (_rest117190_ (cdr _args117132_)))
                    (if (let () (declare (not safe)) (null? _rest117190_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code117185_ _arg1117188_))
                        (let ((_arg2117193_ (car _rest117190_))
                              (_rest117195_ (cdr _rest117190_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest117195_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code117185_
                                 _arg1117188_
                                 _arg2117193_))
                              (apply gxc#compile-e
                                     _code117185_
                                     _arg1117188_
                                     _arg2117193_
                                     _rest117195_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp117733
                                                gx#current-expander-context
                                                _ctx117183_))))
                                       (##structure-set!
                                        _ctx117183_
                                        _code117197_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp117734
                                              (let ((__tmp117735
                                                     (let ((__tmp117736
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code117197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117170_ __tmp117736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp117735))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp117734
                                          _stx117131_))))
                                   _tl117141117166_
                                   _hd117142117164_)))
                              (let ()
                                (declare (not safe))
                                (_g117134117148_ _g117135117151_)))))
                      (let ()
                        (declare (not safe))
                        (_g117134117148_ _g117135117151_))))))
          (declare (not safe))
          (_g117133117200_ _stx117131_))))
    (define gxc#xform-define-values%
      (lambda (_stx117052_ . _args117053_)
        (let* ((_g117055117072_
                (lambda (_g117056117069_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117056117069_))))
               (_g117054117128_
                (lambda (_g117056117075_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117056117075_))
                      (let ((_e117061117077_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117056117075_))))
                        (let ((_hd117060117080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117061117077_)))
                              (_tl117059117082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117061117077_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117059117082_))
                              (let ((_e117064117085_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117059117082_))))
                                (let ((_hd117063117088_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117064117085_)))
                                      (_tl117062117090_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117064117085_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117062117090_))
                                      (let ((_e117067117093_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117062117090_))))
                                        (let ((_hd117066117096_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117067117093_)))
                                              (_tl117065117098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117067117093_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117065117098_))
                                              ((lambda (_L117101_ _L117102_)
                                                 (let* ((_expr117126_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117053_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117101_))
                     (let ((_arg1117117_ (car _args117053_))
                           (_rest117119_ (cdr _args117053_)))
                       (if (let () (declare (not safe)) (null? _rest117119_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117101_ _arg1117117_))
                           (let ((_arg2117122_ (car _rest117119_))
                                 (_rest117124_ (cdr _rest117119_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117124_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117101_
                                    _arg1117117_
                                    _arg2117122_))
                                 (apply gxc#compile-e
                                        _L117101_
                                        _arg1117117_
                                        _arg2117122_
                                        _rest117124_)))))))
                (__tmp117737
                 (let ((__tmp117738
                        (let ((__tmp117739
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117126_ '()))))
                          (declare (not safe))
                          (cons _L117102_ __tmp117739))))
                   (declare (not safe))
                   (cons '%#define-values __tmp117738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117737
                                                    _stx117052_)))
                                               _hd117066117096_
                                               _hd117063117088_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117055117072_
                                                 _g117056117075_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117055117072_ _g117056117075_)))))
                              (let ()
                                (declare (not safe))
                                (_g117055117072_ _g117056117075_)))))
                      (let ()
                        (declare (not safe))
                        (_g117055117072_ _g117056117075_))))))
          (declare (not safe))
          (_g117054117128_ _stx117052_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx116972_ . _args116973_)
        (let* ((_g116975116992_
                (lambda (_g116976116989_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116976116989_))))
               (_g116974117049_
                (lambda (_g116976116995_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116976116995_))
                      (let ((_e116981116997_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116976116995_))))
                        (let ((_hd116980117000_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116981116997_)))
                              (_tl116979117002_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116981116997_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116979117002_))
                              (let ((_e116984117005_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116979117002_))))
                                (let ((_hd116983117008_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116984117005_)))
                                      (_tl116982117010_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116984117005_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116982117010_))
                                      (let ((_e116987117013_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116982117010_))))
                                        (let ((_hd116986117016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116987117013_)))
                                              (_tl116985117018_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116987117013_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116985117018_))
                                              ((lambda (_L117021_ _L117022_)
                                                 (let ((__tmp117742
                                                        (lambda ()
                                                          (let* ((_expr117047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args116973_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L117021_))
                              (let ((_arg1117038_ (car _args116973_))
                                    (_rest117040_ (cdr _args116973_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest117040_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L117021_
                                       _arg1117038_))
                                    (let ((_arg2117043_ (car _rest117040_))
                                          (_rest117045_ (cdr _rest117040_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest117045_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L117021_
                                             _arg1117038_
                                             _arg2117043_))
                                          (apply gxc#compile-e
                                                 _L117021_
                                                 _arg1117038_
                                                 _arg2117043_
                                                 _rest117045_)))))))
                         (__tmp117743
                          (let ((__tmp117744
                                 (let ((__tmp117745
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117047_ '()))))
                                   (declare (not safe))
                                   (cons _L117022_ __tmp117745))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp117744))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp117743 _stx116972_))))
               (__tmp117740
                (let ((__tmp117741 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp117741 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp117742
                                                    gx#current-expander-phi
                                                    __tmp117740)))
                                               _hd116986117016_
                                               _hd116983117008_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116975116992_
                                                 _g116976116995_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116975116992_ _g116976116995_)))))
                              (let ()
                                (declare (not safe))
                                (_g116975116992_ _g116976116995_)))))
                      (let ()
                        (declare (not safe))
                        (_g116975116992_ _g116976116995_))))))
          (declare (not safe))
          (_g116974117049_ _stx116972_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx116893_ . _args116894_)
        (let* ((_g116896116913_
                (lambda (_g116897116910_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116897116910_))))
               (_g116895116969_
                (lambda (_g116897116916_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116897116916_))
                      (let ((_e116902116918_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116897116916_))))
                        (let ((_hd116901116921_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116902116918_)))
                              (_tl116900116923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116902116918_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116900116923_))
                              (let ((_e116905116926_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116900116923_))))
                                (let ((_hd116904116929_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116905116926_)))
                                      (_tl116903116931_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116905116926_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116903116931_))
                                      (let ((_e116908116934_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116903116931_))))
                                        (let ((_hd116907116937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116908116934_)))
                                              (_tl116906116939_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116908116934_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116906116939_))
                                              ((lambda (_L116942_ _L116943_)
                                                 (let* ((_expr116967_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116894_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116942_))
                     (let ((_arg1116958_ (car _args116894_))
                           (_rest116960_ (cdr _args116894_)))
                       (if (let () (declare (not safe)) (null? _rest116960_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116942_ _arg1116958_))
                           (let ((_arg2116963_ (car _rest116960_))
                                 (_rest116965_ (cdr _rest116960_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116965_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116942_
                                    _arg1116958_
                                    _arg2116963_))
                                 (apply gxc#compile-e
                                        _L116942_
                                        _arg1116958_
                                        _arg2116963_
                                        _rest116965_)))))))
                (__tmp117746
                 (let ((__tmp117747
                        (let ((__tmp117748
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116967_ '()))))
                          (declare (not safe))
                          (cons _L116943_ __tmp117748))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp117747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117746
                                                    _stx116893_)))
                                               _hd116907116937_
                                               _hd116904116929_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116896116913_
                                                 _g116897116916_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116896116913_ _g116897116916_)))))
                              (let ()
                                (declare (not safe))
                                (_g116896116913_ _g116897116916_)))))
                      (let ()
                        (declare (not safe))
                        (_g116896116913_ _g116897116916_))))))
          (declare (not safe))
          (_g116895116969_ _stx116893_))))
    (define gxc#xform-lambda%
      (lambda (_stx116836_ . _args116837_)
        (let* ((_g116839116853_
                (lambda (_g116840116850_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116840116850_))))
               (_g116838116890_
                (lambda (_g116840116856_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116840116856_))
                      (let ((_e116845116858_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116840116856_))))
                        (let ((_hd116844116861_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116845116858_)))
                              (_tl116843116863_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116845116858_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116843116863_))
                              (let ((_e116848116866_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116843116863_))))
                                (let ((_hd116847116869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116848116866_)))
                                      (_tl116846116871_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116848116866_))))
                                  ((lambda (_L116874_ _L116875_)
                                     (let* ((_body116888_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args116837_))
                                                  _L116874_))
                                            (__tmp117749
                                             (let ((__tmp117750
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L116875_
                                                            _body116888_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp117750))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp117749
                                        _stx116836_)))
                                   _tl116846116871_
                                   _hd116847116869_)))
                              (let ()
                                (declare (not safe))
                                (_g116839116853_ _g116840116856_)))))
                      (let ()
                        (declare (not safe))
                        (_g116839116853_ _g116840116856_))))))
          (declare (not safe))
          (_g116838116890_ _stx116836_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx116749_ . _args116750_)
        (letrec ((_clause-e116752_
                  (lambda (_clause116793_)
                    (let* ((_g116795116806_
                            (lambda (_g116796116803_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g116796116803_))))
                           (_g116794116833_
                            (lambda (_g116796116809_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g116796116809_))
                                  (let ((_e116801116811_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g116796116809_))))
                                    (let ((_hd116800116814_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116801116811_)))
                                          (_tl116799116816_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116801116811_))))
                                      ((lambda (_L116819_ _L116820_)
                                         (let ((_body116831_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args116750_))
                                                     _L116819_)))
                                           (declare (not safe))
                                           (cons _L116820_ _body116831_)))
                                       _tl116799116816_
                                       _hd116800116814_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116795116806_ _g116796116809_))))))
                      (declare (not safe))
                      (_g116794116833_ _clause116793_)))))
          (let* ((_g116754116764_
                  (lambda (_g116755116761_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g116755116761_))))
                 (_g116753116790_
                  (lambda (_g116755116767_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g116755116767_))
                        (let ((_e116759116769_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g116755116767_))))
                          (let ((_hd116758116772_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116759116769_)))
                                (_tl116757116774_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116759116769_))))
                            ((lambda (_L116777_)
                               (let* ((_clauses116788_
                                       (map _clause-e116752_ _L116777_))
                                      (__tmp117751
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses116788_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp117751
                                  _stx116749_)))
                             _tl116757116774_)))
                        (let ()
                          (declare (not safe))
                          (_g116754116764_ _g116755116767_))))))
            (declare (not safe))
            (_g116753116790_ _stx116749_)))))
    (define gxc#xform-let-values%
      (lambda (_stx116543_ . _args116544_)
        (let* ((_g116546116579_
                (lambda (_g116547116576_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116547116576_))))
               (_g116545116746_
                (lambda (_g116547116582_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116547116582_))
                      (let ((_e116554116584_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116547116582_))))
                        (let ((_hd116553116587_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116554116584_)))
                              (_tl116552116589_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116554116584_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116552116589_))
                              (let ((_e116557116592_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116552116589_))))
                                (let ((_hd116556116595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116557116592_)))
                                      (_tl116555116597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116557116592_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd116556116595_))
                                      (let ((_g117752_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd116556116595_
                                                '0))))
                                        (begin
                                          (let ((_g117753_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117752_)
                                                       (##vector-length
                                                        _g117752_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117753_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117753_)))
                                          (let ((_target116558116600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117752_ 0)))
                                                (_tl116560116602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117752_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116560116602_))
                                                (letrec ((_loop116561116605_
                                                          (lambda (_hd116559116608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr116565116610_
                           _hd116566116612_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd116559116608_))
                        (let ((_e116562116615_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd116559116608_))))
                          (let ((_lp-hd116563116618_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116562116615_)))
                                (_lp-tl116564116620_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116562116615_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd116563116618_))
                                (let ((_e116571116623_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd116563116618_))))
                                  (let ((_hd116570116626_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116571116623_)))
                                        (_tl116569116628_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116571116623_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl116569116628_))
                                        (let ((_e116574116631_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl116569116628_))))
                                          (let ((_hd116573116634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e116574116631_)))
                                                (_tl116572116636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e116574116631_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116572116636_))
                                                (let ((__tmp117766
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116573116634_
                                                               _expr116565116610_)))
                                                      (__tmp117765
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116570116626_
                                                               _hd116566116612_))))
                                                  (declare (not safe))
                                                  (_loop116561116605_
                                                   _lp-tl116564116620_
                                                   __tmp117766
                                                   __tmp117765))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116546116579_
                                                   _g116547116582_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116546116579_ _g116547116582_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116546116579_ _g116547116582_)))))
                        (let ((_expr116567116639_ (reverse _expr116565116610_))
                              (_hd116568116641_ (reverse _hd116566116612_)))
                          ((lambda (_L116644_ _L116645_ _L116646_ _L116647_)
                             (let* ((_g116666116682_
                                     (lambda (_g116667116679_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g116667116679_))))
                                    (_g116665116736_
                                     (lambda (_g116667116685_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g116667116685_))
                                           (let ((_g117754_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g116667116685_
                                                     '0))))
                                             (begin
                                               (let ((_g117755_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g117754_)
                                                            (##vector-length
                                                             _g117754_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g117755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g117755_)))
                                               (let ((_target116669116687_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117754_
                                                         0)))
                                                     (_tl116671116689_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117754_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116671116689_))
                                                     (letrec ((_loop116672116692_
                                                               (lambda (_hd116670116695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr116676116697_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd116670116695_))
                             (let ((_e116673116700_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd116670116695_))))
                               (let ((_lp-hd116674116703_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116673116700_)))
                                     (_lp-tl116675116705_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116673116700_))))
                                 (let ((__tmp117762
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd116674116703_
                                                _expr116676116697_))))
                                   (declare (not safe))
                                   (_loop116672116692_
                                    _lp-tl116675116705_
                                    __tmp117762))))
                             (let ((_expr116677116708_
                                    (reverse _expr116676116697_)))
                               ((lambda (_L116711_)
                                  (let ()
                                    (let* ((_body116724_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args116544_))
                                                 _L116644_))
                                           (__tmp117756
                                            (let ((__tmp117757
                                                   (let ((__tmp117758
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L116711_
                                                               _L116646_))
                                                            (let ((__tmp117759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g116725116729_
                                    _g116726116731_
                                    _g116727116733_)
                             (let ((__tmp117760
                                    (let ((__tmp117761
                                           (let ()
                                             (declare (not safe))
                                             (cons _g116725116729_ '()))))
                                      (declare (not safe))
                                      (cons _g116726116731_ __tmp117761))))
                               (declare (not safe))
                               (cons __tmp117760 _g116727116733_)))))
                      (declare (not safe))
                      (foldr2 __tmp117759 '() _L116711_ _L116646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp117758
                                                           _body116724_))))
                                              (declare (not safe))
                                              (cons _L116647_ __tmp117757))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp117756
                                       _stx116543_))))
                                _expr116677116708_))))))
               (let ()
                 (declare (not safe))
                 (_loop116672116692_ _target116669116687_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g116666116682_
                                                        _g116667116685_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g116666116682_
                                              _g116667116685_)))))
                                    (__tmp117763
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116544_))
                                          (let ((__tmp117764
                                                 (lambda (_g116738116741_
                                                          _g116739116743_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g116738116741_
                                                           _g116739116743_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp117764
                                                    '()
                                                    _L116645_)))))
                               (declare (not safe))
                               (_g116665116736_ __tmp117763)))
                           _tl116555116597_
                           _expr116567116639_
                           _hd116568116641_
                           _hd116553116587_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop116561116605_
                                                     _target116558116600_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116546116579_
                                                   _g116547116582_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116546116579_ _g116547116582_)))))
                              (let ()
                                (declare (not safe))
                                (_g116546116579_ _g116547116582_)))))
                      (let ()
                        (declare (not safe))
                        (_g116546116579_ _g116547116582_))))))
          (declare (not safe))
          (_g116545116746_ _stx116543_))))
    (define gxc#xform-operands
      (lambda (_stx116499_ . _args116500_)
        (let* ((_g116502116513_
                (lambda (_g116503116510_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116503116510_))))
               (_g116501116540_
                (lambda (_g116503116516_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116503116516_))
                      (let ((_e116508116518_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116503116516_))))
                        (let ((_hd116507116521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116508116518_)))
                              (_tl116506116523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116508116518_))))
                          ((lambda (_L116526_ _L116527_)
                             (let* ((_rands116538_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116500_))
                                          _L116526_))
                                    (__tmp117767
                                     (let ()
                                       (declare (not safe))
                                       (cons _L116527_ _rands116538_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117767
                                _stx116499_)))
                           _tl116506116523_
                           _hd116507116521_)))
                      (let ()
                        (declare (not safe))
                        (_g116502116513_ _g116503116516_))))))
          (declare (not safe))
          (_g116501116540_ _stx116499_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx116420_ . _args116421_)
        (let* ((_g116423116440_
                (lambda (_g116424116437_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116424116437_))))
               (_g116422116496_
                (lambda (_g116424116443_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116424116443_))
                      (let ((_e116429116445_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116424116443_))))
                        (let ((_hd116428116448_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116429116445_)))
                              (_tl116427116450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116429116445_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116427116450_))
                              (let ((_e116432116453_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116427116450_))))
                                (let ((_hd116431116456_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116432116453_)))
                                      (_tl116430116458_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116432116453_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116430116458_))
                                      (let ((_e116435116461_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116430116458_))))
                                        (let ((_hd116434116464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116435116461_)))
                                              (_tl116433116466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116435116461_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116433116466_))
                                              ((lambda (_L116469_ _L116470_)
                                                 (let* ((_expr116494_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116421_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116469_))
                     (let ((_arg1116485_ (car _args116421_))
                           (_rest116487_ (cdr _args116421_)))
                       (if (let () (declare (not safe)) (null? _rest116487_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116469_ _arg1116485_))
                           (let ((_arg2116490_ (car _rest116487_))
                                 (_rest116492_ (cdr _rest116487_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116492_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116469_
                                    _arg1116485_
                                    _arg2116490_))
                                 (apply gxc#compile-e
                                        _L116469_
                                        _arg1116485_
                                        _arg2116490_
                                        _rest116492_)))))))
                (__tmp117768
                 (let ((__tmp117769
                        (let ((__tmp117770
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116494_ '()))))
                          (declare (not safe))
                          (cons _L116470_ __tmp117770))))
                   (declare (not safe))
                   (cons '%#set! __tmp117769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117768
                                                    _stx116420_)))
                                               _hd116434116464_
                                               _hd116431116456_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116423116440_
                                                 _g116424116443_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116423116440_ _g116424116443_)))))
                              (let ()
                                (declare (not safe))
                                (_g116423116440_ _g116424116443_)))))
                      (let ()
                        (declare (not safe))
                        (_g116423116440_ _g116424116443_))))))
          (declare (not safe))
          (_g116422116496_ _stx116420_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx116351_)
        (let* ((_g116353116370_
                (lambda (_g116354116367_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116354116367_))))
               (_g116352116417_
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
                                                 (let ((_sym116415_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116400_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116415_))
                                                   (let ((__tmp117771
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp117771
                                                      _sym116415_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L116399_))))
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
          (_g116352116417_ _stx116351_))))
    (define gxc#collect-methods-call%
      (lambda (_stx115905_)
        (let* ((___stx117449117450_ _stx115905_)
               (_g115909116011_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117449117450_)))))
          (let ((___kont117451117452_
                 (lambda (_L116301_ _L116302_ _L116303_ _L116304_ _L116305_)
                   (let ((__tmp117772
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116302_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117772))))
                (___kont117453117454_
                 (lambda (_L116127_ _L116128_ _L116129_ _L116130_)
                   (let ((__tmp117773
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116127_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117773))))
                (___kont117455117456_ (lambda () '#!void)))
            (let ((___match117584117585_
                   (lambda (_e115918116173_
                            _hd115917116176_
                            _tl115916116178_
                            _e115921116181_
                            _hd115920116184_
                            _tl115919116186_
                            _e115924116189_
                            _hd115923116192_
                            _tl115922116194_
                            _e115927116197_
                            _hd115926116200_
                            _tl115925116202_
                            _e115930116205_
                            _hd115929116208_
                            _tl115928116210_
                            _e115933116213_
                            _hd115932116216_
                            _tl115931116218_
                            _e115936116221_
                            _hd115935116224_
                            _tl115934116226_
                            _e115939116229_
                            _hd115938116232_
                            _tl115937116234_
                            _e115942116237_
                            _hd115941116240_
                            _tl115940116242_
                            _e115945116245_
                            _hd115944116248_
                            _tl115943116250_
                            _e115948116253_
                            _hd115947116256_
                            _tl115946116258_
                            _e115951116261_
                            _hd115950116264_
                            _tl115949116266_
                            _e115954116269_
                            _hd115953116272_
                            _tl115952116274_
                            _e115957116277_
                            _hd115956116280_
                            _tl115955116282_
                            _e115960116285_
                            _hd115959116288_
                            _tl115958116290_
                            _e115963116293_
                            _hd115962116296_
                            _tl115961116298_)
                     (let ((_L116301_ _hd115962116296_)
                           (_L116302_ _hd115953116272_)
                           (_L116303_ _hd115944116248_)
                           (_L116304_ _hd115935116224_)
                           (_L116305_ _hd115926116200_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116305_
                              'bind-method!))
                           (___kont117451117452_
                            _L116301_
                            _L116302_
                            _L116303_
                            _L116304_
                            _L116305_)
                           (___kont117455117456_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117449117450_))
                  (let ((_e115918116173_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117449117450_))))
                    (let ((_tl115916116178_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115918116173_)))
                          (_hd115917116176_
                           (let ()
                             (declare (not safe))
                             (##car _e115918116173_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115916116178_))
                          (let ((_e115921116181_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115916116178_))))
                            (let ((_tl115919116186_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115921116181_)))
                                  (_hd115920116184_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115921116181_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115920116184_))
                                  (let ((_e115924116189_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115920116184_))))
                                    (let ((_tl115922116194_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115924116189_)))
                                          (_hd115923116192_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115924116189_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115923116192_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115923116192_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115922116194_))
                                                  (let ((_e115927116197_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115922116194_))))
                                                    (let ((_tl115925116202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115927116197_)))
                                                          (_hd115926116200_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115927116197_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115925116202_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115919116186_))
                      (let ((_e115930116205_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115919116186_))))
                        (let ((_tl115928116210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115930116205_)))
                              (_hd115929116208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115930116205_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115929116208_))
                              (let ((_e115933116213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115929116208_))))
                                (let ((_tl115931116218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115933116213_)))
                                      (_hd115932116216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115933116213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115932116216_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115932116216_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115931116218_))
                                              (let ((_e115936116221_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115931116218_))))
                                                (let ((_tl115934116226_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115936116221_)))
                                                      (_hd115935116224_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115936116221_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115934116226_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115928116210_))
                                                          (let ((_e115939116229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115928116210_))))
                    (let ((_tl115937116234_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115939116229_)))
                          (_hd115938116232_
                           (let ()
                             (declare (not safe))
                             (##car _e115939116229_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115938116232_))
                          (let ((_e115942116237_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115938116232_))))
                            (let ((_tl115940116242_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115942116237_)))
                                  (_hd115941116240_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115942116237_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115941116240_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115941116240_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115940116242_))
                                          (let ((_e115945116245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115940116242_))))
                                            (let ((_tl115943116250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115945116245_)))
                                                  (_hd115944116248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115945116245_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115943116250_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115937116234_))
                                                      (let ((_e115948116253_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115937116234_))))
                (let ((_tl115946116258_
                       (let () (declare (not safe)) (##cdr _e115948116253_)))
                      (_hd115947116256_
                       (let () (declare (not safe)) (##car _e115948116253_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115947116256_))
                      (let ((_e115951116261_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115947116256_))))
                        (let ((_tl115949116266_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115951116261_)))
                              (_hd115950116264_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115951116261_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115950116264_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115950116264_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115949116266_))
                                      (let ((_e115954116269_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115949116266_))))
                                        (let ((_tl115952116274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115954116269_)))
                                              (_hd115953116272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115954116269_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115952116274_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115946116258_))
                                                  (let ((_e115957116277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115946116258_))))
                                                    (let ((_tl115955116282_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115957116277_)))
                                                          (_hd115956116280_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115957116277_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115956116280_))
                                                          (let ((_e115960116285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115956116280_))))
                    (let ((_tl115958116290_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115960116285_)))
                          (_hd115959116288_
                           (let ()
                             (declare (not safe))
                             (##car _e115960116285_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115959116288_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115959116288_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115958116290_))
                                  (let ((_e115963116293_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115958116290_))))
                                    (let ((_tl115961116298_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115963116293_)))
                                          (_hd115962116296_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115963116293_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115961116298_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115955116282_))
                                              (___match117584117585_
                                               _e115918116173_
                                               _hd115917116176_
                                               _tl115916116178_
                                               _e115921116181_
                                               _hd115920116184_
                                               _tl115919116186_
                                               _e115924116189_
                                               _hd115923116192_
                                               _tl115922116194_
                                               _e115927116197_
                                               _hd115926116200_
                                               _tl115925116202_
                                               _e115930116205_
                                               _hd115929116208_
                                               _tl115928116210_
                                               _e115933116213_
                                               _hd115932116216_
                                               _tl115931116218_
                                               _e115936116221_
                                               _hd115935116224_
                                               _tl115934116226_
                                               _e115939116229_
                                               _hd115938116232_
                                               _tl115937116234_
                                               _e115942116237_
                                               _hd115941116240_
                                               _tl115940116242_
                                               _e115945116245_
                                               _hd115944116248_
                                               _tl115943116250_
                                               _e115948116253_
                                               _hd115947116256_
                                               _tl115946116258_
                                               _e115951116261_
                                               _hd115950116264_
                                               _tl115949116266_
                                               _e115954116269_
                                               _hd115953116272_
                                               _tl115952116274_
                                               _e115957116277_
                                               _hd115956116280_
                                               _tl115955116282_
                                               _e115960116285_
                                               _hd115959116288_
                                               _tl115958116290_
                                               _e115963116293_
                                               _hd115962116296_
                                               _tl115961116298_)
                                              (___kont117455117456_))
                                          (___kont117455117456_))))
                                  (___kont117455117456_))
                              (___kont117455117456_))
                          (___kont117455117456_))))
                  (___kont117455117456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115946116258_))
                                                      (if (let ((__tmp117774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp117774 'bind-method!))
                  (let ((_L116127_ _hd115953116272_)
                        (_L116128_ _hd115944116248_)
                        (_L116129_ _hd115935116224_)
                        (_L116130_ _hd115926116200_))
                    (___kont117453117454_
                     _L116127_
                     _L116128_
                     _L116129_
                     _L116130_))
                  (___kont117455117456_))
              (___kont117455117456_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117455117456_))))
                                      (___kont117455117456_))
                                  (___kont117455117456_))
                              (___kont117455117456_))))
                      (___kont117455117456_))))
              (___kont117455117456_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117455117456_))))
                                          (___kont117455117456_))
                                      (___kont117455117456_))
                                  (___kont117455117456_))))
                          (___kont117455117456_))))
                  (___kont117455117456_))
              (___kont117455117456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117455117456_))
                                          (___kont117455117456_))
                                      (___kont117455117456_))))
                              (___kont117455117456_))))
                      (___kont117455117456_))
                  (___kont117455117456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117455117456_))
                                              (___kont117455117456_))
                                          (___kont117455117456_))))
                                  (___kont117455117456_))))
                          (___kont117455117456_))))
                  (___kont117455117456_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx115852_ _id115853_ _new-id115854_)
        (let* ((_g115856115869_
                (lambda (_g115857115866_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115857115866_))))
               (_g115855115902_
                (lambda (_g115857115872_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115857115872_))
                      (let ((_e115861115874_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115857115872_))))
                        (let ((_hd115860115877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115861115874_)))
                              (_tl115859115879_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115861115874_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115859115879_))
                              (let ((_e115864115882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115859115879_))))
                                (let ((_hd115863115885_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115864115882_)))
                                      (_tl115862115887_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115864115882_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115862115887_))
                                      ((lambda (_L115890_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115890_
                                                _id115853_))
                                             (let ((__tmp117775
                                                    (let ((__tmp117776
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id115854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp117776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp117775
                                                _stx115852_))
                                             _stx115852_))
                                       _hd115863115885_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115856115869_ _g115857115872_)))))
                              (let ()
                                (declare (not safe))
                                (_g115856115869_ _g115857115872_)))))
                      (let ()
                        (declare (not safe))
                        (_g115856115869_ _g115857115872_))))))
          (declare (not safe))
          (_g115855115902_ _stx115852_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx115793_ _subst115794_)
        (let* ((_g115796115809_
                (lambda (_g115797115806_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115797115806_))))
               (_g115795115849_
                (lambda (_g115797115812_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115797115812_))
                      (let ((_e115801115814_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115797115812_))))
                        (let ((_hd115800115817_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115801115814_)))
                              (_tl115799115819_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115801115814_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115799115819_))
                              (let ((_e115804115822_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115799115819_))))
                                (let ((_hd115803115825_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115804115822_)))
                                      (_tl115802115827_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115804115822_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115802115827_))
                                      ((lambda (_L115830_)
                                         (let ((_$e115844_
                                                (let ((__tmp117777
                                                       (lambda (_sub115842_)
                                                         (let ((__tmp117778
                                                                (car _sub115842_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115830_
                                                            __tmp117778)))))
                                                  (declare (not safe))
                                                  (find __tmp117777
                                                        _subst115794_))))
                                           (if _$e115844_
                                               ((lambda (_sub115847_)
                                                  (let ((__tmp117779
                                                         (let ((__tmp117780
                                                                (let ((__tmp117781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115847_)))
                          (declare (not safe))
                          (cons __tmp117781 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp117780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp117779
                                                     _stx115793_)))
                                                _$e115844_)
                                               _stx115793_)))
                                       _hd115803115825_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115796115809_ _g115797115812_)))))
                              (let ()
                                (declare (not safe))
                                (_g115796115809_ _g115797115812_)))))
                      (let ()
                        (declare (not safe))
                        (_g115796115809_ _g115797115812_))))))
          (declare (not safe))
          (_g115795115849_ _stx115793_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx115721_ _id115722_ _new-id115723_)
        (let* ((_g115725115742_
                (lambda (_g115726115739_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115726115739_))))
               (_g115724115790_
                (lambda (_g115726115745_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115726115745_))
                      (let ((_e115731115747_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115726115745_))))
                        (let ((_hd115730115750_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115731115747_)))
                              (_tl115729115752_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115731115747_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115729115752_))
                              (let ((_e115734115755_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115729115752_))))
                                (let ((_hd115733115758_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115734115755_)))
                                      (_tl115732115760_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115734115755_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115732115760_))
                                      (let ((_e115737115763_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115732115760_))))
                                        (let ((_hd115736115766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115737115763_)))
                                              (_tl115735115768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115737115763_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115735115768_))
                                              ((lambda (_L115771_ _L115772_)
                                                 (let ((_new-expr115787_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L115771_
                                                           _id115722_
                                                           _new-id115723_)))
                                                       (_new-xid115788_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L115772_
                                                               _id115722_))
                                                            _new-id115723_
                                                            _L115772_)))
                                                   (let ((__tmp117782
                                                          (let ((__tmp117783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117784
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115787_ '()))))
                           (declare (not safe))
                           (cons _new-xid115788_ __tmp117784))))
                    (declare (not safe))
                    (cons '%#set! __tmp117783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117782
                                                      _stx115721_))))
                                               _hd115736115766_
                                               _hd115733115758_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115725115742_
                                                 _g115726115745_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115725115742_ _g115726115745_)))))
                              (let ()
                                (declare (not safe))
                                (_g115725115742_ _g115726115745_)))))
                      (let ()
                        (declare (not safe))
                        (_g115725115742_ _g115726115745_))))))
          (declare (not safe))
          (_g115724115790_ _stx115721_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx115645_ _subst115646_)
        (let* ((_g115648115665_
                (lambda (_g115649115662_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115649115662_))))
               (_g115647115718_
                (lambda (_g115649115668_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115649115668_))
                      (let ((_e115654115670_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115649115668_))))
                        (let ((_hd115653115673_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115654115670_)))
                              (_tl115652115675_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115654115670_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115652115675_))
                              (let ((_e115657115678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115652115675_))))
                                (let ((_hd115656115681_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115657115678_)))
                                      (_tl115655115683_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115657115678_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115655115683_))
                                      (let ((_e115660115686_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115655115683_))))
                                        (let ((_hd115659115689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115660115686_)))
                                              (_tl115658115691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115660115686_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115658115691_))
                                              ((lambda (_L115694_ _L115695_)
                                                 (let ((_new-expr115715_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L115694_
                                                           _subst115646_)))
                                                       (_new-xid115716_
                                                        (let ((_$e115712_
                                                               (let ((__tmp117785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115710_)
                                (let ((__tmp117786 (car _sub115710_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115695_
                                   __tmp117786)))))
                         (declare (not safe))
                         (find __tmp117785 _subst115646_))))
                  (if _$e115712_ (cdr _$e115712_) _L115695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp117787
                                                          (let ((__tmp117788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117789
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115715_ '()))))
                           (declare (not safe))
                           (cons _new-xid115716_ __tmp117789))))
                    (declare (not safe))
                    (cons '%#set! __tmp117788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117787
                                                      _stx115645_))))
                                               _hd115659115689_
                                               _hd115656115681_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115648115665_
                                                 _g115649115668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115648115665_ _g115649115668_)))))
                              (let ()
                                (declare (not safe))
                                (_g115648115665_ _g115649115668_)))))
                      (let ()
                        (declare (not safe))
                        (_g115648115665_ _g115649115668_))))))
          (declare (not safe))
          (_g115647115718_ _stx115645_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx115591_ _ht115592_)
        (let* ((_g115594115607_
                (lambda (_g115595115604_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115595115604_))))
               (_g115593115642_
                (lambda (_g115595115610_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115595115610_))
                      (let ((_e115599115612_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115595115610_))))
                        (let ((_hd115598115615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115599115612_)))
                              (_tl115597115617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115599115612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115597115617_))
                              (let ((_e115602115620_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115597115617_))))
                                (let ((_hd115601115623_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115602115620_)))
                                      (_tl115600115625_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115602115620_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115600115625_))
                                      ((lambda (_L115628_)
                                         (let ((_eid115640_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L115628_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht115592_
                                            _eid115640_
                                            1+
                                            '0)))
                                       _hd115601115623_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115594115607_ _g115595115610_)))))
                              (let ()
                                (declare (not safe))
                                (_g115594115607_ _g115595115610_)))))
                      (let ()
                        (declare (not safe))
                        (_g115594115607_ _g115595115610_))))))
          (declare (not safe))
          (_g115593115642_ _stx115591_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx115521_ _ht115522_)
        (let* ((_g115524115541_
                (lambda (_g115525115538_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115525115538_))))
               (_g115523115588_
                (lambda (_g115525115544_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115525115544_))
                      (let ((_e115530115546_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115525115544_))))
                        (let ((_hd115529115549_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115530115546_)))
                              (_tl115528115551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115530115546_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115528115551_))
                              (let ((_e115533115554_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115528115551_))))
                                (let ((_hd115532115557_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115533115554_)))
                                      (_tl115531115559_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115533115554_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115531115559_))
                                      (let ((_e115536115562_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115531115559_))))
                                        (let ((_hd115535115565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115536115562_)))
                                              (_tl115534115567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115536115562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115534115567_))
                                              ((lambda (_L115570_ _L115571_)
                                                 (let ((_eid115586_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115571_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht115522_
                                                      _eid115586_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L115570_
                                                      _ht115522_))))
                                               _hd115535115565_
                                               _hd115532115557_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115524115541_
                                                 _g115525115544_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115524115541_ _g115525115544_)))))
                              (let ()
                                (declare (not safe))
                                (_g115524115541_ _g115525115544_)))))
                      (let ()
                        (declare (not safe))
                        (_g115524115541_ _g115525115544_))))))
          (declare (not safe))
          (_g115523115588_ _stx115521_))))
    (define gxc#find-body%
      (lambda (_stx115434_ _arg115435_)
        (let* ((_g115437115456_
                (lambda (_g115438115453_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115438115453_))))
               (_g115436115518_
                (lambda (_g115438115459_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115438115459_))
                      (let ((_e115442115461_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115438115459_))))
                        (let ((_hd115441115464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115442115461_)))
                              (_tl115440115466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115442115461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115440115466_))
                              (let ((_g117790_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115440115466_
                                        '0))))
                                (begin
                                  (let ((_g117791_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117790_)
                                               (##vector-length _g117790_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117791_ 2)))
                                        (error "Context expects 2 values"
                                               _g117791_)))
                                  (let ((_target115443115469_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117790_ 0)))
                                        (_tl115445115471_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117790_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115445115471_))
                                        (letrec ((_loop115446115474_
                                                  (lambda (_hd115444115477_
                                                           _expr115450115479_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115444115477_))
                                                        (let ((_e115447115482_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115444115477_))))
                  (let ((_lp-hd115448115485_
                         (let () (declare (not safe)) (##car _e115447115482_)))
                        (_lp-tl115449115487_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115447115482_))))
                    (let ((__tmp117795
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115448115485_ _expr115450115479_))))
                      (declare (not safe))
                      (_loop115446115474_ _lp-tl115449115487_ __tmp117795))))
                (let ((_expr115451115490_ (reverse _expr115450115479_)))
                  ((lambda (_L115493_)
                     (let ((__tmp117794
                            (lambda (_g115506115508_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115506115508_
                                 _arg115435_))))
                           (__tmp117792
                            (let ((__tmp117793
                                   (lambda (_g115510115513_ _g115511115515_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115510115513_
                                             _g115511115515_)))))
                              (declare (not safe))
                              (foldr1 __tmp117793 '() _L115493_))))
                       (declare (not safe))
                       (ormap1 __tmp117794 __tmp117792)))
                   _expr115451115490_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115446115474_
                                             _target115443115469_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115437115456_
                                           _g115438115459_))))))
                              (let ()
                                (declare (not safe))
                                (_g115437115456_ _g115438115459_)))))
                      (let ()
                        (declare (not safe))
                        (_g115437115456_ _g115438115459_))))))
          (declare (not safe))
          (_g115436115518_ _stx115434_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx115366_ _arg115367_)
        (let* ((_g115369115386_
                (lambda (_g115370115383_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115370115383_))))
               (_g115368115431_
                (lambda (_g115370115389_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115370115389_))
                      (let ((_e115375115391_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115370115389_))))
                        (let ((_hd115374115394_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115375115391_)))
                              (_tl115373115396_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115375115391_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115373115396_))
                              (let ((_e115378115399_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115373115396_))))
                                (let ((_hd115377115402_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115378115399_)))
                                      (_tl115376115404_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115378115399_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115376115404_))
                                      (let ((_e115381115407_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115376115404_))))
                                        (let ((_hd115380115410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115381115407_)))
                                              (_tl115379115412_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115381115407_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115379115412_))
                                              ((lambda (_L115415_ _L115416_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115415_
                                                    _arg115367_)))
                                               _hd115380115410_
                                               _hd115377115402_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115369115386_
                                                 _g115370115389_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115369115386_ _g115370115389_)))))
                              (let ()
                                (declare (not safe))
                                (_g115369115386_ _g115370115389_)))))
                      (let ()
                        (declare (not safe))
                        (_g115369115386_ _g115370115389_))))))
          (declare (not safe))
          (_g115368115431_ _stx115366_))))
    (define gxc#find-lambda%
      (lambda (_stx115298_ _arg115299_)
        (let* ((_g115301115318_
                (lambda (_g115302115315_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115302115315_))))
               (_g115300115363_
                (lambda (_g115302115321_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115302115321_))
                      (let ((_e115307115323_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115302115321_))))
                        (let ((_hd115306115326_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115307115323_)))
                              (_tl115305115328_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115307115323_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115305115328_))
                              (let ((_e115310115331_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115305115328_))))
                                (let ((_hd115309115334_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115310115331_)))
                                      (_tl115308115336_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115310115331_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115308115336_))
                                      (let ((_e115313115339_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115308115336_))))
                                        (let ((_hd115312115342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115313115339_)))
                                              (_tl115311115344_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115313115339_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115311115344_))
                                              ((lambda (_L115347_ _L115348_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115347_
                                                    _arg115299_)))
                                               _hd115312115342_
                                               _hd115309115334_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115301115318_
                                                 _g115302115321_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115301115318_ _g115302115321_)))))
                              (let ()
                                (declare (not safe))
                                (_g115301115318_ _g115302115321_)))))
                      (let ()
                        (declare (not safe))
                        (_g115301115318_ _g115302115321_))))))
          (declare (not safe))
          (_g115300115363_ _stx115298_))))
    (define gxc#find-case-lambda%
      (lambda (_stx115180_ _arg115181_)
        (let* ((_g115183115211_
                (lambda (_g115184115208_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115184115208_))))
               (_g115182115295_
                (lambda (_g115184115214_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115184115214_))
                      (let ((_e115189115216_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115184115214_))))
                        (let ((_hd115188115219_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115189115216_)))
                              (_tl115187115221_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115189115216_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115187115221_))
                              (let ((_g117796_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115187115221_
                                        '0))))
                                (begin
                                  (let ((_g117797_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117796_)
                                               (##vector-length _g117796_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117797_ 2)))
                                        (error "Context expects 2 values"
                                               _g117797_)))
                                  (let ((_target115190115224_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117796_ 0)))
                                        (_tl115192115226_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117796_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115192115226_))
                                        (letrec ((_loop115193115229_
                                                  (lambda (_hd115191115232_
                                                           _body115197115234_
                                                           _hd115198115236_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115191115232_))
                                                        (let ((_e115194115239_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115191115232_))))
                  (let ((_lp-hd115195115242_
                         (let () (declare (not safe)) (##car _e115194115239_)))
                        (_lp-tl115196115244_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115194115239_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd115195115242_))
                        (let ((_e115203115247_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd115195115242_))))
                          (let ((_hd115202115250_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115203115247_)))
                                (_tl115201115252_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115203115247_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl115201115252_))
                                (let ((_e115206115255_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl115201115252_))))
                                  (let ((_hd115205115258_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115206115255_)))
                                        (_tl115204115260_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115206115255_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115204115260_))
                                        (let ((__tmp117802
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115205115258_
                                                       _body115197115234_)))
                                              (__tmp117801
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115202115250_
                                                       _hd115198115236_))))
                                          (declare (not safe))
                                          (_loop115193115229_
                                           _lp-tl115196115244_
                                           __tmp117802
                                           __tmp117801))
                                        (let ()
                                          (declare (not safe))
                                          (_g115183115211_ _g115184115214_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115183115211_ _g115184115214_)))))
                        (let ()
                          (declare (not safe))
                          (_g115183115211_ _g115184115214_)))))
                (let ((_body115199115263_ (reverse _body115197115234_))
                      (_hd115200115265_ (reverse _hd115198115236_)))
                  ((lambda (_L115268_ _L115269_)
                     (let ((__tmp117800
                            (lambda (_g115283115285_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115283115285_
                                 _arg115181_))))
                           (__tmp117798
                            (let ((__tmp117799
                                   (lambda (_g115287115290_ _g115288115292_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115287115290_
                                             _g115288115292_)))))
                              (declare (not safe))
                              (foldr1 __tmp117799 '() _L115268_))))
                       (declare (not safe))
                       (ormap1 __tmp117800 __tmp117798)))
                   _body115199115263_
                   _hd115200115265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115193115229_
                                             _target115190115224_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115183115211_
                                           _g115184115214_))))))
                              (let ()
                                (declare (not safe))
                                (_g115183115211_ _g115184115214_)))))
                      (let ()
                        (declare (not safe))
                        (_g115183115211_ _g115184115214_))))))
          (declare (not safe))
          (_g115182115295_ _stx115180_))))
    (define gxc#find-let-values%
      (lambda (_stx115030_ _arg115031_)
        (let* ((_g115033115068_
                (lambda (_g115034115065_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115034115065_))))
               (_g115032115177_
                (lambda (_g115034115071_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115034115071_))
                      (let ((_e115040115073_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115034115071_))))
                        (let ((_hd115039115076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115040115073_)))
                              (_tl115038115078_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115040115073_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115038115078_))
                              (let ((_e115043115081_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115038115078_))))
                                (let ((_hd115042115084_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115043115081_)))
                                      (_tl115041115086_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115043115081_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115042115084_))
                                      (let ((_g117803_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115042115084_
                                                '0))))
                                        (begin
                                          (let ((_g117804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117803_)
                                                       (##vector-length
                                                        _g117803_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117804_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117804_)))
                                          (let ((_target115044115089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117803_ 0)))
                                                (_tl115046115091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117803_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115046115091_))
                                                (letrec ((_loop115047115094_
                                                          (lambda (_hd115045115097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115051115099_
                           _bind115052115101_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115045115097_))
                        (let ((_e115048115104_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115045115097_))))
                          (let ((_lp-hd115049115107_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115048115104_)))
                                (_lp-tl115050115109_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115048115104_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115049115107_))
                                (let ((_e115057115112_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115049115107_))))
                                  (let ((_hd115056115115_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115057115112_)))
                                        (_tl115055115117_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115057115112_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115055115117_))
                                        (let ((_e115060115120_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115055115117_))))
                                          (let ((_hd115059115123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115060115120_)))
                                                (_tl115058115125_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115060115120_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115058115125_))
                                                (let ((__tmp117809
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115059115123_
                                                               _expr115051115099_)))
                                                      (__tmp117808
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115056115115_
                                                               _bind115052115101_))))
                                                  (declare (not safe))
                                                  (_loop115047115094_
                                                   _lp-tl115050115109_
                                                   __tmp117809
                                                   __tmp117808))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115033115068_
                                                   _g115034115071_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115033115068_ _g115034115071_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115033115068_ _g115034115071_)))))
                        (let ((_expr115053115128_ (reverse _expr115051115099_))
                              (_bind115054115130_
                               (reverse _bind115052115101_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115041115086_))
                              (let ((_e115063115133_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115041115086_))))
                                (let ((_hd115062115136_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115063115133_)))
                                      (_tl115061115138_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115063115133_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115061115138_))
                                      ((lambda (_L115141_ _L115142_ _L115143_)
                                         (let ((_$e115174_
                                                (let ((__tmp117807
                                                       (lambda (_g115162115164_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g115162115164_
                                                            _arg115031_))))
                                                      (__tmp117805
                                                       (let ((__tmp117806
                                                              (lambda (_g115166115169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115167115171_)
                        (let ()
                          (declare (not safe))
                          (cons _g115166115169_ _g115167115171_)))))
                 (declare (not safe))
                 (foldr1 __tmp117806 '() _L115142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp117807
                                                          __tmp117805))))
                                           (if _$e115174_
                                               _$e115174_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L115141_
                                                  _arg115031_)))))
                                       _hd115062115136_
                                       _expr115053115128_
                                       _bind115054115130_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115033115068_ _g115034115071_)))))
                              (let ()
                                (declare (not safe))
                                (_g115033115068_ _g115034115071_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115047115094_
                                                     _target115044115089_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115033115068_
                                                   _g115034115071_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115033115068_ _g115034115071_)))))
                              (let ()
                                (declare (not safe))
                                (_g115033115068_ _g115034115071_)))))
                      (let ()
                        (declare (not safe))
                        (_g115033115068_ _g115034115071_))))))
          (declare (not safe))
          (_g115032115177_ _stx115030_))))
    (define gxc#find-setq%
      (lambda (_stx114962_ _arg114963_)
        (let* ((_g114965114982_
                (lambda (_g114966114979_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114966114979_))))
               (_g114964115027_
                (lambda (_g114966114985_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114966114985_))
                      (let ((_e114971114987_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114966114985_))))
                        (let ((_hd114970114990_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114971114987_)))
                              (_tl114969114992_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114971114987_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114969114992_))
                              (let ((_e114974114995_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114969114992_))))
                                (let ((_hd114973114998_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114974114995_)))
                                      (_tl114972115000_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114974114995_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114972115000_))
                                      (let ((_e114977115003_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114972115000_))))
                                        (let ((_hd114976115006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114977115003_)))
                                              (_tl114975115008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114977115003_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114975115008_))
                                              ((lambda (_L115011_ _L115012_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115011_
                                                    _arg114963_)))
                                               _hd114976115006_
                                               _hd114973114998_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114965114982_
                                                 _g114966114985_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114965114982_ _g114966114985_)))))
                              (let ()
                                (declare (not safe))
                                (_g114965114982_ _g114966114985_)))))
                      (let ()
                        (declare (not safe))
                        (_g114965114982_ _g114966114985_))))))
          (declare (not safe))
          (_g114964115027_ _stx114962_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx114906_ _ids114907_)
        (let* ((_g114909114922_
                (lambda (_g114910114919_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114910114919_))))
               (_g114908114959_
                (lambda (_g114910114925_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114910114925_))
                      (let ((_e114914114927_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114910114925_))))
                        (let ((_hd114913114930_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114914114927_)))
                              (_tl114912114932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114914114927_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114912114932_))
                              (let ((_e114917114935_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114912114932_))))
                                (let ((_hd114916114938_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114917114935_)))
                                      (_tl114915114940_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114917114935_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114915114940_))
                                      ((lambda (_L114943_)
                                         (let ((__tmp117810
                                                (lambda (_g114954114956_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L114943_
                                                     _g114954114956_)))))
                                           (declare (not safe))
                                           (find __tmp117810 _ids114907_)))
                                       _hd114916114938_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114909114922_ _g114910114925_)))))
                              (let ()
                                (declare (not safe))
                                (_g114909114922_ _g114910114925_)))))
                      (let ()
                        (declare (not safe))
                        (_g114909114922_ _g114910114925_))))))
          (declare (not safe))
          (_g114908114959_ _stx114906_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx114830_ _ids114831_)
        (let* ((_g114833114850_
                (lambda (_g114834114847_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114834114847_))))
               (_g114832114903_
                (lambda (_g114834114853_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114834114853_))
                      (let ((_e114839114855_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114834114853_))))
                        (let ((_hd114838114858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114839114855_)))
                              (_tl114837114860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114839114855_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114837114860_))
                              (let ((_e114842114863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114837114860_))))
                                (let ((_hd114841114866_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114842114863_)))
                                      (_tl114840114868_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114842114863_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114840114868_))
                                      (let ((_e114845114871_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114840114868_))))
                                        (let ((_hd114844114874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114845114871_)))
                                              (_tl114843114876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114845114871_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114843114876_))
                                              ((lambda (_L114879_ _L114880_)
                                                 (let ((_$e114900_
                                                        (let ((__tmp117811
                                                               (lambda (_g114895114897_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L114880_ _g114895114897_)))))
                  (declare (not safe))
                  (find __tmp117811 _ids114831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e114900_
                                                       _$e114900_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L114879_
                                                          _ids114831_)))))
                                               _hd114844114874_
                                               _hd114841114866_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114833114850_
                                                 _g114834114853_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114833114850_ _g114834114853_)))))
                              (let ()
                                (declare (not safe))
                                (_g114833114850_ _g114834114853_)))))
                      (let ()
                        (declare (not safe))
                        (_g114833114850_ _g114834114853_))))))
          (declare (not safe))
          (_g114832114903_ _stx114830_))))))
