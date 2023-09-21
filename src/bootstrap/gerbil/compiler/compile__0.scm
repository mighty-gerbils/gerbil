(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1695292405)
  (begin
    (define gxc#current-compile-methods
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-lift
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-marks
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-identifiers
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-boolean-context
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e15609_
                  (lambda (_id15611_)
                    (let ((__tmp17006
                           (let () (declare (not safe)) (gx#stx-e _id15611_))))
                      (declare (not safe))
                      (symbol-hash __tmp17006)))))
          (let ()
            (declare (not safe))
            (make-table 'test: gx#bound-identifier=? 'hash: _hash-e15609_)))))
    (define gxc#compile-e
      (lambda (_stx15564_ . _args15565_)
        (let* ((_g1556715577_
                (lambda (_g1556815574_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1556815574_))))
               (_g1556615605_
                (lambda (_g1556815580_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1556815580_))
                      (let ((_e1557215582_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1556815580_))))
                        (let ((_hd1557115585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1557215582_)))
                              (_tl1557015587_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1557215582_))))
                          ((lambda (_L15590_)
                             (let ((_$e15600_
                                    (let ((__tmp17008
                                           (gxc#current-compile-methods))
                                          (__tmp17007
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _L15590_))))
                                      (declare (not safe))
                                      (table-ref __tmp17008 __tmp17007 '#f))))
                               (if _$e15600_
                                   ((lambda (_method15603_)
                                      (apply _method15603_
                                             _stx15564_
                                             _args15565_))
                                    _$e15600_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#raise-compile-error
                                      '"Cannot compile; missing method"
                                      _stx15564_
                                      _L15590_)))))
                           _hd1557115585_)))
                      (let ()
                        (declare (not safe))
                        (_g1556715577_ _g1556815580_))))))
          (declare (not safe))
          (_g1556615605_ _stx15564_))))
    (define gxc#&void-expression
      (let ((__tmp17009
             (lambda ()
               (let ((_tbl15561_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#begin-annotation void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#lambda void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#case-lambda void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#let-values void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#letrec-values void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#letrec*-values void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#quote void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#quote-syntax void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#call void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#call-unchecked void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#if void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#ref void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#set! void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#struct-instance? void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#struct-direct-instance? void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#struct-ref void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#struct-set! void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#struct-direct-ref void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#struct-direct-set! void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#struct-unchecked-ref void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15561_ '%#struct-unchecked-set! void))
                 _tbl15561_))))
        (declare (not safe))
        (make-promise __tmp17009)))
    (define gxc#&void-special-form
      (let ((__tmp17010
             (lambda ()
               (let ((_tbl15557_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#begin void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#begin-syntax void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#begin-foreign void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#module void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#import void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#export void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#provide void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#extern void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#define-values void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#define-syntax void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#define-alias void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15557_ '%#declare void))
                 _tbl15557_))))
        (declare (not safe))
        (make-promise __tmp17010)))
    (define gxc#&void
      (let ((__tmp17011
             (lambda ()
               (let ((_tbl15553_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17012
                        (let ()
                          (declare (not safe))
                          (force gxc#&void-special-form))))
                   (declare (not safe))
                   (hash-copy! _tbl15553_ __tmp17012))
                 (let ((__tmp17013
                        (let ()
                          (declare (not safe))
                          (force gxc#&void-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl15553_ __tmp17013))
                 _tbl15553_))))
        (declare (not safe))
        (make-promise __tmp17011)))
    (define gxc#&false-expression
      (let ((__tmp17014
             (lambda ()
               (let ((_tbl15549_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#begin-annotation false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#lambda false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#case-lambda false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#let-values false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#letrec-values false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#letrec*-values false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#quote false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#quote-syntax false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#call false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#call-unchecked false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#if false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#ref false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#set! false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#struct-instance? false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#struct-direct-instance? false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#struct-ref false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#struct-set! false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#struct-direct-ref false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#struct-direct-set! false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#struct-unchecked-ref false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15549_ '%#struct-unchecked-set! false))
                 _tbl15549_))))
        (declare (not safe))
        (make-promise __tmp17014)))
    (define gxc#&false-special-form
      (let ((__tmp17015
             (lambda ()
               (let ((_tbl15545_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#begin false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#begin-syntax false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#begin-foreign false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#module false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#import false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#export false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#provide false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#extern false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#define-values false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#define-syntax false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#define-alias false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15545_ '%#declare false))
                 _tbl15545_))))
        (declare (not safe))
        (make-promise __tmp17015)))
    (define gxc#&false
      (let ((__tmp17016
             (lambda ()
               (let ((_tbl15541_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17017
                        (let ()
                          (declare (not safe))
                          (force gxc#&false-special-form))))
                   (declare (not safe))
                   (hash-copy! _tbl15541_ __tmp17017))
                 (let ((__tmp17018
                        (let ()
                          (declare (not safe))
                          (force gxc#&false-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl15541_ __tmp17018))
                 _tbl15541_))))
        (declare (not safe))
        (make-promise __tmp17016)))
    (define gxc#&collect-bindings
      (let ((__tmp17019
             (lambda ()
               (let ((_tbl15537_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17020
                        (let ()
                          (declare (not safe))
                          (force gxc#&void-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl15537_ __tmp17020))
                 (let ((__tmp17021
                        (let ()
                          (declare (not safe))
                          (force gxc#&void-special-form))))
                   (declare (not safe))
                   (hash-copy! _tbl15537_ __tmp17021))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15537_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15537_
                    '%#begin-syntax
                    gxc#collect-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15537_ '%#module gxc#collect-module%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15537_
                    '%#define-values
                    gxc#collect-bindings-define-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15537_
                    '%#define-syntax
                    gxc#collect-bindings-define-syntax%))
                 _tbl15537_))))
        (declare (not safe))
        (make-promise __tmp17019)))
    (define gxc#apply-collect-bindings
      (lambda (_stx15530_ . _args15532_)
        (let ((__tmp17023
               (lambda () (apply gxc#compile-e _stx15530_ _args15532_)))
              (__tmp17022
               (let () (declare (not safe)) (force gxc#&collect-bindings))))
          (declare (not safe))
          (call-with-parameters
           __tmp17023
           gxc#current-compile-methods
           __tmp17022))))
    (define gxc#&lift-modules
      (let ((__tmp17024
             (lambda ()
               (let ((_tbl15527_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17025
                        (let () (declare (not safe)) (force gxc#&void))))
                   (declare (not safe))
                   (hash-copy! _tbl15527_ __tmp17025))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15527_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15527_ '%#module gxc#lift-modules-module%))
                 _tbl15527_))))
        (declare (not safe))
        (make-promise __tmp17024)))
    (define gxc#apply-lift-modules
      (lambda (_stx15520_ . _args15522_)
        (let ((__tmp17027
               (lambda () (apply gxc#compile-e _stx15520_ _args15522_)))
              (__tmp17026
               (let () (declare (not safe)) (force gxc#&lift-modules))))
          (declare (not safe))
          (call-with-parameters
           __tmp17027
           gxc#current-compile-methods
           __tmp17026))))
    (define gxc#&find-runtime-code
      (let ((__tmp17028
             (lambda ()
               (let ((_tbl15517_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#begin gxc#find-runtime-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#begin-syntax false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#begin-foreign true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#begin-annotation true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#module false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#import false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#export false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#provide false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#extern false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#define-values true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#define-syntax false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#define-alias false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#declare false))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#lambda true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#case-lambda true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#let-values true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#letrec-values true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#letrec*-values true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#quote true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#call true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#call-unchecked true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#if true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#ref true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#set! true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#struct-instance? true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#struct-direct-instance? true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#struct-ref true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#struct-set! true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#struct-direct-ref true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#struct-direct-set! true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#struct-unchecked-ref true))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15517_ '%#struct-unchecked-set! true))
                 _tbl15517_))))
        (declare (not safe))
        (make-promise __tmp17028)))
    (define gxc#apply-find-runtime-code
      (lambda (_stx15510_ . _args15512_)
        (let ((__tmp17030
               (lambda () (apply gxc#compile-e _stx15510_ _args15512_)))
              (__tmp17029
               (let () (declare (not safe)) (force gxc#&find-runtime-code))))
          (declare (not safe))
          (call-with-parameters
           __tmp17030
           gxc#current-compile-methods
           __tmp17029))))
    (define gxc#&find-lambda-expression
      (let ((__tmp17031
             (lambda ()
               (let ((_tbl15507_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17032
                        (let () (declare (not safe)) (force gxc#&false))))
                   (declare (not safe))
                   (hash-copy! _tbl15507_ __tmp17032))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15507_
                    '%#begin
                    gxc#find-lambda-expression-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15507_
                    '%#begin-annotation
                    gxc#find-lambda-expression-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15507_ '%#lambda values))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15507_ '%#case-lambda values))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15507_
                    '%#let-values
                    gxc#find-lambda-expression-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15507_
                    '%#letrec-values
                    gxc#find-lambda-expression-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15507_
                    '%#letrec*-values
                    gxc#find-lambda-expression-let-values%))
                 _tbl15507_))))
        (declare (not safe))
        (make-promise __tmp17031)))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx15500_ . _args15502_)
        (let ((__tmp17034
               (lambda () (apply gxc#compile-e _stx15500_ _args15502_)))
              (__tmp17033
               (let ()
                 (declare (not safe))
                 (force gxc#&find-lambda-expression))))
          (declare (not safe))
          (call-with-parameters
           __tmp17034
           gxc#current-compile-methods
           __tmp17033))))
    (define gxc#&count-values
      (let ((__tmp17035
             (lambda ()
               (let ((_tbl15497_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17036
                        (let ()
                          (declare (not safe))
                          (force gxc#&false-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl15497_ __tmp17036))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15497_ '%#begin gxc#count-values-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15497_
                    '%#begin-annotation
                    gxc#count-values-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15497_ '%#lambda gxc#count-values-single%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15497_
                    '%#case-lambda
                    gxc#count-values-single%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15497_
                    '%#let-values
                    gxc#count-values-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15497_
                    '%#letrec-values
                    gxc#count-values-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15497_
                    '%#letrec*-values
                    gxc#count-values-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15497_ '%#quote gxc#count-values-single%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15497_ '%#call gxc#count-values-call%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15497_
                    '%#call-unchecked
                    gxc#count-values-call%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15497_ '%#if gxc#count-values-if%))
                 _tbl15497_))))
        (declare (not safe))
        (make-promise __tmp17035)))
    (define gxc#apply-count-values
      (lambda (_stx15490_ . _args15492_)
        (let ((__tmp17038
               (lambda () (apply gxc#compile-e _stx15490_ _args15492_)))
              (__tmp17037
               (let () (declare (not safe)) (force gxc#&count-values))))
          (declare (not safe))
          (call-with-parameters
           __tmp17038
           gxc#current-compile-methods
           __tmp17037))))
    (define gxc#&generate-runtime-empty
      (let ((__tmp17039
             (lambda ()
               (let ((_tbl15487_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15487_ '%#begin gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#begin-syntax
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#begin-foreign
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#begin-annotation
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#module
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#import
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#export
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#provide
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#extern
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#define-values
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#define-syntax
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#define-alias
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#declare
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#lambda
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#case-lambda
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#let-values
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#letrec-values
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#letrec*-values
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15487_ '%#quote gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15487_ '%#call gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#call-unchecked
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15487_ '%#if gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15487_ '%#ref gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15487_ '%#set! gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#struct-instance?
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#struct-direct-instance?
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#struct-ref
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#struct-set!
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#struct-direct-ref
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#struct-direct-set!
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#struct-unchecked-ref
                    gxc#generate-runtime-empty))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15487_
                    '%#struct-unchecked-set!
                    gxc#generate-runtime-empty))
                 _tbl15487_))))
        (declare (not safe))
        (make-promise __tmp17039)))
    (define gxc#&generate-loader
      (let ((__tmp17040
             (lambda ()
               (let ((_tbl15483_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17041
                        (let ()
                          (declare (not safe))
                          (force gxc#&generate-runtime-empty))))
                   (declare (not safe))
                   (hash-copy! _tbl15483_ __tmp17041))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15483_
                    '%#begin
                    gxc#generate-runtime-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15483_
                    '%#import
                    gxc#generate-runtime-loader-import%))
                 _tbl15483_))))
        (declare (not safe))
        (make-promise __tmp17040)))
    (define gxc#apply-generate-loader
      (lambda (_stx15476_ . _args15478_)
        (let ((__tmp17043
               (lambda () (apply gxc#compile-e _stx15476_ _args15478_)))
              (__tmp17042
               (let () (declare (not safe)) (force gxc#&generate-loader))))
          (declare (not safe))
          (call-with-parameters
           __tmp17043
           gxc#current-compile-methods
           __tmp17042))))
    (define gxc#&generate-runtime
      (let ((__tmp17044
             (lambda ()
               (let ((_tbl15473_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17045
                        (let ()
                          (declare (not safe))
                          (force gxc#&generate-runtime-empty))))
                   (declare (not safe))
                   (hash-copy! _tbl15473_ __tmp17045))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#begin
                    gxc#generate-runtime-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#begin-foreign
                    gxc#generate-runtime-begin-foreign%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#begin-annotation
                    gxc#generate-runtime-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#define-values
                    gxc#generate-runtime-define-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#declare
                    gxc#generate-runtime-declare%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#lambda
                    gxc#generate-runtime-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#case-lambda
                    gxc#generate-runtime-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#let-values
                    gxc#generate-runtime-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#letrec-values
                    gxc#generate-runtime-letrec-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#letrec*-values
                    gxc#generate-runtime-letrec*-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#quote
                    gxc#generate-runtime-quote%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#quote-syntax
                    gxc#generate-runtime-quote-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15473_ '%#call gxc#generate-runtime-call%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#call-unchecked
                    gxc#generate-runtime-call-unchecked%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15473_ '%#if gxc#generate-runtime-if%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15473_ '%#ref gxc#generate-runtime-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15473_ '%#set! gxc#generate-runtime-setq%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#struct-instance?
                    gxc#generate-runtime-struct-instancep%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#struct-direct-instance?
                    gxc#generate-runtime-struct-direct-instancep%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#struct-ref
                    gxc#generate-runtime-struct-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#struct-set!
                    gxc#generate-runtime-struct-setq%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#struct-direct-ref
                    gxc#generate-runtime-struct-direct-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#struct-direct-set!
                    gxc#generate-runtime-struct-direct-setq%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#struct-unchecked-ref
                    gxc#generate-runtime-struct-unchecked-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15473_
                    '%#struct-unchecked-set!
                    gxc#generate-runtime-struct-unchecked-setq%))
                 _tbl15473_))))
        (declare (not safe))
        (make-promise __tmp17044)))
    (define gxc#apply-generate-runtime
      (lambda (_stx15466_ . _args15468_)
        (let ((__tmp17047
               (lambda () (apply gxc#compile-e _stx15466_ _args15468_)))
              (__tmp17046
               (let () (declare (not safe)) (force gxc#&generate-runtime))))
          (declare (not safe))
          (call-with-parameters
           __tmp17047
           gxc#current-compile-methods
           __tmp17046))))
    (define gxc#&generate-runtime-phi
      (let ((__tmp17048
             (lambda ()
               (let ((_tbl15463_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17049
                        (let ()
                          (declare (not safe))
                          (force gxc#&generate-runtime))))
                   (declare (not safe))
                   (hash-copy! _tbl15463_ __tmp17049))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15463_
                    '%#define-runtime
                    gxc#generate-runtime-phi-define-runtime%))
                 _tbl15463_))))
        (declare (not safe))
        (make-promise __tmp17048)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx15456_ . _args15458_)
        (let ((__tmp17051
               (lambda () (apply gxc#compile-e _stx15456_ _args15458_)))
              (__tmp17050
               (let ()
                 (declare (not safe))
                 (force gxc#&generate-runtime-phi))))
          (declare (not safe))
          (call-with-parameters
           __tmp17051
           gxc#current-compile-methods
           __tmp17050))))
    (define gxc#&collect-expression-refs
      (let ((__tmp17052
             (lambda ()
               (let ((_tbl15453_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#begin-annotation
                    gxc#collect-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#lambda gxc#collect-body-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#case-lambda
                    gxc#collect-body-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#let-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#letrec-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#letrec*-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#quote void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#quote-syntax void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#call gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#call-unchecked
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#if gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#ref gxc#collect-refs-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#set! gxc#collect-refs-setq%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#struct-instance?
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#struct-direct-instance?
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#struct-ref gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15453_ '%#struct-set! gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#struct-direct-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#struct-direct-set!
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#struct-unchecked-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15453_
                    '%#struct-unchecked-set!
                    gxc#collect-operands))
                 _tbl15453_))))
        (declare (not safe))
        (make-promise __tmp17052)))
    (define gxc#apply-collect-expression-refs
      (lambda (_stx15446_ . _args15448_)
        (let ((__tmp17054
               (lambda () (apply gxc#compile-e _stx15446_ _args15448_)))
              (__tmp17053
               (let ()
                 (declare (not safe))
                 (force gxc#&collect-expression-refs))))
          (declare (not safe))
          (call-with-parameters
           __tmp17054
           gxc#current-compile-methods
           __tmp17053))))
    (define gxc#&generate-meta
      (let ((__tmp17055
             (lambda ()
               (let ((_tbl15443_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp17056
                        (let ()
                          (declare (not safe))
                          (force gxc#&void-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl15443_ __tmp17056))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15443_ '%#begin gxc#generate-meta-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15443_
                    '%#begin-syntax
                    gxc#generate-meta-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15443_ '%#module gxc#generate-meta-module%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15443_ '%#import gxc#generate-meta-import%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15443_ '%#export gxc#generate-meta-export%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15443_
                    '%#provide
                    gxc#generate-meta-provide%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15443_ '%#extern gxc#generate-meta-extern%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15443_
                    '%#define-values
                    gxc#generate-meta-define-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15443_
                    '%#define-syntax
                    gxc#generate-meta-define-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15443_
                    '%#define-alias
                    gxc#generate-meta-define-alias%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15443_ '%#begin-foreign void))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15443_ '%#declare void))
                 _tbl15443_))))
        (declare (not safe))
        (make-promise __tmp17055)))
    (define gxc#apply-generate-meta
      (lambda (_stx15436_ . _args15438_)
        (let ((__tmp17058
               (lambda () (apply gxc#compile-e _stx15436_ _args15438_)))
              (__tmp17057
               (let () (declare (not safe)) (force gxc#&generate-meta))))
          (declare (not safe))
          (call-with-parameters
           __tmp17058
           gxc#current-compile-methods
           __tmp17057))))
    (define gxc#&generate-meta-phi
      (let ((__tmp17059
             (lambda ()
               (let ((_tbl15433_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15433_ '%#begin gxc#generate-meta-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#begin-syntax
                    gxc#generate-meta-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#define-syntax
                    gxc#generate-meta-define-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#define-alias
                    gxc#generate-meta-define-alias%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#define-values
                    gxc#generate-meta-phi-define-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#begin-annotation
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#lambda
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#case-lambda
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#let-values
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#letrec-values
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#letrec*-values
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15433_ '%#quote gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#quote-syntax
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15433_ '%#call gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#call-unchecked
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15433_ '%#if gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15433_ '%#ref gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15433_ '%#set! gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#struct-instance?
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#struct-direct-instance?
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#struct-ref
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#struct-set!
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#struct-direct-ref
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#struct-direct-set!
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#struct-unchecked-ref
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl15433_
                    '%#struct-unchecked-set!
                    gxc#generate-meta-phi-expr))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl15433_ '%#declare void))
                 _tbl15433_))))
        (declare (not safe))
        (make-promise __tmp17059)))
    (define gxc#apply-generate-meta-phi
      (lambda (_stx15426_ . _args15428_)
        (let ((__tmp17061
               (lambda () (apply gxc#compile-e _stx15426_ _args15428_)))
              (__tmp17060
               (let () (declare (not safe)) (force gxc#&generate-meta-phi))))
          (declare (not safe))
          (call-with-parameters
           __tmp17061
           gxc#current-compile-methods
           __tmp17060))))
    (define gxc#collect-begin%
      (lambda (_stx15383_ . _args15384_)
        (let* ((_g1538615396_
                (lambda (_g1538715393_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1538715393_))))
               (_g1538515423_
                (lambda (_g1538715399_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1538715399_))
                      (let ((_e1539115401_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1538715399_))))
                        (let ((_hd1539015404_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1539115401_)))
                              (_tl1538915406_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1539115401_))))
                          ((lambda (_L15409_)
                             (let ((__tmp17063
                                    (lambda (_g1541815420_)
                                      (apply gxc#compile-e
                                             _g1541815420_
                                             _args15384_)))
                                   (__tmp17062
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L15409_))))
                               (declare (not safe))
                               (for-each __tmp17063 __tmp17062)))
                           _tl1538915406_)))
                      (let ()
                        (declare (not safe))
                        (_g1538615396_ _g1538715399_))))))
          (declare (not safe))
          (_g1538515423_ _stx15383_))))
    (define gxc#collect-begin-syntax%
      (lambda (_stx15379_ . _args15380_)
        (let ((__tmp17066
               (lambda () (apply gxc#collect-begin% _stx15379_ _args15380_)))
              (__tmp17064
               (let ((__tmp17065 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp17065 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp17066
           gx#current-expander-phi
           __tmp17064))))
    (define gxc#collect-module%
      (lambda (_stx15321_ . _args15322_)
        (let* ((_g1532415338_
                (lambda (_g1532515335_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1532515335_))))
               (_g1532315376_
                (lambda (_g1532515341_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1532515341_))
                      (let ((_e1533015343_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1532515341_))))
                        (let ((_hd1532915346_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1533015343_)))
                              (_tl1532815348_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1533015343_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1532815348_))
                              (let ((_e1533315351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1532815348_))))
                                (let ((_hd1533215354_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1533315351_)))
                                      (_tl1533115356_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1533315351_))))
                                  ((lambda (_L15359_ _L15360_)
                                     (let* ((_ctx15373_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L15360_)))
                                            (__tmp17067
                                             (lambda ()
                                               (apply gxc#compile-e
                                                      (##structure-ref
                                                       _ctx15373_
                                                       '11
                                                       gx#module-context::t
                                                       '#f)
                                                      _args15322_))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp17067
                                        gx#current-expander-context
                                        _ctx15373_)))
                                   _tl1533115356_
                                   _hd1533215354_)))
                              (let ()
                                (declare (not safe))
                                (_g1532415338_ _g1532515341_)))))
                      (let ()
                        (declare (not safe))
                        (_g1532415338_ _g1532515341_))))))
          (declare (not safe))
          (_g1532315376_ _stx15321_))))
    (define gxc#collect-begin-annotation%
      (lambda (_stx15253_ . _args15254_)
        (let* ((_g1525615273_
                (lambda (_g1525715270_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1525715270_))))
               (_g1525515318_
                (lambda (_g1525715276_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1525715276_))
                      (let ((_e1526215278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1525715276_))))
                        (let ((_hd1526115281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1526215278_)))
                              (_tl1526015283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1526215278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1526015283_))
                              (let ((_e1526515286_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1526015283_))))
                                (let ((_hd1526415289_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1526515286_)))
                                      (_tl1526315291_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1526515286_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1526315291_))
                                      (let ((_e1526815294_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1526315291_))))
                                        (let ((_hd1526715297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1526815294_)))
                                              (_tl1526615299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1526815294_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1526615299_))
                                              ((lambda (_L15302_ _L15303_)
                                                 (apply gxc#compile-e
                                                        _L15302_
                                                        _args15254_))
                                               _hd1526715297_
                                               _hd1526415289_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1525615273_
                                                 _g1525715276_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1525615273_ _g1525715276_)))))
                              (let ()
                                (declare (not safe))
                                (_g1525615273_ _g1525715276_)))))
                      (let ()
                        (declare (not safe))
                        (_g1525615273_ _g1525715276_))))))
          (declare (not safe))
          (_g1525515318_ _stx15253_))))
    (define gxc#collect-define-values%
      (lambda (_stx15185_ . _args15186_)
        (let* ((_g1518815205_
                (lambda (_g1518915202_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1518915202_))))
               (_g1518715250_
                (lambda (_g1518915208_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1518915208_))
                      (let ((_e1519415210_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1518915208_))))
                        (let ((_hd1519315213_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1519415210_)))
                              (_tl1519215215_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1519415210_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1519215215_))
                              (let ((_e1519715218_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1519215215_))))
                                (let ((_hd1519615221_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1519715218_)))
                                      (_tl1519515223_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1519715218_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1519515223_))
                                      (let ((_e1520015226_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1519515223_))))
                                        (let ((_hd1519915229_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1520015226_)))
                                              (_tl1519815231_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1520015226_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1519815231_))
                                              ((lambda (_L15234_ _L15235_)
                                                 (apply gxc#compile-e
                                                        _L15234_
                                                        _args15186_))
                                               _hd1519915229_
                                               _hd1519615221_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1518815205_
                                                 _g1518915208_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1518815205_ _g1518915208_)))))
                              (let ()
                                (declare (not safe))
                                (_g1518815205_ _g1518915208_)))))
                      (let ()
                        (declare (not safe))
                        (_g1518815205_ _g1518915208_))))))
          (declare (not safe))
          (_g1518715250_ _stx15185_))))
    (define gxc#collect-define-syntax%
      (lambda (_stx15116_ . _args15117_)
        (let* ((_g1511915136_
                (lambda (_g1512015133_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1512015133_))))
               (_g1511815182_
                (lambda (_g1512015139_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1512015139_))
                      (let ((_e1512515141_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1512015139_))))
                        (let ((_hd1512415144_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1512515141_)))
                              (_tl1512315146_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1512515141_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1512315146_))
                              (let ((_e1512815149_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1512315146_))))
                                (let ((_hd1512715152_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1512815149_)))
                                      (_tl1512615154_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1512815149_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1512615154_))
                                      (let ((_e1513115157_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1512615154_))))
                                        (let ((_hd1513015160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1513115157_)))
                                              (_tl1512915162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1513115157_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1512915162_))
                                              ((lambda (_L15165_ _L15166_)
                                                 (let ((__tmp17070
                                                        (lambda ()
                                                          (apply gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15165_
                         _args15117_)))
               (__tmp17068
                (let ((__tmp17069 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp17069 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp17070
                                                    gx#current-expander-phi
                                                    __tmp17068)))
                                               _hd1513015160_
                                               _hd1512715152_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1511915136_
                                                 _g1512015139_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1511915136_ _g1512015139_)))))
                              (let ()
                                (declare (not safe))
                                (_g1511915136_ _g1512015139_)))))
                      (let ()
                        (declare (not safe))
                        (_g1511915136_ _g1512015139_))))))
          (declare (not safe))
          (_g1511815182_ _stx15116_))))
    (define gxc#collect-body-lambda%
      (lambda (_stx15048_ . _args15049_)
        (let* ((_g1505115068_
                (lambda (_g1505215065_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1505215065_))))
               (_g1505015113_
                (lambda (_g1505215071_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1505215071_))
                      (let ((_e1505715073_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1505215071_))))
                        (let ((_hd1505615076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1505715073_)))
                              (_tl1505515078_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1505715073_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1505515078_))
                              (let ((_e1506015081_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1505515078_))))
                                (let ((_hd1505915084_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1506015081_)))
                                      (_tl1505815086_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1506015081_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1505815086_))
                                      (let ((_e1506315089_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1505815086_))))
                                        (let ((_hd1506215092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1506315089_)))
                                              (_tl1506115094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1506315089_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1506115094_))
                                              ((lambda (_L15097_ _L15098_)
                                                 (apply gxc#compile-e
                                                        _L15097_
                                                        _args15049_))
                                               _hd1506215092_
                                               _hd1505915084_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1505115068_
                                                 _g1505215071_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1505115068_ _g1505215071_)))))
                              (let ()
                                (declare (not safe))
                                (_g1505115068_ _g1505215071_)))))
                      (let ()
                        (declare (not safe))
                        (_g1505115068_ _g1505215071_))))))
          (declare (not safe))
          (_g1505015113_ _stx15048_))))
    (define gxc#collect-body-case-lambda%
      (lambda (_stx14930_ . _args14931_)
        (let* ((_g1493314961_
                (lambda (_g1493414958_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1493414958_))))
               (_g1493215045_
                (lambda (_g1493414964_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1493414964_))
                      (let ((_e1493914966_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1493414964_))))
                        (let ((_hd1493814969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1493914966_)))
                              (_tl1493714971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1493914966_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1493714971_))
                              (let ((_g17071_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1493714971_
                                        '0))))
                                (begin
                                  (let ((_g17072_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17071_)
                                               (##vector-length _g17071_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17072_ 2)))
                                        (error "Context expects 2 values"
                                               _g17072_)))
                                  (let ((_target1494014974_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17071_ 0)))
                                        (_tl1494214976_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17071_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1494214976_))
                                        (letrec ((_loop1494314979_
                                                  (lambda (_hd1494114982_
                                                           _body1494714984_
                                                           _hd1494814986_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1494114982_))
                                                        (let ((_e1494414989_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1494114982_))))
                  (let ((_lp-hd1494514992_
                         (let () (declare (not safe)) (##car _e1494414989_)))
                        (_lp-tl1494614994_
                         (let () (declare (not safe)) (##cdr _e1494414989_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd1494514992_))
                        (let ((_e1495314997_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd1494514992_))))
                          (let ((_hd1495215000_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1495314997_)))
                                (_tl1495115002_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1495314997_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1495115002_))
                                (let ((_e1495615005_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1495115002_))))
                                  (let ((_hd1495515008_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1495615005_)))
                                        (_tl1495415010_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1495615005_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1495415010_))
                                        (let ((__tmp17077
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd1495515008_
                                                       _body1494714984_)))
                                              (__tmp17076
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd1495215000_
                                                       _hd1494814986_))))
                                          (declare (not safe))
                                          (_loop1494314979_
                                           _lp-tl1494614994_
                                           __tmp17077
                                           __tmp17076))
                                        (let ()
                                          (declare (not safe))
                                          (_g1493314961_ _g1493414964_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1493314961_ _g1493414964_)))))
                        (let ()
                          (declare (not safe))
                          (_g1493314961_ _g1493414964_)))))
                (let ((_body1494915013_
                       (let ()
                         (declare (not safe))
                         (reverse _body1494714984_)))
                      (_hd1495015015_
                       (let () (declare (not safe)) (reverse _hd1494814986_))))
                  ((lambda (_L15018_ _L15019_)
                     (let ((__tmp17075
                            (lambda (_g1503315035_)
                              (apply gxc#compile-e _g1503315035_ _args14931_)))
                           (__tmp17073
                            (let ((__tmp17074
                                   (lambda (_g1503715040_ _g1503815042_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1503715040_ _g1503815042_)))))
                              (declare (not safe))
                              (foldr1 __tmp17074 '() _L15018_))))
                       (declare (not safe))
                       (for-each __tmp17075 __tmp17073)))
                   _body1494915013_
                   _hd1495015015_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1494314979_
                                             _target1494014974_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1493314961_ _g1493414964_))))))
                              (let ()
                                (declare (not safe))
                                (_g1493314961_ _g1493414964_)))))
                      (let ()
                        (declare (not safe))
                        (_g1493314961_ _g1493414964_))))))
          (declare (not safe))
          (_g1493215045_ _stx14930_))))
    (define gxc#collect-body-let-values%
      (lambda (_stx14783_ . _args14784_)
        (let* ((_g1478614821_
                (lambda (_g1478714818_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1478714818_))))
               (_g1478514927_
                (lambda (_g1478714824_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1478714824_))
                      (let ((_e1479314826_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1478714824_))))
                        (let ((_hd1479214829_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1479314826_)))
                              (_tl1479114831_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1479314826_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1479114831_))
                              (let ((_e1479614834_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1479114831_))))
                                (let ((_hd1479514837_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1479614834_)))
                                      (_tl1479414839_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1479614834_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1479514837_))
                                      (let ((_g17078_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1479514837_
                                                '0))))
                                        (begin
                                          (let ((_g17079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17078_)
                                                       (##vector-length
                                                        _g17078_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17079_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17079_)))
                                          (let ((_target1479714842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g17078_ 0)))
                                                (_tl1479914844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g17078_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1479914844_))
                                                (letrec ((_loop1480014847_
                                                          (lambda (_hd1479814850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1480414852_
                           _hd1480514854_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1479814850_))
                        (let ((_e1480114857_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1479814850_))))
                          (let ((_lp-hd1480214860_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1480114857_)))
                                (_lp-tl1480314862_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1480114857_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd1480214860_))
                                (let ((_e1481014865_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd1480214860_))))
                                  (let ((_hd1480914868_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1481014865_)))
                                        (_tl1480814870_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1481014865_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1480814870_))
                                        (let ((_e1481314873_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1480814870_))))
                                          (let ((_hd1481214876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1481314873_)))
                                                (_tl1481114878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1481314873_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1481114878_))
                                                (let ((__tmp17085
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1481214876_
                                                               _expr1480414852_)))
                                                      (__tmp17084
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1480914868_
                                                               _hd1480514854_))))
                                                  (declare (not safe))
                                                  (_loop1480014847_
                                                   _lp-tl1480314862_
                                                   __tmp17085
                                                   __tmp17084))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1478614821_
                                                   _g1478714824_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1478614821_ _g1478714824_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1478614821_ _g1478714824_)))))
                        (let ((_expr1480614881_
                               (let ()
                                 (declare (not safe))
                                 (reverse _expr1480414852_)))
                              (_hd1480714883_
                               (let ()
                                 (declare (not safe))
                                 (reverse _hd1480514854_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1479414839_))
                              (let ((_e1481614886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1479414839_))))
                                (let ((_hd1481514889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1481614886_)))
                                      (_tl1481414891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1481614886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1481414891_))
                                      ((lambda (_L14894_ _L14895_ _L14896_)
                                         (let ((__tmp17083
                                                (lambda (_g1491514917_)
                                                  (apply gxc#compile-e
                                                         _g1491514917_
                                                         _args14784_)))
                                               (__tmp17080
                                                (let ((__tmp17082
                                                       (lambda (_g1491914922_
                                                                _g1492014924_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1491914922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1492014924_))))
              (__tmp17081 (let () (declare (not safe)) (cons _L14894_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp17082
                                                          __tmp17081
                                                          _L14895_))))
                                           (declare (not safe))
                                           (for-each __tmp17083 __tmp17080)))
                                       _hd1481514889_
                                       _expr1480614881_
                                       _hd1480714883_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1478614821_ _g1478714824_)))))
                              (let ()
                                (declare (not safe))
                                (_g1478614821_ _g1478714824_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop1480014847_
                                                     _target1479714842_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1478614821_
                                                   _g1478714824_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1478614821_ _g1478714824_)))))
                              (let ()
                                (declare (not safe))
                                (_g1478614821_ _g1478714824_)))))
                      (let ()
                        (declare (not safe))
                        (_g1478614821_ _g1478714824_))))))
          (declare (not safe))
          (_g1478514927_ _stx14783_))))
    (define gxc#collect-body-setq%
      (lambda (_stx14715_ . _args14716_)
        (let* ((_g1471814735_
                (lambda (_g1471914732_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1471914732_))))
               (_g1471714780_
                (lambda (_g1471914738_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1471914738_))
                      (let ((_e1472414740_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1471914738_))))
                        (let ((_hd1472314743_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1472414740_)))
                              (_tl1472214745_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1472414740_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1472214745_))
                              (let ((_e1472714748_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1472214745_))))
                                (let ((_hd1472614751_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1472714748_)))
                                      (_tl1472514753_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1472714748_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1472514753_))
                                      (let ((_e1473014756_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1472514753_))))
                                        (let ((_hd1472914759_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1473014756_)))
                                              (_tl1472814761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1473014756_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1472814761_))
                                              ((lambda (_L14764_ _L14765_)
                                                 (apply gxc#compile-e
                                                        _L14764_
                                                        _args14716_))
                                               _hd1472914759_
                                               _hd1472614751_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1471814735_
                                                 _g1471914738_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1471814735_ _g1471914738_)))))
                              (let ()
                                (declare (not safe))
                                (_g1471814735_ _g1471914738_)))))
                      (let ()
                        (declare (not safe))
                        (_g1471814735_ _g1471914738_))))))
          (declare (not safe))
          (_g1471714780_ _stx14715_))))
    (define gxc#collect-operands
      (lambda (_stx14628_ . _args14629_)
        (let* ((_g1463114650_
                (lambda (_g1463214647_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1463214647_))))
               (_g1463014712_
                (lambda (_g1463214653_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1463214653_))
                      (let ((_e1463614655_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1463214653_))))
                        (let ((_hd1463514658_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1463614655_)))
                              (_tl1463414660_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1463614655_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1463414660_))
                              (let ((_g17086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1463414660_
                                        '0))))
                                (begin
                                  (let ((_g17087_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17086_)
                                               (##vector-length _g17086_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17087_ 2)))
                                        (error "Context expects 2 values"
                                               _g17087_)))
                                  (let ((_target1463714663_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17086_ 0)))
                                        (_tl1463914665_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17086_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1463914665_))
                                        (letrec ((_loop1464014668_
                                                  (lambda (_hd1463814671_
                                                           _rands1464414673_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1463814671_))
                                                        (let ((_e1464114676_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1463814671_))))
                  (let ((_lp-hd1464214679_
                         (let () (declare (not safe)) (##car _e1464114676_)))
                        (_lp-tl1464314681_
                         (let () (declare (not safe)) (##cdr _e1464114676_))))
                    (let ((__tmp17091
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1464214679_ _rands1464414673_))))
                      (declare (not safe))
                      (_loop1464014668_ _lp-tl1464314681_ __tmp17091))))
                (let ((_rands1464514684_
                       (let ()
                         (declare (not safe))
                         (reverse _rands1464414673_))))
                  ((lambda (_L14687_)
                     (let ((__tmp17090
                            (lambda (_g1470014702_)
                              (apply gxc#compile-e _g1470014702_ _args14629_)))
                           (__tmp17088
                            (let ((__tmp17089
                                   (lambda (_g1470414707_ _g1470514709_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1470414707_ _g1470514709_)))))
                              (declare (not safe))
                              (foldr1 __tmp17089 '() _L14687_))))
                       (declare (not safe))
                       (for-each __tmp17090 __tmp17088)))
                   _rands1464514684_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1464014668_
                                             _target1463714663_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1463114650_ _g1463214653_))))))
                              (let ()
                                (declare (not safe))
                                (_g1463114650_ _g1463214653_)))))
                      (let ()
                        (declare (not safe))
                        (_g1463114650_ _g1463214653_))))))
          (declare (not safe))
          (_g1463014712_ _stx14628_))))
    (define gxc#collect-bindings-define-values%
      (lambda (_stx14559_)
        (let* ((_g1456114578_
                (lambda (_g1456214575_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1456214575_))))
               (_g1456014625_
                (lambda (_g1456214581_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1456214581_))
                      (let ((_e1456714583_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1456214581_))))
                        (let ((_hd1456614586_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1456714583_)))
                              (_tl1456514588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1456714583_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1456514588_))
                              (let ((_e1457014591_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1456514588_))))
                                (let ((_hd1456914594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1457014591_)))
                                      (_tl1456814596_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1457014591_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1456814596_))
                                      (let ((_e1457314599_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1456814596_))))
                                        (let ((_hd1457214602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1457314599_)))
                                              (_tl1457114604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1457314599_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1457114604_))
                                              ((lambda (_L14607_ _L14608_)
                                                 (let ((__tmp17092
                                                        (lambda (_bind14623_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind14623_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind14623_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp17092
                                                    _L14608_)))
                                               _hd1457214602_
                                               _hd1456914594_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1456114578_
                                                 _g1456214581_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1456114578_ _g1456214581_)))))
                              (let ()
                                (declare (not safe))
                                (_g1456114578_ _g1456214581_)))))
                      (let ()
                        (declare (not safe))
                        (_g1456114578_ _g1456214581_))))))
          (declare (not safe))
          (_g1456014625_ _stx14559_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_stx14492_)
        (let* ((_g1449414511_
                (lambda (_g1449514508_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1449514508_))))
               (_g1449314556_
                (lambda (_g1449514514_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1449514514_))
                      (let ((_e1450014516_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1449514514_))))
                        (let ((_hd1449914519_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1450014516_)))
                              (_tl1449814521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1450014516_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1449814521_))
                              (let ((_e1450314524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1449814521_))))
                                (let ((_hd1450214527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1450314524_)))
                                      (_tl1450114529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1450314524_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1450114529_))
                                      (let ((_e1450614532_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1450114529_))))
                                        (let ((_hd1450514535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1450614532_)))
                                              (_tl1450414537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1450614532_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1450414537_))
                                              ((lambda (_L14540_ _L14541_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L14541_
                                                    '#t)))
                                               _hd1450514535_
                                               _hd1450214527_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1449414511_
                                                 _g1449514514_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1449414511_ _g1449514514_)))))
                              (let ()
                                (declare (not safe))
                                (_g1449414511_ _g1449514514_)))))
                      (let ()
                        (declare (not safe))
                        (_g1449414511_ _g1449514514_))))))
          (declare (not safe))
          (_g1449314556_ _stx14492_))))
    (define gxc#lift-modules-module%
      (lambda (_stx14434_ _modules14435_)
        (let* ((_g1443714451_
                (lambda (_g1443814448_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1443814448_))))
               (_g1443614489_
                (lambda (_g1443814454_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1443814454_))
                      (let ((_e1444314456_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1443814454_))))
                        (let ((_hd1444214459_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1444314456_)))
                              (_tl1444114461_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1444314456_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1444114461_))
                              (let ((_e1444614464_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1444114461_))))
                                (let ((_hd1444514467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1444614464_)))
                                      (_tl1444414469_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1444614464_))))
                                  ((lambda (_L14472_ _L14473_)
                                     (let ((_ctx14486_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L14473_))))
                                       (let ((__tmp17093
                                              (let ((__tmp17094
                                                     (let ()
                                                       (declare (not safe))
                                                       (unbox _modules14435_))))
                                                (declare (not safe))
                                                (cons _ctx14486_ __tmp17094))))
                                         (declare (not safe))
                                         (set-box! _modules14435_ __tmp17093))
                                       (let ((__tmp17095
                                              (lambda ()
                                                (let ((__tmp17096
                                                       (##structure-ref
                                                        _ctx14486_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e
                                                   __tmp17096
                                                   _modules14435_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp17095
                                          gx#current-expander-context
                                          _ctx14486_))))
                                   _tl1444414469_
                                   _hd1444514467_)))
                              (let ()
                                (declare (not safe))
                                (_g1443714451_ _g1443814454_)))))
                      (let ()
                        (declare (not safe))
                        (_g1443714451_ _g1443814454_))))))
          (declare (not safe))
          (_g1443614489_ _stx14434_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls1439014392_ (gxc#current-compile-decls)))
          (if _decls1439014392_
              (let ((_decls14395_ _decls1439014392_))
                (let _lp14397_ ((_rest14399_ _decls14395_))
                  (let* ((_rest1440014408_ _rest14399_)
                         (_else1440214416_ (lambda () '#f))
                         (_K1440414422_
                          (lambda (_decls14419_ _decl14420_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl14420_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl14420_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp14397_ _decls14419_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1440014408_))
                        (let ((_hd1440514425_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1440014408_)))
                              (_tl1440614427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1440014408_))))
                          (let* ((_decl14430_ _hd1440514425_)
                                 (_decls14432_ _tl1440614427_))
                            (declare (not safe))
                            (_K1440414422_ _decls14432_ _decl14430_)))
                        (let () (declare (not safe)) (_else1440214416_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id14384_ _syntax?14385_)
        (let ((_eid14387_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id14384_))
                '1
                gx#binding::t
                '#f))
              (_ht14388_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _eid14387_))
              '#!void
              (let ((__tmp17097
                     (let ((__tmp17098
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid14387_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp17098 _syntax?14385_))))
                (declare (not safe))
                (table-set! _ht14388_ _eid14387_ __tmp17097))))))
    (define gxc#runtime-identifier=?
      (lambda (_id114377_ _id214378_)
        (letrec ((_symbol-e14380_
                  (lambda (_id14382_)
                    (if (let () (declare (not safe)) (symbol? _id14382_))
                        _id14382_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id14382_))))))
          (let ((__tmp17100
                 (let () (declare (not safe)) (_symbol-e14380_ _id114377_)))
                (__tmp17099
                 (let () (declare (not safe)) (_symbol-e14380_ _id214378_))))
            (declare (not safe))
            (eq? __tmp17100 __tmp17099)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id14355_)
        (let ((_$e14357_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id14355_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id14355_))
                   '#f)))
          (if _$e14357_
              ((lambda (_bind14360_)
                 (let ((_eid14362_
                        (##structure-ref _bind14360_ '1 gx#binding::t '#f))
                       (_ht14363_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _eid14362_))
                       _eid14362_
                       (let ((_$e14365_
                              (let ()
                                (declare (not safe))
                                (table-ref _ht14363_ _eid14362_ '#f))))
                         (if _$e14365_
                             (values _$e14365_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind14360_
                                    'gx#local-binding::t))
                                 (let ((_gid14368_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid14362_))))
                                   (let ()
                                     (declare (not safe))
                                     (table-set!
                                      _ht14363_
                                      _eid14362_
                                      _gid14368_))
                                   _gid14368_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind14360_
                                        'gx#module-binding::t))
                                     (let ((_gid14375_
                                            (let ((_$e14370_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind14360_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e14370_
                                                  ((lambda (_ns14373_)
                                                     (make-symbol
                                                      _ns14373_
                                                      '"#"
                                                      _eid14362_))
                                                   _$e14370_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid14362_))))))
                                       (let ()
                                         (declare (not safe))
                                         (table-set!
                                          _ht14363_
                                          _eid14362_
                                          _gid14375_))
                                       _gid14375_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id14355_
                                        _eid14362_
                                        _bind14360_)))))))))
               _$e14357_)
              (if (let ((__tmp17101
                         (let () (declare (not safe)) (gx#stx-e _id14355_))))
                    (declare (not safe))
                    (interned-symbol? __tmp17101))
                  (let () (declare (not safe)) (gx#stx-e _id14355_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id14355_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id14353_)
        (if (let () (declare (not safe)) (gx#identifier? _id14353_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id14353_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym14333_ _quote?14334_)
        (let* ((_ht14336_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e14338_
                (let ()
                  (declare (not safe))
                  (table-ref _ht14336_ _sym14333_ '#f))))
          (if _$e14338_
              (values _$e14338_)
              (let ((_g14341_
                     (if _quote?14334_
                         (make-symbol
                          '"__"
                          _sym14333_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym14333_ '"_"))))
                (let ()
                  (declare (not safe))
                  (table-set! _ht14336_ _sym14333_ _g14341_))
                _g14341_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym14346_)
        (let ((_quote?14348_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym14346_
           _quote?14348_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g17103_
        (let ((_g17102_ (let () (declare (not safe)) (##length _g17103_))))
          (cond ((let () (declare (not safe)) (##fx= _g17102_ 1))
                 (apply (lambda (_sym14346_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym14346_)))
                        _g17103_))
                ((let () (declare (not safe)) (##fx= _g17102_ 2))
                 (apply (lambda (_sym14350_ _quote?14351_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym14350_
                             _quote?14351_)))
                        _g17103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g17103_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id14330_)
        (let ((__tmp17104
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id14330_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp17104))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key14290_)
        (if (let () (declare (not safe)) (interned-symbol? _key14290_))
            _key14290_
            (if (let () (declare (not safe)) (uninterned-symbol? _key14290_))
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key14290_))
                (let* ((_key1429114298_ _key14290_)
                       (_E1429314302_
                        (lambda ()
                          (error '"No clause matching" _key1429114298_)))
                       (_K1429414318_
                        (lambda (_mark14305_ _eid14306_)
                          (let ((_$e14308_
                                 (##structure-ref
                                  _mark14305_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e14308_
                                ((lambda (_ht14311_)
                                   (let ((_$e14313_
                                          (let ()
                                            (declare (not safe))
                                            (table-ref
                                             _ht14311_
                                             _eid14306_
                                             '#f))))
                                     (if _$e14313_
                                         ((lambda (_id14316_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol? _id14316_))
                                                _id14316_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id14316_))))
                                          _$e14313_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid14306_)))))
                                 _$e14308_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid14306_)))))))
                  (if (let () (declare (not safe)) (##pair? _key1429114298_))
                      (let ((_hd1429514321_
                             (let ()
                               (declare (not safe))
                               (##car _key1429114298_)))
                            (_tl1429614323_
                             (let ()
                               (declare (not safe))
                               (##cdr _key1429114298_))))
                        (let* ((_eid14326_ _hd1429514321_)
                               (_mark14328_ _tl1429614323_))
                          (declare (not safe))
                          (_K1429414318_ _mark14328_ _eid14326_)))
                      (let () (declare (not safe)) (_E1429314302_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top14277_)
        (if _top14277_
            (let ((_ns14279_
                   (##structure-ref
                    (let ((__tmp17105 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp17105))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi14280_ (gx#current-expander-phi)))
              (if _ns14279_
                  (if (let () (declare (not safe)) (fxpositive? _phi14280_))
                      (make-symbol
                       _ns14279_
                       '"["
                       (let ()
                         (declare (not safe))
                         (number->string _phi14280_))
                       '"]#_"
                       (let () (declare (not safe)) (gensym))
                       '"_")
                      (make-symbol
                       _ns14279_
                       '"#_"
                       (let () (declare (not safe)) (gensym))
                       '"_"))
                  (if (let () (declare (not safe)) (fxpositive? _phi14280_))
                      (make-symbol
                       '"["
                       (let ()
                         (declare (not safe))
                         (number->string _phi14280_))
                       '"]#_"
                       (let () (declare (not safe)) (gensym))
                       '"_")
                      (make-symbol
                       '"_"
                       (let () (declare (not safe)) (gensym))
                       '"_"))))
            (make-symbol '"_" (let () (declare (not safe)) (gensym)) '"_"))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top14286_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top14286_))))
    (define gxc#generate-runtime-temporary
      (lambda _g17107_
        (let ((_g17106_ (let () (declare (not safe)) (##length _g17107_))))
          (cond ((let () (declare (not safe)) (##fx= _g17106_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g17107_))
                ((let () (declare (not safe)) (##fx= _g17106_ 1))
                 (apply (lambda (_top14288_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top14288_)))
                        _g17107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g17107_))))))
    (define gxc#generate-runtime-empty (lambda (_stx14274_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_stx14126_)
        (letrec ((_simplify14128_
                  (lambda (_body14172_)
                    (let _lp14174_ ((_rest14176_ _body14172_) (_r14177_ '()))
                      (let* ((_rest1417814186_ _rest14176_)
                             (_else1418014194_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (reverse _r14177_))))
                             (_K1418214262_
                              (lambda (_rest14197_ _hd14198_)
                                (let* ((_hd1419914215_ _hd14198_)
                                       (_else1420314223_
                                        (lambda ()
                                          (let ((__tmp17108
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd14198_ _r14177_))))
                                            (declare (not safe))
                                            (_lp14174_
                                             _rest14197_
                                             __tmp17108)))))
                                  (let ((_K1421114252_
                                         (lambda (_exprs14250_)
                                           (let ((__tmp17109
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest14197_
                                                            _exprs14250_))))
                                             (declare (not safe))
                                             (_lp14174_ __tmp17109 _r14177_))))
                                        (_K1420614236_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest14197_))
                                               (let ((__tmp17110
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd14198_
                                                              _r14177_))))
                                                 (declare (not safe))
                                                 (_lp14174_
                                                  _rest14197_
                                                  __tmp17110))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp14174_
                                                  _rest14197_
                                                  _r14177_)))))
                                        (_K1420514228_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest14197_))
                                               (let ((__tmp17111
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd14198_
                                                              _r14177_))))
                                                 (declare (not safe))
                                                 (_lp14174_
                                                  _rest14197_
                                                  __tmp17111))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp14174_
                                                  _rest14197_
                                                  _r14177_))))))
                                    (let ((_try-match1420214231_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd1419914215_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K1420514228_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else1420314223_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1419914215_))
                                          (let ((_tl1421314257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1419914215_)))
                                                (_hd1421214255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1419914215_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1421214255_
                                                         'begin))
                                                (let ((_exprs14260_
                                                       _tl1421314257_))
                                                  (declare (not safe))
                                                  (_K1421114252_ _exprs14260_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd1421214255_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1421314257_))
                                                        (let ((_tl1421014244_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1421314257_))))
                  (if (let () (declare (not safe)) (##null? _tl1421014244_))
                      (let () (declare (not safe)) (_K1420614236_))
                      (let () (declare (not safe)) (_try-match1420214231_))))
                (let () (declare (not safe)) (_try-match1420214231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match1420214231_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match1420214231_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1417814186_))
                            (let ((_hd1418314265_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1417814186_)))
                                  (_tl1418414267_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1417814186_))))
                              (let* ((_hd14270_ _hd1418314265_)
                                     (_rest14272_ _tl1418414267_))
                                (declare (not safe))
                                (_K1418214262_ _rest14272_ _hd14270_)))
                            (let ()
                              (declare (not safe))
                              (_else1418014194_))))))))
          (let* ((_g1413014140_
                  (lambda (_g1413114137_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1413114137_))))
                 (_g1412914169_
                  (lambda (_g1413114143_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1413114143_))
                        (let ((_e1413514145_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1413114143_))))
                          (let ((_hd1413414148_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1413514145_)))
                                (_tl1413314150_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1413514145_))))
                            ((lambda (_L14153_)
                               (let* ((_body14164_
                                       (let ()
                                         (declare (not safe))
                                         (map gxc#compile-e _L14153_)))
                                      (_body14166_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify14128_ _body14164_))))
                                 (if (fx= (length _body14166_) '1)
                                     (let ()
                                       (declare (not safe))
                                       (car _body14166_))
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body14166_)))))
                             _tl1413314150_)))
                        (let ()
                          (declare (not safe))
                          (_g1413014140_ _g1413114143_))))))
            (declare (not safe))
            (_g1412914169_ _stx14126_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_stx14088_)
        (let* ((_g1409014100_
                (lambda (_g1409114097_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1409114097_))))
               (_g1408914123_
                (lambda (_g1409114103_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1409114103_))
                      (let ((_e1409514105_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1409114103_))))
                        (let ((_hd1409414108_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1409514105_)))
                              (_tl1409314110_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1409514105_))))
                          ((lambda (_L14113_)
                             (let ((__tmp17112
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L14113_))))
                               (declare (not safe))
                               (cons 'begin __tmp17112)))
                           _tl1409314110_)))
                      (let ()
                        (declare (not safe))
                        (_g1409014100_ _g1409114103_))))))
          (declare (not safe))
          (_g1408914123_ _stx14088_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_stx13962_)
        (let* ((___stx1573015731_ _stx13962_)
               (_g1396513993_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1573015731_)))))
          (let ((___kont1573215733_
                 (lambda (_L14070_ _L14071_)
                   (let () (declare (not safe)) (gxc#compile-e _L14070_))))
                (___kont1573415735_
                 (lambda (_L14022_ _L14023_)
                   (let ((_decls14038_
                          (let ()
                            (declare (not safe))
                            (map gx#syntax->datum _L14023_))))
                     (let ((__tmp17115
                            (lambda ()
                              (let ((__tmp17116
                                     (let ((__tmp17119
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls14038_)))
                                           (__tmp17117
                                            (let ((__tmp17118
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L14022_))))
                                              (declare (not safe))
                                              (cons __tmp17118 '()))))
                                       (declare (not safe))
                                       (cons __tmp17119 __tmp17117))))
                                (declare (not safe))
                                (cons 'begin __tmp17116))))
                           (__tmp17113
                            (let ((__tmp17114 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp17114 _decls14038_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp17115
                        gxc#current-compile-decls
                        __tmp17113))))))
            (let ((___match1575515756_
                   (lambda (_e1397114046_
                            _hd1397014049_
                            _tl1396914051_
                            _e1397414054_
                            _hd1397314057_
                            _tl1397214059_
                            _e1397714062_
                            _hd1397614065_
                            _tl1397514067_)
                     (let ((_L14070_ _hd1397614065_) (_L14071_ _hd1397314057_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L14071_))
                           (___kont1573215733_ _L14070_ _L14071_)
                           (___kont1573415735_
                            _hd1397614065_
                            _hd1397314057_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1573015731_))
                  (let ((_e1397114046_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx1573015731_))))
                    (let ((_tl1396914051_
                           (let () (declare (not safe)) (##cdr _e1397114046_)))
                          (_hd1397014049_
                           (let ()
                             (declare (not safe))
                             (##car _e1397114046_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1396914051_))
                          (let ((_e1397414054_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1396914051_))))
                            (let ((_tl1397214059_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1397414054_)))
                                  (_hd1397314057_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1397414054_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl1397214059_))
                                  (let ((_e1397714062_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl1397214059_))))
                                    (let ((_tl1397514067_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1397714062_)))
                                          (_hd1397614065_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1397714062_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1397514067_))
                                          (___match1575515756_
                                           _e1397114046_
                                           _hd1397014049_
                                           _tl1396914051_
                                           _e1397414054_
                                           _hd1397314057_
                                           _tl1397214059_
                                           _e1397714062_
                                           _hd1397614065_
                                           _tl1397514067_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1396513993_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1396513993_)))))
                          (let () (declare (not safe)) (_g1396513993_)))))
                  (let () (declare (not safe)) (_g1396513993_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_stx13922_)
        (let* ((_g1392413934_
                (lambda (_g1392513931_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1392513931_))))
               (_g1392313959_
                (lambda (_g1392513937_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1392513937_))
                      (let ((_e1392913939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1392513937_))))
                        (let ((_hd1392813942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1392913939_)))
                              (_tl1392713944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1392913939_))))
                          ((lambda (_L13947_)
                             (let ((_decls13957_
                                    (let ()
                                      (declare (not safe))
                                      (map gx#syntax->datum _L13947_))))
                               (gxc#current-compile-decls
                                (let ((__tmp17120 (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp17120 _decls13957_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls13957_))))
                           _tl1392713944_)))
                      (let ()
                        (declare (not safe))
                        (_g1392413934_ _g1392513937_))))))
          (declare (not safe))
          (_g1392313959_ _stx13922_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_stx13669_)
        (let* ((_g1367113688_
                (lambda (_g1367213685_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1367213685_))))
               (_g1367013919_
                (lambda (_g1367213691_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1367213691_))
                      (let ((_e1367713693_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1367213691_))))
                        (let ((_hd1367613696_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1367713693_)))
                              (_tl1367513698_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1367713693_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1367513698_))
                              (let ((_e1368013701_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1367513698_))))
                                (let ((_hd1367913704_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1368013701_)))
                                      (_tl1367813706_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1368013701_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1367813706_))
                                      (let ((_e1368313709_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1367813706_))))
                                        (let ((_hd1368213712_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1368313709_)))
                                              (_tl1368113714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1368313709_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1368113714_))
                                              ((lambda (_L13717_ _L13718_)
                                                 (let* ((___stx1580815809_
                                                         _L13718_)
                                                        (_g1373513749_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1580815809_)))))
                                                   (let ((___kont1581015811_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L13717_))))
                                                         (___kont1581215813_
                                                          (lambda (_L13881_)
                                                            (let ((_eid13890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L13881_))))
                      (let ((_lambda-expr1389113893_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L13717_))))
                        (if _lambda-expr1389113893_
                            (let* ((_lambda-expr13896_ _lambda-expr1389113893_)
                                   (__tmp17121
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (table-set!
                               __tmp17121
                               _lambda-expr13896_
                               _eid13890_))
                            '#f))
                      (let ((__tmp17122
                             (let ((__tmp17123
                                    (let ((__tmp17124
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e _L13717_))))
                                      (declare (not safe))
                                      (cons __tmp17124 '()))))
                               (declare (not safe))
                               (cons _eid13890_ __tmp17123))))
                        (declare (not safe))
                        (cons 'define __tmp17122)))))
                 (___kont1581415815_
                  (lambda ()
                    (let* ((_tmp13756_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body13865_
                            (let _lp13758_ ((_rest13760_ _L13718_)
                                            (_k13761_ '0)
                                            (_r13762_ '()))
                              (let* ((___stx1577815779_ _rest13760_)
                                     (_g1376713784_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1577815779_)))))
                                (let ((___kont1578015781_
                                       (lambda (_L13852_)
                                         (let ((__tmp17125
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k13761_ '1))))
                                           (declare (not safe))
                                           (_lp13758_
                                            _L13852_
                                            __tmp17125
                                            _r13762_))))
                                      (___kont1578215783_
                                       (lambda (_L13825_ _L13826_)
                                         (let ((__tmp17132
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k13761_ '1)))
                                               (__tmp17126
                                                (let ((__tmp17127
                                                       (let ((__tmp17128
                                                              (let ((__tmp17131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L13826_)))
                            (__tmp17129
                             (let ((__tmp17130
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp13756_
                                       _k13761_
                                       _L13825_))))
                               (declare (not safe))
                               (cons __tmp17130 '()))))
                        (declare (not safe))
                        (cons __tmp17131 __tmp17129))))
                 (declare (not safe))
                 (cons 'define __tmp17128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17127 _r13762_))))
                                           (declare (not safe))
                                           (_lp13758_
                                            _L13825_
                                            __tmp17132
                                            __tmp17126))))
                                      (___kont1578415785_
                                       (lambda (_L13796_)
                                         (let ((__tmp17133
                                                (let ((__tmp17134
                                                       (let ((__tmp17135
                                                              (let ((__tmp17138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L13796_)))
                            (__tmp17136
                             (let ((__tmp17137
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp13756_
                                       _k13761_))))
                               (declare (not safe))
                               (cons __tmp17137 '()))))
                        (declare (not safe))
                        (cons __tmp17138 __tmp17136))))
                 (declare (not safe))
                 (cons 'define __tmp17135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17134 '()))))
                                           (declare (not safe))
                                           (foldl1 cons __tmp17133 _r13762_))))
                                      (___kont1578615787_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (reverse _r13762_)))))
                                  (let ((_g1376513812_
                                         (lambda ()
                                           (let ((_L13796_ ___stx1577815779_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L13796_))
                                                 (___kont1578415785_ _L13796_)
                                                 (___kont1578615787_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1577815779_))
                                        (let ((_e1377213841_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1577815779_))))
                                          (let ((_tl1377013846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1377213841_)))
                                                (_hd1377113844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1377213841_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd1377113844_))
                                                (let ((_e1377313849_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1377113844_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e1377313849_
                                                                '#f))
                                                      (___kont1578015781_
                                                       _tl1377013846_)
                                                      (___kont1578215783_
                                                       _tl1377013846_
                                                       _hd1377113844_)))
                                                (___kont1578215783_
                                                 _tl1377013846_
                                                 _hd1377113844_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1376513812_)))))))))
                      (let ((__tmp17139
                             (let ((__tmp17142
                                    (let ((__tmp17143
                                           (let ((__tmp17144
                                                  (let ((__tmp17145
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _L13717_))))
                                                    (declare (not safe))
                                                    (cons __tmp17145 '()))))
                                             (declare (not safe))
                                             (cons _tmp13756_ __tmp17144))))
                                      (declare (not safe))
                                      (cons 'define __tmp17143)))
                                   (__tmp17140
                                    (let ((__tmp17141
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp13756_
                                              _L13718_
                                              _L13717_))))
                                      (declare (not safe))
                                      (cons __tmp17141 _body13865_))))
                               (declare (not safe))
                               (cons __tmp17142 __tmp17140))))
                        (declare (not safe))
                        (cons 'begin __tmp17139))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx1580815809_))
                                                         (let ((_e1373913903_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx1580815809_))))
                   (let ((_tl1373713908_
                          (let () (declare (not safe)) (##cdr _e1373913903_)))
                         (_hd1373813906_
                          (let () (declare (not safe)) (##car _e1373913903_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd1373813906_))
                         (let ((_e1374013911_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd1373813906_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e1374013911_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1373713908_))
                                   (___kont1581015811_)
                                   (___kont1581415815_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1373713908_))
                                   (___kont1581215813_ _hd1373813906_)
                                   (___kont1581415815_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1373713908_))
                             (___kont1581215813_ _hd1373813906_)
                             (___kont1581415815_)))))
                 (___kont1581415815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1368213712_
                                               _hd1367913704_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1367113688_
                                                 _g1367213691_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1367113688_ _g1367213691_)))))
                              (let ()
                                (declare (not safe))
                                (_g1367113688_ _g1367213691_)))))
                      (let ()
                        (declare (not safe))
                        (_g1367113688_ _g1367213691_))))))
          (declare (not safe))
          (_g1367013919_ _stx13669_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals13645_ _hd13646_ _expr13647_)
        (let ((_$e13649_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr13647_))))
          (if _$e13649_
              ((lambda (_count13652_)
                 (let ((_len13654_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd13646_)))
                       (_cmp13655_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd13646_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len13654_ '0)
                           (_cmp13655_ _count13652_ _len13654_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr13647_
                          _hd13646_)))))
               _$e13649_)
              (let* ((_len13660_
                      (let () (declare (not safe)) (gx#stx-length _hd13646_)))
                     (_cmp13662_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd13646_))
                          '##fx=
                          '##fx>=))
                     (_errmsg13664_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd13646_))
                           '"Context expects "
                           '"Context expects at least ")
                       (let ()
                         (declare (not safe))
                         (number->string _len13660_))
                       '" values"))
                     (_count13666_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp17169
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd13646_))))
                           (declare (not safe))
                           (not __tmp17169))
                         (fx= _len13660_ '0))
                    '#!void
                    (let ((__tmp17146
                           (let ((__tmp17165
                                  (let ((__tmp17166
                                         (let ((__tmp17167
                                                (let ((__tmp17168
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals13645_))))
                                                  (declare (not safe))
                                                  (cons __tmp17168 '()))))
                                           (declare (not safe))
                                           (cons _count13666_ __tmp17167))))
                                    (declare (not safe))
                                    (cons __tmp17166 '())))
                                 (__tmp17147
                                  (let ((__tmp17148
                                         (let ((__tmp17149
                                                (let ((__tmp17154
                                                       (let ((__tmp17155
                                                              (let ((__tmp17156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp17163
                                        (let ((__tmp17164
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len13660_ '()))))
                                          (declare (not safe))
                                          (cons _count13666_ __tmp17164))))
                                   (declare (not safe))
                                   (cons _cmp13662_ __tmp17163))
                                 (let ((__tmp17157
                                        (let ((__tmp17158
                                               (let ((__tmp17159
                                                      (let ((__tmp17160
                                                             (let ((__tmp17161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17162
                                   (let ()
                                     (declare (not safe))
                                     (cons _len13660_ '()))))
                              (declare (not safe))
                              (cons _count13666_ __tmp17162))))
                       (declare (not safe))
                       (cons _cmp13662_ __tmp17161))))
                (declare (not safe))
                (cons __tmp17160 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp17159))))
                                          (declare (not safe))
                                          (cons '() __tmp17158))))
                                   (declare (not safe))
                                   (cons 'let __tmp17157)))))
                        (declare (not safe))
                        (cons __tmp17156 '()))))
                 (declare (not safe))
                 (cons 'not __tmp17155)))
              (__tmp17150
               (let ((__tmp17151
                      (let ((__tmp17152
                             (let ((__tmp17153
                                    (let ()
                                      (declare (not safe))
                                      (cons _count13666_ '()))))
                               (declare (not safe))
                               (cons _errmsg13664_ __tmp17153))))
                        (declare (not safe))
                        (cons 'error __tmp17152))))
                 (declare (not safe))
                 (cons __tmp17151 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17154
                                                        __tmp17150))))
                                           (declare (not safe))
                                           (cons 'if __tmp17149))))
                                    (declare (not safe))
                                    (cons __tmp17148 '()))))
                             (declare (not safe))
                             (cons __tmp17165 __tmp17147))))
                      (declare (not safe))
                      (cons 'let __tmp17146))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var13640_)
        (letrec ((_generate-inline13642_
                  (lambda ()
                    (let ((__tmp17170
                           (let ((__tmp17175
                                  (let ((__tmp17176
                                         (let ()
                                           (declare (not safe))
                                           (cons _var13640_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp17176)))
                                 (__tmp17171
                                  (let ((__tmp17173
                                         (let ((__tmp17174
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var13640_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length __tmp17174)))
                                        (__tmp17172
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp17173 __tmp17172))))
                             (declare (not safe))
                             (cons __tmp17175 __tmp17171))))
                      (declare (not safe))
                      (cons 'if __tmp17170)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline13642_))
              (let ((__tmp17177
                     (let ((__tmp17178
                            (let ((__tmp17179
                                   (let ((__tmp17180
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline13642_))))
                                     (declare (not safe))
                                     (cons __tmp17180 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp17179))))
                       (declare (not safe))
                       (cons '() __tmp17178))))
                (declare (not safe))
                (cons 'let __tmp17177))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var13633_ _i13634_ _rest13635_)
        (letrec ((_generate-inline13637_
                  (lambda ()
                    (if (and (fx= _i13634_ '0)
                             (let ((__tmp17191
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest13635_))))
                               (declare (not safe))
                               (not __tmp17191)))
                        (let ((__tmp17183
                               (let ((__tmp17189
                                      (let ((__tmp17190
                                             (let ()
                                               (declare (not safe))
                                               (cons _var13633_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp17190)))
                                     (__tmp17184
                                      (let ((__tmp17186
                                             (let ((__tmp17187
                                                    (let ((__tmp17188
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var13633_
                                                            __tmp17188))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp17187)))
                                            (__tmp17185
                                             (let ()
                                               (declare (not safe))
                                               (cons _var13633_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17186 __tmp17185))))
                                 (declare (not safe))
                                 (cons __tmp17189 __tmp17184))))
                          (declare (not safe))
                          (cons 'if __tmp17183))
                        (let ((__tmp17181
                               (let ((__tmp17182
                                      (let ()
                                        (declare (not safe))
                                        (cons _i13634_ '()))))
                                 (declare (not safe))
                                 (cons _var13633_ __tmp17182))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp17181))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline13637_))
              (let ((__tmp17192
                     (let ((__tmp17193
                            (let ((__tmp17194
                                   (let ((__tmp17195
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline13637_))))
                                     (declare (not safe))
                                     (cons __tmp17195 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp17194))))
                       (declare (not safe))
                       (cons '() __tmp17193))))
                (declare (not safe))
                (cons 'let __tmp17192))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var13630_ _i13631_)
        (if (fx= _i13631_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp17243
                       (let ((__tmp17250
                              (let ((__tmp17251
                                     (let ()
                                       (declare (not safe))
                                       (cons _var13630_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp17251)))
                             (__tmp17244
                              (let ((__tmp17248
                                     (let ((__tmp17249
                                            (let ()
                                              (declare (not safe))
                                              (cons _var13630_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp17249)))
                                    (__tmp17245
                                     (let ((__tmp17246
                                            (let ((__tmp17247
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var13630_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp17247))))
                                       (declare (not safe))
                                       (cons __tmp17246 '()))))
                                (declare (not safe))
                                (cons __tmp17248 __tmp17245))))
                         (declare (not safe))
                         (cons __tmp17250 __tmp17244))))
                  (declare (not safe))
                  (cons 'if __tmp17243))
                (let ((__tmp17230
                       (let ((__tmp17231
                              (let ((__tmp17232
                                     (let ((__tmp17233
                                            (let ((__tmp17234
                                                   (let ((__tmp17241
                                                          (let ((__tmp17242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var13630_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp17242)))
                 (__tmp17235
                  (let ((__tmp17239
                         (let ((__tmp17240
                                (let ()
                                  (declare (not safe))
                                  (cons _var13630_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp17240)))
                        (__tmp17236
                         (let ((__tmp17237
                                (let ((__tmp17238
                                       (let ()
                                         (declare (not safe))
                                         (cons _var13630_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp17238))))
                           (declare (not safe))
                           (cons __tmp17237 '()))))
                    (declare (not safe))
                    (cons __tmp17239 __tmp17236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17241
                                                           __tmp17235))))
                                              (declare (not safe))
                                              (cons 'if __tmp17234))))
                                       (declare (not safe))
                                       (cons __tmp17233 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp17232))))
                         (declare (not safe))
                         (cons '() __tmp17231))))
                  (declare (not safe))
                  (cons 'let __tmp17230)))
            (if (fx= _i13631_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp17221
                           (let ((__tmp17228
                                  (let ((__tmp17229
                                         (let ()
                                           (declare (not safe))
                                           (cons _var13630_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp17229)))
                                 (__tmp17222
                                  (let ((__tmp17224
                                         (let ((__tmp17225
                                                (let ((__tmp17226
                                                       (let ((__tmp17227
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var13630_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp17227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17226 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp17225)))
                                        (__tmp17223
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp17224 __tmp17223))))
                             (declare (not safe))
                             (cons __tmp17228 __tmp17222))))
                      (declare (not safe))
                      (cons 'if __tmp17221))
                    (let ((__tmp17208
                           (let ((__tmp17209
                                  (let ((__tmp17210
                                         (let ((__tmp17211
                                                (let ((__tmp17212
                                                       (let ((__tmp17219
                                                              (let ((__tmp17220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var13630_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp17220)))
                     (__tmp17213
                      (let ((__tmp17215
                             (let ((__tmp17216
                                    (let ((__tmp17217
                                           (let ((__tmp17218
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var13630_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp17218))))
                                      (declare (not safe))
                                      (cons __tmp17217 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp17216)))
                            (__tmp17214
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp17215 __tmp17214))))
                 (declare (not safe))
                 (cons __tmp17219 __tmp17213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp17212))))
                                           (declare (not safe))
                                           (cons __tmp17211 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp17210))))
                             (declare (not safe))
                             (cons '() __tmp17209))))
                      (declare (not safe))
                      (cons 'let __tmp17208)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp17204
                           (let ((__tmp17206
                                  (let ((__tmp17207
                                         (let ()
                                           (declare (not safe))
                                           (cons _var13630_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp17207)))
                                 (__tmp17205
                                  (let ()
                                    (declare (not safe))
                                    (cons _i13631_ '()))))
                             (declare (not safe))
                             (cons __tmp17206 __tmp17205))))
                      (declare (not safe))
                      (cons '##list-tail __tmp17204))
                    (let ((__tmp17196
                           (let ((__tmp17197
                                  (let ((__tmp17198
                                         (let ((__tmp17199
                                                (let ((__tmp17200
                                                       (let ((__tmp17202
                                                              (let ((__tmp17203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var13630_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp17203)))
                     (__tmp17201
                      (let () (declare (not safe)) (cons _i13631_ '()))))
                 (declare (not safe))
                 (cons __tmp17202 __tmp17201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp17200))))
                                           (declare (not safe))
                                           (cons __tmp17199 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp17198))))
                             (declare (not safe))
                             (cons '() __tmp17197))))
                      (declare (not safe))
                      (cons 'let __tmp17196)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_stx13563_)
        (let* ((_g1356513582_
                (lambda (_g1356613579_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1356613579_))))
               (_g1356413627_
                (lambda (_g1356613585_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1356613585_))
                      (let ((_e1357113587_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1356613585_))))
                        (let ((_hd1357013590_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1357113587_)))
                              (_tl1356913592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1357113587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1356913592_))
                              (let ((_e1357413595_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1356913592_))))
                                (let ((_hd1357313598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1357413595_)))
                                      (_tl1357213600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1357413595_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1357213600_))
                                      (let ((_e1357713603_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1357213600_))))
                                        (let ((_hd1357613606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1357713603_)))
                                              (_tl1357513608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1357713603_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1357513608_))
                                              ((lambda (_L13611_ _L13612_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _L13612_
                                                    _L13611_)))
                                               _hd1357613606_
                                               _hd1357313598_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1356513582_
                                                 _g1356613585_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1356513582_ _g1356613585_)))))
                              (let ()
                                (declare (not safe))
                                (_g1356513582_ _g1356613585_)))))
                      (let ()
                        (declare (not safe))
                        (_g1356513582_ _g1356613585_))))))
          (declare (not safe))
          (_g1356413627_ _stx13563_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_hd13523_ _body13524_)
        (let* ((_hd13526_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd13523_)))
               (_body13528_
                (let () (declare (not safe)) (gxc#compile-e _body13524_)))
               (_body13560_
                (let* ((_body1352913537_ _body13528_)
                       (_else1353113545_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body13528_ '()))))
                       (_K1353313550_ (lambda (_exprs13548_) _exprs13548_)))
                  (if (let () (declare (not safe)) (##pair? _body1352913537_))
                      (let ((_hd1353413553_
                             (let ()
                               (declare (not safe))
                               (##car _body1352913537_)))
                            (_tl1353513555_
                             (let ()
                               (declare (not safe))
                               (##cdr _body1352913537_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd1353413553_ 'begin))
                            (let ((_exprs13558_ _tl1353513555_))
                              (declare (not safe))
                              (_K1353313550_ _exprs13558_))
                            (let () (declare (not safe)) (_else1353113545_))))
                      (let () (declare (not safe)) (_else1353113545_))))))
          (let ((__tmp17252
                 (let () (declare (not safe)) (cons _hd13526_ _body13560_))))
            (declare (not safe))
            (cons 'lambda __tmp17252)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd13521_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd13521_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_stx12064_)
        (letrec ((_dispatch-case?12066_
                  (lambda (_hd12751_ _body12752_)
                    (let* ((_form12754_
                            (let ((__tmp17253
                                   (let ()
                                     (declare (not safe))
                                     (cons _body12752_ '()))))
                              (declare (not safe))
                              (cons _hd12751_ __tmp17253)))
                           (___stx1584015841_ _form12754_)
                           (_g1275912916_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1584015841_)))))
                      (let ((___kont1584215843_
                             (lambda (_L13441_ _L13442_ _L13443_) '#t))
                            (___kont1584815849_
                             (lambda (_L13229_
                                      _L13230_
                                      _L13231_
                                      _L13232_
                                      _L13233_
                                      _L13234_)
                               '#t))
                            (___kont1585415855_
                             (lambda (_L13024_ _L13025_ _L13026_ _L13027_)
                               '#t))
                            (___kont1585615857_ (lambda () '#f)))
                        (let* ((___match1598115982_
                                (lambda (_e1287812928_
                                         _hd1287712931_
                                         _tl1287612933_
                                         _e1288112936_
                                         _hd1288012939_
                                         _tl1287912941_
                                         _e1288412944_
                                         _hd1288312947_
                                         _tl1288212949_
                                         _e1288712952_
                                         _hd1288612955_
                                         _tl1288512957_
                                         _e1289012960_
                                         _hd1288912963_
                                         _tl1288812965_
                                         _e1289312968_
                                         _hd1289212971_
                                         _tl1289112973_
                                         _e1289612976_
                                         _hd1289512979_
                                         _tl1289412981_
                                         _e1289912984_
                                         _hd1289812987_
                                         _tl1289712989_
                                         _e1290212992_
                                         _hd1290112995_
                                         _tl1290012997_
                                         _e1290513000_
                                         _hd1290413003_
                                         _tl1290313005_
                                         _e1290813008_
                                         _hd1290713011_
                                         _tl1290613013_
                                         _e1291113016_
                                         _hd1291013019_
                                         _tl1290913021_)
                                  (let ((_L13024_ _hd1291013019_)
                                        (_L13025_ _hd1290112995_)
                                        (_L13026_ _hd1289212971_)
                                        (_L13027_ _hd1287712931_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L13027_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L13026_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L13027_
                                                _L13024_))
                                             (let ((__tmp17254
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L13025_
                                                       _L13027_))))
                                               (declare (not safe))
                                               (not __tmp17254)))
                                        (___kont1585415855_
                                         _L13024_
                                         _L13025_
                                         _L13026_
                                         _L13027_)
                                        (___kont1585615857_)))))
                               (___match1595315954_
                                (lambda (_e1287812928_
                                         _hd1287712931_
                                         _tl1287612933_
                                         _e1288112936_
                                         _hd1288012939_
                                         _tl1287912941_
                                         _e1288412944_
                                         _hd1288312947_
                                         _tl1288212949_
                                         _e1288712952_
                                         _hd1288612955_
                                         _tl1288512957_
                                         _e1289012960_
                                         _hd1288912963_
                                         _tl1288812965_
                                         _e1289312968_
                                         _hd1289212971_
                                         _tl1289112973_
                                         _e1289612976_
                                         _hd1289512979_
                                         _tl1289412981_
                                         _e1289912984_
                                         _hd1289812987_
                                         _tl1289712989_
                                         _e1290212992_
                                         _hd1290112995_
                                         _tl1290012997_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1289412981_))
                                      (let ((_e1290513000_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1289412981_))))
                                        (let ((_tl1290313005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1290513000_)))
                                              (_hd1290413003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1290513000_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd1290413003_))
                                              (let ((_e1290813008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd1290413003_))))
                                                (let ((_tl1290613013_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1290813008_)))
                                                      (_hd1290713011_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1290813008_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd1290713011_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd1290713011_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1290613013_))
                      (let ((_e1291113016_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1290613013_))))
                        (let ((_tl1290913021_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1291113016_)))
                              (_hd1291013019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1291113016_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl1290913021_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl1290313005_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1287912941_))
                                      (___match1598115982_
                                       _e1287812928_
                                       _hd1287712931_
                                       _tl1287612933_
                                       _e1288112936_
                                       _hd1288012939_
                                       _tl1287912941_
                                       _e1288412944_
                                       _hd1288312947_
                                       _tl1288212949_
                                       _e1288712952_
                                       _hd1288612955_
                                       _tl1288512957_
                                       _e1289012960_
                                       _hd1288912963_
                                       _tl1288812965_
                                       _e1289312968_
                                       _hd1289212971_
                                       _tl1289112973_
                                       _e1289612976_
                                       _hd1289512979_
                                       _tl1289412981_
                                       _e1289912984_
                                       _hd1289812987_
                                       _tl1289712989_
                                       _e1290212992_
                                       _hd1290112995_
                                       _tl1290012997_
                                       _e1290513000_
                                       _hd1290413003_
                                       _tl1290313005_
                                       _e1290813008_
                                       _hd1290713011_
                                       _tl1290613013_
                                       _e1291113016_
                                       _hd1291013019_
                                       _tl1290913021_)
                                      (___kont1585615857_))
                                  (___kont1585615857_))
                              (___kont1585615857_))))
                      (___kont1585615857_))
                  (___kont1585615857_))
              (___kont1585615857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1585615857_))))
                                      (___kont1585615857_))))
                               (___match1588315884_
                                (lambda (_e1281413069_
                                         _hd1281313072_
                                         _tl1281213074_
                                         ___splice1585015851_
                                         _target1281513077_
                                         _tl1281713079_)
                                  (letrec ((_loop1281813082_
                                            (lambda (_hd1281613085_
                                                     _arg1282213087_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1281613085_))
                                                  (let ((_e1281913090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1281613085_))))
                                                    (let ((_lp-tl1282113095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1281913090_)))
                                                          (_lp-hd1282013093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1281913090_))))
                                                      (let ((__tmp17269
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1282013093_ _arg1282213087_))))
                (declare (not safe))
                (_loop1281813082_ _lp-tl1282113095_ __tmp17269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1282313098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (reverse _arg1282213087_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1281213074_))
                                                        (let ((_e1282613101_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1281213074_))))
                  (let ((_tl1282413106_
                         (let () (declare (not safe)) (##cdr _e1282613101_)))
                        (_hd1282513104_
                         (let () (declare (not safe)) (##car _e1282613101_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1282513104_))
                        (let ((_e1282913109_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1282513104_))))
                          (let ((_tl1282713114_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1282913109_)))
                                (_hd1282813112_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1282913109_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1282813112_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1282813112_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1282713114_))
                                        (let ((_e1283213117_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1282713114_))))
                                          (let ((_tl1283013122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1283213117_)))
                                                (_hd1283113120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1283213117_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1283113120_))
                                                (let ((_e1283513125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1283113120_))))
                                                  (let ((_tl1283313130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1283513125_)))
                                                        (_hd1283413128_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1283513125_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1283413128_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1283413128_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1283313130_))
                        (let ((_e1283813133_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1283313130_))))
                          (let ((_tl1283613138_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1283813133_)))
                                (_hd1283713136_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1283813133_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1283613138_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl1283013122_))
                                    (let ((_e1284113141_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl1283013122_))))
                                      (let ((_tl1283913146_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1284113141_)))
                                            (_hd1284013144_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1284113141_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd1284013144_))
                                            (let ((_e1284413149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd1284013144_))))
                                              (let ((_tl1284213154_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1284413149_)))
                                                    (_hd1284313152_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1284413149_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd1284313152_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd1284313152_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1284213154_))
                                                            (let ((_e1284713157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1284213154_))))
                      (let ((_tl1284513162_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1284713157_)))
                            (_hd1284613160_
                             (let ()
                               (declare (not safe))
                               (##car _e1284713157_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1284513162_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl1283913146_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl1283913146_))
                                          '1)
                                    (let ((___splice1585215853_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1283913146_
                                              '1))))
                                      (let ((_tl1285013167_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1585215853_
                                                '1)))
                                            (_target1284813165_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1585215853_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1285013167_))
                                            (let ((_e1285913170_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1285013167_))))
                                              (let ((_tl1285713175_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1285913170_)))
                                                    (_hd1285813173_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1285913170_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd1285813173_))
                                                    (let ((_e1286213178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd1285813173_))))
                                                      (let ((_tl1286013183_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1286213178_)))
                    (_hd1286113181_
                     (let () (declare (not safe)) (##car _e1286213178_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd1286113181_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd1286113181_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl1286013183_))
                            (let ((_e1286513186_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl1286013183_))))
                              (let ((_tl1286313191_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1286513186_)))
                                    (_hd1286413189_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1286513186_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl1286313191_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1285713175_))
                                        (letrec ((_loop1285113194_
                                                  (lambda (_hd1284913197_
                                                           _xarg1285513199_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1284913197_))
                                                        (let ((_e1285213202_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1284913197_))))
                  (let ((_lp-tl1285413207_
                         (let () (declare (not safe)) (##cdr _e1285213202_)))
                        (_lp-hd1285313205_
                         (let () (declare (not safe)) (##car _e1285213202_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd1285313205_))
                        (let ((_e1286813210_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd1285313205_))))
                          (let ((_tl1286613215_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1286813210_)))
                                (_hd1286713213_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1286813210_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1286713213_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd1286713213_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1286613215_))
                                        (let ((_e1287113218_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1286613215_))))
                                          (let ((_tl1286913223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1287113218_)))
                                                (_hd1287013221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1287113218_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1286913223_))
                                                (let ((__tmp17268
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1287013221_
                                                               _xarg1285513199_))))
                                                  (declare (not safe))
                                                  (_loop1285113194_
                                                   _lp-tl1285413207_
                                                   __tmp17268))
                                                (___match1595315954_
                                                 _e1281413069_
                                                 _hd1281313072_
                                                 _tl1281213074_
                                                 _e1282613101_
                                                 _hd1282513104_
                                                 _tl1282413106_
                                                 _e1282913109_
                                                 _hd1282813112_
                                                 _tl1282713114_
                                                 _e1283213117_
                                                 _hd1283113120_
                                                 _tl1283013122_
                                                 _e1283513125_
                                                 _hd1283413128_
                                                 _tl1283313130_
                                                 _e1283813133_
                                                 _hd1283713136_
                                                 _tl1283613138_
                                                 _e1284113141_
                                                 _hd1284013144_
                                                 _tl1283913146_
                                                 _e1284413149_
                                                 _hd1284313152_
                                                 _tl1284213154_
                                                 _e1284713157_
                                                 _hd1284613160_
                                                 _tl1284513162_))))
                                        (___match1595315954_
                                         _e1281413069_
                                         _hd1281313072_
                                         _tl1281213074_
                                         _e1282613101_
                                         _hd1282513104_
                                         _tl1282413106_
                                         _e1282913109_
                                         _hd1282813112_
                                         _tl1282713114_
                                         _e1283213117_
                                         _hd1283113120_
                                         _tl1283013122_
                                         _e1283513125_
                                         _hd1283413128_
                                         _tl1283313130_
                                         _e1283813133_
                                         _hd1283713136_
                                         _tl1283613138_
                                         _e1284113141_
                                         _hd1284013144_
                                         _tl1283913146_
                                         _e1284413149_
                                         _hd1284313152_
                                         _tl1284213154_
                                         _e1284713157_
                                         _hd1284613160_
                                         _tl1284513162_))
                                    (___match1595315954_
                                     _e1281413069_
                                     _hd1281313072_
                                     _tl1281213074_
                                     _e1282613101_
                                     _hd1282513104_
                                     _tl1282413106_
                                     _e1282913109_
                                     _hd1282813112_
                                     _tl1282713114_
                                     _e1283213117_
                                     _hd1283113120_
                                     _tl1283013122_
                                     _e1283513125_
                                     _hd1283413128_
                                     _tl1283313130_
                                     _e1283813133_
                                     _hd1283713136_
                                     _tl1283613138_
                                     _e1284113141_
                                     _hd1284013144_
                                     _tl1283913146_
                                     _e1284413149_
                                     _hd1284313152_
                                     _tl1284213154_
                                     _e1284713157_
                                     _hd1284613160_
                                     _tl1284513162_))
                                (___match1595315954_
                                 _e1281413069_
                                 _hd1281313072_
                                 _tl1281213074_
                                 _e1282613101_
                                 _hd1282513104_
                                 _tl1282413106_
                                 _e1282913109_
                                 _hd1282813112_
                                 _tl1282713114_
                                 _e1283213117_
                                 _hd1283113120_
                                 _tl1283013122_
                                 _e1283513125_
                                 _hd1283413128_
                                 _tl1283313130_
                                 _e1283813133_
                                 _hd1283713136_
                                 _tl1283613138_
                                 _e1284113141_
                                 _hd1284013144_
                                 _tl1283913146_
                                 _e1284413149_
                                 _hd1284313152_
                                 _tl1284213154_
                                 _e1284713157_
                                 _hd1284613160_
                                 _tl1284513162_))))
                        (___match1595315954_
                         _e1281413069_
                         _hd1281313072_
                         _tl1281213074_
                         _e1282613101_
                         _hd1282513104_
                         _tl1282413106_
                         _e1282913109_
                         _hd1282813112_
                         _tl1282713114_
                         _e1283213117_
                         _hd1283113120_
                         _tl1283013122_
                         _e1283513125_
                         _hd1283413128_
                         _tl1283313130_
                         _e1283813133_
                         _hd1283713136_
                         _tl1283613138_
                         _e1284113141_
                         _hd1284013144_
                         _tl1283913146_
                         _e1284413149_
                         _hd1284313152_
                         _tl1284213154_
                         _e1284713157_
                         _hd1284613160_
                         _tl1284513162_))))
                (let ((_xarg1285613226_
                       (let ()
                         (declare (not safe))
                         (reverse _xarg1285513199_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl1282413106_))
                      (let ((_L13229_ _hd1286413189_)
                            (_L13230_ _xarg1285613226_)
                            (_L13231_ _hd1284613160_)
                            (_L13232_ _hd1283713136_)
                            (_L13233_ _tl1281713079_)
                            (_L13234_ _arg1282313098_))
                        (if (and (let ((__tmp17266
                                        (let ((__tmp17267
                                               (lambda (_g1327713280_
                                                        _g1327813282_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1327713280_
                                                         _g1327813282_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17267 '() _L13234_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp17266))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L13233_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L13232_ 'apply))
                                 (fx= (length (let ((__tmp17264
                                                     (lambda (_g1328413287_
                                                              _g1328513289_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1328413287_
                                                               _g1328513289_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17264
                                                        '()
                                                        _L13234_)))
                                      (length (let ((__tmp17265
                                                     (lambda (_g1329113294_
                                                              _g1329213296_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1329113294_
                                                               _g1329213296_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17265
                                                        '()
                                                        _L13230_))))
                                 (let ((__tmp17262
                                        (let ((__tmp17263
                                               (lambda (_g1329813301_
                                                        _g1329913303_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1329813301_
                                                         _g1329913303_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17263 '() _L13234_)))
                                       (__tmp17260
                                        (let ((__tmp17261
                                               (lambda (_g1330513308_
                                                        _g1330613310_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1330513308_
                                                         _g1330613310_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17261 '() _L13230_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp17262
                                            __tmp17260))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L13233_ _L13229_))
                                 (let ((__tmp17255
                                        (let ((__tmp17259
                                               (lambda (_g1331213314_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g1331213314_
                                                    _L13231_))))
                                              (__tmp17256
                                               (let ((__tmp17258
                                                      (lambda (_g1331613319_
                                                               _g1331713321_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g1331613319_
                                                                _g1331713321_))))
                                                     (__tmp17257
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L13233_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp17258
                                                         __tmp17257
                                                         _L13234_))))
                                          (declare (not safe))
                                          (find __tmp17259 __tmp17256))))
                                   (declare (not safe))
                                   (not __tmp17255)))
                            (___kont1584815849_
                             _L13229_
                             _L13230_
                             _L13231_
                             _L13232_
                             _L13233_
                             _L13234_)
                            (___match1595315954_
                             _e1281413069_
                             _hd1281313072_
                             _tl1281213074_
                             _e1282613101_
                             _hd1282513104_
                             _tl1282413106_
                             _e1282913109_
                             _hd1282813112_
                             _tl1282713114_
                             _e1283213117_
                             _hd1283113120_
                             _tl1283013122_
                             _e1283513125_
                             _hd1283413128_
                             _tl1283313130_
                             _e1283813133_
                             _hd1283713136_
                             _tl1283613138_
                             _e1284113141_
                             _hd1284013144_
                             _tl1283913146_
                             _e1284413149_
                             _hd1284313152_
                             _tl1284213154_
                             _e1284713157_
                             _hd1284613160_
                             _tl1284513162_)))
                      (___match1595315954_
                       _e1281413069_
                       _hd1281313072_
                       _tl1281213074_
                       _e1282613101_
                       _hd1282513104_
                       _tl1282413106_
                       _e1282913109_
                       _hd1282813112_
                       _tl1282713114_
                       _e1283213117_
                       _hd1283113120_
                       _tl1283013122_
                       _e1283513125_
                       _hd1283413128_
                       _tl1283313130_
                       _e1283813133_
                       _hd1283713136_
                       _tl1283613138_
                       _e1284113141_
                       _hd1284013144_
                       _tl1283913146_
                       _e1284413149_
                       _hd1284313152_
                       _tl1284213154_
                       _e1284713157_
                       _hd1284613160_
                       _tl1284513162_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1285113194_
                                             _target1284813165_
                                             '())))
                                        (___match1595315954_
                                         _e1281413069_
                                         _hd1281313072_
                                         _tl1281213074_
                                         _e1282613101_
                                         _hd1282513104_
                                         _tl1282413106_
                                         _e1282913109_
                                         _hd1282813112_
                                         _tl1282713114_
                                         _e1283213117_
                                         _hd1283113120_
                                         _tl1283013122_
                                         _e1283513125_
                                         _hd1283413128_
                                         _tl1283313130_
                                         _e1283813133_
                                         _hd1283713136_
                                         _tl1283613138_
                                         _e1284113141_
                                         _hd1284013144_
                                         _tl1283913146_
                                         _e1284413149_
                                         _hd1284313152_
                                         _tl1284213154_
                                         _e1284713157_
                                         _hd1284613160_
                                         _tl1284513162_))
                                    (___match1595315954_
                                     _e1281413069_
                                     _hd1281313072_
                                     _tl1281213074_
                                     _e1282613101_
                                     _hd1282513104_
                                     _tl1282413106_
                                     _e1282913109_
                                     _hd1282813112_
                                     _tl1282713114_
                                     _e1283213117_
                                     _hd1283113120_
                                     _tl1283013122_
                                     _e1283513125_
                                     _hd1283413128_
                                     _tl1283313130_
                                     _e1283813133_
                                     _hd1283713136_
                                     _tl1283613138_
                                     _e1284113141_
                                     _hd1284013144_
                                     _tl1283913146_
                                     _e1284413149_
                                     _hd1284313152_
                                     _tl1284213154_
                                     _e1284713157_
                                     _hd1284613160_
                                     _tl1284513162_))))
                            (___match1595315954_
                             _e1281413069_
                             _hd1281313072_
                             _tl1281213074_
                             _e1282613101_
                             _hd1282513104_
                             _tl1282413106_
                             _e1282913109_
                             _hd1282813112_
                             _tl1282713114_
                             _e1283213117_
                             _hd1283113120_
                             _tl1283013122_
                             _e1283513125_
                             _hd1283413128_
                             _tl1283313130_
                             _e1283813133_
                             _hd1283713136_
                             _tl1283613138_
                             _e1284113141_
                             _hd1284013144_
                             _tl1283913146_
                             _e1284413149_
                             _hd1284313152_
                             _tl1284213154_
                             _e1284713157_
                             _hd1284613160_
                             _tl1284513162_))
                        (___match1595315954_
                         _e1281413069_
                         _hd1281313072_
                         _tl1281213074_
                         _e1282613101_
                         _hd1282513104_
                         _tl1282413106_
                         _e1282913109_
                         _hd1282813112_
                         _tl1282713114_
                         _e1283213117_
                         _hd1283113120_
                         _tl1283013122_
                         _e1283513125_
                         _hd1283413128_
                         _tl1283313130_
                         _e1283813133_
                         _hd1283713136_
                         _tl1283613138_
                         _e1284113141_
                         _hd1284013144_
                         _tl1283913146_
                         _e1284413149_
                         _hd1284313152_
                         _tl1284213154_
                         _e1284713157_
                         _hd1284613160_
                         _tl1284513162_))
                    (___match1595315954_
                     _e1281413069_
                     _hd1281313072_
                     _tl1281213074_
                     _e1282613101_
                     _hd1282513104_
                     _tl1282413106_
                     _e1282913109_
                     _hd1282813112_
                     _tl1282713114_
                     _e1283213117_
                     _hd1283113120_
                     _tl1283013122_
                     _e1283513125_
                     _hd1283413128_
                     _tl1283313130_
                     _e1283813133_
                     _hd1283713136_
                     _tl1283613138_
                     _e1284113141_
                     _hd1284013144_
                     _tl1283913146_
                     _e1284413149_
                     _hd1284313152_
                     _tl1284213154_
                     _e1284713157_
                     _hd1284613160_
                     _tl1284513162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1595315954_
                                                     _e1281413069_
                                                     _hd1281313072_
                                                     _tl1281213074_
                                                     _e1282613101_
                                                     _hd1282513104_
                                                     _tl1282413106_
                                                     _e1282913109_
                                                     _hd1282813112_
                                                     _tl1282713114_
                                                     _e1283213117_
                                                     _hd1283113120_
                                                     _tl1283013122_
                                                     _e1283513125_
                                                     _hd1283413128_
                                                     _tl1283313130_
                                                     _e1283813133_
                                                     _hd1283713136_
                                                     _tl1283613138_
                                                     _e1284113141_
                                                     _hd1284013144_
                                                     _tl1283913146_
                                                     _e1284413149_
                                                     _hd1284313152_
                                                     _tl1284213154_
                                                     _e1284713157_
                                                     _hd1284613160_
                                                     _tl1284513162_))))
                                            (___match1595315954_
                                             _e1281413069_
                                             _hd1281313072_
                                             _tl1281213074_
                                             _e1282613101_
                                             _hd1282513104_
                                             _tl1282413106_
                                             _e1282913109_
                                             _hd1282813112_
                                             _tl1282713114_
                                             _e1283213117_
                                             _hd1283113120_
                                             _tl1283013122_
                                             _e1283513125_
                                             _hd1283413128_
                                             _tl1283313130_
                                             _e1283813133_
                                             _hd1283713136_
                                             _tl1283613138_
                                             _e1284113141_
                                             _hd1284013144_
                                             _tl1283913146_
                                             _e1284413149_
                                             _hd1284313152_
                                             _tl1284213154_
                                             _e1284713157_
                                             _hd1284613160_
                                             _tl1284513162_))))
                                    (___match1595315954_
                                     _e1281413069_
                                     _hd1281313072_
                                     _tl1281213074_
                                     _e1282613101_
                                     _hd1282513104_
                                     _tl1282413106_
                                     _e1282913109_
                                     _hd1282813112_
                                     _tl1282713114_
                                     _e1283213117_
                                     _hd1283113120_
                                     _tl1283013122_
                                     _e1283513125_
                                     _hd1283413128_
                                     _tl1283313130_
                                     _e1283813133_
                                     _hd1283713136_
                                     _tl1283613138_
                                     _e1284113141_
                                     _hd1284013144_
                                     _tl1283913146_
                                     _e1284413149_
                                     _hd1284313152_
                                     _tl1284213154_
                                     _e1284713157_
                                     _hd1284613160_
                                     _tl1284513162_))
                                (___match1595315954_
                                 _e1281413069_
                                 _hd1281313072_
                                 _tl1281213074_
                                 _e1282613101_
                                 _hd1282513104_
                                 _tl1282413106_
                                 _e1282913109_
                                 _hd1282813112_
                                 _tl1282713114_
                                 _e1283213117_
                                 _hd1283113120_
                                 _tl1283013122_
                                 _e1283513125_
                                 _hd1283413128_
                                 _tl1283313130_
                                 _e1283813133_
                                 _hd1283713136_
                                 _tl1283613138_
                                 _e1284113141_
                                 _hd1284013144_
                                 _tl1283913146_
                                 _e1284413149_
                                 _hd1284313152_
                                 _tl1284213154_
                                 _e1284713157_
                                 _hd1284613160_
                                 _tl1284513162_))
                            (___kont1585615857_))))
                    (___kont1585615857_))
                (___kont1585615857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1585615857_))))
                                            (___kont1585615857_))))
                                    (___kont1585615857_))
                                (___kont1585615857_))))
                        (___kont1585615857_))
                    (___kont1585615857_))
                (___kont1585615857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1585615857_))))
                                        (___kont1585615857_))
                                    (___kont1585615857_))
                                (___kont1585615857_))))
                        (___kont1585615857_))))
                (___kont1585615857_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1281813082_
                                       _target1281513077_
                                       '())))))
                               (___match1587115872_
                                (lambda (_e1276613329_
                                         _hd1276513332_
                                         _tl1276413334_
                                         ___splice1584415845_
                                         _target1276713337_
                                         _tl1276913339_)
                                  (letrec ((_loop1277013342_
                                            (lambda (_hd1276813345_
                                                     _arg1277413347_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1276813345_))
                                                  (let ((_e1277113350_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1276813345_))))
                                                    (let ((_lp-tl1277313355_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1277113350_)))
                                                          (_lp-hd1277213353_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1277113350_))))
                                                      (let ((__tmp17283
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1277213353_ _arg1277413347_))))
                (declare (not safe))
                (_loop1277013342_ _lp-tl1277313355_ __tmp17283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1277513358_
                                                         (let ()
                                                           (declare (not safe))
                                                           (reverse _arg1277413347_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1276413334_))
                                                        (let ((_e1277813361_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1276413334_))))
                  (let ((_tl1277613366_
                         (let () (declare (not safe)) (##cdr _e1277813361_)))
                        (_hd1277713364_
                         (let () (declare (not safe)) (##car _e1277813361_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1277713364_))
                        (let ((_e1278113369_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1277713364_))))
                          (let ((_tl1277913374_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1278113369_)))
                                (_hd1278013372_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1278113369_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1278013372_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1278013372_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1277913374_))
                                        (let ((_e1278413377_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1277913374_))))
                                          (let ((_tl1278213382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1278413377_)))
                                                (_hd1278313380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1278413377_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1278313380_))
                                                (let ((_e1278713385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1278313380_))))
                                                  (let ((_tl1278513390_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1278713385_)))
                                                        (_hd1278613388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1278713385_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1278613388_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1278613388_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1278513390_))
                        (let ((_e1279013393_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1278513390_))))
                          (let ((_tl1278813398_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1279013393_)))
                                (_hd1278913396_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1279013393_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1278813398_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl1278213382_))
                                    (let ((___splice1584615847_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1278213382_
                                              '0))))
                                      (let ((_tl1279313403_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1584615847_
                                                '1)))
                                            (_target1279113401_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1584615847_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl1279313403_))
                                            (letrec ((_loop1279413406_
                                                      (lambda (_hd1279213409_
                                                               _xarg1279813411_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd1279213409_))
                                                            (let ((_e1279513414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd1279213409_))))
                      (let ((_lp-tl1279713419_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1279513414_)))
                            (_lp-hd1279613417_
                             (let ()
                               (declare (not safe))
                               (##car _e1279513414_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd1279613417_))
                            (let ((_e1280213422_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd1279613417_))))
                              (let ((_tl1280013427_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1280213422_)))
                                    (_hd1280113425_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1280213422_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1280113425_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd1280113425_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1280013427_))
                                            (let ((_e1280513430_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1280013427_))))
                                              (let ((_tl1280313435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1280513430_)))
                                                    (_hd1280413433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1280513430_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl1280313435_))
                                                    (let ((__tmp17282
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd1280413433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg1279813411_))))
              (declare (not safe))
              (_loop1279413406_ _lp-tl1279713419_ __tmp17282))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1588315884_
                                                     _e1276613329_
                                                     _hd1276513332_
                                                     _tl1276413334_
                                                     ___splice1584415845_
                                                     _target1276713337_
                                                     _tl1276913339_))))
                                            (___match1588315884_
                                             _e1276613329_
                                             _hd1276513332_
                                             _tl1276413334_
                                             ___splice1584415845_
                                             _target1276713337_
                                             _tl1276913339_))
                                        (___match1588315884_
                                         _e1276613329_
                                         _hd1276513332_
                                         _tl1276413334_
                                         ___splice1584415845_
                                         _target1276713337_
                                         _tl1276913339_))
                                    (___match1588315884_
                                     _e1276613329_
                                     _hd1276513332_
                                     _tl1276413334_
                                     ___splice1584415845_
                                     _target1276713337_
                                     _tl1276913339_))))
                            (___match1588315884_
                             _e1276613329_
                             _hd1276513332_
                             _tl1276413334_
                             ___splice1584415845_
                             _target1276713337_
                             _tl1276913339_))))
                    (let ((_xarg1279913438_
                           (let ()
                             (declare (not safe))
                             (reverse _xarg1279813411_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1277613366_))
                          (let ((_L13441_ _xarg1279913438_)
                                (_L13442_ _hd1278913396_)
                                (_L13443_ _arg1277513358_))
                            (if (and (let ((__tmp17280
                                            (let ((__tmp17281
                                                   (lambda (_g1347113474_
                                                            _g1347213476_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1347113474_
                                                             _g1347213476_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17281
                                                      '()
                                                      _L13443_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp17280))
                                     (fx= (length (let ((__tmp17278
                                                         (lambda (_g1347813481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1347913483_)
                   (let ()
                     (declare (not safe))
                     (cons _g1347813481_ _g1347913483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17278
                                                            '()
                                                            _L13443_)))
                                          (length (let ((__tmp17279
                                                         (lambda (_g1348513488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1348613490_)
                   (let ()
                     (declare (not safe))
                     (cons _g1348513488_ _g1348613490_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17279
                                                            '()
                                                            _L13441_))))
                                     (let ((__tmp17276
                                            (let ((__tmp17277
                                                   (lambda (_g1349213495_
                                                            _g1349313497_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1349213495_
                                                             _g1349313497_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17277
                                                      '()
                                                      _L13443_)))
                                           (__tmp17274
                                            (let ((__tmp17275
                                                   (lambda (_g1349913502_
                                                            _g1350013504_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1349913502_
                                                             _g1350013504_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17275
                                                      '()
                                                      _L13441_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp17276
                                                __tmp17274))
                                     (let ((__tmp17270
                                            (let ((__tmp17273
                                                   (lambda (_g1350613508_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g1350613508_
                                                        _L13442_))))
                                                  (__tmp17271
                                                   (let ((__tmp17272
                                                          (lambda (_g1351013513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1351113515_)
                    (let ()
                      (declare (not safe))
                      (cons _g1351013513_ _g1351113515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp17272
                                                             '()
                                                             _L13443_))))
                                              (declare (not safe))
                                              (find __tmp17273 __tmp17271))))
                                       (declare (not safe))
                                       (not __tmp17270)))
                                (___kont1584215843_ _L13441_ _L13442_ _L13443_)
                                (___match1588315884_
                                 _e1276613329_
                                 _hd1276513332_
                                 _tl1276413334_
                                 ___splice1584415845_
                                 _target1276713337_
                                 _tl1276913339_)))
                          (___match1588315884_
                           _e1276613329_
                           _hd1276513332_
                           _tl1276413334_
                           ___splice1584415845_
                           _target1276713337_
                           _tl1276913339_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1279413406_
                                                 _target1279113401_
                                                 '())))
                                            (___match1588315884_
                                             _e1276613329_
                                             _hd1276513332_
                                             _tl1276413334_
                                             ___splice1584415845_
                                             _target1276713337_
                                             _tl1276913339_))))
                                    (___match1588315884_
                                     _e1276613329_
                                     _hd1276513332_
                                     _tl1276413334_
                                     ___splice1584415845_
                                     _target1276713337_
                                     _tl1276913339_))
                                (___match1588315884_
                                 _e1276613329_
                                 _hd1276513332_
                                 _tl1276413334_
                                 ___splice1584415845_
                                 _target1276713337_
                                 _tl1276913339_))))
                        (___match1588315884_
                         _e1276613329_
                         _hd1276513332_
                         _tl1276413334_
                         ___splice1584415845_
                         _target1276713337_
                         _tl1276913339_))
                    (___match1588315884_
                     _e1276613329_
                     _hd1276513332_
                     _tl1276413334_
                     ___splice1584415845_
                     _target1276713337_
                     _tl1276913339_))
                (___match1588315884_
                 _e1276613329_
                 _hd1276513332_
                 _tl1276413334_
                 ___splice1584415845_
                 _target1276713337_
                 _tl1276913339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1588315884_
                                                 _e1276613329_
                                                 _hd1276513332_
                                                 _tl1276413334_
                                                 ___splice1584415845_
                                                 _target1276713337_
                                                 _tl1276913339_))))
                                        (___match1588315884_
                                         _e1276613329_
                                         _hd1276513332_
                                         _tl1276413334_
                                         ___splice1584415845_
                                         _target1276713337_
                                         _tl1276913339_))
                                    (___match1588315884_
                                     _e1276613329_
                                     _hd1276513332_
                                     _tl1276413334_
                                     ___splice1584415845_
                                     _target1276713337_
                                     _tl1276913339_))
                                (___match1588315884_
                                 _e1276613329_
                                 _hd1276513332_
                                 _tl1276413334_
                                 ___splice1584415845_
                                 _target1276713337_
                                 _tl1276913339_))))
                        (___match1588315884_
                         _e1276613329_
                         _hd1276513332_
                         _tl1276413334_
                         ___splice1584415845_
                         _target1276713337_
                         _tl1276913339_))))
                (___match1588315884_
                 _e1276613329_
                 _hd1276513332_
                 _tl1276413334_
                 ___splice1584415845_
                 _target1276713337_
                 _tl1276913339_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1277013342_
                                       _target1276713337_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1584015841_))
                              (let ((_e1276613329_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1584015841_))))
                                (let ((_tl1276413334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1276613329_)))
                                      (_hd1276513332_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1276613329_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1276513332_))
                                      (let ((___splice1584415845_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1276513332_
                                                '0))))
                                        (let ((_tl1276913339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1584415845_
                                                  '1)))
                                              (_target1276713337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1584415845_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1276913339_))
                                              (___match1587115872_
                                               _e1276613329_
                                               _hd1276513332_
                                               _tl1276413334_
                                               ___splice1584415845_
                                               _target1276713337_
                                               _tl1276913339_)
                                              (___match1588315884_
                                               _e1276613329_
                                               _hd1276513332_
                                               _tl1276413334_
                                               ___splice1584415845_
                                               _target1276713337_
                                               _tl1276913339_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1276413334_))
                                          (let ((_e1288112936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1276413334_))))
                                            (let ((_tl1287912941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1288112936_)))
                                                  (_hd1288012939_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1288112936_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1288012939_))
                                                  (let ((_e1288412944_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1288012939_))))
                                                    (let ((_tl1288212949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1288412944_)))
                                                          (_hd1288312947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1288412944_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd1288312947_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd1288312947_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1288212949_))
                          (let ((_e1288712952_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1288212949_))))
                            (let ((_tl1288512957_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1288712952_)))
                                  (_hd1288612955_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1288712952_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd1288612955_))
                                  (let ((_e1289012960_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd1288612955_))))
                                    (let ((_tl1288812965_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1289012960_)))
                                          (_hd1288912963_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1289012960_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd1288912963_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd1288912963_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl1288812965_))
                                                  (let ((_e1289312968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl1288812965_))))
                                                    (let ((_tl1289112973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1289312968_)))
                                                          (_hd1289212971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1289312968_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1289112973_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1288512957_))
                      (let ((_e1289612976_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1288512957_))))
                        (let ((_tl1289412981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1289612976_)))
                              (_hd1289512979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1289612976_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd1289512979_))
                              (let ((_e1289912984_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd1289512979_))))
                                (let ((_tl1289712989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1289912984_)))
                                      (_hd1289812987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1289912984_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd1289812987_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd1289812987_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl1289712989_))
                                              (let ((_e1290212992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl1289712989_))))
                                                (let ((_tl1290012997_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1290212992_)))
                                                      (_hd1290112995_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1290212992_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1290012997_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl1289412981_))
                                                          (let ((_e1290513000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl1289412981_))))
                    (let ((_tl1290313005_
                           (let () (declare (not safe)) (##cdr _e1290513000_)))
                          (_hd1290413003_
                           (let ()
                             (declare (not safe))
                             (##car _e1290513000_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd1290413003_))
                          (let ((_e1290813008_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd1290413003_))))
                            (let ((_tl1290613013_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1290813008_)))
                                  (_hd1290713011_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1290813008_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd1290713011_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd1290713011_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1290613013_))
                                          (let ((_e1291113016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1290613013_))))
                                            (let ((_tl1290913021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1291113016_)))
                                                  (_hd1291013019_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1291113016_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl1290913021_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1290313005_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1287912941_))
                                                          (___match1598115982_
                                                           _e1276613329_
                                                           _hd1276513332_
                                                           _tl1276413334_
                                                           _e1288112936_
                                                           _hd1288012939_
                                                           _tl1287912941_
                                                           _e1288412944_
                                                           _hd1288312947_
                                                           _tl1288212949_
                                                           _e1288712952_
                                                           _hd1288612955_
                                                           _tl1288512957_
                                                           _e1289012960_
                                                           _hd1288912963_
                                                           _tl1288812965_
                                                           _e1289312968_
                                                           _hd1289212971_
                                                           _tl1289112973_
                                                           _e1289612976_
                                                           _hd1289512979_
                                                           _tl1289412981_
                                                           _e1289912984_
                                                           _hd1289812987_
                                                           _tl1289712989_
                                                           _e1290212992_
                                                           _hd1290112995_
                                                           _tl1290012997_
                                                           _e1290513000_
                                                           _hd1290413003_
                                                           _tl1290313005_
                                                           _e1290813008_
                                                           _hd1290713011_
                                                           _tl1290613013_
                                                           _e1291113016_
                                                           _hd1291013019_
                                                           _tl1290913021_)
                                                          (___kont1585615857_))
                                                      (___kont1585615857_))
                                                  (___kont1585615857_))))
                                          (___kont1585615857_))
                                      (___kont1585615857_))
                                  (___kont1585615857_))))
                          (___kont1585615857_))))
                  (___kont1585615857_))
              (___kont1585615857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1585615857_))
                                          (___kont1585615857_))
                                      (___kont1585615857_))))
                              (___kont1585615857_))))
                      (___kont1585615857_))
                  (___kont1585615857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1585615857_))
                                              (___kont1585615857_))
                                          (___kont1585615857_))))
                                  (___kont1585615857_))))
                          (___kont1585615857_))
                      (___kont1585615857_))
                  (___kont1585615857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1585615857_))))
                                          (___kont1585615857_)))))
                              (___kont1585615857_)))))))
                 (_dispatch-case-e12067_
                  (lambda (_hd12215_ _body12216_)
                    (let* ((_form12218_
                            (let ((__tmp17284
                                   (let ()
                                     (declare (not safe))
                                     (cons _body12216_ '()))))
                              (declare (not safe))
                              (cons _hd12215_ __tmp17284)))
                           (___stx1598415985_ _form12218_)
                           (_g1222212346_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1598415985_)))))
                      (let ((___kont1598615987_
                             (lambda (_L12717_ _L12718_ _L12719_)
                               (let ((__tmp17285
                                      (let ((__tmp17287
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17286
                                             (let ()
                                               (declare (not safe))
                                               (cons _L12718_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17287 __tmp17286))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17285))))
                            (___kont1599215993_
                             (lambda (_L12565_ _L12566_ _L12567_ _L12568_)
                               (let ((__tmp17288
                                      (let ((__tmp17290
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17289
                                             (let ()
                                               (declare (not safe))
                                               (cons _L12565_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17290 __tmp17289))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17288))))
                            (___kont1599615997_
                             (lambda (_L12431_ _L12432_ _L12433_)
                               (let ((__tmp17291
                                      (let ((__tmp17293
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17292
                                             (let ()
                                               (declare (not safe))
                                               (cons _L12431_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17293 __tmp17292))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17291)))))
                        (let* ((___match1609316094_
                                (lambda (_e1231412351_
                                         _hd1231312354_
                                         _tl1231212356_
                                         _e1231712359_
                                         _hd1231612362_
                                         _tl1231512364_
                                         _e1232012367_
                                         _hd1231912370_
                                         _tl1231812372_
                                         _e1232312375_
                                         _hd1232212378_
                                         _tl1232112380_
                                         _e1232612383_
                                         _hd1232512386_
                                         _tl1232412388_
                                         _e1232912391_
                                         _hd1232812394_
                                         _tl1232712396_
                                         _e1233212399_
                                         _hd1233112402_
                                         _tl1233012404_
                                         _e1233512407_
                                         _hd1233412410_
                                         _tl1233312412_
                                         _e1233812415_
                                         _hd1233712418_
                                         _tl1233612420_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1233012404_))
                                      (let ((_e1234112423_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1233012404_))))
                                        (let ((_tl1233912428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1234112423_)))
                                              (_hd1234012426_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1234112423_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1233912428_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl1231512364_))
                                                  (___kont1599615997_
                                                   _hd1233712418_
                                                   _hd1232812394_
                                                   _hd1231312354_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1222212346_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g1222212346_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1222212346_)))))
                               (___match1602316024_
                                (lambda (_e1227512469_
                                         _hd1227412472_
                                         _tl1227312474_
                                         ___splice1599415995_
                                         _target1227612477_
                                         _tl1227812479_)
                                  (letrec ((_loop1227912482_
                                            (lambda (_hd1227712485_
                                                     _arg1228312487_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1227712485_))
                                                  (let ((_e1228012490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1227712485_))))
                                                    (let ((_lp-tl1228212495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1228012490_)))
                                                          (_lp-hd1228112493_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1228012490_))))
                                                      (let ((__tmp17294
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1228112493_ _arg1228312487_))))
                (declare (not safe))
                (_loop1227912482_ _lp-tl1228212495_ __tmp17294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1228412498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (reverse _arg1228312487_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1227312474_))
                                                        (let ((_e1228712501_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1227312474_))))
                  (let ((_tl1228512506_
                         (let () (declare (not safe)) (##cdr _e1228712501_)))
                        (_hd1228612504_
                         (let () (declare (not safe)) (##car _e1228712501_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1228612504_))
                        (let ((_e1229012509_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1228612504_))))
                          (let ((_tl1228812514_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1229012509_)))
                                (_hd1228912512_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1229012509_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1228912512_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1228912512_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1228812514_))
                                        (let ((_e1229312517_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1228812514_))))
                                          (let ((_tl1229112522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1229312517_)))
                                                (_hd1229212520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1229312517_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1229212520_))
                                                (let ((_e1229612525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1229212520_))))
                                                  (let ((_tl1229412530_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1229612525_)))
                                                        (_hd1229512528_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1229612525_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1229512528_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1229512528_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1229412530_))
                        (let ((_e1229912533_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1229412530_))))
                          (let ((_tl1229712538_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1229912533_)))
                                (_hd1229812536_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1229912533_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1229712538_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl1229112522_))
                                    (let ((_e1230212541_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl1229112522_))))
                                      (let ((_tl1230012546_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1230212541_)))
                                            (_hd1230112544_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1230212541_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd1230112544_))
                                            (let ((_e1230512549_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd1230112544_))))
                                              (let ((_tl1230312554_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1230512549_)))
                                                    (_hd1230412552_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1230512549_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd1230412552_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd1230412552_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1230312554_))
                                                            (let ((_e1230812557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1230312554_))))
                      (let ((_tl1230612562_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1230812557_)))
                            (_hd1230712560_
                             (let ()
                               (declare (not safe))
                               (##car _e1230812557_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1230612562_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1228512506_))
                                (___kont1599215993_
                                 _hd1230712560_
                                 _hd1229812536_
                                 _tl1227812479_
                                 _arg1228412498_)
                                (___match1609316094_
                                 _e1227512469_
                                 _hd1227412472_
                                 _tl1227312474_
                                 _e1228712501_
                                 _hd1228612504_
                                 _tl1228512506_
                                 _e1229012509_
                                 _hd1228912512_
                                 _tl1228812514_
                                 _e1229312517_
                                 _hd1229212520_
                                 _tl1229112522_
                                 _e1229612525_
                                 _hd1229512528_
                                 _tl1229412530_
                                 _e1229912533_
                                 _hd1229812536_
                                 _tl1229712538_
                                 _e1230212541_
                                 _hd1230112544_
                                 _tl1230012546_
                                 _e1230512549_
                                 _hd1230412552_
                                 _tl1230312554_
                                 _e1230812557_
                                 _hd1230712560_
                                 _tl1230612562_))
                            (let () (declare (not safe)) (_g1222212346_)))))
                    (let () (declare (not safe)) (_g1222212346_)))
                (let () (declare (not safe)) (_g1222212346_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1222212346_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1222212346_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1222212346_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1222212346_)))))
                        (let () (declare (not safe)) (_g1222212346_)))
                    (let () (declare (not safe)) (_g1222212346_)))
                (let () (declare (not safe)) (_g1222212346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1222212346_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1222212346_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g1222212346_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1222212346_)))))
                        (let () (declare (not safe)) (_g1222212346_)))))
                (let () (declare (not safe)) (_g1222212346_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1227912482_
                                       _target1227612477_
                                       '())))))
                               (___match1601116012_
                                (lambda (_e1222912605_
                                         _hd1222812608_
                                         _tl1222712610_
                                         ___splice1598815989_
                                         _target1223012613_
                                         _tl1223212615_)
                                  (letrec ((_loop1223312618_
                                            (lambda (_hd1223112621_
                                                     _arg1223712623_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1223112621_))
                                                  (let ((_e1223412626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1223112621_))))
                                                    (let ((_lp-tl1223612631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1223412626_)))
                                                          (_lp-hd1223512629_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1223412626_))))
                                                      (let ((__tmp17296
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1223512629_ _arg1223712623_))))
                (declare (not safe))
                (_loop1223312618_ _lp-tl1223612631_ __tmp17296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1223812634_
                                                         (let ()
                                                           (declare (not safe))
                                                           (reverse _arg1223712623_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1222712610_))
                                                        (let ((_e1224112637_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1222712610_))))
                  (let ((_tl1223912642_
                         (let () (declare (not safe)) (##cdr _e1224112637_)))
                        (_hd1224012640_
                         (let () (declare (not safe)) (##car _e1224112637_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1224012640_))
                        (let ((_e1224412645_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1224012640_))))
                          (let ((_tl1224212650_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1224412645_)))
                                (_hd1224312648_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1224412645_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1224312648_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1224312648_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1224212650_))
                                        (let ((_e1224712653_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1224212650_))))
                                          (let ((_tl1224512658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1224712653_)))
                                                (_hd1224612656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1224712653_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1224612656_))
                                                (let ((_e1225012661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1224612656_))))
                                                  (let ((_tl1224812666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1225012661_)))
                                                        (_hd1224912664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1225012661_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1224912664_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1224912664_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1224812666_))
                        (let ((_e1225312669_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1224812666_))))
                          (let ((_tl1225112674_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1225312669_)))
                                (_hd1225212672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1225312669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1225112674_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl1224512658_))
                                    (let ((___splice1599015991_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1224512658_
                                              '0))))
                                      (let ((_tl1225612679_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1599015991_
                                                '1)))
                                            (_target1225412677_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1599015991_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl1225612679_))
                                            (letrec ((_loop1225712682_
                                                      (lambda (_hd1225512685_
                                                               _xarg1226112687_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd1225512685_))
                                                            (let ((_e1225812690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd1225512685_))))
                      (let ((_lp-tl1226012695_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1225812690_)))
                            (_lp-hd1225912693_
                             (let ()
                               (declare (not safe))
                               (##car _e1225812690_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd1225912693_))
                            (let ((_e1226512698_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd1225912693_))))
                              (let ((_tl1226312703_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1226512698_)))
                                    (_hd1226412701_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1226512698_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1226412701_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd1226412701_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1226312703_))
                                            (let ((_e1226812706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1226312703_))))
                                              (let ((_tl1226612711_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1226812706_)))
                                                    (_hd1226712709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1226812706_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl1226612711_))
                                                    (let ((__tmp17295
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd1226712709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg1226112687_))))
              (declare (not safe))
              (_loop1225712682_ _lp-tl1226012695_ __tmp17295))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1602316024_
                                                     _e1222912605_
                                                     _hd1222812608_
                                                     _tl1222712610_
                                                     ___splice1598815989_
                                                     _target1223012613_
                                                     _tl1223212615_))))
                                            (___match1602316024_
                                             _e1222912605_
                                             _hd1222812608_
                                             _tl1222712610_
                                             ___splice1598815989_
                                             _target1223012613_
                                             _tl1223212615_))
                                        (___match1602316024_
                                         _e1222912605_
                                         _hd1222812608_
                                         _tl1222712610_
                                         ___splice1598815989_
                                         _target1223012613_
                                         _tl1223212615_))
                                    (___match1602316024_
                                     _e1222912605_
                                     _hd1222812608_
                                     _tl1222712610_
                                     ___splice1598815989_
                                     _target1223012613_
                                     _tl1223212615_))))
                            (___match1602316024_
                             _e1222912605_
                             _hd1222812608_
                             _tl1222712610_
                             ___splice1598815989_
                             _target1223012613_
                             _tl1223212615_))))
                    (let ((_xarg1226212714_
                           (let ()
                             (declare (not safe))
                             (reverse _xarg1226112687_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1223912642_))
                          (___kont1598615987_
                           _xarg1226212714_
                           _hd1225212672_
                           _arg1223812634_)
                          (___match1602316024_
                           _e1222912605_
                           _hd1222812608_
                           _tl1222712610_
                           ___splice1598815989_
                           _target1223012613_
                           _tl1223212615_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1225712682_
                                                 _target1225412677_
                                                 '())))
                                            (___match1602316024_
                                             _e1222912605_
                                             _hd1222812608_
                                             _tl1222712610_
                                             ___splice1598815989_
                                             _target1223012613_
                                             _tl1223212615_))))
                                    (___match1602316024_
                                     _e1222912605_
                                     _hd1222812608_
                                     _tl1222712610_
                                     ___splice1598815989_
                                     _target1223012613_
                                     _tl1223212615_))
                                (___match1602316024_
                                 _e1222912605_
                                 _hd1222812608_
                                 _tl1222712610_
                                 ___splice1598815989_
                                 _target1223012613_
                                 _tl1223212615_))))
                        (___match1602316024_
                         _e1222912605_
                         _hd1222812608_
                         _tl1222712610_
                         ___splice1598815989_
                         _target1223012613_
                         _tl1223212615_))
                    (___match1602316024_
                     _e1222912605_
                     _hd1222812608_
                     _tl1222712610_
                     ___splice1598815989_
                     _target1223012613_
                     _tl1223212615_))
                (___match1602316024_
                 _e1222912605_
                 _hd1222812608_
                 _tl1222712610_
                 ___splice1598815989_
                 _target1223012613_
                 _tl1223212615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1602316024_
                                                 _e1222912605_
                                                 _hd1222812608_
                                                 _tl1222712610_
                                                 ___splice1598815989_
                                                 _target1223012613_
                                                 _tl1223212615_))))
                                        (___match1602316024_
                                         _e1222912605_
                                         _hd1222812608_
                                         _tl1222712610_
                                         ___splice1598815989_
                                         _target1223012613_
                                         _tl1223212615_))
                                    (___match1602316024_
                                     _e1222912605_
                                     _hd1222812608_
                                     _tl1222712610_
                                     ___splice1598815989_
                                     _target1223012613_
                                     _tl1223212615_))
                                (___match1602316024_
                                 _e1222912605_
                                 _hd1222812608_
                                 _tl1222712610_
                                 ___splice1598815989_
                                 _target1223012613_
                                 _tl1223212615_))))
                        (___match1602316024_
                         _e1222912605_
                         _hd1222812608_
                         _tl1222712610_
                         ___splice1598815989_
                         _target1223012613_
                         _tl1223212615_))))
                (___match1602316024_
                 _e1222912605_
                 _hd1222812608_
                 _tl1222712610_
                 ___splice1598815989_
                 _target1223012613_
                 _tl1223212615_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1223312618_
                                       _target1223012613_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1598415985_))
                              (let ((_e1222912605_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1598415985_))))
                                (let ((_tl1222712610_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1222912605_)))
                                      (_hd1222812608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1222912605_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1222812608_))
                                      (let ((___splice1598815989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1222812608_
                                                '0))))
                                        (let ((_tl1223212615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1598815989_
                                                  '1)))
                                              (_target1223012613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1598815989_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1223212615_))
                                              (___match1601116012_
                                               _e1222912605_
                                               _hd1222812608_
                                               _tl1222712610_
                                               ___splice1598815989_
                                               _target1223012613_
                                               _tl1223212615_)
                                              (___match1602316024_
                                               _e1222912605_
                                               _hd1222812608_
                                               _tl1222712610_
                                               ___splice1598815989_
                                               _target1223012613_
                                               _tl1223212615_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1222712610_))
                                          (let ((_e1231712359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1222712610_))))
                                            (let ((_tl1231512364_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1231712359_)))
                                                  (_hd1231612362_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1231712359_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1231612362_))
                                                  (let ((_e1232012367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1231612362_))))
                                                    (let ((_tl1231812372_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1232012367_)))
                                                          (_hd1231912370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1232012367_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd1231912370_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd1231912370_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1231812372_))
                          (let ((_e1232312375_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1231812372_))))
                            (let ((_tl1232112380_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1232312375_)))
                                  (_hd1232212378_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1232312375_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd1232212378_))
                                  (let ((_e1232612383_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd1232212378_))))
                                    (let ((_tl1232412388_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1232612383_)))
                                          (_hd1232512386_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1232612383_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd1232512386_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd1232512386_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl1232412388_))
                                                  (let ((_e1232912391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl1232412388_))))
                                                    (let ((_tl1232712396_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1232912391_)))
                                                          (_hd1232812394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1232912391_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1232712396_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1232112380_))
                      (let ((_e1233212399_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1232112380_))))
                        (let ((_tl1233012404_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1233212399_)))
                              (_hd1233112402_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1233212399_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd1233112402_))
                              (let ((_e1233512407_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd1233112402_))))
                                (let ((_tl1233312412_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1233512407_)))
                                      (_hd1233412410_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1233512407_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd1233412410_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd1233412410_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl1233312412_))
                                              (let ((_e1233812415_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl1233312412_))))
                                                (let ((_tl1233612420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1233812415_)))
                                                      (_hd1233712418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1233812415_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1233612420_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl1233012404_))
                                                          (let ((_e1234112423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl1233012404_))))
                    (let ((_tl1233912428_
                           (let () (declare (not safe)) (##cdr _e1234112423_)))
                          (_hd1234012426_
                           (let ()
                             (declare (not safe))
                             (##car _e1234112423_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1233912428_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl1231512364_))
                              (___kont1599615997_
                               _hd1233712418_
                               _hd1232812394_
                               _hd1222812608_)
                              (let () (declare (not safe)) (_g1222212346_)))
                          (let () (declare (not safe)) (_g1222212346_)))))
                  (let () (declare (not safe)) (_g1222212346_)))
              (let () (declare (not safe)) (_g1222212346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1222212346_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g1222212346_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1222212346_)))))
                              (let () (declare (not safe)) (_g1222212346_)))))
                      (let () (declare (not safe)) (_g1222212346_)))
                  (let () (declare (not safe)) (_g1222212346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1222212346_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g1222212346_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g1222212346_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1222212346_)))))
                          (let () (declare (not safe)) (_g1222212346_)))
                      (let () (declare (not safe)) (_g1222212346_)))
                  (let () (declare (not safe)) (_g1222212346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1222212346_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1222212346_))))))
                              (let ()
                                (declare (not safe))
                                (_g1222212346_))))))))
                 (_generate112068_
                  (lambda (_args12203_ _arglen12204_ _hd12205_ _body12206_)
                    (let* ((_len12208_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd12205_)))
                           (_condition12210_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd12205_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp17311
                                           (let ((__tmp17312
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len12208_ '()))))
                                             (declare (not safe))
                                             (cons _arglen12204_ __tmp17312))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp17311))
                                    (let ((__tmp17305
                                           (let ((__tmp17306
                                                  (let ((__tmp17307
                                                         (let ((__tmp17308
                                                                (let ((__tmp17309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17310
                                      (let ()
                                        (declare (not safe))
                                        (cons _len12208_ '()))))
                                 (declare (not safe))
                                 (cons _arglen12204_ __tmp17310))))
                          (declare (not safe))
                          (cons '##fx= __tmp17309))))
                   (declare (not safe))
                   (cons __tmp17308 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp17307))))
                                             (declare (not safe))
                                             (cons '() __tmp17306))))
                                      (declare (not safe))
                                      (cons 'let __tmp17305)))
                                (if (> _len12208_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp17303
                                               (let ((__tmp17304
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len12208_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen12204_
                                                       __tmp17304))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp17303))
                                        (let ((__tmp17297
                                               (let ((__tmp17298
                                                      (let ((__tmp17299
                                                             (let ((__tmp17300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17301
                                   (let ((__tmp17302
                                          (let ()
                                            (declare (not safe))
                                            (cons _len12208_ '()))))
                                     (declare (not safe))
                                     (cons _arglen12204_ __tmp17302))))
                              (declare (not safe))
                              (cons '##fx>= __tmp17301))))
                       (declare (not safe))
                       (cons __tmp17300 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp17299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp17298))))
                                          (declare (not safe))
                                          (cons 'let __tmp17297)))
                                    '#t)))
                           (_dispatch12212_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?12066_
                                   _hd12205_
                                   _body12206_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e12067_
                                   _hd12205_
                                   _body12206_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _hd12205_
                                   _body12206_)))))
                      (let ((__tmp17313
                             (let ((__tmp17314
                                    (let ((__tmp17315
                                           (let ((__tmp17316
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args12203_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch12212_
                                                   __tmp17316))))
                                      (declare (not safe))
                                      (cons 'apply __tmp17315))))
                               (declare (not safe))
                               (cons __tmp17314 '()))))
                        (declare (not safe))
                        (cons _condition12210_ __tmp17313))))))
          (let* ((_g1207012098_
                  (lambda (_g1207112095_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1207112095_))))
                 (_g1206912200_
                  (lambda (_g1207112101_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1207112101_))
                        (let ((_e1207612103_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1207112101_))))
                          (let ((_hd1207512106_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1207612103_)))
                                (_tl1207412108_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1207612103_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl1207412108_))
                                (let ((_g17317_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl1207412108_
                                          '0))))
                                  (begin
                                    (let ((_g17318_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g17317_)
                                                 (##vector-length _g17317_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g17318_ 2)))
                                          (error "Context expects 2 values"
                                                 _g17318_)))
                                    (let ((_target1207712111_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g17317_ 0)))
                                          (_tl1207912113_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g17317_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1207912113_))
                                          (letrec ((_loop1208012116_
                                                    (lambda (_hd1207812119_
                                                             _body1208412121_
                                                             _hd1208512123_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd1207812119_))
                                                          (let ((_e1208112126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd1207812119_))))
                    (let ((_lp-hd1208212129_
                           (let () (declare (not safe)) (##car _e1208112126_)))
                          (_lp-tl1208312131_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1208112126_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd1208212129_))
                          (let ((_e1209012134_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd1208212129_))))
                            (let ((_hd1208912137_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1209012134_)))
                                  (_tl1208812139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1209012134_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl1208812139_))
                                  (let ((_e1209312142_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl1208812139_))))
                                    (let ((_hd1209212145_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1209312142_)))
                                          (_tl1209112147_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1209312142_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1209112147_))
                                          (let ((__tmp17350
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd1209212145_
                                                         _body1208412121_)))
                                                (__tmp17349
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd1208912137_
                                                         _hd1208512123_))))
                                            (declare (not safe))
                                            (_loop1208012116_
                                             _lp-tl1208312131_
                                             __tmp17350
                                             __tmp17349))
                                          (let ()
                                            (declare (not safe))
                                            (_g1207012098_ _g1207112101_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1207012098_ _g1207112101_)))))
                          (let ()
                            (declare (not safe))
                            (_g1207012098_ _g1207112101_)))))
                  (let ((_body1208612150_
                         (let ()
                           (declare (not safe))
                           (reverse _body1208412121_)))
                        (_hd1208712152_
                         (let ()
                           (declare (not safe))
                           (reverse _hd1208512123_))))
                    ((lambda (_L12155_ _L12156_)
                       (let ((_args12175_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen12176_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name12177_
                              (let ((_$e12172_
                                     (let ((__tmp17319
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (table-ref __tmp17319 _stx12064_ '#f))))
                                (if _$e12172_
                                    _$e12172_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp17320
                                (let ((__tmp17321
                                       (let ((__tmp17322
                                              (let ((__tmp17323
                                                     (let ((__tmp17339
                                                            (let ((__tmp17340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17341
                                  (let ((__tmp17342
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp17348
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args12175_ '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp17348))
                                             (let ((__tmp17343
                                                    (let ((__tmp17344
                                                           (let ((__tmp17345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp17346
                                 (let ((__tmp17347
                                        (let ()
                                          (declare (not safe))
                                          (cons _args12175_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp17347))))
                            (declare (not safe))
                            (cons __tmp17346 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp17345))))
              (declare (not safe))
              (cons '() __tmp17344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp17343)))))
                                    (declare (not safe))
                                    (cons __tmp17342 '()))))
                             (declare (not safe))
                             (cons _arglen12176_ __tmp17341))))
                      (declare (not safe))
                      (cons __tmp17340 '())))
                   (__tmp17324
                    (let ((__tmp17325
                           (let ((__tmp17326
                                  (let ((__tmp17333
                                         (let ((__tmp17334
                                                (let ((__tmp17335
                                                       (let ((__tmp17336
                                                              (let ((__tmp17337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17338
                                    (let ()
                                      (declare (not safe))
                                      (cons _args12175_ '()))))
                               (declare (not safe))
                               (cons _name12177_ __tmp17338))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp17337))))
                 (declare (not safe))
                 (cons __tmp17336 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp17335))))
                                           (declare (not safe))
                                           (cons __tmp17334 '())))
                                        (__tmp17327
                                         (let ((__tmp17332
                                                (lambda (_g1217812181_
                                                         _g1217912183_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate112068_
                                                     _args12175_
                                                     _arglen12176_
                                                     _g1217812181_
                                                     _g1217912183_))))
                                               (__tmp17330
                                                (let ((__tmp17331
                                                       (lambda (_g1218512188_
                                                                _g1218612190_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1218512188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1218612190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp17331
                                                          '()
                                                          _L12156_)))
                                               (__tmp17328
                                                (let ((__tmp17329
                                                       (lambda (_g1219212195_
                                                                _g1219312197_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1219212195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1219312197_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp17329
                                                          '()
                                                          _L12155_))))
                                           (declare (not safe))
                                           (map __tmp17332
                                                __tmp17330
                                                __tmp17328))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp17333 __tmp17327))))
                             (declare (not safe))
                             (cons 'cond __tmp17326))))
                      (declare (not safe))
                      (cons __tmp17325 '()))))
               (declare (not safe))
               (cons __tmp17339 __tmp17324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp17323))))
                                         (declare (not safe))
                                         (cons __tmp17322 '()))))
                                  (declare (not safe))
                                  (cons _args12175_ __tmp17321))))
                           (declare (not safe))
                           (cons 'lambda __tmp17320))))
                     _body1208612150_
                     _hd1208712152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop1208012116_
                                               _target1207712111_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g1207012098_ _g1207112101_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1207012098_ _g1207112101_)))))
                        (let ()
                          (declare (not safe))
                          (_g1207012098_ _g1207112101_))))))
            (declare (not safe))
            (_g1206912200_ _stx12064_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx11338_ _compiled-body?11339_)
        (letrec ((_generate-simple11341_
                  (lambda (_hd12051_ _body12052_)
                    (let ((__tmp17351
                           (let ((__tmp17352
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     'let
                                     _hd12051_
                                     _body12052_
                                     _compiled-body?11339_))))
                             (declare (not safe))
                             (_coalesce-let*11343_ __tmp17352))))
                      (declare (not safe))
                      (_coalesce-boolean11342_ __tmp17351))))
                 (_coalesce-boolean11342_
                  (lambda (_code11912_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code1191311939_ _code11912_)
                               (_else1191511947_ (lambda () _code11912_))
                               (_K1191711984_
                                (lambda (_expr211950_ _expr111951_ _id11952_)
                                  (let* ((_expr21195311961_ _expr211950_)
                                         (_else1195511969_
                                          (lambda ()
                                            (let ((__tmp17353
                                                   (let ((__tmp17354
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr211950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr111951_
                                                           __tmp17354))))
                                              (declare (not safe))
                                              (cons 'or __tmp17353))))
                                         (_K1195711974_
                                          (lambda (_exprs11972_)
                                            (let ((__tmp17355
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr111951_
                                                           _exprs11972_))))
                                              (declare (not safe))
                                              (cons 'or __tmp17355)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr21195311961_))
                                        (let ((_hd1195811977_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr21195311961_)))
                                              (_tl1195911979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr21195311961_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1195811977_ 'or))
                                              (let ((_exprs11982_
                                                     _tl1195911979_))
                                                (declare (not safe))
                                                (_K1195711974_ _exprs11982_))
                                              (let ()
                                                (declare (not safe))
                                                (_else1195511969_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else1195511969_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code1191311939_))
                              (let ((_hd1191811987_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code1191311939_)))
                                    (_tl1191911989_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code1191311939_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd1191811987_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl1191911989_))
                                        (let ((_hd1192011992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl1191911989_)))
                                              (_tl1192111994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl1191911989_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd1192011992_))
                                              (let ((_hd1193211997_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd1192011992_)))
                                                    (_tl1193311999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd1192011992_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd1193211997_))
                                                    (let ((_hd1193412002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd1193211997_)))
                                                          (_tl1193512004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd1193211997_))))
                                                      (let ((_id12007_
                                                             _hd1193412002_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl1193512004_))
                                                            (let ((_hd1193612009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl1193512004_)))
                          (_tl1193712011_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl1193512004_))))
                      (let ((_expr112014_ _hd1193612009_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl1193712011_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl1193311999_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1192111994_))
                                    (let ((_hd1192212016_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1192111994_)))
                                          (_tl1192312018_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1192111994_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1192212016_))
                                          (let ((_hd1192412021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1192212016_)))
                                                (_tl1192512023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1192212016_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1192412021_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl1192512023_))
                                                    (let ((_hd1192612026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl1192512023_)))
                                                          (_tl1192712028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl1192512023_))))
                                                      (if ((lambda (_g1203012032_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g1203012032_ _id12007_)))
                   _hd1192612026_)
                  (if (let () (declare (not safe)) (##pair? _tl1192712028_))
                      (let ((_hd1192812035_
                             (let ()
                               (declare (not safe))
                               (##car _tl1192712028_)))
                            (_tl1192912037_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl1192712028_))))
                        (if ((lambda (_g1203912041_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g1203912041_ _id12007_)))
                             _hd1192812035_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl1192912037_))
                                (let ((_hd1193012044_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl1192912037_)))
                                      (_tl1193112046_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl1192912037_))))
                                  (let ((_expr212049_ _hd1193012044_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1193112046_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl1192312018_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1191711984_
                                               _expr212049_
                                               _expr112014_
                                               _id12007_))
                                            (let ()
                                              (declare (not safe))
                                              (_else1191511947_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else1191511947_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else1191511947_)))
                            (let () (declare (not safe)) (_else1191511947_))))
                      (let () (declare (not safe)) (_else1191511947_)))
                  (let () (declare (not safe)) (_else1191511947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else1191511947_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else1191511947_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else1191511947_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1191511947_)))
                                (let ()
                                  (declare (not safe))
                                  (_else1191511947_)))
                            (let () (declare (not safe)) (_else1191511947_)))))
                    (let () (declare (not safe)) (_else1191511947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else1191511947_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else1191511947_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else1191511947_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else1191511947_))))
                              (let ()
                                (declare (not safe))
                                (_else1191511947_))))
                        _code11912_)))
                 (_coalesce-let*11343_
                  (lambda (_code11645_)
                    (let* ((_code1164611710_ _code11645_)
                           (_else1165011718_ (lambda () _code11645_)))
                      (let ((_K1169211863_
                             (lambda (_body11859_ _expr11860_ _id11861_)
                               (let ((__tmp17356
                                      (let ((__tmp17357
                                             (let ((__tmp17358
                                                    (let ((__tmp17359
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr11860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id11861_ __tmp17359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17358 '()))))
                                        (declare (not safe))
                                        (cons __tmp17357 _body11859_))))
                                 (declare (not safe))
                                 (cons 'let __tmp17356))))
                            (_K1166911788_
                             (lambda (_body11782_
                                      _expr211783_
                                      _id211784_
                                      _expr111785_
                                      _id111786_)
                               (let ((__tmp17360
                                      (let ((__tmp17361
                                             (let ((__tmp17365
                                                    (let ((__tmp17366
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr111785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id111786_ __tmp17366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp17362
                                                    (let ((__tmp17363
                                                           (let ((__tmp17364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr211783_ '()))))
                     (declare (not safe))
                     (cons _id211784_ __tmp17364))))
              (declare (not safe))
              (cons __tmp17363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17365 __tmp17362))))
                                        (declare (not safe))
                                        (cons __tmp17361 _body11782_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp17360))))
                            (_K1165211727_
                             (lambda (_body11722_
                                      _bind11723_
                                      _expr111724_
                                      _id111725_)
                               (let ((__tmp17367
                                      (let ((__tmp17368
                                             (let ((__tmp17369
                                                    (let ((__tmp17370
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr111724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id111725_ __tmp17370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17369 _bind11723_))))
                                        (declare (not safe))
                                        (cons __tmp17368 _body11722_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp17367)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code1164611710_))
                            (let ((_tl1169411868_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code1164611710_)))
                                  (_hd1169311866_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code1164611710_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd1169311866_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1169411868_))
                                      (let ((_tl1169611873_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1169411868_)))
                                            (_hd1169511871_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1169411868_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd1169511871_))
                                            (let ((_tl1170411878_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd1169511871_)))
                                                  (_hd1170311876_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd1169511871_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd1170311876_))
                                                  (let ((_tl1170611883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd1170311876_)))
                                                        (_hd1170511881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd1170311876_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1170611883_))
                                                        (let ((_tl1170811890_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1170611883_)))
                      (_hd1170711888_
                       (let () (declare (not safe)) (##car _tl1170611883_))))
                  (if (let () (declare (not safe)) (##null? _tl1170811890_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl1170411878_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl1169611873_))
                              (let ((_tl1169811897_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl1169611873_)))
                                    (_hd1169711895_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl1169611873_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1169711895_))
                                    (let ((_tl1170011902_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1169711895_)))
                                          (_hd1169911900_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1169711895_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd1169911900_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl1170011902_))
                                              (let ((_tl1170211907_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl1170011902_)))
                                                    (_hd1170111905_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl1170011902_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd1170111905_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1169811897_))
                                                        (let ((_id11886_
                                                               _hd1170511881_)
                                                              (_expr11893_
                                                               _hd1170711888_)
                                                              (_body11910_
                                                               _tl1170211907_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K1169211863_
                                                             _body11910_
                                                             _expr11893_
                                                             _id11886_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else1165011718_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd1170111905_))
                                                        (let ((_tl1168111837_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd1170111905_)))
                      (_hd1168011835_
                       (let () (declare (not safe)) (##car _hd1170111905_))))
                  (if (let () (declare (not safe)) (##pair? _hd1168011835_))
                      (let ((_tl1168311842_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd1168011835_)))
                            (_hd1168211840_
                             (let ()
                               (declare (not safe))
                               (##car _hd1168011835_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1168311842_))
                            (let ((_tl1168511849_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1168311842_)))
                                  (_hd1168411847_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1168311842_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1168511849_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1168111837_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1169811897_))
                                          (let ((_id111811_ _hd1170511881_)
                                                (_expr111818_ _hd1170711888_)
                                                (_id211845_ _hd1168211840_)
                                                (_expr211852_ _hd1168411847_)
                                                (_body11854_ _tl1170211907_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1166911788_
                                               _body11854_
                                               _expr211852_
                                               _id211845_
                                               _expr111818_
                                               _id111811_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1165011718_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1165011718_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1165011718_))))
                            (let () (declare (not safe)) (_else1165011718_))))
                      (let () (declare (not safe)) (_else1165011718_))))
                (let () (declare (not safe)) (_else1165011718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else1165011718_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1169911900_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl1170011902_))
                                                  (let ((_tl1166211771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl1170011902_)))
                                                        (_hd1166111769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl1170011902_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1169811897_))
                                                        (let ((_id111750_
                                                               _hd1170511881_)
                                                              (_expr111757_
                                                               _hd1170711888_)
                                                              (_bind11774_
                                                               _hd1166111769_)
                                                              (_body11776_
                                                               _tl1166211771_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K1165211727_
                                                             _body11776_
                                                             _bind11774_
                                                             _expr111757_
                                                             _id111750_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else1165011718_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else1165011718_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else1165011718_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1165011718_))))
                              (let () (declare (not safe)) (_else1165011718_)))
                          (let () (declare (not safe)) (_else1165011718_)))
                      (let () (declare (not safe)) (_else1165011718_))))
                (let () (declare (not safe)) (_else1165011718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else1165011718_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else1165011718_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else1165011718_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1165011718_))))
                            (let ()
                              (declare (not safe))
                              (_else1165011718_)))))))
                 (_generate-values11344_
                  (lambda (_hd11458_ _body11459_)
                    (let _lp11461_ ((_rest11463_ _hd11458_)
                                    (_bind11464_ '())
                                    (_check11465_ '())
                                    (_post11466_ '()))
                      (let* ((___stx1629516296_ _rest11463_)
                             (_g1146911480_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1629516296_)))))
                        (let ((___kont1629716298_
                               (lambda (_L11507_ _L11508_)
                                 (let* ((___stx1625116252_ _L11508_)
                                        (_g1152311548_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1625116252_)))))
                                   (let ((___kont1625316254_
                                          (lambda (_L11621_ _L11622_)
                                            (let ((_eid11636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L11622_)))
                                                  (_expr11637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L11621_))))
                                              (let ((__tmp17371
                                                     (let ((__tmp17372
                                                            (let ((__tmp17373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr11637_ '()))))
                      (declare (not safe))
                      (cons _eid11636_ __tmp17373))))
               (declare (not safe))
               (cons __tmp17372 _bind11464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp11461_
                                                 _L11507_
                                                 __tmp17371
                                                 _check11465_
                                                 _post11466_)))))
                                         (___kont1625516256_
                                          (lambda (_L11569_ _L11570_)
                                            (let* ((_vals11583_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values11585_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals11583_
                                                       _L11570_
                                                       _L11569_)))
                                                   (_refs11587_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals11583_
                                                       _L11570_)))
                                                   (_expr11589_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e
                                                       _L11569_))))
                                              (let ((__tmp17376
                                                     (let ((__tmp17377
                                                            (let ((__tmp17378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr11589_ '()))))
                      (declare (not safe))
                      (cons _vals11583_ __tmp17378))))
               (declare (not safe))
               (cons __tmp17377 _bind11464_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp17375
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values11585_
                                                             _check11465_)))
                                                    (__tmp17374
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs11587_
                                                             _post11466_))))
                                                (declare (not safe))
                                                (_lp11461_
                                                 _L11507_
                                                 __tmp17376
                                                 __tmp17375
                                                 __tmp17374))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1625116252_))
                                         (let ((_e1152911597_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1625116252_))))
                                           (let ((_tl1152711602_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1152911597_)))
                                                 (_hd1152811600_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1152911597_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd1152811600_))
                                                 (let ((_e1153211605_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd1152811600_))))
                                                   (let ((_tl1153011610_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1153211605_)))
                                                         (_hd1153111608_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1153211605_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl1153011610_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl1152711602_))
                     (let ((_e1153511613_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1152711602_))))
                       (let ((_tl1153311618_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1153511613_)))
                             (_hd1153411616_
                              (let ()
                                (declare (not safe))
                                (##car _e1153511613_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1153311618_))
                             (___kont1625316254_ _hd1153411616_ _hd1153111608_)
                             (let () (declare (not safe)) (_g1152311548_)))))
                     (let () (declare (not safe)) (_g1152311548_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl1152711602_))
                     (let ((_e1154311561_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1152711602_))))
                       (let ((_tl1154111566_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1154311561_)))
                             (_hd1154211564_
                              (let ()
                                (declare (not safe))
                                (##car _e1154311561_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1154111566_))
                             (___kont1625516256_ _hd1154211564_ _hd1152811600_)
                             (let () (declare (not safe)) (_g1152311548_)))))
                     (let () (declare (not safe)) (_g1152311548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl1152711602_))
                                                     (let ((_e1154311561_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl1152711602_))))
                                                       (let ((_tl1154111566_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1154311561_)))
                     (_hd1154211564_
                      (let () (declare (not safe)) (##car _e1154311561_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl1154111566_))
                     (___kont1625516256_ _hd1154211564_ _hd1152811600_)
                     (let () (declare (not safe)) (_g1152311548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1152311548_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1152311548_)))))))
                              (___kont1629916300_
                               (lambda ()
                                 (let* ((_body11487_
                                         (if _compiled-body?11339_
                                             _body11459_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _body11459_))))
                                        (_body11489_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post11345_
                                            _post11466_
                                            _body11487_)))
                                        (_body11491_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check11346_
                                            _check11465_
                                            _body11489_))))
                                   (let ((__tmp17379
                                          (let ((__tmp17381
                                                 (let ()
                                                   (declare (not safe))
                                                   (reverse _bind11464_)))
                                                (__tmp17380
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body11491_ '()))))
                                            (declare (not safe))
                                            (cons __tmp17381 __tmp17380))))
                                     (declare (not safe))
                                     (cons 'let __tmp17379))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1629516296_))
                              (let ((_e1147511499_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1629516296_))))
                                (let ((_tl1147311504_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1147511499_)))
                                      (_hd1147411502_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1147511499_))))
                                  (___kont1629716298_
                                   _tl1147311504_
                                   _hd1147411502_)))
                              (___kont1629916300_)))))))
                 (_generate-values-post11345_
                  (lambda (_post11417_ _body11418_)
                    (let _lp11420_ ((_rest11422_ _post11417_)
                                    (_body11423_ _body11418_))
                      (let* ((_rest1142411432_ _rest11422_)
                             (_else1142611440_ (lambda () _body11423_))
                             (_K1142811446_
                              (lambda (_rest11443_ _bind11444_)
                                (let ((__tmp17382
                                       (let ((__tmp17383
                                              (let ((__tmp17384
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body11423_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind11444_
                                                      __tmp17384))))
                                         (declare (not safe))
                                         (cons 'let __tmp17383))))
                                  (declare (not safe))
                                  (_lp11420_ _rest11443_ __tmp17382)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1142411432_))
                            (let ((_hd1142911449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1142411432_)))
                                  (_tl1143011451_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1142411432_))))
                              (let* ((_bind11454_ _hd1142911449_)
                                     (_rest11456_ _tl1143011451_))
                                (declare (not safe))
                                (_K1142811446_ _rest11456_ _bind11454_)))
                            (let ()
                              (declare (not safe))
                              (_else1142611440_)))))))
                 (_generate-values-check11346_
                  (lambda (_check11414_ _body11415_)
                    (let ((__tmp17385
                           (let ((__tmp17387
                                  (let ()
                                    (declare (not safe))
                                    (cons _body11415_ '())))
                                 (__tmp17386
                                  (let ()
                                    (declare (not safe))
                                    (reverse _check11414_))))
                             (declare (not safe))
                             (foldr1 cons __tmp17387 __tmp17386))))
                      (declare (not safe))
                      (cons 'begin __tmp17385)))))
          (let* ((_g1134811365_
                  (lambda (_g1134911362_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1134911362_))))
                 (_g1134711411_
                  (lambda (_g1134911368_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1134911368_))
                        (let ((_e1135411370_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1134911368_))))
                          (let ((_hd1135311373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1135411370_)))
                                (_tl1135211375_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1135411370_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1135211375_))
                                (let ((_e1135711378_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1135211375_))))
                                  (let ((_hd1135611381_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1135711378_)))
                                        (_tl1135511383_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1135711378_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1135511383_))
                                        (let ((_e1136011386_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1135511383_))))
                                          (let ((_hd1135911389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1136011386_)))
                                                (_tl1135811391_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1136011386_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1135811391_))
                                                ((lambda (_L11394_ _L11395_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L11395_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple11341_
                                                          _L11395_
                                                          _L11394_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values11344_
                                                          _L11395_
                                                          _L11394_))))
                                                 _hd1135911389_
                                                 _hd1135611381_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1134811365_
                                                   _g1134911368_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1134811365_ _g1134911368_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1134811365_ _g1134911368_)))))
                        (let ()
                          (declare (not safe))
                          (_g1134811365_ _g1134911368_))))))
            (declare (not safe))
            (_g1134711411_ _stx11338_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_stx12057_)
        (let ((_compiled-body?12059_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _stx12057_
           _compiled-body?12059_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g17389_
        (let ((_g17388_ (let () (declare (not safe)) (##length _g17389_))))
          (cond ((let () (declare (not safe)) (##fx= _g17388_ 1))
                 (apply (lambda (_stx12057_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0 _stx12057_)))
                        _g17389_))
                ((let () (declare (not safe)) (##fx= _g17388_ 2))
                 (apply (lambda (_stx12061_ _compiled-body?12062_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _stx12061_
                             _compiled-body?12062_)))
                        _g17389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g17389_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals11232_ _hd11233_)
        (let _lp11235_ ((_rest11237_ _hd11233_) (_k11238_ '0) (_r11239_ '()))
          (let* ((___stx1630916310_ _rest11237_)
                 (_g1124411261_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx1630916310_)))))
            (let ((___kont1631116312_
                   (lambda (_L11324_)
                     (let ((__tmp17390
                            (let () (declare (not safe)) (fx+ _k11238_ '1))))
                       (declare (not safe))
                       (_lp11235_ _L11324_ __tmp17390 _r11239_))))
                  (___kont1631316314_
                   (lambda (_L11297_ _L11298_)
                     (let ((__tmp17396
                            (let () (declare (not safe)) (fx+ _k11238_ '1)))
                           (__tmp17391
                            (let ((__tmp17392
                                   (let ((__tmp17395
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L11298_)))
                                         (__tmp17393
                                          (let ((__tmp17394
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals11232_
                                                    _k11238_
                                                    _L11297_))))
                                            (declare (not safe))
                                            (cons __tmp17394 '()))))
                                     (declare (not safe))
                                     (cons __tmp17395 __tmp17393))))
                              (declare (not safe))
                              (cons __tmp17392 _r11239_))))
                       (declare (not safe))
                       (_lp11235_ _L11297_ __tmp17396 __tmp17391))))
                  (___kont1631516316_
                   (lambda (_L11273_)
                     (let ((__tmp17397
                            (let ((__tmp17398
                                   (let ((__tmp17401
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L11273_)))
                                         (__tmp17399
                                          (let ((__tmp17400
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals11232_
                                                    _k11238_))))
                                            (declare (not safe))
                                            (cons __tmp17400 '()))))
                                     (declare (not safe))
                                     (cons __tmp17401 __tmp17399))))
                              (declare (not safe))
                              (cons __tmp17398 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp17397 _r11239_))))
                  (___kont1631716318_
                   (lambda ()
                     (let () (declare (not safe)) (reverse _r11239_)))))
              (let ((_g1124211284_
                     (lambda ()
                       (let ((_L11273_ ___stx1630916310_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L11273_))
                             (___kont1631516316_ _L11273_)
                             (___kont1631716318_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx1630916310_))
                    (let ((_e1124911313_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx1630916310_))))
                      (let ((_tl1124711318_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1124911313_)))
                            (_hd1124811316_
                             (let ()
                               (declare (not safe))
                               (##car _e1124911313_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd1124811316_))
                            (let ((_e1125011321_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd1124811316_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e1125011321_ '#f))
                                  (___kont1631116312_ _tl1124711318_)
                                  (___kont1631316314_
                                   _tl1124711318_
                                   _hd1124811316_)))
                            (___kont1631316314_
                             _tl1124711318_
                             _hd1124811316_))))
                    (let () (declare (not safe)) (_g1124211284_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx10914_ _compiled-body?10915_)
        (letrec ((_generate-simple10917_
                  (lambda (_hd11219_ _body11220_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd11219_
                       _body11220_
                       _compiled-body?10915_))))
                 (_generate-values10918_
                  (lambda (_hd10998_ _body10999_)
                    (let _lp11001_ ((_rest11003_ _hd10998_)
                                    (_bind11004_ '())
                                    (_check11005_ '())
                                    (_post11006_ '()))
                      (let* ((___stx1638316384_ _rest11003_)
                             (_g1100911020_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1638316384_)))))
                        (let ((___kont1638516386_
                               (lambda (_L11047_ _L11048_)
                                 (let* ((___stx1633916340_ _L11048_)
                                        (_g1106311088_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1633916340_)))))
                                   (let ((___kont1634116342_
                                          (lambda (_L11195_ _L11196_)
                                            (let ((_eid11210_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L11196_)))
                                                  (_expr11211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L11195_))))
                                              (let ((__tmp17402
                                                     (let ((__tmp17403
                                                            (let ((__tmp17404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr11211_ '()))))
                      (declare (not safe))
                      (cons _eid11210_ __tmp17404))))
               (declare (not safe))
               (cons __tmp17403 _bind11004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp11001_
                                                 _L11047_
                                                 __tmp17402
                                                 _check11005_
                                                 _post11006_)))))
                                         (___kont1634316344_
                                          (lambda (_L11109_ _L11110_)
                                            (let* ((_vals11123_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values11125_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals11123_
                                                       _L11110_
                                                       _L11109_)))
                                                   (_refs11127_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals11123_
                                                       _L11110_)))
                                                   (_expr11129_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e
                                                       _L11109_))))
                                              (let ((__tmp17407
                                                     (let ((__tmp17411
                                                            (let ((__tmp17412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17413
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr11129_ '()))))
                             (declare (not safe))
                             (cons _vals11123_ __tmp17413))))
                      (declare (not safe))
                      (cons __tmp17412 _bind11004_)))
                   (__tmp17408
                    (let ((__tmp17409
                           (lambda (_e1113111133_)
                             (let* ((_g1113511144_ _e1113111133_)
                                    (_E1113711148_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g1113511144_)))
                                    (_K1113811153_
                                     (lambda (_eid11151_)
                                       (let ((__tmp17410
                                              (let ()
                                                (declare (not safe))
                                                (cons '#!void '()))))
                                         (declare (not safe))
                                         (cons _eid11151_ __tmp17410)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _g1113511144_))
                                   (let ((_hd1113911156_
                                          (let ()
                                            (declare (not safe))
                                            (##car _g1113511144_)))
                                         (_tl1114011158_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _g1113511144_))))
                                     (let ((_eid11161_ _hd1113911156_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _tl1114011158_))
                                           (let ((_tl1114211163_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _tl1114011158_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##null? _tl1114211163_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K1113811153_ _eid11161_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E1113711148_))))
                                           (let ()
                                             (declare (not safe))
                                             (_E1113711148_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_E1113711148_)))))))
                      (declare (not safe))
                      (map __tmp17409 _refs11127_))))
               (declare (not safe))
               (foldl1 cons __tmp17411 __tmp17408)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp17406
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values11125_
                                                             _check11005_)))
                                                    (__tmp17405
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs11127_
                                                               _post11006_))))
                                                (declare (not safe))
                                                (_lp11001_
                                                 _L11047_
                                                 __tmp17407
                                                 __tmp17406
                                                 __tmp17405))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1633916340_))
                                         (let ((_e1106911171_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1633916340_))))
                                           (let ((_tl1106711176_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1106911171_)))
                                                 (_hd1106811174_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1106911171_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd1106811174_))
                                                 (let ((_e1107211179_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd1106811174_))))
                                                   (let ((_tl1107011184_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1107211179_)))
                                                         (_hd1107111182_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1107211179_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl1107011184_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl1106711176_))
                     (let ((_e1107511187_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1106711176_))))
                       (let ((_tl1107311192_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1107511187_)))
                             (_hd1107411190_
                              (let ()
                                (declare (not safe))
                                (##car _e1107511187_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1107311192_))
                             (___kont1634116342_ _hd1107411190_ _hd1107111182_)
                             (let () (declare (not safe)) (_g1106311088_)))))
                     (let () (declare (not safe)) (_g1106311088_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl1106711176_))
                     (let ((_e1108311101_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1106711176_))))
                       (let ((_tl1108111106_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1108311101_)))
                             (_hd1108211104_
                              (let ()
                                (declare (not safe))
                                (##car _e1108311101_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1108111106_))
                             (___kont1634316344_ _hd1108211104_ _hd1106811174_)
                             (let () (declare (not safe)) (_g1106311088_)))))
                     (let () (declare (not safe)) (_g1106311088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl1106711176_))
                                                     (let ((_e1108311101_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl1106711176_))))
                                                       (let ((_tl1108111106_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1108311101_)))
                     (_hd1108211104_
                      (let () (declare (not safe)) (##car _e1108311101_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl1108111106_))
                     (___kont1634316344_ _hd1108211104_ _hd1106811174_)
                     (let () (declare (not safe)) (_g1106311088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1106311088_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1106311088_)))))))
                              (___kont1638716388_
                               (lambda ()
                                 (let* ((_body11027_
                                         (if _compiled-body?10915_
                                             _body10999_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _body10999_))))
                                        (_body11029_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post10920_
                                            _post11006_
                                            _body11027_)))
                                        (_body11031_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check10919_
                                            _check11005_
                                            _body11029_))))
                                   (let ((__tmp17414
                                          (let ((__tmp17416
                                                 (let ()
                                                   (declare (not safe))
                                                   (reverse _bind11004_)))
                                                (__tmp17415
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body11031_ '()))))
                                            (declare (not safe))
                                            (cons __tmp17416 __tmp17415))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp17414))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1638316384_))
                              (let ((_e1101511039_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1638316384_))))
                                (let ((_tl1101311044_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1101511039_)))
                                      (_hd1101411042_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1101511039_))))
                                  (___kont1638516386_
                                   _tl1101311044_
                                   _hd1101411042_)))
                              (___kont1638716388_)))))))
                 (_generate-values-check10919_
                  (lambda (_check10995_ _body10996_)
                    (let ((__tmp17417
                           (let ((__tmp17419
                                  (let ()
                                    (declare (not safe))
                                    (cons _body10996_ '())))
                                 (__tmp17418
                                  (let ()
                                    (declare (not safe))
                                    (reverse _check10995_))))
                             (declare (not safe))
                             (foldr1 cons __tmp17419 __tmp17418))))
                      (declare (not safe))
                      (cons 'begin __tmp17417))))
                 (_generate-values-post10920_
                  (lambda (_post10988_ _body10989_)
                    (let ((__tmp17420
                           (let ((__tmp17424
                                  (let ()
                                    (declare (not safe))
                                    (cons _body10989_ '())))
                                 (__tmp17421
                                  (let ((__tmp17423
                                         (lambda (_g1099010992_)
                                           (let ()
                                             (declare (not safe))
                                             (cons 'set! _g1099010992_))))
                                        (__tmp17422
                                         (let ()
                                           (declare (not safe))
                                           (reverse _post10988_))))
                                    (declare (not safe))
                                    (map __tmp17423 __tmp17422))))
                             (declare (not safe))
                             (foldr1 cons __tmp17424 __tmp17421))))
                      (declare (not safe))
                      (cons 'begin __tmp17420)))))
          (let* ((_g1092210939_
                  (lambda (_g1092310936_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1092310936_))))
                 (_g1092110985_
                  (lambda (_g1092310942_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1092310942_))
                        (let ((_e1092810944_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1092310942_))))
                          (let ((_hd1092710947_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1092810944_)))
                                (_tl1092610949_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1092810944_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1092610949_))
                                (let ((_e1093110952_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1092610949_))))
                                  (let ((_hd1093010955_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1093110952_)))
                                        (_tl1092910957_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1093110952_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1092910957_))
                                        (let ((_e1093410960_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1092910957_))))
                                          (let ((_hd1093310963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1093410960_)))
                                                (_tl1093210965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1093410960_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1093210965_))
                                                ((lambda (_L10968_ _L10969_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L10969_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple10917_
                                                          _L10969_
                                                          _L10968_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values10918_
                                                          _L10969_
                                                          _L10968_))))
                                                 _hd1093310963_
                                                 _hd1093010955_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1092210939_
                                                   _g1092310942_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1092210939_ _g1092310942_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1092210939_ _g1092310942_)))))
                        (let ()
                          (declare (not safe))
                          (_g1092210939_ _g1092310942_))))))
            (declare (not safe))
            (_g1092110985_ _stx10914_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_stx11225_)
        (let ((_compiled-body?11227_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _stx11225_
           _compiled-body?11227_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g17426_
        (let ((_g17425_ (let () (declare (not safe)) (##length _g17426_))))
          (cond ((let () (declare (not safe)) (##fx= _g17425_ 1))
                 (apply (lambda (_stx11225_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _stx11225_)))
                        _g17426_))
                ((let () (declare (not safe)) (##fx= _g17425_ 2))
                 (apply (lambda (_stx11229_ _compiled-body?11230_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _stx11229_
                             _compiled-body?11230_)))
                        _g17426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g17426_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_stx10496_)
        (letrec ((_generate-values10498_
                  (lambda (_hd10741_ _body10742_)
                    (let _lp10744_ ((_rest10746_ _hd10741_) (_bind10747_ '()))
                      (let* ((_rest1074810756_ _rest10746_)
                             (_else1075010767_
                              (lambda ()
                                (let ((_bind10764_
                                       (let ()
                                         (declare (not safe))
                                         (reverse _bind10747_)))
                                      (_body10765_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _body10742_))))
                                  (let ((__tmp17427
                                         (let ((__tmp17428
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body10765_ '()))))
                                           (declare (not safe))
                                           (cons _bind10764_ __tmp17428))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp17427)))))
                             (_K1075210901_
                              (lambda (_rest10770_ _hd-bind10771_)
                                (let* ((___stx1639716398_ _hd-bind10771_)
                                       (_g1077410799_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx1639716398_)))))
                                  (let ((___kont1639916400_
                                         (lambda (_L10880_ _L10881_)
                                           (let ((_eid10895_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L10881_)))
                                                 (_expr10896_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _L10880_))))
                                             (let ((__tmp17429
                                                    (let ((__tmp17430
                                                           (let ((__tmp17431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr10896_ '()))))
                     (declare (not safe))
                     (cons _eid10895_ __tmp17431))))
              (declare (not safe))
              (cons __tmp17430 _bind10747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp10744_
                                                _rest10770_
                                                __tmp17429)))))
                                        (___kont1640116402_
                                         (lambda (_L10820_ _L10821_)
                                           (let* ((_vals10840_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp10842_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values10844_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp10842_
                                                      _L10821_
                                                      _L10820_)))
                                                  (_refs10846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals10840_
                                                      _L10821_)))
                                                  (_expr10848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L10820_))))
                                             (let ((__tmp17432
                                                    (let ((__tmp17433
                                                           (let ((__tmp17434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp17435
                                 (let ((__tmp17436
                                        (let ((__tmp17437
                                               (let ((__tmp17440
                                                      (let ((__tmp17441
                                                             (let ((__tmp17442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr10848_ '()))))
                       (declare (not safe))
                       (cons _tmp10842_ __tmp17442))))
                (declare (not safe))
                (cons __tmp17441 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17438
                                                      (let ((__tmp17439
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp10842_ '()))))
                (declare (not safe))
                (cons _check-values10844_ __tmp17439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp17440
                                                       __tmp17438))))
                                          (declare (not safe))
                                          (cons 'let __tmp17437))))
                                   (declare (not safe))
                                   (cons __tmp17436 '()))))
                            (declare (not safe))
                            (cons _vals10840_ __tmp17435))))
                     (declare (not safe))
                     (cons __tmp17434 _bind10747_))))
              (declare (not safe))
              (foldl1 cons __tmp17433 _refs10846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp10744_
                                                _rest10770_
                                                __tmp17432))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1639716398_))
                                        (let ((_e1078010856_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1639716398_))))
                                          (let ((_tl1077810861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1078010856_)))
                                                (_hd1077910859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1078010856_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1077910859_))
                                                (let ((_e1078310864_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1077910859_))))
                                                  (let ((_tl1078110869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1078310864_)))
                                                        (_hd1078210867_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1078310864_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl1078110869_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1077810861_))
                                                            (let ((_e1078610872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1077810861_))))
                      (let ((_tl1078410877_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1078610872_)))
                            (_hd1078510875_
                             (let ()
                               (declare (not safe))
                               (##car _e1078610872_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1078410877_))
                            (___kont1639916400_ _hd1078510875_ _hd1078210867_)
                            (let () (declare (not safe)) (_g1077410799_)))))
                    (let () (declare (not safe)) (_g1077410799_)))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl1077810861_))
                    (let ((_e1079410812_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1077810861_))))
                      (let ((_tl1079210817_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1079410812_)))
                            (_hd1079310815_
                             (let ()
                               (declare (not safe))
                               (##car _e1079410812_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1079210817_))
                            (___kont1640116402_ _hd1079310815_ _hd1077910859_)
                            (let () (declare (not safe)) (_g1077410799_)))))
                    (let () (declare (not safe)) (_g1077410799_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl1077810861_))
                                                    (let ((_e1079410812_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl1077810861_))))
                                                      (let ((_tl1079210817_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1079410812_)))
                    (_hd1079310815_
                     (let () (declare (not safe)) (##car _e1079410812_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl1079210817_))
                    (___kont1640116402_ _hd1079310815_ _hd1077910859_)
                    (let () (declare (not safe)) (_g1077410799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1077410799_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1077410799_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1074810756_))
                            (let ((_hd1075310904_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1074810756_)))
                                  (_tl1075410906_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1074810756_))))
                              (let* ((_hd-bind10909_ _hd1075310904_)
                                     (_rest10911_ _tl1075410906_))
                                (declare (not safe))
                                (_K1075210901_ _rest10911_ _hd-bind10909_)))
                            (let ()
                              (declare (not safe))
                              (_else1075010767_)))))))
                 (_generate-letrec?10499_
                  (lambda (_hd10631_)
                    (let _lp10633_ ((_rest10635_ _hd10631_))
                      (let* ((_rest1063610644_ _rest10635_)
                             (_else1063810652_ (lambda () '#t))
                             (_K1064010729_
                              (lambda (_rest10655_ _hd-bind10656_)
                                (let* ((_g1065810675_
                                        (lambda (_g1065910672_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1065910672_))))
                                       (_g1065710726_
                                        (lambda (_g1065910678_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g1065910678_))
                                              (let ((_e1066410680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g1065910678_))))
                                                (let ((_hd1066310683_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1066410680_)))
                                                      (_tl1066210685_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1066410680_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd1066310683_))
                                                      (let ((_e1066710688_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd1066310683_))))
                (let ((_hd1066610691_
                       (let () (declare (not safe)) (##car _e1066710688_)))
                      (_tl1066510693_
                       (let () (declare (not safe)) (##cdr _e1066710688_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl1066510693_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1066210685_))
                          (let ((_e1067010696_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1066210685_))))
                            (let ((_hd1066910699_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1067010696_)))
                                  (_tl1066810701_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1067010696_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl1066810701_))
                                  ((lambda (_L10704_ _L10705_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?10500_ _L10704_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp10633_ _rest10655_))
                                         '#f))
                                   _hd1066910699_
                                   _hd1066610691_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1065810675_ _g1065910678_)))))
                          (let ()
                            (declare (not safe))
                            (_g1065810675_ _g1065910678_)))
                      (let ()
                        (declare (not safe))
                        (_g1065810675_ _g1065910678_)))))
              (let () (declare (not safe)) (_g1065810675_ _g1065910678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1065810675_
                                                 _g1065910678_))))))
                                  (declare (not safe))
                                  (_g1065710726_ _hd-bind10656_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1063610644_))
                            (let ((_hd1064110732_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1063610644_)))
                                  (_tl1064210734_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1063610644_))))
                              (let* ((_hd-bind10737_ _hd1064110732_)
                                     (_rest10739_ _tl1064210734_))
                                (declare (not safe))
                                (_K1064010729_ _rest10739_ _hd-bind10737_)))
                            (let ()
                              (declare (not safe))
                              (_else1063810652_)))))))
                 (_is-lambda-expr?10500_
                  (lambda (_expr10568_)
                    (let* ((___stx1644116442_ _expr10568_)
                           (_g1057110585_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1644116442_)))))
                      (let ((___kont1644316444_
                             (lambda (_L10613_ _L10614_) '#t))
                            (___kont1644516446_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx1644116442_))
                            (let ((_e1057710597_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx1644116442_))))
                              (let ((_tl1057510602_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1057710597_)))
                                    (_hd1057610600_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1057710597_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1057610600_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd1057610600_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1057510602_))
                                            (let ((_e1058010605_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1057510602_))))
                                              (let ((_tl1057810610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1058010605_)))
                                                    (_hd1057910608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1058010605_))))
                                                (___kont1644316444_
                                                 _tl1057810610_
                                                 _hd1057910608_)))
                                            (___kont1644516446_))
                                        (___kont1644516446_))
                                    (___kont1644516446_))))
                            (___kont1644516446_)))))))
          (let* ((_g1050210519_
                  (lambda (_g1050310516_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1050310516_))))
                 (_g1050110565_
                  (lambda (_g1050310522_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1050310522_))
                        (let ((_e1050810524_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1050310522_))))
                          (let ((_hd1050710527_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1050810524_)))
                                (_tl1050610529_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1050810524_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1050610529_))
                                (let ((_e1051110532_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1050610529_))))
                                  (let ((_hd1051010535_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1051110532_)))
                                        (_tl1050910537_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1051110532_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1050910537_))
                                        (let ((_e1051410540_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1050910537_))))
                                          (let ((_hd1051310543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1051410540_)))
                                                (_tl1051210545_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1051410540_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1051210545_))
                                                ((lambda (_L10548_ _L10549_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L10549_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?10499_
                                                              _L10549_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              'letrec
                                                              _L10549_
                                                              _L10548_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              'letrec*
                                                              _L10549_
                                                              _L10548_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values10498_
                                                          _L10549_
                                                          _L10548_))))
                                                 _hd1051310543_
                                                 _hd1051010535_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1050210519_
                                                   _g1050310522_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1050210519_ _g1050310522_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1050210519_ _g1050310522_)))))
                        (let ()
                          (declare (not safe))
                          (_g1050210519_ _g1050310522_))))))
            (declare (not safe))
            (_g1050110565_ _stx10496_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd10433_)
        (let _lp10435_ ((_rest10437_ _hd10433_))
          (let* ((_rest1043810454_ _rest10437_)
                 (_else1044110462_ (lambda () '#f)))
            (let ((_K1044410475_
                   (lambda (_rest10473_)
                     (let () (declare (not safe)) (_lp10435_ _rest10473_))))
                  (_K1044310467_ (lambda () '#t)))
              (let ((_try-match1044010470_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest1043810454_))
                           (let () (declare (not safe)) (_K1044310467_))
                           (let () (declare (not safe)) (_else1044110462_))))))
                (if (let () (declare (not safe)) (##pair? _rest1043810454_))
                    (let ((_tl1044610480_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest1043810454_)))
                          (_hd1044510478_
                           (let ()
                             (declare (not safe))
                             (##car _rest1043810454_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd1044510478_))
                          (let ((_tl1044810485_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd1044510478_)))
                                (_hd1044710483_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd1044510478_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1044710483_))
                                (let ((_tl1045210488_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1044710483_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1045210488_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1044810485_))
                                          (let ((_tl1045010491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1044810485_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl1045010491_))
                                                (let ((_rest10494_
                                                       _tl1044610480_))
                                                  (declare (not safe))
                                                  (_lp10435_ _rest10494_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else1044110462_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else1044110462_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1044110462_))))
                                (let ()
                                  (declare (not safe))
                                  (_else1044110462_))))
                          (let () (declare (not safe)) (_else1044110462_))))
                    (let ()
                      (declare (not safe))
                      (_try-match1044010470_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_form10345_ _hd10346_ _body10347_ _compiled-body?10348_)
        (letrec ((_generate110350_
                  (lambda (_bind10389_)
                    (let* ((_bind1039010401_ _bind10389_)
                           (_E1039210405_
                            (lambda ()
                              (error '"No clause matching" _bind1039010401_)))
                           (_K1039310411_
                            (lambda (_expr10408_ _id10409_)
                              (let ((__tmp17445
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id10409_)))
                                    (__tmp17443
                                     (let ((__tmp17444
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _expr10408_))))
                                       (declare (not safe))
                                       (cons __tmp17444 '()))))
                                (declare (not safe))
                                (cons __tmp17445 __tmp17443)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind1039010401_))
                          (let ((_hd1039410414_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind1039010401_)))
                                (_tl1039510416_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind1039010401_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1039410414_))
                                (let ((_hd1039810419_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd1039410414_)))
                                      (_tl1039910421_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1039410414_))))
                                  (let ((_id10424_ _hd1039810419_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1039910421_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl1039510416_))
                                            (let ((_hd1039610426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl1039510416_)))
                                                  (_tl1039710428_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl1039510416_))))
                                              (let ((_expr10431_
                                                     _hd1039610426_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl1039710428_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K1039310411_
                                                       _expr10431_
                                                       _id10424_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E1039210405_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E1039210405_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E1039210405_)))))
                                (let () (declare (not safe)) (_E1039210405_))))
                          (let () (declare (not safe)) (_E1039210405_)))))))
          (let* ((_bind10352_
                  (let ()
                    (declare (not safe))
                    (map _generate110350_ _hd10346_)))
                 (_body10354_
                  (if _compiled-body?10348_
                      _body10347_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e _body10347_))))
                 (_body10386_
                  (let* ((_body1035510363_ _body10354_)
                         (_else1035710371_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body10354_ '()))))
                         (_K1035910376_ (lambda (_exprs10374_) _exprs10374_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body1035510363_))
                        (let ((_hd1036010379_
                               (let ()
                                 (declare (not safe))
                                 (##car _body1035510363_)))
                              (_tl1036110381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body1035510363_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd1036010379_ 'begin))
                              (let ((_exprs10384_ _tl1036110381_))
                                (declare (not safe))
                                (_K1035910376_ _exprs10384_))
                              (let ()
                                (declare (not safe))
                                (_else1035710371_))))
                        (let () (declare (not safe)) (_else1035710371_))))))
            (let ((__tmp17446
                   (let ()
                     (declare (not safe))
                     (cons _bind10352_ _body10386_))))
              (declare (not safe))
              (cons _form10345_ __tmp17446))))))
    (define gxc#generate-runtime-quote%
      (lambda (_stx10253_)
        (letrec ((_generate110255_
                  (lambda (_datum10307_)
                    (if (or (let () (declare (not safe)) (null? _datum10307_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _datum10307_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum10307_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum10307_)))
                        _datum10307_
                        (if (let ()
                              (declare (not safe))
                              (uninterned-symbol? _datum10307_))
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum10307_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum10307_))
                                (let ((__tmp17451
                                       (let ((__tmp17452
                                              (let ()
                                                (declare (not safe))
                                                (car _datum10307_))))
                                         (declare (not safe))
                                         (_generate110255_ __tmp17452)))
                                      (__tmp17449
                                       (let ((__tmp17450
                                              (let ()
                                                (declare (not safe))
                                                (cdr _datum10307_))))
                                         (declare (not safe))
                                         (_generate110255_ __tmp17450))))
                                  (declare (not safe))
                                  (cons __tmp17451 __tmp17449))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum10307_))
                                    (let ((__tmp17447
                                           (let ((__tmp17448
                                                  (let ()
                                                    (declare (not safe))
                                                    (unbox _datum10307_))))
                                             (declare (not safe))
                                             (_generate110255_ __tmp17448))))
                                      (declare (not safe))
                                      (box __tmp17447))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum10307_))
                                        (let ()
                                          (declare (not safe))
                                          (vector-map
                                           _generate110255_
                                           _datum10307_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s64vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u64vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _datum10307_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector? _datum10307_)))
                                            _datum10307_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx10253_)))))))))))
          (let* ((_g1025710270_
                  (lambda (_g1025810267_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1025810267_))))
                 (_g1025610304_
                  (lambda (_g1025810273_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1025810273_))
                        (let ((_e1026210275_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1025810273_))))
                          (let ((_hd1026110278_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1026210275_)))
                                (_tl1026010280_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1026210275_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1026010280_))
                                (let ((_e1026510283_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1026010280_))))
                                  (let ((_hd1026410286_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1026510283_)))
                                        (_tl1026310288_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1026510283_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1026310288_))
                                        ((lambda (_L10291_)
                                           (let ((__tmp17453
                                                  (let ((__tmp17454
                                                         (let ((__tmp17455
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L10291_))))
                   (declare (not safe))
                   (_generate110255_ __tmp17455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17454 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp17453)))
                                         _hd1026410286_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1025710270_ _g1025810273_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1025710270_ _g1025810273_)))))
                        (let ()
                          (declare (not safe))
                          (_g1025710270_ _g1025810273_))))))
            (declare (not safe))
            (_g1025610304_ _stx10253_)))))
    (define gxc#generate-runtime-call%
      (lambda (_stx9771_)
        (letrec ((_compile-call9773_
                  (lambda (_rator9997_ _rands9998_)
                    (let ((_rator10000_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _rator9997_)))
                          (_rands10001_
                           (let ()
                             (declare (not safe))
                             (map gxc#compile-e _rands9998_))))
                      (let* ((___stx1648816489_ _rator10000_)
                             (_g1000410056_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1648816489_)))))
                        (let ((___kont1649016491_
                               (lambda (_L10180_ _L10181_ _L10182_ _L10183_)
                                 (if (fx= (length _rands10001_)
                                          (length (let ((__tmp17460
                                                         (lambda (_g1021910222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1022010224_)
                   (let ()
                     (declare (not safe))
                     (cons _g1021910222_ _g1022010224_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17460
                                                            '()
                                                            _L10182_))))
                                     (let* ((_id10227_ _L10183_)
                                            (_args10236_
                                             (let ((__tmp17456
                                                    (lambda (_g1022810231_
                                                             _g1022910233_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1022810231_
                                                              _g1022910233_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp17456
                                                       '()
                                                       _L10182_)))
                                            (_body10245_
                                             (let ((__tmp17457
                                                    (lambda (_g1023710240_
                                                             _g1023810242_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1023710240_
                                                              _g1023810242_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp17457
                                                       '()
                                                       _L10181_)))
                                            (_init10247_
                                             (let ()
                                               (declare (not safe))
                                               (map list
                                                    _args10236_
                                                    _rands10001_))))
                                       (let ((__tmp17458
                                              (let ((__tmp17459
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init10247_
                                                             _body10245_))))
                                                (declare (not safe))
                                                (cons _id10227_ __tmp17459))))
                                         (declare (not safe))
                                         (cons 'let __tmp17458)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx9771_)))))
                              (___kont1649616497_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator10000_ _rands10001_)))))
                          (let ((___match1655516556_
                                 (lambda (_e1001210068_
                                          _hd1001110071_
                                          _tl1001010073_
                                          _e1001510076_
                                          _hd1001410079_
                                          _tl1001310081_
                                          _e1001810084_
                                          _hd1001710087_
                                          _tl1001610089_
                                          _e1002110092_
                                          _hd1002010095_
                                          _tl1001910097_
                                          _e1002410100_
                                          _hd1002310103_
                                          _tl1002210105_
                                          _e1002710108_
                                          _hd1002610111_
                                          _tl1002510113_
                                          _e1003010116_
                                          _hd1002910119_
                                          _tl1002810121_
                                          ___splice1649216493_
                                          _target1003110124_
                                          _tl1003310126_)
                                   (letrec ((_loop1003410129_
                                             (lambda (_hd1003210132_
                                                      _arg1003810134_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd1003210132_))
                                                   (let ((_e1003510137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd1003210132_))))
                                                     (let ((_lp-tl1003710142_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1003510137_)))
                                                           (_lp-hd1003610140_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1003510137_))))
                                                       (let ((__tmp17462
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd1003610140_ _arg1003810134_))))
                 (declare (not safe))
                 (_loop1003410129_ _lp-tl1003710142_ __tmp17462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg1003910145_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (reverse _arg1003810134_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl1002810121_))
                                                         (let ((___splice1649416495_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl1002810121_ '0))))
                   (let ((_tl1004210150_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1649416495_ '1)))
                         (_target1004010148_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1649416495_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl1004210150_))
                         (letrec ((_loop1004310153_
                                   (lambda (_hd1004110156_ _body1004710158_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd1004110156_))
                                         (let ((_e1004410161_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _hd1004110156_))))
                                           (let ((_lp-tl1004610166_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1004410161_)))
                                                 (_lp-hd1004510164_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1004410161_))))
                                             (let ((__tmp17461
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd1004510164_
                                                            _body1004710158_))))
                                               (declare (not safe))
                                               (_loop1004310153_
                                                _lp-tl1004610166_
                                                __tmp17461))))
                                         (let ((_body1004810169_
                                                (let ()
                                                  (declare (not safe))
                                                  (reverse _body1004710158_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null? _tl1002210105_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl1001610089_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl1001310081_))
                                                       (let ((_e1005110172_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl1001310081_))))
                 (let ((_tl1004910177_
                        (let () (declare (not safe)) (##cdr _e1005110172_)))
                       (_hd1005010175_
                        (let () (declare (not safe)) (##car _e1005110172_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl1004910177_))
                       (let ((_L10180_ _hd1005010175_)
                             (_L10181_ _body1004810169_)
                             (_L10182_ _arg1003910145_)
                             (_L10183_ _hd1002010095_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L10183_ _L10180_))
                             (___kont1649016491_
                              _L10180_
                              _L10181_
                              _L10182_
                              _L10183_)
                             (___kont1649616497_)))
                       (___kont1649616497_))))
               (___kont1649616497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1649616497_))
                                               (___kont1649616497_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop1004310153_ _target1004010148_ '())))
                         (___kont1649616497_))))
                 (___kont1649616497_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop1003410129_
                                        _target1003110124_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx1648816489_))
                                (let ((_e1001210068_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx1648816489_))))
                                  (let ((_tl1001010073_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1001210068_)))
                                        (_hd1001110071_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1001210068_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd1001110071_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd1001110071_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl1001010073_))
                                                (let ((_e1001510076_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl1001010073_))))
                                                  (let ((_tl1001310081_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1001510076_)))
                                                        (_hd1001410079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1001510076_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1001410079_))
                                                        (let ((_e1001810084_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1001410079_))))
                  (let ((_tl1001610089_
                         (let () (declare (not safe)) (##cdr _e1001810084_)))
                        (_hd1001710087_
                         (let () (declare (not safe)) (##car _e1001810084_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1001710087_))
                        (let ((_e1002110092_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1001710087_))))
                          (let ((_tl1001910097_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1002110092_)))
                                (_hd1002010095_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1002110092_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1001910097_))
                                (let ((_e1002410100_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1001910097_))))
                                  (let ((_tl1002210105_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1002410100_)))
                                        (_hd1002310103_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1002410100_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd1002310103_))
                                        (let ((_e1002710108_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd1002310103_))))
                                          (let ((_tl1002510113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1002710108_)))
                                                (_hd1002610111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1002710108_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd1002610111_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd1002610111_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1002510113_))
                                                        (let ((_e1003010116_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1002510113_))))
                  (let ((_tl1002810121_
                         (let () (declare (not safe)) (##cdr _e1003010116_)))
                        (_hd1002910119_
                         (let () (declare (not safe)) (##car _e1003010116_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd1002910119_))
                        (let ((___splice1649216493_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _hd1002910119_ '0))))
                          (let ((_tl1003310126_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1649216493_ '1)))
                                (_target1003110124_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1649216493_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1003310126_))
                                (___match1655516556_
                                 _e1001210068_
                                 _hd1001110071_
                                 _tl1001010073_
                                 _e1001510076_
                                 _hd1001410079_
                                 _tl1001310081_
                                 _e1001810084_
                                 _hd1001710087_
                                 _tl1001610089_
                                 _e1002110092_
                                 _hd1002010095_
                                 _tl1001910097_
                                 _e1002410100_
                                 _hd1002310103_
                                 _tl1002210105_
                                 _e1002710108_
                                 _hd1002610111_
                                 _tl1002510113_
                                 _e1003010116_
                                 _hd1002910119_
                                 _tl1002810121_
                                 ___splice1649216493_
                                 _target1003110124_
                                 _tl1003310126_)
                                (___kont1649616497_))))
                        (___kont1649616497_))))
                (___kont1649616497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1649616497_))
                                                (___kont1649616497_))))
                                        (___kont1649616497_))))
                                (___kont1649616497_))))
                        (___kont1649616497_))))
                (___kont1649616497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1649616497_))
                                            (___kont1649616497_))
                                        (___kont1649616497_))))
                                (___kont1649616497_)))))))))
          (let* ((_g97759789_
                  (lambda (_g97769786_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g97769786_))))
                 (_g97749994_
                  (lambda (_g97769792_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g97769792_))
                        (let ((_e97819794_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g97769792_))))
                          (let ((_hd97809797_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e97819794_)))
                                (_tl97799799_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e97819794_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl97799799_))
                                (let ((_e97849802_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl97799799_))))
                                  (let ((_hd97839805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e97849802_)))
                                        (_tl97829807_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e97849802_))))
                                    ((lambda (_L9810_ _L9811_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call9773_
                                              _L9811_
                                              _L9810_))
                                           (let* ((___stx1660416605_ _L9811_)
                                                  (_g98269838_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1660416605_)))))
                                             (let ((___kont1660616607_
                                                    (lambda ()
                                                      (let ((_f9868_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e _L9811_))))
                (if (let ((__tmp17476
                           (let ()
                             (declare (not safe))
                             (symbol->string _f9868_))))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp17476))
                    (let _lp9870_ ((_rest9873_
                                    (let ()
                                      (declare (not safe))
                                      (reverse _L9810_)))
                                   (_bind9875_ '())
                                   (_args9876_ '()))
                      (let* ((_rest98779885_ _rest9873_)
                             (_else98799893_
                              (lambda ()
                                (let ((__tmp17463
                                       (let ((__tmp17464
                                              (let ((__tmp17465
                                                     (let ((__tmp17466
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f9868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args9876_))))
               (declare (not safe))
               (cons __tmp17466 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp17465))))
                                         (declare (not safe))
                                         (cons _bind9875_ __tmp17464))))
                                  (declare (not safe))
                                  (cons 'let __tmp17463))))
                             (_K98819979_
                              (lambda (_rest9896_ _e9897_)
                                (let* ((___stx1655816559_ _e9897_)
                                       (_g99029920_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx1655816559_)))))
                                  (let ((___kont1656016561_
                                         (lambda ()
                                           (let ((__tmp17467
                                                  (let ((__tmp17468
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _e9897_))))
                                                    (declare (not safe))
                                                    (cons __tmp17468
                                                          _args9876_))))
                                             (declare (not safe))
                                             (_lp9870_
                                              _rest9896_
                                              _bind9875_
                                              __tmp17467))))
                                        (___kont1656216563_
                                         (lambda ()
                                           (let ((__tmp17469
                                                  (let ((__tmp17470
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _e9897_))))
                                                    (declare (not safe))
                                                    (cons __tmp17470
                                                          _args9876_))))
                                             (declare (not safe))
                                             (_lp9870_
                                              _rest9896_
                                              _bind9875_
                                              __tmp17469))))
                                        (___kont1656416565_
                                         (lambda ()
                                           (let ((_tmp9927_
                                                  (make-symbol
                                                   (let ()
                                                     (declare (not safe))
                                                     (gensym '__tmp)))))
                                             (let ((__tmp17472
                                                    (let ((__tmp17473
                                                           (let ((__tmp17474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp17475
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e _e9897_))))
                            (declare (not safe))
                            (cons __tmp17475 '()))))
                     (declare (not safe))
                     (cons _tmp9927_ __tmp17474))))
              (declare (not safe))
              (cons __tmp17473 _bind9875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp17471
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp9927_
                                                            _args9876_))))
                                               (declare (not safe))
                                               (_lp9870_
                                                _rest9896_
                                                __tmp17472
                                                __tmp17471))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1655816559_))
                                        (let ((_e99069958_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1655816559_))))
                                          (let ((_tl99049963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e99069958_)))
                                                (_hd99059961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e99069958_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd99059961_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd99059961_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl99049963_))
                                                        (let ((_e99099966_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl99049963_))))
                  (let ((_tl99079971_
                         (let () (declare (not safe)) (##cdr _e99099966_)))
                        (_hd99089969_
                         (let () (declare (not safe)) (##car _e99099966_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl99079971_))
                        (___kont1656016561_)
                        (___kont1656416565_))))
                (___kont1656416565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd99059961_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl99049963_))
                                                            (let ((_e99159943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl99049963_))))
                      (let ((_tl99139948_
                             (let () (declare (not safe)) (##cdr _e99159943_)))
                            (_hd99149946_
                             (let ()
                               (declare (not safe))
                               (##car _e99159943_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl99139948_))
                            (___kont1656216563_)
                            (___kont1656416565_))))
                    (___kont1656416565_))
                (___kont1656416565_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1656416565_))))
                                        (___kont1656416565_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest98779885_))
                            (let ((_hd98829982_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest98779885_)))
                                  (_tl98839984_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest98779885_))))
                              (let* ((_e9987_ _hd98829982_)
                                     (_rest9989_ _tl98839984_))
                                (declare (not safe))
                                (_K98819979_ _rest9989_ _e9987_)))
                            (let () (declare (not safe)) (_else98799893_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call9773_ _L9811_ _L9810_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1660816609_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call9773_
                                                         _L9811_
                                                         _L9810_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx1660416605_))
                                                   (let ((_e98309850_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx1660416605_))))
                                                     (let ((_tl98289855_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e98309850_)))
                                                           (_hd98299853_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e98309850_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd98299853_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd98299853_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl98289855_))
                           (let ((_e98339858_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl98289855_))))
                             (let ((_tl98319863_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e98339858_)))
                                   (_hd98329861_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e98339858_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl98319863_))
                                   (___kont1660616607_)
                                   (___kont1660816609_))))
                           (___kont1660816609_))
                       (___kont1660816609_))
                   (___kont1660816609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1660816609_))))))
                                     _tl97829807_
                                     _hd97839805_)))
                                (let ()
                                  (declare (not safe))
                                  (_g97759789_ _g97769792_)))))
                        (let ()
                          (declare (not safe))
                          (_g97759789_ _g97769792_))))))
            (declare (not safe))
            (_g97749994_ _stx9771_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_stx9559_)
        (let* ((___stx1667616677_ _stx9559_)
               (_g95629582_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1667616677_)))))
          (let ((___kont1667816679_
                 (lambda (_L9626_ _L9627_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _stx9559_))
                       (let ((_f9645_ (let ((__tmp17477
                                             (let ((__tmp17479
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)))
                                                   (__tmp17478
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L9627_ '()))))
                                               (declare (not safe))
                                               (cons __tmp17479 __tmp17478))))
                                        (declare (not safe))
                                        (gxc#compile-e __tmp17477))))
                         (let _lp9647_ ((_rest9650_
                                         (let ()
                                           (declare (not safe))
                                           (reverse _L9626_)))
                                        (_bind9652_ '())
                                        (_args9653_ '()))
                           (let* ((_rest96549662_ _rest9650_)
                                  (_else96569670_
                                   (lambda ()
                                     (let ((__tmp17480
                                            (let ((__tmp17481
                                                   (let ((__tmp17482
                                                          (let ((__tmp17483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f9645_ _args9653_))))
                    (declare (not safe))
                    (cons __tmp17483 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp17482))))
                                              (declare (not safe))
                                              (cons _bind9652_ __tmp17481))))
                                       (declare (not safe))
                                       (cons 'let __tmp17480))))
                                  (_K96589756_
                                   (lambda (_rest9673_ _e9674_)
                                     (let* ((___stx1663016631_ _e9674_)
                                            (_g96799697_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx1663016631_)))))
                                       (let ((___kont1663216633_
                                              (lambda ()
                                                (let ((__tmp17484
                                                       (let ((__tmp17485
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e _e9674_))))
                 (declare (not safe))
                 (cons __tmp17485 _args9653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp9647_
                                                   _rest9673_
                                                   _bind9652_
                                                   __tmp17484))))
                                             (___kont1663416635_
                                              (lambda ()
                                                (let ((__tmp17486
                                                       (let ((__tmp17487
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e _e9674_))))
                 (declare (not safe))
                 (cons __tmp17487 _args9653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp9647_
                                                   _rest9673_
                                                   _bind9652_
                                                   __tmp17486))))
                                             (___kont1663616637_
                                              (lambda ()
                                                (let ((_tmp9704_
                                                       (make-symbol
                                                        (let ()
                                                          (declare (not safe))
                                                          (gensym '__tmp)))))
                                                  (let ((__tmp17489
                                                         (let ((__tmp17490
                                                                (let ((__tmp17491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17492
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _e9674_))))
                                 (declare (not safe))
                                 (cons __tmp17492 '()))))
                          (declare (not safe))
                          (cons _tmp9704_ __tmp17491))))
                   (declare (not safe))
                   (cons __tmp17490 _bind9652_)))
                (__tmp17488
                 (let () (declare (not safe)) (cons _tmp9704_ _args9653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp9647_
                                                     _rest9673_
                                                     __tmp17489
                                                     __tmp17488))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx1663016631_))
                                             (let ((_e96839735_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx1663016631_))))
                                               (let ((_tl96819740_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e96839735_)))
                                                     (_hd96829738_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e96839735_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd96829738_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd96829738_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl96819740_))
                     (let ((_e96869743_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl96819740_))))
                       (let ((_tl96849748_
                              (let ()
                                (declare (not safe))
                                (##cdr _e96869743_)))
                             (_hd96859746_
                              (let ()
                                (declare (not safe))
                                (##car _e96869743_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl96849748_))
                             (___kont1663216633_)
                             (___kont1663616637_))))
                     (___kont1663616637_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd96829738_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl96819740_))
                         (let ((_e96929720_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl96819740_))))
                           (let ((_tl96909725_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e96929720_)))
                                 (_hd96919723_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e96929720_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl96909725_))
                                 (___kont1663416635_)
                                 (___kont1663616637_))))
                         (___kont1663616637_))
                     (___kont1663616637_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1663616637_))))
                                             (___kont1663616637_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest96549662_))
                                 (let ((_hd96599759_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest96549662_)))
                                       (_tl96609761_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest96549662_))))
                                   (let* ((_e9764_ _hd96599759_)
                                          (_rest9766_ _tl96609761_))
                                     (declare (not safe))
                                     (_K96589756_ _rest9766_ _e9764_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else96569670_)))))))))
                (___kont1668016681_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _stx9559_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx1667616677_))
                (let ((_e95689594_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx1667616677_))))
                  (let ((_tl95669599_
                         (let () (declare (not safe)) (##cdr _e95689594_)))
                        (_hd95679597_
                         (let () (declare (not safe)) (##car _e95689594_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl95669599_))
                        (let ((_e95719602_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl95669599_))))
                          (let ((_tl95699607_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e95719602_)))
                                (_hd95709605_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e95719602_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd95709605_))
                                (let ((_e95749610_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd95709605_))))
                                  (let ((_tl95729615_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e95749610_)))
                                        (_hd95739613_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e95749610_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd95739613_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq? '%#ref _hd95739613_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _tl95729615_))
                                                (let ((_e95779618_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl95729615_))))
                                                  (let ((_tl95759623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e95779618_)))
                                                        (_hd95769621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e95779618_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl95759623_))
                                                        (___kont1667816679_
                                                         _tl95699607_
                                                         _hd95769621_)
                                                        (___kont1668016681_))))
                                                (___kont1668016681_))
                                            (___kont1668016681_))
                                        (___kont1668016681_))))
                                (___kont1668016681_))))
                        (___kont1668016681_))))
                (___kont1668016681_))))))
    (define gxc#generate-runtime-if%
      (lambda (_stx9372_)
        (letrec ((_simplify9374_
                  (lambda (_code9459_)
                    (let* ((_code94609478_ _code9459_)
                           (_else94629486_ (lambda () _code9459_))
                           (_K94649522_
                            (lambda (_expr9489_ _test9490_)
                              (let* ((_expr94919499_ _expr9489_)
                                     (_else94939507_
                                      (lambda ()
                                        (let ((__tmp17493
                                               (let ((__tmp17494
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr9489_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test9490_
                                                       __tmp17494))))
                                          (declare (not safe))
                                          (cons 'and __tmp17493))))
                                     (_K94959512_
                                      (lambda (_exprs9510_)
                                        (let ((__tmp17495
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test9490_
                                                       _exprs9510_))))
                                          (declare (not safe))
                                          (cons 'and __tmp17495)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr94919499_))
                                    (let ((_hd94969515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr94919499_)))
                                          (_tl94979517_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr94919499_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd94969515_ 'and))
                                          (let ((_exprs9520_ _tl94979517_))
                                            (declare (not safe))
                                            (_K94959512_ _exprs9520_))
                                          (let ()
                                            (declare (not safe))
                                            (_else94939507_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else94939507_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code94609478_))
                          (let ((_hd94659525_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code94609478_)))
                                (_tl94669527_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code94609478_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd94659525_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl94669527_))
                                    (let ((_hd94679530_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl94669527_)))
                                          (_tl94689532_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl94669527_))))
                                      (let ((_test9535_ _hd94679530_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl94689532_))
                                            (let ((_hd94699537_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl94689532_)))
                                                  (_tl94709539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl94689532_))))
                                              (let ((_expr9542_ _hd94699537_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl94709539_))
                                                    (let ((_hd94719544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl94709539_)))
                                                          (_tl94729546_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl94709539_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd94719544_))
                                                          (let ((_hd94739549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _hd94719544_)))
                        (_tl94749551_
                         (let () (declare (not safe)) (##cdr _hd94719544_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd94739549_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl94749551_))
                            (let ((_hd94759554_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl94749551_)))
                                  (_tl94769556_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl94749551_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd94759554_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl94769556_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl94729546_))
                                          (let ()
                                            (declare (not safe))
                                            (_K94649522_
                                             _expr9542_
                                             _test9535_))
                                          (let ()
                                            (declare (not safe))
                                            (_else94629486_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else94629486_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else94629486_))))
                            (let () (declare (not safe)) (_else94629486_)))
                        (let () (declare (not safe)) (_else94629486_))))
                  (let () (declare (not safe)) (_else94629486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else94629486_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else94629486_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else94629486_)))
                                (let ()
                                  (declare (not safe))
                                  (_else94629486_))))
                          (let () (declare (not safe)) (_else94629486_)))))))
          (let* ((_g93769397_
                  (lambda (_g93779394_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g93779394_))))
                 (_g93759456_
                  (lambda (_g93779400_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g93779400_))
                        (let ((_e93839402_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g93779400_))))
                          (let ((_hd93829405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e93839402_)))
                                (_tl93819407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e93839402_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl93819407_))
                                (let ((_e93869410_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl93819407_))))
                                  (let ((_hd93859413_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e93869410_)))
                                        (_tl93849415_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e93869410_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl93849415_))
                                        (let ((_e93899418_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl93849415_))))
                                          (let ((_hd93889421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e93899418_)))
                                                (_tl93879423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e93899418_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _tl93879423_))
                                                (let ((_e93929426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl93879423_))))
                                                  (let ((_hd93919429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e93929426_)))
                                                        (_tl93909431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e93929426_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl93909431_))
                                                        ((lambda (_L9434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9435_
                          _L9436_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp17503
                              (let ((__tmp17504
                                     (let ((__tmp17509
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _L9436_)))
                                           (__tmp17505
                                            (let ((__tmp17508
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L9435_)))
                                                  (__tmp17506
                                                   (let ((__tmp17507
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _L9434_))))
                                                     (declare (not safe))
                                                     (cons __tmp17507 '()))))
                                              (declare (not safe))
                                              (cons __tmp17508 __tmp17506))))
                                       (declare (not safe))
                                       (cons __tmp17509 __tmp17505))))
                                (declare (not safe))
                                (cons 'if __tmp17504))))
                         (declare (not safe))
                         (_simplify9374_ __tmp17503))
                       (let ((__tmp17496
                              (let ((__tmp17501
                                     (let ((__tmp17502
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L9436_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp17502
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp17497
                                     (let ((__tmp17500
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _L9435_)))
                                           (__tmp17498
                                            (let ((__tmp17499
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L9434_))))
                                              (declare (not safe))
                                              (cons __tmp17499 '()))))
                                       (declare (not safe))
                                       (cons __tmp17500 __tmp17498))))
                                (declare (not safe))
                                (cons __tmp17501 __tmp17497))))
                         (declare (not safe))
                         (cons 'if __tmp17496))))
                 _hd93919429_
                 _hd93889421_
                 _hd93859413_)
                (let () (declare (not safe)) (_g93769397_ _g93779400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g93769397_ _g93779400_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g93769397_ _g93779400_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g93769397_ _g93779400_)))))
                        (let ()
                          (declare (not safe))
                          (_g93769397_ _g93779400_))))))
            (declare (not safe))
            (_g93759456_ _stx9372_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_stx9321_)
        (let* ((_g93239336_
                (lambda (_g93249333_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g93249333_))))
               (_g93229369_
                (lambda (_g93249339_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g93249339_))
                      (let ((_e93289341_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g93249339_))))
                        (let ((_hd93279344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e93289341_)))
                              (_tl93269346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e93289341_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl93269346_))
                              (let ((_e93319349_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl93269346_))))
                                (let ((_hd93309352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e93319349_)))
                                      (_tl93299354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e93319349_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl93299354_))
                                      ((lambda (_L9357_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L9357_)))
                                       _hd93309352_)
                                      (let ()
                                        (declare (not safe))
                                        (_g93239336_ _g93249339_)))))
                              (let ()
                                (declare (not safe))
                                (_g93239336_ _g93249339_)))))
                      (let ()
                        (declare (not safe))
                        (_g93239336_ _g93249339_))))))
          (declare (not safe))
          (_g93229369_ _stx9321_))))
    (define gxc#generate-runtime-setq%
      (lambda (_stx9254_)
        (let* ((_g92569273_
                (lambda (_g92579270_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g92579270_))))
               (_g92559318_
                (lambda (_g92579276_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g92579276_))
                      (let ((_e92629278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g92579276_))))
                        (let ((_hd92619281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e92629278_)))
                              (_tl92609283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e92629278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl92609283_))
                              (let ((_e92659286_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl92609283_))))
                                (let ((_hd92649289_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e92659286_)))
                                      (_tl92639291_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e92659286_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl92639291_))
                                      (let ((_e92689294_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl92639291_))))
                                        (let ((_hd92679297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e92689294_)))
                                              (_tl92669299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e92689294_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl92669299_))
                                              ((lambda (_L9302_ _L9303_)
                                                 (let ((__tmp17510
                                                        (let ((__tmp17513
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L9303_)))
                      (__tmp17511
                       (let ((__tmp17512
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _L9302_))))
                         (declare (not safe))
                         (cons __tmp17512 '()))))
                  (declare (not safe))
                  (cons __tmp17513 __tmp17511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp17510)))
                                               _hd92679297_
                                               _hd92649289_)
                                              (let ()
                                                (declare (not safe))
                                                (_g92569273_ _g92579276_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g92569273_ _g92579276_)))))
                              (let ()
                                (declare (not safe))
                                (_g92569273_ _g92579276_)))))
                      (let ()
                        (declare (not safe))
                        (_g92569273_ _g92579276_))))))
          (declare (not safe))
          (_g92559318_ _stx9254_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_stx9066_)
        (let* ((_g90689085_
                (lambda (_g90699082_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g90699082_))))
               (_g90679251_
                (lambda (_g90699088_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g90699088_))
                      (let ((_e90749090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g90699088_))))
                        (let ((_hd90739093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e90749090_)))
                              (_tl90729095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e90749090_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl90729095_))
                              (let ((_e90779098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl90729095_))))
                                (let ((_hd90769101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e90779098_)))
                                      (_tl90759103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e90779098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl90759103_))
                                      (let ((_e90809106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl90759103_))))
                                        (let ((_hd90799109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e90809106_)))
                                              (_tl90789111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e90809106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl90789111_))
                                              ((lambda (_L9114_ _L9115_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp17528
                                                            (let ((__tmp17531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _L9114_)))
                          (__tmp17529
                           (let ((__tmp17530
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _L9115_))))
                             (declare (not safe))
                             (cons __tmp17530 '()))))
                      (declare (not safe))
                      (cons __tmp17531 __tmp17529))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp17528))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9130_ ((_rest9133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17527
                                    (let ()
                                      (declare (not safe))
                                      (cons _L9114_ '()))))
                               (declare (not safe))
                               (cons _L9115_ __tmp17527)))
                            (_bind9135_ '())
                            (_args9136_ '()))
               (let* ((_rest91379145_ _rest9133_)
                      (_else91399153_
                       (lambda ()
                         (let ((__tmp17514
                                (let ((__tmp17515
                                       (let ((__tmp17516
                                              (let ((__tmp17517
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args9136_))))
                                                (declare (not safe))
                                                (cons __tmp17517 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp17516))))
                                  (declare (not safe))
                                  (cons _bind9135_ __tmp17515))))
                           (declare (not safe))
                           (cons 'let __tmp17514))))
                      (_K91419239_
                       (lambda (_rest9156_ _e9157_)
                         (let* ((___stx1671416715_ _e9157_)
                                (_g91629180_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx1671416715_)))))
                           (let ((___kont1671616717_
                                  (lambda ()
                                    (let ((__tmp17518
                                           (let ((__tmp17519
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9157_))))
                                             (declare (not safe))
                                             (cons __tmp17519 _args9136_))))
                                      (declare (not safe))
                                      (_lp9130_
                                       _rest9156_
                                       _bind9135_
                                       __tmp17518))))
                                 (___kont1671816719_
                                  (lambda ()
                                    (let ((__tmp17520
                                           (let ((__tmp17521
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9157_))))
                                             (declare (not safe))
                                             (cons __tmp17521 _args9136_))))
                                      (declare (not safe))
                                      (_lp9130_
                                       _rest9156_
                                       _bind9135_
                                       __tmp17520))))
                                 (___kont1672016721_
                                  (lambda ()
                                    (let ((_tmp9187_
                                           (make-symbol
                                            (let ()
                                              (declare (not safe))
                                              (gensym '__tmp)))))
                                      (let ((__tmp17523
                                             (let ((__tmp17524
                                                    (let ((__tmp17525
                                                           (let ((__tmp17526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e9157_))))
                     (declare (not safe))
                     (cons __tmp17526 '()))))
              (declare (not safe))
              (cons _tmp9187_ __tmp17525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17524 _bind9135_)))
                                            (__tmp17522
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp9187_ _args9136_))))
                                        (declare (not safe))
                                        (_lp9130_
                                         _rest9156_
                                         __tmp17523
                                         __tmp17522))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx1671416715_))
                                 (let ((_e91669218_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx1671416715_))))
                                   (let ((_tl91649223_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e91669218_)))
                                         (_hd91659221_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e91669218_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd91659221_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd91659221_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair? _tl91649223_))
                                                 (let ((_e91699226_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl91649223_))))
                                                   (let ((_tl91679231_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e91699226_)))
                                                         (_hd91689229_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e91699226_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl91679231_))
                                                         (___kont1671616717_)
                                                         (___kont1672016721_))))
                                                 (___kont1672016721_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd91659221_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl91649223_))
                                                     (let ((_e91759203_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl91649223_))))
                                                       (let ((_tl91739208_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e91759203_)))
                     (_hd91749206_
                      (let () (declare (not safe)) (##car _e91759203_))))
                 (if (let () (declare (not safe)) (gx#stx-null? _tl91739208_))
                     (___kont1671816719_)
                     (___kont1672016721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1672016721_))
                                                 (___kont1672016721_)))
                                         (___kont1672016721_))))
                                 (___kont1672016721_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest91379145_))
                     (let ((_hd91429242_
                            (let ()
                              (declare (not safe))
                              (##car _rest91379145_)))
                           (_tl91439244_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest91379145_))))
                       (let* ((_e9247_ _hd91429242_) (_rest9249_ _tl91439244_))
                         (declare (not safe))
                         (_K91419239_ _rest9249_ _e9247_)))
                     (let () (declare (not safe)) (_else91399153_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd90799109_
                                               _hd90769101_)
                                              (let ()
                                                (declare (not safe))
                                                (_g90689085_ _g90699088_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g90689085_ _g90699088_)))))
                              (let ()
                                (declare (not safe))
                                (_g90689085_ _g90699088_)))))
                      (let ()
                        (declare (not safe))
                        (_g90689085_ _g90699088_))))))
          (declare (not safe))
          (_g90679251_ _stx9066_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_stx8878_)
        (let* ((_g88808897_
                (lambda (_g88818894_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g88818894_))))
               (_g88799063_
                (lambda (_g88818900_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g88818900_))
                      (let ((_e88868902_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g88818900_))))
                        (let ((_hd88858905_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88868902_)))
                              (_tl88848907_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88868902_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl88848907_))
                              (let ((_e88898910_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl88848907_))))
                                (let ((_hd88888913_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88898910_)))
                                      (_tl88878915_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88898910_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl88878915_))
                                      (let ((_e88928918_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl88878915_))))
                                        (let ((_hd88918921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88928918_)))
                                              (_tl88908923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88928918_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl88908923_))
                                              ((lambda (_L8926_ _L8927_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp17546
                                                            (let ((__tmp17549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _L8926_)))
                          (__tmp17547
                           (let ((__tmp17548
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _L8927_))))
                             (declare (not safe))
                             (cons __tmp17548 '()))))
                      (declare (not safe))
                      (cons __tmp17549 __tmp17547))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp17546))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp8942_ ((_rest8945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17545
                                    (let ()
                                      (declare (not safe))
                                      (cons _L8926_ '()))))
                               (declare (not safe))
                               (cons _L8927_ __tmp17545)))
                            (_bind8947_ '())
                            (_args8948_ '()))
               (let* ((_rest89498957_ _rest8945_)
                      (_else89518965_
                       (lambda ()
                         (let ((__tmp17532
                                (let ((__tmp17533
                                       (let ((__tmp17534
                                              (let ((__tmp17535
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args8948_))))
                                                (declare (not safe))
                                                (cons __tmp17535 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp17534))))
                                  (declare (not safe))
                                  (cons _bind8947_ __tmp17533))))
                           (declare (not safe))
                           (cons 'let __tmp17532))))
                      (_K89539051_
                       (lambda (_rest8968_ _e8969_)
                         (let* ((___stx1676016761_ _e8969_)
                                (_g89748992_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx1676016761_)))))
                           (let ((___kont1676216763_
                                  (lambda ()
                                    (let ((__tmp17536
                                           (let ((__tmp17537
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e8969_))))
                                             (declare (not safe))
                                             (cons __tmp17537 _args8948_))))
                                      (declare (not safe))
                                      (_lp8942_
                                       _rest8968_
                                       _bind8947_
                                       __tmp17536))))
                                 (___kont1676416765_
                                  (lambda ()
                                    (let ((__tmp17538
                                           (let ((__tmp17539
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e8969_))))
                                             (declare (not safe))
                                             (cons __tmp17539 _args8948_))))
                                      (declare (not safe))
                                      (_lp8942_
                                       _rest8968_
                                       _bind8947_
                                       __tmp17538))))
                                 (___kont1676616767_
                                  (lambda ()
                                    (let ((_tmp8999_
                                           (make-symbol
                                            (let ()
                                              (declare (not safe))
                                              (gensym '__tmp)))))
                                      (let ((__tmp17541
                                             (let ((__tmp17542
                                                    (let ((__tmp17543
                                                           (let ((__tmp17544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8969_))))
                     (declare (not safe))
                     (cons __tmp17544 '()))))
              (declare (not safe))
              (cons _tmp8999_ __tmp17543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17542 _bind8947_)))
                                            (__tmp17540
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp8999_ _args8948_))))
                                        (declare (not safe))
                                        (_lp8942_
                                         _rest8968_
                                         __tmp17541
                                         __tmp17540))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx1676016761_))
                                 (let ((_e89789030_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx1676016761_))))
                                   (let ((_tl89769035_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e89789030_)))
                                         (_hd89779033_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e89789030_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd89779033_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd89779033_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair? _tl89769035_))
                                                 (let ((_e89819038_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl89769035_))))
                                                   (let ((_tl89799043_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e89819038_)))
                                                         (_hd89809041_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e89819038_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl89799043_))
                                                         (___kont1676216763_)
                                                         (___kont1676616767_))))
                                                 (___kont1676616767_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd89779033_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl89769035_))
                                                     (let ((_e89879015_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl89769035_))))
                                                       (let ((_tl89859020_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e89879015_)))
                     (_hd89869018_
                      (let () (declare (not safe)) (##car _e89879015_))))
                 (if (let () (declare (not safe)) (gx#stx-null? _tl89859020_))
                     (___kont1676416765_)
                     (___kont1676616767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1676616767_))
                                                 (___kont1676616767_)))
                                         (___kont1676616767_))))
                                 (___kont1676616767_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest89498957_))
                     (let ((_hd89549054_
                            (let ()
                              (declare (not safe))
                              (##car _rest89498957_)))
                           (_tl89559056_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest89498957_))))
                       (let* ((_e9059_ _hd89549054_) (_rest9061_ _tl89559056_))
                         (declare (not safe))
                         (_K89539051_ _rest9061_ _e9059_)))
                     (let () (declare (not safe)) (_else89518965_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd88918921_
                                               _hd88888913_)
                                              (let ()
                                                (declare (not safe))
                                                (_g88808897_ _g88818900_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g88808897_ _g88818900_)))))
                              (let ()
                                (declare (not safe))
                                (_g88808897_ _g88818900_)))))
                      (let ()
                        (declare (not safe))
                        (_g88808897_ _g88818900_))))))
          (declare (not safe))
          (_g88799063_ _stx8878_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_stx8795_)
        (let* ((_g87978818_
                (lambda (_g87988815_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g87988815_))))
               (_g87968875_
                (lambda (_g87988821_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g87988821_))
                      (let ((_e88048823_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g87988821_))))
                        (let ((_hd88038826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88048823_)))
                              (_tl88028828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88048823_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl88028828_))
                              (let ((_e88078831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl88028828_))))
                                (let ((_hd88068834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88078831_)))
                                      (_tl88058836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88078831_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl88058836_))
                                      (let ((_e88108839_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl88058836_))))
                                        (let ((_hd88098842_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88108839_)))
                                              (_tl88088844_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88108839_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl88088844_))
                                              (let ((_e88138847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl88088844_))))
                                                (let ((_hd88128850_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e88138847_)))
                                                      (_tl88118852_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e88138847_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl88118852_))
                                                      ((lambda (_L8855_
                                                                _L8856_
                                                                _L8857_)
                                                         (let ((__tmp17550
                                                                (let ((__tmp17556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L8855_)))
                              (__tmp17551
                               (let ((__tmp17555
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _L8856_)))
                                     (__tmp17552
                                      (let ((__tmp17554
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _L8857_)))
                                            (__tmp17553
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp17554 __tmp17553))))
                                 (declare (not safe))
                                 (cons __tmp17555 __tmp17552))))
                          (declare (not safe))
                          (cons __tmp17556 __tmp17551))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp17550)))
               _hd88128850_
               _hd88098842_
               _hd88068834_)
              (let () (declare (not safe)) (_g87978818_ _g87988821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g87978818_ _g87988821_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g87978818_ _g87988821_)))))
                              (let ()
                                (declare (not safe))
                                (_g87978818_ _g87988821_)))))
                      (let ()
                        (declare (not safe))
                        (_g87978818_ _g87988821_))))))
          (declare (not safe))
          (_g87968875_ _stx8795_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_stx8696_)
        (let* ((_g86988723_
                (lambda (_g86998720_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86998720_))))
               (_g86978792_
                (lambda (_g86998726_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g86998726_))
                      (let ((_e87068728_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g86998726_))))
                        (let ((_hd87058731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87068728_)))
                              (_tl87048733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87068728_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl87048733_))
                              (let ((_e87098736_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl87048733_))))
                                (let ((_hd87088739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87098736_)))
                                      (_tl87078741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87098736_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl87078741_))
                                      (let ((_e87128744_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl87078741_))))
                                        (let ((_hd87118747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e87128744_)))
                                              (_tl87108749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e87128744_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl87108749_))
                                              (let ((_e87158752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl87108749_))))
                                                (let ((_hd87148755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e87158752_)))
                                                      (_tl87138757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e87158752_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl87138757_))
                                                      (let ((_e87188760_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl87138757_))))
                (let ((_hd87178763_
                       (let () (declare (not safe)) (##car _e87188760_)))
                      (_tl87168765_
                       (let () (declare (not safe)) (##cdr _e87188760_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl87168765_))
                      ((lambda (_L8768_ _L8769_ _L8770_ _L8771_)
                         (let ((__tmp17557
                                (let ((__tmp17565
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _L8769_)))
                                      (__tmp17558
                                       (let ((__tmp17564
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L8768_)))
                                             (__tmp17559
                                              (let ((__tmp17563
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e
                                                        _L8770_)))
                                                    (__tmp17560
                                                     (let ((__tmp17562
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L8771_)))
                                                           (__tmp17561
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp17562 __tmp17561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17563 __tmp17560))))
                                         (declare (not safe))
                                         (cons __tmp17564 __tmp17559))))
                                  (declare (not safe))
                                  (cons __tmp17565 __tmp17558))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp17557)))
                       _hd87178763_
                       _hd87148755_
                       _hd87118747_
                       _hd87088739_)
                      (let ()
                        (declare (not safe))
                        (_g86988723_ _g86998726_)))))
              (let () (declare (not safe)) (_g86988723_ _g86998726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g86988723_ _g86998726_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g86988723_ _g86998726_)))))
                              (let ()
                                (declare (not safe))
                                (_g86988723_ _g86998726_)))))
                      (let ()
                        (declare (not safe))
                        (_g86988723_ _g86998726_))))))
          (declare (not safe))
          (_g86978792_ _stx8696_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_stx8613_)
        (let* ((_g86158636_
                (lambda (_g86168633_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86168633_))))
               (_g86148693_
                (lambda (_g86168639_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g86168639_))
                      (let ((_e86228641_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g86168639_))))
                        (let ((_hd86218644_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86228641_)))
                              (_tl86208646_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86228641_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl86208646_))
                              (let ((_e86258649_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl86208646_))))
                                (let ((_hd86248652_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86258649_)))
                                      (_tl86238654_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86258649_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl86238654_))
                                      (let ((_e86288657_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl86238654_))))
                                        (let ((_hd86278660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e86288657_)))
                                              (_tl86268662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e86288657_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl86268662_))
                                              (let ((_e86318665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl86268662_))))
                                                (let ((_hd86308668_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e86318665_)))
                                                      (_tl86298670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e86318665_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl86298670_))
                                                      ((lambda (_L8673_
                                                                _L8674_
                                                                _L8675_)
                                                         (let ((__tmp17566
                                                                (let ((__tmp17572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L8673_)))
                              (__tmp17567
                               (let ((__tmp17571
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _L8674_)))
                                     (__tmp17568
                                      (let ((__tmp17570
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _L8675_)))
                                            (__tmp17569
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp17570 __tmp17569))))
                                 (declare (not safe))
                                 (cons __tmp17571 __tmp17568))))
                          (declare (not safe))
                          (cons __tmp17572 __tmp17567))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp17566)))
               _hd86308668_
               _hd86278660_
               _hd86248652_)
              (let () (declare (not safe)) (_g86158636_ _g86168639_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g86158636_ _g86168639_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g86158636_ _g86168639_)))))
                              (let ()
                                (declare (not safe))
                                (_g86158636_ _g86168639_)))))
                      (let ()
                        (declare (not safe))
                        (_g86158636_ _g86168639_))))))
          (declare (not safe))
          (_g86148693_ _stx8613_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_stx8514_)
        (let* ((_g85168541_
                (lambda (_g85178538_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g85178538_))))
               (_g85158610_
                (lambda (_g85178544_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g85178544_))
                      (let ((_e85248546_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g85178544_))))
                        (let ((_hd85238549_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85248546_)))
                              (_tl85228551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85248546_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl85228551_))
                              (let ((_e85278554_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl85228551_))))
                                (let ((_hd85268557_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85278554_)))
                                      (_tl85258559_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85278554_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl85258559_))
                                      (let ((_e85308562_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl85258559_))))
                                        (let ((_hd85298565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e85308562_)))
                                              (_tl85288567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e85308562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl85288567_))
                                              (let ((_e85338570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl85288567_))))
                                                (let ((_hd85328573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e85338570_)))
                                                      (_tl85318575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e85338570_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl85318575_))
                                                      (let ((_e85368578_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl85318575_))))
                (let ((_hd85358581_
                       (let () (declare (not safe)) (##car _e85368578_)))
                      (_tl85348583_
                       (let () (declare (not safe)) (##cdr _e85368578_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl85348583_))
                      ((lambda (_L8586_ _L8587_ _L8588_ _L8589_)
                         (let ((__tmp17573
                                (let ((__tmp17581
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _L8587_)))
                                      (__tmp17574
                                       (let ((__tmp17580
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L8586_)))
                                             (__tmp17575
                                              (let ((__tmp17579
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e
                                                        _L8588_)))
                                                    (__tmp17576
                                                     (let ((__tmp17578
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L8589_)))
                                                           (__tmp17577
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp17578 __tmp17577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17579 __tmp17576))))
                                         (declare (not safe))
                                         (cons __tmp17580 __tmp17575))))
                                  (declare (not safe))
                                  (cons __tmp17581 __tmp17574))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp17573)))
                       _hd85358581_
                       _hd85328573_
                       _hd85298565_
                       _hd85268557_)
                      (let ()
                        (declare (not safe))
                        (_g85168541_ _g85178544_)))))
              (let () (declare (not safe)) (_g85168541_ _g85178544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g85168541_ _g85178544_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g85168541_ _g85178544_)))))
                              (let ()
                                (declare (not safe))
                                (_g85168541_ _g85178544_)))))
                      (let ()
                        (declare (not safe))
                        (_g85168541_ _g85178544_))))))
          (declare (not safe))
          (_g85158610_ _stx8514_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_stx8310_)
        (let* ((_g83128333_
                (lambda (_g83138330_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g83138330_))))
               (_g83118511_
                (lambda (_g83138336_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g83138336_))
                      (let ((_e83198338_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g83138336_))))
                        (let ((_hd83188341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e83198338_)))
                              (_tl83178343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e83198338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl83178343_))
                              (let ((_e83228346_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl83178343_))))
                                (let ((_hd83218349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e83228346_)))
                                      (_tl83208351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e83228346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl83208351_))
                                      (let ((_e83258354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl83208351_))))
                                        (let ((_hd83248357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e83258354_)))
                                              (_tl83238359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e83258354_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl83238359_))
                                              (let ((_e83288362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl83238359_))))
                                                (let ((_hd83278365_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e83288362_)))
                                                      (_tl83268367_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e83288362_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl83268367_))
                                                      ((lambda (_L8370_
                                                                _L8371_
                                                                _L8372_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp17599
                            (let ((__tmp17605
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e _L8370_)))
                                  (__tmp17600
                                   (let ((__tmp17604
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e _L8371_)))
                                         (__tmp17601
                                          (let ((__tmp17603
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L8372_)))
                                                (__tmp17602
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp17603 __tmp17602))))
                                     (declare (not safe))
                                     (cons __tmp17604 __tmp17601))))
                              (declare (not safe))
                              (cons __tmp17605 __tmp17600))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp17599))
                     (let _lp8390_ ((_rest8393_
                                     (let ((__tmp17597
                                            (let ((__tmp17598
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L8370_ '()))))
                                              (declare (not safe))
                                              (cons _L8371_ __tmp17598))))
                                       (declare (not safe))
                                       (cons _L8372_ __tmp17597)))
                                    (_bind8395_ '())
                                    (_args8396_ '()))
                       (let* ((_rest83978405_ _rest8393_)
                              (_else83998413_
                               (lambda ()
                                 (let ((__tmp17582
                                        (let ((__tmp17583
                                               (let ((__tmp17584
                                                      (let ((__tmp17585
                                                             (let ((__tmp17586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17587
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp17587 _args8396_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp17586))))
                (declare (not safe))
                (cons __tmp17585 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp17584))))
                                          (declare (not safe))
                                          (cons _bind8395_ __tmp17583))))
                                   (declare (not safe))
                                   (cons 'let __tmp17582))))
                              (_K84018499_
                               (lambda (_rest8416_ _e8417_)
                                 (let* ((___stx1680616807_ _e8417_)
                                        (_g84228440_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1680616807_)))))
                                   (let ((___kont1680816809_
                                          (lambda ()
                                            (let ((__tmp17588
                                                   (let ((__tmp17589
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _e8417_))))
                                                     (declare (not safe))
                                                     (cons __tmp17589
                                                           _args8396_))))
                                              (declare (not safe))
                                              (_lp8390_
                                               _rest8416_
                                               _bind8395_
                                               __tmp17588))))
                                         (___kont1681016811_
                                          (lambda ()
                                            (let ((__tmp17590
                                                   (let ((__tmp17591
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _e8417_))))
                                                     (declare (not safe))
                                                     (cons __tmp17591
                                                           _args8396_))))
                                              (declare (not safe))
                                              (_lp8390_
                                               _rest8416_
                                               _bind8395_
                                               __tmp17590))))
                                         (___kont1681216813_
                                          (lambda ()
                                            (let ((_tmp8447_
                                                   (make-symbol
                                                    (let ()
                                                      (declare (not safe))
                                                      (gensym '__tmp)))))
                                              (let ((__tmp17593
                                                     (let ((__tmp17594
                                                            (let ((__tmp17595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17596
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _e8417_))))
                             (declare (not safe))
                             (cons __tmp17596 '()))))
                      (declare (not safe))
                      (cons _tmp8447_ __tmp17595))))
               (declare (not safe))
               (cons __tmp17594 _bind8395_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp17592
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp8447_
                                                             _args8396_))))
                                                (declare (not safe))
                                                (_lp8390_
                                                 _rest8416_
                                                 __tmp17593
                                                 __tmp17592))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1680616807_))
                                         (let ((_e84268478_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1680616807_))))
                                           (let ((_tl84248483_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e84268478_)))
                                                 (_hd84258481_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e84268478_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd84258481_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd84258481_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl84248483_))
                                                         (let ((_e84298486_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl84248483_))))
                   (let ((_tl84278491_
                          (let () (declare (not safe)) (##cdr _e84298486_)))
                         (_hd84288489_
                          (let () (declare (not safe)) (##car _e84298486_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl84278491_))
                         (___kont1680816809_)
                         (___kont1681216813_))))
                 (___kont1681216813_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd84258481_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl84248483_))
                     (let ((_e84358463_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl84248483_))))
                       (let ((_tl84338468_
                              (let ()
                                (declare (not safe))
                                (##cdr _e84358463_)))
                             (_hd84348466_
                              (let ()
                                (declare (not safe))
                                (##car _e84358463_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl84338468_))
                             (___kont1681016811_)
                             (___kont1681216813_))))
                     (___kont1681216813_))
                 (___kont1681216813_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1681216813_))))
                                         (___kont1681216813_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest83978405_))
                             (let ((_hd84028502_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest83978405_)))
                                   (_tl84038504_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest83978405_))))
                               (let* ((_e8507_ _hd84028502_)
                                      (_rest8509_ _tl84038504_))
                                 (declare (not safe))
                                 (_K84018499_ _rest8509_ _e8507_)))
                             (let ()
                               (declare (not safe))
                               (_else83998413_)))))))
               _hd83278365_
               _hd83248357_
               _hd83218349_)
              (let () (declare (not safe)) (_g83128333_ _g83138336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g83128333_ _g83138336_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g83128333_ _g83138336_)))))
                              (let ()
                                (declare (not safe))
                                (_g83128333_ _g83138336_)))))
                      (let ()
                        (declare (not safe))
                        (_g83128333_ _g83138336_))))))
          (declare (not safe))
          (_g83118511_ _stx8310_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_stx8090_)
        (let* ((_g80928117_
                (lambda (_g80938114_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g80938114_))))
               (_g80918307_
                (lambda (_g80938120_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g80938120_))
                      (let ((_e81008122_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g80938120_))))
                        (let ((_hd80998125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e81008122_)))
                              (_tl80988127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e81008122_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl80988127_))
                              (let ((_e81038130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl80988127_))))
                                (let ((_hd81028133_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e81038130_)))
                                      (_tl81018135_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e81038130_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl81018135_))
                                      (let ((_e81068138_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl81018135_))))
                                        (let ((_hd81058141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e81068138_)))
                                              (_tl81048143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e81068138_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl81048143_))
                                              (let ((_e81098146_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl81048143_))))
                                                (let ((_hd81088149_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e81098146_)))
                                                      (_tl81078151_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e81098146_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl81078151_))
                                                      (let ((_e81128154_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl81078151_))))
                (let ((_hd81118157_
                       (let () (declare (not safe)) (##car _e81128154_)))
                      (_tl81108159_
                       (let () (declare (not safe)) (##cdr _e81128154_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl81108159_))
                      ((lambda (_L8162_ _L8163_ _L8164_ _L8165_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp17624
                                    (let ((__tmp17632
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e _L8163_)))
                                          (__tmp17625
                                           (let ((__tmp17631
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _L8162_)))
                                                 (__tmp17626
                                                  (let ((__tmp17630
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _L8164_)))
                                                        (__tmp17627
                                                         (let ((__tmp17629
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e _L8165_)))
                       (__tmp17628
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp17629 __tmp17628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17630
                                                          __tmp17627))))
                                             (declare (not safe))
                                             (cons __tmp17631 __tmp17626))))
                                      (declare (not safe))
                                      (cons __tmp17632 __tmp17625))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp17624))
                             (let _lp8186_ ((_rest8189_
                                             (let ((__tmp17621
                                                    (let ((__tmp17622
                                                           (let ((__tmp17623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L8163_ '()))))
                     (declare (not safe))
                     (cons _L8162_ __tmp17623))))
              (declare (not safe))
              (cons _L8164_ __tmp17622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L8165_ __tmp17621)))
                                            (_bind8191_ '())
                                            (_args8192_ '()))
                               (let* ((_rest81938201_ _rest8189_)
                                      (_else81958209_
                                       (lambda ()
                                         (let ((__tmp17606
                                                (let ((__tmp17607
                                                       (let ((__tmp17608
                                                              (let ((__tmp17609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17610
                                    (let ((__tmp17611
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp17611 _args8192_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp17610))))
                        (declare (not safe))
                        (cons __tmp17609 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp17608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind8191_
                                                        __tmp17607))))
                                           (declare (not safe))
                                           (cons 'let __tmp17606))))
                                      (_K81978295_
                                       (lambda (_rest8212_ _e8213_)
                                         (let* ((___stx1685216853_ _e8213_)
                                                (_g82188236_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx1685216853_)))))
                                           (let ((___kont1685416855_
                                                  (lambda ()
                                                    (let ((__tmp17612
                                                           (let ((__tmp17613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8213_))))
                     (declare (not safe))
                     (cons __tmp17613 _args8192_))))
              (declare (not safe))
              (_lp8186_ _rest8212_ _bind8191_ __tmp17612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1685616857_
                                                  (lambda ()
                                                    (let ((__tmp17614
                                                           (let ((__tmp17615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8213_))))
                     (declare (not safe))
                     (cons __tmp17615 _args8192_))))
              (declare (not safe))
              (_lp8186_ _rest8212_ _bind8191_ __tmp17614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1685816859_
                                                  (lambda ()
                                                    (let ((_tmp8243_
                                                           (make-symbol
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gensym '__tmp)))))
                                                      (let ((__tmp17617
                                                             (let ((__tmp17618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17619
                                   (let ((__tmp17620
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e _e8213_))))
                                     (declare (not safe))
                                     (cons __tmp17620 '()))))
                              (declare (not safe))
                              (cons _tmp8243_ __tmp17619))))
                       (declare (not safe))
                       (cons __tmp17618 _bind8191_)))
                    (__tmp17616
                     (let ()
                       (declare (not safe))
                       (cons _tmp8243_ _args8192_))))
                (declare (not safe))
                (_lp8186_ _rest8212_ __tmp17617 __tmp17616))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx1685216853_))
                                                 (let ((_e82228274_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx1685216853_))))
                                                   (let ((_tl82208279_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e82228274_)))
                                                         (_hd82218277_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e82228274_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd82218277_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd82218277_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl82208279_))
                         (let ((_e82258282_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl82208279_))))
                           (let ((_tl82238287_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e82258282_)))
                                 (_hd82248285_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e82258282_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl82238287_))
                                 (___kont1685416855_)
                                 (___kont1685816859_))))
                         (___kont1685816859_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd82218277_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl82208279_))
                             (let ((_e82318259_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl82208279_))))
                               (let ((_tl82298264_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e82318259_)))
                                     (_hd82308262_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e82318259_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl82298264_))
                                     (___kont1685616857_)
                                     (___kont1685816859_))))
                             (___kont1685816859_))
                         (___kont1685816859_)))
                 (___kont1685816859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1685816859_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest81938201_))
                                     (let ((_hd81988298_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest81938201_)))
                                           (_tl81998300_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest81938201_))))
                                       (let* ((_e8303_ _hd81988298_)
                                              (_rest8305_ _tl81998300_))
                                         (declare (not safe))
                                         (_K81978295_ _rest8305_ _e8303_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else81958209_)))))))
                       _hd81118157_
                       _hd81088149_
                       _hd81058141_
                       _hd81028133_)
                      (let ()
                        (declare (not safe))
                        (_g80928117_ _g80938120_)))))
              (let () (declare (not safe)) (_g80928117_ _g80938120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g80928117_ _g80938120_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g80928117_ _g80938120_)))))
                              (let ()
                                (declare (not safe))
                                (_g80928117_ _g80938120_)))))
                      (let ()
                        (declare (not safe))
                        (_g80928117_ _g80938120_))))))
          (declare (not safe))
          (_g80918307_ _stx8090_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_stx7944_)
        (letrec ((_import-set-template7946_
                  (lambda (_in8042_ _phi8043_)
                    (let ((_iphi8045_
                           (fx+ _phi8043_
                                (##direct-structure-ref
                                 _in8042_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports8046_
                           (##structure-ref
                            (##direct-structure-ref
                             _in8042_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp8048_ ((_rest8050_ _imports8046_) (_r8051_ '()))
                        (let* ((_rest80528060_ _rest8050_)
                               (_else80548068_ (lambda () _r8051_))
                               (_K80568078_
                                (lambda (_rest8071_ _in8072_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in8072_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi8045_))
                                          (let ((__tmp17639
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in8072_ _r8051_))))
                                            (declare (not safe))
                                            (_lp8048_ _rest8071_ __tmp17639))
                                          (let ()
                                            (declare (not safe))
                                            (_lp8048_ _rest8071_ _r8051_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in8072_
                                             'gx#module-import::t))
                                          (let ((_iphi8074_
                                                 (fx+ _phi8043_
                                                      (##direct-structure-ref
                                                       _in8072_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi8074_))
                                                (let ((__tmp17637
                                                       (let ((__tmp17638
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in8072_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp17638
                                                               _r8051_))))
                                                  (declare (not safe))
                                                  (_lp8048_
                                                   _rest8071_
                                                   __tmp17637))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp8048_
                                                   _rest8071_
                                                   _r8051_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in8072_
                                                 'gx#import-set::t))
                                              (let ((_xphi8076_
                                                     (fx+ _iphi8045_
                                                          (##direct-structure-ref
                                                           _in8072_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi8076_))
                                                    (let ((__tmp17635
                                                           (let ((__tmp17636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in8072_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp17636 _r8051_))))
              (declare (not safe))
              (_lp8048_ _rest8071_ __tmp17635))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (fxpositive?
                                                           _xphi8076_))
                                                        (let ((__tmp17633
                                                               (let ((__tmp17634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template7946_
                                 _in8072_
                                 _iphi8045_))))
                         (declare (not safe))
                         (foldl1 cons _r8051_ __tmp17634))))
                  (declare (not safe))
                  (_lp8048_ _rest8071_ __tmp17633))
                (let () (declare (not safe)) (_lp8048_ _rest8071_ _r8051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp8048_
                                                 _rest8071_
                                                 _r8051_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest80528060_))
                              (let ((_hd80578081_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest80528060_)))
                                    (_tl80588083_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest80528060_))))
                                (let* ((_in8086_ _hd80578081_)
                                       (_rest8088_ _tl80588083_))
                                  (declare (not safe))
                                  (_K80568078_ _rest8088_ _in8086_)))
                              (let ()
                                (declare (not safe))
                                (_else80548068_)))))))))
          (let* ((_g79487958_
                  (lambda (_g79497955_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g79497955_))))
                 (_g79478039_
                  (lambda (_g79497961_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g79497961_))
                        (let ((_e79537963_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g79497961_))))
                          (let ((_hd79527966_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e79537963_)))
                                (_tl79517968_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e79537963_))))
                            ((lambda (_L7971_)
                               (let ((_ht7982_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let _lp7984_ ((_rest7986_ _L7971_)
                                                (_loads7987_ '()))
                                   (letrec ((_K7989_ (lambda (_ctx8032_
                                                              _rest8033_)
                                                       (let ((_id8035_
                                                              (##structure-ref
                                                               _ctx8032_
                                                               '1
                                                               gx#expander-context::t
                                                               '#f)))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (table-ref _ht7982_ _id8035_ '#f))
                     (let ()
                       (declare (not safe))
                       (_lp7984_ _rest8033_ _loads7987_))
                     (let ((_rt8037_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id8035_))
                             '"__rt")))
                       (let ()
                         (declare (not safe))
                         (table-set! _ht7982_ _id8035_ _rt8037_))
                       (let ((__tmp17640
                              (let ()
                                (declare (not safe))
                                (cons _rt8037_ _loads7987_))))
                         (declare (not safe))
                         (_lp7984_ _rest8033_ __tmp17640))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest79907998_ _rest7986_)
                                            (_else79928010_
                                             (lambda ()
                                               (let ((__tmp17641
                                                      (let ((__tmp17643
                                                             (lambda (_g80058007_)
                                                               (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g80058007_)))
                    (__tmp17642
                     (let () (declare (not safe)) (reverse _loads7987_))))
                (declare (not safe))
                (map __tmp17643 __tmp17642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp17641))))
                                            (_K79948020_
                                             (lambda (_rest8013_ _in8014_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in8014_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K7989_ _in8014_
                                                              _rest8013_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in8014_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp17647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in8014_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp17647))
                   (let ((__tmp17646
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in8014_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K7989_ __tmp17646 _rest8013_))
                   (let ()
                     (declare (not safe))
                     (_lp7984_ _rest8013_ _loads7987_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in8014_
                      'gx#import-set::t))
                   (let ((_phi8016_
                          (##direct-structure-ref
                           _in8014_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi8016_))
                         (let ((__tmp17645
                                (##direct-structure-ref
                                 _in8014_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K7989_ __tmp17645 _rest8013_))
                         (if (let ()
                               (declare (not safe))
                               (fxpositive? _phi8016_))
                             (let* ((_deps8018_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template7946_
                                        _in8014_
                                        '0)))
                                    (__tmp17644
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons _rest8013_ _deps8018_))))
                               (declare (not safe))
                               (_lp7984_ __tmp17644 _loads7987_))
                             (let ()
                               (declare (not safe))
                               (_lp7984_ _rest8013_ _loads7987_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx7944_
                      _in8014_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest79907998_))
                                           (let ((_hd79958023_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest79907998_)))
                                                 (_tl79968025_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest79907998_))))
                                             (let* ((_in8028_ _hd79958023_)
                                                    (_rest8030_ _tl79968025_))
                                               (declare (not safe))
                                               (_K79948020_
                                                _rest8030_
                                                _in8028_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else79928010_))))))))
                             _tl79517968_)))
                        (let ()
                          (declare (not safe))
                          (_g79487958_ _g79497961_))))))
            (declare (not safe))
            (_g79478039_ _stx7944_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_stx7760_)
        (letrec ((_add-lift!7762_
                  (lambda (_expr7942_)
                    (let ((__tmp17651 (gxc#current-compile-lift))
                          (__tmp17648
                           (let ((__tmp17649
                                  (let ((__tmp17650
                                         (gxc#current-compile-lift)))
                                    (declare (not safe))
                                    (unbox __tmp17650))))
                             (declare (not safe))
                             (cons _expr7942_ __tmp17649))))
                      (declare (not safe))
                      (set-box! __tmp17651 __tmp17648))))
                 (_generate-syntax-quote7763_
                  (lambda (_id7939_ _marks7940_)
                    (let ((__tmp17652
                           (let ((__tmp17653
                                  (let ((__tmp17657
                                         (let ((__tmp17658
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id7939_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp17658)))
                                        (__tmp17654
                                         (let ((__tmp17655
                                                (let ((__tmp17656
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks7940_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp17656))))
                                           (declare (not safe))
                                           (cons '#f __tmp17655))))
                                    (declare (not safe))
                                    (cons __tmp17657 __tmp17654))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp17653))))
                      (declare (not safe))
                      (cons '##structure __tmp17652))))
                 (_generate-simple7764_
                  (lambda (_stxq7934_)
                    (let ((_gid7936_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid7937_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq7934_))))
                      (let ((__tmp17659
                             (let ((__tmp17660
                                    (let ((__tmp17661
                                           (let ((__tmp17662
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote7763_
                                                     _qid7937_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp17662 '()))))
                                      (declare (not safe))
                                      (cons _gid7936_ __tmp17661))))
                               (declare (not safe))
                               (cons 'define __tmp17660))))
                        (declare (not safe))
                        (_add-lift!7762_ __tmp17659))
                      (let ((__tmp17663 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (table-set! __tmp17663 _stxq7934_ _gid7936_))
                      _gid7936_)))
                 (_generate-serialized7765_
                  (lambda (_stxq7924_ _marks7925_)
                    (let* ((_mark-refs7927_
                            (let ()
                              (declare (not safe))
                              (map _generate-mark7766_ _marks7925_)))
                           (_gid7929_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid7931_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq7924_))))
                      (let ((__tmp17664
                             (let ((__tmp17665
                                    (let ((__tmp17666
                                           (let ((__tmp17667
                                                  (let ((__tmp17668
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs7927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote7763_
                                                     _qid7931_
                                                     __tmp17668))))
                                             (declare (not safe))
                                             (cons __tmp17667 '()))))
                                      (declare (not safe))
                                      (cons _gid7929_ __tmp17666))))
                               (declare (not safe))
                               (cons 'define __tmp17665))))
                        (declare (not safe))
                        (_add-lift!7762_ __tmp17664))
                      (let ((__tmp17669 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (table-set! __tmp17669 _stxq7924_ _gid7929_))
                      _gid7929_)))
                 (_generate-mark7766_
                  (lambda (_mark7910_)
                    (let ((_$e7912_
                           (let ((__tmp17670 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (table-ref __tmp17670 _mark7910_ '#f))))
                      (if _$e7912_
                          (values _$e7912_)
                          (let* ((_gid7915_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr7917_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark7767_ _mark7910_)))
                                 (_ctx7919_
                                  (let ((__tmp17671
                                         (##structure-ref
                                          _mark7910_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp17671)))
                                 (_ctx-ref7921_
                                  (if (let ((__tmp17676
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx7919_ __tmp17676))
                                      '(gx#current-expander-context)
                                      (let ((__tmp17672
                                             (let ((__tmp17673
                                                    (let ((__tmp17674
                                                           (let ((__tmp17675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref7768_ _ctx7919_))))
                     (declare (not safe))
                     (cons __tmp17675 '()))))
              (declare (not safe))
              (cons 'quote __tmp17674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17673 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module __tmp17672)))))
                            (let ((__tmp17677 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (table-set! __tmp17677 _mark7910_ _gid7915_))
                            (let ((__tmp17678
                                   (let ((__tmp17679
                                          (let ((__tmp17680
                                                 (let ((__tmp17681
                                                        (let ((__tmp17682
                                                               (let ((__tmp17684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17685
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr7917_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp17685)))
                             (__tmp17683
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref7921_ '()))))
                         (declare (not safe))
                         (cons __tmp17684 __tmp17683))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp17682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17681 '()))))
                                            (declare (not safe))
                                            (cons _gid7915_ __tmp17680))))
                                     (declare (not safe))
                                     (cons 'define __tmp17679))))
                              (declare (not safe))
                              (_add-lift!7762_ __tmp17678))
                            _gid7915_)))))
                 (_serialize-mark7767_
                  (lambda (_mark7857_)
                    (letrec ((_quote-e7859_
                              (lambda (_sym7908_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _sym7908_))
                                    _sym7908_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym7908_))))))
                      (let* ((_mark78607869_ _mark7857_)
                             (_E78627873_
                              (lambda ()
                                (error '"No clause matching" _mark78607869_)))
                             (_K78637885_
                              (lambda (_trace7876_
                                       _phi7877_
                                       _ctx7878_
                                       _subst7879_)
                                (let* ((_subs7881_
                                        (if _subst7879_
                                            (let ()
                                              (declare (not safe))
                                              (table->list _subst7879_))
                                            '()))
                                       (__tmp17686
                                        (let ((__tmp17687
                                               (lambda (_pair7883_)
                                                 (let ((__tmp17690
                                                        (let ((__tmp17691
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (car _pair7883_))))
                  (declare (not safe))
                  (_quote-e7859_ __tmp17691)))
               (__tmp17688
                (let ((__tmp17689
                       (let () (declare (not safe)) (cdr _pair7883_))))
                  (declare (not safe))
                  (_quote-e7859_ __tmp17689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17690
                                                         __tmp17688)))))
                                          (declare (not safe))
                                          (map __tmp17687 _subs7881_))))
                                  (declare (not safe))
                                  (cons _phi7877_ __tmp17686)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark78607869_
                               'gx#expander-mark::t))
                            (let* ((_e78647888_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78607869_ '1)))
                                   (_subst7891_ _e78647888_)
                                   (_e78657893_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78607869_ '2)))
                                   (_ctx7896_ _e78657893_)
                                   (_e78667898_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78607869_ '3)))
                                   (_phi7901_ _e78667898_)
                                   (_e78677903_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78607869_ '4)))
                                   (_trace7906_ _e78677903_))
                              (declare (not safe))
                              (_K78637885_
                               _trace7906_
                               _phi7901_
                               _ctx7896_
                               _subst7891_))
                            (let () (declare (not safe)) (_E78627873_)))))))
                 (_context-ref7768_
                  (lambda (_ctx7844_)
                    (if (let ((__tmp17698
                               (##structure-ref
                                _ctx7844_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp17698
                           'gx#module-context::t))
                        (let ((_ctx-ref7846_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested7770_ _ctx7844_)))
                              (_ctx-origin7847_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin7769_ _ctx7844_)))
                              (_origin7848_
                               (let ((__tmp17692
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin7769_ __tmp17692))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin7848_ _ctx-origin7847_))
                              (let ((_ref7850_
                                     (let ((__tmp17693
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested7770_ __tmp17693))))
                                (let _lp7852_ ((_ref7854_
                                                (let ()
                                                  (declare (not safe))
                                                  (cdr _ref7850_)))
                                               (_ctx-ref7855_
                                                (let ()
                                                  (declare (not safe))
                                                  (cdr _ctx-ref7846_))))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref7854_))
                                           (let ((__tmp17697
                                                  (let ()
                                                    (declare (not safe))
                                                    (car _ref7854_)))
                                                 (__tmp17696
                                                  (let ()
                                                    (declare (not safe))
                                                    (car _ctx-ref7855_))))
                                             (declare (not safe))
                                             (eq? __tmp17697 __tmp17696)))
                                      (let ((__tmp17695
                                             (let ()
                                               (declare (not safe))
                                               (cdr _ref7854_)))
                                            (__tmp17694
                                             (let ()
                                               (declare (not safe))
                                               (cdr _ctx-ref7855_))))
                                        (declare (not safe))
                                        (_lp7852_ __tmp17695 __tmp17694))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref7855_)))))
                              _ctx-ref7846_))
                        (make-symbol
                         '":"
                         (##structure-ref
                          _ctx7844_
                          '1
                          gx#expander-context::t
                          '#f)))))
                 (_context-ref-origin7769_
                  (lambda (_ctx7836_)
                    (let _lp7838_ ((_ctx7840_ _ctx7836_))
                      (let ((_super7842_
                             (##structure-ref
                              _ctx7840_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super7842_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp7838_ _super7842_))
                            _ctx7840_)))))
                 (_context-ref-nested7770_
                  (lambda (_ctx7827_)
                    (let _lp7829_ ((_ctx7831_ _ctx7827_) (_r7832_ '()))
                      (let ((_super7834_
                             (##structure-ref
                              _ctx7831_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super7834_
                               'gx#module-context::t))
                            (let ((__tmp17700
                                   (let ((__tmp17701
                                          (let ((__tmp17702
                                                 (##structure-ref
                                                  _ctx7831_
                                                  '7
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (car __tmp17702))))
                                     (declare (not safe))
                                     (cons __tmp17701 _r7832_))))
                              (declare (not safe))
                              (_lp7829_ _super7834_ __tmp17700))
                            (let ((__tmp17699
                                   (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx7831_
                                     '1
                                     gx#expander-context::t
                                     '#f))))
                              (declare (not safe))
                              (cons __tmp17699 _r7832_))))))))
          (let* ((_g77727785_
                  (lambda (_g77737782_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g77737782_))))
                 (_g77717824_
                  (lambda (_g77737788_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g77737788_))
                        (let ((_e77777790_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g77737788_))))
                          (let ((_hd77767793_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e77777790_)))
                                (_tl77757795_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e77777790_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl77757795_))
                                (let ((_e77807798_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl77757795_))))
                                  (let ((_hd77797801_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e77807798_)))
                                        (_tl77787803_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e77807798_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl77787803_))
                                        ((lambda (_L7806_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L7806_))
                                               (let ((_$e7819_
                                                      (let ((__tmp17703
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (table-ref
                                                         __tmp17703
                                                         _L7806_
                                                         '#f))))
                                                 (if _$e7819_
                                                     (values _$e7819_)
                                                     (let ((_marks7822_
                                                            (##direct-structure-ref
                                                             _L7806_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks7822_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple7764_
                                                              _L7806_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized7765_
                                                              _L7806_
                                                              _marks7822_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L7806_))))
                                         _hd77797801_)
                                        (let ()
                                          (declare (not safe))
                                          (_g77727785_ _g77737788_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g77727785_ _g77737788_)))))
                        (let ()
                          (declare (not safe))
                          (_g77727785_ _g77737788_))))))
            (declare (not safe))
            (_g77717824_ _stx7760_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_stx7693_)
        (let* ((_g76957712_
                (lambda (_g76967709_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g76967709_))))
               (_g76947757_
                (lambda (_g76967715_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g76967715_))
                      (let ((_e77017717_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g76967715_))))
                        (let ((_hd77007720_
                               (let ()
                                 (declare (not safe))
                                 (##car _e77017717_)))
                              (_tl76997722_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e77017717_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl76997722_))
                              (let ((_e77047725_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl76997722_))))
                                (let ((_hd77037728_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e77047725_)))
                                      (_tl77027730_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e77047725_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl77027730_))
                                      (let ((_e77077733_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl77027730_))))
                                        (let ((_hd77067736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e77077733_)))
                                              (_tl77057738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e77077733_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl77057738_))
                                              ((lambda (_L7741_ _L7742_)
                                                 (let ((__tmp17704
                                                        (let ((__tmp17707
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L7742_)))
                      (__tmp17705
                       (let ((__tmp17706
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _L7741_))))
                         (declare (not safe))
                         (cons __tmp17706 '()))))
                  (declare (not safe))
                  (cons __tmp17707 __tmp17705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp17704)))
                                               _hd77067736_
                                               _hd77037728_)
                                              (let ()
                                                (declare (not safe))
                                                (_g76957712_ _g76967715_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g76957712_ _g76967715_)))))
                              (let ()
                                (declare (not safe))
                                (_g76957712_ _g76967715_)))))
                      (let ()
                        (declare (not safe))
                        (_g76957712_ _g76967715_))))))
          (declare (not safe))
          (_g76947757_ _stx7693_))))
    (define gxc#generate-meta-begin%
      (lambda (_stx7642_ _state7643_)
        (let* ((_g76457655_
                (lambda (_g76467652_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g76467652_))))
               (_g76447690_
                (lambda (_g76467658_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g76467658_))
                      (let ((_e76507660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g76467658_))))
                        (let ((_hd76497663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e76507660_)))
                              (_tl76487665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e76507660_))))
                          ((lambda (_L7668_)
                             (let* ((_c-body7682_
                                     (let ((__tmp17708
                                            (lambda (_g76777679_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e
                                                 _g76777679_
                                                 _state7643_)))))
                                       (declare (not safe))
                                       (map __tmp17708 _L7668_)))
                                    (_c-body7687_
                                     (filter (lambda (_$obj7684_)
                                               (let ((__tmp17709
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj7684_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp17709)))
                                             _c-body7682_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body7687_))))
                           _tl76487665_)))
                      (let ()
                        (declare (not safe))
                        (_g76457655_ _g76467658_))))))
          (declare (not safe))
          (_g76447690_ _stx7642_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_stx7550_ _state7551_)
        (let* ((_g75537563_
                (lambda (_g75547560_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g75547560_))))
               (_g75527639_
                (lambda (_g75547566_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g75547566_))
                      (let ((_e75587568_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g75547566_))))
                        (let ((_hd75577571_
                               (let ()
                                 (declare (not safe))
                                 (##car _e75587568_)))
                              (_tl75567573_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e75587568_))))
                          ((lambda (_L7576_)
                             (let* ((_phi7586_
                                     (let ((__tmp17710
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp17710 '1)))
                                    (_block7588_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        _state7551_
                                        _phi7586_)))
                                    (_compiled7591_
                                     (let ((__tmp17711
                                            (lambda ()
                                              (let ((__tmp17712
                                                     (let ((__tmp17713
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp17713
                                                             _L7576_))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp17712
                                                 _state7551_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp17711
                                        gx#current-expander-phi
                                        _phi7586_))))
                               (let* ((_g75947604_
                                       (lambda (_g75957601_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g75957601_))))
                                      (_g75937636_
                                       (lambda (_g75957607_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g75957607_))
                                             (let ((_e75997609_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e _g75957607_))))
                                               (let ((_hd75987612_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e75997609_)))
                                                     (_tl75977614_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e75997609_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd75987612_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd75987612_))
                                                         ((lambda (_L7617_)
                                                            (let ((_c-body7634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj7631_)
                                     (let ((__tmp17714
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj7631_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp17714)))
                                   _L7617_)))
                      (if _block7588_
                          (let ((__tmp17715
                                 (let ((__tmp17716
                                        (let ((__tmp17717
                                               (let ((__tmp17721
                                                      (let ((__tmp17722
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp17722)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17718
                                                      (let ((__tmp17719
                                                             (let ((__tmp17720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block7588_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp17720))))
                (declare (not safe))
                (cons __tmp17719 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp17721
                                                       __tmp17718))))
                                          (declare (not safe))
                                          (cons '%#call __tmp17717))))
                                   (declare (not safe))
                                   (cons __tmp17716 _c-body7634_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp17715))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body7634_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body7634_))))))
                  _tl75977614_)
                 (let () (declare (not safe)) (_g75947604_ _g75957607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g75947604_
                                                        _g75957607_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g75947604_ _g75957607_))))))
                                 (declare (not safe))
                                 (_g75937636_ _compiled7591_))))
                           _tl75567573_)))
                      (let ()
                        (declare (not safe))
                        (_g75537563_ _g75547566_))))))
          (declare (not safe))
          (_g75527639_ _stx7550_))))
    (define gxc#generate-meta-module%
      (lambda (_stx7481_ _state7482_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state7482_))
        (let* ((_g74847498_
                (lambda (_g74857495_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g74857495_))))
               (_g74837547_
                (lambda (_g74857501_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g74857501_))
                      (let ((_e74907503_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g74857501_))))
                        (let ((_hd74897506_
                               (let ()
                                 (declare (not safe))
                                 (##car _e74907503_)))
                              (_tl74887508_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e74907503_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl74887508_))
                              (let ((_e74937511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl74887508_))))
                                (let ((_hd74927514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e74937511_)))
                                      (_tl74917516_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e74937511_))))
                                  ((lambda (_L7519_ _L7520_)
                                     (let ((_key7533_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L7520_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _key7533_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx7481_
                                              _L7520_
                                              _key7533_)))
                                       (let* ((_ctx7535_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L7520_)))
                                              (_code7538_
                                               (let ((__tmp17723
                                                      (lambda ()
                                                        (let ((__tmp17724
                                                               (##structure-ref
                                                                _ctx7535_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           __tmp17724
                                                           _state7482_)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp17723
                                                  gx#current-expander-context
                                                  _ctx7535_)))
                                              (_rt7540_
                                               (let ((__tmp17725
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __tmp17725
                                                  _ctx7535_
                                                  '#f)))
                                              (_loader7542_
                                               (if _rt7540_
                                                   (let ((__tmp17726
                                                          (let ((__tmp17727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17731
                                (let ((__tmp17732
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp17732)))
                               (__tmp17728
                                (let ((__tmp17729
                                       (let ((__tmp17730
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt7540_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp17730))))
                                  (declare (not safe))
                                  (cons __tmp17729 '()))))
                           (declare (not safe))
                           (cons __tmp17731 __tmp17728))))
                    (declare (not safe))
                    (cons '%#call __tmp17727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17726 '()))
                                                   '()))
                                              (_modid7544_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L7520_))))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            _state7482_))
                                         (let ((__tmp17733
                                                (let ((__tmp17734
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code7538_
                                                               _loader7542_))))
                                                  (declare (not safe))
                                                  (cons _modid7544_
                                                        __tmp17734))))
                                           (declare (not safe))
                                           (cons '%#module __tmp17733)))))
                                   _tl74917516_
                                   _hd74927514_)))
                              (let ()
                                (declare (not safe))
                                (_g74847498_ _g74857501_)))))
                      (let ()
                        (declare (not safe))
                        (_g74847498_ _g74857501_))))))
          (declare (not safe))
          (_g74837547_ _stx7481_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx7471_ _context-chain7472_)
        (let _lp7474_ ((_ctx7476_ _ctx7471_) (_path7477_ '()))
          (let ((_super7479_
                 (##structure-ref _ctx7476_ '3 gx#phi-context::t '#f)))
            (if (let ()
                  (declare (not safe))
                  (memq _super7479_ _context-chain7472_))
                (let ((__tmp17739
                       (let ((__tmp17740
                              (let ((__tmp17741
                                     (##structure-ref
                                      _ctx7476_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (declare (not safe))
                                (car __tmp17741))))
                         (declare (not safe))
                         (cons __tmp17740 _path7477_))))
                  (declare (not safe))
                  (cons '#f __tmp17739))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super7479_
                       'gx#module-context::t))
                    (let ((__tmp17736
                           (let ((__tmp17737
                                  (let ((__tmp17738
                                         (##structure-ref
                                          _ctx7476_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (car __tmp17738))))
                             (declare (not safe))
                             (cons __tmp17737 _path7477_))))
                      (declare (not safe))
                      (_lp7474_ _super7479_ __tmp17736))
                    (let ((__tmp17735
                           (make-symbol
                            '":"
                            (##structure-ref
                             _ctx7476_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (declare (not safe))
                      (cons __tmp17735 _path7477_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp7466_ ((_ctx7468_ (gx#current-expander-context)) (_r7469_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx7468_ 'gx#module-context::t))
              (let ((__tmp17743
                     (##structure-ref _ctx7468_ '3 gx#phi-context::t '#f))
                    (__tmp17742
                     (let () (declare (not safe)) (cons _ctx7468_ _r7469_))))
                (declare (not safe))
                (_lp7466_ __tmp17743 __tmp17742))
              _r7469_))))
    (define gxc#generate-meta-import%
      (lambda (_stx7235_ _state7236_)
        (letrec* ((_context-chain7238_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec7239_
                   (lambda (_in7402_)
                     (let* ((_in74037415_ _in7402_)
                            (_E74057419_
                             (lambda ()
                               (error '"No clause matching" _in74037415_)))
                            (_K74067429_
                             (lambda (_phi7422_
                                      _name7423_
                                      _src-name7424_
                                      _src-phi7425_
                                      _src-key7426_
                                      _src-ctx7427_)
                               (let ((__tmp17744
                                      (let ((__tmp17748
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name7423_)))
                                            (__tmp17745
                                             (let ((__tmp17746
                                                    (let ((__tmp17747
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name7424_))))
                                                      (declare (not safe))
                                                      (cons __tmp17747 '()))))
                                               (declare (not safe))
                                               (cons _src-phi7425_
                                                     __tmp17746))))
                                        (declare (not safe))
                                        (cons __tmp17748 __tmp17745))))
                                 (declare (not safe))
                                 (cons _phi7422_ __tmp17744)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in74037415_
                              'gx#module-import::t))
                           (let ((_e74077432_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _in74037415_ '1))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e74077432_
                                    'gx#module-export::t))
                                 (let* ((_e74107435_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e74077432_ '1)))
                                        (_src-ctx7438_ _e74107435_)
                                        (_e74117440_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e74077432_ '2)))
                                        (_src-key7443_ _e74117440_)
                                        (_e74127445_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e74077432_ '3)))
                                        (_src-phi7448_ _e74127445_)
                                        (_e74137450_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e74077432_ '4)))
                                        (_src-name7453_ _e74137450_)
                                        (_e74087455_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in74037415_ '2)))
                                        (_name7458_ _e74087455_)
                                        (_e74097460_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in74037415_ '3)))
                                        (_phi7463_ _e74097460_))
                                   (declare (not safe))
                                   (_K74067429_
                                    _phi7463_
                                    _name7458_
                                    _src-name7453_
                                    _src-phi7448_
                                    _src-key7443_
                                    _src-ctx7438_))
                                 (let () (declare (not safe)) (_E74057419_))))
                           (let () (declare (not safe)) (_E74057419_))))))
                  (_make-import-path7240_
                   (lambda (_ctx7400_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx7400_
                        _context-chain7238_))))
                  (_make-import-spec-in7241_
                   (lambda (_ctx7397_ _in7398_)
                     (let ((__tmp17749
                            (let ((__tmp17751
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path7240_ _ctx7397_)))
                                  (__tmp17750
                                   (let ()
                                     (declare (not safe))
                                     (reverse _in7398_))))
                              (declare (not safe))
                              (cons __tmp17751 __tmp17750))))
                       (declare (not safe))
                       (cons 'spec: __tmp17749)))))
          (let () (declare (not safe)) (gxc#meta-state-end-phi! _state7236_))
          (let* ((_g72437253_
                  (lambda (_g72447250_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g72447250_))))
                 (_g72427394_
                  (lambda (_g72447256_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g72447256_))
                        (let ((_e72487258_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g72447256_))))
                          (let ((_hd72477261_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e72487258_)))
                                (_tl72467263_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e72487258_))))
                            ((lambda (_L7266_)
                               (let _lp7277_ ((_rest7279_ _L7266_)
                                              (_current-src7280_ '#f)
                                              (_current-in7281_ '())
                                              (_r7282_ '()))
                                 (let* ((_rest72837291_ _rest7279_)
                                        (_else72857301_
                                         (lambda ()
                                           (let* ((_r7299_ (if _current-src7280_
                                                               (let ((__tmp17752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in7241_
                                 _current-src7280_
                                 _current-in7281_))))
                         (declare (not safe))
                         (cons __tmp17752 _r7282_))
                       _r7282_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp17753
                                                   (let ()
                                                     (declare (not safe))
                                                     (reverse _r7299_))))
                                             (declare (not safe))
                                             (cons '%#import __tmp17753))))
                                        (_K72877382_
                                         (lambda (_rest7304_ _in7305_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in7305_
                                                  'gx#module-import::t))
                                               (let* ((_in73067313_ _in7305_)
                                                      (_E73087317_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in73067313_)))
                                                      (_K73097322_
                                                       (lambda (_src-ctx7320_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _current-src7280_ _src-ctx7320_))
                     (let ((__tmp17769
                            (let ((__tmp17770
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec7239_ _in7305_))))
                              (declare (not safe))
                              (cons __tmp17770 _current-in7281_))))
                       (declare (not safe))
                       (_lp7277_
                        _rest7304_
                        _current-src7280_
                        __tmp17769
                        _r7282_))
                     (if _current-src7280_
                         (let ((__tmp17767
                                (let ((__tmp17768
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec7239_ _in7305_))))
                                  (declare (not safe))
                                  (cons __tmp17768 '())))
                               (__tmp17765
                                (let ((__tmp17766
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in7241_
                                          _current-src7280_
                                          _current-in7281_))))
                                  (declare (not safe))
                                  (cons __tmp17766 _r7282_))))
                           (declare (not safe))
                           (_lp7277_
                            _rest7304_
                            _src-ctx7320_
                            __tmp17767
                            __tmp17765))
                         (let ((__tmp17763
                                (let ((__tmp17764
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec7239_ _in7305_))))
                                  (declare (not safe))
                                  (cons __tmp17764 '()))))
                           (declare (not safe))
                           (_lp7277_
                            _rest7304_
                            _src-ctx7320_
                            __tmp17763
                            _r7282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in73067313_
                                                        'gx#module-import::t))
                                                     (let ((_e73107325_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _in73067313_
                                                               '1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e73107325_
                                                              'gx#module-export::t))
                                                           (let* ((_e73117328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##vector-ref _e73107325_ '1)))
                          (_src-ctx7331_ _e73117328_))
                     (declare (not safe))
                     (_K73097322_ _src-ctx7331_))
                   (let () (declare (not safe)) (_E73087317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E73087317_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in7305_
                                                      'gx#import-set::t))
                                                   (let* ((_phi7333_
                                                           (##direct-structure-ref
                                                            _in7305_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src7335_
                                                           (##direct-structure-ref
                                                            _in7305_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in7375_
                                                           (let* ((_g73367345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path7240_ _src7335_)))
                          (_E73397349_
                           (lambda ()
                             (error '"No clause matching" _g73367345_))))
                     (let ((_K73417365_ (lambda (_path7363_) _path7363_))
                           (_K73407355_
                            (lambda (_path7353_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path7353_)))))
                       (if (let () (declare (not safe)) (##pair? _g73367345_))
                           (let ((_tl73437370_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g73367345_)))
                                 (_hd73427368_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g73367345_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl73437370_))
                                 (let ((_path7373_ _hd73427368_))
                                   (declare (not safe))
                                   (_K73417365_ _path7373_))
                                 (let ((_path7358_ _g73367345_))
                                   (declare (not safe))
                                   (_K73407355_ _path7358_))))
                           (let ((_path7358_ _g73367345_))
                             (declare (not safe))
                             (_K73407355_ _path7358_))))))
                  (_r7377_ (if _current-src7280_
                               (let ((__tmp17758
                                      (let ()
                                        (declare (not safe))
                                        (_make-import-spec-in7241_
                                         _current-src7280_
                                         _current-in7281_))))
                                 (declare (not safe))
                                 (cons __tmp17758 _r7282_))
                               _r7282_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp17759
                                                            (let ((__tmp17760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi7333_))
                               _src-in7375_
                               (let ((__tmp17761
                                      (let ((__tmp17762
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in7375_ '()))))
                                        (declare (not safe))
                                        (cons _phi7333_ __tmp17762))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp17761)))))
                      (declare (not safe))
                      (cons __tmp17760 _r7377_))))
               (declare (not safe))
               (_lp7277_ _rest7304_ '#f '() __tmp17759)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in7305_
                                                          'gx#module-context::t))
                                                       (let* ((_r7380_ (if _current-src7280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp17754
                                          (let ()
                                            (declare (not safe))
                                            (_make-import-spec-in7241_
                                             _current-src7280_
                                             _current-in7281_))))
                                     (declare (not safe))
                                     (cons __tmp17754 _r7282_))
                                   _r7282_))
                      (__tmp17755
                       (let ((__tmp17756
                              (let ((__tmp17757
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path7240_ _in7305_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp17757))))
                         (declare (not safe))
                         (cons __tmp17756 _r7380_))))
                 (declare (not safe))
                 (_lp7277_ _rest7304_ '#f '() __tmp17755))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest72837291_))
                                       (let ((_hd72887385_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest72837291_)))
                                             (_tl72897387_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest72837291_))))
                                         (let* ((_in7390_ _hd72887385_)
                                                (_rest7392_ _tl72897387_))
                                           (declare (not safe))
                                           (_K72877382_ _rest7392_ _in7390_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else72857301_))))))
                             _tl72467263_)))
                        (let ()
                          (declare (not safe))
                          (_g72437253_ _g72447256_))))))
            (declare (not safe))
            (_g72427394_ _stx7235_)))))
    (define gxc#generate-meta-export%
      (lambda (_stx7045_ _state7046_)
        (letrec* ((_context-chain7048_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path7049_
                   (lambda (_ctx7233_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx7233_
                        _context-chain7048_)))))
          (let* ((_g70517061_
                  (lambda (_g70527058_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g70527058_))))
                 (_g70507230_
                  (lambda (_g70527064_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g70527064_))
                        (let ((_e70567066_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g70527064_))))
                          (let ((_hd70557069_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e70567066_)))
                                (_tl70547071_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e70567066_))))
                            ((lambda (_L7074_)
                               (let _lp7085_ ((_rest7087_ _L7074_)
                                              (_r7088_ '()))
                                 (let* ((_rest70897097_ _rest7087_)
                                        (_else70917105_
                                         (lambda ()
                                           (let ((__tmp17771
                                                  (let ()
                                                    (declare (not safe))
                                                    (reverse _r7088_))))
                                             (declare (not safe))
                                             (cons '%#export __tmp17771))))
                                        (_K70937218_
                                         (lambda (_rest7108_ _out7109_)
                                           (let* ((_out71107123_ _out7109_)
                                                  (_E71137127_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _out71107123_))))
                                             (let ((_K71177197_
                                                    (lambda (_name7193_
                                                             _phi7194_
                                                             _key7195_)
                                                      (let ((__tmp17772
                                                             (let ((__tmp17773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17774
                                   (let ((__tmp17775
                                          (let ((__tmp17778
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key7195_)))
                                                (__tmp17776
                                                 (let ((__tmp17777
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name7193_))))
                                                   (declare (not safe))
                                                   (cons __tmp17777 '()))))
                                            (declare (not safe))
                                            (cons __tmp17778 __tmp17776))))
                                     (declare (not safe))
                                     (cons _phi7194_ __tmp17775))))
                              (declare (not safe))
                              (cons 'spec: __tmp17774))))
                       (declare (not safe))
                       (cons __tmp17773 _r7088_))))
                (declare (not safe))
                (_lp7085_ _rest7108_ __tmp17772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K71147177_
                                                    (lambda (_phi7131_
                                                             _src7132_)
                                                      (let* ((_out7172_
                                                              (if _src7132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp17779
                                 (let ((__tmp17780
                                        (let* ((_g71337142_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path7049_
                                                   _src7132_)))
                                               (_E71367146_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g71337142_))))
                                          (let ((_K71387162_
                                                 (lambda (_path7160_)
                                                   _path7160_))
                                                (_K71377152_
                                                 (lambda (_path7150_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in: _path7150_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g71337142_))
                                                (let ((_tl71407167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g71337142_)))
                                                      (_hd71397165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g71337142_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl71407167_))
                                                      (let ((_path7170_
                                                             _hd71397165_))
                                                        (declare (not safe))
                                                        (_K71387162_
                                                         _path7170_))
                                                      (let ((_path7155_
                                                             _g71337142_))
                                                        (declare (not safe))
                                                        (_K71377152_
                                                         _path7155_))))
                                                (let ((_path7155_ _g71337142_))
                                                  (declare (not safe))
                                                  (_K71377152_
                                                   _path7155_)))))))
                                   (declare (not safe))
                                   (cons __tmp17780 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp17779))
                          '#t))
                     (_out7174_
                      (if (let () (declare (not safe)) (fxzero? _phi7131_))
                          _out7172_
                          (let ((__tmp17781
                                 (let ((__tmp17782
                                        (let ()
                                          (declare (not safe))
                                          (cons _out7172_ '()))))
                                   (declare (not safe))
                                   (cons _phi7131_ __tmp17782))))
                            (declare (not safe))
                            (cons 'phi: __tmp17781)))))
                (let ((__tmp17783
                       (let () (declare (not safe)) (cons _out7174_ _r7088_))))
                  (declare (not safe))
                  (_lp7085_ _rest7108_ __tmp17783))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match71127190_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out71107123_
                                                               'gx#export-set::t))
                                                            (let* ((_e71157180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out71107123_ '1)))
                           (_e71167185_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out71107123_ '2))))
                      (let ((_src7183_ _e71157180_) (_phi7188_ _e71167185_))
                        (let ()
                          (declare (not safe))
                          (_K71147177_ _phi7188_ _src7183_))))
                    (let () (declare (not safe)) (_E71137127_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out71107123_
                                                        'gx#module-export::t))
                                                     (let* ((_e71187200_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _out71107123_ '1)))
                    (_e71197203_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out71107123_ '2)))
                    (_e71207208_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out71107123_ '3)))
                    (_e71217213_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out71107123_ '4))))
               (let ((_key7206_ _e71197203_)
                     (_phi7211_ _e71207208_)
                     (_name7216_ _e71217213_))
                 (let ()
                   (declare (not safe))
                   (_K71177197_ _name7216_ _phi7211_ _key7206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match71127190_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest70897097_))
                                       (let ((_hd70947221_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest70897097_)))
                                             (_tl70957223_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest70897097_))))
                                         (let* ((_out7226_ _hd70947221_)
                                                (_rest7228_ _tl70957223_))
                                           (declare (not safe))
                                           (_K70937218_ _rest7228_ _out7226_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else70917105_))))))
                             _tl70547071_)))
                        (let ()
                          (declare (not safe))
                          (_g70517061_ _g70527064_))))))
            (declare (not safe))
            (_g70507230_ _stx7045_)))))
    (define gxc#generate-meta-provide%
      (lambda (_stx7006_ _state7007_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state7007_))
        (let* ((_g70097019_
                (lambda (_g70107016_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g70107016_))))
               (_g70087042_
                (lambda (_g70107022_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g70107022_))
                      (let ((_e70147024_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g70107022_))))
                        (let ((_hd70137027_
                               (let ()
                                 (declare (not safe))
                                 (##car _e70147024_)))
                              (_tl70127029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e70147024_))))
                          ((lambda (_L7032_)
                             (let ((__tmp17784
                                    (let ()
                                      (declare (not safe))
                                      (map gxc#generate-runtime-identifier
                                           _L7032_))))
                               (declare (not safe))
                               (cons '%#provide __tmp17784)))
                           _tl70127029_)))
                      (let ()
                        (declare (not safe))
                        (_g70097019_ _g70107022_))))))
          (declare (not safe))
          (_g70087042_ _stx7006_))))
    (define gxc#generate-meta-extern%
      (lambda (_stx6877_ _state6878_)
        (letrec ((_generate16880_
                  (lambda (_id7001_ _eid7002_)
                    (let ((_eid7004_
                           (let () (declare (not safe)) (gx#stx-e _eid7002_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _eid7004_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx6877_
                             _eid7004_)))
                      (let ((__tmp17786
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id7001_)))
                            (__tmp17785
                             (let ()
                               (declare (not safe))
                               (cons _eid7004_ '()))))
                        (declare (not safe))
                        (cons __tmp17786 __tmp17785))))))
          (let* ((_g68826910_
                  (lambda (_g68836907_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g68836907_))))
                 (_g68816998_
                  (lambda (_g68836913_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g68836913_))
                        (let ((_e68886915_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g68836913_))))
                          (let ((_hd68876918_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e68886915_)))
                                (_tl68866920_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e68886915_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl68866920_))
                                (let ((_g17787_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl68866920_
                                          '0))))
                                  (begin
                                    (let ((_g17788_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g17787_)
                                                 (##vector-length _g17787_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g17788_ 2)))
                                          (error "Context expects 2 values"
                                                 _g17788_)))
                                    (let ((_target68896923_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g17787_ 0)))
                                          (_tl68916925_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g17787_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl68916925_))
                                          (letrec ((_loop68926928_
                                                    (lambda (_hd68906931_
                                                             _eid68966933_
                                                             _id68976935_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd68906931_))
                                                          (let ((_e68936938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd68906931_))))
                    (let ((_lp-hd68946941_
                           (let () (declare (not safe)) (##car _e68936938_)))
                          (_lp-tl68956943_
                           (let () (declare (not safe)) (##cdr _e68936938_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd68946941_))
                          (let ((_e69026946_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd68946941_))))
                            (let ((_hd69016949_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e69026946_)))
                                  (_tl69006951_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e69026946_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl69006951_))
                                  (let ((_e69056954_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl69006951_))))
                                    (let ((_hd69046957_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e69056954_)))
                                          (_tl69036959_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e69056954_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl69036959_))
                                          (let ((__tmp17795
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd69046957_
                                                         _eid68966933_)))
                                                (__tmp17794
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd69016949_
                                                         _id68976935_))))
                                            (declare (not safe))
                                            (_loop68926928_
                                             _lp-tl68956943_
                                             __tmp17795
                                             __tmp17794))
                                          (let ()
                                            (declare (not safe))
                                            (_g68826910_ _g68836913_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g68826910_ _g68836913_)))))
                          (let ()
                            (declare (not safe))
                            (_g68826910_ _g68836913_)))))
                  (let ((_eid68986962_
                         (let () (declare (not safe)) (reverse _eid68966933_)))
                        (_id68996964_
                         (let () (declare (not safe)) (reverse _id68976935_))))
                    ((lambda (_L6967_ _L6968_)
                       (let ((__tmp17789
                              (let ((__tmp17792
                                     (let ((__tmp17793
                                            (lambda (_g69836986_ _g69846988_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g69836986_
                                                      _g69846988_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp17793 '() _L6968_)))
                                    (__tmp17790
                                     (let ((__tmp17791
                                            (lambda (_g69906993_ _g69916995_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g69906993_
                                                      _g69916995_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp17791 '() _L6967_))))
                                (declare (not safe))
                                (map _generate16880_ __tmp17792 __tmp17790))))
                         (declare (not safe))
                         (cons '%#extern __tmp17789)))
                     _eid68986962_
                     _id68996964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop68926928_
                                               _target68896923_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g68826910_ _g68836913_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g68826910_ _g68836913_)))))
                        (let ()
                          (declare (not safe))
                          (_g68826910_ _g68836913_))))))
            (declare (not safe))
            (_g68816998_ _stx6877_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_stx6667_ _state6668_)
        (letrec ((_generate16670_
                  (lambda (_id6872_)
                    (let ((_eid6874_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id6872_)))
                          (_ident6875_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id6872_))))
                      (let ((__tmp17796
                             (let ((__tmp17797
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid6874_ '()))))
                               (declare (not safe))
                               (cons _ident6875_ __tmp17797))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp17796)))))
                 (_generate*6671_
                  (lambda (_all6840_)
                    (let* ((_all68416849_ _all6840_)
                           (_else68436857_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all6840_))))
                           (_K68456862_ (lambda (_one6860_) _one6860_)))
                      (if (let () (declare (not safe)) (##pair? _all68416849_))
                          (let ((_hd68466865_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all68416849_)))
                                (_tl68476867_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all68416849_))))
                            (let ((_one6870_ _hd68466865_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl68476867_))
                                  (let ()
                                    (declare (not safe))
                                    (_K68456862_ _one6870_))
                                  (let ()
                                    (declare (not safe))
                                    (_else68436857_)))))
                          (let () (declare (not safe)) (_else68436857_)))))))
          (let* ((_g66736690_
                  (lambda (_g66746687_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g66746687_))))
                 (_g66726837_
                  (lambda (_g66746693_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g66746693_))
                        (let ((_e66796695_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g66746693_))))
                          (let ((_hd66786698_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e66796695_)))
                                (_tl66776700_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e66796695_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl66776700_))
                                (let ((_e66826703_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl66776700_))))
                                  (let ((_hd66816706_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e66826703_)))
                                        (_tl66806708_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e66826703_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl66806708_))
                                        (let ((_e66856711_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl66806708_))))
                                          (let ((_hd66846714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e66856711_)))
                                                (_tl66836716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e66856711_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null? _tl66836716_))
                                                ((lambda (_L6719_ _L6720_)
                                                   (let _lp6736_ ((_rest6738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6720_)
                          (_r6739_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx1692916930_
                                                             _rest6738_)
                                                            (_g67446761_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          ___stx1692916930_)))))
               (let ((___kont1693116932_
                      (lambda (_L6824_)
                        (let ()
                          (declare (not safe))
                          (_lp6736_ _L6824_ _r6739_))))
                     (___kont1693316934_
                      (lambda (_L6797_ _L6798_)
                        (let ((__tmp17798
                               (let ((__tmp17799
                                      (let ()
                                        (declare (not safe))
                                        (_generate16670_ _L6798_))))
                                 (declare (not safe))
                                 (cons __tmp17799 _r6739_))))
                          (declare (not safe))
                          (_lp6736_ _L6797_ __tmp17798))))
                     (___kont1693516936_
                      (lambda (_L6773_)
                        (let ((__tmp17800
                               (let ((__tmp17801
                                      (let ((__tmp17802
                                             (let ()
                                               (declare (not safe))
                                               (_generate16670_ _L6773_))))
                                        (declare (not safe))
                                        (cons __tmp17802 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp17801 _r6739_))))
                          (declare (not safe))
                          (_generate*6671_ __tmp17800))))
                     (___kont1693716938_
                      (lambda ()
                        (let ((__tmp17803
                               (let ()
                                 (declare (not safe))
                                 (reverse _r6739_))))
                          (declare (not safe))
                          (_generate*6671_ __tmp17803)))))
                 (let ((_g67426784_
                        (lambda ()
                          (let ((_L6773_ ___stx1692916930_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L6773_))
                                (___kont1693516936_ _L6773_)
                                (___kont1693716938_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx1692916930_))
                       (let ((_e67496813_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx1692916930_))))
                         (let ((_tl67476818_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e67496813_)))
                               (_hd67486816_
                                (let ()
                                  (declare (not safe))
                                  (##car _e67496813_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd67486816_))
                               (let ((_e67506821_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd67486816_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e67506821_ '#f))
                                     (___kont1693116932_ _tl67476818_)
                                     (___kont1693316934_
                                      _tl67476818_
                                      _hd67486816_)))
                               (___kont1693316934_
                                _tl67476818_
                                _hd67486816_))))
                       (let () (declare (not safe)) (_g67426784_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd66846714_
                                                 _hd66816706_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g66736690_ _g66746693_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g66736690_ _g66746693_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g66736690_ _g66746693_)))))
                        (let ()
                          (declare (not safe))
                          (_g66736690_ _g66746693_))))))
            (declare (not safe))
            (_g66726837_ _stx6667_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_stx6564_ _state6565_)
        (let* ((_g65676584_
                (lambda (_g65686581_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g65686581_))))
               (_g65666664_
                (lambda (_g65686587_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g65686587_))
                      (let ((_e65736589_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g65686587_))))
                        (let ((_hd65726592_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65736589_)))
                              (_tl65716594_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65736589_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl65716594_))
                              (let ((_e65766597_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl65716594_))))
                                (let ((_hd65756600_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65766597_)))
                                      (_tl65746602_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65766597_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl65746602_))
                                      (let ((_e65796605_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl65746602_))))
                                        (let ((_hd65786608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65796605_)))
                                              (_tl65776610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65796605_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl65776610_))
                                              ((lambda (_L6613_ _L6614_)
                                                 (let* ((_eid6629_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L6614_)))
                                                        (_phi6631_
                                                         (let ((__tmp17804
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp17804
                                                                '1)))
                                                        (_block6633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#meta-state-begin-phi!
                                                            _state6565_
                                                            _phi6631_))))
                                                   (let* ((_g66366643_
                                                           (lambda (_g66376640_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error '#f '"Bad syntax" _g66376640_))))
                  (_g66356661_
                   (lambda (_g66376646_)
                     ((lambda (_L6648_)
                        (let ()
                          (let ((__tmp17805
                                 (let ((__tmp17808
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp17806
                                        (let ((__tmp17807
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L6613_ '()))))
                                          (declare (not safe))
                                          (cons _L6648_ __tmp17807))))
                                   (declare (not safe))
                                   (cons __tmp17808 __tmp17806))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             _state6565_
                             _phi6631_
                             __tmp17805))))
                      _g66376646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g66356661_ _eid6629_))
                                                   (if _block6633_
                                                       (let ((__tmp17812
                                                              (let ((__tmp17818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17819
                                    (let ((__tmp17820
                                           (let ((__tmp17821
                                                  (let ((__tmp17825
                                                         (let ((__tmp17826
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp17826)))
                (__tmp17822
                 (let ((__tmp17823
                        (let ((__tmp17824
                               (let ()
                                 (declare (not safe))
                                 (cons _block6633_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp17824))))
                   (declare (not safe))
                   (cons __tmp17823 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17825
                                                          __tmp17822))))
                                             (declare (not safe))
                                             (cons '%#call __tmp17821))))
                                      (declare (not safe))
                                      (cons __tmp17820 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp17819)))
                            (__tmp17813
                             (let ((__tmp17814
                                    (let ((__tmp17815
                                           (let ((__tmp17817
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L6614_)))
                                                 (__tmp17816
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid6629_ '()))))
                                             (declare (not safe))
                                             (cons __tmp17817 __tmp17816))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp17815))))
                               (declare (not safe))
                               (cons __tmp17814 '()))))
                        (declare (not safe))
                        (cons __tmp17818 __tmp17813))))
                 (declare (not safe))
                 (cons '%#begin __tmp17812))
               (let ((__tmp17809
                      (let ((__tmp17811
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L6614_)))
                            (__tmp17810
                             (let ()
                               (declare (not safe))
                               (cons _eid6629_ '()))))
                        (declare (not safe))
                        (cons __tmp17811 __tmp17810))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp17809)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd65786608_
                                               _hd65756600_)
                                              (let ()
                                                (declare (not safe))
                                                (_g65676584_ _g65686587_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g65676584_ _g65686587_)))))
                              (let ()
                                (declare (not safe))
                                (_g65676584_ _g65686587_)))))
                      (let ()
                        (declare (not safe))
                        (_g65676584_ _g65686587_))))))
          (declare (not safe))
          (_g65666664_ _stx6564_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_stx6496_ _state6497_)
        (let* ((_g64996516_
                (lambda (_g65006513_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g65006513_))))
               (_g64986561_
                (lambda (_g65006519_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g65006519_))
                      (let ((_e65056521_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g65006519_))))
                        (let ((_hd65046524_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65056521_)))
                              (_tl65036526_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65056521_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl65036526_))
                              (let ((_e65086529_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl65036526_))))
                                (let ((_hd65076532_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65086529_)))
                                      (_tl65066534_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65086529_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl65066534_))
                                      (let ((_e65116537_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl65066534_))))
                                        (let ((_hd65106540_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65116537_)))
                                              (_tl65096542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65116537_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl65096542_))
                                              ((lambda (_L6545_ _L6546_)
                                                 (let ((__tmp17827
                                                        (let ((__tmp17830
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L6546_)))
                      (__tmp17828
                       (let ((__tmp17829
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L6545_))))
                         (declare (not safe))
                         (cons __tmp17829 '()))))
                  (declare (not safe))
                  (cons __tmp17830 __tmp17828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp17827)))
                                               _hd65106540_
                                               _hd65076532_)
                                              (let ()
                                                (declare (not safe))
                                                (_g64996516_ _g65006519_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g64996516_ _g65006519_)))))
                              (let ()
                                (declare (not safe))
                                (_g64996516_ _g65006519_)))))
                      (let ()
                        (declare (not safe))
                        (_g64996516_ _g65006519_))))))
          (declare (not safe))
          (_g64986561_ _stx6496_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_stx6493_ _state6494_)
        (let ((__tmp17831 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! _state6494_ __tmp17831 _stx6493_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _stx6493_ _state6494_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_stx6490_ _state6491_)
        (let ((__tmp17832 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! _state6491_ __tmp17832 _stx6490_))
        '#!void))
    (define gxc#meta-state::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#meta-state::t
         '#f
         '4
         'meta-state
         '()
         ':init!
         '(src n open blocks))))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-struct-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args6487_
        (apply make-struct-instance gxc#meta-state::t _$args6487_)))
    (define gxc#meta-state-src
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#meta-state::t '0)))
    (define gxc#meta-state-n
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#meta-state::t '1)))
    (define gxc#meta-state-open
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#meta-state::t '2)))
    (define gxc#meta-state-blocks
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#meta-state::t '3)))
    (define gxc#meta-state-src-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#meta-state::t '0)))
    (define gxc#meta-state-n-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#meta-state::t '1)))
    (define gxc#meta-state-open-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#meta-state::t '2)))
    (define gxc#meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#meta-state::t '3)))
    (define gxc#meta-state:::init!
      (lambda (_self6484_ _ctx6485_)
        (if (let ((__tmp17836
                   (let () (declare (not safe)) (##vector-length _self6484_))))
              (declare (not safe))
              (##fx< '4 __tmp17836))
            (begin
              (let ((__tmp17833
                     (let ((__tmp17834
                            (##structure-ref
                             _ctx6485_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp17834))))
                (declare (not safe))
                (##vector-set! _self6484_ '1 __tmp17833))
              (let () (declare (not safe)) (##vector-set! _self6484_ '2 '1))
              (let ((__tmp17835
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self6484_ '3 __tmp17835))
              (let () (declare (not safe)) (##vector-set! _self6484_ '4 '())))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self6484_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#meta-state-block::t
         '#f
         '4
         'meta-state-block
         '()
         '#f
         '(ctx phi n code))))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args6359_
        (apply make-struct-instance gxc#meta-state-block::t _$args6359_)))
    (define gxc#meta-state-block-ctx
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#meta-state-block::t '0)))
    (define gxc#meta-state-block-phi
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#meta-state-block::t '1)))
    (define gxc#meta-state-block-n
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#meta-state-block::t '2)))
    (define gxc#meta-state-block-code
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#meta-state-block::t '3)))
    (define gxc#meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#meta-state-block::t '0)))
    (define gxc#meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#meta-state-block::t '1)))
    (define gxc#meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#meta-state-block::t '2)))
    (define gxc#meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#meta-state-block::t '3)))
    (define gxc#meta-state-begin-phi!
      (lambda (_state6318_ _phi6319_)
        (let* ((_state63206328_ _state6318_)
               (_E63226332_
                (lambda () (error '"No clause matching" _state63206328_)))
               (_K63236341_
                (lambda (_open6335_ _n6336_ _src6337_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _open6335_ _phi6319_ '#f))
                      '#f
                      (let ((_block-ref6339_
                             (string-append
                              _src6337_
                              '"__"
                              (let ()
                                (declare (not safe))
                                (number->string _n6336_)))))
                        (##structure-set!
                         _state6318_
                         (let () (declare (not safe)) (fx+ _n6336_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp17837
                               (let ((__tmp17838
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp17838
                                  _phi6319_
                                  _n6336_
                                  '()))))
                          (declare (not safe))
                          (table-set! _open6335_ _phi6319_ __tmp17837))
                        _block-ref6339_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _state63206328_ 'gxc#meta-state::t))
              (let* ((_e63246344_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state63206328_ '1)))
                     (_src6347_ _e63246344_)
                     (_e63256349_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state63206328_ '2)))
                     (_n6352_ _e63256349_)
                     (_e63266354_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state63206328_ '3)))
                     (_open6357_ _e63266354_))
                (declare (not safe))
                (_K63236341_ _open6357_ _n6352_ _src6347_))
              (let () (declare (not safe)) (_E63226332_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state6312_ _phi6313_ _stx6314_)
        (let ((_block6316_
               (let ((__tmp17839
                      (##structure-ref _state6312_ '3 gxc#meta-state::t '#f)))
                 (declare (not safe))
                 (table-ref __tmp17839 _phi6313_ '#f))))
          (##structure-set!
           _block6316_
           (let ((__tmp17840
                  (##structure-ref
                   _block6316_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx6314_ __tmp17840))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state6307_)
        (##structure-set!
         _state6307_
         (let ((__tmp17843
                (lambda (_g17844_ _block6309_ _r6310_)
                  (let () (declare (not safe)) (cons _block6309_ _r6310_))))
               (__tmp17842
                (##structure-ref _state6307_ '4 gxc#meta-state::t '#f))
               (__tmp17841
                (##structure-ref _state6307_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp17843 __tmp17842 __tmp17841))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state6307_
         (let () (declare (not safe)) (make-table 'test: eq?))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state6259_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state6259_))
        (let ((__tmp17846
               (lambda (_block6261_ _r6262_)
                 (let* ((_block62636272_ _block6261_)
                        (_E62656276_
                         (lambda ()
                           (error '"No clause matching" _block62636272_)))
                        (_K62666284_
                         (lambda (_code6279_ _n6280_ _phi6281_ _ctx6282_)
                           (if (let () (declare (not safe)) (null? _code6279_))
                               _r6262_
                               (let ((__tmp17847
                                      (let ((__tmp17848
                                             (let ((__tmp17849
                                                    (let ((__tmp17850
                                                           (let ((__tmp17851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp17852
                                 (let ()
                                   (declare (not safe))
                                   (reverse _code6279_))))
                            (declare (not safe))
                            (cons '%#begin __tmp17852))))
                     (declare (not safe))
                     (cons __tmp17851 '()))))
              (declare (not safe))
              (cons _n6280_ __tmp17850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi6281_ __tmp17849))))
                                        (declare (not safe))
                                        (cons _ctx6282_ __tmp17848))))
                                 (declare (not safe))
                                 (cons __tmp17847 _r6262_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block62636272_
                          'gxc#meta-state-block::t))
                       (let* ((_e62676287_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block62636272_ '1)))
                              (_ctx6290_ _e62676287_)
                              (_e62686292_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block62636272_ '2)))
                              (_phi6295_ _e62686292_)
                              (_e62696297_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block62636272_ '3)))
                              (_n6300_ _e62696297_)
                              (_e62706302_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block62636272_ '4)))
                              (_code6305_ _e62706302_))
                         (declare (not safe))
                         (_K62666284_ _code6305_ _n6300_ _phi6295_ _ctx6290_))
                       (let () (declare (not safe)) (_E62656276_))))))
              (__tmp17845
               (##structure-ref _state6259_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp17846 '() __tmp17845))))
    (define gxc#collect-expression-refs
      (lambda (_stx6255_)
        (let ((_ht6257_ (let () (declare (not safe)) (make-table 'test: eq?))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx6255_ _ht6257_))
          _ht6257_)))
    (define gxc#collect-refs-ref%
      (lambda (_stx6198_ _ht6199_)
        (let* ((_g62016214_
                (lambda (_g62026211_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g62026211_))))
               (_g62006252_
                (lambda (_g62026217_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g62026217_))
                      (let ((_e62066219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g62026217_))))
                        (let ((_hd62056222_
                               (let ()
                                 (declare (not safe))
                                 (##car _e62066219_)))
                              (_tl62046224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e62066219_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl62046224_))
                              (let ((_e62096227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl62046224_))))
                                (let ((_hd62086230_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e62096227_)))
                                      (_tl62076232_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e62096227_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl62076232_))
                                      ((lambda (_L6235_)
                                         (let* ((_bind6247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L6235_)))
                                                (_eid6249_
                                                 (if _bind6247_
                                                     (##structure-ref
                                                      _bind6247_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L6235_)))))
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _ht6199_
                                              _eid6249_
                                              _eid6249_))))
                                       _hd62086230_)
                                      (let ()
                                        (declare (not safe))
                                        (_g62016214_ _g62026217_)))))
                              (let ()
                                (declare (not safe))
                                (_g62016214_ _g62026217_)))))
                      (let ()
                        (declare (not safe))
                        (_g62016214_ _g62026217_))))))
          (declare (not safe))
          (_g62006252_ _stx6198_))))
    (define gxc#collect-refs-setq%
      (lambda (_stx6125_ _ht6126_)
        (let* ((_g61286145_
                (lambda (_g61296142_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g61296142_))))
               (_g61276195_
                (lambda (_g61296148_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g61296148_))
                      (let ((_e61346150_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g61296148_))))
                        (let ((_hd61336153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e61346150_)))
                              (_tl61326155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e61346150_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl61326155_))
                              (let ((_e61376158_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl61326155_))))
                                (let ((_hd61366161_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e61376158_)))
                                      (_tl61356163_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e61376158_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl61356163_))
                                      (let ((_e61406166_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl61356163_))))
                                        (let ((_hd61396169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e61406166_)))
                                              (_tl61386171_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e61406166_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl61386171_))
                                              ((lambda (_L6174_ _L6175_)
                                                 (let* ((_bind6190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L6175_)))
                                                        (_eid6192_
                                                         (if _bind6190_
                                                             (##structure-ref
                                                              _bind6190_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L6175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (table-set!
                                                      _ht6126_
                                                      _eid6192_
                                                      _eid6192_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L6174_
                                                      _ht6126_))))
                                               _hd61396169_
                                               _hd61366161_)
                                              (let ()
                                                (declare (not safe))
                                                (_g61286145_ _g61296148_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g61286145_ _g61296148_)))))
                              (let ()
                                (declare (not safe))
                                (_g61286145_ _g61296148_)))))
                      (let ()
                        (declare (not safe))
                        (_g61286145_ _g61296148_))))))
          (declare (not safe))
          (_g61276195_ _stx6125_))))
    (define gxc#find-runtime-begin%
      (lambda (_stx6087_)
        (let* ((_g60896099_
                (lambda (_g60906096_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g60906096_))))
               (_g60886122_
                (lambda (_g60906102_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g60906102_))
                      (let ((_e60946104_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g60906102_))))
                        (let ((_hd60936107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60946104_)))
                              (_tl60926109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60946104_))))
                          ((lambda (_L6112_)
                             (let ()
                               (declare (not safe))
                               (ormap1 gxc#compile-e _L6112_)))
                           _tl60926109_)))
                      (let ()
                        (declare (not safe))
                        (_g60896099_ _g60906102_))))))
          (declare (not safe))
          (_g60886122_ _stx6087_))))
    (define gxc#find-lambda-expression-begin%
      (lambda (_stx6049_)
        (let* ((_g60516061_
                (lambda (_g60526058_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g60526058_))))
               (_g60506084_
                (lambda (_g60526064_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g60526064_))
                      (let ((_e60566066_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g60526064_))))
                        (let ((_hd60556069_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60566066_)))
                              (_tl60546071_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60566066_))))
                          ((lambda (_L6074_)
                             (let ((__tmp17853
                                    (let ()
                                      (declare (not safe))
                                      (last _L6074_))))
                               (declare (not safe))
                               (gxc#compile-e __tmp17853)))
                           _tl60546071_)))
                      (let ()
                        (declare (not safe))
                        (_g60516061_ _g60526064_))))))
          (declare (not safe))
          (_g60506084_ _stx6049_))))
    (define gxc#find-lambda-expression-begin-annotation%
      (lambda (_stx5982_)
        (let* ((_g59846001_
                (lambda (_g59855998_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g59855998_))))
               (_g59836046_
                (lambda (_g59856004_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g59856004_))
                      (let ((_e59906006_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g59856004_))))
                        (let ((_hd59896009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e59906006_)))
                              (_tl59886011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e59906006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl59886011_))
                              (let ((_e59936014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl59886011_))))
                                (let ((_hd59926017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e59936014_)))
                                      (_tl59916019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e59936014_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl59916019_))
                                      (let ((_e59966022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl59916019_))))
                                        (let ((_hd59956025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e59966022_)))
                                              (_tl59946027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e59966022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl59946027_))
                                              ((lambda (_L6030_ _L6031_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6030_)))
                                               _hd59956025_
                                               _hd59926017_)
                                              (let ()
                                                (declare (not safe))
                                                (_g59846001_ _g59856004_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g59846001_ _g59856004_)))))
                              (let ()
                                (declare (not safe))
                                (_g59846001_ _g59856004_)))))
                      (let ()
                        (declare (not safe))
                        (_g59846001_ _g59856004_))))))
          (declare (not safe))
          (_g59836046_ _stx5982_))))
    (define gxc#find-lambda-expression-let-values%
      (lambda (_stx5915_)
        (let* ((_g59175934_
                (lambda (_g59185931_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g59185931_))))
               (_g59165979_
                (lambda (_g59185937_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g59185937_))
                      (let ((_e59235939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g59185937_))))
                        (let ((_hd59225942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e59235939_)))
                              (_tl59215944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e59235939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl59215944_))
                              (let ((_e59265947_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl59215944_))))
                                (let ((_hd59255950_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e59265947_)))
                                      (_tl59245952_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e59265947_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl59245952_))
                                      (let ((_e59295955_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl59245952_))))
                                        (let ((_hd59285958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e59295955_)))
                                              (_tl59275960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e59295955_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl59275960_))
                                              ((lambda (_L5963_ _L5964_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L5963_)))
                                               _hd59285958_
                                               _hd59255950_)
                                              (let ()
                                                (declare (not safe))
                                                (_g59175934_ _g59185937_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g59175934_ _g59185937_)))))
                              (let ()
                                (declare (not safe))
                                (_g59175934_ _g59185937_)))))
                      (let ()
                        (declare (not safe))
                        (_g59175934_ _g59185937_))))))
          (declare (not safe))
          (_g59165979_ _stx5915_))))
    (define gxc#count-values-single% (lambda (_stx5913_) '1))
    (define gxc#count-values-begin%
      (lambda (_stx5831_)
        (let* ((_g58335852_
                (lambda (_g58345849_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g58345849_))))
               (_g58325910_
                (lambda (_g58345855_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g58345855_))
                      (let ((_e58385857_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g58345855_))))
                        (let ((_hd58375860_
                               (let ()
                                 (declare (not safe))
                                 (##car _e58385857_)))
                              (_tl58365862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e58385857_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl58365862_))
                              (let ((_g17854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl58365862_
                                        '0))))
                                (begin
                                  (let ((_g17855_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17854_)
                                               (##vector-length _g17854_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17855_ 2)))
                                        (error "Context expects 2 values"
                                               _g17855_)))
                                  (let ((_target58395865_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17854_ 0)))
                                        (_tl58415867_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17854_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl58415867_))
                                        (letrec ((_loop58425870_
                                                  (lambda (_hd58405873_
                                                           _expr58465875_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd58405873_))
                                                        (let ((_e58435878_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd58405873_))))
                  (let ((_lp-hd58445881_
                         (let () (declare (not safe)) (##car _e58435878_)))
                        (_lp-tl58455883_
                         (let () (declare (not safe)) (##cdr _e58435878_))))
                    (let ((__tmp17859
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd58445881_ _expr58465875_))))
                      (declare (not safe))
                      (_loop58425870_ _lp-tl58455883_ __tmp17859))))
                (let ((_expr58475886_
                       (let () (declare (not safe)) (reverse _expr58465875_))))
                  ((lambda (_L5889_)
                     (let ((__tmp17856
                            (let ((__tmp17857
                                   (let ((__tmp17858
                                          (lambda (_g59025905_ _g59035907_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g59025905_
                                                    _g59035907_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp17858 '() _L5889_))))
                              (declare (not safe))
                              (last __tmp17857))))
                       (declare (not safe))
                       (gxc#compile-e __tmp17856)))
                   _expr58475886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop58425870_
                                             _target58395865_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g58335852_ _g58345855_))))))
                              (let ()
                                (declare (not safe))
                                (_g58335852_ _g58345855_)))))
                      (let ()
                        (declare (not safe))
                        (_g58335852_ _g58345855_))))))
          (declare (not safe))
          (_g58325910_ _stx5831_))))
    (define gxc#count-values-begin-annotation%
      (lambda (_stx5764_)
        (let* ((_g57665783_
                (lambda (_g57675780_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g57675780_))))
               (_g57655828_
                (lambda (_g57675786_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g57675786_))
                      (let ((_e57725788_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g57675786_))))
                        (let ((_hd57715791_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57725788_)))
                              (_tl57705793_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57725788_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl57705793_))
                              (let ((_e57755796_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl57705793_))))
                                (let ((_hd57745799_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57755796_)))
                                      (_tl57735801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57755796_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl57735801_))
                                      (let ((_e57785804_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl57735801_))))
                                        (let ((_hd57775807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e57785804_)))
                                              (_tl57765809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e57785804_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl57765809_))
                                              ((lambda (_L5812_ _L5813_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L5812_)))
                                               _hd57775807_
                                               _hd57745799_)
                                              (let ()
                                                (declare (not safe))
                                                (_g57665783_ _g57675786_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g57665783_ _g57675786_)))))
                              (let ()
                                (declare (not safe))
                                (_g57665783_ _g57675786_)))))
                      (let ()
                        (declare (not safe))
                        (_g57665783_ _g57675786_))))))
          (declare (not safe))
          (_g57655828_ _stx5764_))))
    (define gxc#count-values-let-values%
      (lambda (_stx5697_)
        (let* ((_g56995716_
                (lambda (_g57005713_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g57005713_))))
               (_g56985761_
                (lambda (_g57005719_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g57005719_))
                      (let ((_e57055721_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g57005719_))))
                        (let ((_hd57045724_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57055721_)))
                              (_tl57035726_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57055721_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl57035726_))
                              (let ((_e57085729_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl57035726_))))
                                (let ((_hd57075732_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57085729_)))
                                      (_tl57065734_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57085729_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl57065734_))
                                      (let ((_e57115737_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl57065734_))))
                                        (let ((_hd57105740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e57115737_)))
                                              (_tl57095742_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e57115737_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl57095742_))
                                              ((lambda (_L5745_ _L5746_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L5745_)))
                                               _hd57105740_
                                               _hd57075732_)
                                              (let ()
                                                (declare (not safe))
                                                (_g56995716_ _g57005719_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g56995716_ _g57005719_)))))
                              (let ()
                                (declare (not safe))
                                (_g56995716_ _g57005719_)))))
                      (let ()
                        (declare (not safe))
                        (_g56995716_ _g57005719_))))))
          (declare (not safe))
          (_g56985761_ _stx5697_))))
    (define gxc#count-values-call%
      (lambda (_stx5564_)
        (let* ((___stx1695916960_ _stx5564_)
               (_g55675596_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1695916960_)))))
          (let ((___kont1696116962_
                 (lambda (_L5664_ _L5665_)
                   (length (let ((__tmp17860
                                  (lambda (_g56865689_ _g56875691_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g56865689_ _g56875691_)))))
                             (declare (not safe))
                             (foldr1 __tmp17860 '() _L5664_)))))
                (___kont1696516966_ (lambda () '#f)))
            (let ((___match1700417005_
                   (lambda (_e55735608_
                            _hd55725611_
                            _tl55715613_
                            _e55765616_
                            _hd55755619_
                            _tl55745621_
                            _e55795624_
                            _hd55785627_
                            _tl55775629_
                            _e55825632_
                            _hd55815635_
                            _tl55805637_
                            ___splice1696316964_
                            _target55835640_
                            _tl55855642_)
                     (letrec ((_loop55865645_
                               (lambda (_hd55845648_ _rand55905650_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd55845648_))
                                     (let ((_e55875653_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd55845648_))))
                                       (let ((_lp-tl55895658_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e55875653_)))
                                             (_lp-hd55885656_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e55875653_))))
                                         (let ((__tmp17861
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd55885656_
                                                        _rand55905650_))))
                                           (declare (not safe))
                                           (_loop55865645_
                                            _lp-tl55895658_
                                            __tmp17861))))
                                     (let ((_rand55915661_
                                            (let ()
                                              (declare (not safe))
                                              (reverse _rand55905650_))))
                                       (let ((_L5664_ _rand55915661_)
                                             (_L5665_ _hd55815635_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L5665_
                                                'values))
                                             (___kont1696116962_
                                              _L5664_
                                              _L5665_)
                                             (___kont1696516966_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop55865645_ _target55835640_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1695916960_))
                  (let ((_e55735608_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx1695916960_))))
                    (let ((_tl55715613_
                           (let () (declare (not safe)) (##cdr _e55735608_)))
                          (_hd55725611_
                           (let () (declare (not safe)) (##car _e55735608_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl55715613_))
                          (let ((_e55765616_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl55715613_))))
                            (let ((_tl55745621_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e55765616_)))
                                  (_hd55755619_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e55765616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd55755619_))
                                  (let ((_e55795624_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd55755619_))))
                                    (let ((_tl55775629_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e55795624_)))
                                          (_hd55785627_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e55795624_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd55785627_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd55785627_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl55775629_))
                                                  (let ((_e55825632_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl55775629_))))
                                                    (let ((_tl55805637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e55825632_)))
                                                          (_hd55815635_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e55825632_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl55805637_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl55745621_))
                      (let ((___splice1696316964_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl55745621_ '0))))
                        (let ((_tl55855642_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1696316964_ '1)))
                              (_target55835640_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1696316964_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl55855642_))
                              (___match1700417005_
                               _e55735608_
                               _hd55725611_
                               _tl55715613_
                               _e55765616_
                               _hd55755619_
                               _tl55745621_
                               _e55795624_
                               _hd55785627_
                               _tl55775629_
                               _e55825632_
                               _hd55815635_
                               _tl55805637_
                               ___splice1696316964_
                               _target55835640_
                               _tl55855642_)
                              (___kont1696516966_))))
                      (___kont1696516966_))
                  (___kont1696516966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1696516966_))
                                              (___kont1696516966_))
                                          (___kont1696516966_))))
                                  (___kont1696516966_))))
                          (___kont1696516966_))))
                  (___kont1696516966_)))))))
    (define gxc#count-values-if%
      (lambda (_stx5468_)
        (let* ((_g54705491_
                (lambda (_g54715488_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g54715488_))))
               (_g54695561_
                (lambda (_g54715494_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g54715494_))
                      (let ((_e54775496_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g54715494_))))
                        (let ((_hd54765499_
                               (let ()
                                 (declare (not safe))
                                 (##car _e54775496_)))
                              (_tl54755501_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e54775496_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl54755501_))
                              (let ((_e54805504_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl54755501_))))
                                (let ((_hd54795507_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e54805504_)))
                                      (_tl54785509_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e54805504_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl54785509_))
                                      (let ((_e54835512_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl54785509_))))
                                        (let ((_hd54825515_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e54835512_)))
                                              (_tl54815517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e54835512_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl54815517_))
                                              (let ((_e54865520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl54815517_))))
                                                (let ((_hd54855523_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e54865520_)))
                                                      (_tl54845525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e54865520_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl54845525_))
                                                      ((lambda (_L5528_
                                                                _L5529_
                                                                _L5530_)
                                                         (let ((_c155475549_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e _L5529_))))
                   (if _c155475549_
                       (let* ((_c15552_ _c155475549_)
                              (_c255535555_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L5528_))))
                         (if _c255535555_
                             (let ((_c25558_ _c255535555_))
                               (if (fx= _c15552_ _c25558_) _c15552_ '#f))
                             '#f))
                       '#f)))
               _hd54855523_
               _hd54825515_
               _hd54795507_)
              (let () (declare (not safe)) (_g54705491_ _g54715494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g54705491_ _g54715494_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g54705491_ _g54715494_)))))
                              (let ()
                                (declare (not safe))
                                (_g54705491_ _g54715494_)))))
                      (let ()
                        (declare (not safe))
                        (_g54705491_ _g54715494_))))))
          (declare (not safe))
          (_g54695561_ _stx5468_))))))
