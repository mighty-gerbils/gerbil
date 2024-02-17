(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708194430)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl230471_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236631 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl230471_ __tmp236631))
           (let ()
             (declare (not safe))
             (table-set! _tbl230471_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230471_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230471_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230471_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl230471_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx230454_ . _args230456_)
        (let ((__tmp236633
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230456_)
                     (gxc#compile-e__0 _stx230454_)
                     (let ((_arg1230461_ (car _args230456_))
                           (_rest230463_ (cdr _args230456_)))
                       (if (null? _rest230463_)
                           (gxc#compile-e__1 _stx230454_ _arg1230461_)
                           (let ((_arg2230466_ (car _rest230463_))
                                 (_rest230468_ (cdr _rest230463_)))
                             (if (null? _rest230468_)
                                 (gxc#compile-e__2
                                  _stx230454_
                                  _arg1230461_
                                  _arg2230466_)
                                 (apply gxc#compile-e
                                        _stx230454_
                                        _arg1230461_
                                        _arg2230466_
                                        _rest230468_))))))))
              (__tmp236632 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp236633
           gxc#current-compile-methods
           __tmp236632))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl230451_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236634 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl230451_ __tmp236634))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230451_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230451_ '%#call gxc#basic-expression-type-call%))
           _tbl230451_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx230434_ . _args230436_)
        (let ((__tmp236636
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230436_)
                     (gxc#compile-e__0 _stx230434_)
                     (let ((_arg1230441_ (car _args230436_))
                           (_rest230443_ (cdr _args230436_)))
                       (if (null? _rest230443_)
                           (gxc#compile-e__1 _stx230434_ _arg1230441_)
                           (let ((_arg2230446_ (car _rest230443_))
                                 (_rest230448_ (cdr _rest230443_)))
                             (if (null? _rest230448_)
                                 (gxc#compile-e__2
                                  _stx230434_
                                  _arg1230441_
                                  _arg2230446_)
                                 (apply gxc#compile-e
                                        _stx230434_
                                        _arg1230441_
                                        _arg2230446_
                                        _rest230448_))))))))
              (__tmp236635 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp236636
           gxc#current-compile-methods
           __tmp236635))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl230431_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236637 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl230431_ __tmp236637))
           (let ()
             (declare (not safe))
             (table-set! _tbl230431_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230431_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230431_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230431_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230431_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230431_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230431_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230431_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230431_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230431_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230431_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230431_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl230431_ '%#set! gxc#collect-body-setq%))
           _tbl230431_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx230414_ . _args230416_)
        (let ((__tmp236639
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230416_)
                     (gxc#compile-e__0 _stx230414_)
                     (let ((_arg1230421_ (car _args230416_))
                           (_rest230423_ (cdr _args230416_)))
                       (if (null? _rest230423_)
                           (gxc#compile-e__1 _stx230414_ _arg1230421_)
                           (let ((_arg2230426_ (car _rest230423_))
                                 (_rest230428_ (cdr _rest230423_)))
                             (if (null? _rest230428_)
                                 (gxc#compile-e__2
                                  _stx230414_
                                  _arg1230421_
                                  _arg2230426_)
                                 (apply gxc#compile-e
                                        _stx230414_
                                        _arg1230421_
                                        _arg2230426_
                                        _rest230428_))))))))
              (__tmp236638 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp236639
           gxc#current-compile-methods
           __tmp236638))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl230411_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236640 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl230411_ __tmp236640))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230411_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230411_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230411_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230411_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230411_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230411_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230411_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230411_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl230411_ '%#ref gxc#basic-expression-type-ref%))
           _tbl230411_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx230394_ . _args230396_)
        (let ((__tmp236642
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230396_)
                     (gxc#compile-e__0 _stx230394_)
                     (let ((_arg1230401_ (car _args230396_))
                           (_rest230403_ (cdr _args230396_)))
                       (if (null? _rest230403_)
                           (gxc#compile-e__1 _stx230394_ _arg1230401_)
                           (let ((_arg2230406_ (car _rest230403_))
                                 (_rest230408_ (cdr _rest230403_)))
                             (if (null? _rest230408_)
                                 (gxc#compile-e__2
                                  _stx230394_
                                  _arg1230401_
                                  _arg2230406_)
                                 (apply gxc#compile-e
                                        _stx230394_
                                        _arg1230401_
                                        _arg2230406_
                                        _rest230408_))))))))
              (__tmp236641 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp236642
           gxc#current-compile-methods
           __tmp236641))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl230391_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236643 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl230391_ __tmp236643))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230391_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230391_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230391_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl230391_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl230391_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx230374_ . _args230376_)
        (let ((__tmp236645
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230376_)
                     (gxc#compile-e__0 _stx230374_)
                     (let ((_arg1230381_ (car _args230376_))
                           (_rest230383_ (cdr _args230376_)))
                       (if (null? _rest230383_)
                           (gxc#compile-e__1 _stx230374_ _arg1230381_)
                           (let ((_arg2230386_ (car _rest230383_))
                                 (_rest230388_ (cdr _rest230383_)))
                             (if (null? _rest230388_)
                                 (gxc#compile-e__2
                                  _stx230374_
                                  _arg1230381_
                                  _arg2230386_)
                                 (apply gxc#compile-e
                                        _stx230374_
                                        _arg1230381_
                                        _arg2230386_
                                        _rest230388_))))))))
              (__tmp236644 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp236645
           gxc#current-compile-methods
           __tmp236644))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx230277_)
        (let* ((___stx234551234552_ _stx230277_)
               (_g230280230300_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234551234552_)))))
          (let ((___kont234553234554_
                 (lambda (_L230344_ _L230345_)
                   (let ((_sym230363_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230345_))))
                     (if (let ((__tmp236646 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp236646 _sym230363_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym230363_))
                         (let ((_type230364230366_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L230344_))))
                           (if _type230364230366_
                               (let ((_type230369_ _type230364230366_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym230363_
                                  _type230369_))
                               '#f))))))
                (___kont234555234556_ (lambda () '#!void)))
            (let ((___match234584234585_
                   (lambda (_e230284230312_
                            _hd230285230315_
                            _tl230286230317_
                            _e230287230320_
                            _hd230288230323_
                            _tl230289230325_
                            _e230290230328_
                            _hd230291230331_
                            _tl230292230333_
                            _e230293230336_
                            _hd230294230339_
                            _tl230295230341_)
                     (let ((_L230344_ _hd230294230339_)
                           (_L230345_ _hd230291230331_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L230345_))
                           (___kont234553234554_ _L230344_ _L230345_)
                           (___kont234555234556_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234551234552_))
                  (let ((_e230284230312_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234551234552_))))
                    (let ((_tl230286230317_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230284230312_)))
                          (_hd230285230315_
                           (let ()
                             (declare (not safe))
                             (##car _e230284230312_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230286230317_))
                          (let ((_e230287230320_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230286230317_))))
                            (let ((_tl230289230325_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230287230320_)))
                                  (_hd230288230323_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230287230320_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230288230323_))
                                  (let ((_e230290230328_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230288230323_))))
                                    (let ((_tl230292230333_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230290230328_)))
                                          (_hd230291230331_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230290230328_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230292230333_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230289230325_))
                                              (let ((_e230293230336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230289230325_))))
                                                (let ((_tl230295230341_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230293230336_)))
                                                      (_hd230294230339_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230293230336_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230295230341_))
                                                      (___match234584234585_
                                                       _e230284230312_
                                                       _hd230285230315_
                                                       _tl230286230317_
                                                       _e230287230320_
                                                       _hd230288230323_
                                                       _tl230289230325_
                                                       _e230290230328_
                                                       _hd230291230331_
                                                       _tl230292230333_
                                                       _e230293230336_
                                                       _hd230294230339_
                                                       _tl230295230341_)
                                                      (___kont234555234556_))))
                                              (___kont234555234556_))
                                          (___kont234555234556_))))
                                  (___kont234555234556_))))
                          (___kont234555234556_))))
                  (___kont234555234556_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx230133_)
        (let* ((___stx234587234588_ _stx230133_)
               (_g230136230167_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234587234588_)))))
          (let ((___kont234589234590_
                 (lambda (_L230249_ _L230250_)
                   (let ((_sym230266_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230250_))))
                     (if (let ((__tmp236647 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp236647 _sym230266_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym230266_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym230266_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym230266_))
                             (let ((_type230267230269_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L230249_))))
                               (if _type230267230269_
                                   (let ((_type230272_ _type230267230269_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym230266_
                                      _type230272_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L230249_)))))
                (___kont234591234592_
                 (lambda (_L230196_ _L230197_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L230196_)))))
            (let ((___match234620234621_
                   (lambda (_e230140230217_
                            _hd230141230220_
                            _tl230142230222_
                            _e230143230225_
                            _hd230144230228_
                            _tl230145230230_
                            _e230146230233_
                            _hd230147230236_
                            _tl230148230238_
                            _e230149230241_
                            _hd230150230244_
                            _tl230151230246_)
                     (let ((_L230249_ _hd230150230244_)
                           (_L230250_ _hd230147230236_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L230250_))
                           (___kont234589234590_ _L230249_ _L230250_)
                           (___kont234591234592_
                            _hd230150230244_
                            _hd230144230228_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234587234588_))
                  (let ((_e230140230217_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234587234588_))))
                    (let ((_tl230142230222_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230140230217_)))
                          (_hd230141230220_
                           (let ()
                             (declare (not safe))
                             (##car _e230140230217_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230142230222_))
                          (let ((_e230143230225_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230142230222_))))
                            (let ((_tl230145230230_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230143230225_)))
                                  (_hd230144230228_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230143230225_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230144230228_))
                                  (let ((_e230146230233_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230144230228_))))
                                    (let ((_tl230148230238_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230146230233_)))
                                          (_hd230147230236_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230146230233_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230148230238_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230145230230_))
                                              (let ((_e230149230241_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230145230230_))))
                                                (let ((_tl230151230246_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230149230241_)))
                                                      (_hd230150230244_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230149230241_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230151230246_))
                                                      (___match234620234621_
                                                       _e230140230217_
                                                       _hd230141230220_
                                                       _tl230142230222_
                                                       _e230143230225_
                                                       _hd230144230228_
                                                       _tl230145230230_
                                                       _e230146230233_
                                                       _hd230147230236_
                                                       _tl230148230238_
                                                       _e230149230241_
                                                       _hd230150230244_
                                                       _tl230151230246_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230136230167_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230136230167_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230145230230_))
                                              (let ((_e230160230188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230145230230_))))
                                                (let ((_tl230162230193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230160230188_)))
                                                      (_hd230161230191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230160230188_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230162230193_))
                                                      (___kont234591234592_
                                                       _hd230161230191_
                                                       _hd230144230228_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230136230167_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230136230167_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230145230230_))
                                      (let ((_e230160230188_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230145230230_))))
                                        (let ((_tl230162230193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230160230188_)))
                                              (_hd230161230191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230160230188_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230162230193_))
                                              (___kont234591234592_
                                               _hd230161230191_
                                               _hd230144230228_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230136230167_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230136230167_))))))
                          (let () (declare (not safe)) (_g230136230167_)))))
                  (let () (declare (not safe)) (_g230136230167_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx229918_)
        (letrec ((_collect-e229920_
                  (lambda (_hd230077_ _expr230078_)
                    (let* ((___stx234643234644_ _hd230077_)
                           (_g230081230091_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx234643234644_)))))
                      (let ((___kont234645234646_
                             (lambda (_L230111_)
                               (let ((_sym230122_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L230111_))))
                                 (if (let ((__tmp236648
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp236648 _sym230122_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym230122_))
                                     (let ((_type230123230125_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr230078_))))
                                       (if _type230123230125_
                                           (let ((_type230128_
                                                  _type230123230125_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym230122_
                                              _type230128_
                                              '#t))
                                           '#f))))))
                            (___kont234647234648_ (lambda () '#!void)))
                        (let ((___match234656234657_
                               (lambda (_e230084230103_
                                        _hd230085230106_
                                        _tl230086230108_)
                                 (let ((_L230111_ _hd230085230106_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L230111_))
                                       (___kont234645234646_ _L230111_)
                                       (___kont234647234648_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx234643234644_))
                              (let ((_e230084230103_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx234643234644_))))
                                (let ((_tl230086230108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230084230103_)))
                                      (_hd230085230106_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230084230103_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230086230108_))
                                      (___match234656234657_
                                       _e230084230103_
                                       _hd230085230106_
                                       _tl230086230108_)
                                      (___kont234647234648_))))
                              (___kont234647234648_))))))))
          (let* ((_g229922229957_
                  (lambda (_g229923229954_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g229923229954_))))
                 (_g229921230074_
                  (lambda (_g229923229960_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g229923229960_))
                        (let ((_e229927229962_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g229923229960_))))
                          (let ((_hd229928229965_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229927229962_)))
                                (_tl229929229967_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229927229962_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229929229967_))
                                (let ((_e229930229970_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229929229967_))))
                                  (let ((_hd229931229973_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229930229970_)))
                                        (_tl229932229975_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229930229970_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd229931229973_))
                                        (let ((_g236649_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd229931229973_
                                                  '0))))
                                          (begin
                                            (let ((_g236650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g236649_)
                                                         (##vector-length
                                                          _g236649_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g236650_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g236650_)))
                                            (let ((_target229933229978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g236649_
                                                      0)))
                                                  (_tl229935229980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g236649_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229935229980_))
                                                  (letrec ((_loop229936229983_
                                                            (lambda (_hd229934229986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr229940229988_
                             _hd229941229990_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd229934229986_))
                          (let ((_e229937229993_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd229934229986_))))
                            (let ((_lp-hd229938229996_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229937229993_)))
                                  (_lp-tl229939229998_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229937229993_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd229938229996_))
                                  (let ((_e229944230001_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd229938229996_))))
                                    (let ((_hd229945230004_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229944230001_)))
                                          (_tl229946230006_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229944230001_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl229946230006_))
                                          (let ((_e229947230009_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl229946230006_))))
                                            (let ((_hd229948230012_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229947230009_)))
                                                  (_tl229949230014_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229947230009_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229949230014_))
                                                  (let ((__tmp236652
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd229948230012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr229940229988_)))
                (__tmp236651
                 (let ()
                   (declare (not safe))
                   (cons _hd229945230004_ _hd229941229990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop229936229983_
                                                     _lp-tl229939229998_
                                                     __tmp236652
                                                     __tmp236651))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229922229957_
                                                     _g229923229960_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229922229957_
                                             _g229923229960_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229922229957_ _g229923229960_)))))
                          (let ((_expr229942230017_
                                 (reverse _expr229940229988_))
                                (_hd229943230019_ (reverse _hd229941229990_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229932229975_))
                                (let ((_e229950230022_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229932229975_))))
                                  (let ((_hd229951230025_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229950230022_)))
                                        (_tl229952230027_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229950230022_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229952230027_))
                                        ((lambda (_L230030_
                                                  _L230031_
                                                  _L230032_)
                                           (for-each
                                            _collect-e229920_
                                            (let ((__tmp236653
                                                   (lambda (_g230052230055_
                                                            _g230053230057_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230052230055_
                                                             _g230053230057_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236653
                                                      '()
                                                      _L230032_))
                                            (let ((__tmp236654
                                                   (lambda (_g230059230062_
                                                            _g230060230064_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230059230062_
                                                             _g230060230064_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236654
                                                      '()
                                                      _L230031_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp236655
                                                   (lambda (_g230066230069_
                                                            _g230067230071_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g230066230069_
                                                             _g230067230071_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp236655
                                                      '()
                                                      _L230031_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L230030_)))
                                         _hd229951230025_
                                         _expr229942230017_
                                         _hd229943230019_)
                                        (let ()
                                          (declare (not safe))
                                          (_g229922229957_ _g229923229960_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229922229957_ _g229923229960_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop229936229983_
                                                       _target229933229978_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229922229957_
                                                     _g229923229960_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g229922229957_ _g229923229960_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229922229957_ _g229923229960_)))))
                        (let ()
                          (declare (not safe))
                          (_g229922229957_ _g229923229960_))))))
            (declare (not safe))
            (_g229921230074_ _stx229918_)))))
    (define gxc#collect-type-call%
      (lambda (_stx229410_)
        (let* ((___stx234659234660_ _stx229410_)
               (_g229414229529_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234659234660_)))))
          (let ((___kont234661234662_
                 (lambda (_L229868_ _L229869_ _L229870_ _L229871_ _L229872_)
                   (let ((__tmp236659
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229871_)))
                         (__tmp236658
                          (let () (declare (not safe)) (gx#stx-e _L229870_)))
                         (__tmp236657
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229869_)))
                         (__tmp236656
                          (let () (declare (not safe)) (gx#stx-e _L229868_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp236659
                      __tmp236658
                      __tmp236657
                      __tmp236656))))
                (___kont234663234664_
                 (lambda (_L229696_ _L229697_ _L229698_ _L229699_)
                   (let ((__tmp236662
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229698_)))
                         (__tmp236661
                          (let () (declare (not safe)) (gx#stx-e _L229697_)))
                         (__tmp236660
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229696_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp236662
                      __tmp236661
                      __tmp236660
                      '#f))))
                (___kont234665234666_
                 (lambda (_L229566_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp236663
                           (lambda (_g229579229582_ _g229580229584_)
                             (let ()
                               (declare (not safe))
                               (cons _g229579229582_ _g229580229584_)))))
                      (declare (not safe))
                      (foldr1 __tmp236663 '() _L229566_))))))
            (let* ((___match234916234917_
                    (lambda (_e229513229534_
                             _hd229514229537_
                             _tl229515229539_
                             ___splice234667234668_
                             _target229516229542_
                             _tl229518229544_)
                      (letrec ((_loop229519229547_
                                (lambda (_hd229517229550_ _expr229523229552_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd229517229550_))
                                      (let ((_e229520229555_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd229517229550_))))
                                        (let ((_lp-tl229522229560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229520229555_)))
                                              (_lp-hd229521229558_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229520229555_))))
                                          (let ((__tmp236664
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd229521229558_
                                                         _expr229523229552_))))
                                            (declare (not safe))
                                            (_loop229519229547_
                                             _lp-tl229522229560_
                                             __tmp236664))))
                                      (let ((_expr229524229563_
                                             (reverse _expr229523229552_)))
                                        (___kont234665234666_
                                         _expr229524229563_))))))
                        (let ()
                          (declare (not safe))
                          (_loop229519229547_ _target229516229542_ '())))))
                   (___match234796234797_
                    (lambda (_e229421229740_
                             _hd229422229743_
                             _tl229423229745_
                             _e229424229748_
                             _hd229425229751_
                             _tl229426229753_
                             _e229427229756_
                             _hd229428229759_
                             _tl229429229761_
                             _e229430229764_
                             _hd229431229767_
                             _tl229432229769_
                             _e229433229772_
                             _hd229434229775_
                             _tl229435229777_
                             _e229436229780_
                             _hd229437229783_
                             _tl229438229785_
                             _e229439229788_
                             _hd229440229791_
                             _tl229441229793_
                             _e229442229796_
                             _hd229443229799_
                             _tl229444229801_
                             _e229445229804_
                             _hd229446229807_
                             _tl229447229809_
                             _e229448229812_
                             _hd229449229815_
                             _tl229450229817_
                             _e229451229820_
                             _hd229452229823_
                             _tl229453229825_
                             _e229454229828_
                             _hd229455229831_
                             _tl229456229833_
                             _e229457229836_
                             _hd229458229839_
                             _tl229459229841_
                             _e229460229844_
                             _hd229461229847_
                             _tl229462229849_
                             _e229463229852_
                             _hd229464229855_
                             _tl229465229857_
                             _e229466229860_
                             _hd229467229863_
                             _tl229468229865_)
                      (let ((_L229868_ _hd229467229863_)
                            (_L229869_ _hd229458229839_)
                            (_L229870_ _hd229449229815_)
                            (_L229871_ _hd229440229791_)
                            (_L229872_ _hd229431229767_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L229872_
                               'bind-method!))
                            (___kont234661234662_
                             _L229868_
                             _L229869_
                             _L229870_
                             _L229871_
                             _L229872_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl229423229745_))
                                (let ((___splice234667234668_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl229423229745_
                                          '0))))
                                  (let ((_tl229518229544_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice234667234668_
                                            '1)))
                                        (_target229516229542_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice234667234668_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229518229544_))
                                        (___match234916234917_
                                         _e229421229740_
                                         _hd229422229743_
                                         _tl229423229745_
                                         ___splice234667234668_
                                         _target229516229542_
                                         _tl229518229544_)
                                        (let ()
                                          (declare (not safe))
                                          (_g229414229529_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229414229529_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234659234660_))
                  (let ((_e229421229740_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234659234660_))))
                    (let ((_tl229423229745_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229421229740_)))
                          (_hd229422229743_
                           (let ()
                             (declare (not safe))
                             (##car _e229421229740_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229423229745_))
                          (let ((_e229424229748_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229423229745_))))
                            (let ((_tl229426229753_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229424229748_)))
                                  (_hd229425229751_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229424229748_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229425229751_))
                                  (let ((_e229427229756_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229425229751_))))
                                    (let ((_tl229429229761_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229427229756_)))
                                          (_hd229428229759_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229427229756_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd229428229759_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd229428229759_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229429229761_))
                                                  (let ((_e229430229764_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229429229761_))))
                                                    (let ((_tl229432229769_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229430229764_)))
                                                          (_hd229431229767_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229430229764_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229432229769_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229426229753_))
                      (let ((_e229433229772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229426229753_))))
                        (let ((_tl229435229777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229433229772_)))
                              (_hd229434229775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229433229772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229434229775_))
                              (let ((_e229436229780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229434229775_))))
                                (let ((_tl229438229785_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229436229780_)))
                                      (_hd229437229783_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229436229780_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd229437229783_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd229437229783_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229438229785_))
                                              (let ((_e229439229788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229438229785_))))
                                                (let ((_tl229441229793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229439229788_)))
                                                      (_hd229440229791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229439229788_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229441229793_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl229435229777_))
                                                          (let ((_e229442229796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl229435229777_))))
                    (let ((_tl229444229801_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229442229796_)))
                          (_hd229443229799_
                           (let ()
                             (declare (not safe))
                             (##car _e229442229796_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd229443229799_))
                          (let ((_e229445229804_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd229443229799_))))
                            (let ((_tl229447229809_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229445229804_)))
                                  (_hd229446229807_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229445229804_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd229446229807_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd229446229807_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl229447229809_))
                                          (let ((_e229448229812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl229447229809_))))
                                            (let ((_tl229450229817_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229448229812_)))
                                                  (_hd229449229815_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229448229812_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229450229817_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229444229801_))
                                                      (let ((_e229451229820_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229444229801_))))
                (let ((_tl229453229825_
                       (let () (declare (not safe)) (##cdr _e229451229820_)))
                      (_hd229452229823_
                       (let () (declare (not safe)) (##car _e229451229820_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229452229823_))
                      (let ((_e229454229828_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229452229823_))))
                        (let ((_tl229456229833_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229454229828_)))
                              (_hd229455229831_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229454229828_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd229455229831_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd229455229831_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229456229833_))
                                      (let ((_e229457229836_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229456229833_))))
                                        (let ((_tl229459229841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229457229836_)))
                                              (_hd229458229839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229457229836_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229459229841_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229453229825_))
                                                  (let ((_e229460229844_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229453229825_))))
                                                    (let ((_tl229462229849_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229460229844_)))
                                                          (_hd229461229847_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229460229844_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd229461229847_))
                                                          (let ((_e229463229852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd229461229847_))))
                    (let ((_tl229465229857_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229463229852_)))
                          (_hd229464229855_
                           (let ()
                             (declare (not safe))
                             (##car _e229463229852_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd229464229855_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd229464229855_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229465229857_))
                                  (let ((_e229466229860_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229465229857_))))
                                    (let ((_tl229468229865_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229466229860_)))
                                          (_hd229467229863_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229466229860_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229468229865_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229462229849_))
                                              (___match234796234797_
                                               _e229421229740_
                                               _hd229422229743_
                                               _tl229423229745_
                                               _e229424229748_
                                               _hd229425229751_
                                               _tl229426229753_
                                               _e229427229756_
                                               _hd229428229759_
                                               _tl229429229761_
                                               _e229430229764_
                                               _hd229431229767_
                                               _tl229432229769_
                                               _e229433229772_
                                               _hd229434229775_
                                               _tl229435229777_
                                               _e229436229780_
                                               _hd229437229783_
                                               _tl229438229785_
                                               _e229439229788_
                                               _hd229440229791_
                                               _tl229441229793_
                                               _e229442229796_
                                               _hd229443229799_
                                               _tl229444229801_
                                               _e229445229804_
                                               _hd229446229807_
                                               _tl229447229809_
                                               _e229448229812_
                                               _hd229449229815_
                                               _tl229450229817_
                                               _e229451229820_
                                               _hd229452229823_
                                               _tl229453229825_
                                               _e229454229828_
                                               _hd229455229831_
                                               _tl229456229833_
                                               _e229457229836_
                                               _hd229458229839_
                                               _tl229459229841_
                                               _e229460229844_
                                               _hd229461229847_
                                               _tl229462229849_
                                               _e229463229852_
                                               _hd229464229855_
                                               _tl229465229857_
                                               _e229466229860_
                                               _hd229467229863_
                                               _tl229468229865_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229423229745_))
                                                  (let ((___splice234667234668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229423229745_
                                                            '0))))
                                                    (let ((_tl229518229544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234667234668_
                                                              '1)))
                                                          (_target229516229542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234667234668_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229518229544_))
                                                          (___match234916234917_
                                                           _e229421229740_
                                                           _hd229422229743_
                                                           _tl229423229745_
                                                           ___splice234667234668_
                                                           _target229516229542_
                                                           _tl229518229544_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229414229529_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229414229529_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229423229745_))
                                              (let ((___splice234667234668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229423229745_
                                                        '0))))
                                                (let ((_tl229518229544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234667234668_
                                                          '1)))
                                                      (_target229516229542_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234667234668_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229518229544_))
                                                      (___match234916234917_
                                                       _e229421229740_
                                                       _hd229422229743_
                                                       _tl229423229745_
                                                       ___splice234667234668_
                                                       _target229516229542_
                                                       _tl229518229544_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229414229529_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229414229529_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229423229745_))
                                      (let ((___splice234667234668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229423229745_
                                                '0))))
                                        (let ((_tl229518229544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234667234668_
                                                  '1)))
                                              (_target229516229542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234667234668_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229518229544_))
                                              (___match234916234917_
                                               _e229421229740_
                                               _hd229422229743_
                                               _tl229423229745_
                                               ___splice234667234668_
                                               _target229516229542_
                                               _tl229518229544_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229414229529_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229414229529_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229423229745_))
                                  (let ((___splice234667234668_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229423229745_
                                            '0))))
                                    (let ((_tl229518229544_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234667234668_
                                              '1)))
                                          (_target229516229542_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234667234668_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229518229544_))
                                          (___match234916234917_
                                           _e229421229740_
                                           _hd229422229743_
                                           _tl229423229745_
                                           ___splice234667234668_
                                           _target229516229542_
                                           _tl229518229544_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229414229529_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229414229529_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229423229745_))
                              (let ((___splice234667234668_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229423229745_
                                        '0))))
                                (let ((_tl229518229544_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234667234668_
                                          '1)))
                                      (_target229516229542_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234667234668_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229518229544_))
                                      (___match234916234917_
                                       _e229421229740_
                                       _hd229422229743_
                                       _tl229423229745_
                                       ___splice234667234668_
                                       _target229516229542_
                                       _tl229518229544_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229414229529_)))))
                              (let ()
                                (declare (not safe))
                                (_g229414229529_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229423229745_))
                      (let ((___splice234667234668_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229423229745_ '0))))
                        (let ((_tl229518229544_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234667234668_ '1)))
                              (_target229516229542_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234667234668_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229518229544_))
                              (___match234916234917_
                               _e229421229740_
                               _hd229422229743_
                               _tl229423229745_
                               ___splice234667234668_
                               _target229516229542_
                               _tl229518229544_)
                              (let ()
                                (declare (not safe))
                                (_g229414229529_)))))
                      (let () (declare (not safe)) (_g229414229529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229453229825_))
                                                      (if (let ((__tmp236665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp236665 'bind-method!))
                  (let ((_L229696_ _hd229458229839_)
                        (_L229697_ _hd229449229815_)
                        (_L229698_ _hd229440229791_)
                        (_L229699_ _hd229431229767_))
                    (___kont234663234664_
                     _L229696_
                     _L229697_
                     _L229698_
                     _L229699_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229423229745_))
                      (let ((___splice234667234668_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229423229745_ '0))))
                        (let ((_tl229518229544_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234667234668_ '1)))
                              (_target229516229542_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234667234668_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229518229544_))
                              (___match234916234917_
                               _e229421229740_
                               _hd229422229743_
                               _tl229423229745_
                               ___splice234667234668_
                               _target229516229542_
                               _tl229518229544_)
                              (let ()
                                (declare (not safe))
                                (_g229414229529_)))))
                      (let () (declare (not safe)) (_g229414229529_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229423229745_))
                  (let ((___splice234667234668_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229423229745_ '0))))
                    (let ((_tl229518229544_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234667234668_ '1)))
                          (_target229516229542_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234667234668_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229518229544_))
                          (___match234916234917_
                           _e229421229740_
                           _hd229422229743_
                           _tl229423229745_
                           ___splice234667234668_
                           _target229516229542_
                           _tl229518229544_)
                          (let () (declare (not safe)) (_g229414229529_)))))
                  (let () (declare (not safe)) (_g229414229529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229423229745_))
                                                  (let ((___splice234667234668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229423229745_
                                                            '0))))
                                                    (let ((_tl229518229544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234667234668_
                                                              '1)))
                                                          (_target229516229542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234667234668_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229518229544_))
                                                          (___match234916234917_
                                                           _e229421229740_
                                                           _hd229422229743_
                                                           _tl229423229745_
                                                           ___splice234667234668_
                                                           _target229516229542_
                                                           _tl229518229544_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229414229529_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229414229529_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229423229745_))
                                          (let ((___splice234667234668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229423229745_
                                                    '0))))
                                            (let ((_tl229518229544_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234667234668_
                                                      '1)))
                                                  (_target229516229542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234667234668_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229518229544_))
                                                  (___match234916234917_
                                                   _e229421229740_
                                                   _hd229422229743_
                                                   _tl229423229745_
                                                   ___splice234667234668_
                                                   _target229516229542_
                                                   _tl229518229544_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229414229529_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229414229529_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229423229745_))
                                      (let ((___splice234667234668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229423229745_
                                                '0))))
                                        (let ((_tl229518229544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234667234668_
                                                  '1)))
                                              (_target229516229542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234667234668_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229518229544_))
                                              (___match234916234917_
                                               _e229421229740_
                                               _hd229422229743_
                                               _tl229423229745_
                                               ___splice234667234668_
                                               _target229516229542_
                                               _tl229518229544_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229414229529_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229414229529_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229423229745_))
                                  (let ((___splice234667234668_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229423229745_
                                            '0))))
                                    (let ((_tl229518229544_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234667234668_
                                              '1)))
                                          (_target229516229542_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234667234668_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229518229544_))
                                          (___match234916234917_
                                           _e229421229740_
                                           _hd229422229743_
                                           _tl229423229745_
                                           ___splice234667234668_
                                           _target229516229542_
                                           _tl229518229544_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229414229529_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229414229529_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl229423229745_))
                          (let ((___splice234667234668_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl229423229745_
                                    '0))))
                            (let ((_tl229518229544_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice234667234668_ '1)))
                                  (_target229516229542_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice234667234668_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229518229544_))
                                  (___match234916234917_
                                   _e229421229740_
                                   _hd229422229743_
                                   _tl229423229745_
                                   ___splice234667234668_
                                   _target229516229542_
                                   _tl229518229544_)
                                  (let ()
                                    (declare (not safe))
                                    (_g229414229529_)))))
                          (let () (declare (not safe)) (_g229414229529_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229423229745_))
                  (let ((___splice234667234668_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229423229745_ '0))))
                    (let ((_tl229518229544_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234667234668_ '1)))
                          (_target229516229542_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234667234668_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229518229544_))
                          (___match234916234917_
                           _e229421229740_
                           _hd229422229743_
                           _tl229423229745_
                           ___splice234667234668_
                           _target229516229542_
                           _tl229518229544_)
                          (let () (declare (not safe)) (_g229414229529_)))))
                  (let () (declare (not safe)) (_g229414229529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl229423229745_))
                                                      (let ((___splice234667234668_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl229423229745_ '0))))
                (let ((_tl229518229544_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234667234668_ '1)))
                      (_target229516229542_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234667234668_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl229518229544_))
                      (___match234916234917_
                       _e229421229740_
                       _hd229422229743_
                       _tl229423229745_
                       ___splice234667234668_
                       _target229516229542_
                       _tl229518229544_)
                      (let () (declare (not safe)) (_g229414229529_)))))
              (let () (declare (not safe)) (_g229414229529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229423229745_))
                                              (let ((___splice234667234668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229423229745_
                                                        '0))))
                                                (let ((_tl229518229544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234667234668_
                                                          '1)))
                                                      (_target229516229542_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234667234668_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229518229544_))
                                                      (___match234916234917_
                                                       _e229421229740_
                                                       _hd229422229743_
                                                       _tl229423229745_
                                                       ___splice234667234668_
                                                       _target229516229542_
                                                       _tl229518229544_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229414229529_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229414229529_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229423229745_))
                                          (let ((___splice234667234668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229423229745_
                                                    '0))))
                                            (let ((_tl229518229544_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234667234668_
                                                      '1)))
                                                  (_target229516229542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234667234668_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229518229544_))
                                                  (___match234916234917_
                                                   _e229421229740_
                                                   _hd229422229743_
                                                   _tl229423229745_
                                                   ___splice234667234668_
                                                   _target229516229542_
                                                   _tl229518229544_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229414229529_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229414229529_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229423229745_))
                                      (let ((___splice234667234668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229423229745_
                                                '0))))
                                        (let ((_tl229518229544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234667234668_
                                                  '1)))
                                              (_target229516229542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234667234668_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229518229544_))
                                              (___match234916234917_
                                               _e229421229740_
                                               _hd229422229743_
                                               _tl229423229745_
                                               ___splice234667234668_
                                               _target229516229542_
                                               _tl229518229544_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229414229529_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229414229529_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229423229745_))
                              (let ((___splice234667234668_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229423229745_
                                        '0))))
                                (let ((_tl229518229544_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234667234668_
                                          '1)))
                                      (_target229516229542_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234667234668_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229518229544_))
                                      (___match234916234917_
                                       _e229421229740_
                                       _hd229422229743_
                                       _tl229423229745_
                                       ___splice234667234668_
                                       _target229516229542_
                                       _tl229518229544_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229414229529_)))))
                              (let ()
                                (declare (not safe))
                                (_g229414229529_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229423229745_))
                      (let ((___splice234667234668_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229423229745_ '0))))
                        (let ((_tl229518229544_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234667234668_ '1)))
                              (_target229516229542_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234667234668_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229518229544_))
                              (___match234916234917_
                               _e229421229740_
                               _hd229422229743_
                               _tl229423229745_
                               ___splice234667234668_
                               _target229516229542_
                               _tl229518229544_)
                              (let ()
                                (declare (not safe))
                                (_g229414229529_)))))
                      (let () (declare (not safe)) (_g229414229529_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl229423229745_))
                  (let ((___splice234667234668_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl229423229745_ '0))))
                    (let ((_tl229518229544_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234667234668_ '1)))
                          (_target229516229542_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice234667234668_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229518229544_))
                          (___match234916234917_
                           _e229421229740_
                           _hd229422229743_
                           _tl229423229745_
                           ___splice234667234668_
                           _target229516229542_
                           _tl229518229544_)
                          (let () (declare (not safe)) (_g229414229529_)))))
                  (let () (declare (not safe)) (_g229414229529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229423229745_))
                                                  (let ((___splice234667234668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229423229745_
                                                            '0))))
                                                    (let ((_tl229518229544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234667234668_
                                                              '1)))
                                                          (_target229516229542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234667234668_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229518229544_))
                                                          (___match234916234917_
                                                           _e229421229740_
                                                           _hd229422229743_
                                                           _tl229423229745_
                                                           ___splice234667234668_
                                                           _target229516229542_
                                                           _tl229518229544_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229414229529_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229414229529_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229423229745_))
                                              (let ((___splice234667234668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229423229745_
                                                        '0))))
                                                (let ((_tl229518229544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234667234668_
                                                          '1)))
                                                      (_target229516229542_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234667234668_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229518229544_))
                                                      (___match234916234917_
                                                       _e229421229740_
                                                       _hd229422229743_
                                                       _tl229423229745_
                                                       ___splice234667234668_
                                                       _target229516229542_
                                                       _tl229518229544_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229414229529_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229414229529_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl229423229745_))
                                          (let ((___splice234667234668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl229423229745_
                                                    '0))))
                                            (let ((_tl229518229544_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234667234668_
                                                      '1)))
                                                  (_target229516229542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice234667234668_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229518229544_))
                                                  (___match234916234917_
                                                   _e229421229740_
                                                   _hd229422229743_
                                                   _tl229423229745_
                                                   ___splice234667234668_
                                                   _target229516229542_
                                                   _tl229518229544_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229414229529_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229414229529_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl229423229745_))
                                  (let ((___splice234667234668_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl229423229745_
                                            '0))))
                                    (let ((_tl229518229544_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234667234668_
                                              '1)))
                                          (_target229516229542_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice234667234668_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229518229544_))
                                          (___match234916234917_
                                           _e229421229740_
                                           _hd229422229743_
                                           _tl229423229745_
                                           ___splice234667234668_
                                           _target229516229542_
                                           _tl229518229544_)
                                          (let ()
                                            (declare (not safe))
                                            (_g229414229529_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229414229529_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl229423229745_))
                          (let ((___splice234667234668_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl229423229745_
                                    '0))))
                            (let ((_tl229518229544_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice234667234668_ '1)))
                                  (_target229516229542_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice234667234668_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229518229544_))
                                  (___match234916234917_
                                   _e229421229740_
                                   _hd229422229743_
                                   _tl229423229745_
                                   ___splice234667234668_
                                   _target229516229542_
                                   _tl229518229544_)
                                  (let ()
                                    (declare (not safe))
                                    (_g229414229529_)))))
                          (let () (declare (not safe)) (_g229414229529_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl229423229745_))
                      (let ((___splice234667234668_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl229423229745_ '0))))
                        (let ((_tl229518229544_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234667234668_ '1)))
                              (_target229516229542_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice234667234668_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229518229544_))
                              (___match234916234917_
                               _e229421229740_
                               _hd229422229743_
                               _tl229423229745_
                               ___splice234667234668_
                               _target229516229542_
                               _tl229518229544_)
                              (let ()
                                (declare (not safe))
                                (_g229414229529_)))))
                      (let () (declare (not safe)) (_g229414229529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl229423229745_))
                                                      (let ((___splice234667234668_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl229423229745_ '0))))
                (let ((_tl229518229544_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234667234668_ '1)))
                      (_target229516229542_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice234667234668_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl229518229544_))
                      (___match234916234917_
                       _e229421229740_
                       _hd229422229743_
                       _tl229423229745_
                       ___splice234667234668_
                       _target229516229542_
                       _tl229518229544_)
                      (let () (declare (not safe)) (_g229414229529_)))))
              (let () (declare (not safe)) (_g229414229529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl229423229745_))
                                                  (let ((___splice234667234668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl229423229745_
                                                            '0))))
                                                    (let ((_tl229518229544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234667234668_
                                                              '1)))
                                                          (_target229516229542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234667234668_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229518229544_))
                                                          (___match234916234917_
                                                           _e229421229740_
                                                           _hd229422229743_
                                                           _tl229423229745_
                                                           ___splice234667234668_
                                                           _target229516229542_
                                                           _tl229518229544_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g229414229529_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229414229529_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl229423229745_))
                                              (let ((___splice234667234668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl229423229745_
                                                        '0))))
                                                (let ((_tl229518229544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234667234668_
                                                          '1)))
                                                      (_target229516229542_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice234667234668_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229518229544_))
                                                      (___match234916234917_
                                                       _e229421229740_
                                                       _hd229422229743_
                                                       _tl229423229745_
                                                       ___splice234667234668_
                                                       _target229516229542_
                                                       _tl229518229544_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g229414229529_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g229414229529_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl229423229745_))
                                      (let ((___splice234667234668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl229423229745_
                                                '0))))
                                        (let ((_tl229518229544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234667234668_
                                                  '1)))
                                              (_target229516229542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice234667234668_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229518229544_))
                                              (___match234916234917_
                                               _e229421229740_
                                               _hd229422229743_
                                               _tl229423229745_
                                               ___splice234667234668_
                                               _target229516229542_
                                               _tl229518229544_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229414229529_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229414229529_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229423229745_))
                              (let ((___splice234667234668_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229423229745_
                                        '0))))
                                (let ((_tl229518229544_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234667234668_
                                          '1)))
                                      (_target229516229542_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice234667234668_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229518229544_))
                                      (___match234916234917_
                                       _e229421229740_
                                       _hd229422229743_
                                       _tl229423229745_
                                       ___splice234667234668_
                                       _target229516229542_
                                       _tl229518229544_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229414229529_)))))
                              (let ()
                                (declare (not safe))
                                (_g229414229529_))))))
                  (let () (declare (not safe)) (_g229414229529_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx229350_)
        (let* ((___stx234919234920_ _stx229350_)
               (_g229353229366_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234919234920_)))))
          (let ((___kont234921234922_
                 (lambda (_L229394_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L229394_))))
                (___kont234923234924_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx234919234920_))
                (let ((_e229356229378_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx234919234920_))))
                  (let ((_tl229358229383_
                         (let () (declare (not safe)) (##cdr _e229356229378_)))
                        (_hd229357229381_
                         (let ()
                           (declare (not safe))
                           (##car _e229356229378_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229358229383_))
                        (let ((_e229359229386_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229358229383_))))
                          (let ((_tl229361229391_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229359229386_)))
                                (_hd229360229389_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229359229386_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229361229391_))
                                (___kont234921234922_ _hd229360229389_)
                                (___kont234923234924_))))
                        (___kont234923234924_))))
                (___kont234923234924_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx229230_)
        (let* ((_g229232229249_
                (lambda (_g229233229246_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229233229246_))))
               (_g229231229347_
                (lambda (_g229233229252_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229233229252_))
                      (let ((_e229236229254_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229233229252_))))
                        (let ((_hd229237229257_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229236229254_)))
                              (_tl229238229259_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229236229254_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229238229259_))
                              (let ((_e229239229262_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229238229259_))))
                                (let ((_hd229240229265_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229239229262_)))
                                      (_tl229241229267_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229239229262_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229241229267_))
                                      (let ((_e229242229270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229241229267_))))
                                        (let ((_hd229243229273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229242229270_)))
                                              (_tl229244229275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229242229270_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229244229275_))
                                              ((lambda (_L229278_ _L229279_)
                                                 (let* ((___stx234941234942_
                                                         _L229279_)
                                                        (_g229295229306_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx234941234942_)))))
                                                   (let ((___kont234943234944_
                                                          (lambda (_L229326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L229327_)
                    (let ((_$e229339_
                           (let ((__tmp236666
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L229327_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp236666))))
                      (if _$e229339_
                          ((lambda (_type-e229342_)
                             (_type-e229342_ _stx229230_ _L229279_))
                           _$e229339_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L229278_))))))
                 (___kont234945234946_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L229278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match234952234953_
                                                            (lambda (_e229299229318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd229300229321_
                             _tl229301229323_)
                      (let ((_L229326_ _tl229301229323_)
                            (_L229327_ _hd229300229321_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L229327_))
                            (___kont234943234944_ _L229326_ _L229327_)
                            (___kont234945234946_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx234941234942_))
                   (let ((_e229299229318_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx234941234942_))))
                     (let ((_tl229301229323_
                            (let ()
                              (declare (not safe))
                              (##cdr _e229299229318_)))
                           (_hd229300229321_
                            (let ()
                              (declare (not safe))
                              (##car _e229299229318_))))
                       (___match234952234953_
                        _e229299229318_
                        _hd229300229321_
                        _tl229301229323_)))
                   (___kont234945234946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd229243229273_
                                               _hd229240229265_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229232229249_
                                                 _g229233229252_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229232229249_ _g229233229252_)))))
                              (let ()
                                (declare (not safe))
                                (_g229232229249_ _g229233229252_)))))
                      (let ()
                        (declare (not safe))
                        (_g229232229249_ _g229233229252_))))))
          (declare (not safe))
          (_g229231229347_ _stx229230_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx229074_ _ann229075_)
        (let* ((_g229077229114_
                (lambda (_g229078229111_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229078229111_))))
               (_g229076229227_
                (lambda (_g229078229117_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229078229117_))
                      (let ((_e229086229119_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229078229117_))))
                        (let ((_hd229087229122_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229086229119_)))
                              (_tl229088229124_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229086229119_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229088229124_))
                              (let ((_e229089229127_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229088229124_))))
                                (let ((_hd229090229130_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229089229127_)))
                                      (_tl229091229132_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229089229127_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229091229132_))
                                      (let ((_e229092229135_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229091229132_))))
                                        (let ((_hd229093229138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229092229135_)))
                                              (_tl229094229140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229092229135_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229094229140_))
                                              (let ((_e229095229143_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229094229140_))))
                                                (let ((_hd229096229146_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229095229143_)))
                                                      (_tl229097229148_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229095229143_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229097229148_))
                                                      (let ((_e229098229151_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229097229148_))))
                (let ((_hd229099229154_
                       (let () (declare (not safe)) (##car _e229098229151_)))
                      (_tl229100229156_
                       (let () (declare (not safe)) (##cdr _e229098229151_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl229100229156_))
                      (let ((_e229101229159_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229100229156_))))
                        (let ((_hd229102229162_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229101229159_)))
                              (_tl229103229164_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229101229159_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229103229164_))
                              (let ((_e229104229167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229103229164_))))
                                (let ((_hd229105229170_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229104229167_)))
                                      (_tl229106229172_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229104229167_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229106229172_))
                                      (let ((_e229107229175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229106229172_))))
                                        (let ((_hd229108229178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229107229175_)))
                                              (_tl229109229180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229107229175_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229109229180_))
                                              ((lambda (_L229183_
                                                        _L229184_
                                                        _L229185_
                                                        _L229186_
                                                        _L229187_
                                                        _L229188_
                                                        _L229189_)
                                                 (let ((_type-id229219_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229189_)))
                                                       (_super229220_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L229188_)))
                                                       (_slots229221_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L229187_)))
                                                       (_ctor-method229222_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229186_)))
                                                       (_struct?229223_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229185_)))
                                                       (_final?229224_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229184_)))
                                                       (_metaclass229225_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L229183_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L229183_))
                                                            '#f)))
                                                   (let ((__obj236624
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure
                                                             gxc#!class::t
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj236624
                                                      _type-id229219_
                                                      _super229220_
                                                      _slots229221_
                                                      _ctor-method229222_
                                                      _struct?229223_
                                                      _final?229224_
                                                      _metaclass229225_)
                                                     __obj236624)))
                                               _hd229108229178_
                                               _hd229105229170_
                                               _hd229102229162_
                                               _hd229099229154_
                                               _hd229096229146_
                                               _hd229093229138_
                                               _hd229090229130_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229077229114_
                                                 _g229078229117_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229077229114_ _g229078229117_)))))
                              (let ()
                                (declare (not safe))
                                (_g229077229114_ _g229078229117_)))))
                      (let ()
                        (declare (not safe))
                        (_g229077229114_ _g229078229117_)))))
              (let ()
                (declare (not safe))
                (_g229077229114_ _g229078229117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229077229114_
                                                 _g229078229117_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229077229114_ _g229078229117_)))))
                              (let ()
                                (declare (not safe))
                                (_g229077229114_ _g229078229117_)))))
                      (let ()
                        (declare (not safe))
                        (_g229077229114_ _g229078229117_))))))
          (declare (not safe))
          (_g229076229227_ _ann229075_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx229022_ _ann229023_)
        (let* ((_g229025229038_
                (lambda (_g229026229035_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229026229035_))))
               (_g229024229071_
                (lambda (_g229026229041_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229026229041_))
                      (let ((_e229028229043_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229026229041_))))
                        (let ((_hd229029229046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229028229043_)))
                              (_tl229030229048_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229028229043_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229030229048_))
                              (let ((_e229031229051_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229030229048_))))
                                (let ((_hd229032229054_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229031229051_)))
                                      (_tl229033229056_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229031229051_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229033229056_))
                                      ((lambda (_L229059_)
                                         (let ((__tmp236667
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229059_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp236667)))
                                       _hd229032229054_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229025229038_ _g229026229041_)))))
                              (let ()
                                (declare (not safe))
                                (_g229025229038_ _g229026229041_)))))
                      (let ()
                        (declare (not safe))
                        (_g229025229038_ _g229026229041_))))))
          (declare (not safe))
          (_g229024229071_ _ann229023_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx228970_ _ann228971_)
        (let* ((_g228973228986_
                (lambda (_g228974228983_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228974228983_))))
               (_g228972229019_
                (lambda (_g228974228989_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228974228989_))
                      (let ((_e228976228991_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228974228989_))))
                        (let ((_hd228977228994_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228976228991_)))
                              (_tl228978228996_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228976228991_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228978228996_))
                              (let ((_e228979228999_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228978228996_))))
                                (let ((_hd228980229002_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228979228999_)))
                                      (_tl228981229004_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228979228999_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228981229004_))
                                      ((lambda (_L229007_)
                                         (let ((__tmp236668
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229007_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp236668)))
                                       _hd228980229002_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228973228986_ _g228974228989_)))))
                              (let ()
                                (declare (not safe))
                                (_g228973228986_ _g228974228989_)))))
                      (let ()
                        (declare (not safe))
                        (_g228973228986_ _g228974228989_))))))
          (declare (not safe))
          (_g228972229019_ _ann228971_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx228886_ _ann228887_)
        (let* ((_g228889228910_
                (lambda (_g228890228907_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228890228907_))))
               (_g228888228967_
                (lambda (_g228890228913_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228890228913_))
                      (let ((_e228894228915_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228890228913_))))
                        (let ((_hd228895228918_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228894228915_)))
                              (_tl228896228920_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228894228915_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228896228920_))
                              (let ((_e228897228923_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228896228920_))))
                                (let ((_hd228898228926_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228897228923_)))
                                      (_tl228899228928_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228897228923_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228899228928_))
                                      (let ((_e228900228931_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228899228928_))))
                                        (let ((_hd228901228934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228900228931_)))
                                              (_tl228902228936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228900228931_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228902228936_))
                                              (let ((_e228903228939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228902228936_))))
                                                (let ((_hd228904228942_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228903228939_)))
                                                      (_tl228905228944_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228903228939_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228905228944_))
                                                      ((lambda (_L228947_
                                                                _L228948_
                                                                _L228949_)
                                                         (let ((__tmp236671
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L228949_)))
                       (__tmp236670
                        (let () (declare (not safe)) (gx#stx-e _L228948_)))
                       (__tmp236669
                        (let () (declare (not safe)) (gx#stx-e _L228947_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp236671
                    __tmp236670
                    __tmp236669)))
               _hd228904228942_
               _hd228901228934_
               _hd228898228926_)
              (let ()
                (declare (not safe))
                (_g228889228910_ _g228890228913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g228889228910_
                                                 _g228890228913_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228889228910_ _g228890228913_)))))
                              (let ()
                                (declare (not safe))
                                (_g228889228910_ _g228890228913_)))))
                      (let ()
                        (declare (not safe))
                        (_g228889228910_ _g228890228913_))))))
          (declare (not safe))
          (_g228888228967_ _ann228887_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx228802_ _ann228803_)
        (let* ((_g228805228826_
                (lambda (_g228806228823_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228806228823_))))
               (_g228804228883_
                (lambda (_g228806228829_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228806228829_))
                      (let ((_e228810228831_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228806228829_))))
                        (let ((_hd228811228834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228810228831_)))
                              (_tl228812228836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228810228831_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228812228836_))
                              (let ((_e228813228839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228812228836_))))
                                (let ((_hd228814228842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228813228839_)))
                                      (_tl228815228844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228813228839_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228815228844_))
                                      (let ((_e228816228847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228815228844_))))
                                        (let ((_hd228817228850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228816228847_)))
                                              (_tl228818228852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228816228847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228818228852_))
                                              (let ((_e228819228855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228818228852_))))
                                                (let ((_hd228820228858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228819228855_)))
                                                      (_tl228821228860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228819228855_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228821228860_))
                                                      ((lambda (_L228863_
                                                                _L228864_
                                                                _L228865_)
                                                         (let ((__tmp236674
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L228865_)))
                       (__tmp236673
                        (let () (declare (not safe)) (gx#stx-e _L228864_)))
                       (__tmp236672
                        (let () (declare (not safe)) (gx#stx-e _L228863_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp236674
                    __tmp236673
                    __tmp236672)))
               _hd228820228858_
               _hd228817228850_
               _hd228814228842_)
              (let ()
                (declare (not safe))
                (_g228805228826_ _g228806228829_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g228805228826_
                                                 _g228806228829_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228805228826_ _g228806228829_)))))
                              (let ()
                                (declare (not safe))
                                (_g228805228826_ _g228806228829_)))))
                      (let ()
                        (declare (not safe))
                        (_g228805228826_ _g228806228829_))))))
          (declare (not safe))
          (_g228804228883_ _ann228803_))))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.class
       gxc#basic-expression-type-annotation-mop.class))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.constructor
       gxc#basic-expression-type-annotation-mop.constructor))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.predicate
       gxc#basic-expression-type-annotation-mop.predicate))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.accessor
       gxc#basic-expression-type-annotation-mop.accessor))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.mutator
       gxc#basic-expression-type-annotation-mop.mutator))
    (define gxc#basic-expression-type-lambda%
      (lambda (_stx227922_)
        (let* ((___stx234955234956_ _stx227922_)
               (_g227928228124_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234955234956_)))))
          (let ((___kont234957234958_
                 (lambda (_L228790_)
                   (let ((__obj236625
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236625
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228790_))
                      '#f)
                     __obj236625)))
                (___kont234959234960_
                 (lambda (_L228717_
                          _L228718_
                          _L228719_
                          _L228720_
                          _L228721_
                          _L228722_)
                   (let* ((_tab228772_
                           (let () (declare (not safe)) (gx#stx-e _L228719_)))
                          (_keys228774_
                           (if _tab228772_
                               (let ((__tmp236675 (vector->list _tab228772_)))
                                 (declare (not safe))
                                 (filter values __tmp236675))
                               '#f)))
                     (let ((__tmp236676
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L228718_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys228774_
                        __tmp236676)))))
                (___kont234961234962_
                 (lambda (_L228450_
                          _L228451_
                          _L228452_
                          _L228453_
                          _L228454_
                          _L228455_
                          _L228456_
                          _L228457_
                          _L228458_
                          _L228459_)
                   (let ((__tmp236678
                          (map gx#stx-e
                               (let ((__tmp236679
                                      (lambda (_g228552228555_ _g228553228557_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g228552228555_
                                                _g228553228557_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp236679 '() _L228452_))))
                         (__tmp236677
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L228456_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp236678
                      __tmp236677))))
                (___kont234965234966_
                 (lambda (_L228160_)
                   (let ((__obj236626
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236626
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228160_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L228160_)))
                     __obj236626)))
                (___kont234967234968_
                 (lambda (_L228137_)
                   (let ((__obj236627
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj236627
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L228137_))
                      '#f)
                     __obj236627))))
            (let* ((___match235274235275_
                    (lambda (_e228113228152_ _hd228114228155_ _tl228115228157_)
                      (let ((_L228160_ _tl228115228157_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L228160_))
                            (___kont234965234966_ _L228160_)
                            (___kont234967234968_ _tl228115228157_)))))
                   (___match235268235269_
                    (lambda (_e228007228174_
                             _hd228008228177_
                             _tl228009228179_
                             _e228010228182_
                             _hd228011228185_
                             _tl228012228187_
                             _e228013228190_
                             _hd228014228193_
                             _tl228015228195_
                             _e228016228198_
                             _hd228017228201_
                             _tl228018228203_
                             _e228019228206_
                             _hd228020228209_
                             _tl228021228211_
                             _e228022228214_
                             _hd228023228217_
                             _tl228024228219_
                             _e228025228222_
                             _hd228026228225_
                             _tl228027228227_
                             _e228028228230_
                             _hd228029228233_
                             _tl228030228235_
                             _e228031228238_
                             _hd228032228241_
                             _tl228033228243_
                             _e228034228246_
                             _hd228035228249_
                             _tl228036228251_
                             _e228037228254_
                             _hd228038228257_
                             _tl228039228259_
                             _e228040228262_
                             _hd228041228265_
                             _tl228042228267_
                             _e228043228270_
                             _hd228044228273_
                             _tl228045228275_
                             _e228046228278_
                             _hd228047228281_
                             _tl228048228283_
                             ___splice234963234964_
                             _target228049228286_
                             _tl228051228288_
                             _e228064228291_
                             _hd228065228294_
                             _tl228066228296_
                             _e228067228299_
                             _hd228068228302_
                             _tl228069228304_
                             _e228070228307_
                             _hd228071228310_
                             _tl228072228312_)
                      (letrec ((_loop228052228315_
                                (lambda (_hd228050228318_
                                         _-absent-value228056228320_
                                         _key228057228322_
                                         _-xkwvar228058228324_
                                         _-hash-ref228059228326_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd228050228318_))
                                      (let ((_e228053228329_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd228050228318_))))
                                        (let ((_lp-tl228055228334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228053228329_)))
                                              (_lp-hd228054228332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228053228329_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd228054228332_))
                                              (let ((_e228073228337_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd228054228332_))))
                                                (let ((_tl228075228342_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228073228337_)))
                                                      (_hd228074228340_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228073228337_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd228074228340_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd228074228340_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228075228342_))
                      (let ((_e228076228345_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228075228342_))))
                        (let ((_tl228078228350_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228076228345_)))
                              (_hd228077228348_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228076228345_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd228077228348_))
                              (let ((_e228079228353_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd228077228348_))))
                                (let ((_tl228081228358_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228079228353_)))
                                      (_hd228080228356_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228079228353_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd228080228356_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd228080228356_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl228081228358_))
                                              (let ((_e228082228361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl228081228358_))))
                                                (let ((_tl228084228366_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228082228361_)))
                                                      (_hd228083228364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228082228361_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228084228366_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228078228350_))
                                                          (let ((_e228085228369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228078228350_))))
                    (let ((_tl228087228374_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228085228369_)))
                          (_hd228086228372_
                           (let ()
                             (declare (not safe))
                             (##car _e228085228369_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228086228372_))
                          (let ((_e228088228377_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228086228372_))))
                            (let ((_tl228090228382_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228088228377_)))
                                  (_hd228089228380_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228088228377_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228089228380_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228089228380_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228090228382_))
                                          (let ((_e228091228385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228090228382_))))
                                            (let ((_tl228093228390_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228091228385_)))
                                                  (_hd228092228388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228091228385_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228093228390_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228087228374_))
                                                      (let ((_e228094228393_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228087228374_))))
                (let ((_tl228096228398_
                       (let () (declare (not safe)) (##cdr _e228094228393_)))
                      (_hd228095228396_
                       (let () (declare (not safe)) (##car _e228094228393_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228095228396_))
                      (let ((_e228097228401_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228095228396_))))
                        (let ((_tl228099228406_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228097228401_)))
                              (_hd228098228404_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228097228401_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228098228404_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd228098228404_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228099228406_))
                                      (let ((_e228100228409_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228099228406_))))
                                        (let ((_tl228102228414_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228100228409_)))
                                              (_hd228101228412_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228100228409_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228102228414_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228096228398_))
                                                  (let ((_e228103228417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228096228398_))))
                                                    (let ((_tl228105228422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228103228417_)))
                                                          (_hd228104228420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228103228417_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228104228420_))
                                                          (let ((_e228106228425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228104228420_))))
                    (let ((_tl228108228430_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228106228425_)))
                          (_hd228107228428_
                           (let ()
                             (declare (not safe))
                             (##car _e228106228425_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228107228428_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd228107228428_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228108228430_))
                                  (let ((_e228109228433_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228108228430_))))
                                    (let ((_tl228111228438_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228109228433_)))
                                          (_hd228110228436_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228109228433_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228111228438_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228105228422_))
                                              (let ((__tmp236683
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228110228436_
                                                             _-absent-value228056228320_)))
                                                    (__tmp236682
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228101228412_
                                                             _key228057228322_)))
                                                    (__tmp236681
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228092228388_
                                                             _-xkwvar228058228324_)))
                                                    (__tmp236680
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd228083228364_
                                                             _-hash-ref228059228326_))))
                                                (declare (not safe))
                                                (_loop228052228315_
                                                 _lp-tl228055228334_
                                                 __tmp236683
                                                 __tmp236682
                                                 __tmp236681
                                                 __tmp236680))
                                              (___match235274235275_
                                               _e228007228174_
                                               _hd228008228177_
                                               _tl228009228179_))
                                          (___match235274235275_
                                           _e228007228174_
                                           _hd228008228177_
                                           _tl228009228179_))))
                                  (___match235274235275_
                                   _e228007228174_
                                   _hd228008228177_
                                   _tl228009228179_))
                              (___match235274235275_
                               _e228007228174_
                               _hd228008228177_
                               _tl228009228179_))
                          (___match235274235275_
                           _e228007228174_
                           _hd228008228177_
                           _tl228009228179_))))
                  (___match235274235275_
                   _e228007228174_
                   _hd228008228177_
                   _tl228009228179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235274235275_
                                                   _e228007228174_
                                                   _hd228008228177_
                                                   _tl228009228179_))
                                              (___match235274235275_
                                               _e228007228174_
                                               _hd228008228177_
                                               _tl228009228179_))))
                                      (___match235274235275_
                                       _e228007228174_
                                       _hd228008228177_
                                       _tl228009228179_))
                                  (___match235274235275_
                                   _e228007228174_
                                   _hd228008228177_
                                   _tl228009228179_))
                              (___match235274235275_
                               _e228007228174_
                               _hd228008228177_
                               _tl228009228179_))))
                      (___match235274235275_
                       _e228007228174_
                       _hd228008228177_
                       _tl228009228179_))))
              (___match235274235275_
               _e228007228174_
               _hd228008228177_
               _tl228009228179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235274235275_
                                                   _e228007228174_
                                                   _hd228008228177_
                                                   _tl228009228179_))))
                                          (___match235274235275_
                                           _e228007228174_
                                           _hd228008228177_
                                           _tl228009228179_))
                                      (___match235274235275_
                                       _e228007228174_
                                       _hd228008228177_
                                       _tl228009228179_))
                                  (___match235274235275_
                                   _e228007228174_
                                   _hd228008228177_
                                   _tl228009228179_))))
                          (___match235274235275_
                           _e228007228174_
                           _hd228008228177_
                           _tl228009228179_))))
                  (___match235274235275_
                   _e228007228174_
                   _hd228008228177_
                   _tl228009228179_))
              (___match235274235275_
               _e228007228174_
               _hd228008228177_
               _tl228009228179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235274235275_
                                               _e228007228174_
                                               _hd228008228177_
                                               _tl228009228179_))
                                          (___match235274235275_
                                           _e228007228174_
                                           _hd228008228177_
                                           _tl228009228179_))
                                      (___match235274235275_
                                       _e228007228174_
                                       _hd228008228177_
                                       _tl228009228179_))))
                              (___match235274235275_
                               _e228007228174_
                               _hd228008228177_
                               _tl228009228179_))))
                      (___match235274235275_
                       _e228007228174_
                       _hd228008228177_
                       _tl228009228179_))
                  (___match235274235275_
                   _e228007228174_
                   _hd228008228177_
                   _tl228009228179_))
              (___match235274235275_
               _e228007228174_
               _hd228008228177_
               _tl228009228179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235274235275_
                                               _e228007228174_
                                               _hd228008228177_
                                               _tl228009228179_))))
                                      (let ((_-hash-ref228063228447_
                                             (reverse _-hash-ref228059228326_))
                                            (_-xkwvar228062228445_
                                             (reverse _-xkwvar228058228324_))
                                            (_key228061228443_
                                             (reverse _key228057228322_))
                                            (_-absent-value228060228441_
                                             (reverse _-absent-value228056228320_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228018228203_))
                                            (let ((_L228450_ _hd228071228310_)
                                                  (_L228451_
                                                   _-absent-value228060228441_)
                                                  (_L228452_ _key228061228443_)
                                                  (_L228453_
                                                   _-xkwvar228062228445_)
                                                  (_L228454_
                                                   _-hash-ref228063228447_)
                                                  (_L228455_ _hd228047228281_)
                                                  (_L228456_ _hd228038228257_)
                                                  (_L228457_ _hd228029228233_)
                                                  (_L228458_ _tl228015228195_)
                                                  (_L228459_ _hd228014228193_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L228459_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L228458_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L228457_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L228459_
                                                          _L228455_))
                                                       (let ((__tmp236684
                                                              (let ((__tmp236685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g228512228515_ _g228513228517_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228512228515_ _g228513228517_)))))
                        (declare (not safe))
                        (foldr1 __tmp236685 '() _L228452_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp236684))
               (let ((__tmp236688
                      (lambda (_g228519228521_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g228519228521_
                           'hash-ref))))
                     (__tmp236686
                      (let ((__tmp236687
                             (lambda (_g228523228526_ _g228524228528_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228523228526_ _g228524228528_)))))
                        (declare (not safe))
                        (foldr1 __tmp236687 '() _L228454_))))
                 (declare (not safe))
                 (andmap1 __tmp236688 __tmp236686))
               (let ((__tmp236691
                      (lambda (_g228530228532_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g228530228532_
                           'absent-value))))
                     (__tmp236689
                      (let ((__tmp236690
                             (lambda (_g228534228537_ _g228535228539_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228534228537_ _g228535228539_)))))
                        (declare (not safe))
                        (foldr1 __tmp236690 '() _L228451_))))
                 (declare (not safe))
                 (andmap1 __tmp236691 __tmp236689))
               (let ((__tmp236694
                      (lambda (_g228541228543_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g228541228543_ _L228459_))))
                     (__tmp236692
                      (let ((__tmp236693
                             (lambda (_g228545228548_ _g228546228550_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g228545228548_ _g228546228550_)))))
                        (declare (not safe))
                        (foldr1 __tmp236693 '() _L228453_))))
                 (declare (not safe))
                 (andmap1 __tmp236694 __tmp236692)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont234961234962_
                                                   _L228450_
                                                   _L228451_
                                                   _L228452_
                                                   _L228453_
                                                   _L228454_
                                                   _L228455_
                                                   _L228456_
                                                   _L228457_
                                                   _L228458_
                                                   _L228459_)
                                                  (___match235274235275_
                                                   _e228007228174_
                                                   _hd228008228177_
                                                   _tl228009228179_)))
                                            (___match235274235275_
                                             _e228007228174_
                                             _hd228008228177_
                                             _tl228009228179_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop228052228315_
                           _target228049228286_
                           '()
                           '()
                           '()
                           '())))))
                   (___match235140235141_
                    (lambda (_e228007228174_
                             _hd228008228177_
                             _tl228009228179_
                             _e228010228182_
                             _hd228011228185_
                             _tl228012228187_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228011228185_))
                          (let ((_e228013228190_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228011228185_))))
                            (let ((_tl228015228195_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228013228190_)))
                                  (_hd228014228193_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228013228190_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228012228187_))
                                  (let ((_e228016228198_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228012228187_))))
                                    (let ((_tl228018228203_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228016228198_)))
                                          (_hd228017228201_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228016228198_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228017228201_))
                                          (let ((_e228019228206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228017228201_))))
                                            (let ((_tl228021228211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228019228206_)))
                                                  (_hd228020228209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228019228206_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd228020228209_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd228020228209_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228021228211_))
                                                          (let ((_e228022228214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228021228211_))))
                    (let ((_tl228024228219_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228022228214_)))
                          (_hd228023228217_
                           (let ()
                             (declare (not safe))
                             (##car _e228022228214_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228023228217_))
                          (let ((_e228025228222_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228023228217_))))
                            (let ((_tl228027228227_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228025228222_)))
                                  (_hd228026228225_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228025228222_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228026228225_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228026228225_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228027228227_))
                                          (let ((_e228028228230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228027228227_))))
                                            (let ((_tl228030228235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228028228230_)))
                                                  (_hd228029228233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228028228230_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228030228235_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl228024228219_))
                                                      (let ((_e228031228238_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl228024228219_))))
                (let ((_tl228033228243_
                       (let () (declare (not safe)) (##cdr _e228031228238_)))
                      (_hd228032228241_
                       (let () (declare (not safe)) (##car _e228031228238_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228032228241_))
                      (let ((_e228034228246_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228032228241_))))
                        (let ((_tl228036228251_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228034228246_)))
                              (_hd228035228249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228034228246_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd228035228249_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd228035228249_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228036228251_))
                                      (let ((_e228037228254_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228036228251_))))
                                        (let ((_tl228039228259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228037228254_)))
                                              (_hd228038228257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228037228254_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228039228259_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228033228243_))
                                                  (let ((_e228040228262_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228033228243_))))
                                                    (let ((_tl228042228267_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228040228262_)))
                                                          (_hd228041228265_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228040228262_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd228041228265_))
                                                          (let ((_e228043228270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd228041228265_))))
                    (let ((_tl228045228275_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228043228270_)))
                          (_hd228044228273_
                           (let ()
                             (declare (not safe))
                             (##car _e228043228270_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd228044228273_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd228044228273_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228045228275_))
                                  (let ((_e228046228278_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228045228275_))))
                                    (let ((_tl228048228283_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228046228278_)))
                                          (_hd228047228281_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228046228278_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228048228283_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl228042228267_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl228042228267_))
                                                        '1)
                                                  (let ((___splice234963234964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl228042228267_
                                                            '1))))
                                                    (let ((_tl228051228288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234963234964_
                                                              '1)))
                                                          (_target228049228286_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice234963234964_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl228051228288_))
                                                          (let ((_e228064228291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl228051228288_))))
                    (let ((_tl228066228296_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228064228291_)))
                          (_hd228065228294_
                           (let ()
                             (declare (not safe))
                             (##car _e228064228291_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd228065228294_))
                          (let ((_e228067228299_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd228065228294_))))
                            (let ((_tl228069228304_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228067228299_)))
                                  (_hd228068228302_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228067228299_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd228068228302_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd228068228302_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl228069228304_))
                                          (let ((_e228070228307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl228069228304_))))
                                            (let ((_tl228072228312_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228070228307_)))
                                                  (_hd228071228310_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228070228307_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl228072228312_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl228066228296_))
                                                      (___match235268235269_
                                                       _e228007228174_
                                                       _hd228008228177_
                                                       _tl228009228179_
                                                       _e228010228182_
                                                       _hd228011228185_
                                                       _tl228012228187_
                                                       _e228013228190_
                                                       _hd228014228193_
                                                       _tl228015228195_
                                                       _e228016228198_
                                                       _hd228017228201_
                                                       _tl228018228203_
                                                       _e228019228206_
                                                       _hd228020228209_
                                                       _tl228021228211_
                                                       _e228022228214_
                                                       _hd228023228217_
                                                       _tl228024228219_
                                                       _e228025228222_
                                                       _hd228026228225_
                                                       _tl228027228227_
                                                       _e228028228230_
                                                       _hd228029228233_
                                                       _tl228030228235_
                                                       _e228031228238_
                                                       _hd228032228241_
                                                       _tl228033228243_
                                                       _e228034228246_
                                                       _hd228035228249_
                                                       _tl228036228251_
                                                       _e228037228254_
                                                       _hd228038228257_
                                                       _tl228039228259_
                                                       _e228040228262_
                                                       _hd228041228265_
                                                       _tl228042228267_
                                                       _e228043228270_
                                                       _hd228044228273_
                                                       _tl228045228275_
                                                       _e228046228278_
                                                       _hd228047228281_
                                                       _tl228048228283_
                                                       ___splice234963234964_
                                                       _target228049228286_
                                                       _tl228051228288_
                                                       _e228064228291_
                                                       _hd228065228294_
                                                       _tl228066228296_
                                                       _e228067228299_
                                                       _hd228068228302_
                                                       _tl228069228304_
                                                       _e228070228307_
                                                       _hd228071228310_
                                                       _tl228072228312_)
                                                      (___match235274235275_
                                                       _e228007228174_
                                                       _hd228008228177_
                                                       _tl228009228179_))
                                                  (___match235274235275_
                                                   _e228007228174_
                                                   _hd228008228177_
                                                   _tl228009228179_))))
                                          (___match235274235275_
                                           _e228007228174_
                                           _hd228008228177_
                                           _tl228009228179_))
                                      (___match235274235275_
                                       _e228007228174_
                                       _hd228008228177_
                                       _tl228009228179_))
                                  (___match235274235275_
                                   _e228007228174_
                                   _hd228008228177_
                                   _tl228009228179_))))
                          (___match235274235275_
                           _e228007228174_
                           _hd228008228177_
                           _tl228009228179_))))
                  (___match235274235275_
                   _e228007228174_
                   _hd228008228177_
                   _tl228009228179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235274235275_
                                                   _e228007228174_
                                                   _hd228008228177_
                                                   _tl228009228179_))
                                              (___match235274235275_
                                               _e228007228174_
                                               _hd228008228177_
                                               _tl228009228179_))
                                          (___match235274235275_
                                           _e228007228174_
                                           _hd228008228177_
                                           _tl228009228179_))))
                                  (___match235274235275_
                                   _e228007228174_
                                   _hd228008228177_
                                   _tl228009228179_))
                              (___match235274235275_
                               _e228007228174_
                               _hd228008228177_
                               _tl228009228179_))
                          (___match235274235275_
                           _e228007228174_
                           _hd228008228177_
                           _tl228009228179_))))
                  (___match235274235275_
                   _e228007228174_
                   _hd228008228177_
                   _tl228009228179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235274235275_
                                                   _e228007228174_
                                                   _hd228008228177_
                                                   _tl228009228179_))
                                              (___match235274235275_
                                               _e228007228174_
                                               _hd228008228177_
                                               _tl228009228179_))))
                                      (___match235274235275_
                                       _e228007228174_
                                       _hd228008228177_
                                       _tl228009228179_))
                                  (___match235274235275_
                                   _e228007228174_
                                   _hd228008228177_
                                   _tl228009228179_))
                              (___match235274235275_
                               _e228007228174_
                               _hd228008228177_
                               _tl228009228179_))))
                      (___match235274235275_
                       _e228007228174_
                       _hd228008228177_
                       _tl228009228179_))))
              (___match235274235275_
               _e228007228174_
               _hd228008228177_
               _tl228009228179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235274235275_
                                                   _e228007228174_
                                                   _hd228008228177_
                                                   _tl228009228179_))))
                                          (___match235274235275_
                                           _e228007228174_
                                           _hd228008228177_
                                           _tl228009228179_))
                                      (___match235274235275_
                                       _e228007228174_
                                       _hd228008228177_
                                       _tl228009228179_))
                                  (___match235274235275_
                                   _e228007228174_
                                   _hd228008228177_
                                   _tl228009228179_))))
                          (___match235274235275_
                           _e228007228174_
                           _hd228008228177_
                           _tl228009228179_))))
                  (___match235274235275_
                   _e228007228174_
                   _hd228008228177_
                   _tl228009228179_))
              (___match235274235275_
               _e228007228174_
               _hd228008228177_
               _tl228009228179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235274235275_
                                                   _e228007228174_
                                                   _hd228008228177_
                                                   _tl228009228179_))))
                                          (___match235274235275_
                                           _e228007228174_
                                           _hd228008228177_
                                           _tl228009228179_))))
                                  (___match235274235275_
                                   _e228007228174_
                                   _hd228008228177_
                                   _tl228009228179_))))
                          (___match235274235275_
                           _e228007228174_
                           _hd228008228177_
                           _tl228009228179_))))
                   (___match235128235129_
                    (lambda (_e227940228565_
                             _hd227941228568_
                             _tl227942228570_
                             _e227943228573_
                             _hd227944228576_
                             _tl227945228578_
                             _e227946228581_
                             _hd227947228584_
                             _tl227948228586_
                             _e227949228589_
                             _hd227950228592_
                             _tl227951228594_
                             _e227952228597_
                             _hd227953228600_
                             _tl227954228602_
                             _e227955228605_
                             _hd227956228608_
                             _tl227957228610_
                             _e227958228613_
                             _hd227959228616_
                             _tl227960228618_
                             _e227961228621_
                             _hd227962228624_
                             _tl227963228626_
                             _e227964228629_
                             _hd227965228632_
                             _tl227966228634_
                             _e227967228637_
                             _hd227968228640_
                             _tl227969228642_
                             _e227970228645_
                             _hd227971228648_
                             _tl227972228650_
                             _e227973228653_
                             _hd227974228656_
                             _tl227975228658_
                             _e227976228661_
                             _hd227977228664_
                             _tl227978228666_
                             _e227979228669_
                             _hd227980228672_
                             _tl227981228674_
                             _e227982228677_
                             _hd227983228680_
                             _tl227984228682_
                             _e227985228685_
                             _hd227986228688_
                             _tl227987228690_
                             _e227988228693_
                             _hd227989228696_
                             _tl227990228698_
                             _e227991228701_
                             _hd227992228704_
                             _tl227993228706_
                             _e227994228709_
                             _hd227995228712_
                             _tl227996228714_)
                      (let ((_L228717_ _hd227995228712_)
                            (_L228718_ _hd227986228688_)
                            (_L228719_ _hd227977228664_)
                            (_L228720_ _hd227968228640_)
                            (_L228721_ _hd227959228616_)
                            (_L228722_ _hd227944228576_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L228722_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L228721_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L228720_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L228722_ _L228717_)))
                            (___kont234959234960_
                             _L228717_
                             _L228718_
                             _L228719_
                             _L228720_
                             _L228721_
                             _L228722_)
                            (___match235140235141_
                             _e227940228565_
                             _hd227941228568_
                             _tl227942228570_
                             _e227943228573_
                             _hd227944228576_
                             _tl227945228578_)))))
                   (___match234982234983_
                    (lambda (_e227940228565_ _hd227941228568_ _tl227942228570_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227942228570_))
                          (let ((_e227943228573_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227942228570_))))
                            (let ((_tl227945228578_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227943228573_)))
                                  (_hd227944228576_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227943228573_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227945228578_))
                                  (let ((_e227946228581_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227945228578_))))
                                    (let ((_tl227948228586_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227946228581_)))
                                          (_hd227947228584_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227946228581_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227947228584_))
                                          (let ((_e227949228589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227947228584_))))
                                            (let ((_tl227951228594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227949228589_)))
                                                  (_hd227950228592_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227949228589_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd227950228592_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd227950228592_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl227951228594_))
                                                          (let ((_e227952228597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl227951228594_))))
                    (let ((_tl227954228602_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227952228597_)))
                          (_hd227953228600_
                           (let ()
                             (declare (not safe))
                             (##car _e227952228597_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd227953228600_))
                          (let ((_e227955228605_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd227953228600_))))
                            (let ((_tl227957228610_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227955228605_)))
                                  (_hd227956228608_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227955228605_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd227956228608_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd227956228608_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl227957228610_))
                                          (let ((_e227958228613_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl227957228610_))))
                                            (let ((_tl227960228618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227958228613_)))
                                                  (_hd227959228616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227958228613_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl227960228618_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl227954228602_))
                                                      (let ((_e227961228621_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl227954228602_))))
                (let ((_tl227963228626_
                       (let () (declare (not safe)) (##cdr _e227961228621_)))
                      (_hd227962228624_
                       (let () (declare (not safe)) (##car _e227961228621_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227962228624_))
                      (let ((_e227964228629_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227962228624_))))
                        (let ((_tl227966228634_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227964228629_)))
                              (_hd227965228632_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227964228629_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd227965228632_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd227965228632_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227966228634_))
                                      (let ((_e227967228637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227966228634_))))
                                        (let ((_tl227969228642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227967228637_)))
                                              (_hd227968228640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227967228637_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227969228642_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227963228626_))
                                                  (let ((_e227970228645_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227963228626_))))
                                                    (let ((_tl227972228650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227970228645_)))
                                                          (_hd227971228648_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227970228645_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd227971228648_))
                                                          (let ((_e227973228653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd227971228648_))))
                    (let ((_tl227975228658_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227973228653_)))
                          (_hd227974228656_
                           (let ()
                             (declare (not safe))
                             (##car _e227973228653_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd227974228656_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd227974228656_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227975228658_))
                                  (let ((_e227976228661_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227975228658_))))
                                    (let ((_tl227978228666_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227976228661_)))
                                          (_hd227977228664_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227976228661_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227978228666_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl227972228650_))
                                              (let ((_e227979228669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl227972228650_))))
                                                (let ((_tl227981228674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227979228669_)))
                                                      (_hd227980228672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227979228669_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227980228672_))
                                                      (let ((_e227982228677_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227980228672_))))
                (let ((_tl227984228682_
                       (let () (declare (not safe)) (##cdr _e227982228677_)))
                      (_hd227983228680_
                       (let () (declare (not safe)) (##car _e227982228677_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd227983228680_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd227983228680_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227984228682_))
                              (let ((_e227985228685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227984228682_))))
                                (let ((_tl227987228690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227985228685_)))
                                      (_hd227986228688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227985228685_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227987228690_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl227981228674_))
                                          (let ((_e227988228693_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl227981228674_))))
                                            (let ((_tl227990228698_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227988228693_)))
                                                  (_hd227989228696_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227988228693_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227989228696_))
                                                  (let ((_e227991228701_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227989228696_))))
                                                    (let ((_tl227993228706_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227991228701_)))
                                                          (_hd227992228704_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227991228701_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd227992228704_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd227992228704_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227993228706_))
                          (let ((_e227994228709_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227993228706_))))
                            (let ((_tl227996228714_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227994228709_)))
                                  (_hd227995228712_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227994228709_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl227996228714_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227990228698_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227948228586_))
                                          (___match235128235129_
                                           _e227940228565_
                                           _hd227941228568_
                                           _tl227942228570_
                                           _e227943228573_
                                           _hd227944228576_
                                           _tl227945228578_
                                           _e227946228581_
                                           _hd227947228584_
                                           _tl227948228586_
                                           _e227949228589_
                                           _hd227950228592_
                                           _tl227951228594_
                                           _e227952228597_
                                           _hd227953228600_
                                           _tl227954228602_
                                           _e227955228605_
                                           _hd227956228608_
                                           _tl227957228610_
                                           _e227958228613_
                                           _hd227959228616_
                                           _tl227960228618_
                                           _e227961228621_
                                           _hd227962228624_
                                           _tl227963228626_
                                           _e227964228629_
                                           _hd227965228632_
                                           _tl227966228634_
                                           _e227967228637_
                                           _hd227968228640_
                                           _tl227969228642_
                                           _e227970228645_
                                           _hd227971228648_
                                           _tl227972228650_
                                           _e227973228653_
                                           _hd227974228656_
                                           _tl227975228658_
                                           _e227976228661_
                                           _hd227977228664_
                                           _tl227978228666_
                                           _e227979228669_
                                           _hd227980228672_
                                           _tl227981228674_
                                           _e227982228677_
                                           _hd227983228680_
                                           _tl227984228682_
                                           _e227985228685_
                                           _hd227986228688_
                                           _tl227987228690_
                                           _e227988228693_
                                           _hd227989228696_
                                           _tl227990228698_
                                           _e227991228701_
                                           _hd227992228704_
                                           _tl227993228706_
                                           _e227994228709_
                                           _hd227995228712_
                                           _tl227996228714_)
                                          (___match235140235141_
                                           _e227940228565_
                                           _hd227941228568_
                                           _tl227942228570_
                                           _e227943228573_
                                           _hd227944228576_
                                           _tl227945228578_))
                                      (___match235140235141_
                                       _e227940228565_
                                       _hd227941228568_
                                       _tl227942228570_
                                       _e227943228573_
                                       _hd227944228576_
                                       _tl227945228578_))
                                  (___match235140235141_
                                   _e227940228565_
                                   _hd227941228568_
                                   _tl227942228570_
                                   _e227943228573_
                                   _hd227944228576_
                                   _tl227945228578_))))
                          (___match235140235141_
                           _e227940228565_
                           _hd227941228568_
                           _tl227942228570_
                           _e227943228573_
                           _hd227944228576_
                           _tl227945228578_))
                      (___match235140235141_
                       _e227940228565_
                       _hd227941228568_
                       _tl227942228570_
                       _e227943228573_
                       _hd227944228576_
                       _tl227945228578_))
                  (___match235140235141_
                   _e227940228565_
                   _hd227941228568_
                   _tl227942228570_
                   _e227943228573_
                   _hd227944228576_
                   _tl227945228578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235140235141_
                                                   _e227940228565_
                                                   _hd227941228568_
                                                   _tl227942228570_
                                                   _e227943228573_
                                                   _hd227944228576_
                                                   _tl227945228578_))))
                                          (___match235140235141_
                                           _e227940228565_
                                           _hd227941228568_
                                           _tl227942228570_
                                           _e227943228573_
                                           _hd227944228576_
                                           _tl227945228578_))
                                      (___match235140235141_
                                       _e227940228565_
                                       _hd227941228568_
                                       _tl227942228570_
                                       _e227943228573_
                                       _hd227944228576_
                                       _tl227945228578_))))
                              (___match235140235141_
                               _e227940228565_
                               _hd227941228568_
                               _tl227942228570_
                               _e227943228573_
                               _hd227944228576_
                               _tl227945228578_))
                          (___match235140235141_
                           _e227940228565_
                           _hd227941228568_
                           _tl227942228570_
                           _e227943228573_
                           _hd227944228576_
                           _tl227945228578_))
                      (___match235140235141_
                       _e227940228565_
                       _hd227941228568_
                       _tl227942228570_
                       _e227943228573_
                       _hd227944228576_
                       _tl227945228578_))))
              (___match235140235141_
               _e227940228565_
               _hd227941228568_
               _tl227942228570_
               _e227943228573_
               _hd227944228576_
               _tl227945228578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match235140235141_
                                               _e227940228565_
                                               _hd227941228568_
                                               _tl227942228570_
                                               _e227943228573_
                                               _hd227944228576_
                                               _tl227945228578_))
                                          (___match235140235141_
                                           _e227940228565_
                                           _hd227941228568_
                                           _tl227942228570_
                                           _e227943228573_
                                           _hd227944228576_
                                           _tl227945228578_))))
                                  (___match235140235141_
                                   _e227940228565_
                                   _hd227941228568_
                                   _tl227942228570_
                                   _e227943228573_
                                   _hd227944228576_
                                   _tl227945228578_))
                              (___match235140235141_
                               _e227940228565_
                               _hd227941228568_
                               _tl227942228570_
                               _e227943228573_
                               _hd227944228576_
                               _tl227945228578_))
                          (___match235140235141_
                           _e227940228565_
                           _hd227941228568_
                           _tl227942228570_
                           _e227943228573_
                           _hd227944228576_
                           _tl227945228578_))))
                  (___match235140235141_
                   _e227940228565_
                   _hd227941228568_
                   _tl227942228570_
                   _e227943228573_
                   _hd227944228576_
                   _tl227945228578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235140235141_
                                                   _e227940228565_
                                                   _hd227941228568_
                                                   _tl227942228570_
                                                   _e227943228573_
                                                   _hd227944228576_
                                                   _tl227945228578_))
                                              (___match235140235141_
                                               _e227940228565_
                                               _hd227941228568_
                                               _tl227942228570_
                                               _e227943228573_
                                               _hd227944228576_
                                               _tl227945228578_))))
                                      (___match235140235141_
                                       _e227940228565_
                                       _hd227941228568_
                                       _tl227942228570_
                                       _e227943228573_
                                       _hd227944228576_
                                       _tl227945228578_))
                                  (___match235140235141_
                                   _e227940228565_
                                   _hd227941228568_
                                   _tl227942228570_
                                   _e227943228573_
                                   _hd227944228576_
                                   _tl227945228578_))
                              (___match235140235141_
                               _e227940228565_
                               _hd227941228568_
                               _tl227942228570_
                               _e227943228573_
                               _hd227944228576_
                               _tl227945228578_))))
                      (___match235140235141_
                       _e227940228565_
                       _hd227941228568_
                       _tl227942228570_
                       _e227943228573_
                       _hd227944228576_
                       _tl227945228578_))))
              (___match235140235141_
               _e227940228565_
               _hd227941228568_
               _tl227942228570_
               _e227943228573_
               _hd227944228576_
               _tl227945228578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235140235141_
                                                   _e227940228565_
                                                   _hd227941228568_
                                                   _tl227942228570_
                                                   _e227943228573_
                                                   _hd227944228576_
                                                   _tl227945228578_))))
                                          (___match235140235141_
                                           _e227940228565_
                                           _hd227941228568_
                                           _tl227942228570_
                                           _e227943228573_
                                           _hd227944228576_
                                           _tl227945228578_))
                                      (___match235140235141_
                                       _e227940228565_
                                       _hd227941228568_
                                       _tl227942228570_
                                       _e227943228573_
                                       _hd227944228576_
                                       _tl227945228578_))
                                  (___match235140235141_
                                   _e227940228565_
                                   _hd227941228568_
                                   _tl227942228570_
                                   _e227943228573_
                                   _hd227944228576_
                                   _tl227945228578_))))
                          (___match235140235141_
                           _e227940228565_
                           _hd227941228568_
                           _tl227942228570_
                           _e227943228573_
                           _hd227944228576_
                           _tl227945228578_))))
                  (___match235140235141_
                   _e227940228565_
                   _hd227941228568_
                   _tl227942228570_
                   _e227943228573_
                   _hd227944228576_
                   _tl227945228578_))
              (___match235140235141_
               _e227940228565_
               _hd227941228568_
               _tl227942228570_
               _e227943228573_
               _hd227944228576_
               _tl227945228578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235140235141_
                                                   _e227940228565_
                                                   _hd227941228568_
                                                   _tl227942228570_
                                                   _e227943228573_
                                                   _hd227944228576_
                                                   _tl227945228578_))))
                                          (___match235140235141_
                                           _e227940228565_
                                           _hd227941228568_
                                           _tl227942228570_
                                           _e227943228573_
                                           _hd227944228576_
                                           _tl227945228578_))))
                                  (___match235140235141_
                                   _e227940228565_
                                   _hd227941228568_
                                   _tl227942228570_
                                   _e227943228573_
                                   _hd227944228576_
                                   _tl227945228578_))))
                          (___match235274235275_
                           _e227940228565_
                           _hd227941228568_
                           _tl227942228570_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234955234956_))
                  (let ((_e227931228782_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234955234956_))))
                    (let ((_tl227933228787_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227931228782_)))
                          (_hd227932228785_
                           (let ()
                             (declare (not safe))
                             (##car _e227931228782_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L228790_ _tl227933228787_))
                            (___kont234957234958_ _L228790_))
                          (___match234982234983_
                           _e227931228782_
                           _hd227932228785_
                           _tl227933228787_))))
                  (let () (declare (not safe)) (_g227928228124_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx227877_)
        (letrec ((_clause-e227879_
                  (lambda (_form227920_)
                    (let ((__obj236628
                           (let ()
                             (declare (not safe))
                             (##structure
                              gxc#!lambda::t
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f))))
                      (gxc#!lambda:::init!
                       __obj236628
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form227920_))
                       (if (let ((__tmp236695
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp236695))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form227920_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form227920_))
                               '#f)
                           '#f))
                      __obj236628))))
          (let* ((_g227881227891_
                  (lambda (_g227882227888_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g227882227888_))))
                 (_g227880227917_
                  (lambda (_g227882227894_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g227882227894_))
                        (let ((_e227884227896_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g227882227894_))))
                          (let ((_hd227885227899_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e227884227896_)))
                                (_tl227886227901_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e227884227896_))))
                            ((lambda (_L227904_)
                               (let ((_clauses227915_
                                      (map _clause-e227879_ _L227904_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses227915_)))
                             _tl227886227901_)))
                        (let ()
                          (declare (not safe))
                          (_g227881227891_ _g227882227894_))))))
            (declare (not safe))
            (_g227880227917_ _stx227877_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx227809_)
        (let* ((_g227811227828_
                (lambda (_g227812227825_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227812227825_))))
               (_g227810227874_
                (lambda (_g227812227831_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227812227831_))
                      (let ((_e227815227833_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227812227831_))))
                        (let ((_hd227816227836_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227815227833_)))
                              (_tl227817227838_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227815227833_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227817227838_))
                              (let ((_e227818227841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227817227838_))))
                                (let ((_hd227819227844_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227818227841_)))
                                      (_tl227820227846_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227818227841_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227820227846_))
                                      (let ((_e227821227849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227820227846_))))
                                        (let ((_hd227822227852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227821227849_)))
                                              (_tl227823227854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227821227849_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227823227854_))
                                              ((lambda (_L227857_ _L227858_)
                                                 (let ((__tmp236696
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L227857_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp236696
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd227822227852_
                                               _hd227819227844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227811227828_
                                                 _g227812227831_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227811227828_ _g227812227831_)))))
                              (let ()
                                (declare (not safe))
                                (_g227811227828_ _g227812227831_)))))
                      (let ()
                        (declare (not safe))
                        (_g227811227828_ _g227812227831_))))))
          (declare (not safe))
          (_g227810227874_ _stx227809_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx227714_)
        (let* ((___stx235283235284_ _stx227714_)
               (_g227717227737_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235283235284_)))))
          (let ((___kont235285235286_
                 (lambda (_L227781_ _L227782_)
                   (let ((_type-e227799227801_
                          (let ((__tmp236697
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L227782_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp236697))))
                     (if _type-e227799227801_
                         (let ((_type-e227804_ _type-e227799227801_))
                           (_type-e227804_ _stx227714_ _L227781_))
                         '#f))))
                (___kont235287235288_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235283235284_))
                (let ((_e227721227749_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235283235284_))))
                  (let ((_tl227723227754_
                         (let () (declare (not safe)) (##cdr _e227721227749_)))
                        (_hd227722227752_
                         (let ()
                           (declare (not safe))
                           (##car _e227721227749_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl227723227754_))
                        (let ((_e227724227757_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl227723227754_))))
                          (let ((_tl227726227762_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e227724227757_)))
                                (_hd227725227760_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e227724227757_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd227725227760_))
                                (let ((_e227727227765_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd227725227760_))))
                                  (let ((_tl227729227770_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227727227765_)))
                                        (_hd227728227768_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227727227765_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd227728227768_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd227728227768_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl227729227770_))
                                                (let ((_e227730227773_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl227729227770_))))
                                                  (let ((_tl227732227778_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e227730227773_)))
                                                        (_hd227731227776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e227730227773_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl227732227778_))
                                                        (___kont235285235286_
                                                         _tl227726227762_
                                                         _hd227731227776_)
                                                        (___kont235287235288_))))
                                                (___kont235287235288_))
                                            (___kont235287235288_))
                                        (___kont235287235288_))))
                                (___kont235287235288_))))
                        (___kont235287235288_))))
                (___kont235287235288_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx227663_)
        (let* ((_g227665227678_
                (lambda (_g227666227675_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227666227675_))))
               (_g227664227711_
                (lambda (_g227666227681_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227666227681_))
                      (let ((_e227668227683_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227666227681_))))
                        (let ((_hd227669227686_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227668227683_)))
                              (_tl227670227688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227668227683_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227670227688_))
                              (let ((_e227671227691_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227670227688_))))
                                (let ((_hd227672227694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227671227691_)))
                                      (_tl227673227696_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227671227691_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227673227696_))
                                      ((lambda (_L227699_)
                                         (let ((__tmp236698
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L227699_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp236698)))
                                       _hd227672227694_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227665227678_ _g227666227681_)))))
                              (let ()
                                (declare (not safe))
                                (_g227665227678_ _g227666227681_)))))
                      (let ()
                        (declare (not safe))
                        (_g227665227678_ _g227666227681_))))))
          (declare (not safe))
          (_g227664227711_ _stx227663_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form226897_)
        (let* ((___stx235321235322_ _form226897_)
               (_g226902227059_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235321235322_)))))
          (let ((___kont235323235324_
                 (lambda (_L227583_ _L227584_ _L227585_) '#t))
                (___kont235329235330_
                 (lambda (_L227371_
                          _L227372_
                          _L227373_
                          _L227374_
                          _L227375_
                          _L227376_)
                   '#t))
                (___kont235335235336_
                 (lambda (_L227167_ _L227168_ _L227169_ _L227170_) '#t))
                (___kont235337235338_ (lambda () '#f)))
            (let* ((___match235462235463_
                    (lambda (_e227019227071_
                             _hd227020227074_
                             _tl227021227076_
                             _e227022227079_
                             _hd227023227082_
                             _tl227024227084_
                             _e227025227087_
                             _hd227026227090_
                             _tl227027227092_
                             _e227028227095_
                             _hd227029227098_
                             _tl227030227100_
                             _e227031227103_
                             _hd227032227106_
                             _tl227033227108_
                             _e227034227111_
                             _hd227035227114_
                             _tl227036227116_
                             _e227037227119_
                             _hd227038227122_
                             _tl227039227124_
                             _e227040227127_
                             _hd227041227130_
                             _tl227042227132_
                             _e227043227135_
                             _hd227044227138_
                             _tl227045227140_
                             _e227046227143_
                             _hd227047227146_
                             _tl227048227148_
                             _e227049227151_
                             _hd227050227154_
                             _tl227051227156_
                             _e227052227159_
                             _hd227053227162_
                             _tl227054227164_)
                      (let ((_L227167_ _hd227053227162_)
                            (_L227168_ _hd227044227138_)
                            (_L227169_ _hd227035227114_)
                            (_L227170_ _hd227020227074_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L227170_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L227169_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L227170_ _L227167_))
                                 (let ((__tmp236699
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L227168_
                                           _L227170_))))
                                   (declare (not safe))
                                   (not __tmp236699)))
                            (___kont235335235336_
                             _L227167_
                             _L227168_
                             _L227169_
                             _L227170_)
                            (___kont235337235338_)))))
                   (___match235434235435_
                    (lambda (_e227019227071_
                             _hd227020227074_
                             _tl227021227076_
                             _e227022227079_
                             _hd227023227082_
                             _tl227024227084_
                             _e227025227087_
                             _hd227026227090_
                             _tl227027227092_
                             _e227028227095_
                             _hd227029227098_
                             _tl227030227100_
                             _e227031227103_
                             _hd227032227106_
                             _tl227033227108_
                             _e227034227111_
                             _hd227035227114_
                             _tl227036227116_
                             _e227037227119_
                             _hd227038227122_
                             _tl227039227124_
                             _e227040227127_
                             _hd227041227130_
                             _tl227042227132_
                             _e227043227135_
                             _hd227044227138_
                             _tl227045227140_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227039227124_))
                          (let ((_e227046227143_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227039227124_))))
                            (let ((_tl227048227148_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227046227143_)))
                                  (_hd227047227146_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227046227143_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227047227146_))
                                  (let ((_e227049227151_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227047227146_))))
                                    (let ((_tl227051227156_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227049227151_)))
                                          (_hd227050227154_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227049227151_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd227050227154_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd227050227154_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227051227156_))
                                                  (let ((_e227052227159_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227051227156_))))
                                                    (let ((_tl227054227164_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227052227159_)))
                                                          (_hd227053227162_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227052227159_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227054227164_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227048227148_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227024227084_))
                          (___match235462235463_
                           _e227019227071_
                           _hd227020227074_
                           _tl227021227076_
                           _e227022227079_
                           _hd227023227082_
                           _tl227024227084_
                           _e227025227087_
                           _hd227026227090_
                           _tl227027227092_
                           _e227028227095_
                           _hd227029227098_
                           _tl227030227100_
                           _e227031227103_
                           _hd227032227106_
                           _tl227033227108_
                           _e227034227111_
                           _hd227035227114_
                           _tl227036227116_
                           _e227037227119_
                           _hd227038227122_
                           _tl227039227124_
                           _e227040227127_
                           _hd227041227130_
                           _tl227042227132_
                           _e227043227135_
                           _hd227044227138_
                           _tl227045227140_
                           _e227046227143_
                           _hd227047227146_
                           _tl227048227148_
                           _e227049227151_
                           _hd227050227154_
                           _tl227051227156_
                           _e227052227159_
                           _hd227053227162_
                           _tl227054227164_)
                          (___kont235337235338_))
                      (___kont235337235338_))
                  (___kont235337235338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235337235338_))
                                              (___kont235337235338_))
                                          (___kont235337235338_))))
                                  (___kont235337235338_))))
                          (___kont235337235338_))))
                   (___match235364235365_
                    (lambda (_e226955227211_
                             _hd226956227214_
                             _tl226957227216_
                             ___splice235331235332_
                             _target226958227219_
                             _tl226960227221_)
                      (letrec ((_loop226961227224_
                                (lambda (_hd226959227227_ _arg226965227229_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226959227227_))
                                      (let ((_e226962227232_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226959227227_))))
                                        (let ((_lp-tl226964227237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226962227232_)))
                                              (_lp-hd226963227235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226962227232_))))
                                          (let ((__tmp236700
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd226963227235_
                                                         _arg226965227229_))))
                                            (declare (not safe))
                                            (_loop226961227224_
                                             _lp-tl226964227237_
                                             __tmp236700))))
                                      (let ((_arg226966227240_
                                             (reverse _arg226965227229_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226957227216_))
                                            (let ((_e226967227243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226957227216_))))
                                              (let ((_tl226969227248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226967227243_)))
                                                    (_hd226968227246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226967227243_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd226968227246_))
                                                    (let ((_e226970227251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd226968227246_))))
                                                      (let ((_tl226972227256_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226970227251_)))
                    (_hd226971227254_
                     (let () (declare (not safe)) (##car _e226970227251_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd226971227254_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd226971227254_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226972227256_))
                            (let ((_e226973227259_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226972227256_))))
                              (let ((_tl226975227264_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226973227259_)))
                                    (_hd226974227262_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226973227259_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd226974227262_))
                                    (let ((_e226976227267_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd226974227262_))))
                                      (let ((_tl226978227272_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226976227267_)))
                                            (_hd226977227270_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226976227267_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd226977227270_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd226977227270_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl226978227272_))
                                                    (let ((_e226979227275_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl226978227272_))))
                                                      (let ((_tl226981227280_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226979227275_)))
                    (_hd226980227278_
                     (let () (declare (not safe)) (##car _e226979227275_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl226981227280_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl226975227264_))
                        (let ((_e226982227283_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl226975227264_))))
                          (let ((_tl226984227288_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226982227283_)))
                                (_hd226983227286_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226982227283_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd226983227286_))
                                (let ((_e226985227291_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd226983227286_))))
                                  (let ((_tl226987227296_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226985227291_)))
                                        (_hd226986227294_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226985227291_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd226986227294_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd226986227294_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl226987227296_))
                                                (let ((_e226988227299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl226987227296_))))
                                                  (let ((_tl226990227304_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226988227299_)))
                                                        (_hd226989227302_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226988227299_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl226990227304_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl226984227288_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl226984227288_))
                              '1)
                        (let ((___splice235333235334_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl226984227288_
                                  '1))))
                          (let ((_tl226993227309_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235333235334_ '1)))
                                (_target226991227307_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235333235334_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226993227309_))
                                (let ((_e227000227312_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226993227309_))))
                                  (let ((_tl227002227317_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e227000227312_)))
                                        (_hd227001227315_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e227000227312_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd227001227315_))
                                        (let ((_e227003227320_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd227001227315_))))
                                          (let ((_tl227005227325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e227003227320_)))
                                                (_hd227004227323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e227003227320_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd227004227323_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd227004227323_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl227005227325_))
                                                        (let ((_e227006227328_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl227005227325_))))
                  (let ((_tl227008227333_
                         (let () (declare (not safe)) (##cdr _e227006227328_)))
                        (_hd227007227331_
                         (let ()
                           (declare (not safe))
                           (##car _e227006227328_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl227008227333_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl227002227317_))
                            (letrec ((_loop226994227336_
                                      (lambda (_hd226992227339_
                                               _xarg226998227341_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd226992227339_))
                                            (let ((_e226995227344_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd226992227339_))))
                                              (let ((_lp-tl226997227349_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226995227344_)))
                                                    (_lp-hd226996227347_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226995227344_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd226996227347_))
                                                    (let ((_e227009227352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd226996227347_))))
                                                      (let ((_tl227011227357_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e227009227352_)))
                    (_hd227010227355_
                     (let () (declare (not safe)) (##car _e227009227352_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd227010227355_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd227010227355_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227011227357_))
                            (let ((_e227012227360_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227011227357_))))
                              (let ((_tl227014227365_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227012227360_)))
                                    (_hd227013227363_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227012227360_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl227014227365_))
                                    (let ((__tmp236701
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd227013227363_
                                                   _xarg226998227341_))))
                                      (declare (not safe))
                                      (_loop226994227336_
                                       _lp-tl226997227349_
                                       __tmp236701))
                                    (___match235434235435_
                                     _e226955227211_
                                     _hd226956227214_
                                     _tl226957227216_
                                     _e226967227243_
                                     _hd226968227246_
                                     _tl226969227248_
                                     _e226970227251_
                                     _hd226971227254_
                                     _tl226972227256_
                                     _e226973227259_
                                     _hd226974227262_
                                     _tl226975227264_
                                     _e226976227267_
                                     _hd226977227270_
                                     _tl226978227272_
                                     _e226979227275_
                                     _hd226980227278_
                                     _tl226981227280_
                                     _e226982227283_
                                     _hd226983227286_
                                     _tl226984227288_
                                     _e226985227291_
                                     _hd226986227294_
                                     _tl226987227296_
                                     _e226988227299_
                                     _hd226989227302_
                                     _tl226990227304_))))
                            (___match235434235435_
                             _e226955227211_
                             _hd226956227214_
                             _tl226957227216_
                             _e226967227243_
                             _hd226968227246_
                             _tl226969227248_
                             _e226970227251_
                             _hd226971227254_
                             _tl226972227256_
                             _e226973227259_
                             _hd226974227262_
                             _tl226975227264_
                             _e226976227267_
                             _hd226977227270_
                             _tl226978227272_
                             _e226979227275_
                             _hd226980227278_
                             _tl226981227280_
                             _e226982227283_
                             _hd226983227286_
                             _tl226984227288_
                             _e226985227291_
                             _hd226986227294_
                             _tl226987227296_
                             _e226988227299_
                             _hd226989227302_
                             _tl226990227304_))
                        (___match235434235435_
                         _e226955227211_
                         _hd226956227214_
                         _tl226957227216_
                         _e226967227243_
                         _hd226968227246_
                         _tl226969227248_
                         _e226970227251_
                         _hd226971227254_
                         _tl226972227256_
                         _e226973227259_
                         _hd226974227262_
                         _tl226975227264_
                         _e226976227267_
                         _hd226977227270_
                         _tl226978227272_
                         _e226979227275_
                         _hd226980227278_
                         _tl226981227280_
                         _e226982227283_
                         _hd226983227286_
                         _tl226984227288_
                         _e226985227291_
                         _hd226986227294_
                         _tl226987227296_
                         _e226988227299_
                         _hd226989227302_
                         _tl226990227304_))
                    (___match235434235435_
                     _e226955227211_
                     _hd226956227214_
                     _tl226957227216_
                     _e226967227243_
                     _hd226968227246_
                     _tl226969227248_
                     _e226970227251_
                     _hd226971227254_
                     _tl226972227256_
                     _e226973227259_
                     _hd226974227262_
                     _tl226975227264_
                     _e226976227267_
                     _hd226977227270_
                     _tl226978227272_
                     _e226979227275_
                     _hd226980227278_
                     _tl226981227280_
                     _e226982227283_
                     _hd226983227286_
                     _tl226984227288_
                     _e226985227291_
                     _hd226986227294_
                     _tl226987227296_
                     _e226988227299_
                     _hd226989227302_
                     _tl226990227304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235434235435_
                                                     _e226955227211_
                                                     _hd226956227214_
                                                     _tl226957227216_
                                                     _e226967227243_
                                                     _hd226968227246_
                                                     _tl226969227248_
                                                     _e226970227251_
                                                     _hd226971227254_
                                                     _tl226972227256_
                                                     _e226973227259_
                                                     _hd226974227262_
                                                     _tl226975227264_
                                                     _e226976227267_
                                                     _hd226977227270_
                                                     _tl226978227272_
                                                     _e226979227275_
                                                     _hd226980227278_
                                                     _tl226981227280_
                                                     _e226982227283_
                                                     _hd226983227286_
                                                     _tl226984227288_
                                                     _e226985227291_
                                                     _hd226986227294_
                                                     _tl226987227296_
                                                     _e226988227299_
                                                     _hd226989227302_
                                                     _tl226990227304_))))
                                            (let ((_xarg226999227368_
                                                   (reverse _xarg226998227341_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl226969227248_))
                                                  (let ((_L227371_
                                                         _hd227007227331_)
                                                        (_L227372_
                                                         _xarg226999227368_)
                                                        (_L227373_
                                                         _hd226989227302_)
                                                        (_L227374_
                                                         _hd226980227278_)
                                                        (_L227375_
                                                         _tl226960227221_)
                                                        (_L227376_
                                                         _arg226966227240_))
                                                    (if (and (let ((__tmp236702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp236703
                                   (lambda (_g227419227422_ _g227420227424_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227419227422_
                                             _g227420227424_)))))
                              (declare (not safe))
                              (foldr1 __tmp236703 '() _L227376_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp236702))
                     (let () (declare (not safe)) (gx#identifier? _L227375_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L227374_ 'apply))
                     (fx= (length (let ((__tmp236704
                                         (lambda (_g227426227429_
                                                  _g227427227431_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g227426227429_
                                                   _g227427227431_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp236704 '() _L227376_)))
                          (length (let ((__tmp236705
                                         (lambda (_g227433227436_
                                                  _g227434227438_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g227433227436_
                                                   _g227434227438_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp236705 '() _L227372_))))
                     (let ((__tmp236708
                            (let ((__tmp236709
                                   (lambda (_g227440227443_ _g227441227445_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227440227443_
                                             _g227441227445_)))))
                              (declare (not safe))
                              (foldr1 __tmp236709 '() _L227376_)))
                           (__tmp236706
                            (let ((__tmp236707
                                   (lambda (_g227447227450_ _g227448227452_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g227447227450_
                                             _g227448227452_)))))
                              (declare (not safe))
                              (foldr1 __tmp236707 '() _L227372_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp236708 __tmp236706))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L227375_ _L227371_))
                     (let ((__tmp236710
                            (let ((__tmp236714
                                   (lambda (_g227454227456_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g227454227456_
                                        _L227373_))))
                                  (__tmp236711
                                   (let ((__tmp236713
                                          (lambda (_g227458227461_
                                                   _g227459227463_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g227458227461_
                                                    _g227459227463_))))
                                         (__tmp236712
                                          (let ()
                                            (declare (not safe))
                                            (cons _L227375_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp236713
                                             __tmp236712
                                             _L227376_))))
                              (declare (not safe))
                              (find __tmp236714 __tmp236711))))
                       (declare (not safe))
                       (not __tmp236710)))
                (___kont235329235330_
                 _L227371_
                 _L227372_
                 _L227373_
                 _L227374_
                 _L227375_
                 _L227376_)
                (___match235434235435_
                 _e226955227211_
                 _hd226956227214_
                 _tl226957227216_
                 _e226967227243_
                 _hd226968227246_
                 _tl226969227248_
                 _e226970227251_
                 _hd226971227254_
                 _tl226972227256_
                 _e226973227259_
                 _hd226974227262_
                 _tl226975227264_
                 _e226976227267_
                 _hd226977227270_
                 _tl226978227272_
                 _e226979227275_
                 _hd226980227278_
                 _tl226981227280_
                 _e226982227283_
                 _hd226983227286_
                 _tl226984227288_
                 _e226985227291_
                 _hd226986227294_
                 _tl226987227296_
                 _e226988227299_
                 _hd226989227302_
                 _tl226990227304_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match235434235435_
                                                   _e226955227211_
                                                   _hd226956227214_
                                                   _tl226957227216_
                                                   _e226967227243_
                                                   _hd226968227246_
                                                   _tl226969227248_
                                                   _e226970227251_
                                                   _hd226971227254_
                                                   _tl226972227256_
                                                   _e226973227259_
                                                   _hd226974227262_
                                                   _tl226975227264_
                                                   _e226976227267_
                                                   _hd226977227270_
                                                   _tl226978227272_
                                                   _e226979227275_
                                                   _hd226980227278_
                                                   _tl226981227280_
                                                   _e226982227283_
                                                   _hd226983227286_
                                                   _tl226984227288_
                                                   _e226985227291_
                                                   _hd226986227294_
                                                   _tl226987227296_
                                                   _e226988227299_
                                                   _hd226989227302_
                                                   _tl226990227304_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop226994227336_ _target226991227307_ '())))
                            (___match235434235435_
                             _e226955227211_
                             _hd226956227214_
                             _tl226957227216_
                             _e226967227243_
                             _hd226968227246_
                             _tl226969227248_
                             _e226970227251_
                             _hd226971227254_
                             _tl226972227256_
                             _e226973227259_
                             _hd226974227262_
                             _tl226975227264_
                             _e226976227267_
                             _hd226977227270_
                             _tl226978227272_
                             _e226979227275_
                             _hd226980227278_
                             _tl226981227280_
                             _e226982227283_
                             _hd226983227286_
                             _tl226984227288_
                             _e226985227291_
                             _hd226986227294_
                             _tl226987227296_
                             _e226988227299_
                             _hd226989227302_
                             _tl226990227304_))
                        (___match235434235435_
                         _e226955227211_
                         _hd226956227214_
                         _tl226957227216_
                         _e226967227243_
                         _hd226968227246_
                         _tl226969227248_
                         _e226970227251_
                         _hd226971227254_
                         _tl226972227256_
                         _e226973227259_
                         _hd226974227262_
                         _tl226975227264_
                         _e226976227267_
                         _hd226977227270_
                         _tl226978227272_
                         _e226979227275_
                         _hd226980227278_
                         _tl226981227280_
                         _e226982227283_
                         _hd226983227286_
                         _tl226984227288_
                         _e226985227291_
                         _hd226986227294_
                         _tl226987227296_
                         _e226988227299_
                         _hd226989227302_
                         _tl226990227304_))))
                (___match235434235435_
                 _e226955227211_
                 _hd226956227214_
                 _tl226957227216_
                 _e226967227243_
                 _hd226968227246_
                 _tl226969227248_
                 _e226970227251_
                 _hd226971227254_
                 _tl226972227256_
                 _e226973227259_
                 _hd226974227262_
                 _tl226975227264_
                 _e226976227267_
                 _hd226977227270_
                 _tl226978227272_
                 _e226979227275_
                 _hd226980227278_
                 _tl226981227280_
                 _e226982227283_
                 _hd226983227286_
                 _tl226984227288_
                 _e226985227291_
                 _hd226986227294_
                 _tl226987227296_
                 _e226988227299_
                 _hd226989227302_
                 _tl226990227304_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235434235435_
                                                     _e226955227211_
                                                     _hd226956227214_
                                                     _tl226957227216_
                                                     _e226967227243_
                                                     _hd226968227246_
                                                     _tl226969227248_
                                                     _e226970227251_
                                                     _hd226971227254_
                                                     _tl226972227256_
                                                     _e226973227259_
                                                     _hd226974227262_
                                                     _tl226975227264_
                                                     _e226976227267_
                                                     _hd226977227270_
                                                     _tl226978227272_
                                                     _e226979227275_
                                                     _hd226980227278_
                                                     _tl226981227280_
                                                     _e226982227283_
                                                     _hd226983227286_
                                                     _tl226984227288_
                                                     _e226985227291_
                                                     _hd226986227294_
                                                     _tl226987227296_
                                                     _e226988227299_
                                                     _hd226989227302_
                                                     _tl226990227304_))
                                                (___match235434235435_
                                                 _e226955227211_
                                                 _hd226956227214_
                                                 _tl226957227216_
                                                 _e226967227243_
                                                 _hd226968227246_
                                                 _tl226969227248_
                                                 _e226970227251_
                                                 _hd226971227254_
                                                 _tl226972227256_
                                                 _e226973227259_
                                                 _hd226974227262_
                                                 _tl226975227264_
                                                 _e226976227267_
                                                 _hd226977227270_
                                                 _tl226978227272_
                                                 _e226979227275_
                                                 _hd226980227278_
                                                 _tl226981227280_
                                                 _e226982227283_
                                                 _hd226983227286_
                                                 _tl226984227288_
                                                 _e226985227291_
                                                 _hd226986227294_
                                                 _tl226987227296_
                                                 _e226988227299_
                                                 _hd226989227302_
                                                 _tl226990227304_))))
                                        (___match235434235435_
                                         _e226955227211_
                                         _hd226956227214_
                                         _tl226957227216_
                                         _e226967227243_
                                         _hd226968227246_
                                         _tl226969227248_
                                         _e226970227251_
                                         _hd226971227254_
                                         _tl226972227256_
                                         _e226973227259_
                                         _hd226974227262_
                                         _tl226975227264_
                                         _e226976227267_
                                         _hd226977227270_
                                         _tl226978227272_
                                         _e226979227275_
                                         _hd226980227278_
                                         _tl226981227280_
                                         _e226982227283_
                                         _hd226983227286_
                                         _tl226984227288_
                                         _e226985227291_
                                         _hd226986227294_
                                         _tl226987227296_
                                         _e226988227299_
                                         _hd226989227302_
                                         _tl226990227304_))))
                                (___match235434235435_
                                 _e226955227211_
                                 _hd226956227214_
                                 _tl226957227216_
                                 _e226967227243_
                                 _hd226968227246_
                                 _tl226969227248_
                                 _e226970227251_
                                 _hd226971227254_
                                 _tl226972227256_
                                 _e226973227259_
                                 _hd226974227262_
                                 _tl226975227264_
                                 _e226976227267_
                                 _hd226977227270_
                                 _tl226978227272_
                                 _e226979227275_
                                 _hd226980227278_
                                 _tl226981227280_
                                 _e226982227283_
                                 _hd226983227286_
                                 _tl226984227288_
                                 _e226985227291_
                                 _hd226986227294_
                                 _tl226987227296_
                                 _e226988227299_
                                 _hd226989227302_
                                 _tl226990227304_))))
                        (___match235434235435_
                         _e226955227211_
                         _hd226956227214_
                         _tl226957227216_
                         _e226967227243_
                         _hd226968227246_
                         _tl226969227248_
                         _e226970227251_
                         _hd226971227254_
                         _tl226972227256_
                         _e226973227259_
                         _hd226974227262_
                         _tl226975227264_
                         _e226976227267_
                         _hd226977227270_
                         _tl226978227272_
                         _e226979227275_
                         _hd226980227278_
                         _tl226981227280_
                         _e226982227283_
                         _hd226983227286_
                         _tl226984227288_
                         _e226985227291_
                         _hd226986227294_
                         _tl226987227296_
                         _e226988227299_
                         _hd226989227302_
                         _tl226990227304_))
                    (___match235434235435_
                     _e226955227211_
                     _hd226956227214_
                     _tl226957227216_
                     _e226967227243_
                     _hd226968227246_
                     _tl226969227248_
                     _e226970227251_
                     _hd226971227254_
                     _tl226972227256_
                     _e226973227259_
                     _hd226974227262_
                     _tl226975227264_
                     _e226976227267_
                     _hd226977227270_
                     _tl226978227272_
                     _e226979227275_
                     _hd226980227278_
                     _tl226981227280_
                     _e226982227283_
                     _hd226983227286_
                     _tl226984227288_
                     _e226985227291_
                     _hd226986227294_
                     _tl226987227296_
                     _e226988227299_
                     _hd226989227302_
                     _tl226990227304_))
                (___kont235337235338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235337235338_))
                                            (___kont235337235338_))
                                        (___kont235337235338_))))
                                (___kont235337235338_))))
                        (___kont235337235338_))
                    (___kont235337235338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235337235338_))
                                                (___kont235337235338_))
                                            (___kont235337235338_))))
                                    (___kont235337235338_))))
                            (___kont235337235338_))
                        (___kont235337235338_))
                    (___kont235337235338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235337235338_))))
                                            (___kont235337235338_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop226961227224_ _target226958227219_ '())))))
                   (___match235352235353_
                    (lambda (_e226907227471_
                             _hd226908227474_
                             _tl226909227476_
                             ___splice235325235326_
                             _target226910227479_
                             _tl226912227481_)
                      (letrec ((_loop226913227484_
                                (lambda (_hd226911227487_ _arg226917227489_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226911227487_))
                                      (let ((_e226914227492_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226911227487_))))
                                        (let ((_lp-tl226916227497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226914227492_)))
                                              (_lp-hd226915227495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226914227492_))))
                                          (let ((__tmp236715
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd226915227495_
                                                         _arg226917227489_))))
                                            (declare (not safe))
                                            (_loop226913227484_
                                             _lp-tl226916227497_
                                             __tmp236715))))
                                      (let ((_arg226918227500_
                                             (reverse _arg226917227489_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226909227476_))
                                            (let ((_e226919227503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226909227476_))))
                                              (let ((_tl226921227508_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226919227503_)))
                                                    (_hd226920227506_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226919227503_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd226920227506_))
                                                    (let ((_e226922227511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd226920227506_))))
                                                      (let ((_tl226924227516_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226922227511_)))
                    (_hd226923227514_
                     (let () (declare (not safe)) (##car _e226922227511_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd226923227514_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd226923227514_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226924227516_))
                            (let ((_e226925227519_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226924227516_))))
                              (let ((_tl226927227524_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226925227519_)))
                                    (_hd226926227522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226925227519_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd226926227522_))
                                    (let ((_e226928227527_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd226926227522_))))
                                      (let ((_tl226930227532_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226928227527_)))
                                            (_hd226929227530_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226928227527_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd226929227530_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd226929227530_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl226930227532_))
                                                    (let ((_e226931227535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl226930227532_))))
                                                      (let ((_tl226933227540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226931227535_)))
                    (_hd226932227538_
                     (let () (declare (not safe)) (##car _e226931227535_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl226933227540_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl226927227524_))
                        (let ((___splice235327235328_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl226927227524_
                                  '0))))
                          (let ((_tl226936227545_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235327235328_ '1)))
                                (_target226934227543_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235327235328_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226936227545_))
                                (letrec ((_loop226937227548_
                                          (lambda (_hd226935227551_
                                                   _xarg226941227553_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd226935227551_))
                                                (let ((_e226938227556_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd226935227551_))))
                                                  (let ((_lp-tl226940227561_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226938227556_)))
                                                        (_lp-hd226939227559_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226938227556_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd226939227559_))
                                                        (let ((_e226943227564_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd226939227559_))))
                  (let ((_tl226945227569_
                         (let () (declare (not safe)) (##cdr _e226943227564_)))
                        (_hd226944227567_
                         (let ()
                           (declare (not safe))
                           (##car _e226943227564_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226944227567_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd226944227567_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226945227569_))
                                (let ((_e226946227572_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226945227569_))))
                                  (let ((_tl226948227577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226946227572_)))
                                        (_hd226947227575_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226946227572_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226948227577_))
                                        (let ((__tmp236716
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd226947227575_
                                                       _xarg226941227553_))))
                                          (declare (not safe))
                                          (_loop226937227548_
                                           _lp-tl226940227561_
                                           __tmp236716))
                                        (___match235364235365_
                                         _e226907227471_
                                         _hd226908227474_
                                         _tl226909227476_
                                         ___splice235325235326_
                                         _target226910227479_
                                         _tl226912227481_))))
                                (___match235364235365_
                                 _e226907227471_
                                 _hd226908227474_
                                 _tl226909227476_
                                 ___splice235325235326_
                                 _target226910227479_
                                 _tl226912227481_))
                            (___match235364235365_
                             _e226907227471_
                             _hd226908227474_
                             _tl226909227476_
                             ___splice235325235326_
                             _target226910227479_
                             _tl226912227481_))
                        (___match235364235365_
                         _e226907227471_
                         _hd226908227474_
                         _tl226909227476_
                         ___splice235325235326_
                         _target226910227479_
                         _tl226912227481_))))
                (___match235364235365_
                 _e226907227471_
                 _hd226908227474_
                 _tl226909227476_
                 ___splice235325235326_
                 _target226910227479_
                 _tl226912227481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg226942227580_
                                                       (reverse _xarg226941227553_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226921227508_))
                                                      (let ((_L227583_
                                                             _xarg226942227580_)
                                                            (_L227584_
                                                             _hd226932227538_)
                                                            (_L227585_
                                                             _arg226918227500_))
                                                        (if (and (let ((__tmp236717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp236718
                                       (lambda (_g227613227616_
                                                _g227614227618_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227613227616_
                                                 _g227614227618_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236718 '() _L227585_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp236717))
                         (fx= (length (let ((__tmp236719
                                             (lambda (_g227620227623_
                                                      _g227621227625_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g227620227623_
                                                       _g227621227625_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp236719 '() _L227585_)))
                              (length (let ((__tmp236720
                                             (lambda (_g227627227630_
                                                      _g227628227632_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g227627227630_
                                                       _g227628227632_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp236720 '() _L227583_))))
                         (let ((__tmp236723
                                (let ((__tmp236724
                                       (lambda (_g227634227637_
                                                _g227635227639_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227634227637_
                                                 _g227635227639_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236724 '() _L227585_)))
                               (__tmp236721
                                (let ((__tmp236722
                                       (lambda (_g227641227644_
                                                _g227642227646_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g227641227644_
                                                 _g227642227646_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp236722 '() _L227583_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp236723
                                    __tmp236721))
                         (let ((__tmp236725
                                (let ((__tmp236728
                                       (lambda (_g227648227650_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g227648227650_
                                            _L227584_))))
                                      (__tmp236726
                                       (let ((__tmp236727
                                              (lambda (_g227652227655_
                                                       _g227653227657_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g227652227655_
                                                        _g227653227657_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp236727 '() _L227585_))))
                                  (declare (not safe))
                                  (find __tmp236728 __tmp236726))))
                           (declare (not safe))
                           (not __tmp236725)))
                    (___kont235323235324_ _L227583_ _L227584_ _L227585_)
                    (___match235364235365_
                     _e226907227471_
                     _hd226908227474_
                     _tl226909227476_
                     ___splice235325235326_
                     _target226910227479_
                     _tl226912227481_)))
              (___match235364235365_
               _e226907227471_
               _hd226908227474_
               _tl226909227476_
               ___splice235325235326_
               _target226910227479_
               _tl226912227481_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop226937227548_
                                     _target226934227543_
                                     '())))
                                (___match235364235365_
                                 _e226907227471_
                                 _hd226908227474_
                                 _tl226909227476_
                                 ___splice235325235326_
                                 _target226910227479_
                                 _tl226912227481_))))
                        (___match235364235365_
                         _e226907227471_
                         _hd226908227474_
                         _tl226909227476_
                         ___splice235325235326_
                         _target226910227479_
                         _tl226912227481_))
                    (___match235364235365_
                     _e226907227471_
                     _hd226908227474_
                     _tl226909227476_
                     ___splice235325235326_
                     _target226910227479_
                     _tl226912227481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235364235365_
                                                     _e226907227471_
                                                     _hd226908227474_
                                                     _tl226909227476_
                                                     ___splice235325235326_
                                                     _target226910227479_
                                                     _tl226912227481_))
                                                (___match235364235365_
                                                 _e226907227471_
                                                 _hd226908227474_
                                                 _tl226909227476_
                                                 ___splice235325235326_
                                                 _target226910227479_
                                                 _tl226912227481_))
                                            (___match235364235365_
                                             _e226907227471_
                                             _hd226908227474_
                                             _tl226909227476_
                                             ___splice235325235326_
                                             _target226910227479_
                                             _tl226912227481_))))
                                    (___match235364235365_
                                     _e226907227471_
                                     _hd226908227474_
                                     _tl226909227476_
                                     ___splice235325235326_
                                     _target226910227479_
                                     _tl226912227481_))))
                            (___match235364235365_
                             _e226907227471_
                             _hd226908227474_
                             _tl226909227476_
                             ___splice235325235326_
                             _target226910227479_
                             _tl226912227481_))
                        (___match235364235365_
                         _e226907227471_
                         _hd226908227474_
                         _tl226909227476_
                         ___splice235325235326_
                         _target226910227479_
                         _tl226912227481_))
                    (___match235364235365_
                     _e226907227471_
                     _hd226908227474_
                     _tl226909227476_
                     ___splice235325235326_
                     _target226910227479_
                     _tl226912227481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235364235365_
                                                     _e226907227471_
                                                     _hd226908227474_
                                                     _tl226909227476_
                                                     ___splice235325235326_
                                                     _target226910227479_
                                                     _tl226912227481_))))
                                            (___match235364235365_
                                             _e226907227471_
                                             _hd226908227474_
                                             _tl226909227476_
                                             ___splice235325235326_
                                             _target226910227479_
                                             _tl226912227481_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop226913227484_ _target226910227479_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235321235322_))
                  (let ((_e226907227471_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235321235322_))))
                    (let ((_tl226909227476_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226907227471_)))
                          (_hd226908227474_
                           (let ()
                             (declare (not safe))
                             (##car _e226907227471_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd226908227474_))
                          (let ((___splice235325235326_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd226908227474_
                                    '0))))
                            (let ((_tl226912227481_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice235325235326_ '1)))
                                  (_target226910227479_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice235325235326_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226912227481_))
                                  (___match235352235353_
                                   _e226907227471_
                                   _hd226908227474_
                                   _tl226909227476_
                                   ___splice235325235326_
                                   _target226910227479_
                                   _tl226912227481_)
                                  (___match235364235365_
                                   _e226907227471_
                                   _hd226908227474_
                                   _tl226909227476_
                                   ___splice235325235326_
                                   _target226910227479_
                                   _tl226912227481_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226909227476_))
                              (let ((_e227022227079_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226909227476_))))
                                (let ((_tl227024227084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227022227079_)))
                                      (_hd227023227082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227022227079_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd227023227082_))
                                      (let ((_e227025227087_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd227023227082_))))
                                        (let ((_tl227027227092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227025227087_)))
                                              (_hd227026227090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227025227087_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd227026227090_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd227026227090_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl227027227092_))
                                                      (let ((_e227028227095_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl227027227092_))))
                (let ((_tl227030227100_
                       (let () (declare (not safe)) (##cdr _e227028227095_)))
                      (_hd227029227098_
                       (let () (declare (not safe)) (##car _e227028227095_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227029227098_))
                      (let ((_e227031227103_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227029227098_))))
                        (let ((_tl227033227108_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227031227103_)))
                              (_hd227032227106_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227031227103_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd227032227106_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd227032227106_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227033227108_))
                                      (let ((_e227034227111_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227033227108_))))
                                        (let ((_tl227036227116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227034227111_)))
                                              (_hd227035227114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227034227111_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227036227116_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227030227100_))
                                                  (let ((_e227037227119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227030227100_))))
                                                    (let ((_tl227039227124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227037227119_)))
                                                          (_hd227038227122_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227037227119_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd227038227122_))
                                                          (let ((_e227040227127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd227038227122_))))
                    (let ((_tl227042227132_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227040227127_)))
                          (_hd227041227130_
                           (let ()
                             (declare (not safe))
                             (##car _e227040227127_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd227041227130_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd227041227130_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227042227132_))
                                  (let ((_e227043227135_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227042227132_))))
                                    (let ((_tl227045227140_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227043227135_)))
                                          (_hd227044227138_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227043227135_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227045227140_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl227039227124_))
                                              (let ((_e227046227143_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl227039227124_))))
                                                (let ((_tl227048227148_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227046227143_)))
                                                      (_hd227047227146_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227046227143_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227047227146_))
                                                      (let ((_e227049227151_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227047227146_))))
                (let ((_tl227051227156_
                       (let () (declare (not safe)) (##cdr _e227049227151_)))
                      (_hd227050227154_
                       (let () (declare (not safe)) (##car _e227049227151_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd227050227154_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd227050227154_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227051227156_))
                              (let ((_e227052227159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227051227156_))))
                                (let ((_tl227054227164_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227052227159_)))
                                      (_hd227053227162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227052227159_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227054227164_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227048227148_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227024227084_))
                                              (___match235462235463_
                                               _e226907227471_
                                               _hd226908227474_
                                               _tl226909227476_
                                               _e227022227079_
                                               _hd227023227082_
                                               _tl227024227084_
                                               _e227025227087_
                                               _hd227026227090_
                                               _tl227027227092_
                                               _e227028227095_
                                               _hd227029227098_
                                               _tl227030227100_
                                               _e227031227103_
                                               _hd227032227106_
                                               _tl227033227108_
                                               _e227034227111_
                                               _hd227035227114_
                                               _tl227036227116_
                                               _e227037227119_
                                               _hd227038227122_
                                               _tl227039227124_
                                               _e227040227127_
                                               _hd227041227130_
                                               _tl227042227132_
                                               _e227043227135_
                                               _hd227044227138_
                                               _tl227045227140_
                                               _e227046227143_
                                               _hd227047227146_
                                               _tl227048227148_
                                               _e227049227151_
                                               _hd227050227154_
                                               _tl227051227156_
                                               _e227052227159_
                                               _hd227053227162_
                                               _tl227054227164_)
                                              (___kont235337235338_))
                                          (___kont235337235338_))
                                      (___kont235337235338_))))
                              (___kont235337235338_))
                          (___kont235337235338_))
                      (___kont235337235338_))))
              (___kont235337235338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont235337235338_))
                                          (___kont235337235338_))))
                                  (___kont235337235338_))
                              (___kont235337235338_))
                          (___kont235337235338_))))
                  (___kont235337235338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235337235338_))
                                              (___kont235337235338_))))
                                      (___kont235337235338_))
                                  (___kont235337235338_))
                              (___kont235337235338_))))
                      (___kont235337235338_))))
              (___kont235337235338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235337235338_))
                                              (___kont235337235338_))))
                                      (___kont235337235338_))))
                              (___kont235337235338_)))))
                  (___kont235337235338_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form226365_)
        (let* ((___stx235465235466_ _form226365_)
               (_g226369226493_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235465235466_)))))
          (let ((___kont235467235468_
                 (lambda (_L226863_ _L226864_ _L226865_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L226864_))))
                (___kont235473235474_
                 (lambda (_L226711_ _L226712_ _L226713_ _L226714_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L226711_))))
                (___kont235477235478_
                 (lambda (_L226578_ _L226579_ _L226580_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L226578_)))))
            (let* ((___match235574235575_
                    (lambda (_e226459226498_
                             _hd226460226501_
                             _tl226461226503_
                             _e226462226506_
                             _hd226463226509_
                             _tl226464226511_
                             _e226465226514_
                             _hd226466226517_
                             _tl226467226519_
                             _e226468226522_
                             _hd226469226525_
                             _tl226470226527_
                             _e226471226530_
                             _hd226472226533_
                             _tl226473226535_
                             _e226474226538_
                             _hd226475226541_
                             _tl226476226543_
                             _e226477226546_
                             _hd226478226549_
                             _tl226479226551_
                             _e226480226554_
                             _hd226481226557_
                             _tl226482226559_
                             _e226483226562_
                             _hd226484226565_
                             _tl226485226567_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226479226551_))
                          (let ((_e226486226570_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226479226551_))))
                            (let ((_tl226488226575_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226486226570_)))
                                  (_hd226487226573_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226486226570_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226488226575_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226464226511_))
                                      (___kont235477235478_
                                       _hd226484226565_
                                       _hd226475226541_
                                       _hd226460226501_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226369226493_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226369226493_)))))
                          (let () (declare (not safe)) (_g226369226493_)))))
                   (___match235504235505_
                    (lambda (_e226420226615_
                             _hd226421226618_
                             _tl226422226620_
                             ___splice235475235476_
                             _target226423226623_
                             _tl226425226625_)
                      (letrec ((_loop226426226628_
                                (lambda (_hd226424226631_ _arg226430226633_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226424226631_))
                                      (let ((_e226427226636_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226424226631_))))
                                        (let ((_lp-tl226429226641_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226427226636_)))
                                              (_lp-hd226428226639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226427226636_))))
                                          (let ((__tmp236729
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd226428226639_
                                                         _arg226430226633_))))
                                            (declare (not safe))
                                            (_loop226426226628_
                                             _lp-tl226429226641_
                                             __tmp236729))))
                                      (let ((_arg226431226644_
                                             (reverse _arg226430226633_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226422226620_))
                                            (let ((_e226432226647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226422226620_))))
                                              (let ((_tl226434226652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226432226647_)))
                                                    (_hd226433226650_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226432226647_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd226433226650_))
                                                    (let ((_e226435226655_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd226433226650_))))
                                                      (let ((_tl226437226660_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226435226655_)))
                    (_hd226436226658_
                     (let () (declare (not safe)) (##car _e226435226655_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd226436226658_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd226436226658_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226437226660_))
                            (let ((_e226438226663_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226437226660_))))
                              (let ((_tl226440226668_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226438226663_)))
                                    (_hd226439226666_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226438226663_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd226439226666_))
                                    (let ((_e226441226671_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd226439226666_))))
                                      (let ((_tl226443226676_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226441226671_)))
                                            (_hd226442226674_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226441226671_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd226442226674_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd226442226674_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl226443226676_))
                                                    (let ((_e226444226679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl226443226676_))))
                                                      (let ((_tl226446226684_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226444226679_)))
                    (_hd226445226682_
                     (let () (declare (not safe)) (##car _e226444226679_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl226446226684_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl226440226668_))
                        (let ((_e226447226687_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl226440226668_))))
                          (let ((_tl226449226692_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226447226687_)))
                                (_hd226448226690_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226447226687_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd226448226690_))
                                (let ((_e226450226695_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd226448226690_))))
                                  (let ((_tl226452226700_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226450226695_)))
                                        (_hd226451226698_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226450226695_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd226451226698_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd226451226698_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl226452226700_))
                                                (let ((_e226453226703_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl226452226700_))))
                                                  (let ((_tl226455226708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226453226703_)))
                                                        (_hd226454226706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226453226703_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl226455226708_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl226434226652_))
                                                            (___kont235473235474_
                                                             _hd226454226706_
                                                             _hd226445226682_
                                                             _tl226425226625_
                                                             _arg226431226644_)
                                                            (___match235574235575_
                                                             _e226420226615_
                                                             _hd226421226618_
                                                             _tl226422226620_
                                                             _e226432226647_
                                                             _hd226433226650_
                                                             _tl226434226652_
                                                             _e226435226655_
                                                             _hd226436226658_
                                                             _tl226437226660_
                                                             _e226438226663_
                                                             _hd226439226666_
                                                             _tl226440226668_
                                                             _e226441226671_
                                                             _hd226442226674_
                                                             _tl226443226676_
                                                             _e226444226679_
                                                             _hd226445226682_
                                                             _tl226446226684_
                                                             _e226447226687_
                                                             _hd226448226690_
                                                             _tl226449226692_
                                                             _e226450226695_
                                                             _hd226451226698_
                                                             _tl226452226700_
                                                             _e226453226703_
                                                             _hd226454226706_
                                                             _tl226455226708_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g226369226493_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g226369226493_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g226369226493_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g226369226493_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g226369226493_)))))
                        (let () (declare (not safe)) (_g226369226493_)))
                    (let () (declare (not safe)) (_g226369226493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g226369226493_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g226369226493_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g226369226493_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g226369226493_)))))
                            (let () (declare (not safe)) (_g226369226493_)))
                        (let () (declare (not safe)) (_g226369226493_)))
                    (let () (declare (not safe)) (_g226369226493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g226369226493_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g226369226493_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop226426226628_ _target226423226623_ '())))))
                   (___match235492235493_
                    (lambda (_e226374226751_
                             _hd226375226754_
                             _tl226376226756_
                             ___splice235469235470_
                             _target226377226759_
                             _tl226379226761_)
                      (letrec ((_loop226380226764_
                                (lambda (_hd226378226767_ _arg226384226769_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226378226767_))
                                      (let ((_e226381226772_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226378226767_))))
                                        (let ((_lp-tl226383226777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226381226772_)))
                                              (_lp-hd226382226775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226381226772_))))
                                          (let ((__tmp236730
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd226382226775_
                                                         _arg226384226769_))))
                                            (declare (not safe))
                                            (_loop226380226764_
                                             _lp-tl226383226777_
                                             __tmp236730))))
                                      (let ((_arg226385226780_
                                             (reverse _arg226384226769_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl226376226756_))
                                            (let ((_e226386226783_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl226376226756_))))
                                              (let ((_tl226388226788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e226386226783_)))
                                                    (_hd226387226786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e226386226783_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd226387226786_))
                                                    (let ((_e226389226791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd226387226786_))))
                                                      (let ((_tl226391226796_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226389226791_)))
                    (_hd226390226794_
                     (let () (declare (not safe)) (##car _e226389226791_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd226390226794_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd226390226794_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226391226796_))
                            (let ((_e226392226799_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226391226796_))))
                              (let ((_tl226394226804_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226392226799_)))
                                    (_hd226393226802_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226392226799_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd226393226802_))
                                    (let ((_e226395226807_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd226393226802_))))
                                      (let ((_tl226397226812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226395226807_)))
                                            (_hd226396226810_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226395226807_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd226396226810_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd226396226810_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl226397226812_))
                                                    (let ((_e226398226815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl226397226812_))))
                                                      (let ((_tl226400226820_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e226398226815_)))
                    (_hd226399226818_
                     (let () (declare (not safe)) (##car _e226398226815_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl226400226820_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl226394226804_))
                        (let ((___splice235471235472_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl226394226804_
                                  '0))))
                          (let ((_tl226403226825_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235471235472_ '1)))
                                (_target226401226823_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice235471235472_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226403226825_))
                                (letrec ((_loop226404226828_
                                          (lambda (_hd226402226831_
                                                   _xarg226408226833_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd226402226831_))
                                                (let ((_e226405226836_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd226402226831_))))
                                                  (let ((_lp-tl226407226841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e226405226836_)))
                                                        (_lp-hd226406226839_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e226405226836_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd226406226839_))
                                                        (let ((_e226410226844_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd226406226839_))))
                  (let ((_tl226412226849_
                         (let () (declare (not safe)) (##cdr _e226410226844_)))
                        (_hd226411226847_
                         (let ()
                           (declare (not safe))
                           (##car _e226410226844_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226411226847_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd226411226847_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl226412226849_))
                                (let ((_e226413226852_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl226412226849_))))
                                  (let ((_tl226415226857_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e226413226852_)))
                                        (_hd226414226855_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e226413226852_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl226415226857_))
                                        (let ((__tmp236731
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd226414226855_
                                                       _xarg226408226833_))))
                                          (declare (not safe))
                                          (_loop226404226828_
                                           _lp-tl226407226841_
                                           __tmp236731))
                                        (___match235504235505_
                                         _e226374226751_
                                         _hd226375226754_
                                         _tl226376226756_
                                         ___splice235469235470_
                                         _target226377226759_
                                         _tl226379226761_))))
                                (___match235504235505_
                                 _e226374226751_
                                 _hd226375226754_
                                 _tl226376226756_
                                 ___splice235469235470_
                                 _target226377226759_
                                 _tl226379226761_))
                            (___match235504235505_
                             _e226374226751_
                             _hd226375226754_
                             _tl226376226756_
                             ___splice235469235470_
                             _target226377226759_
                             _tl226379226761_))
                        (___match235504235505_
                         _e226374226751_
                         _hd226375226754_
                         _tl226376226756_
                         ___splice235469235470_
                         _target226377226759_
                         _tl226379226761_))))
                (___match235504235505_
                 _e226374226751_
                 _hd226375226754_
                 _tl226376226756_
                 ___splice235469235470_
                 _target226377226759_
                 _tl226379226761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg226409226860_
                                                       (reverse _xarg226408226833_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226388226788_))
                                                      (___kont235467235468_
                                                       _xarg226409226860_
                                                       _hd226399226818_
                                                       _arg226385226780_)
                                                      (___match235504235505_
                                                       _e226374226751_
                                                       _hd226375226754_
                                                       _tl226376226756_
                                                       ___splice235469235470_
                                                       _target226377226759_
                                                       _tl226379226761_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop226404226828_
                                     _target226401226823_
                                     '())))
                                (___match235504235505_
                                 _e226374226751_
                                 _hd226375226754_
                                 _tl226376226756_
                                 ___splice235469235470_
                                 _target226377226759_
                                 _tl226379226761_))))
                        (___match235504235505_
                         _e226374226751_
                         _hd226375226754_
                         _tl226376226756_
                         ___splice235469235470_
                         _target226377226759_
                         _tl226379226761_))
                    (___match235504235505_
                     _e226374226751_
                     _hd226375226754_
                     _tl226376226756_
                     ___splice235469235470_
                     _target226377226759_
                     _tl226379226761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235504235505_
                                                     _e226374226751_
                                                     _hd226375226754_
                                                     _tl226376226756_
                                                     ___splice235469235470_
                                                     _target226377226759_
                                                     _tl226379226761_))
                                                (___match235504235505_
                                                 _e226374226751_
                                                 _hd226375226754_
                                                 _tl226376226756_
                                                 ___splice235469235470_
                                                 _target226377226759_
                                                 _tl226379226761_))
                                            (___match235504235505_
                                             _e226374226751_
                                             _hd226375226754_
                                             _tl226376226756_
                                             ___splice235469235470_
                                             _target226377226759_
                                             _tl226379226761_))))
                                    (___match235504235505_
                                     _e226374226751_
                                     _hd226375226754_
                                     _tl226376226756_
                                     ___splice235469235470_
                                     _target226377226759_
                                     _tl226379226761_))))
                            (___match235504235505_
                             _e226374226751_
                             _hd226375226754_
                             _tl226376226756_
                             ___splice235469235470_
                             _target226377226759_
                             _tl226379226761_))
                        (___match235504235505_
                         _e226374226751_
                         _hd226375226754_
                         _tl226376226756_
                         ___splice235469235470_
                         _target226377226759_
                         _tl226379226761_))
                    (___match235504235505_
                     _e226374226751_
                     _hd226375226754_
                     _tl226376226756_
                     ___splice235469235470_
                     _target226377226759_
                     _tl226379226761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235504235505_
                                                     _e226374226751_
                                                     _hd226375226754_
                                                     _tl226376226756_
                                                     ___splice235469235470_
                                                     _target226377226759_
                                                     _tl226379226761_))))
                                            (___match235504235505_
                                             _e226374226751_
                                             _hd226375226754_
                                             _tl226376226756_
                                             ___splice235469235470_
                                             _target226377226759_
                                             _tl226379226761_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop226380226764_ _target226377226759_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235465235466_))
                  (let ((_e226374226751_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235465235466_))))
                    (let ((_tl226376226756_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226374226751_)))
                          (_hd226375226754_
                           (let ()
                             (declare (not safe))
                             (##car _e226374226751_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd226375226754_))
                          (let ((___splice235469235470_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd226375226754_
                                    '0))))
                            (let ((_tl226379226761_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice235469235470_ '1)))
                                  (_target226377226759_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice235469235470_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl226379226761_))
                                  (___match235492235493_
                                   _e226374226751_
                                   _hd226375226754_
                                   _tl226376226756_
                                   ___splice235469235470_
                                   _target226377226759_
                                   _tl226379226761_)
                                  (___match235504235505_
                                   _e226374226751_
                                   _hd226375226754_
                                   _tl226376226756_
                                   ___splice235469235470_
                                   _target226377226759_
                                   _tl226379226761_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226376226756_))
                              (let ((_e226462226506_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226376226756_))))
                                (let ((_tl226464226511_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226462226506_)))
                                      (_hd226463226509_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226462226506_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd226463226509_))
                                      (let ((_e226465226514_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd226463226509_))))
                                        (let ((_tl226467226519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226465226514_)))
                                              (_hd226466226517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226465226514_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd226466226517_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd226466226517_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl226467226519_))
                                                      (let ((_e226468226522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl226467226519_))))
                (let ((_tl226470226527_
                       (let () (declare (not safe)) (##cdr _e226468226522_)))
                      (_hd226469226525_
                       (let () (declare (not safe)) (##car _e226468226522_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226469226525_))
                      (let ((_e226471226530_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226469226525_))))
                        (let ((_tl226473226535_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226471226530_)))
                              (_hd226472226533_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226471226530_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd226472226533_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd226472226533_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226473226535_))
                                      (let ((_e226474226538_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226473226535_))))
                                        (let ((_tl226476226543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226474226538_)))
                                              (_hd226475226541_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226474226538_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226476226543_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226470226527_))
                                                  (let ((_e226477226546_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226470226527_))))
                                                    (let ((_tl226479226551_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226477226546_)))
                                                          (_hd226478226549_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226477226546_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd226478226549_))
                                                          (let ((_e226480226554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd226478226549_))))
                    (let ((_tl226482226559_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226480226554_)))
                          (_hd226481226557_
                           (let ()
                             (declare (not safe))
                             (##car _e226480226554_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd226481226557_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd226481226557_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226482226559_))
                                  (let ((_e226483226562_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226482226559_))))
                                    (let ((_tl226485226567_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226483226562_)))
                                          (_hd226484226565_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226483226562_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226485226567_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl226479226551_))
                                              (let ((_e226486226570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl226479226551_))))
                                                (let ((_tl226488226575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226486226570_)))
                                                      (_hd226487226573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226486226570_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl226488226575_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226464226511_))
                                                          (___kont235477235478_
                                                           _hd226484226565_
                                                           _hd226475226541_
                                                           _hd226375226754_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g226369226493_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g226369226493_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g226369226493_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226369226493_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226369226493_)))
                              (let () (declare (not safe)) (_g226369226493_)))
                          (let () (declare (not safe)) (_g226369226493_)))))
                  (let () (declare (not safe)) (_g226369226493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226369226493_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226369226493_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226369226493_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g226369226493_)))
                              (let ()
                                (declare (not safe))
                                (_g226369226493_)))))
                      (let () (declare (not safe)) (_g226369226493_)))))
              (let () (declare (not safe)) (_g226369226493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226369226493_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226369226493_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226369226493_)))))
                              (let ()
                                (declare (not safe))
                                (_g226369226493_))))))
                  (let () (declare (not safe)) (_g226369226493_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form226169_)
        (let* ((_g226171226185_
                (lambda (_g226172226182_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g226172226182_))))
               (_g226170226362_
                (lambda (_g226172226188_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g226172226188_))
                      (let ((_e226175226190_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g226172226188_))))
                        (let ((_hd226176226193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226175226190_)))
                              (_tl226177226195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226175226190_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226177226195_))
                              (let ((_e226178226198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226177226195_))))
                                (let ((_hd226179226201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226178226198_)))
                                      (_tl226180226203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226178226198_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226180226203_))
                                      ((lambda (_L226206_ _L226207_)
                                         (let* ((___stx235587235588_ _L226207_)
                                                (_g226222226250_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx235587235588_)))))
                                           (let ((___kont235589235590_
                                                  (lambda (_L226341_)
                                                    (length (let ((__tmp236732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g226351226354_ _g226352226356_)
                             (let ()
                               (declare (not safe))
                               (cons _g226351226354_ _g226352226356_)))))
                      (declare (not safe))
                      (foldr1 __tmp236732 '() _L226341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont235593235594_
                                                  (lambda (_L226292_ _L226293_)
                                                    (let ((__tmp236733
                                                           (length (let ((__tmp236734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g226304226307_ _g226305226309_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g226304226307_
                                            _g226305226309_)))))
                             (declare (not safe))
                             (foldr1 __tmp236734 '() _L226293_)))))
              (declare (not safe))
              (cons __tmp236733 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont235597235598_
                                                  (lambda (_L226255_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match235612235613_
                                                     (lambda (___splice235595235596_
                                                              _target226236226268_
                                                              _tl226238226270_)
                                                       (letrec ((_loop226239226273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd226237226276_ _arg226243226278_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd226237226276_))
                               (let ((_e226240226281_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd226237226276_))))
                                 (let ((_lp-tl226242226286_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e226240226281_)))
                                       (_lp-hd226241226284_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e226240226281_))))
                                   (let ((__tmp236735
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd226241226284_
                                                  _arg226243226278_))))
                                     (declare (not safe))
                                     (_loop226239226273_
                                      _lp-tl226242226286_
                                      __tmp236735))))
                               (let ((_arg226244226289_
                                      (reverse _arg226243226278_)))
                                 (___kont235593235594_
                                  _tl226238226270_
                                  _arg226244226289_))))))
                 (let ()
                   (declare (not safe))
                   (_loop226239226273_ _target226236226268_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match235606235607_
                                                     (lambda (___splice235591235592_
                                                              _target226225226317_
                                                              _tl226227226319_)
                                                       (letrec ((_loop226228226322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd226226226325_ _arg226232226327_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd226226226325_))
                               (let ((_e226229226330_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd226226226325_))))
                                 (let ((_lp-tl226231226335_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e226229226330_)))
                                       (_lp-hd226230226333_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e226229226330_))))
                                   (let ((__tmp236736
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd226230226333_
                                                  _arg226232226327_))))
                                     (declare (not safe))
                                     (_loop226228226322_
                                      _lp-tl226231226335_
                                      __tmp236736))))
                               (let ((_arg226233226338_
                                      (reverse _arg226232226327_)))
                                 (___kont235589235590_ _arg226233226338_))))))
                 (let ()
                   (declare (not safe))
                   (_loop226228226322_ _target226225226317_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx235587235588_))
                                                   (let ((___splice235591235592_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx235587235588_
                                                             '0))))
                                                     (let ((_tl226227226319_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice235591235592_
                                                               '1)))
                                                           (_target226225226317_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice235591235592_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226227226319_))
                                                           (___match235606235607_
                                                            ___splice235591235592_
                                                            _target226225226317_
                                                            _tl226227226319_)
                                                           (___match235612235613_
                                                            ___splice235591235592_
                                                            _target226225226317_
                                                            _tl226227226319_))))
                                                   (___kont235597235598_
                                                    ___stx235587235588_))))))
                                       _hd226179226201_
                                       _hd226176226193_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226171226185_ _g226172226188_)))))
                              (let ()
                                (declare (not safe))
                                (_g226171226185_ _g226172226188_)))))
                      (let ()
                        (declare (not safe))
                        (_g226171226185_ _g226172226188_))))))
          (declare (not safe))
          (_g226170226362_ _form226169_))))
    (define gxc#lambda-expr?
      (lambda (_expr226122_)
        (let* ((___stx235615235616_ _expr226122_)
               (_g226125226135_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235615235616_)))))
          (let ((___kont235617235618_ (lambda (_L226155_) '#t))
                (___kont235619235620_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235615235616_))
                (let ((_e226128226147_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235615235616_))))
                  (let ((_tl226130226152_
                         (let () (declare (not safe)) (##cdr _e226128226147_)))
                        (_hd226129226150_
                         (let ()
                           (declare (not safe))
                           (##car _e226128226147_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226129226150_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd226129226150_))
                            (___kont235617235618_ _tl226130226152_)
                            (___kont235619235620_))
                        (___kont235619235620_))))
                (___kont235619235620_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr226075_)
        (let* ((___stx235633235634_ _expr226075_)
               (_g226078226088_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235633235634_)))))
          (let ((___kont235635235636_ (lambda (_L226108_) '#t))
                (___kont235637235638_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235633235634_))
                (let ((_e226081226100_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235633235634_))))
                  (let ((_tl226083226105_
                         (let () (declare (not safe)) (##cdr _e226081226100_)))
                        (_hd226082226103_
                         (let ()
                           (declare (not safe))
                           (##car _e226081226100_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd226082226103_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd226082226103_))
                            (___kont235635235636_ _tl226083226105_)
                            (___kont235637235638_))
                        (___kont235637235638_))))
                (___kont235637235638_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr225944_)
        (let* ((___stx235651235652_ _expr225944_)
               (_g225947225977_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235651235652_)))))
          (let ((___kont235653235654_
                 (lambda (_L226045_ _L226046_ _L226047_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226047_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L226046_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L226045_))
                           '#f)
                       '#f)))
                (___kont235655235656_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235651235652_))
                (let ((_e225952225989_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235651235652_))))
                  (let ((_tl225954225994_
                         (let () (declare (not safe)) (##cdr _e225952225989_)))
                        (_hd225953225992_
                         (let ()
                           (declare (not safe))
                           (##car _e225952225989_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd225953225992_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd225953225992_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl225954225994_))
                                (let ((_e225955225997_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl225954225994_))))
                                  (let ((_tl225957226002_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225955225997_)))
                                        (_hd225956226000_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225955225997_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd225956226000_))
                                        (let ((_e225958226005_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd225956226000_))))
                                          (let ((_tl225960226010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225958226005_)))
                                                (_hd225959226008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225958226005_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd225959226008_))
                                                (let ((_e225961226013_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd225959226008_))))
                                                  (let ((_tl225963226018_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225961226013_)))
                                                        (_hd225962226016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225961226013_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225962226016_))
                                                        (let ((_e225964226021_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225962226016_))))
                  (let ((_tl225966226026_
                         (let () (declare (not safe)) (##cdr _e225964226021_)))
                        (_hd225965226024_
                         (let ()
                           (declare (not safe))
                           (##car _e225964226021_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl225966226026_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225963226018_))
                            (let ((_e225967226029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225963226018_))))
                              (let ((_tl225969226034_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225967226029_)))
                                    (_hd225968226032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225967226029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl225969226034_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225960226010_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225957226002_))
                                            (let ((_e225970226037_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225957226002_))))
                                              (let ((_tl225972226042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225970226037_)))
                                                    (_hd225971226040_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225970226037_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl225972226042_))
                                                    (___kont235653235654_
                                                     _hd225971226040_
                                                     _hd225968226032_
                                                     _hd225965226024_)
                                                    (___kont235655235656_))))
                                            (___kont235655235656_))
                                        (___kont235655235656_))
                                    (___kont235655235656_))))
                            (___kont235655235656_))
                        (___kont235655235656_))))
                (___kont235655235656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235655235656_))))
                                        (___kont235655235656_))))
                                (___kont235655235656_))
                            (___kont235655235656_))
                        (___kont235655235656_))))
                (___kont235655235656_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr225269_)
        (let* ((___stx235713235714_ _expr225269_)
               (_g225272225430_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235713235714_)))))
          (let ((___kont235715235716_
                 (lambda (_L225818_
                          _L225819_
                          _L225820_
                          _L225821_
                          _L225822_
                          _L225823_
                          _L225824_
                          _L225825_
                          _L225826_
                          _L225827_
                          _L225828_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L225825_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L225821_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L225820_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L225828_
                                      _L225819_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L225827_
                                          _L225824_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L225822_
                                              _L225818_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L225826_
                                              _L225823_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont235717235718_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx235713235714_))
                (let ((_e225285225442_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx235713235714_))))
                  (let ((_tl225287225447_
                         (let () (declare (not safe)) (##cdr _e225285225442_)))
                        (_hd225286225445_
                         (let ()
                           (declare (not safe))
                           (##car _e225285225442_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd225286225445_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd225286225445_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl225287225447_))
                                (let ((_e225288225450_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl225287225447_))))
                                  (let ((_tl225290225455_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225288225450_)))
                                        (_hd225289225453_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225288225450_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd225289225453_))
                                        (let ((_e225291225458_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd225289225453_))))
                                          (let ((_tl225293225463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225291225458_)))
                                                (_hd225292225461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225291225458_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd225292225461_))
                                                (let ((_e225294225466_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd225292225461_))))
                                                  (let ((_tl225296225471_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225294225466_)))
                                                        (_hd225295225469_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225294225466_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225295225469_))
                                                        (let ((_e225297225474_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225295225469_))))
                  (let ((_tl225299225479_
                         (let () (declare (not safe)) (##cdr _e225297225474_)))
                        (_hd225298225477_
                         (let ()
                           (declare (not safe))
                           (##car _e225297225474_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl225299225479_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225296225471_))
                            (let ((_e225300225482_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225296225471_))))
                              (let ((_tl225302225487_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225300225482_)))
                                    (_hd225301225485_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225300225482_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225301225485_))
                                    (let ((_e225303225490_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225301225485_))))
                                      (let ((_tl225305225495_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225303225490_)))
                                            (_hd225304225493_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225303225490_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd225304225493_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd225304225493_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225305225495_))
                                                    (let ((_e225306225498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225305225495_))))
                                                      (let ((_tl225308225503_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225306225498_)))
                    (_hd225307225501_
                     (let () (declare (not safe)) (##car _e225306225498_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225307225501_))
                    (let ((_e225309225506_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225307225501_))))
                      (let ((_tl225311225511_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225309225506_)))
                            (_hd225310225509_
                             (let ()
                               (declare (not safe))
                               (##car _e225309225506_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd225310225509_))
                            (let ((_e225312225514_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd225310225509_))))
                              (let ((_tl225314225519_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225312225514_)))
                                    (_hd225313225517_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225312225514_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225313225517_))
                                    (let ((_e225315225522_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225313225517_))))
                                      (let ((_tl225317225527_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225315225522_)))
                                            (_hd225316225525_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225315225522_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225317225527_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225314225519_))
                                                (let ((_e225318225530_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225314225519_))))
                                                  (let ((_tl225320225535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225318225530_)))
                                                        (_hd225319225533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225318225530_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225320225535_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl225311225511_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl225308225503_))
                        (let ((_e225321225538_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225308225503_))))
                          (let ((_tl225323225543_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225321225538_)))
                                (_hd225322225541_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225321225538_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225322225541_))
                                (let ((_e225324225546_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225322225541_))))
                                  (let ((_tl225326225551_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225324225546_)))
                                        (_hd225325225549_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225324225546_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225325225549_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd225325225549_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225326225551_))
                                                (let ((_e225327225554_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225326225551_))))
                                                  (let ((_tl225329225559_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225327225554_)))
                                                        (_hd225328225557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225327225554_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225328225557_))
                                                        (let ((_e225330225562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225328225557_))))
                  (let ((_tl225332225567_
                         (let () (declare (not safe)) (##cdr _e225330225562_)))
                        (_hd225331225565_
                         (let ()
                           (declare (not safe))
                           (##car _e225330225562_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225329225559_))
                        (let ((_e225333225570_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225329225559_))))
                          (let ((_tl225335225575_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225333225570_)))
                                (_hd225334225573_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225333225570_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225334225573_))
                                (let ((_e225336225578_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225334225573_))))
                                  (let ((_tl225338225583_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225336225578_)))
                                        (_hd225337225581_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225336225578_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225337225581_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd225337225581_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225338225583_))
                                                (let ((_e225339225586_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225338225583_))))
                                                  (let ((_tl225341225591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225339225586_)))
                                                        (_hd225340225589_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225339225586_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd225340225589_))
                                                        (let ((_e225342225594_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd225340225589_))))
                  (let ((_tl225344225599_
                         (let () (declare (not safe)) (##cdr _e225342225594_)))
                        (_hd225343225597_
                         (let ()
                           (declare (not safe))
                           (##car _e225342225594_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd225343225597_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd225343225597_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl225344225599_))
                                (let ((_e225345225602_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl225344225599_))))
                                  (let ((_tl225347225607_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225345225602_)))
                                        (_hd225346225605_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225345225602_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225347225607_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225341225591_))
                                            (let ((_e225348225610_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225341225591_))))
                                              (let ((_tl225350225615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225348225610_)))
                                                    (_hd225349225613_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225348225610_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd225349225613_))
                                                    (let ((_e225351225618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd225349225613_))))
                                                      (let ((_tl225353225623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225351225618_)))
                    (_hd225352225621_
                     (let () (declare (not safe)) (##car _e225351225618_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd225352225621_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd225352225621_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225353225623_))
                            (let ((_e225354225626_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225353225623_))))
                              (let ((_tl225356225631_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225354225626_)))
                                    (_hd225355225629_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225354225626_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl225356225631_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl225350225615_))
                                        (let ((_e225357225634_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl225350225615_))))
                                          (let ((_tl225359225639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225357225634_)))
                                                (_hd225358225637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225357225634_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd225358225637_))
                                                (let ((_e225360225642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd225358225637_))))
                                                  (let ((_tl225362225647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225360225642_)))
                                                        (_hd225361225645_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225360225642_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd225361225645_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd225361225645_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl225362225647_))
                        (let ((_e225363225650_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225362225647_))))
                          (let ((_tl225365225655_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225363225650_)))
                                (_hd225364225653_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225363225650_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl225365225655_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl225335225575_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl225323225543_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225302225487_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225293225463_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225290225455_))
                                                    (let ((_e225366225658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225290225455_))))
                                                      (let ((_tl225368225663_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225366225658_)))
                    (_hd225367225661_
                     (let () (declare (not safe)) (##car _e225366225658_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225367225661_))
                    (let ((_e225369225666_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225367225661_))))
                      (let ((_tl225371225671_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225369225666_)))
                            (_hd225370225669_
                             (let ()
                               (declare (not safe))
                               (##car _e225369225666_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd225370225669_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd225370225669_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl225371225671_))
                                    (let ((_e225372225674_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl225371225671_))))
                                      (let ((_tl225374225679_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225372225674_)))
                                            (_hd225373225677_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225372225674_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225374225679_))
                                            (let ((_e225375225682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225374225679_))))
                                              (let ((_tl225377225687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225375225682_)))
                                                    (_hd225376225685_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225375225682_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd225376225685_))
                                                    (let ((_e225378225690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd225376225685_))))
                                                      (let ((_tl225380225695_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225378225690_)))
                    (_hd225379225693_
                     (let () (declare (not safe)) (##car _e225378225690_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd225379225693_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd225379225693_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl225380225695_))
                            (let ((_e225381225698_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl225380225695_))))
                              (let ((_tl225383225703_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225381225698_)))
                                    (_hd225382225701_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225381225698_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd225382225701_))
                                    (let ((_e225384225706_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd225382225701_))))
                                      (let ((_tl225386225711_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225384225706_)))
                                            (_hd225385225709_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225384225706_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd225385225709_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd225385225709_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225386225711_))
                                                    (let ((_e225387225714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225386225711_))))
                                                      (let ((_tl225389225719_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225387225714_)))
                    (_hd225388225717_
                     (let () (declare (not safe)) (##car _e225387225714_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl225389225719_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl225383225703_))
                        (let ((_e225390225722_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl225383225703_))))
                          (let ((_tl225392225727_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225390225722_)))
                                (_hd225391225725_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225390225722_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd225391225725_))
                                (let ((_e225393225730_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd225391225725_))))
                                  (let ((_tl225395225735_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e225393225730_)))
                                        (_hd225394225733_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e225393225730_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd225394225733_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd225394225733_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl225395225735_))
                                                (let ((_e225396225738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl225395225735_))))
                                                  (let ((_tl225398225743_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e225396225738_)))
                                                        (_hd225397225741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e225396225738_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225398225743_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl225392225727_))
                                                            (let ((_e225399225746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl225392225727_))))
                      (let ((_tl225401225751_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225399225746_)))
                            (_hd225400225749_
                             (let ()
                               (declare (not safe))
                               (##car _e225399225746_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd225400225749_))
                            (let ((_e225402225754_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd225400225749_))))
                              (let ((_tl225404225759_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e225402225754_)))
                                    (_hd225403225757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e225402225754_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd225403225757_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd225403225757_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl225404225759_))
                                            (let ((_e225405225762_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl225404225759_))))
                                              (let ((_tl225407225767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e225405225762_)))
                                                    (_hd225406225765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e225405225762_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl225407225767_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl225401225751_))
                                                        (let ((_e225408225770_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl225401225751_))))
                  (let ((_tl225410225775_
                         (let () (declare (not safe)) (##cdr _e225408225770_)))
                        (_hd225409225773_
                         (let ()
                           (declare (not safe))
                           (##car _e225408225770_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd225409225773_))
                        (let ((_e225411225778_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd225409225773_))))
                          (let ((_tl225413225783_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e225411225778_)))
                                (_hd225412225781_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e225411225778_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd225412225781_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd225412225781_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl225413225783_))
                                        (let ((_e225414225786_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl225413225783_))))
                                          (let ((_tl225416225791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e225414225786_)))
                                                (_hd225415225789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e225414225786_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225416225791_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl225410225775_))
                                                    (let ((_e225417225794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl225410225775_))))
                                                      (let ((_tl225419225799_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e225417225794_)))
                    (_hd225418225797_
                     (let () (declare (not safe)) (##car _e225417225794_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd225418225797_))
                    (let ((_e225420225802_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd225418225797_))))
                      (let ((_tl225422225807_
                             (let ()
                               (declare (not safe))
                               (##cdr _e225420225802_)))
                            (_hd225421225805_
                             (let ()
                               (declare (not safe))
                               (##car _e225420225802_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd225421225805_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd225421225805_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl225422225807_))
                                    (let ((_e225423225810_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl225422225807_))))
                                      (let ((_tl225425225815_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e225423225810_)))
                                            (_hd225424225813_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e225423225810_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl225425225815_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl225419225799_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl225377225687_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl225368225663_))
                                                        (___kont235715235716_
                                                         _hd225424225813_
                                                         _hd225415225789_
                                                         _hd225397225741_
                                                         _hd225388225717_
                                                         _hd225373225677_
                                                         _hd225364225653_
                                                         _hd225355225629_
                                                         _hd225346225605_
                                                         _hd225331225565_
                                                         _hd225316225525_
                                                         _hd225298225477_)
                                                        (___kont235717235718_))
                                                    (___kont235717235718_))
                                                (___kont235717235718_))
                                            (___kont235717235718_))))
                                    (___kont235717235718_))
                                (___kont235717235718_))
                            (___kont235717235718_))))
                    (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235717235718_))
                                                (___kont235717235718_))))
                                        (___kont235717235718_))
                                    (___kont235717235718_))
                                (___kont235717235718_))))
                        (___kont235717235718_))))
                (___kont235717235718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235717235718_))))
                                            (___kont235717235718_))
                                        (___kont235717235718_))
                                    (___kont235717235718_))))
                            (___kont235717235718_))))
                    (___kont235717235718_))
                (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235717235718_))
                                            (___kont235717235718_))
                                        (___kont235717235718_))))
                                (___kont235717235718_))))
                        (___kont235717235718_))
                    (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235717235718_))
                                                (___kont235717235718_))
                                            (___kont235717235718_))))
                                    (___kont235717235718_))))
                            (___kont235717235718_))
                        (___kont235717235718_))
                    (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235717235718_))))
                                            (___kont235717235718_))))
                                    (___kont235717235718_))
                                (___kont235717235718_))
                            (___kont235717235718_))))
                    (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235717235718_))
                                                (___kont235717235718_))
                                            (___kont235717235718_))
                                        (___kont235717235718_))
                                    (___kont235717235718_))
                                (___kont235717235718_))))
                        (___kont235717235718_))
                    (___kont235717235718_))
                (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235717235718_))))
                                        (___kont235717235718_))
                                    (___kont235717235718_))))
                            (___kont235717235718_))
                        (___kont235717235718_))
                    (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235717235718_))))
                                            (___kont235717235718_))
                                        (___kont235717235718_))))
                                (___kont235717235718_))
                            (___kont235717235718_))
                        (___kont235717235718_))))
                (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235717235718_))
                                            (___kont235717235718_))
                                        (___kont235717235718_))))
                                (___kont235717235718_))))
                        (___kont235717235718_))))
                (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235717235718_))
                                            (___kont235717235718_))
                                        (___kont235717235718_))))
                                (___kont235717235718_))))
                        (___kont235717235718_))
                    (___kont235717235718_))
                (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235717235718_))
                                            (___kont235717235718_))))
                                    (___kont235717235718_))))
                            (___kont235717235718_))))
                    (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont235717235718_))
                                                (___kont235717235718_))
                                            (___kont235717235718_))))
                                    (___kont235717235718_))))
                            (___kont235717235718_))
                        (___kont235717235718_))))
                (___kont235717235718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont235717235718_))))
                                        (___kont235717235718_))))
                                (___kont235717235718_))
                            (___kont235717235718_))
                        (___kont235717235718_))))
                (___kont235717235718_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx225011_ _id225012_ _clauses225013_ _gensym?225014_)
        (let _lp225016_ ((_rest225018_ _clauses225013_)
                         (_ids225019_ '())
                         (_impls225020_ '())
                         (_clauses225021_ '()))
          (let* ((_rest225022225030_ _rest225018_)
                 (_else225024225038_
                  (lambda ()
                    (values (reverse _ids225019_)
                            (reverse _impls225020_)
                            (reverse _clauses225021_))))
                 (_K225026225243_
                  (lambda (_rest225041_ _clause225042_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause225042_))
                        (let ((__tmp236737
                               (let ()
                                 (declare (not safe))
                                 (cons _clause225042_ _clauses225021_))))
                          (declare (not safe))
                          (_lp225016_
                           _rest225041_
                           _ids225019_
                           _impls225020_
                           __tmp236737))
                        (let* ((_g225044225055_
                                (lambda (_g225045225052_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g225045225052_))))
                               (_g225043225240_
                                (lambda (_g225045225058_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g225045225058_))
                                      (let ((_e225048225060_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g225045225058_))))
                                        (let ((_hd225049225063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e225048225060_)))
                                              (_tl225050225065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e225048225060_))))
                                          ((lambda (_L225068_ _L225069_)
                                             (let* ((_id225086_
                                                     (let ((__tmp236740
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id225012_)))
                                                           (__tmp236739
                                                            (length _clauses225021_))
                                                           (__tmp236738
                                                            (if _gensym?225014_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp236740
                                                        '"__"
                                                        __tmp236739
                                                        __tmp236738)))
                                                    (_id225088_
                                                     (let ((__tmp236741
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx225011_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id225086_
                                                        __tmp236741)))
                                                    (_impl225090_
                                                     (let ((__tmp236742
                                                            (let ((__tmp236744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp236743
                           (let ()
                             (declare (not safe))
                             (cons _L225069_ _L225068_))))
                      (declare (not safe))
                      (cons __tmp236744 __tmp236743))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp236742 _stx225011_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause225237_
                                                     (let* ((___stx236097236098_
                                                             _L225069_)
                                                            (_g225094225122_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx236097236098_)))))
               (let ((___kont236099236100_
                      (lambda (_L225216_)
                        (let ((__tmp236745
                               (let ((__tmp236746
                                      (let ((__tmp236747
                                             (let ((__tmp236748
                                                    (let ((__tmp236754
                                                           (let ((__tmp236755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id225088_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236755)))
                  (__tmp236749
                   (let ((__tmp236750
                          (lambda (_g225226225229_ _g225227225231_)
                            (let ((__tmp236751
                                   (let ((__tmp236753
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp236752
                                          (let ()
                                            (declare (not safe))
                                            (cons _g225226225229_ '()))))
                                     (declare (not safe))
                                     (cons __tmp236753 __tmp236752))))
                              (declare (not safe))
                              (cons __tmp236751 _g225227225231_)))))
                     (declare (not safe))
                     (foldr1 __tmp236750 '() _L225216_))))
              (declare (not safe))
              (cons __tmp236754 __tmp236749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236748))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236747
                                         _stx225011_))))
                                 (declare (not safe))
                                 (cons __tmp236746 '()))))
                          (declare (not safe))
                          (cons _L225069_ __tmp236745))))
                     (___kont236103236104_
                      (lambda (_L225167_ _L225168_)
                        (let ((__tmp236756
                               (let ((__tmp236757
                                      (let ((__tmp236758
                                             (let ((__tmp236759
                                                    (let ((__tmp236773
                                                           (let ((__tmp236774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236774)))
                  (__tmp236760
                   (let ((__tmp236771
                          (let ((__tmp236772
                                 (let ()
                                   (declare (not safe))
                                   (cons _id225088_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp236772)))
                         (__tmp236761
                          (let ((__tmp236767
                                 (let ((__tmp236768
                                        (let ((__tmp236770
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp236769
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L225167_ '()))))
                                          (declare (not safe))
                                          (cons __tmp236770 __tmp236769))))
                                   (declare (not safe))
                                   (cons __tmp236768 '())))
                                (__tmp236762
                                 (let ((__tmp236763
                                        (lambda (_g225179225182_
                                                 _g225180225184_)
                                          (let ((__tmp236764
                                                 (let ((__tmp236766
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp236765
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g225179225182_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp236766
                                                         __tmp236765))))
                                            (declare (not safe))
                                            (cons __tmp236764
                                                  _g225180225184_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp236763 '() _L225168_))))
                            (declare (not safe))
                            (foldr1 cons __tmp236767 __tmp236762))))
                     (declare (not safe))
                     (cons __tmp236771 __tmp236761))))
              (declare (not safe))
              (cons __tmp236773 __tmp236760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236759))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236758
                                         _stx225011_))))
                                 (declare (not safe))
                                 (cons __tmp236757 '()))))
                          (declare (not safe))
                          (cons _L225069_ __tmp236756))))
                     (___kont236107236108_
                      (lambda (_L225127_)
                        (let ((__tmp236775
                               (let ((__tmp236776
                                      (let ((__tmp236777
                                             (let ((__tmp236778
                                                    (let ((__tmp236786
                                                           (let ((__tmp236787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp236787)))
                  (__tmp236779
                   (let ((__tmp236784
                          (let ((__tmp236785
                                 (let ()
                                   (declare (not safe))
                                   (cons _id225088_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp236785)))
                         (__tmp236780
                          (let ((__tmp236781
                                 (let ((__tmp236783
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp236782
                                        (let ()
                                          (declare (not safe))
                                          (cons _L225127_ '()))))
                                   (declare (not safe))
                                   (cons __tmp236783 __tmp236782))))
                            (declare (not safe))
                            (cons __tmp236781 '()))))
                     (declare (not safe))
                     (cons __tmp236784 __tmp236780))))
              (declare (not safe))
              (cons __tmp236786 __tmp236779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp236778))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236777
                                         _stx225011_))))
                                 (declare (not safe))
                                 (cons __tmp236776 '()))))
                          (declare (not safe))
                          (cons _L225069_ __tmp236775)))))
                 (let* ((___match236122236123_
                         (lambda (___splice236105236106_
                                  _target225108225143_
                                  _tl225110225145_)
                           (letrec ((_loop225111225148_
                                     (lambda (_hd225109225151_
                                              _arg225115225153_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd225109225151_))
                                           (let ((_e225112225156_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd225109225151_))))
                                             (let ((_lp-tl225114225161_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e225112225156_)))
                                                   (_lp-hd225113225159_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e225112225156_))))
                                               (let ((__tmp236788
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd225113225159_
                                                              _arg225115225153_))))
                                                 (declare (not safe))
                                                 (_loop225111225148_
                                                  _lp-tl225114225161_
                                                  __tmp236788))))
                                           (let ((_arg225116225164_
                                                  (reverse _arg225115225153_)))
                                             (___kont236103236104_
                                              _tl225110225145_
                                              _arg225116225164_))))))
                             (let ()
                               (declare (not safe))
                               (_loop225111225148_
                                _target225108225143_
                                '())))))
                        (___match236116236117_
                         (lambda (___splice236101236102_
                                  _target225097225192_
                                  _tl225099225194_)
                           (letrec ((_loop225100225197_
                                     (lambda (_hd225098225200_
                                              _arg225104225202_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd225098225200_))
                                           (let ((_e225101225205_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd225098225200_))))
                                             (let ((_lp-tl225103225210_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e225101225205_)))
                                                   (_lp-hd225102225208_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e225101225205_))))
                                               (let ((__tmp236789
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd225102225208_
                                                              _arg225104225202_))))
                                                 (declare (not safe))
                                                 (_loop225100225197_
                                                  _lp-tl225103225210_
                                                  __tmp236789))))
                                           (let ((_arg225105225213_
                                                  (reverse _arg225104225202_)))
                                             (___kont236099236100_
                                              _arg225105225213_))))))
                             (let ()
                               (declare (not safe))
                               (_loop225100225197_
                                _target225097225192_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx236097236098_))
                       (let ((___splice236101236102_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx236097236098_
                                 '0))))
                         (let ((_tl225099225194_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice236101236102_ '1)))
                               (_target225097225192_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice236101236102_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl225099225194_))
                               (___match236116236117_
                                ___splice236101236102_
                                _target225097225192_
                                _tl225099225194_)
                               (___match236122236123_
                                ___splice236101236102_
                                _target225097225192_
                                _tl225099225194_))))
                       (___kont236107236108_ ___stx236097236098_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp236792
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id225088_
                                                              _ids225019_)))
                                                     (__tmp236791
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl225090_
                                                              _impls225020_)))
                                                     (__tmp236790
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause225237_
                                                              _clauses225021_))))
                                                 (declare (not safe))
                                                 (_lp225016_
                                                  _rest225041_
                                                  __tmp236792
                                                  __tmp236791
                                                  __tmp236790))))
                                           _tl225050225065_
                                           _hd225049225063_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g225044225055_ _g225045225058_))))))
                          (declare (not safe))
                          (_g225043225240_ _clause225042_))))))
            (if (let () (declare (not safe)) (##pair? _rest225022225030_))
                (let ((_hd225027225246_
                       (let ()
                         (declare (not safe))
                         (##car _rest225022225030_)))
                      (_tl225028225248_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest225022225030_))))
                  (let* ((_clause225251_ _hd225027225246_)
                         (_rest225253_ _tl225028225248_))
                    (declare (not safe))
                    (_K225026225243_ _rest225253_ _clause225251_)))
                (let () (declare (not safe)) (_else225024225038_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx225258_ _id225259_ _clauses225260_)
        (let ((_gensym?225262_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx225258_
           _id225259_
           _clauses225260_
           _gensym?225262_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g236794_
        (let ((_g236793_ (let () (declare (not safe)) (##length _g236794_))))
          (cond ((let () (declare (not safe)) (##fx= _g236793_ 3))
                 (apply (lambda (_stx225258_ _id225259_ _clauses225260_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx225258_
                             _id225259_
                             _clauses225260_)))
                        _g236794_))
                ((let () (declare (not safe)) (##fx= _g236793_ 4))
                 (apply (lambda (_stx225264_
                                 _id225265_
                                 _clauses225266_
                                 _gensym?225267_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx225264_
                             _id225265_
                             _clauses225266_
                             _gensym?225267_)))
                        _g236794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g236794_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx224288_)
        (letrec ((_case-lambda-clause-def224290_
                  (lambda (_id225007_ _impl225008_)
                    (let ((__tmp236795
                           (let ((__tmp236796
                                  (let ((__tmp236799
                                         (let ()
                                           (declare (not safe))
                                           (cons _id225007_ '())))
                                        (__tmp236797
                                         (let ((__tmp236798
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl225008_))))
                                           (declare (not safe))
                                           (cons __tmp236798 '()))))
                                    (declare (not safe))
                                    (cons __tmp236799 __tmp236797))))
                             (declare (not safe))
                             (cons '%#define-values __tmp236796))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236795 _stx224288_))))
                 (_opt-lambda-dispatch-name224291_
                  (lambda (_id225003_)
                    (if (uninterned-symbol? _id225003_)
                        (let ((_str225005_ (symbol->string _id225003_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str225005_))
                              '"%"
                              _id225003_))
                        _id225003_)))
                 (_kw-lambda-dispatch-name224292_
                  (lambda (_id224998_ _name224999_)
                    (if (uninterned-symbol? _id224998_)
                        (let ((_str225001_ (symbol->string _id224998_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str225001_))
                              _name224999_
                              _id224998_))
                        _id224998_))))
          (let* ((___stx236145236146_ _stx224288_)
                 (_g224297224356_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236145236146_)))))
            (let ((___kont236147236148_
                   (lambda (_L224907_ _L224908_)
                     (let* ((___stx236125236126_ _L224907_)
                            (_g224925224939_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx236125236126_)))))
                       (let ((___kont236127236128_
                              (lambda (_L224983_) _stx224288_))
                             (___kont236129236130_
                              (lambda (_L224952_)
                                (let ((_g236800_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx224288_
                                          _L224908_
                                          _L224952_))))
                                  (begin
                                    (let ((_g236801_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g236800_)
                                                 (##vector-length _g236800_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g236801_ 3)))
                                          (error "Context expects 3 values"
                                                 _g236801_)))
                                    (let ((_ids224962_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236800_ 0)))
                                          (_impls224963_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236800_ 1)))
                                          (_clauses224964_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g236800_ 2))))
                                      (let* ((_g236802_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids224962_))
                                             (_defs224967_
                                              (map _case-lambda-clause-def224290_
                                                   _ids224962_
                                                   _impls224963_)))
                                        (let ((__tmp236804
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L224908_)))
                                              (__tmp236803
                                               (map gxc#identifier-symbol
                                                    _ids224962_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp236804
                                           '" => "
                                           __tmp236803))
                                        (let ((__tmp236805
                                               (let ((__tmp236806
                                                      (let ((__tmp236807
                                                             (let ((__tmp236808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp236809
                                   (let ((__tmp236810
                                          (let ((__tmp236815
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L224908_ '())))
                                                (__tmp236811
                                                 (let ((__tmp236812
                                                        (let ((__tmp236814
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses224964_)))
                      (__tmp236813
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp236814 __tmp236813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp236812 '()))))
                                            (declare (not safe))
                                            (cons __tmp236815 __tmp236811))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp236810))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236809
                               _stx224288_))))
                       (declare (not safe))
                       (cons __tmp236808 '()))))
                (declare (not safe))
                (foldr1 cons __tmp236807 _defs224967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp236806))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp236805
                                           _stx224288_)))))))))
                         (let ((___match236136236137_
                                (lambda (_e224928224975_
                                         _hd224929224978_
                                         _tl224930224980_)
                                  (let ((_L224983_ _tl224930224980_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L224983_))
                                        (___kont236127236128_ _L224983_)
                                        (___kont236129236130_
                                         _tl224930224980_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx236125236126_))
                               (let ((_e224928224975_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx236125236126_))))
                                 (let ((_tl224930224980_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e224928224975_)))
                                       (_hd224929224978_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e224928224975_))))
                                   (___match236136236137_
                                    _e224928224975_
                                    _hd224929224978_
                                    _tl224930224980_)))
                               (let ()
                                 (declare (not safe))
                                 (_g224925224939_))))))))
                  (___kont236149236150_
                   (lambda (_L224725_ _L224726_)
                     (let* ((_g224742224772_
                             (lambda (_g224743224769_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g224743224769_))))
                            (_g224741224867_
                             (lambda (_g224743224775_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g224743224775_))
                                   (let ((_e224747224777_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g224743224775_))))
                                     (let ((_hd224748224780_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e224747224777_)))
                                           (_tl224749224782_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e224747224777_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl224749224782_))
                                           (let ((_e224750224785_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl224749224782_))))
                                             (let ((_hd224751224788_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e224750224785_)))
                                                   (_tl224752224790_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e224750224785_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd224751224788_))
                                                   (let ((_e224753224793_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd224751224788_))))
                                                     (let ((_hd224754224796_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224753224793_)))
                                                           (_tl224755224798_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224753224793_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd224754224796_))
                                                           (let ((_e224756224801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd224754224796_))))
                     (let ((_hd224757224804_
                            (let ()
                              (declare (not safe))
                              (##car _e224756224801_)))
                           (_tl224758224806_
                            (let ()
                              (declare (not safe))
                              (##cdr _e224756224801_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd224757224804_))
                           (let ((_e224759224809_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd224757224804_))))
                             (let ((_hd224760224812_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224759224809_)))
                                   (_tl224761224814_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224759224809_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224761224814_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl224758224806_))
                                       (let ((_e224762224817_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl224758224806_))))
                                         (let ((_hd224763224820_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224762224817_)))
                                               (_tl224764224822_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224762224817_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl224764224822_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl224755224798_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl224752224790_))
                                                       (let ((_e224765224825_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl224752224790_))))
                 (let ((_hd224766224828_
                        (let () (declare (not safe)) (##car _e224765224825_)))
                       (_tl224767224830_
                        (let () (declare (not safe)) (##cdr _e224765224825_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl224767224830_))
                       ((lambda (_L224833_ _L224834_ _L224835_)
                          (let* ((_lambda-id224859_
                                  (let ((__tmp236818
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L224726_)))
                                        (__tmp236816
                                         (let ((__tmp236817
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L224835_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name224291_
                                            __tmp236817))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp236818
                                     '"__"
                                     __tmp236816)))
                                 (_lambda-id224861_
                                  (let ((__tmp236819
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx224288_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id224859_
                                     __tmp236819)))
                                 (_g236820_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id224861_)))
                                 (_new-case-lambda-expr224864_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L224833_
                                     _L224835_
                                     _lambda-id224861_))))
                            (let ((__tmp236822
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L224726_)))
                                  (__tmp236821
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id224861_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp236822
                               '" => "
                               __tmp236821))
                            (let ((__tmp236823
                                   (let ((__tmp236824
                                          (let ((__tmp236832
                                                 (let ((__tmp236833
                                                        (let ((__tmp236834
                                                               (let ((__tmp236837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id224861_ '())))
                             (__tmp236835
                              (let ((__tmp236836
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L224834_))))
                                (declare (not safe))
                                (cons __tmp236836 '()))))
                         (declare (not safe))
                         (cons __tmp236837 __tmp236835))))
                  (declare (not safe))
                  (cons '%#define-values __tmp236834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236833
                                                    _stx224288_)))
                                                (__tmp236825
                                                 (let ((__tmp236826
                                                        (let ((__tmp236827
                                                               (let ((__tmp236828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp236829
                                     (let ((__tmp236831
                                            (let ()
                                              (declare (not safe))
                                              (cons _L224726_ '())))
                                           (__tmp236830
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr224864_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp236831 __tmp236830))))
                                (declare (not safe))
                                (cons '%#define-values __tmp236829))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236828 _stx224288_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp236827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp236826 '()))))
                                            (declare (not safe))
                                            (cons __tmp236832 __tmp236825))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp236824))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236823
                               _stx224288_))))
                        _hd224766224828_
                        _hd224763224820_
                        _hd224760224812_)
                       (let ()
                         (declare (not safe))
                         (_g224742224772_ _g224743224775_)))))
               (let () (declare (not safe)) (_g224742224772_ _g224743224775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224742224772_
                                                      _g224743224775_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224742224772_
                                                  _g224743224775_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224742224772_ _g224743224775_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224742224772_ _g224743224775_)))))
                           (let ()
                             (declare (not safe))
                             (_g224742224772_ _g224743224775_)))))
                   (let ()
                     (declare (not safe))
                     (_g224742224772_ _g224743224775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224742224772_
                                                      _g224743224775_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224742224772_
                                              _g224743224775_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g224742224772_ _g224743224775_))))))
                       (declare (not safe))
                       (_g224741224867_ _L224725_))))
                  (___kont236151236152_
                   (lambda (_L224439_ _L224440_)
                     (let* ((_g224456224509_
                             (lambda (_g224457224506_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g224457224506_))))
                            (_g224455224685_
                             (lambda (_g224457224512_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g224457224512_))
                                   (let ((_e224463224514_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g224457224512_))))
                                     (let ((_hd224464224517_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e224463224514_)))
                                           (_tl224465224519_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e224463224514_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl224465224519_))
                                           (let ((_e224466224522_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl224465224519_))))
                                             (let ((_hd224467224525_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e224466224522_)))
                                                   (_tl224468224527_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e224466224522_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd224467224525_))
                                                   (let ((_e224469224530_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd224467224525_))))
                                                     (let ((_hd224470224533_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224469224530_)))
                                                           (_tl224471224535_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224469224530_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd224470224533_))
                                                           (let ((_e224472224538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd224470224533_))))
                     (let ((_hd224473224541_
                            (let ()
                              (declare (not safe))
                              (##car _e224472224538_)))
                           (_tl224474224543_
                            (let ()
                              (declare (not safe))
                              (##cdr _e224472224538_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd224473224541_))
                           (let ((_e224475224546_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd224473224541_))))
                             (let ((_hd224476224549_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224475224546_)))
                                   (_tl224477224551_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224475224546_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224477224551_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl224474224543_))
                                       (let ((_e224478224554_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl224474224543_))))
                                         (let ((_hd224479224557_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224478224554_)))
                                               (_tl224480224559_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224478224554_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd224479224557_))
                                               (let ((_e224481224562_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd224479224557_))))
                                                 (let ((_hd224482224565_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e224481224562_)))
                                                       (_tl224483224567_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e224481224562_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl224483224567_))
                                                       (let ((_e224484224570_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl224483224567_))))
                 (let ((_hd224485224573_
                        (let () (declare (not safe)) (##car _e224484224570_)))
                       (_tl224486224575_
                        (let () (declare (not safe)) (##cdr _e224484224570_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd224485224573_))
                       (let ((_e224487224578_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd224485224573_))))
                         (let ((_hd224488224581_
                                (let ()
                                  (declare (not safe))
                                  (##car _e224487224578_)))
                               (_tl224489224583_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e224487224578_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd224488224581_))
                               (let ((_e224490224586_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd224488224581_))))
                                 (let ((_hd224491224589_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e224490224586_)))
                                       (_tl224492224591_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e224490224586_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd224491224589_))
                                       (let ((_e224493224594_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd224491224589_))))
                                         (let ((_hd224494224597_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e224493224594_)))
                                               (_tl224495224599_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e224493224594_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl224495224599_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl224492224591_))
                                                   (let ((_e224496224602_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl224492224591_))))
                                                     (let ((_hd224497224605_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e224496224602_)))
                                                           (_tl224498224607_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e224496224602_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl224498224607_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl224489224583_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl224486224575_))
                           (let ((_e224499224610_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl224486224575_))))
                             (let ((_hd224500224613_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e224499224610_)))
                                   (_tl224501224615_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e224499224610_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl224501224615_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl224480224559_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl224471224535_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl224468224527_))
                                               (let ((_e224502224618_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl224468224527_))))
                                                 (let ((_hd224503224621_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e224502224618_)))
                                                       (_tl224504224623_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e224502224618_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl224504224623_))
                                                       ((lambda (_L224626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L224627_
                         _L224628_
                         _L224629_
                         _L224630_)
                  (let* ((_get-kws-id224670_
                          (let ((__tmp236840
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L224440_)))
                                (__tmp236838
                                 (let ((__tmp236839
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L224630_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name224292_
                                    __tmp236839
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp236840 '"__" __tmp236838)))
                         (_get-kws-id224672_
                          (let ((__tmp236841
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx224288_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id224670_
                             __tmp236841)))
                         (_main-id224674_
                          (let ((__tmp236844
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L224440_)))
                                (__tmp236842
                                 (let ((__tmp236843
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L224629_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name224292_
                                    __tmp236843
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp236844 '"__" __tmp236842)))
                         (_main-id224676_
                          (let ((__tmp236845
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx224288_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id224674_
                             __tmp236845)))
                         (_g236846_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id224672_)))
                         (_g236847_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id224676_)))
                         (_new-kw-dispatch224680_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L224626_
                             _L224630_
                             _get-kws-id224672_)))
                         (_new-get-kws224682_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L224627_
                             _L224629_
                             _main-id224676_))))
                    (let ((__tmp236850
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L224440_)))
                          (__tmp236849
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id224672_)))
                          (__tmp236848
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id224676_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp236850
                       '" => "
                       __tmp236849
                       '" => "
                       __tmp236848))
                    (let ((__tmp236851
                           (let ((__tmp236852
                                  (let ((__tmp236865
                                         (let ((__tmp236866
                                                (let ((__tmp236867
                                                       (let ((__tmp236868
                                                              (let ((__tmp236870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id224676_ '())))
                            (__tmp236869
                             (let ()
                               (declare (not safe))
                               (cons _L224628_ '()))))
                        (declare (not safe))
                        (cons __tmp236870 __tmp236869))))
                 (declare (not safe))
                 (cons '%#define-values __tmp236868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp236867
                                                   _stx224288_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp236866)))
                                        (__tmp236853
                                         (let ((__tmp236860
                                                (let ((__tmp236861
                                                       (let ((__tmp236862
                                                              (let ((__tmp236864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id224672_ '())))
                            (__tmp236863
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws224682_ '()))))
                        (declare (not safe))
                        (cons __tmp236864 __tmp236863))))
                 (declare (not safe))
                 (cons '%#define-values __tmp236862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp236861
                                                   _stx224288_)))
                                               (__tmp236854
                                                (let ((__tmp236855
                                                       (let ((__tmp236856
                                                              (let ((__tmp236857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp236859
                                    (let ()
                                      (declare (not safe))
                                      (cons _L224440_ '())))
                                   (__tmp236858
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch224680_ '()))))
                               (declare (not safe))
                               (cons __tmp236859 __tmp236858))))
                        (declare (not safe))
                        (cons '%#define-values __tmp236857))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp236856 _stx224288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp236855 '()))))
                                           (declare (not safe))
                                           (cons __tmp236860 __tmp236854))))
                                    (declare (not safe))
                                    (cons __tmp236865 __tmp236853))))
                             (declare (not safe))
                             (cons '%#begin __tmp236852))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236851 _stx224288_))))
                _hd224503224621_
                _hd224500224613_
                _hd224497224605_
                _hd224494224597_
                _hd224476224549_)
               (let ()
                 (declare (not safe))
                 (_g224456224509_ _g224457224512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224456224509_
                                                  _g224457224512_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g224456224509_
                                              _g224457224512_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g224456224509_ _g224457224512_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224456224509_ _g224457224512_)))))
                           (let ()
                             (declare (not safe))
                             (_g224456224509_ _g224457224512_)))
                       (let ()
                         (declare (not safe))
                         (_g224456224509_ _g224457224512_)))
                   (let ()
                     (declare (not safe))
                     (_g224456224509_ _g224457224512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224456224509_
                                                      _g224457224512_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224456224509_
                                                  _g224457224512_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224456224509_ _g224457224512_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g224456224509_ _g224457224512_)))))
                       (let ()
                         (declare (not safe))
                         (_g224456224509_ _g224457224512_)))))
               (let ()
                 (declare (not safe))
                 (_g224456224509_ _g224457224512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g224456224509_
                                                  _g224457224512_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g224456224509_ _g224457224512_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g224456224509_ _g224457224512_)))))
                           (let ()
                             (declare (not safe))
                             (_g224456224509_ _g224457224512_)))))
                   (let ()
                     (declare (not safe))
                     (_g224456224509_ _g224457224512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g224456224509_
                                                      _g224457224512_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224456224509_
                                              _g224457224512_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g224456224509_ _g224457224512_))))))
                       (declare (not safe))
                       (_g224455224685_ _L224439_))))
                  (___kont236153236154_
                   (lambda (_L224385_ _L224386_)
                     (let ((__tmp236871
                            (let ((__tmp236872
                                   (let ((__tmp236873
                                          (let ((__tmp236874
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L224385_))))
                                            (declare (not safe))
                                            (cons __tmp236874 '()))))
                                     (declare (not safe))
                                     (cons _L224386_ __tmp236873))))
                              (declare (not safe))
                              (cons '%#define-values __tmp236872))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp236871 _stx224288_)))))
              (let* ((___match236238236239_
                      (lambda (_e224329224407_
                               _hd224330224410_
                               _tl224331224412_
                               _e224332224415_
                               _hd224333224418_
                               _tl224334224420_
                               _e224335224423_
                               _hd224336224426_
                               _tl224337224428_
                               _e224338224431_
                               _hd224339224434_
                               _tl224340224436_)
                        (let ((_L224439_ _hd224339224434_)
                              (_L224440_ _hd224336224426_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L224440_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L224439_)))
                              (___kont236151236152_ _L224439_ _L224440_)
                              (___kont236153236154_
                               _hd224339224434_
                               _hd224333224418_)))))
                     (___match236210236211_
                      (lambda (_e224315224693_
                               _hd224316224696_
                               _tl224317224698_
                               _e224318224701_
                               _hd224319224704_
                               _tl224320224706_
                               _e224321224709_
                               _hd224322224712_
                               _tl224323224714_
                               _e224324224717_
                               _hd224325224720_
                               _tl224326224722_)
                        (let ((_L224725_ _hd224325224720_)
                              (_L224726_ _hd224322224712_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L224726_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L224725_)))
                              (___kont236149236150_ _L224725_ _L224726_)
                              (___match236238236239_
                               _e224315224693_
                               _hd224316224696_
                               _tl224317224698_
                               _e224318224701_
                               _hd224319224704_
                               _tl224320224706_
                               _e224321224709_
                               _hd224322224712_
                               _tl224323224714_
                               _e224324224717_
                               _hd224325224720_
                               _tl224326224722_)))))
                     (___match236182236183_
                      (lambda (_e224301224875_
                               _hd224302224878_
                               _tl224303224880_
                               _e224304224883_
                               _hd224305224886_
                               _tl224306224888_
                               _e224307224891_
                               _hd224308224894_
                               _tl224309224896_
                               _e224310224899_
                               _hd224311224902_
                               _tl224312224904_)
                        (let ((_L224907_ _hd224311224902_)
                              (_L224908_ _hd224308224894_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L224908_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L224907_)))
                              (___kont236147236148_ _L224907_ _L224908_)
                              (___match236210236211_
                               _e224301224875_
                               _hd224302224878_
                               _tl224303224880_
                               _e224304224883_
                               _hd224305224886_
                               _tl224306224888_
                               _e224307224891_
                               _hd224308224894_
                               _tl224309224896_
                               _e224310224899_
                               _hd224311224902_
                               _tl224312224904_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236145236146_))
                    (let ((_e224301224875_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236145236146_))))
                      (let ((_tl224303224880_
                             (let ()
                               (declare (not safe))
                               (##cdr _e224301224875_)))
                            (_hd224302224878_
                             (let ()
                               (declare (not safe))
                               (##car _e224301224875_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl224303224880_))
                            (let ((_e224304224883_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl224303224880_))))
                              (let ((_tl224306224888_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e224304224883_)))
                                    (_hd224305224886_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e224304224883_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd224305224886_))
                                    (let ((_e224307224891_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd224305224886_))))
                                      (let ((_tl224309224896_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e224307224891_)))
                                            (_hd224308224894_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e224307224891_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl224309224896_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224306224888_))
                                                (let ((_e224310224899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224306224888_))))
                                                  (let ((_tl224312224904_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224310224899_)))
                                                        (_hd224311224902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224310224899_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224312224904_))
                                                        (___match236182236183_
                                                         _e224301224875_
                                                         _hd224302224878_
                                                         _tl224303224880_
                                                         _e224304224883_
                                                         _hd224305224886_
                                                         _tl224306224888_
                                                         _e224307224891_
                                                         _hd224308224894_
                                                         _tl224309224896_
                                                         _e224310224899_
                                                         _hd224311224902_
                                                         _tl224312224904_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g224297224356_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224297224356_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl224306224888_))
                                                (let ((_e224349224377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl224306224888_))))
                                                  (let ((_tl224351224382_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e224349224377_)))
                                                        (_hd224350224380_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e224349224377_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl224351224382_))
                                                        (___kont236153236154_
                                                         _hd224350224380_
                                                         _hd224305224886_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g224297224356_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224297224356_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl224306224888_))
                                        (let ((_e224349224377_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl224306224888_))))
                                          (let ((_tl224351224382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e224349224377_)))
                                                (_hd224350224380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e224349224377_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224351224382_))
                                                (___kont236153236154_
                                                 _hd224350224380_
                                                 _hd224305224886_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224297224356_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g224297224356_))))))
                            (let () (declare (not safe)) (_g224297224356_)))))
                    (let () (declare (not safe)) (_g224297224356_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx223220_)
        (letrec* ((_bind-e__234541234542_
                   (lambda (_id224272_ _expr224273_ _compile?224274_)
                     (let ((__tmp236877
                            (let ()
                              (declare (not safe))
                              (cons _id224272_ '())))
                           (__tmp236875
                            (let ((__tmp236876
                                   (if _compile?224274_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr224273_))
                                       _expr224273_)))
                              (declare (not safe))
                              (cons __tmp236876 '()))))
                       (declare (not safe))
                       (cons __tmp236877 __tmp236875))))
                  (_bind-e__0__234543234544_
                   (lambda (_id224279_ _expr224280_)
                     (let ((_compile?224282_ '#t))
                       (declare (not safe))
                       (_bind-e__234541234542_
                        _id224279_
                        _expr224280_
                        _compile?224282_))))
                  (_bind-e223222_
                   (lambda _g236879_
                     (let ((_g236878_
                            (let ()
                              (declare (not safe))
                              (##length _g236879_))))
                       (cond ((let () (declare (not safe)) (##fx= _g236878_ 2))
                              (apply (lambda (_id224279_ _expr224280_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__234543234544_
                                          _id224279_
                                          _expr224280_)))
                                     _g236879_))
                             ((let () (declare (not safe)) (##fx= _g236878_ 3))
                              (apply (lambda (_id224284_
                                              _expr224285_
                                              _compile?224286_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__234541234542_
                                          _id224284_
                                          _expr224285_
                                          _compile?224286_)))
                                     _g236879_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g236879_))))))
                  (_compile-bindings223223_
                   (lambda (_bindings223856_)
                     (let _lp223858_ ((_rest223860_ _bindings223856_)
                                      (_lift1223861_ '())
                                      (_lift2223862_ '())
                                      (_bind223863_ '()))
                       (let* ((_rest223864223872_ _rest223860_)
                              (_else223866223880_
                               (lambda ()
                                 (values (reverse _lift1223861_)
                                         (reverse _lift2223862_)
                                         (reverse _bind223863_))))
                              (_K223868224259_
                               (lambda (_rest223883_ _hd223884_)
                                 (let* ((___stx236281236282_ _hd223884_)
                                        (_g223888223924_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236281236282_)))))
                                   (let ((___kont236283236284_
                                          (lambda (_L224166_ _L224167_)
                                            (let* ((___stx236261236262_
                                                    _L224166_)
                                                   (_g224182224196_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx236261236262_)))))
                                              (let ((___kont236263236264_
                                                     (lambda (_L224244_)
                                                       (let ((__tmp236880
                                                              (let ((__tmp236881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__234541234542_
                                _L224167_
                                _L224166_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp236881 _bind223863_))))
                 (declare (not safe))
                 (_lp223858_
                  _rest223883_
                  _lift1223861_
                  _lift2223862_
                  __tmp236880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont236265236266_
                                                     (lambda (_L224209_)
                                                       (let ((_g236882_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx223220_
                         _L224167_
                         _L224209_
                         '#t))))
                 (begin
                   (let ((_g236883_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g236882_)
                                (##vector-length _g236882_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g236883_ 3)))
                         (error "Context expects 3 values" _g236883_)))
                   (let ((_ids224219_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g236882_ 0)))
                         (_impls224220_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g236882_ 1)))
                         (_clauses224221_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g236882_ 2))))
                     (let* ((_g236884_
                             (for-each gx#core-bind-runtime! _ids224219_))
                            (_xbind224224_
                             (map _bind-e223222_ _ids224219_ _impls224220_))
                            (_expr*224226_
                             (let ((__tmp236886
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses224221_)))
                                   (__tmp236885
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236886
                                __tmp236885)))
                            (_bind*224228_
                             (let ()
                               (declare (not safe))
                               (_bind-e__234541234542_
                                _L224167_
                                _expr*224226_
                                '#f))))
                       (let ((__tmp236888
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L224167_)))
                             (__tmp236887
                              (map gxc#identifier-symbol _ids224219_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp236888
                          '" => "
                          __tmp236887))
                       (let ((__tmp236890
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2223862_ _xbind224224_)))
                             (__tmp236889
                              (let ()
                                (declare (not safe))
                                (cons _bind*224228_ _bind223863_))))
                         (declare (not safe))
                         (_lp223858_
                          _rest223883_
                          _lift1223861_
                          __tmp236890
                          __tmp236889)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match236272236273_
                                                       (lambda (_e224185224236_
                                                                _hd224186224239_
                                                                _tl224187224241_)
                                                         (let ((_L224244_
                                                                _tl224187224241_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L224244_))
                       (___kont236263236264_ _L224244_)
                       (___kont236265236266_ _tl224187224241_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx236261236262_))
                                                      (let ((_e224185224236_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx236261236262_))))
                (let ((_tl224187224241_
                       (let () (declare (not safe)) (##cdr _e224185224236_)))
                      (_hd224186224239_
                       (let () (declare (not safe)) (##car _e224185224236_))))
                  (___match236272236273_
                   _e224185224236_
                   _hd224186224239_
                   _tl224187224241_)))
              (let () (declare (not safe)) (_g224182224196_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont236285236286_
                                          (lambda (_L223994_ _L223995_)
                                            (let* ((_g224009224039_
                                                    (lambda (_g224010224036_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g224010224036_))))
                                                   (_g224008224134_
                                                    (lambda (_g224010224042_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g224010224042_))
                                                          (let ((_e224014224044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g224010224042_))))
                    (let ((_hd224015224047_
                           (let ()
                             (declare (not safe))
                             (##car _e224014224044_)))
                          (_tl224016224049_
                           (let ()
                             (declare (not safe))
                             (##cdr _e224014224044_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl224016224049_))
                          (let ((_e224017224052_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl224016224049_))))
                            (let ((_hd224018224055_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e224017224052_)))
                                  (_tl224019224057_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e224017224052_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd224018224055_))
                                  (let ((_e224020224060_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd224018224055_))))
                                    (let ((_hd224021224063_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224020224060_)))
                                          (_tl224022224065_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224020224060_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd224021224063_))
                                          (let ((_e224023224068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd224021224063_))))
                                            (let ((_hd224024224071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e224023224068_)))
                                                  (_tl224025224073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e224023224068_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd224024224071_))
                                                  (let ((_e224026224076_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd224024224071_))))
                                                    (let ((_hd224027224079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e224026224076_)))
                                                          (_tl224028224081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e224026224076_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl224028224081_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl224025224073_))
                      (let ((_e224029224084_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl224025224073_))))
                        (let ((_hd224030224087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224029224084_)))
                              (_tl224031224089_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224029224084_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl224031224089_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl224022224065_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224019224057_))
                                      (let ((_e224032224092_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224019224057_))))
                                        (let ((_hd224033224095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224032224092_)))
                                              (_tl224034224097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224032224092_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224034224097_))
                                              ((lambda (_L224100_
                                                        _L224101_
                                                        _L224102_)
                                                 (let* ((_lambda-id224126_
                                                         (let ((__tmp236892
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L223995_)))
                       (__tmp236891 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp236892 __tmp236891)))
                (_lambda-id224128_
                 (let ((__tmp236893
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx223220_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id224126_ __tmp236893)))
                (_g236894_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id224128_)))
                (_new-case-lambda-expr224131_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L224100_
                    _L224102_
                    _lambda-id224128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp236896
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L223995_)))
                                                         (__tmp236895
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id224128_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp236896
                                                      '" => "
                                                      __tmp236895))
                                                   (let ((__tmp236899
                                                          (let ((__tmp236900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__234541234542_
                            _L223995_
                            _new-case-lambda-expr224131_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp236900 _rest223883_)))
                 (__tmp236897
                  (let ((__tmp236898
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__234543234544_
                            _lambda-id224128_
                            _L224101_))))
                    (declare (not safe))
                    (cons __tmp236898 _lift1223861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp223858_
                                                      __tmp236899
                                                      __tmp236897
                                                      _lift2223862_
                                                      _bind223863_))))
                                               _hd224033224095_
                                               _hd224030224087_
                                               _hd224027224079_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224009224039_
                                                 _g224010224042_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224009224039_ _g224010224042_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g224009224039_ _g224010224042_)))
                              (let ()
                                (declare (not safe))
                                (_g224009224039_ _g224010224042_)))))
                      (let ()
                        (declare (not safe))
                        (_g224009224039_ _g224010224042_)))
                  (let ()
                    (declare (not safe))
                    (_g224009224039_ _g224010224042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g224009224039_
                                                     _g224010224042_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g224009224039_
                                             _g224010224042_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g224009224039_ _g224010224042_)))))
                          (let ()
                            (declare (not safe))
                            (_g224009224039_ _g224010224042_)))))
                  (let ()
                    (declare (not safe))
                    (_g224009224039_ _g224010224042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g224008224134_ _L223994_))))
                                         (___kont236287236288_
                                          (lambda (_L223945_ _L223946_)
                                            (let ((__tmp236901
                                                   (let ((__tmp236902
                                                          (let ((__tmp236903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236904
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L223945_))))
                           (declare (not safe))
                           (cons __tmp236904 '()))))
                    (declare (not safe))
                    (cons _L223946_ __tmp236903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp236902
                                                           _bind223863_))))
                                              (declare (not safe))
                                              (_lp223858_
                                               _rest223883_
                                               _lift1223861_
                                               _lift2223862_
                                               __tmp236901)))))
                                     (let* ((___match236332236333_
                                             (lambda (_e223903223970_
                                                      _hd223904223973_
                                                      _tl223905223975_
                                                      _e223906223978_
                                                      _hd223907223981_
                                                      _tl223908223983_
                                                      _e223909223986_
                                                      _hd223910223989_
                                                      _tl223911223991_)
                                               (let ((_L223994_
                                                      _hd223910223989_)
                                                     (_L223995_
                                                      _hd223907223981_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L223995_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L223994_)))
                                                     (___kont236285236286_
                                                      _L223994_
                                                      _L223995_)
                                                     (___kont236287236288_
                                                      _hd223910223989_
                                                      _hd223904223973_)))))
                                            (___match236310236311_
                                             (lambda (_e223892224142_
                                                      _hd223893224145_
                                                      _tl223894224147_
                                                      _e223895224150_
                                                      _hd223896224153_
                                                      _tl223897224155_
                                                      _e223898224158_
                                                      _hd223899224161_
                                                      _tl223900224163_)
                                               (let ((_L224166_
                                                      _hd223899224161_)
                                                     (_L224167_
                                                      _hd223896224153_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L224167_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L224166_)))
                                                     (___kont236283236284_
                                                      _L224166_
                                                      _L224167_)
                                                     (___match236332236333_
                                                      _e223892224142_
                                                      _hd223893224145_
                                                      _tl223894224147_
                                                      _e223895224150_
                                                      _hd223896224153_
                                                      _tl223897224155_
                                                      _e223898224158_
                                                      _hd223899224161_
                                                      _tl223900224163_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236281236282_))
                                           (let ((_e223892224142_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236281236282_))))
                                             (let ((_tl223894224147_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e223892224142_)))
                                                   (_hd223893224145_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e223892224142_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd223893224145_))
                                                   (let ((_e223895224150_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd223893224145_))))
                                                     (let ((_tl223897224155_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e223895224150_)))
                                                           (_hd223896224153_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e223895224150_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl223897224155_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl223894224147_))
                       (let ((_e223898224158_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl223894224147_))))
                         (let ((_tl223900224163_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e223898224158_)))
                               (_hd223899224161_
                                (let ()
                                  (declare (not safe))
                                  (##car _e223898224158_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl223900224163_))
                               (___match236310236311_
                                _e223892224142_
                                _hd223893224145_
                                _tl223894224147_
                                _e223895224150_
                                _hd223896224153_
                                _tl223897224155_
                                _e223898224158_
                                _hd223899224161_
                                _tl223900224163_)
                               (let ()
                                 (declare (not safe))
                                 (_g223888223924_)))))
                       (let () (declare (not safe)) (_g223888223924_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl223894224147_))
                       (let ((_e223917223937_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl223894224147_))))
                         (let ((_tl223919223942_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e223917223937_)))
                               (_hd223918223940_
                                (let ()
                                  (declare (not safe))
                                  (##car _e223917223937_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl223919223942_))
                               (___kont236287236288_
                                _hd223918223940_
                                _hd223893224145_)
                               (let ()
                                 (declare (not safe))
                                 (_g223888223924_)))))
                       (let () (declare (not safe)) (_g223888223924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl223894224147_))
                                                       (let ((_e223917223937_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl223894224147_))))
                 (let ((_tl223919223942_
                        (let () (declare (not safe)) (##cdr _e223917223937_)))
                       (_hd223918223940_
                        (let () (declare (not safe)) (##car _e223917223937_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl223919223942_))
                       (___kont236287236288_ _hd223918223940_ _hd223893224145_)
                       (let () (declare (not safe)) (_g223888223924_)))))
               (let () (declare (not safe)) (_g223888223924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g223888223924_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest223864223872_))
                             (let ((_hd223869224262_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest223864223872_)))
                                   (_tl223870224264_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest223864223872_))))
                               (let* ((_hd224267_ _hd223869224262_)
                                      (_rest224269_ _tl223870224264_))
                                 (declare (not safe))
                                 (_K223868224259_ _rest224269_ _hd224267_)))
                             (let ()
                               (declare (not safe))
                               (_else223866223880_)))))))
                  (_lift-kw-lambda?223224_
                   (lambda (_bind223780_)
                     (let* ((___stx236349236350_ _bind223780_)
                            (_g223783223800_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx236349236350_)))))
                       (let ((___kont236351236352_
                              (lambda (_L223836_ _L223837_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L223837_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L223836_))
                                    '#f)))
                             (___kont236353236354_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx236349236350_))
                             (let ((_e223787223812_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx236349236350_))))
                               (let ((_tl223789223817_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e223787223812_)))
                                     (_hd223788223815_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e223787223812_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd223788223815_))
                                     (let ((_e223790223820_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd223788223815_))))
                                       (let ((_tl223792223825_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e223790223820_)))
                                             (_hd223791223823_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e223790223820_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl223792223825_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl223789223817_))
                                                 (let ((_e223793223828_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl223789223817_))))
                                                   (let ((_tl223795223833_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e223793223828_)))
                                                         (_hd223794223831_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e223793223828_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl223795223833_))
                                                         (___kont236351236352_
                                                          _hd223794223831_
                                                          _hd223791223823_)
                                                         (___kont236353236354_))))
                                                 (___kont236353236354_))
                                             (___kont236353236354_))))
                                     (___kont236353236354_))))
                             (___kont236353236354_))))))
                  (_lift-kw-lambda-bindings223225_
                   (lambda (_bindings223392_)
                     (let _lp223394_ ((_rest223396_ _bindings223392_)
                                      (_lift1223397_ '())
                                      (_lift2223398_ '())
                                      (_bind223399_ '()))
                       (let* ((_rest223400223408_ _rest223396_)
                              (_else223402223416_
                               (lambda ()
                                 (values (reverse _lift1223397_)
                                         (reverse _lift2223398_)
                                         (reverse _bind223399_))))
                              (_K223404223768_
                               (lambda (_rest223419_ _hd223420_)
                                 (let* ((___stx236379236380_ _hd223420_)
                                        (_g223423223448_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236379236380_)))))
                                   (let ((___kont236381236382_
                                          (lambda (_L223518_ _L223519_)
                                            (let* ((_g223533223586_
                                                    (lambda (_g223534223583_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g223534223583_))))
                                                   (_g223532223762_
                                                    (lambda (_g223534223589_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g223534223589_))
                                                          (let ((_e223540223591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g223534223589_))))
                    (let ((_hd223541223594_
                           (let ()
                             (declare (not safe))
                             (##car _e223540223591_)))
                          (_tl223542223596_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223540223591_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223542223596_))
                          (let ((_e223543223599_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223542223596_))))
                            (let ((_hd223544223602_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223543223599_)))
                                  (_tl223545223604_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223543223599_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223544223602_))
                                  (let ((_e223546223607_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223544223602_))))
                                    (let ((_hd223547223610_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223546223607_)))
                                          (_tl223548223612_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223546223607_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd223547223610_))
                                          (let ((_e223549223615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd223547223610_))))
                                            (let ((_hd223550223618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223549223615_)))
                                                  (_tl223551223620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223549223615_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd223550223618_))
                                                  (let ((_e223552223623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd223550223618_))))
                                                    (let ((_hd223553223626_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223552223623_)))
                                                          (_tl223554223628_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223552223623_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223554223628_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223551223620_))
                      (let ((_e223555223631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223551223620_))))
                        (let ((_hd223556223634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223555223631_)))
                              (_tl223557223636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223555223631_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd223556223634_))
                              (let ((_e223558223639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd223556223634_))))
                                (let ((_hd223559223642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223558223639_)))
                                      (_tl223560223644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223558223639_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223560223644_))
                                      (let ((_e223561223647_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223560223644_))))
                                        (let ((_hd223562223650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223561223647_)))
                                              (_tl223563223652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223561223647_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd223562223650_))
                                              (let ((_e223564223655_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd223562223650_))))
                                                (let ((_hd223565223658_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223564223655_)))
                                                      (_tl223566223660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223564223655_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd223565223658_))
                                                      (let ((_e223567223663_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd223565223658_))))
                (let ((_hd223568223666_
                       (let () (declare (not safe)) (##car _e223567223663_)))
                      (_tl223569223668_
                       (let () (declare (not safe)) (##cdr _e223567223663_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223568223666_))
                      (let ((_e223570223671_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223568223666_))))
                        (let ((_hd223571223674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223570223671_)))
                              (_tl223572223676_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223570223671_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl223572223676_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223569223668_))
                                  (let ((_e223573223679_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223569223668_))))
                                    (let ((_hd223574223682_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223573223679_)))
                                          (_tl223575223684_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223573223679_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223575223684_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223566223660_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223563223652_))
                                                  (let ((_e223576223687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223563223652_))))
                                                    (let ((_hd223577223690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223576223687_)))
                                                          (_tl223578223692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223576223687_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223578223692_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl223557223636_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl223548223612_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223545223604_))
                              (let ((_e223579223695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223545223604_))))
                                (let ((_hd223580223698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223579223695_)))
                                      (_tl223581223700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223579223695_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223581223700_))
                                      ((lambda (_L223703_
                                                _L223704_
                                                _L223705_
                                                _L223706_
                                                _L223707_)
                                         (let* ((_get-kws-id223747_
                                                 (let ((__tmp236906
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L223519_)))
                                                       (__tmp236905
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp236906
                                                    __tmp236905)))
                                                (_get-kws-id223749_
                                                 (let ((__tmp236907
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx223220_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id223747_
                                                    __tmp236907)))
                                                (_main-id223751_
                                                 (let ((__tmp236909
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L223519_)))
                                                       (__tmp236908
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp236909
                                                    __tmp236908)))
                                                (_main-id223753_
                                                 (let ((__tmp236910
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx223220_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id223751_
                                                    __tmp236910)))
                                                (_g236911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id223749_)))
                                                (_g236912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id223753_)))
                                                (_new-kw-dispatch223757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223703_
                                                    _L223707_
                                                    _get-kws-id223749_)))
                                                (_new-get-kws223759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L223704_
                                                    _L223706_
                                                    _main-id223753_))))
                                           (let ((__tmp236915
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L223519_)))
                                                 (__tmp236914
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id223749_)))
                                                 (__tmp236913
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id223753_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp236915
                                              '" => "
                                              __tmp236914
                                              '" => "
                                              __tmp236913))
                                           (let ((__tmp236920
                                                  (let ((__tmp236921
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234541234542_
                                                            _main-id223753_
                                                            _L223705_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp236921
                                                          _lift1223397_)))
                                                 (__tmp236918
                                                  (let ((__tmp236919
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234541234542_
                                                            _get-kws-id223749_
                                                            _new-get-kws223759_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp236919
                                                          _lift2223398_)))
                                                 (__tmp236916
                                                  (let ((__tmp236917
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234541234542_
                                                            _L223519_
                                                            _new-kw-dispatch223757_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp236917
                                                          _bind223399_))))
                                             (declare (not safe))
                                             (_lp223394_
                                              _rest223419_
                                              __tmp236920
                                              __tmp236918
                                              __tmp236916))))
                                       _hd223580223698_
                                       _hd223577223690_
                                       _hd223574223682_
                                       _hd223571223674_
                                       _hd223553223626_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223533223586_ _g223534223589_)))))
                              (let ()
                                (declare (not safe))
                                (_g223533223586_ _g223534223589_)))
                          (let ()
                            (declare (not safe))
                            (_g223533223586_ _g223534223589_)))
                      (let ()
                        (declare (not safe))
                        (_g223533223586_ _g223534223589_)))
                  (let ()
                    (declare (not safe))
                    (_g223533223586_ _g223534223589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g223533223586_
                                                     _g223534223589_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g223533223586_
                                                 _g223534223589_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g223533223586_
                                             _g223534223589_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g223533223586_ _g223534223589_)))
                              (let ()
                                (declare (not safe))
                                (_g223533223586_ _g223534223589_)))))
                      (let ()
                        (declare (not safe))
                        (_g223533223586_ _g223534223589_)))))
              (let ()
                (declare (not safe))
                (_g223533223586_ _g223534223589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g223533223586_
                                                 _g223534223589_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223533223586_ _g223534223589_)))))
                              (let ()
                                (declare (not safe))
                                (_g223533223586_ _g223534223589_)))))
                      (let ()
                        (declare (not safe))
                        (_g223533223586_ _g223534223589_)))
                  (let ()
                    (declare (not safe))
                    (_g223533223586_ _g223534223589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g223533223586_
                                                     _g223534223589_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g223533223586_
                                             _g223534223589_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g223533223586_ _g223534223589_)))))
                          (let ()
                            (declare (not safe))
                            (_g223533223586_ _g223534223589_)))))
                  (let ()
                    (declare (not safe))
                    (_g223533223586_ _g223534223589_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g223532223762_ _L223518_))))
                                         (___kont236383236384_
                                          (lambda (_L223469_ _L223470_)
                                            (let ((__tmp236922
                                                   (let ((__tmp236923
                                                          (let ((__tmp236924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L223469_ '()))))
                    (declare (not safe))
                    (cons _L223470_ __tmp236924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp236923
                                                           _bind223399_))))
                                              (declare (not safe))
                                              (_lp223394_
                                               _rest223419_
                                               _lift1223397_
                                               _lift2223398_
                                               __tmp236922)))))
                                     (let ((___match236406236407_
                                            (lambda (_e223427223494_
                                                     _hd223428223497_
                                                     _tl223429223499_
                                                     _e223430223502_
                                                     _hd223431223505_
                                                     _tl223432223507_
                                                     _e223433223510_
                                                     _hd223434223513_
                                                     _tl223435223515_)
                                              (let ((_L223518_
                                                     _hd223434223513_)
                                                    (_L223519_
                                                     _hd223431223505_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L223519_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L223518_)))
                                                    (___kont236381236382_
                                                     _L223518_
                                                     _L223519_)
                                                    (___kont236383236384_
                                                     _hd223434223513_
                                                     _hd223428223497_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236379236380_))
                                           (let ((_e223427223494_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236379236380_))))
                                             (let ((_tl223429223499_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e223427223494_)))
                                                   (_hd223428223497_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e223427223494_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd223428223497_))
                                                   (let ((_e223430223502_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd223428223497_))))
                                                     (let ((_tl223432223507_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e223430223502_)))
                                                           (_hd223431223505_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e223430223502_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl223432223507_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl223429223499_))
                       (let ((_e223433223510_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl223429223499_))))
                         (let ((_tl223435223515_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e223433223510_)))
                               (_hd223434223513_
                                (let ()
                                  (declare (not safe))
                                  (##car _e223433223510_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl223435223515_))
                               (___match236406236407_
                                _e223427223494_
                                _hd223428223497_
                                _tl223429223499_
                                _e223430223502_
                                _hd223431223505_
                                _tl223432223507_
                                _e223433223510_
                                _hd223434223513_
                                _tl223435223515_)
                               (let ()
                                 (declare (not safe))
                                 (_g223423223448_)))))
                       (let () (declare (not safe)) (_g223423223448_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl223429223499_))
                       (let ((_e223441223461_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl223429223499_))))
                         (let ((_tl223443223466_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e223441223461_)))
                               (_hd223442223464_
                                (let ()
                                  (declare (not safe))
                                  (##car _e223441223461_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl223443223466_))
                               (___kont236383236384_
                                _hd223442223464_
                                _hd223428223497_)
                               (let ()
                                 (declare (not safe))
                                 (_g223423223448_)))))
                       (let () (declare (not safe)) (_g223423223448_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl223429223499_))
                                                       (let ((_e223441223461_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl223429223499_))))
                 (let ((_tl223443223466_
                        (let () (declare (not safe)) (##cdr _e223441223461_)))
                       (_hd223442223464_
                        (let () (declare (not safe)) (##car _e223441223461_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl223443223466_))
                       (___kont236383236384_ _hd223442223464_ _hd223428223497_)
                       (let () (declare (not safe)) (_g223423223448_)))))
               (let () (declare (not safe)) (_g223423223448_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g223423223448_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest223400223408_))
                             (let ((_hd223405223771_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest223400223408_)))
                                   (_tl223406223773_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest223400223408_))))
                               (let* ((_hd223776_ _hd223405223771_)
                                      (_rest223778_ _tl223406223773_))
                                 (declare (not safe))
                                 (_K223404223768_ _rest223778_ _hd223776_)))
                             (let ()
                               (declare (not safe))
                               (_else223402223416_))))))))
          (let* ((___stx236423236424_ _stx223220_)
                 (_g223228223254_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236423236424_)))))
            (let ((___kont236425236426_
                   (lambda (_L223314_ _L223315_)
                     (let ((__tmp236926
                            (lambda ()
                              (if (let ((__tmp236927
                                         (let ((__tmp236928
                                                (lambda (_g223343223346_
                                                         _g223344223348_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g223343223346_
                                                          _g223344223348_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp236928
                                                   '()
                                                   _L223315_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?223224_
                                            __tmp236927))
                                  (let ((_g236929_
                                         (let ((__tmp236931
                                                (let ((__tmp236932
                                                       (lambda (_g223350223353_
                                                                _g223351223355_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g223350223353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g223351223355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp236932
                                                          '()
                                                          _L223315_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings223225_
                                            __tmp236931))))
                                    (begin
                                      (let ((_g236930_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g236929_)
                                                   (##vector-length _g236929_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g236930_ 3)))
                                            (error "Context expects 3 values"
                                                   _g236930_)))
                                      (let ((_lift1223358_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g236929_ 0)))
                                            (_lift2223359_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g236929_ 1)))
                                            (_hd223360_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g236929_ 2))))
                                        (let* ((_expr223362_
                                                (let ((__tmp236933
                                                       (let ((__tmp236934
                                                              (let ((__tmp236935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L223314_ '()))))
                        (declare (not safe))
                        (cons _hd223360_ __tmp236935))))
                 (declare (not safe))
                 (cons '%#let-values __tmp236934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp236933
                                                   _stx223220_)))
                                               (_expr223364_
                                                (let ((__tmp236936
                                                       (let ((__tmp236937
                                                              (let ((__tmp236938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr223362_ '()))))
                        (declare (not safe))
                        (cons _lift2223359_ __tmp236938))))
                 (declare (not safe))
                 (cons '%#let-values __tmp236937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp236936
                                                   _stx223220_)))
                                               (_expr223366_
                                                (let ((__tmp236939
                                                       (let ((__tmp236940
                                                              (let ((__tmp236941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr223364_ '()))))
                        (declare (not safe))
                        (cons _lift1223358_ __tmp236941))))
                 (declare (not safe))
                 (cons '%#let-values __tmp236940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp236939
                                                   _stx223220_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr223366_))))))
                                  (let ((_g236942_
                                         (let ((__tmp236944
                                                (let ((__tmp236945
                                                       (lambda (_g223368223371_
                                                                _g223369223373_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g223368223371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g223369223373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp236945
                                                          '()
                                                          _L223315_))))
                                           (declare (not safe))
                                           (_compile-bindings223223_
                                            __tmp236944))))
                                    (begin
                                      (let ((_g236943_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g236942_)
                                                   (##vector-length _g236942_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g236943_ 3)))
                                            (error "Context expects 3 values"
                                                   _g236943_)))
                                      (let ((_lift1223376_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g236942_ 0)))
                                            (_lift2223377_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g236942_ 1)))
                                            (_hd223378_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g236942_ 2))))
                                        (let* ((_body223380_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L223314_)))
                                               (_expr223382_
                                                (let ((__tmp236946
                                                       (let ((__tmp236947
                                                              (let ((__tmp236948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body223380_ '()))))
                        (declare (not safe))
                        (cons _hd223378_ __tmp236948))))
                 (declare (not safe))
                 (cons '%#let-values __tmp236947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp236946
                                                   _stx223220_)))
                                               (_expr223384_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2223377_))
                                                    _expr223382_
                                                    (let ((__tmp236949
                                                           (let ((__tmp236950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236951
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr223382_ '()))))
                            (declare (not safe))
                            (cons _lift2223377_ __tmp236951))))
                     (declare (not safe))
                     (cons '%#let-values __tmp236950))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp236949 _stx223220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr223386_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1223376_))
                                                    _expr223384_
                                                    (let ((__tmp236952
                                                           (let ((__tmp236953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236954
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr223384_ '()))))
                            (declare (not safe))
                            (cons _lift1223376_ __tmp236954))))
                     (declare (not safe))
                     (cons '%#let-values __tmp236953))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp236952 _stx223220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr223386_)))))))
                           (__tmp236925
                            (let ((__obj236629
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj236629)
                              __obj236629)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp236926
                        gx#current-expander-context
                        __tmp236925))))
                  (___kont236429236430_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx223220_)))))
              (let ((___match236450236451_
                     (lambda (_e223232223266_
                              _hd223233223269_
                              _tl223234223271_
                              _e223235223274_
                              _hd223236223277_
                              _tl223237223279_
                              ___splice236427236428_
                              _target223238223282_
                              _tl223240223284_)
                       (letrec ((_loop223241223287_
                                 (lambda (_hd223239223290_ _bind223245223292_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd223239223290_))
                                       (let ((_e223242223295_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd223239223290_))))
                                         (let ((_lp-tl223244223300_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e223242223295_)))
                                               (_lp-hd223243223298_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e223242223295_))))
                                           (let ((__tmp236955
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd223243223298_
                                                          _bind223245223292_))))
                                             (declare (not safe))
                                             (_loop223241223287_
                                              _lp-tl223244223300_
                                              __tmp236955))))
                                       (let ((_bind223246223303_
                                              (reverse _bind223245223292_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl223237223279_))
                                             (let ((_e223247223306_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl223237223279_))))
                                               (let ((_tl223249223311_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e223247223306_)))
                                                     (_hd223248223309_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e223247223306_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl223249223311_))
                                                     (let ((_L223314_
                                                            _hd223248223309_)
                                                           (_L223315_
                                                            _bind223246223303_))
                                                       (if (let ((__tmp236956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236957
                                 (lambda (_g223335223338_ _g223336223340_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g223335223338_ _g223336223340_)))))
                            (declare (not safe))
                            (foldr1 __tmp236957 '() _L223315_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp236956))
                   (___kont236425236426_ _L223314_ _L223315_)
                   (___kont236429236430_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont236429236430_))))
                                             (___kont236429236430_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop223241223287_ _target223238223282_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236423236424_))
                    (let ((_e223232223266_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236423236424_))))
                      (let ((_tl223234223271_
                             (let ()
                               (declare (not safe))
                               (##cdr _e223232223266_)))
                            (_hd223233223269_
                             (let ()
                               (declare (not safe))
                               (##car _e223232223266_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl223234223271_))
                            (let ((_e223235223274_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl223234223271_))))
                              (let ((_tl223237223279_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e223235223274_)))
                                    (_hd223236223277_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e223235223274_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd223236223277_))
                                    (let ((___splice236427236428_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd223236223277_
                                              '0))))
                                      (let ((_tl223240223284_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236427236428_
                                                '1)))
                                            (_target223238223282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236427236428_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl223240223284_))
                                            (___match236450236451_
                                             _e223232223266_
                                             _hd223233223269_
                                             _tl223234223271_
                                             _e223235223274_
                                             _hd223236223277_
                                             _tl223237223279_
                                             ___splice236427236428_
                                             _target223238223282_
                                             _tl223240223284_)
                                            (___kont236429236430_))))
                                    (___kont236429236430_))))
                            (___kont236429236430_))))
                    (___kont236429236430_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx222364_)
        (letrec* ((_bind-e__234546234547_
                   (lambda (_id223204_ _expr223205_ _compile?223206_)
                     (let ((__tmp236960
                            (let ()
                              (declare (not safe))
                              (cons _id223204_ '())))
                           (__tmp236958
                            (let ((__tmp236959
                                   (if _compile?223206_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr223205_))
                                       _expr223205_)))
                              (declare (not safe))
                              (cons __tmp236959 '()))))
                       (declare (not safe))
                       (cons __tmp236960 __tmp236958))))
                  (_bind-e__0__234548234549_
                   (lambda (_id223211_ _expr223212_)
                     (let ((_compile?223214_ '#t))
                       (declare (not safe))
                       (_bind-e__234546234547_
                        _id223211_
                        _expr223212_
                        _compile?223214_))))
                  (_bind-e222366_
                   (lambda _g236962_
                     (let ((_g236961_
                            (let ()
                              (declare (not safe))
                              (##length _g236962_))))
                       (cond ((let () (declare (not safe)) (##fx= _g236961_ 2))
                              (apply (lambda (_id223211_ _expr223212_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__234548234549_
                                          _id223211_
                                          _expr223212_)))
                                     _g236962_))
                             ((let () (declare (not safe)) (##fx= _g236961_ 3))
                              (apply (lambda (_id223216_
                                              _expr223217_
                                              _compile?223218_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__234546234547_
                                          _id223216_
                                          _expr223217_
                                          _compile?223218_)))
                                     _g236962_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g236962_))))))
                  (_compile-bindings222367_
                   (lambda (_rest222502_)
                     (let _lp222504_ ((_rest222506_ _rest222502_)
                                      (_bind222507_ '()))
                       (let* ((_rest222508222516_ _rest222506_)
                              (_else222510222524_
                               (lambda () (reverse _bind222507_)))
                              (_K222512223191_
                               (lambda (_rest222527_ _hd222528_)
                                 (let* ((___stx236473236474_ _hd222528_)
                                        (_g222533222580_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx236473236474_)))))
                                   (let ((___kont236475236476_
                                          (lambda (_L223098_ _L223099_)
                                            (let* ((___stx236453236454_
                                                    _L223098_)
                                                   (_g223114223128_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx236453236454_)))))
                                              (let ((___kont236455236456_
                                                     (lambda (_L223176_)
                                                       (let ((__tmp236963
                                                              (let ((__tmp236964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__234546234547_
                                _L223099_
                                _L223098_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp236964 _bind222507_))))
                 (declare (not safe))
                 (_lp222504_ _rest222527_ __tmp236963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont236457236458_
                                                     (lambda (_L223141_)
                                                       (let ((_g236965_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx222364_
                         _L223099_
                         _L223141_
                         '#t))))
                 (begin
                   (let ((_g236966_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g236965_)
                                (##vector-length _g236965_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g236966_ 3)))
                         (error "Context expects 3 values" _g236966_)))
                   (let ((_ids223151_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g236965_ 0)))
                         (_impls223152_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g236965_ 1)))
                         (_clauses223153_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g236965_ 2))))
                     (let* ((_g236967_
                             (for-each gx#core-bind-runtime! _ids223151_))
                            (_xbind223156_
                             (map _bind-e222366_ _ids223151_ _impls223152_))
                            (_expr*223158_
                             (let ((__tmp236969
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses223153_)))
                                   (__tmp236968
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236969
                                __tmp236968)))
                            (_bind*223160_
                             (let ()
                               (declare (not safe))
                               (_bind-e__234546234547_
                                _L223099_
                                _expr*223158_
                                '#f))))
                       (let ((__tmp236971
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L223099_)))
                             (__tmp236970
                              (map gxc#identifier-symbol _ids223151_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp236971
                          '" => "
                          __tmp236970))
                       (let ((__tmp236972
                              (let ((__tmp236973
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind222507_
                                               _xbind223156_))))
                                (declare (not safe))
                                (cons _bind*223160_ __tmp236973))))
                         (declare (not safe))
                         (_lp222504_ _rest222527_ __tmp236972)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match236464236465_
                                                       (lambda (_e223117223168_
                                                                _hd223118223171_
                                                                _tl223119223173_)
                                                         (let ((_L223176_
                                                                _tl223119223173_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L223176_))
                       (___kont236455236456_ _L223176_)
                       (___kont236457236458_ _tl223119223173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx236453236454_))
                                                      (let ((_e223117223168_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx236453236454_))))
                (let ((_tl223119223173_
                       (let () (declare (not safe)) (##cdr _e223117223168_)))
                      (_hd223118223171_
                       (let () (declare (not safe)) (##car _e223117223168_))))
                  (___match236464236465_
                   _e223117223168_
                   _hd223118223171_
                   _tl223119223173_)))
              (let () (declare (not safe)) (_g223114223128_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont236477236478_
                                          (lambda (_L222926_ _L222927_)
                                            (let* ((_g222941222971_
                                                    (lambda (_g222942222968_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g222942222968_))))
                                                   (_g222940223066_
                                                    (lambda (_g222942222974_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g222942222974_))
                                                          (let ((_e222946222976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g222942222974_))))
                    (let ((_hd222947222979_
                           (let ()
                             (declare (not safe))
                             (##car _e222946222976_)))
                          (_tl222948222981_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222946222976_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222948222981_))
                          (let ((_e222949222984_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222948222981_))))
                            (let ((_hd222950222987_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222949222984_)))
                                  (_tl222951222989_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222949222984_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222950222987_))
                                  (let ((_e222952222992_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222950222987_))))
                                    (let ((_hd222953222995_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222952222992_)))
                                          (_tl222954222997_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222952222992_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd222953222995_))
                                          (let ((_e222955223000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd222953222995_))))
                                            (let ((_hd222956223003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222955223000_)))
                                                  (_tl222957223005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222955223000_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd222956223003_))
                                                  (let ((_e222958223008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd222956223003_))))
                                                    (let ((_hd222959223011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222958223008_)))
                                                          (_tl222960223013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222958223008_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222960223013_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222957223005_))
                      (let ((_e222961223016_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222957223005_))))
                        (let ((_hd222962223019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222961223016_)))
                              (_tl222963223021_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222961223016_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl222963223021_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl222954222997_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222951222989_))
                                      (let ((_e222964223024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222951222989_))))
                                        (let ((_hd222965223027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222964223024_)))
                                              (_tl222966223029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222964223024_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222966223029_))
                                              ((lambda (_L223032_
                                                        _L223033_
                                                        _L223034_)
                                                 (let* ((_lambda-id223058_
                                                         (let ((__tmp236975
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L222927_)))
                       (__tmp236974 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp236975 __tmp236974)))
                (_lambda-id223060_
                 (let ((__tmp236976
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx222364_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id223058_ __tmp236976)))
                (_g236977_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id223060_)))
                (_new-case-lambda-expr223063_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L223032_
                    _L223034_
                    _lambda-id223060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp236979
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L222927_)))
                                                         (__tmp236978
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id223060_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp236979
                                                      '" => "
                                                      __tmp236978))
                                                   (let ((__tmp236982
                                                          (let ((__tmp236983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__234546234547_
                            _L222927_
                            _new-case-lambda-expr223063_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp236983 _rest222527_)))
                 (__tmp236980
                  (let ((__tmp236981
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__234548234549_
                            _lambda-id223060_
                            _L223033_))))
                    (declare (not safe))
                    (cons __tmp236981 _bind222507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp222504_
                                                      __tmp236982
                                                      __tmp236980))))
                                               _hd222965223027_
                                               _hd222962223019_
                                               _hd222959223011_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222941222971_
                                                 _g222942222974_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222941222971_ _g222942222974_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222941222971_ _g222942222974_)))
                              (let ()
                                (declare (not safe))
                                (_g222941222971_ _g222942222974_)))))
                      (let ()
                        (declare (not safe))
                        (_g222941222971_ _g222942222974_)))
                  (let ()
                    (declare (not safe))
                    (_g222941222971_ _g222942222974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222941222971_
                                                     _g222942222974_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g222941222971_
                                             _g222942222974_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222941222971_ _g222942222974_)))))
                          (let ()
                            (declare (not safe))
                            (_g222941222971_ _g222942222974_)))))
                  (let ()
                    (declare (not safe))
                    (_g222941222971_ _g222942222974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g222940223066_ _L222926_))))
                                         (___kont236479236480_
                                          (lambda (_L222650_ _L222651_)
                                            (let* ((_g222665222718_
                                                    (lambda (_g222666222715_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g222666222715_))))
                                                   (_g222664222894_
                                                    (lambda (_g222666222721_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g222666222721_))
                                                          (let ((_e222672222723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g222666222721_))))
                    (let ((_hd222673222726_
                           (let ()
                             (declare (not safe))
                             (##car _e222672222723_)))
                          (_tl222674222728_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222672222723_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222674222728_))
                          (let ((_e222675222731_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222674222728_))))
                            (let ((_hd222676222734_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222675222731_)))
                                  (_tl222677222736_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222675222731_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222676222734_))
                                  (let ((_e222678222739_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222676222734_))))
                                    (let ((_hd222679222742_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222678222739_)))
                                          (_tl222680222744_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222678222739_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd222679222742_))
                                          (let ((_e222681222747_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd222679222742_))))
                                            (let ((_hd222682222750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222681222747_)))
                                                  (_tl222683222752_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222681222747_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd222682222750_))
                                                  (let ((_e222684222755_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd222682222750_))))
                                                    (let ((_hd222685222758_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222684222755_)))
                                                          (_tl222686222760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222684222755_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222686222760_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222683222752_))
                      (let ((_e222687222763_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222683222752_))))
                        (let ((_hd222688222766_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222687222763_)))
                              (_tl222689222768_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222687222763_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222688222766_))
                              (let ((_e222690222771_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222688222766_))))
                                (let ((_hd222691222774_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222690222771_)))
                                      (_tl222692222776_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222690222771_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222692222776_))
                                      (let ((_e222693222779_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222692222776_))))
                                        (let ((_hd222694222782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222693222779_)))
                                              (_tl222695222784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222693222779_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd222694222782_))
                                              (let ((_e222696222787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd222694222782_))))
                                                (let ((_hd222697222790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222696222787_)))
                                                      (_tl222698222792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222696222787_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222697222790_))
                                                      (let ((_e222699222795_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd222697222790_))))
                (let ((_hd222700222798_
                       (let () (declare (not safe)) (##car _e222699222795_)))
                      (_tl222701222800_
                       (let () (declare (not safe)) (##cdr _e222699222795_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222700222798_))
                      (let ((_e222702222803_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222700222798_))))
                        (let ((_hd222703222806_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222702222803_)))
                              (_tl222704222808_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222702222803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl222704222808_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222701222800_))
                                  (let ((_e222705222811_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222701222800_))))
                                    (let ((_hd222706222814_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222705222811_)))
                                          (_tl222707222816_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222705222811_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222707222816_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222698222792_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222695222784_))
                                                  (let ((_e222708222819_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222695222784_))))
                                                    (let ((_hd222709222822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222708222819_)))
                                                          (_tl222710222824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222708222819_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222710222824_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl222689222768_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl222680222744_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222677222736_))
                              (let ((_e222711222827_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222677222736_))))
                                (let ((_hd222712222830_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222711222827_)))
                                      (_tl222713222832_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222711222827_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222713222832_))
                                      ((lambda (_L222835_
                                                _L222836_
                                                _L222837_
                                                _L222838_
                                                _L222839_)
                                         (let* ((_get-kws-id222879_
                                                 (let ((__tmp236985
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L222651_)))
                                                       (__tmp236984
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp236985
                                                    __tmp236984)))
                                                (_get-kws-id222881_
                                                 (let ((__tmp236986
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx222364_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id222879_
                                                    __tmp236986)))
                                                (_main-id222883_
                                                 (let ((__tmp236988
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L222651_)))
                                                       (__tmp236987
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp236988
                                                    __tmp236987)))
                                                (_main-id222885_
                                                 (let ((__tmp236989
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx222364_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id222883_
                                                    __tmp236989)))
                                                (_g236990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id222881_)))
                                                (_g236991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id222885_)))
                                                (_new-kw-dispatch222889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L222835_
                                                    _L222839_
                                                    _get-kws-id222881_)))
                                                (_new-get-kws222891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L222836_
                                                    _L222838_
                                                    _main-id222885_))))
                                           (let ((__tmp236994
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L222651_)))
                                                 (__tmp236993
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id222881_)))
                                                 (__tmp236992
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id222885_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp236994
                                              '" => "
                                              __tmp236993
                                              '" => "
                                              __tmp236992))
                                           (let ((__tmp236995
                                                  (let ((__tmp237000
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__234546234547_
                                                            _main-id222885_
                                                            _L222837_
                                                            '#f)))
                                                        (__tmp236996
                                                         (let ((__tmp236999
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__234546234547_
                           _get-kws-id222881_
                           _new-get-kws222891_
                           '#f)))
                       (__tmp236997
                        (let ((__tmp236998
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__234546234547_
                                  _L222651_
                                  _new-kw-dispatch222889_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp236998 _rest222527_))))
                   (declare (not safe))
                   (cons __tmp236999 __tmp236997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp237000
                                                          __tmp236996))))
                                             (declare (not safe))
                                             (_lp222504_
                                              __tmp236995
                                              _bind222507_))))
                                       _hd222712222830_
                                       _hd222709222822_
                                       _hd222706222814_
                                       _hd222703222806_
                                       _hd222685222758_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222665222718_ _g222666222721_)))))
                              (let ()
                                (declare (not safe))
                                (_g222665222718_ _g222666222721_)))
                          (let ()
                            (declare (not safe))
                            (_g222665222718_ _g222666222721_)))
                      (let ()
                        (declare (not safe))
                        (_g222665222718_ _g222666222721_)))
                  (let ()
                    (declare (not safe))
                    (_g222665222718_ _g222666222721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222665222718_
                                                     _g222666222721_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g222665222718_
                                                 _g222666222721_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g222665222718_
                                             _g222666222721_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222665222718_ _g222666222721_)))
                              (let ()
                                (declare (not safe))
                                (_g222665222718_ _g222666222721_)))))
                      (let ()
                        (declare (not safe))
                        (_g222665222718_ _g222666222721_)))))
              (let ()
                (declare (not safe))
                (_g222665222718_ _g222666222721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g222665222718_
                                                 _g222666222721_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222665222718_ _g222666222721_)))))
                              (let ()
                                (declare (not safe))
                                (_g222665222718_ _g222666222721_)))))
                      (let ()
                        (declare (not safe))
                        (_g222665222718_ _g222666222721_)))
                  (let ()
                    (declare (not safe))
                    (_g222665222718_ _g222666222721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g222665222718_
                                                     _g222666222721_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g222665222718_
                                             _g222666222721_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g222665222718_ _g222666222721_)))))
                          (let ()
                            (declare (not safe))
                            (_g222665222718_ _g222666222721_)))))
                  (let ()
                    (declare (not safe))
                    (_g222665222718_ _g222666222721_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g222664222894_ _L222650_))))
                                         (___kont236481236482_
                                          (lambda (_L222601_ _L222602_)
                                            (let ((__tmp237001
                                                   (let ((__tmp237002
                                                          (let ((__tmp237003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237004
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L222601_))))
                           (declare (not safe))
                           (cons __tmp237004 '()))))
                    (declare (not safe))
                    (cons _L222602_ __tmp237003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237002
                                                           _bind222507_))))
                                              (declare (not safe))
                                              (_lp222504_
                                               _rest222527_
                                               __tmp237001)))))
                                     (let* ((___match236548236549_
                                             (lambda (_e222559222626_
                                                      _hd222560222629_
                                                      _tl222561222631_
                                                      _e222562222634_
                                                      _hd222563222637_
                                                      _tl222564222639_
                                                      _e222565222642_
                                                      _hd222566222645_
                                                      _tl222567222647_)
                                               (let ((_L222650_
                                                      _hd222566222645_)
                                                     (_L222651_
                                                      _hd222563222637_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L222651_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L222650_)))
                                                     (___kont236479236480_
                                                      _L222650_
                                                      _L222651_)
                                                     (___kont236481236482_
                                                      _hd222566222645_
                                                      _hd222560222629_)))))
                                            (___match236526236527_
                                             (lambda (_e222548222902_
                                                      _hd222549222905_
                                                      _tl222550222907_
                                                      _e222551222910_
                                                      _hd222552222913_
                                                      _tl222553222915_
                                                      _e222554222918_
                                                      _hd222555222921_
                                                      _tl222556222923_)
                                               (let ((_L222926_
                                                      _hd222555222921_)
                                                     (_L222927_
                                                      _hd222552222913_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L222927_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L222926_)))
                                                     (___kont236477236478_
                                                      _L222926_
                                                      _L222927_)
                                                     (___match236548236549_
                                                      _e222548222902_
                                                      _hd222549222905_
                                                      _tl222550222907_
                                                      _e222551222910_
                                                      _hd222552222913_
                                                      _tl222553222915_
                                                      _e222554222918_
                                                      _hd222555222921_
                                                      _tl222556222923_)))))
                                            (___match236504236505_
                                             (lambda (_e222537223074_
                                                      _hd222538223077_
                                                      _tl222539223079_
                                                      _e222540223082_
                                                      _hd222541223085_
                                                      _tl222542223087_
                                                      _e222543223090_
                                                      _hd222544223093_
                                                      _tl222545223095_)
                                               (let ((_L223098_
                                                      _hd222544223093_)
                                                     (_L223099_
                                                      _hd222541223085_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L223099_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L223098_)))
                                                     (___kont236475236476_
                                                      _L223098_
                                                      _L223099_)
                                                     (___match236526236527_
                                                      _e222537223074_
                                                      _hd222538223077_
                                                      _tl222539223079_
                                                      _e222540223082_
                                                      _hd222541223085_
                                                      _tl222542223087_
                                                      _e222543223090_
                                                      _hd222544223093_
                                                      _tl222545223095_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx236473236474_))
                                           (let ((_e222537223074_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx236473236474_))))
                                             (let ((_tl222539223079_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e222537223074_)))
                                                   (_hd222538223077_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e222537223074_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd222538223077_))
                                                   (let ((_e222540223082_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd222538223077_))))
                                                     (let ((_tl222542223087_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e222540223082_)))
                                                           (_hd222541223085_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e222540223082_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl222542223087_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl222539223079_))
                       (let ((_e222543223090_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl222539223079_))))
                         (let ((_tl222545223095_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e222543223090_)))
                               (_hd222544223093_
                                (let ()
                                  (declare (not safe))
                                  (##car _e222543223090_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl222545223095_))
                               (___match236504236505_
                                _e222537223074_
                                _hd222538223077_
                                _tl222539223079_
                                _e222540223082_
                                _hd222541223085_
                                _tl222542223087_
                                _e222543223090_
                                _hd222544223093_
                                _tl222545223095_)
                               (let ()
                                 (declare (not safe))
                                 (_g222533222580_)))))
                       (let () (declare (not safe)) (_g222533222580_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl222539223079_))
                       (let ((_e222573222593_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl222539223079_))))
                         (let ((_tl222575222598_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e222573222593_)))
                               (_hd222574222596_
                                (let ()
                                  (declare (not safe))
                                  (##car _e222573222593_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl222575222598_))
                               (___kont236481236482_
                                _hd222574222596_
                                _hd222538223077_)
                               (let ()
                                 (declare (not safe))
                                 (_g222533222580_)))))
                       (let () (declare (not safe)) (_g222533222580_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl222539223079_))
                                                       (let ((_e222573222593_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl222539223079_))))
                 (let ((_tl222575222598_
                        (let () (declare (not safe)) (##cdr _e222573222593_)))
                       (_hd222574222596_
                        (let () (declare (not safe)) (##car _e222573222593_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl222575222598_))
                       (___kont236481236482_ _hd222574222596_ _hd222538223077_)
                       (let () (declare (not safe)) (_g222533222580_)))))
               (let () (declare (not safe)) (_g222533222580_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g222533222580_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest222508222516_))
                             (let ((_hd222513223194_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest222508222516_)))
                                   (_tl222514223196_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest222508222516_))))
                               (let* ((_hd223199_ _hd222513223194_)
                                      (_rest223201_ _tl222514223196_))
                                 (declare (not safe))
                                 (_K222512223191_ _rest223201_ _hd223199_)))
                             (let ()
                               (declare (not safe))
                               (_else222510222524_))))))))
          (let* ((___stx236565236566_ _stx222364_)
                 (_g222370222397_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx236565236566_)))))
            (let ((___kont236567236568_
                   (lambda (_L222457_ _L222458_ _L222459_)
                     (let ((__tmp237006
                            (lambda ()
                              (let ((_hd222496_
                                     (let ((__tmp237007
                                            (let ((__tmp237008
                                                   (lambda (_g222488222491_
                                                            _g222489222493_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g222488222491_
                                                             _g222489222493_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp237008
                                                      '()
                                                      _L222458_))))
                                       (declare (not safe))
                                       (_compile-bindings222367_ __tmp237007)))
                                    (_body222497_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L222457_))))
                                (let ((__tmp237009
                                       (let ((__tmp237010
                                              (let ((__tmp237011
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body222497_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd222496_
                                                      __tmp237011))))
                                         (declare (not safe))
                                         (cons _L222459_ __tmp237010))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp237009
                                   _stx222364_)))))
                           (__tmp237005
                            (let ((__obj236630
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj236630)
                              __obj236630)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp237006
                        gx#current-expander-context
                        __tmp237005))))
                  (___kont236571236572_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx222364_)))))
              (let ((___match236592236593_
                     (lambda (_e222375222409_
                              _hd222376222412_
                              _tl222377222414_
                              _e222378222417_
                              _hd222379222420_
                              _tl222380222422_
                              ___splice236569236570_
                              _target222381222425_
                              _tl222383222427_)
                       (letrec ((_loop222384222430_
                                 (lambda (_hd222382222433_ _bind222388222435_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd222382222433_))
                                       (let ((_e222385222438_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd222382222433_))))
                                         (let ((_lp-tl222387222443_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e222385222438_)))
                                               (_lp-hd222386222441_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e222385222438_))))
                                           (let ((__tmp237012
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd222386222441_
                                                          _bind222388222435_))))
                                             (declare (not safe))
                                             (_loop222384222430_
                                              _lp-tl222387222443_
                                              __tmp237012))))
                                       (let ((_bind222389222446_
                                              (reverse _bind222388222435_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl222380222422_))
                                             (let ((_e222390222449_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl222380222422_))))
                                               (let ((_tl222392222454_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e222390222449_)))
                                                     (_hd222391222452_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e222390222449_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl222392222454_))
                                                     (let ((_L222457_
                                                            _hd222391222452_)
                                                           (_L222458_
                                                            _bind222389222446_)
                                                           (_L222459_
                                                            _hd222376222412_))
                                                       (if (let ((__tmp237013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp237014
                                 (lambda (_g222480222483_ _g222481222485_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g222480222483_ _g222481222485_)))))
                            (declare (not safe))
                            (foldr1 __tmp237014 '() _L222458_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp237013))
                   (___kont236567236568_ _L222457_ _L222458_ _L222459_)
                   (___kont236571236572_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont236571236572_))))
                                             (___kont236571236572_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop222384222430_ _target222381222425_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx236565236566_))
                    (let ((_e222375222409_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx236565236566_))))
                      (let ((_tl222377222414_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222375222409_)))
                            (_hd222376222412_
                             (let ()
                               (declare (not safe))
                               (##car _e222375222409_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl222377222414_))
                            (let ((_e222378222417_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl222377222414_))))
                              (let ((_tl222380222422_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e222378222417_)))
                                    (_hd222379222420_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e222378222417_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd222379222420_))
                                    (let ((___splice236569236570_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd222379222420_
                                              '0))))
                                      (let ((_tl222383222427_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236569236570_
                                                '1)))
                                            (_target222381222425_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice236569236570_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl222383222427_))
                                            (___match236592236593_
                                             _e222375222409_
                                             _hd222376222412_
                                             _tl222377222414_
                                             _e222378222417_
                                             _hd222379222420_
                                             _tl222380222422_
                                             ___splice236569236570_
                                             _target222381222425_
                                             _tl222383222427_)
                                            (___kont236571236572_))))
                                    (___kont236571236572_))))
                            (___kont236571236572_))))
                    (___kont236571236572_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind222282_)
        (let* ((___stx236595236596_ _bind222282_)
               (_g222285222302_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx236595236596_)))))
          (let ((___kont236597236598_
                 (lambda (_L222338_ _L222339_)
                   (if (let () (declare (not safe)) (gx#identifier? _L222339_))
                       (let ((_$e222355_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L222338_))))
                         (if _$e222355_
                             _$e222355_
                             (let ((_$e222358_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L222338_))))
                               (if _$e222358_
                                   _$e222358_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L222338_))))))
                       '#f)))
                (___kont236599236600_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx236595236596_))
                (let ((_e222289222314_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx236595236596_))))
                  (let ((_tl222291222319_
                         (let () (declare (not safe)) (##cdr _e222289222314_)))
                        (_hd222290222317_
                         (let ()
                           (declare (not safe))
                           (##car _e222289222314_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222290222317_))
                        (let ((_e222292222322_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222290222317_))))
                          (let ((_tl222294222327_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222292222322_)))
                                (_hd222293222325_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222292222322_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl222294222327_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl222291222319_))
                                    (let ((_e222295222330_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl222291222319_))))
                                      (let ((_tl222297222335_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e222295222330_)))
                                            (_hd222296222333_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e222295222330_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl222297222335_))
                                            (___kont236597236598_
                                             _hd222296222333_
                                             _hd222293222325_)
                                            (___kont236599236600_))))
                                    (___kont236599236600_))
                                (___kont236599236600_))))
                        (___kont236599236600_))))
                (___kont236599236600_))))))))
