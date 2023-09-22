(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1695377617)
  (begin
    (define gxc#current-compile-methods (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e16210_
                  (lambda (_id16212_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id16212_))))))
          (let ()
            (declare (not safe))
            (make-table 'test: gx#bound-identifier=? 'hash: _hash-e16210_)))))
    (define gxc#compile-e
      (lambda (_stx16165_ . _args16166_)
        (let* ((_g1616816178_
                (lambda (_g1616916175_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1616916175_))))
               (_g1616716206_
                (lambda (_g1616916181_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1616916181_))
                      (let ((_e1617316183_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1616916181_))))
                        (let ((_hd1617216186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1617316183_)))
                              (_tl1617116188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1617316183_))))
                          ((lambda (_L16191_)
                             (let ((_$e16201_
                                    (let ((__tmp17608
                                           (gxc#current-compile-methods))
                                          (__tmp17607
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _L16191_))))
                                      (declare (not safe))
                                      (table-ref __tmp17608 __tmp17607 '#f))))
                               (if _$e16201_
                                   ((lambda (_method16204_)
                                      (apply _method16204_
                                             _stx16165_
                                             _args16166_))
                                    _$e16201_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#raise-compile-error
                                      '"Cannot compile; missing method"
                                      _stx16165_
                                      _L16191_)))))
                           _hd1617216186_)))
                      (let ()
                        (declare (not safe))
                        (_g1616816178_ _g1616916181_))))))
          (declare (not safe))
          (_g1616716206_ _stx16165_))))
    (define gxc#&void-expression
      (make-promise
       (lambda ()
         (let ((_tbl16162_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#begin-annotation void))
           (let () (declare (not safe)) (table-set! _tbl16162_ '%#lambda void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#case-lambda void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#let-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#letrec-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#letrec*-values void))
           (let () (declare (not safe)) (table-set! _tbl16162_ '%#quote void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#quote-syntax void))
           (let () (declare (not safe)) (table-set! _tbl16162_ '%#call void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#call-unchecked void))
           (let () (declare (not safe)) (table-set! _tbl16162_ '%#if void))
           (let () (declare (not safe)) (table-set! _tbl16162_ '%#ref void))
           (let () (declare (not safe)) (table-set! _tbl16162_ '%#set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-instance? void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-direct-instance? void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-direct-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-direct-set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-unchecked-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-unchecked-set! void))
           _tbl16162_))))
    (define gxc#&void-special-form
      (make-promise
       (lambda ()
         (let ((_tbl16158_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let () (declare (not safe)) (table-set! _tbl16158_ '%#begin void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16158_ '%#begin-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16158_ '%#begin-foreign void))
           (let () (declare (not safe)) (table-set! _tbl16158_ '%#module void))
           (let () (declare (not safe)) (table-set! _tbl16158_ '%#import void))
           (let () (declare (not safe)) (table-set! _tbl16158_ '%#export void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16158_ '%#provide void))
           (let () (declare (not safe)) (table-set! _tbl16158_ '%#extern void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16158_ '%#define-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16158_ '%#define-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16158_ '%#define-alias void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16158_ '%#declare void))
           _tbl16158_))))
    (define gxc#&void
      (make-promise
       (lambda ()
         (let ((_tbl16154_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17609 (force gxc#&void-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16154_ __tmp17609))
           (let ((__tmp17610 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16154_ __tmp17610))
           _tbl16154_))))
    (define gxc#&false-expression
      (make-promise
       (lambda ()
         (let ((_tbl16150_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#begin-annotation false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#lambda false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#case-lambda false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#let-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#letrec-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#letrec*-values false))
           (let () (declare (not safe)) (table-set! _tbl16150_ '%#quote false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#quote-syntax false))
           (let () (declare (not safe)) (table-set! _tbl16150_ '%#call false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#call-unchecked false))
           (let () (declare (not safe)) (table-set! _tbl16150_ '%#if false))
           (let () (declare (not safe)) (table-set! _tbl16150_ '%#ref false))
           (let () (declare (not safe)) (table-set! _tbl16150_ '%#set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#struct-instance? false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#struct-direct-instance? false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#struct-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#struct-set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#struct-direct-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#struct-direct-set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#struct-unchecked-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16150_ '%#struct-unchecked-set! false))
           _tbl16150_))))
    (define gxc#&false-special-form
      (make-promise
       (lambda ()
         (let ((_tbl16146_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let () (declare (not safe)) (table-set! _tbl16146_ '%#begin false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#begin-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#begin-foreign false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#module false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#import false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#export false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#provide false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#extern false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#define-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#define-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#define-alias false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16146_ '%#declare false))
           _tbl16146_))))
    (define gxc#&false
      (make-promise
       (lambda ()
         (let ((_tbl16142_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17611 (force gxc#&false-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16142_ __tmp17611))
           (let ((__tmp17612 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl16142_ __tmp17612))
           _tbl16142_))))
    (define gxc#&collect-bindings
      (make-promise
       (lambda ()
         (let ((_tbl16138_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17613 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16138_ __tmp17613))
           (let ((__tmp17614 (force gxc#&void-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16138_ __tmp17614))
           (let ()
             (declare (not safe))
             (table-set! _tbl16138_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16138_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16138_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16138_
              '%#define-values
              gxc#collect-bindings-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16138_
              '%#define-syntax
              gxc#collect-bindings-define-syntax%))
           _tbl16138_))))
    (define gxc#apply-collect-bindings
      (lambda (_stx16131_ . _args16133_)
        (let ((__tmp17616
               (lambda () (apply gxc#compile-e _stx16131_ _args16133_)))
              (__tmp17615 (force gxc#&collect-bindings)))
          (declare (not safe))
          (call-with-parameters
           __tmp17616
           gxc#current-compile-methods
           __tmp17615))))
    (define gxc#&lift-modules
      (make-promise
       (lambda ()
         (let ((_tbl16128_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17617 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl16128_ __tmp17617))
           (let ()
             (declare (not safe))
             (table-set! _tbl16128_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16128_ '%#module gxc#lift-modules-module%))
           _tbl16128_))))
    (define gxc#apply-lift-modules
      (lambda (_stx16121_ . _args16123_)
        (let ((__tmp17619
               (lambda () (apply gxc#compile-e _stx16121_ _args16123_)))
              (__tmp17618 (force gxc#&lift-modules)))
          (declare (not safe))
          (call-with-parameters
           __tmp17619
           gxc#current-compile-methods
           __tmp17618))))
    (define gxc#&find-runtime-code
      (make-promise
       (lambda ()
         (let ((_tbl16118_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#begin gxc#find-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#begin-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#begin-foreign true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#begin-annotation true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#module false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#import false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#export false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#provide false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#extern false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#define-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#define-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#define-alias false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#declare false))
           (let () (declare (not safe)) (table-set! _tbl16118_ '%#lambda true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#case-lambda true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#let-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#letrec-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#letrec*-values true))
           (let () (declare (not safe)) (table-set! _tbl16118_ '%#quote true))
           (let () (declare (not safe)) (table-set! _tbl16118_ '%#call true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#call-unchecked true))
           (let () (declare (not safe)) (table-set! _tbl16118_ '%#if true))
           (let () (declare (not safe)) (table-set! _tbl16118_ '%#ref true))
           (let () (declare (not safe)) (table-set! _tbl16118_ '%#set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#struct-instance? true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#struct-direct-instance? true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#struct-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#struct-set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#struct-direct-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#struct-direct-set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#struct-unchecked-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16118_ '%#struct-unchecked-set! true))
           _tbl16118_))))
    (define gxc#apply-find-runtime-code
      (lambda (_stx16111_ . _args16113_)
        (let ((__tmp17621
               (lambda () (apply gxc#compile-e _stx16111_ _args16113_)))
              (__tmp17620 (force gxc#&find-runtime-code)))
          (declare (not safe))
          (call-with-parameters
           __tmp17621
           gxc#current-compile-methods
           __tmp17620))))
    (define gxc#&find-lambda-expression
      (make-promise
       (lambda ()
         (let ((_tbl16108_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17622 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl16108_ __tmp17622))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16108_
              '%#begin
              gxc#find-lambda-expression-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16108_
              '%#begin-annotation
              gxc#find-lambda-expression-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16108_ '%#lambda values))
           (let ()
             (declare (not safe))
             (table-set! _tbl16108_ '%#case-lambda values))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16108_
              '%#let-values
              gxc#find-lambda-expression-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16108_
              '%#letrec-values
              gxc#find-lambda-expression-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16108_
              '%#letrec*-values
              gxc#find-lambda-expression-let-values%))
           _tbl16108_))))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx16101_ . _args16103_)
        (let ((__tmp17624
               (lambda () (apply gxc#compile-e _stx16101_ _args16103_)))
              (__tmp17623 (force gxc#&find-lambda-expression)))
          (declare (not safe))
          (call-with-parameters
           __tmp17624
           gxc#current-compile-methods
           __tmp17623))))
    (define gxc#&count-values
      (make-promise
       (lambda ()
         (let ((_tbl16098_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17625 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl16098_ __tmp17625))
           (let ()
             (declare (not safe))
             (table-set! _tbl16098_ '%#begin gxc#count-values-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16098_
              '%#begin-annotation
              gxc#count-values-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16098_ '%#lambda gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16098_ '%#case-lambda gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16098_
              '%#let-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16098_
              '%#letrec-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16098_
              '%#letrec*-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16098_ '%#quote gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16098_ '%#call gxc#count-values-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16098_ '%#call-unchecked gxc#count-values-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16098_ '%#if gxc#count-values-if%))
           _tbl16098_))))
    (define gxc#apply-count-values
      (lambda (_stx16091_ . _args16093_)
        (let ((__tmp17627
               (lambda () (apply gxc#compile-e _stx16091_ _args16093_)))
              (__tmp17626 (force gxc#&count-values)))
          (declare (not safe))
          (call-with-parameters
           __tmp17627
           gxc#current-compile-methods
           __tmp17626))))
    (define gxc#&generate-runtime-empty
      (make-promise
       (lambda ()
         (let ((_tbl16088_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#begin gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#begin-syntax
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#begin-foreign
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#begin-annotation
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#module gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#import gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#export gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#provide gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#extern gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#define-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#define-syntax
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#define-alias
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#declare gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#lambda gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#case-lambda gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#let-values gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#letrec-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#letrec*-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#quote gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#call gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#call-unchecked
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#if gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#ref gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#set! gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#struct-instance?
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#struct-direct-instance?
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#struct-ref gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16088_ '%#struct-set! gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#struct-direct-ref
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#struct-direct-set!
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#struct-unchecked-ref
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16088_
              '%#struct-unchecked-set!
              gxc#generate-runtime-empty))
           _tbl16088_))))
    (define gxc#&generate-loader
      (make-promise
       (lambda ()
         (let ((_tbl16084_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17628 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl16084_ __tmp17628))
           (let ()
             (declare (not safe))
             (table-set! _tbl16084_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16084_
              '%#import
              gxc#generate-runtime-loader-import%))
           _tbl16084_))))
    (define gxc#apply-generate-loader
      (lambda (_stx16077_ . _args16079_)
        (let ((__tmp17630
               (lambda () (apply gxc#compile-e _stx16077_ _args16079_)))
              (__tmp17629 (force gxc#&generate-loader)))
          (declare (not safe))
          (call-with-parameters
           __tmp17630
           gxc#current-compile-methods
           __tmp17629))))
    (define gxc#&generate-runtime
      (make-promise
       (lambda ()
         (let ((_tbl16074_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17631 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl16074_ __tmp17631))
           (let ()
             (declare (not safe))
             (table-set! _tbl16074_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#begin-foreign
              gxc#generate-runtime-begin-foreign%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#begin-annotation
              gxc#generate-runtime-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#define-values
              gxc#generate-runtime-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16074_ '%#declare gxc#generate-runtime-declare%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16074_ '%#lambda gxc#generate-runtime-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#case-lambda
              gxc#generate-runtime-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#let-values
              gxc#generate-runtime-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#letrec-values
              gxc#generate-runtime-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#letrec*-values
              gxc#generate-runtime-letrec*-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16074_ '%#quote gxc#generate-runtime-quote%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#quote-syntax
              gxc#generate-runtime-quote-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16074_ '%#call gxc#generate-runtime-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#call-unchecked
              gxc#generate-runtime-call-unchecked%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16074_ '%#if gxc#generate-runtime-if%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16074_ '%#ref gxc#generate-runtime-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16074_ '%#set! gxc#generate-runtime-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#struct-instance?
              gxc#generate-runtime-struct-instancep%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#struct-direct-instance?
              gxc#generate-runtime-struct-direct-instancep%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#struct-ref
              gxc#generate-runtime-struct-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#struct-set!
              gxc#generate-runtime-struct-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#struct-direct-ref
              gxc#generate-runtime-struct-direct-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#struct-direct-set!
              gxc#generate-runtime-struct-direct-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#struct-unchecked-ref
              gxc#generate-runtime-struct-unchecked-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16074_
              '%#struct-unchecked-set!
              gxc#generate-runtime-struct-unchecked-setq%))
           _tbl16074_))))
    (define gxc#apply-generate-runtime
      (lambda (_stx16067_ . _args16069_)
        (let ((__tmp17633
               (lambda () (apply gxc#compile-e _stx16067_ _args16069_)))
              (__tmp17632 (force gxc#&generate-runtime)))
          (declare (not safe))
          (call-with-parameters
           __tmp17633
           gxc#current-compile-methods
           __tmp17632))))
    (define gxc#&generate-runtime-phi
      (make-promise
       (lambda ()
         (let ((_tbl16064_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17634 (force gxc#&generate-runtime)))
             (declare (not safe))
             (hash-copy! _tbl16064_ __tmp17634))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16064_
              '%#define-runtime
              gxc#generate-runtime-phi-define-runtime%))
           _tbl16064_))))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx16057_ . _args16059_)
        (let ((__tmp17636
               (lambda () (apply gxc#compile-e _stx16057_ _args16059_)))
              (__tmp17635 (force gxc#&generate-runtime-phi)))
          (declare (not safe))
          (call-with-parameters
           __tmp17636
           gxc#current-compile-methods
           __tmp17635))))
    (define gxc#&collect-expression-refs
      (make-promise
       (lambda ()
         (let ((_tbl16054_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let () (declare (not safe)) (table-set! _tbl16054_ '%#quote void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#quote-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#ref gxc#collect-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#set! gxc#collect-refs-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16054_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16054_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl16054_))))
    (define gxc#apply-collect-expression-refs
      (lambda (_stx16047_ . _args16049_)
        (let ((__tmp17638
               (lambda () (apply gxc#compile-e _stx16047_ _args16049_)))
              (__tmp17637 (force gxc#&collect-expression-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp17638
           gxc#current-compile-methods
           __tmp17637))))
    (define gxc#&generate-meta
      (make-promise
       (lambda ()
         (let ((_tbl16044_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17639 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16044_ __tmp17639))
           (let ()
             (declare (not safe))
             (table-set! _tbl16044_ '%#begin gxc#generate-meta-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16044_
              '%#begin-syntax
              gxc#generate-meta-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16044_ '%#module gxc#generate-meta-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16044_ '%#import gxc#generate-meta-import%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16044_ '%#export gxc#generate-meta-export%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16044_ '%#provide gxc#generate-meta-provide%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16044_ '%#extern gxc#generate-meta-extern%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16044_
              '%#define-values
              gxc#generate-meta-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16044_
              '%#define-syntax
              gxc#generate-meta-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16044_
              '%#define-alias
              gxc#generate-meta-define-alias%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16044_ '%#begin-foreign void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16044_ '%#declare void))
           _tbl16044_))))
    (define gxc#apply-generate-meta
      (lambda (_stx16037_ . _args16039_)
        (let ((__tmp17641
               (lambda () (apply gxc#compile-e _stx16037_ _args16039_)))
              (__tmp17640 (force gxc#&generate-meta)))
          (declare (not safe))
          (call-with-parameters
           __tmp17641
           gxc#current-compile-methods
           __tmp17640))))
    (define gxc#&generate-meta-phi
      (make-promise
       (lambda ()
         (let ((_tbl16034_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#begin gxc#generate-meta-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#begin-syntax
              gxc#generate-meta-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#define-syntax
              gxc#generate-meta-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#define-alias
              gxc#generate-meta-define-alias%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#define-values
              gxc#generate-meta-phi-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#begin-annotation
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#lambda gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#case-lambda gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#let-values gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#letrec-values
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#letrec*-values
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#quote gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#quote-syntax
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#call gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#call-unchecked
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#if gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#ref gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#set! gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#struct-instance?
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#struct-direct-instance?
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#struct-ref gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#struct-set! gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#struct-direct-ref
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#struct-direct-set!
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#struct-unchecked-ref
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16034_
              '%#struct-unchecked-set!
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16034_ '%#declare void))
           _tbl16034_))))
    (define gxc#apply-generate-meta-phi
      (lambda (_stx16027_ . _args16029_)
        (let ((__tmp17643
               (lambda () (apply gxc#compile-e _stx16027_ _args16029_)))
              (__tmp17642 (force gxc#&generate-meta-phi)))
          (declare (not safe))
          (call-with-parameters
           __tmp17643
           gxc#current-compile-methods
           __tmp17642))))
    (define gxc#collect-begin%
      (lambda (_stx15984_ . _args15985_)
        (let* ((_g1598715997_
                (lambda (_g1598815994_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1598815994_))))
               (_g1598616024_
                (lambda (_g1598816000_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1598816000_))
                      (let ((_e1599216002_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1598816000_))))
                        (let ((_hd1599116005_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1599216002_)))
                              (_tl1599016007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1599216002_))))
                          ((lambda (_L16010_)
                             (for-each
                              (lambda (_g1601916021_)
                                (apply gxc#compile-e
                                       _g1601916021_
                                       _args15985_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L16010_))))
                           _tl1599016007_)))
                      (let ()
                        (declare (not safe))
                        (_g1598715997_ _g1598816000_))))))
          (declare (not safe))
          (_g1598616024_ _stx15984_))))
    (define gxc#collect-begin-syntax%
      (lambda (_stx15980_ . _args15981_)
        (let ((__tmp17646
               (lambda () (apply gxc#collect-begin% _stx15980_ _args15981_)))
              (__tmp17644
               (let ((__tmp17645 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp17645 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp17646
           gx#current-expander-phi
           __tmp17644))))
    (define gxc#collect-module%
      (lambda (_stx15922_ . _args15923_)
        (let* ((_g1592515939_
                (lambda (_g1592615936_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1592615936_))))
               (_g1592415977_
                (lambda (_g1592615942_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1592615942_))
                      (let ((_e1593115944_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1592615942_))))
                        (let ((_hd1593015947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1593115944_)))
                              (_tl1592915949_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1593115944_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1592915949_))
                              (let ((_e1593415952_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1592915949_))))
                                (let ((_hd1593315955_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1593415952_)))
                                      (_tl1593215957_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1593415952_))))
                                  ((lambda (_L15960_ _L15961_)
                                     (let* ((_ctx15974_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L15961_)))
                                            (__tmp17647
                                             (lambda ()
                                               (apply gxc#compile-e
                                                      (##structure-ref
                                                       _ctx15974_
                                                       '11
                                                       gx#module-context::t
                                                       '#f)
                                                      _args15923_))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp17647
                                        gx#current-expander-context
                                        _ctx15974_)))
                                   _tl1593215957_
                                   _hd1593315955_)))
                              (let ()
                                (declare (not safe))
                                (_g1592515939_ _g1592615942_)))))
                      (let ()
                        (declare (not safe))
                        (_g1592515939_ _g1592615942_))))))
          (declare (not safe))
          (_g1592415977_ _stx15922_))))
    (define gxc#collect-begin-annotation%
      (lambda (_stx15854_ . _args15855_)
        (let* ((_g1585715874_
                (lambda (_g1585815871_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1585815871_))))
               (_g1585615919_
                (lambda (_g1585815877_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1585815877_))
                      (let ((_e1586315879_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1585815877_))))
                        (let ((_hd1586215882_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1586315879_)))
                              (_tl1586115884_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1586315879_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1586115884_))
                              (let ((_e1586615887_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1586115884_))))
                                (let ((_hd1586515890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1586615887_)))
                                      (_tl1586415892_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1586615887_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1586415892_))
                                      (let ((_e1586915895_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1586415892_))))
                                        (let ((_hd1586815898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1586915895_)))
                                              (_tl1586715900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1586915895_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1586715900_))
                                              ((lambda (_L15903_ _L15904_)
                                                 (apply gxc#compile-e
                                                        _L15903_
                                                        _args15855_))
                                               _hd1586815898_
                                               _hd1586515890_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1585715874_
                                                 _g1585815877_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1585715874_ _g1585815877_)))))
                              (let ()
                                (declare (not safe))
                                (_g1585715874_ _g1585815877_)))))
                      (let ()
                        (declare (not safe))
                        (_g1585715874_ _g1585815877_))))))
          (declare (not safe))
          (_g1585615919_ _stx15854_))))
    (define gxc#collect-define-values%
      (lambda (_stx15786_ . _args15787_)
        (let* ((_g1578915806_
                (lambda (_g1579015803_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1579015803_))))
               (_g1578815851_
                (lambda (_g1579015809_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1579015809_))
                      (let ((_e1579515811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1579015809_))))
                        (let ((_hd1579415814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1579515811_)))
                              (_tl1579315816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1579515811_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1579315816_))
                              (let ((_e1579815819_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1579315816_))))
                                (let ((_hd1579715822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1579815819_)))
                                      (_tl1579615824_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1579815819_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1579615824_))
                                      (let ((_e1580115827_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1579615824_))))
                                        (let ((_hd1580015830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1580115827_)))
                                              (_tl1579915832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1580115827_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1579915832_))
                                              ((lambda (_L15835_ _L15836_)
                                                 (apply gxc#compile-e
                                                        _L15835_
                                                        _args15787_))
                                               _hd1580015830_
                                               _hd1579715822_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1578915806_
                                                 _g1579015809_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1578915806_ _g1579015809_)))))
                              (let ()
                                (declare (not safe))
                                (_g1578915806_ _g1579015809_)))))
                      (let ()
                        (declare (not safe))
                        (_g1578915806_ _g1579015809_))))))
          (declare (not safe))
          (_g1578815851_ _stx15786_))))
    (define gxc#collect-define-syntax%
      (lambda (_stx15717_ . _args15718_)
        (let* ((_g1572015737_
                (lambda (_g1572115734_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1572115734_))))
               (_g1571915783_
                (lambda (_g1572115740_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1572115740_))
                      (let ((_e1572615742_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1572115740_))))
                        (let ((_hd1572515745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1572615742_)))
                              (_tl1572415747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1572615742_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1572415747_))
                              (let ((_e1572915750_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1572415747_))))
                                (let ((_hd1572815753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1572915750_)))
                                      (_tl1572715755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1572915750_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1572715755_))
                                      (let ((_e1573215758_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1572715755_))))
                                        (let ((_hd1573115761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1573215758_)))
                                              (_tl1573015763_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1573215758_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1573015763_))
                                              ((lambda (_L15766_ _L15767_)
                                                 (let ((__tmp17650
                                                        (lambda ()
                                                          (apply gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15766_
                         _args15718_)))
               (__tmp17648
                (let ((__tmp17649 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp17649 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp17650
                                                    gx#current-expander-phi
                                                    __tmp17648)))
                                               _hd1573115761_
                                               _hd1572815753_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1572015737_
                                                 _g1572115740_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1572015737_ _g1572115740_)))))
                              (let ()
                                (declare (not safe))
                                (_g1572015737_ _g1572115740_)))))
                      (let ()
                        (declare (not safe))
                        (_g1572015737_ _g1572115740_))))))
          (declare (not safe))
          (_g1571915783_ _stx15717_))))
    (define gxc#collect-body-lambda%
      (lambda (_stx15649_ . _args15650_)
        (let* ((_g1565215669_
                (lambda (_g1565315666_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1565315666_))))
               (_g1565115714_
                (lambda (_g1565315672_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1565315672_))
                      (let ((_e1565815674_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1565315672_))))
                        (let ((_hd1565715677_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1565815674_)))
                              (_tl1565615679_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1565815674_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1565615679_))
                              (let ((_e1566115682_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1565615679_))))
                                (let ((_hd1566015685_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1566115682_)))
                                      (_tl1565915687_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1566115682_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1565915687_))
                                      (let ((_e1566415690_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1565915687_))))
                                        (let ((_hd1566315693_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1566415690_)))
                                              (_tl1566215695_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1566415690_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1566215695_))
                                              ((lambda (_L15698_ _L15699_)
                                                 (apply gxc#compile-e
                                                        _L15698_
                                                        _args15650_))
                                               _hd1566315693_
                                               _hd1566015685_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1565215669_
                                                 _g1565315672_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1565215669_ _g1565315672_)))))
                              (let ()
                                (declare (not safe))
                                (_g1565215669_ _g1565315672_)))))
                      (let ()
                        (declare (not safe))
                        (_g1565215669_ _g1565315672_))))))
          (declare (not safe))
          (_g1565115714_ _stx15649_))))
    (define gxc#collect-body-case-lambda%
      (lambda (_stx15531_ . _args15532_)
        (let* ((_g1553415562_
                (lambda (_g1553515559_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1553515559_))))
               (_g1553315646_
                (lambda (_g1553515565_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1553515565_))
                      (let ((_e1554015567_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1553515565_))))
                        (let ((_hd1553915570_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1554015567_)))
                              (_tl1553815572_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1554015567_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1553815572_))
                              (let ((_g17651_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1553815572_
                                        '0))))
                                (begin
                                  (let ((_g17652_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17651_)
                                               (##vector-length _g17651_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17652_ 2)))
                                        (error "Context expects 2 values"
                                               _g17652_)))
                                  (let ((_target1554115575_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17651_ 0)))
                                        (_tl1554315577_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17651_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1554315577_))
                                        (letrec ((_loop1554415580_
                                                  (lambda (_hd1554215583_
                                                           _body1554815585_
                                                           _hd1554915587_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1554215583_))
                                                        (let ((_e1554515590_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1554215583_))))
                  (let ((_lp-hd1554615593_
                         (let () (declare (not safe)) (##car _e1554515590_)))
                        (_lp-tl1554715595_
                         (let () (declare (not safe)) (##cdr _e1554515590_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd1554615593_))
                        (let ((_e1555415598_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd1554615593_))))
                          (let ((_hd1555315601_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1555415598_)))
                                (_tl1555215603_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1555415598_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1555215603_))
                                (let ((_e1555715606_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1555215603_))))
                                  (let ((_hd1555615609_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1555715606_)))
                                        (_tl1555515611_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1555715606_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1555515611_))
                                        (let ((__tmp17655
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd1555615609_
                                                       _body1554815585_)))
                                              (__tmp17654
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd1555315601_
                                                       _hd1554915587_))))
                                          (declare (not safe))
                                          (_loop1554415580_
                                           _lp-tl1554715595_
                                           __tmp17655
                                           __tmp17654))
                                        (let ()
                                          (declare (not safe))
                                          (_g1553415562_ _g1553515565_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1553415562_ _g1553515565_)))))
                        (let ()
                          (declare (not safe))
                          (_g1553415562_ _g1553515565_)))))
                (let ((_body1555015614_ (reverse _body1554815585_))
                      (_hd1555115616_ (reverse _hd1554915587_)))
                  ((lambda (_L15619_ _L15620_)
                     (for-each
                      (lambda (_g1563415636_)
                        (apply gxc#compile-e _g1563415636_ _args15532_))
                      (let ((__tmp17653
                             (lambda (_g1563815641_ _g1563915643_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g1563815641_ _g1563915643_)))))
                        (declare (not safe))
                        (foldr1 __tmp17653 '() _L15619_))))
                   _body1555015614_
                   _hd1555115616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1554415580_
                                             _target1554115575_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1553415562_ _g1553515565_))))))
                              (let ()
                                (declare (not safe))
                                (_g1553415562_ _g1553515565_)))))
                      (let ()
                        (declare (not safe))
                        (_g1553415562_ _g1553515565_))))))
          (declare (not safe))
          (_g1553315646_ _stx15531_))))
    (define gxc#collect-body-let-values%
      (lambda (_stx15384_ . _args15385_)
        (let* ((_g1538715422_
                (lambda (_g1538815419_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1538815419_))))
               (_g1538615528_
                (lambda (_g1538815425_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1538815425_))
                      (let ((_e1539415427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1538815425_))))
                        (let ((_hd1539315430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1539415427_)))
                              (_tl1539215432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1539415427_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1539215432_))
                              (let ((_e1539715435_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1539215432_))))
                                (let ((_hd1539615438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1539715435_)))
                                      (_tl1539515440_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1539715435_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1539615438_))
                                      (let ((_g17656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1539615438_
                                                '0))))
                                        (begin
                                          (let ((_g17657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17656_)
                                                       (##vector-length
                                                        _g17656_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17657_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17657_)))
                                          (let ((_target1539815443_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g17656_ 0)))
                                                (_tl1540015445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g17656_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1540015445_))
                                                (letrec ((_loop1540115448_
                                                          (lambda (_hd1539915451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1540515453_
                           _hd1540615455_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1539915451_))
                        (let ((_e1540215458_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1539915451_))))
                          (let ((_lp-hd1540315461_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1540215458_)))
                                (_lp-tl1540415463_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1540215458_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd1540315461_))
                                (let ((_e1541115466_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd1540315461_))))
                                  (let ((_hd1541015469_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1541115466_)))
                                        (_tl1540915471_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1541115466_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1540915471_))
                                        (let ((_e1541415474_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1540915471_))))
                                          (let ((_hd1541315477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1541415474_)))
                                                (_tl1541215479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1541415474_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1541215479_))
                                                (let ((__tmp17661
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1541315477_
                                                               _expr1540515453_)))
                                                      (__tmp17660
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1541015469_
                                                               _hd1540615455_))))
                                                  (declare (not safe))
                                                  (_loop1540115448_
                                                   _lp-tl1540415463_
                                                   __tmp17661
                                                   __tmp17660))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1538715422_
                                                   _g1538815425_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1538715422_ _g1538815425_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1538715422_ _g1538815425_)))))
                        (let ((_expr1540715482_ (reverse _expr1540515453_))
                              (_hd1540815484_ (reverse _hd1540615455_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1539515440_))
                              (let ((_e1541715487_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1539515440_))))
                                (let ((_hd1541615490_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1541715487_)))
                                      (_tl1541515492_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1541715487_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1541515492_))
                                      ((lambda (_L15495_ _L15496_ _L15497_)
                                         (for-each
                                          (lambda (_g1551615518_)
                                            (apply gxc#compile-e
                                                   _g1551615518_
                                                   _args15385_))
                                          (let ((__tmp17659
                                                 (lambda (_g1552015523_
                                                          _g1552115525_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1552015523_
                                                           _g1552115525_))))
                                                (__tmp17658
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L15495_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp17659
                                                    __tmp17658
                                                    _L15496_))))
                                       _hd1541615490_
                                       _expr1540715482_
                                       _hd1540815484_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1538715422_ _g1538815425_)))))
                              (let ()
                                (declare (not safe))
                                (_g1538715422_ _g1538815425_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop1540115448_
                                                     _target1539815443_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1538715422_
                                                   _g1538815425_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1538715422_ _g1538815425_)))))
                              (let ()
                                (declare (not safe))
                                (_g1538715422_ _g1538815425_)))))
                      (let ()
                        (declare (not safe))
                        (_g1538715422_ _g1538815425_))))))
          (declare (not safe))
          (_g1538615528_ _stx15384_))))
    (define gxc#collect-body-setq%
      (lambda (_stx15316_ . _args15317_)
        (let* ((_g1531915336_
                (lambda (_g1532015333_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1532015333_))))
               (_g1531815381_
                (lambda (_g1532015339_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1532015339_))
                      (let ((_e1532515341_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1532015339_))))
                        (let ((_hd1532415344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1532515341_)))
                              (_tl1532315346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1532515341_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1532315346_))
                              (let ((_e1532815349_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1532315346_))))
                                (let ((_hd1532715352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1532815349_)))
                                      (_tl1532615354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1532815349_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1532615354_))
                                      (let ((_e1533115357_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1532615354_))))
                                        (let ((_hd1533015360_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1533115357_)))
                                              (_tl1532915362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1533115357_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1532915362_))
                                              ((lambda (_L15365_ _L15366_)
                                                 (apply gxc#compile-e
                                                        _L15365_
                                                        _args15317_))
                                               _hd1533015360_
                                               _hd1532715352_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1531915336_
                                                 _g1532015339_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1531915336_ _g1532015339_)))))
                              (let ()
                                (declare (not safe))
                                (_g1531915336_ _g1532015339_)))))
                      (let ()
                        (declare (not safe))
                        (_g1531915336_ _g1532015339_))))))
          (declare (not safe))
          (_g1531815381_ _stx15316_))))
    (define gxc#collect-operands
      (lambda (_stx15229_ . _args15230_)
        (let* ((_g1523215251_
                (lambda (_g1523315248_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1523315248_))))
               (_g1523115313_
                (lambda (_g1523315254_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1523315254_))
                      (let ((_e1523715256_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1523315254_))))
                        (let ((_hd1523615259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1523715256_)))
                              (_tl1523515261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1523715256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1523515261_))
                              (let ((_g17662_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1523515261_
                                        '0))))
                                (begin
                                  (let ((_g17663_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17662_)
                                               (##vector-length _g17662_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17663_ 2)))
                                        (error "Context expects 2 values"
                                               _g17663_)))
                                  (let ((_target1523815264_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17662_ 0)))
                                        (_tl1524015266_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17662_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1524015266_))
                                        (letrec ((_loop1524115269_
                                                  (lambda (_hd1523915272_
                                                           _rands1524515274_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1523915272_))
                                                        (let ((_e1524215277_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1523915272_))))
                  (let ((_lp-hd1524315280_
                         (let () (declare (not safe)) (##car _e1524215277_)))
                        (_lp-tl1524415282_
                         (let () (declare (not safe)) (##cdr _e1524215277_))))
                    (let ((__tmp17665
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1524315280_ _rands1524515274_))))
                      (declare (not safe))
                      (_loop1524115269_ _lp-tl1524415282_ __tmp17665))))
                (let ((_rands1524615285_ (reverse _rands1524515274_)))
                  ((lambda (_L15288_)
                     (for-each
                      (lambda (_g1530115303_)
                        (apply gxc#compile-e _g1530115303_ _args15230_))
                      (let ((__tmp17664
                             (lambda (_g1530515308_ _g1530615310_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g1530515308_ _g1530615310_)))))
                        (declare (not safe))
                        (foldr1 __tmp17664 '() _L15288_))))
                   _rands1524615285_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1524115269_
                                             _target1523815264_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1523215251_ _g1523315254_))))))
                              (let ()
                                (declare (not safe))
                                (_g1523215251_ _g1523315254_)))))
                      (let ()
                        (declare (not safe))
                        (_g1523215251_ _g1523315254_))))))
          (declare (not safe))
          (_g1523115313_ _stx15229_))))
    (define gxc#collect-bindings-define-values%
      (lambda (_stx15160_)
        (let* ((_g1516215179_
                (lambda (_g1516315176_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1516315176_))))
               (_g1516115226_
                (lambda (_g1516315182_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1516315182_))
                      (let ((_e1516815184_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1516315182_))))
                        (let ((_hd1516715187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1516815184_)))
                              (_tl1516615189_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1516815184_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1516615189_))
                              (let ((_e1517115192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1516615189_))))
                                (let ((_hd1517015195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1517115192_)))
                                      (_tl1516915197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1517115192_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1516915197_))
                                      (let ((_e1517415200_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1516915197_))))
                                        (let ((_hd1517315203_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1517415200_)))
                                              (_tl1517215205_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1517415200_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1517215205_))
                                              ((lambda (_L15208_ _L15209_)
                                                 (let ((__tmp17666
                                                        (lambda (_bind15224_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind15224_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind15224_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp17666
                                                    _L15209_)))
                                               _hd1517315203_
                                               _hd1517015195_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1516215179_
                                                 _g1516315182_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1516215179_ _g1516315182_)))))
                              (let ()
                                (declare (not safe))
                                (_g1516215179_ _g1516315182_)))))
                      (let ()
                        (declare (not safe))
                        (_g1516215179_ _g1516315182_))))))
          (declare (not safe))
          (_g1516115226_ _stx15160_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_stx15093_)
        (let* ((_g1509515112_
                (lambda (_g1509615109_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1509615109_))))
               (_g1509415157_
                (lambda (_g1509615115_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1509615115_))
                      (let ((_e1510115117_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1509615115_))))
                        (let ((_hd1510015120_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1510115117_)))
                              (_tl1509915122_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1510115117_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1509915122_))
                              (let ((_e1510415125_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1509915122_))))
                                (let ((_hd1510315128_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1510415125_)))
                                      (_tl1510215130_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1510415125_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1510215130_))
                                      (let ((_e1510715133_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1510215130_))))
                                        (let ((_hd1510615136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1510715133_)))
                                              (_tl1510515138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1510715133_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1510515138_))
                                              ((lambda (_L15141_ _L15142_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L15142_
                                                    '#t)))
                                               _hd1510615136_
                                               _hd1510315128_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1509515112_
                                                 _g1509615115_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1509515112_ _g1509615115_)))))
                              (let ()
                                (declare (not safe))
                                (_g1509515112_ _g1509615115_)))))
                      (let ()
                        (declare (not safe))
                        (_g1509515112_ _g1509615115_))))))
          (declare (not safe))
          (_g1509415157_ _stx15093_))))
    (define gxc#lift-modules-module%
      (lambda (_stx15035_ _modules15036_)
        (let* ((_g1503815052_
                (lambda (_g1503915049_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1503915049_))))
               (_g1503715090_
                (lambda (_g1503915055_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1503915055_))
                      (let ((_e1504415057_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1503915055_))))
                        (let ((_hd1504315060_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1504415057_)))
                              (_tl1504215062_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1504415057_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1504215062_))
                              (let ((_e1504715065_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1504215062_))))
                                (let ((_hd1504615068_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1504715065_)))
                                      (_tl1504515070_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1504715065_))))
                                  ((lambda (_L15073_ _L15074_)
                                     (let ((_ctx15087_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L15074_))))
                                       (set-box!
                                        _modules15036_
                                        (let ((__tmp17667
                                               (unbox _modules15036_)))
                                          (declare (not safe))
                                          (cons _ctx15087_ __tmp17667)))
                                       (let ((__tmp17668
                                              (lambda ()
                                                (let ((__tmp17669
                                                       (##structure-ref
                                                        _ctx15087_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e
                                                   __tmp17669
                                                   _modules15036_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp17668
                                          gx#current-expander-context
                                          _ctx15087_))))
                                   _tl1504515070_
                                   _hd1504615068_)))
                              (let ()
                                (declare (not safe))
                                (_g1503815052_ _g1503915055_)))))
                      (let ()
                        (declare (not safe))
                        (_g1503815052_ _g1503915055_))))))
          (declare (not safe))
          (_g1503715090_ _stx15035_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls1499114993_ (gxc#current-compile-decls)))
          (if _decls1499114993_
              (let ((_decls14996_ _decls1499114993_))
                (let _lp14998_ ((_rest15000_ _decls14996_))
                  (let* ((_rest1500115009_ _rest15000_)
                         (_else1500315017_ (lambda () '#f))
                         (_K1500515023_
                          (lambda (_decls15020_ _decl15021_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl15021_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl15021_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp14998_ _decls15020_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1500115009_))
                        (let ((_hd1500615026_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1500115009_)))
                              (_tl1500715028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1500115009_))))
                          (let* ((_decl15031_ _hd1500615026_)
                                 (_decls15033_ _tl1500715028_))
                            (declare (not safe))
                            (_K1500515023_ _decls15033_ _decl15031_)))
                        (let () (declare (not safe)) (_else1500315017_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id14985_ _syntax?14986_)
        (let ((_eid14988_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id14985_))
                '1
                gx#binding::t
                '#f))
              (_ht14989_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid14988_)
              '#!void
              (let ((__tmp17670
                     (let ((__tmp17671
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid14988_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp17671 _syntax?14986_))))
                (declare (not safe))
                (table-set! _ht14989_ _eid14988_ __tmp17670))))))
    (define gxc#runtime-identifier=?
      (lambda (_id114978_ _id214979_)
        (letrec ((_symbol-e14981_
                  (lambda (_id14983_)
                    (if (let () (declare (not safe)) (symbol? _id14983_))
                        _id14983_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id14983_))))))
          (let ((__tmp17673
                 (let () (declare (not safe)) (_symbol-e14981_ _id114978_)))
                (__tmp17672
                 (let () (declare (not safe)) (_symbol-e14981_ _id214979_))))
            (declare (not safe))
            (eq? __tmp17673 __tmp17672)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id14956_)
        (let ((_$e14958_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id14956_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id14956_))
                   '#f)))
          (if _$e14958_
              ((lambda (_bind14961_)
                 (let ((_eid14963_
                        (##structure-ref _bind14961_ '1 gx#binding::t '#f))
                       (_ht14964_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid14963_)
                       _eid14963_
                       (let ((_$e14966_
                              (let ()
                                (declare (not safe))
                                (table-ref _ht14964_ _eid14963_ '#f))))
                         (if _$e14966_
                             (values _$e14966_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind14961_
                                    'gx#local-binding::t))
                                 (let ((_gid14969_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid14963_))))
                                   (let ()
                                     (declare (not safe))
                                     (table-set!
                                      _ht14964_
                                      _eid14963_
                                      _gid14969_))
                                   _gid14969_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind14961_
                                        'gx#module-binding::t))
                                     (let ((_gid14976_
                                            (let ((_$e14971_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind14961_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e14971_
                                                  ((lambda (_ns14974_)
                                                     (make-symbol
                                                      _ns14974_
                                                      '"#"
                                                      _eid14963_))
                                                   _$e14971_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid14963_))))))
                                       (let ()
                                         (declare (not safe))
                                         (table-set!
                                          _ht14964_
                                          _eid14963_
                                          _gid14976_))
                                       _gid14976_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id14956_
                                        _eid14963_
                                        _bind14961_)))))))))
               _$e14958_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id14956_)))
                  (let () (declare (not safe)) (gx#stx-e _id14956_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id14956_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id14954_)
        (if (let () (declare (not safe)) (gx#identifier? _id14954_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id14954_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym14934_ _quote?14935_)
        (let* ((_ht14937_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e14939_
                (let ()
                  (declare (not safe))
                  (table-ref _ht14937_ _sym14934_ '#f))))
          (if _$e14939_
              (values _$e14939_)
              (let ((_g14942_
                     (if _quote?14935_
                         (make-symbol
                          '"__"
                          _sym14934_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym14934_ '"_"))))
                (let ()
                  (declare (not safe))
                  (table-set! _ht14937_ _sym14934_ _g14942_))
                _g14942_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym14947_)
        (let ((_quote?14949_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym14947_
           _quote?14949_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g17675_
        (let ((_g17674_ (let () (declare (not safe)) (##length _g17675_))))
          (cond ((let () (declare (not safe)) (##fx= _g17674_ 1))
                 (apply (lambda (_sym14947_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym14947_)))
                        _g17675_))
                ((let () (declare (not safe)) (##fx= _g17674_ 2))
                 (apply (lambda (_sym14951_ _quote?14952_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym14951_
                             _quote?14952_)))
                        _g17675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g17675_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id14931_)
        (let ((__tmp17676
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id14931_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp17676))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key14891_)
        (if (interned-symbol? _key14891_)
            _key14891_
            (if (uninterned-symbol? _key14891_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key14891_))
                (let* ((_key1489214899_ _key14891_)
                       (_E1489414903_
                        (lambda ()
                          (error '"No clause matching" _key1489214899_)))
                       (_K1489514919_
                        (lambda (_mark14906_ _eid14907_)
                          (let ((_$e14909_
                                 (##structure-ref
                                  _mark14906_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e14909_
                                ((lambda (_ht14912_)
                                   (let ((_$e14914_
                                          (let ()
                                            (declare (not safe))
                                            (table-ref
                                             _ht14912_
                                             _eid14907_
                                             '#f))))
                                     (if _$e14914_
                                         ((lambda (_id14917_)
                                            (if (interned-symbol? _id14917_)
                                                _id14917_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id14917_))))
                                          _$e14914_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid14907_)))))
                                 _$e14909_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid14907_)))))))
                  (if (let () (declare (not safe)) (##pair? _key1489214899_))
                      (let ((_hd1489614922_
                             (let ()
                               (declare (not safe))
                               (##car _key1489214899_)))
                            (_tl1489714924_
                             (let ()
                               (declare (not safe))
                               (##cdr _key1489214899_))))
                        (let* ((_eid14927_ _hd1489614922_)
                               (_mark14929_ _tl1489714924_))
                          (declare (not safe))
                          (_K1489514919_ _mark14929_ _eid14927_)))
                      (let () (declare (not safe)) (_E1489414903_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top14878_)
        (if _top14878_
            (let ((_ns14880_
                   (##structure-ref
                    (let ((__tmp17677 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp17677))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi14881_ (gx#current-expander-phi)))
              (if _ns14880_
                  (if (fxpositive? _phi14881_)
                      (make-symbol
                       _ns14880_
                       '"["
                       (number->string _phi14881_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol _ns14880_ '"#_" (gensym) '"_"))
                  (if (fxpositive? _phi14881_)
                      (make-symbol
                       '"["
                       (number->string _phi14881_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol '"_" (gensym) '"_"))))
            (make-symbol '"_" (gensym) '"_"))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top14887_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top14887_))))
    (define gxc#generate-runtime-temporary
      (lambda _g17679_
        (let ((_g17678_ (let () (declare (not safe)) (##length _g17679_))))
          (cond ((let () (declare (not safe)) (##fx= _g17678_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g17679_))
                ((let () (declare (not safe)) (##fx= _g17678_ 1))
                 (apply (lambda (_top14889_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top14889_)))
                        _g17679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g17679_))))))
    (define gxc#generate-runtime-empty (lambda (_stx14875_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_stx14727_)
        (letrec ((_simplify14729_
                  (lambda (_body14773_)
                    (let _lp14775_ ((_rest14777_ _body14773_) (_r14778_ '()))
                      (let* ((_rest1477914787_ _rest14777_)
                             (_else1478114795_ (lambda () (reverse _r14778_)))
                             (_K1478314863_
                              (lambda (_rest14798_ _hd14799_)
                                (let* ((_hd1480014816_ _hd14799_)
                                       (_else1480414824_
                                        (lambda ()
                                          (let ((__tmp17680
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd14799_ _r14778_))))
                                            (declare (not safe))
                                            (_lp14775_
                                             _rest14798_
                                             __tmp17680)))))
                                  (let ((_K1481214853_
                                         (lambda (_exprs14851_)
                                           (let ((__tmp17681
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest14798_
                                                            _exprs14851_))))
                                             (declare (not safe))
                                             (_lp14775_ __tmp17681 _r14778_))))
                                        (_K1480714837_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest14798_))
                                               (let ((__tmp17682
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd14799_
                                                              _r14778_))))
                                                 (declare (not safe))
                                                 (_lp14775_
                                                  _rest14798_
                                                  __tmp17682))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp14775_
                                                  _rest14798_
                                                  _r14778_)))))
                                        (_K1480614829_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest14798_))
                                               (let ((__tmp17683
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd14799_
                                                              _r14778_))))
                                                 (declare (not safe))
                                                 (_lp14775_
                                                  _rest14798_
                                                  __tmp17683))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp14775_
                                                  _rest14798_
                                                  _r14778_))))))
                                    (let ((_try-match1480314832_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd1480014816_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K1480614829_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else1480414824_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1480014816_))
                                          (let ((_tl1481414858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1480014816_)))
                                                (_hd1481314856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1480014816_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1481314856_
                                                         'begin))
                                                (let ((_exprs14861_
                                                       _tl1481414858_))
                                                  (declare (not safe))
                                                  (_K1481214853_ _exprs14861_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd1481314856_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1481414858_))
                                                        (let ((_tl1481114845_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1481414858_))))
                  (if (let () (declare (not safe)) (##null? _tl1481114845_))
                      (let () (declare (not safe)) (_K1480714837_))
                      (let () (declare (not safe)) (_try-match1480314832_))))
                (let () (declare (not safe)) (_try-match1480314832_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match1480314832_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match1480314832_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1477914787_))
                            (let ((_hd1478414866_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1477914787_)))
                                  (_tl1478514868_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1477914787_))))
                              (let* ((_hd14871_ _hd1478414866_)
                                     (_rest14873_ _tl1478514868_))
                                (declare (not safe))
                                (_K1478314863_ _rest14873_ _hd14871_)))
                            (let ()
                              (declare (not safe))
                              (_else1478114795_))))))))
          (let* ((_g1473114741_
                  (lambda (_g1473214738_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1473214738_))))
                 (_g1473014770_
                  (lambda (_g1473214744_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1473214744_))
                        (let ((_e1473614746_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1473214744_))))
                          (let ((_hd1473514749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1473614746_)))
                                (_tl1473414751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1473614746_))))
                            ((lambda (_L14754_)
                               (let* ((_body14765_
                                       (map gxc#compile-e _L14754_))
                                      (_body14767_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify14729_ _body14765_))))
                                 (if (fx= (length _body14767_) '1)
                                     (car _body14767_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body14767_)))))
                             _tl1473414751_)))
                        (let ()
                          (declare (not safe))
                          (_g1473114741_ _g1473214744_))))))
            (declare (not safe))
            (_g1473014770_ _stx14727_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_stx14689_)
        (let* ((_g1469114701_
                (lambda (_g1469214698_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1469214698_))))
               (_g1469014724_
                (lambda (_g1469214704_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1469214704_))
                      (let ((_e1469614706_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1469214704_))))
                        (let ((_hd1469514709_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1469614706_)))
                              (_tl1469414711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1469614706_))))
                          ((lambda (_L14714_)
                             (let ((__tmp17684
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L14714_))))
                               (declare (not safe))
                               (cons 'begin __tmp17684)))
                           _tl1469414711_)))
                      (let ()
                        (declare (not safe))
                        (_g1469114701_ _g1469214704_))))))
          (declare (not safe))
          (_g1469014724_ _stx14689_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_stx14563_)
        (let* ((___stx1633116332_ _stx14563_)
               (_g1456614594_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1633116332_)))))
          (let ((___kont1633316334_
                 (lambda (_L14671_ _L14672_)
                   (let () (declare (not safe)) (gxc#compile-e _L14671_))))
                (___kont1633516336_
                 (lambda (_L14623_ _L14624_)
                   (let ((_decls14639_ (map gx#syntax->datum _L14624_)))
                     (let ((__tmp17687
                            (lambda ()
                              (let ((__tmp17688
                                     (let ((__tmp17691
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls14639_)))
                                           (__tmp17689
                                            (let ((__tmp17690
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L14623_))))
                                              (declare (not safe))
                                              (cons __tmp17690 '()))))
                                       (declare (not safe))
                                       (cons __tmp17691 __tmp17689))))
                                (declare (not safe))
                                (cons 'begin __tmp17688))))
                           (__tmp17685
                            (let ((__tmp17686 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp17686 _decls14639_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp17687
                        gxc#current-compile-decls
                        __tmp17685))))))
            (let ((___match1635616357_
                   (lambda (_e1457214647_
                            _hd1457114650_
                            _tl1457014652_
                            _e1457514655_
                            _hd1457414658_
                            _tl1457314660_
                            _e1457814663_
                            _hd1457714666_
                            _tl1457614668_)
                     (let ((_L14671_ _hd1457714666_) (_L14672_ _hd1457414658_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L14672_))
                           (___kont1633316334_ _L14671_ _L14672_)
                           (___kont1633516336_
                            _hd1457714666_
                            _hd1457414658_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1633116332_))
                  (let ((_e1457214647_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx1633116332_))))
                    (let ((_tl1457014652_
                           (let () (declare (not safe)) (##cdr _e1457214647_)))
                          (_hd1457114650_
                           (let ()
                             (declare (not safe))
                             (##car _e1457214647_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1457014652_))
                          (let ((_e1457514655_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1457014652_))))
                            (let ((_tl1457314660_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1457514655_)))
                                  (_hd1457414658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1457514655_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl1457314660_))
                                  (let ((_e1457814663_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl1457314660_))))
                                    (let ((_tl1457614668_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1457814663_)))
                                          (_hd1457714666_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1457814663_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1457614668_))
                                          (___match1635616357_
                                           _e1457214647_
                                           _hd1457114650_
                                           _tl1457014652_
                                           _e1457514655_
                                           _hd1457414658_
                                           _tl1457314660_
                                           _e1457814663_
                                           _hd1457714666_
                                           _tl1457614668_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1456614594_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1456614594_)))))
                          (let () (declare (not safe)) (_g1456614594_)))))
                  (let () (declare (not safe)) (_g1456614594_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_stx14523_)
        (let* ((_g1452514535_
                (lambda (_g1452614532_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1452614532_))))
               (_g1452414560_
                (lambda (_g1452614538_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1452614538_))
                      (let ((_e1453014540_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1452614538_))))
                        (let ((_hd1452914543_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1453014540_)))
                              (_tl1452814545_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1453014540_))))
                          ((lambda (_L14548_)
                             (let ((_decls14558_
                                    (map gx#syntax->datum _L14548_)))
                               (gxc#current-compile-decls
                                (let ((__tmp17692 (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp17692 _decls14558_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls14558_))))
                           _tl1452814545_)))
                      (let ()
                        (declare (not safe))
                        (_g1452514535_ _g1452614538_))))))
          (declare (not safe))
          (_g1452414560_ _stx14523_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_stx14270_)
        (let* ((_g1427214289_
                (lambda (_g1427314286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1427314286_))))
               (_g1427114520_
                (lambda (_g1427314292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1427314292_))
                      (let ((_e1427814294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1427314292_))))
                        (let ((_hd1427714297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1427814294_)))
                              (_tl1427614299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1427814294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1427614299_))
                              (let ((_e1428114302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1427614299_))))
                                (let ((_hd1428014305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1428114302_)))
                                      (_tl1427914307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1428114302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1427914307_))
                                      (let ((_e1428414310_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1427914307_))))
                                        (let ((_hd1428314313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1428414310_)))
                                              (_tl1428214315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1428414310_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1428214315_))
                                              ((lambda (_L14318_ _L14319_)
                                                 (let* ((___stx1640916410_
                                                         _L14319_)
                                                        (_g1433614350_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1640916410_)))))
                                                   (let ((___kont1641116412_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L14318_))))
                                                         (___kont1641316414_
                                                          (lambda (_L14482_)
                                                            (let ((_eid14491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L14482_))))
                      (let ((_lambda-expr1449214494_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L14318_))))
                        (if _lambda-expr1449214494_
                            (let* ((_lambda-expr14497_ _lambda-expr1449214494_)
                                   (__tmp17693
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (table-set!
                               __tmp17693
                               _lambda-expr14497_
                               _eid14491_))
                            '#f))
                      (let ((__tmp17694
                             (let ((__tmp17695
                                    (let ((__tmp17696
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e _L14318_))))
                                      (declare (not safe))
                                      (cons __tmp17696 '()))))
                               (declare (not safe))
                               (cons _eid14491_ __tmp17695))))
                        (declare (not safe))
                        (cons 'define __tmp17694)))))
                 (___kont1641516416_
                  (lambda ()
                    (let* ((_tmp14357_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body14466_
                            (let _lp14359_ ((_rest14361_ _L14319_)
                                            (_k14362_ '0)
                                            (_r14363_ '()))
                              (let* ((___stx1637916380_ _rest14361_)
                                     (_g1436814385_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1637916380_)))))
                                (let ((___kont1638116382_
                                       (lambda (_L14453_)
                                         (let ((__tmp17697
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k14362_ '1))))
                                           (declare (not safe))
                                           (_lp14359_
                                            _L14453_
                                            __tmp17697
                                            _r14363_))))
                                      (___kont1638316384_
                                       (lambda (_L14426_ _L14427_)
                                         (let ((__tmp17704
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k14362_ '1)))
                                               (__tmp17698
                                                (let ((__tmp17699
                                                       (let ((__tmp17700
                                                              (let ((__tmp17703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L14427_)))
                            (__tmp17701
                             (let ((__tmp17702
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp14357_
                                       _k14362_
                                       _L14426_))))
                               (declare (not safe))
                               (cons __tmp17702 '()))))
                        (declare (not safe))
                        (cons __tmp17703 __tmp17701))))
                 (declare (not safe))
                 (cons 'define __tmp17700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17699 _r14363_))))
                                           (declare (not safe))
                                           (_lp14359_
                                            _L14426_
                                            __tmp17704
                                            __tmp17698))))
                                      (___kont1638516386_
                                       (lambda (_L14397_)
                                         (let ((__tmp17705
                                                (let ((__tmp17706
                                                       (let ((__tmp17707
                                                              (let ((__tmp17710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L14397_)))
                            (__tmp17708
                             (let ((__tmp17709
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp14357_
                                       _k14362_))))
                               (declare (not safe))
                               (cons __tmp17709 '()))))
                        (declare (not safe))
                        (cons __tmp17710 __tmp17708))))
                 (declare (not safe))
                 (cons 'define __tmp17707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17706 '()))))
                                           (declare (not safe))
                                           (foldl1 cons __tmp17705 _r14363_))))
                                      (___kont1638716388_
                                       (lambda () (reverse _r14363_))))
                                  (let ((_g1436614413_
                                         (lambda ()
                                           (let ((_L14397_ ___stx1637916380_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L14397_))
                                                 (___kont1638516386_ _L14397_)
                                                 (___kont1638716388_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1637916380_))
                                        (let ((_e1437314442_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1637916380_))))
                                          (let ((_tl1437114447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1437314442_)))
                                                (_hd1437214445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1437314442_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd1437214445_))
                                                (let ((_e1437414450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1437214445_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e1437414450_
                                                                '#f))
                                                      (___kont1638116382_
                                                       _tl1437114447_)
                                                      (___kont1638316384_
                                                       _tl1437114447_
                                                       _hd1437214445_)))
                                                (___kont1638316384_
                                                 _tl1437114447_
                                                 _hd1437214445_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1436614413_)))))))))
                      (let ((__tmp17711
                             (let ((__tmp17714
                                    (let ((__tmp17715
                                           (let ((__tmp17716
                                                  (let ((__tmp17717
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _L14318_))))
                                                    (declare (not safe))
                                                    (cons __tmp17717 '()))))
                                             (declare (not safe))
                                             (cons _tmp14357_ __tmp17716))))
                                      (declare (not safe))
                                      (cons 'define __tmp17715)))
                                   (__tmp17712
                                    (let ((__tmp17713
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp14357_
                                              _L14319_
                                              _L14318_))))
                                      (declare (not safe))
                                      (cons __tmp17713 _body14466_))))
                               (declare (not safe))
                               (cons __tmp17714 __tmp17712))))
                        (declare (not safe))
                        (cons 'begin __tmp17711))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx1640916410_))
                                                         (let ((_e1434014504_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx1640916410_))))
                   (let ((_tl1433814509_
                          (let () (declare (not safe)) (##cdr _e1434014504_)))
                         (_hd1433914507_
                          (let () (declare (not safe)) (##car _e1434014504_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd1433914507_))
                         (let ((_e1434114512_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd1433914507_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e1434114512_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1433814509_))
                                   (___kont1641116412_)
                                   (___kont1641516416_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1433814509_))
                                   (___kont1641316414_ _hd1433914507_)
                                   (___kont1641516416_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1433814509_))
                             (___kont1641316414_ _hd1433914507_)
                             (___kont1641516416_)))))
                 (___kont1641516416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1428314313_
                                               _hd1428014305_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1427214289_
                                                 _g1427314292_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1427214289_ _g1427314292_)))))
                              (let ()
                                (declare (not safe))
                                (_g1427214289_ _g1427314292_)))))
                      (let ()
                        (declare (not safe))
                        (_g1427214289_ _g1427314292_))))))
          (declare (not safe))
          (_g1427114520_ _stx14270_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals14246_ _hd14247_ _expr14248_)
        (let ((_$e14250_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr14248_))))
          (if _$e14250_
              ((lambda (_count14253_)
                 (let ((_len14255_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd14247_)))
                       (_cmp14256_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd14247_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len14255_ '0)
                           (_cmp14256_ _count14253_ _len14255_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr14248_
                          _hd14247_)))))
               _$e14250_)
              (let* ((_len14261_
                      (let () (declare (not safe)) (gx#stx-length _hd14247_)))
                     (_cmp14263_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd14247_))
                          '##fx=
                          '##fx>=))
                     (_errmsg14265_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd14247_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len14261_)
                       '" values"))
                     (_count14267_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp17741
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd14247_))))
                           (declare (not safe))
                           (not __tmp17741))
                         (fx= _len14261_ '0))
                    '#!void
                    (let ((__tmp17718
                           (let ((__tmp17737
                                  (let ((__tmp17738
                                         (let ((__tmp17739
                                                (let ((__tmp17740
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals14246_))))
                                                  (declare (not safe))
                                                  (cons __tmp17740 '()))))
                                           (declare (not safe))
                                           (cons _count14267_ __tmp17739))))
                                    (declare (not safe))
                                    (cons __tmp17738 '())))
                                 (__tmp17719
                                  (let ((__tmp17720
                                         (let ((__tmp17721
                                                (let ((__tmp17726
                                                       (let ((__tmp17727
                                                              (let ((__tmp17728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp17735
                                        (let ((__tmp17736
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len14261_ '()))))
                                          (declare (not safe))
                                          (cons _count14267_ __tmp17736))))
                                   (declare (not safe))
                                   (cons _cmp14263_ __tmp17735))
                                 (let ((__tmp17729
                                        (let ((__tmp17730
                                               (let ((__tmp17731
                                                      (let ((__tmp17732
                                                             (let ((__tmp17733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17734
                                   (let ()
                                     (declare (not safe))
                                     (cons _len14261_ '()))))
                              (declare (not safe))
                              (cons _count14267_ __tmp17734))))
                       (declare (not safe))
                       (cons _cmp14263_ __tmp17733))))
                (declare (not safe))
                (cons __tmp17732 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp17731))))
                                          (declare (not safe))
                                          (cons '() __tmp17730))))
                                   (declare (not safe))
                                   (cons 'let __tmp17729)))))
                        (declare (not safe))
                        (cons __tmp17728 '()))))
                 (declare (not safe))
                 (cons 'not __tmp17727)))
              (__tmp17722
               (let ((__tmp17723
                      (let ((__tmp17724
                             (let ((__tmp17725
                                    (let ()
                                      (declare (not safe))
                                      (cons _count14267_ '()))))
                               (declare (not safe))
                               (cons _errmsg14265_ __tmp17725))))
                        (declare (not safe))
                        (cons 'error __tmp17724))))
                 (declare (not safe))
                 (cons __tmp17723 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17726
                                                        __tmp17722))))
                                           (declare (not safe))
                                           (cons 'if __tmp17721))))
                                    (declare (not safe))
                                    (cons __tmp17720 '()))))
                             (declare (not safe))
                             (cons __tmp17737 __tmp17719))))
                      (declare (not safe))
                      (cons 'let __tmp17718))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var14241_)
        (letrec ((_generate-inline14243_
                  (lambda ()
                    (let ((__tmp17742
                           (let ((__tmp17747
                                  (let ((__tmp17748
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14241_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp17748)))
                                 (__tmp17743
                                  (let ((__tmp17745
                                         (let ((__tmp17746
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var14241_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length __tmp17746)))
                                        (__tmp17744
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp17745 __tmp17744))))
                             (declare (not safe))
                             (cons __tmp17747 __tmp17743))))
                      (declare (not safe))
                      (cons 'if __tmp17742)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline14243_))
              (let ((__tmp17749
                     (let ((__tmp17750
                            (let ((__tmp17751
                                   (let ((__tmp17752
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline14243_))))
                                     (declare (not safe))
                                     (cons __tmp17752 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp17751))))
                       (declare (not safe))
                       (cons '() __tmp17750))))
                (declare (not safe))
                (cons 'let __tmp17749))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var14234_ _i14235_ _rest14236_)
        (letrec ((_generate-inline14238_
                  (lambda ()
                    (if (and (fx= _i14235_ '0)
                             (let ((__tmp17763
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest14236_))))
                               (declare (not safe))
                               (not __tmp17763)))
                        (let ((__tmp17755
                               (let ((__tmp17761
                                      (let ((__tmp17762
                                             (let ()
                                               (declare (not safe))
                                               (cons _var14234_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp17762)))
                                     (__tmp17756
                                      (let ((__tmp17758
                                             (let ((__tmp17759
                                                    (let ((__tmp17760
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var14234_
                                                            __tmp17760))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp17759)))
                                            (__tmp17757
                                             (let ()
                                               (declare (not safe))
                                               (cons _var14234_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17758 __tmp17757))))
                                 (declare (not safe))
                                 (cons __tmp17761 __tmp17756))))
                          (declare (not safe))
                          (cons 'if __tmp17755))
                        (let ((__tmp17753
                               (let ((__tmp17754
                                      (let ()
                                        (declare (not safe))
                                        (cons _i14235_ '()))))
                                 (declare (not safe))
                                 (cons _var14234_ __tmp17754))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp17753))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline14238_))
              (let ((__tmp17764
                     (let ((__tmp17765
                            (let ((__tmp17766
                                   (let ((__tmp17767
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline14238_))))
                                     (declare (not safe))
                                     (cons __tmp17767 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp17766))))
                       (declare (not safe))
                       (cons '() __tmp17765))))
                (declare (not safe))
                (cons 'let __tmp17764))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var14231_ _i14232_)
        (if (fx= _i14232_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp17815
                       (let ((__tmp17822
                              (let ((__tmp17823
                                     (let ()
                                       (declare (not safe))
                                       (cons _var14231_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp17823)))
                             (__tmp17816
                              (let ((__tmp17820
                                     (let ((__tmp17821
                                            (let ()
                                              (declare (not safe))
                                              (cons _var14231_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp17821)))
                                    (__tmp17817
                                     (let ((__tmp17818
                                            (let ((__tmp17819
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var14231_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp17819))))
                                       (declare (not safe))
                                       (cons __tmp17818 '()))))
                                (declare (not safe))
                                (cons __tmp17820 __tmp17817))))
                         (declare (not safe))
                         (cons __tmp17822 __tmp17816))))
                  (declare (not safe))
                  (cons 'if __tmp17815))
                (let ((__tmp17802
                       (let ((__tmp17803
                              (let ((__tmp17804
                                     (let ((__tmp17805
                                            (let ((__tmp17806
                                                   (let ((__tmp17813
                                                          (let ((__tmp17814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var14231_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp17814)))
                 (__tmp17807
                  (let ((__tmp17811
                         (let ((__tmp17812
                                (let ()
                                  (declare (not safe))
                                  (cons _var14231_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp17812)))
                        (__tmp17808
                         (let ((__tmp17809
                                (let ((__tmp17810
                                       (let ()
                                         (declare (not safe))
                                         (cons _var14231_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp17810))))
                           (declare (not safe))
                           (cons __tmp17809 '()))))
                    (declare (not safe))
                    (cons __tmp17811 __tmp17808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17813
                                                           __tmp17807))))
                                              (declare (not safe))
                                              (cons 'if __tmp17806))))
                                       (declare (not safe))
                                       (cons __tmp17805 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp17804))))
                         (declare (not safe))
                         (cons '() __tmp17803))))
                  (declare (not safe))
                  (cons 'let __tmp17802)))
            (if (fx= _i14232_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp17793
                           (let ((__tmp17800
                                  (let ((__tmp17801
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14231_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp17801)))
                                 (__tmp17794
                                  (let ((__tmp17796
                                         (let ((__tmp17797
                                                (let ((__tmp17798
                                                       (let ((__tmp17799
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var14231_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp17799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17798 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp17797)))
                                        (__tmp17795
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp17796 __tmp17795))))
                             (declare (not safe))
                             (cons __tmp17800 __tmp17794))))
                      (declare (not safe))
                      (cons 'if __tmp17793))
                    (let ((__tmp17780
                           (let ((__tmp17781
                                  (let ((__tmp17782
                                         (let ((__tmp17783
                                                (let ((__tmp17784
                                                       (let ((__tmp17791
                                                              (let ((__tmp17792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var14231_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp17792)))
                     (__tmp17785
                      (let ((__tmp17787
                             (let ((__tmp17788
                                    (let ((__tmp17789
                                           (let ((__tmp17790
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var14231_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp17790))))
                                      (declare (not safe))
                                      (cons __tmp17789 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp17788)))
                            (__tmp17786
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp17787 __tmp17786))))
                 (declare (not safe))
                 (cons __tmp17791 __tmp17785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp17784))))
                                           (declare (not safe))
                                           (cons __tmp17783 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp17782))))
                             (declare (not safe))
                             (cons '() __tmp17781))))
                      (declare (not safe))
                      (cons 'let __tmp17780)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp17776
                           (let ((__tmp17778
                                  (let ((__tmp17779
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14231_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp17779)))
                                 (__tmp17777
                                  (let ()
                                    (declare (not safe))
                                    (cons _i14232_ '()))))
                             (declare (not safe))
                             (cons __tmp17778 __tmp17777))))
                      (declare (not safe))
                      (cons '##list-tail __tmp17776))
                    (let ((__tmp17768
                           (let ((__tmp17769
                                  (let ((__tmp17770
                                         (let ((__tmp17771
                                                (let ((__tmp17772
                                                       (let ((__tmp17774
                                                              (let ((__tmp17775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var14231_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp17775)))
                     (__tmp17773
                      (let () (declare (not safe)) (cons _i14232_ '()))))
                 (declare (not safe))
                 (cons __tmp17774 __tmp17773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp17772))))
                                           (declare (not safe))
                                           (cons __tmp17771 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp17770))))
                             (declare (not safe))
                             (cons '() __tmp17769))))
                      (declare (not safe))
                      (cons 'let __tmp17768)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_stx14164_)
        (let* ((_g1416614183_
                (lambda (_g1416714180_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1416714180_))))
               (_g1416514228_
                (lambda (_g1416714186_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1416714186_))
                      (let ((_e1417214188_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1416714186_))))
                        (let ((_hd1417114191_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1417214188_)))
                              (_tl1417014193_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1417214188_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1417014193_))
                              (let ((_e1417514196_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1417014193_))))
                                (let ((_hd1417414199_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1417514196_)))
                                      (_tl1417314201_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1417514196_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1417314201_))
                                      (let ((_e1417814204_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1417314201_))))
                                        (let ((_hd1417714207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1417814204_)))
                                              (_tl1417614209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1417814204_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1417614209_))
                                              ((lambda (_L14212_ _L14213_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _L14213_
                                                    _L14212_)))
                                               _hd1417714207_
                                               _hd1417414199_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1416614183_
                                                 _g1416714186_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1416614183_ _g1416714186_)))))
                              (let ()
                                (declare (not safe))
                                (_g1416614183_ _g1416714186_)))))
                      (let ()
                        (declare (not safe))
                        (_g1416614183_ _g1416714186_))))))
          (declare (not safe))
          (_g1416514228_ _stx14164_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_hd14124_ _body14125_)
        (let* ((_hd14127_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd14124_)))
               (_body14129_
                (let () (declare (not safe)) (gxc#compile-e _body14125_)))
               (_body14161_
                (let* ((_body1413014138_ _body14129_)
                       (_else1413214146_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body14129_ '()))))
                       (_K1413414151_ (lambda (_exprs14149_) _exprs14149_)))
                  (if (let () (declare (not safe)) (##pair? _body1413014138_))
                      (let ((_hd1413514154_
                             (let ()
                               (declare (not safe))
                               (##car _body1413014138_)))
                            (_tl1413614156_
                             (let ()
                               (declare (not safe))
                               (##cdr _body1413014138_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd1413514154_ 'begin))
                            (let ((_exprs14159_ _tl1413614156_))
                              (declare (not safe))
                              (_K1413414151_ _exprs14159_))
                            (let () (declare (not safe)) (_else1413214146_))))
                      (let () (declare (not safe)) (_else1413214146_))))))
          (let ((__tmp17824
                 (let () (declare (not safe)) (cons _hd14127_ _body14161_))))
            (declare (not safe))
            (cons 'lambda __tmp17824)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd14122_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd14122_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_stx12665_)
        (letrec ((_dispatch-case?12667_
                  (lambda (_hd13352_ _body13353_)
                    (let* ((_form13355_
                            (let ((__tmp17825
                                   (let ()
                                     (declare (not safe))
                                     (cons _body13353_ '()))))
                              (declare (not safe))
                              (cons _hd13352_ __tmp17825)))
                           (___stx1644116442_ _form13355_)
                           (_g1336013517_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1644116442_)))))
                      (let ((___kont1644316444_
                             (lambda (_L14042_ _L14043_ _L14044_) '#t))
                            (___kont1644916450_
                             (lambda (_L13830_
                                      _L13831_
                                      _L13832_
                                      _L13833_
                                      _L13834_
                                      _L13835_)
                               '#t))
                            (___kont1645516456_
                             (lambda (_L13625_ _L13626_ _L13627_ _L13628_)
                               '#t))
                            (___kont1645716458_ (lambda () '#f)))
                        (let* ((___match1658216583_
                                (lambda (_e1347913529_
                                         _hd1347813532_
                                         _tl1347713534_
                                         _e1348213537_
                                         _hd1348113540_
                                         _tl1348013542_
                                         _e1348513545_
                                         _hd1348413548_
                                         _tl1348313550_
                                         _e1348813553_
                                         _hd1348713556_
                                         _tl1348613558_
                                         _e1349113561_
                                         _hd1349013564_
                                         _tl1348913566_
                                         _e1349413569_
                                         _hd1349313572_
                                         _tl1349213574_
                                         _e1349713577_
                                         _hd1349613580_
                                         _tl1349513582_
                                         _e1350013585_
                                         _hd1349913588_
                                         _tl1349813590_
                                         _e1350313593_
                                         _hd1350213596_
                                         _tl1350113598_
                                         _e1350613601_
                                         _hd1350513604_
                                         _tl1350413606_
                                         _e1350913609_
                                         _hd1350813612_
                                         _tl1350713614_
                                         _e1351213617_
                                         _hd1351113620_
                                         _tl1351013622_)
                                  (let ((_L13625_ _hd1351113620_)
                                        (_L13626_ _hd1350213596_)
                                        (_L13627_ _hd1349313572_)
                                        (_L13628_ _hd1347813532_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L13628_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L13627_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L13628_
                                                _L13625_))
                                             (let ((__tmp17826
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L13626_
                                                       _L13628_))))
                                               (declare (not safe))
                                               (not __tmp17826)))
                                        (___kont1645516456_
                                         _L13625_
                                         _L13626_
                                         _L13627_
                                         _L13628_)
                                        (___kont1645716458_)))))
                               (___match1655416555_
                                (lambda (_e1347913529_
                                         _hd1347813532_
                                         _tl1347713534_
                                         _e1348213537_
                                         _hd1348113540_
                                         _tl1348013542_
                                         _e1348513545_
                                         _hd1348413548_
                                         _tl1348313550_
                                         _e1348813553_
                                         _hd1348713556_
                                         _tl1348613558_
                                         _e1349113561_
                                         _hd1349013564_
                                         _tl1348913566_
                                         _e1349413569_
                                         _hd1349313572_
                                         _tl1349213574_
                                         _e1349713577_
                                         _hd1349613580_
                                         _tl1349513582_
                                         _e1350013585_
                                         _hd1349913588_
                                         _tl1349813590_
                                         _e1350313593_
                                         _hd1350213596_
                                         _tl1350113598_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1349513582_))
                                      (let ((_e1350613601_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1349513582_))))
                                        (let ((_tl1350413606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1350613601_)))
                                              (_hd1350513604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1350613601_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd1350513604_))
                                              (let ((_e1350913609_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd1350513604_))))
                                                (let ((_tl1350713614_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1350913609_)))
                                                      (_hd1350813612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1350913609_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd1350813612_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd1350813612_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1350713614_))
                      (let ((_e1351213617_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1350713614_))))
                        (let ((_tl1351013622_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1351213617_)))
                              (_hd1351113620_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1351213617_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl1351013622_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl1350413606_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1348013542_))
                                      (___match1658216583_
                                       _e1347913529_
                                       _hd1347813532_
                                       _tl1347713534_
                                       _e1348213537_
                                       _hd1348113540_
                                       _tl1348013542_
                                       _e1348513545_
                                       _hd1348413548_
                                       _tl1348313550_
                                       _e1348813553_
                                       _hd1348713556_
                                       _tl1348613558_
                                       _e1349113561_
                                       _hd1349013564_
                                       _tl1348913566_
                                       _e1349413569_
                                       _hd1349313572_
                                       _tl1349213574_
                                       _e1349713577_
                                       _hd1349613580_
                                       _tl1349513582_
                                       _e1350013585_
                                       _hd1349913588_
                                       _tl1349813590_
                                       _e1350313593_
                                       _hd1350213596_
                                       _tl1350113598_
                                       _e1350613601_
                                       _hd1350513604_
                                       _tl1350413606_
                                       _e1350913609_
                                       _hd1350813612_
                                       _tl1350713614_
                                       _e1351213617_
                                       _hd1351113620_
                                       _tl1351013622_)
                                      (___kont1645716458_))
                                  (___kont1645716458_))
                              (___kont1645716458_))))
                      (___kont1645716458_))
                  (___kont1645716458_))
              (___kont1645716458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1645716458_))))
                                      (___kont1645716458_))))
                               (___match1648416485_
                                (lambda (_e1341513670_
                                         _hd1341413673_
                                         _tl1341313675_
                                         ___splice1645116452_
                                         _target1341613678_
                                         _tl1341813680_)
                                  (letrec ((_loop1341913683_
                                            (lambda (_hd1341713686_
                                                     _arg1342313688_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1341713686_))
                                                  (let ((_e1342013691_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1341713686_))))
                                                    (let ((_lp-tl1342213696_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1342013691_)))
                                                          (_lp-hd1342113694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1342013691_))))
                                                      (let ((__tmp17841
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1342113694_ _arg1342313688_))))
                (declare (not safe))
                (_loop1341913683_ _lp-tl1342213696_ __tmp17841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1342413699_
                                                         (reverse _arg1342313688_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1341313675_))
                                                        (let ((_e1342713702_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1341313675_))))
                  (let ((_tl1342513707_
                         (let () (declare (not safe)) (##cdr _e1342713702_)))
                        (_hd1342613705_
                         (let () (declare (not safe)) (##car _e1342713702_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1342613705_))
                        (let ((_e1343013710_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1342613705_))))
                          (let ((_tl1342813715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1343013710_)))
                                (_hd1342913713_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1343013710_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1342913713_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1342913713_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1342813715_))
                                        (let ((_e1343313718_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1342813715_))))
                                          (let ((_tl1343113723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1343313718_)))
                                                (_hd1343213721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1343313718_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1343213721_))
                                                (let ((_e1343613726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1343213721_))))
                                                  (let ((_tl1343413731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1343613726_)))
                                                        (_hd1343513729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1343613726_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1343513729_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1343513729_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1343413731_))
                        (let ((_e1343913734_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1343413731_))))
                          (let ((_tl1343713739_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1343913734_)))
                                (_hd1343813737_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1343913734_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1343713739_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl1343113723_))
                                    (let ((_e1344213742_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl1343113723_))))
                                      (let ((_tl1344013747_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1344213742_)))
                                            (_hd1344113745_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1344213742_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd1344113745_))
                                            (let ((_e1344513750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd1344113745_))))
                                              (let ((_tl1344313755_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1344513750_)))
                                                    (_hd1344413753_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1344513750_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd1344413753_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd1344413753_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1344313755_))
                                                            (let ((_e1344813758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1344313755_))))
                      (let ((_tl1344613763_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1344813758_)))
                            (_hd1344713761_
                             (let ()
                               (declare (not safe))
                               (##car _e1344813758_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1344613763_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl1344013747_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl1344013747_))
                                          '1)
                                    (let ((___splice1645316454_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1344013747_
                                              '1))))
                                      (let ((_tl1345113768_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1645316454_
                                                '1)))
                                            (_target1344913766_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1645316454_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1345113768_))
                                            (let ((_e1346013771_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1345113768_))))
                                              (let ((_tl1345813776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1346013771_)))
                                                    (_hd1345913774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1346013771_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd1345913774_))
                                                    (let ((_e1346313779_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd1345913774_))))
                                                      (let ((_tl1346113784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1346313779_)))
                    (_hd1346213782_
                     (let () (declare (not safe)) (##car _e1346313779_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd1346213782_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd1346213782_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl1346113784_))
                            (let ((_e1346613787_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl1346113784_))))
                              (let ((_tl1346413792_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1346613787_)))
                                    (_hd1346513790_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1346613787_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl1346413792_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1345813776_))
                                        (letrec ((_loop1345213795_
                                                  (lambda (_hd1345013798_
                                                           _xarg1345613800_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1345013798_))
                                                        (let ((_e1345313803_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1345013798_))))
                  (let ((_lp-tl1345513808_
                         (let () (declare (not safe)) (##cdr _e1345313803_)))
                        (_lp-hd1345413806_
                         (let () (declare (not safe)) (##car _e1345313803_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd1345413806_))
                        (let ((_e1346913811_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd1345413806_))))
                          (let ((_tl1346713816_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1346913811_)))
                                (_hd1346813814_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1346913811_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1346813814_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd1346813814_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1346713816_))
                                        (let ((_e1347213819_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1346713816_))))
                                          (let ((_tl1347013824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1347213819_)))
                                                (_hd1347113822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1347213819_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1347013824_))
                                                (let ((__tmp17840
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1347113822_
                                                               _xarg1345613800_))))
                                                  (declare (not safe))
                                                  (_loop1345213795_
                                                   _lp-tl1345513808_
                                                   __tmp17840))
                                                (___match1655416555_
                                                 _e1341513670_
                                                 _hd1341413673_
                                                 _tl1341313675_
                                                 _e1342713702_
                                                 _hd1342613705_
                                                 _tl1342513707_
                                                 _e1343013710_
                                                 _hd1342913713_
                                                 _tl1342813715_
                                                 _e1343313718_
                                                 _hd1343213721_
                                                 _tl1343113723_
                                                 _e1343613726_
                                                 _hd1343513729_
                                                 _tl1343413731_
                                                 _e1343913734_
                                                 _hd1343813737_
                                                 _tl1343713739_
                                                 _e1344213742_
                                                 _hd1344113745_
                                                 _tl1344013747_
                                                 _e1344513750_
                                                 _hd1344413753_
                                                 _tl1344313755_
                                                 _e1344813758_
                                                 _hd1344713761_
                                                 _tl1344613763_))))
                                        (___match1655416555_
                                         _e1341513670_
                                         _hd1341413673_
                                         _tl1341313675_
                                         _e1342713702_
                                         _hd1342613705_
                                         _tl1342513707_
                                         _e1343013710_
                                         _hd1342913713_
                                         _tl1342813715_
                                         _e1343313718_
                                         _hd1343213721_
                                         _tl1343113723_
                                         _e1343613726_
                                         _hd1343513729_
                                         _tl1343413731_
                                         _e1343913734_
                                         _hd1343813737_
                                         _tl1343713739_
                                         _e1344213742_
                                         _hd1344113745_
                                         _tl1344013747_
                                         _e1344513750_
                                         _hd1344413753_
                                         _tl1344313755_
                                         _e1344813758_
                                         _hd1344713761_
                                         _tl1344613763_))
                                    (___match1655416555_
                                     _e1341513670_
                                     _hd1341413673_
                                     _tl1341313675_
                                     _e1342713702_
                                     _hd1342613705_
                                     _tl1342513707_
                                     _e1343013710_
                                     _hd1342913713_
                                     _tl1342813715_
                                     _e1343313718_
                                     _hd1343213721_
                                     _tl1343113723_
                                     _e1343613726_
                                     _hd1343513729_
                                     _tl1343413731_
                                     _e1343913734_
                                     _hd1343813737_
                                     _tl1343713739_
                                     _e1344213742_
                                     _hd1344113745_
                                     _tl1344013747_
                                     _e1344513750_
                                     _hd1344413753_
                                     _tl1344313755_
                                     _e1344813758_
                                     _hd1344713761_
                                     _tl1344613763_))
                                (___match1655416555_
                                 _e1341513670_
                                 _hd1341413673_
                                 _tl1341313675_
                                 _e1342713702_
                                 _hd1342613705_
                                 _tl1342513707_
                                 _e1343013710_
                                 _hd1342913713_
                                 _tl1342813715_
                                 _e1343313718_
                                 _hd1343213721_
                                 _tl1343113723_
                                 _e1343613726_
                                 _hd1343513729_
                                 _tl1343413731_
                                 _e1343913734_
                                 _hd1343813737_
                                 _tl1343713739_
                                 _e1344213742_
                                 _hd1344113745_
                                 _tl1344013747_
                                 _e1344513750_
                                 _hd1344413753_
                                 _tl1344313755_
                                 _e1344813758_
                                 _hd1344713761_
                                 _tl1344613763_))))
                        (___match1655416555_
                         _e1341513670_
                         _hd1341413673_
                         _tl1341313675_
                         _e1342713702_
                         _hd1342613705_
                         _tl1342513707_
                         _e1343013710_
                         _hd1342913713_
                         _tl1342813715_
                         _e1343313718_
                         _hd1343213721_
                         _tl1343113723_
                         _e1343613726_
                         _hd1343513729_
                         _tl1343413731_
                         _e1343913734_
                         _hd1343813737_
                         _tl1343713739_
                         _e1344213742_
                         _hd1344113745_
                         _tl1344013747_
                         _e1344513750_
                         _hd1344413753_
                         _tl1344313755_
                         _e1344813758_
                         _hd1344713761_
                         _tl1344613763_))))
                (let ((_xarg1345713827_ (reverse _xarg1345613800_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl1342513707_))
                      (let ((_L13830_ _hd1346513790_)
                            (_L13831_ _xarg1345713827_)
                            (_L13832_ _hd1344713761_)
                            (_L13833_ _hd1343813737_)
                            (_L13834_ _tl1341813680_)
                            (_L13835_ _arg1342413699_))
                        (if (and (let ((__tmp17838
                                        (let ((__tmp17839
                                               (lambda (_g1387813881_
                                                        _g1387913883_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1387813881_
                                                         _g1387913883_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17839 '() _L13835_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp17838))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L13834_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L13833_ 'apply))
                                 (fx= (length (let ((__tmp17836
                                                     (lambda (_g1388513888_
                                                              _g1388613890_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1388513888_
                                                               _g1388613890_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17836
                                                        '()
                                                        _L13835_)))
                                      (length (let ((__tmp17837
                                                     (lambda (_g1389213895_
                                                              _g1389313897_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1389213895_
                                                               _g1389313897_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17837
                                                        '()
                                                        _L13831_))))
                                 (let ((__tmp17834
                                        (let ((__tmp17835
                                               (lambda (_g1389913902_
                                                        _g1390013904_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1389913902_
                                                         _g1390013904_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17835 '() _L13835_)))
                                       (__tmp17832
                                        (let ((__tmp17833
                                               (lambda (_g1390613909_
                                                        _g1390713911_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1390613909_
                                                         _g1390713911_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17833 '() _L13831_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp17834
                                            __tmp17832))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L13834_ _L13830_))
                                 (let ((__tmp17827
                                        (let ((__tmp17831
                                               (lambda (_g1391313915_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g1391313915_
                                                    _L13832_))))
                                              (__tmp17828
                                               (let ((__tmp17830
                                                      (lambda (_g1391713920_
                                                               _g1391813922_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g1391713920_
                                                                _g1391813922_))))
                                                     (__tmp17829
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L13834_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp17830
                                                         __tmp17829
                                                         _L13835_))))
                                          (declare (not safe))
                                          (find __tmp17831 __tmp17828))))
                                   (declare (not safe))
                                   (not __tmp17827)))
                            (___kont1644916450_
                             _L13830_
                             _L13831_
                             _L13832_
                             _L13833_
                             _L13834_
                             _L13835_)
                            (___match1655416555_
                             _e1341513670_
                             _hd1341413673_
                             _tl1341313675_
                             _e1342713702_
                             _hd1342613705_
                             _tl1342513707_
                             _e1343013710_
                             _hd1342913713_
                             _tl1342813715_
                             _e1343313718_
                             _hd1343213721_
                             _tl1343113723_
                             _e1343613726_
                             _hd1343513729_
                             _tl1343413731_
                             _e1343913734_
                             _hd1343813737_
                             _tl1343713739_
                             _e1344213742_
                             _hd1344113745_
                             _tl1344013747_
                             _e1344513750_
                             _hd1344413753_
                             _tl1344313755_
                             _e1344813758_
                             _hd1344713761_
                             _tl1344613763_)))
                      (___match1655416555_
                       _e1341513670_
                       _hd1341413673_
                       _tl1341313675_
                       _e1342713702_
                       _hd1342613705_
                       _tl1342513707_
                       _e1343013710_
                       _hd1342913713_
                       _tl1342813715_
                       _e1343313718_
                       _hd1343213721_
                       _tl1343113723_
                       _e1343613726_
                       _hd1343513729_
                       _tl1343413731_
                       _e1343913734_
                       _hd1343813737_
                       _tl1343713739_
                       _e1344213742_
                       _hd1344113745_
                       _tl1344013747_
                       _e1344513750_
                       _hd1344413753_
                       _tl1344313755_
                       _e1344813758_
                       _hd1344713761_
                       _tl1344613763_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1345213795_
                                             _target1344913766_
                                             '())))
                                        (___match1655416555_
                                         _e1341513670_
                                         _hd1341413673_
                                         _tl1341313675_
                                         _e1342713702_
                                         _hd1342613705_
                                         _tl1342513707_
                                         _e1343013710_
                                         _hd1342913713_
                                         _tl1342813715_
                                         _e1343313718_
                                         _hd1343213721_
                                         _tl1343113723_
                                         _e1343613726_
                                         _hd1343513729_
                                         _tl1343413731_
                                         _e1343913734_
                                         _hd1343813737_
                                         _tl1343713739_
                                         _e1344213742_
                                         _hd1344113745_
                                         _tl1344013747_
                                         _e1344513750_
                                         _hd1344413753_
                                         _tl1344313755_
                                         _e1344813758_
                                         _hd1344713761_
                                         _tl1344613763_))
                                    (___match1655416555_
                                     _e1341513670_
                                     _hd1341413673_
                                     _tl1341313675_
                                     _e1342713702_
                                     _hd1342613705_
                                     _tl1342513707_
                                     _e1343013710_
                                     _hd1342913713_
                                     _tl1342813715_
                                     _e1343313718_
                                     _hd1343213721_
                                     _tl1343113723_
                                     _e1343613726_
                                     _hd1343513729_
                                     _tl1343413731_
                                     _e1343913734_
                                     _hd1343813737_
                                     _tl1343713739_
                                     _e1344213742_
                                     _hd1344113745_
                                     _tl1344013747_
                                     _e1344513750_
                                     _hd1344413753_
                                     _tl1344313755_
                                     _e1344813758_
                                     _hd1344713761_
                                     _tl1344613763_))))
                            (___match1655416555_
                             _e1341513670_
                             _hd1341413673_
                             _tl1341313675_
                             _e1342713702_
                             _hd1342613705_
                             _tl1342513707_
                             _e1343013710_
                             _hd1342913713_
                             _tl1342813715_
                             _e1343313718_
                             _hd1343213721_
                             _tl1343113723_
                             _e1343613726_
                             _hd1343513729_
                             _tl1343413731_
                             _e1343913734_
                             _hd1343813737_
                             _tl1343713739_
                             _e1344213742_
                             _hd1344113745_
                             _tl1344013747_
                             _e1344513750_
                             _hd1344413753_
                             _tl1344313755_
                             _e1344813758_
                             _hd1344713761_
                             _tl1344613763_))
                        (___match1655416555_
                         _e1341513670_
                         _hd1341413673_
                         _tl1341313675_
                         _e1342713702_
                         _hd1342613705_
                         _tl1342513707_
                         _e1343013710_
                         _hd1342913713_
                         _tl1342813715_
                         _e1343313718_
                         _hd1343213721_
                         _tl1343113723_
                         _e1343613726_
                         _hd1343513729_
                         _tl1343413731_
                         _e1343913734_
                         _hd1343813737_
                         _tl1343713739_
                         _e1344213742_
                         _hd1344113745_
                         _tl1344013747_
                         _e1344513750_
                         _hd1344413753_
                         _tl1344313755_
                         _e1344813758_
                         _hd1344713761_
                         _tl1344613763_))
                    (___match1655416555_
                     _e1341513670_
                     _hd1341413673_
                     _tl1341313675_
                     _e1342713702_
                     _hd1342613705_
                     _tl1342513707_
                     _e1343013710_
                     _hd1342913713_
                     _tl1342813715_
                     _e1343313718_
                     _hd1343213721_
                     _tl1343113723_
                     _e1343613726_
                     _hd1343513729_
                     _tl1343413731_
                     _e1343913734_
                     _hd1343813737_
                     _tl1343713739_
                     _e1344213742_
                     _hd1344113745_
                     _tl1344013747_
                     _e1344513750_
                     _hd1344413753_
                     _tl1344313755_
                     _e1344813758_
                     _hd1344713761_
                     _tl1344613763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1655416555_
                                                     _e1341513670_
                                                     _hd1341413673_
                                                     _tl1341313675_
                                                     _e1342713702_
                                                     _hd1342613705_
                                                     _tl1342513707_
                                                     _e1343013710_
                                                     _hd1342913713_
                                                     _tl1342813715_
                                                     _e1343313718_
                                                     _hd1343213721_
                                                     _tl1343113723_
                                                     _e1343613726_
                                                     _hd1343513729_
                                                     _tl1343413731_
                                                     _e1343913734_
                                                     _hd1343813737_
                                                     _tl1343713739_
                                                     _e1344213742_
                                                     _hd1344113745_
                                                     _tl1344013747_
                                                     _e1344513750_
                                                     _hd1344413753_
                                                     _tl1344313755_
                                                     _e1344813758_
                                                     _hd1344713761_
                                                     _tl1344613763_))))
                                            (___match1655416555_
                                             _e1341513670_
                                             _hd1341413673_
                                             _tl1341313675_
                                             _e1342713702_
                                             _hd1342613705_
                                             _tl1342513707_
                                             _e1343013710_
                                             _hd1342913713_
                                             _tl1342813715_
                                             _e1343313718_
                                             _hd1343213721_
                                             _tl1343113723_
                                             _e1343613726_
                                             _hd1343513729_
                                             _tl1343413731_
                                             _e1343913734_
                                             _hd1343813737_
                                             _tl1343713739_
                                             _e1344213742_
                                             _hd1344113745_
                                             _tl1344013747_
                                             _e1344513750_
                                             _hd1344413753_
                                             _tl1344313755_
                                             _e1344813758_
                                             _hd1344713761_
                                             _tl1344613763_))))
                                    (___match1655416555_
                                     _e1341513670_
                                     _hd1341413673_
                                     _tl1341313675_
                                     _e1342713702_
                                     _hd1342613705_
                                     _tl1342513707_
                                     _e1343013710_
                                     _hd1342913713_
                                     _tl1342813715_
                                     _e1343313718_
                                     _hd1343213721_
                                     _tl1343113723_
                                     _e1343613726_
                                     _hd1343513729_
                                     _tl1343413731_
                                     _e1343913734_
                                     _hd1343813737_
                                     _tl1343713739_
                                     _e1344213742_
                                     _hd1344113745_
                                     _tl1344013747_
                                     _e1344513750_
                                     _hd1344413753_
                                     _tl1344313755_
                                     _e1344813758_
                                     _hd1344713761_
                                     _tl1344613763_))
                                (___match1655416555_
                                 _e1341513670_
                                 _hd1341413673_
                                 _tl1341313675_
                                 _e1342713702_
                                 _hd1342613705_
                                 _tl1342513707_
                                 _e1343013710_
                                 _hd1342913713_
                                 _tl1342813715_
                                 _e1343313718_
                                 _hd1343213721_
                                 _tl1343113723_
                                 _e1343613726_
                                 _hd1343513729_
                                 _tl1343413731_
                                 _e1343913734_
                                 _hd1343813737_
                                 _tl1343713739_
                                 _e1344213742_
                                 _hd1344113745_
                                 _tl1344013747_
                                 _e1344513750_
                                 _hd1344413753_
                                 _tl1344313755_
                                 _e1344813758_
                                 _hd1344713761_
                                 _tl1344613763_))
                            (___kont1645716458_))))
                    (___kont1645716458_))
                (___kont1645716458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1645716458_))))
                                            (___kont1645716458_))))
                                    (___kont1645716458_))
                                (___kont1645716458_))))
                        (___kont1645716458_))
                    (___kont1645716458_))
                (___kont1645716458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1645716458_))))
                                        (___kont1645716458_))
                                    (___kont1645716458_))
                                (___kont1645716458_))))
                        (___kont1645716458_))))
                (___kont1645716458_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1341913683_
                                       _target1341613678_
                                       '())))))
                               (___match1647216473_
                                (lambda (_e1336713930_
                                         _hd1336613933_
                                         _tl1336513935_
                                         ___splice1644516446_
                                         _target1336813938_
                                         _tl1337013940_)
                                  (letrec ((_loop1337113943_
                                            (lambda (_hd1336913946_
                                                     _arg1337513948_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1336913946_))
                                                  (let ((_e1337213951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1336913946_))))
                                                    (let ((_lp-tl1337413956_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1337213951_)))
                                                          (_lp-hd1337313954_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1337213951_))))
                                                      (let ((__tmp17855
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1337313954_ _arg1337513948_))))
                (declare (not safe))
                (_loop1337113943_ _lp-tl1337413956_ __tmp17855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1337613959_
                                                         (reverse _arg1337513948_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1336513935_))
                                                        (let ((_e1337913962_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1336513935_))))
                  (let ((_tl1337713967_
                         (let () (declare (not safe)) (##cdr _e1337913962_)))
                        (_hd1337813965_
                         (let () (declare (not safe)) (##car _e1337913962_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1337813965_))
                        (let ((_e1338213970_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1337813965_))))
                          (let ((_tl1338013975_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1338213970_)))
                                (_hd1338113973_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1338213970_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1338113973_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1338113973_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1338013975_))
                                        (let ((_e1338513978_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1338013975_))))
                                          (let ((_tl1338313983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1338513978_)))
                                                (_hd1338413981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1338513978_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1338413981_))
                                                (let ((_e1338813986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1338413981_))))
                                                  (let ((_tl1338613991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1338813986_)))
                                                        (_hd1338713989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1338813986_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1338713989_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1338713989_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1338613991_))
                        (let ((_e1339113994_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1338613991_))))
                          (let ((_tl1338913999_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1339113994_)))
                                (_hd1339013997_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1339113994_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1338913999_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl1338313983_))
                                    (let ((___splice1644716448_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1338313983_
                                              '0))))
                                      (let ((_tl1339414004_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1644716448_
                                                '1)))
                                            (_target1339214002_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1644716448_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl1339414004_))
                                            (letrec ((_loop1339514007_
                                                      (lambda (_hd1339314010_
                                                               _xarg1339914012_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd1339314010_))
                                                            (let ((_e1339614015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd1339314010_))))
                      (let ((_lp-tl1339814020_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1339614015_)))
                            (_lp-hd1339714018_
                             (let ()
                               (declare (not safe))
                               (##car _e1339614015_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd1339714018_))
                            (let ((_e1340314023_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd1339714018_))))
                              (let ((_tl1340114028_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1340314023_)))
                                    (_hd1340214026_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1340314023_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1340214026_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd1340214026_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1340114028_))
                                            (let ((_e1340614031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1340114028_))))
                                              (let ((_tl1340414036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1340614031_)))
                                                    (_hd1340514034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1340614031_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl1340414036_))
                                                    (let ((__tmp17854
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd1340514034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg1339914012_))))
              (declare (not safe))
              (_loop1339514007_ _lp-tl1339814020_ __tmp17854))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1648416485_
                                                     _e1336713930_
                                                     _hd1336613933_
                                                     _tl1336513935_
                                                     ___splice1644516446_
                                                     _target1336813938_
                                                     _tl1337013940_))))
                                            (___match1648416485_
                                             _e1336713930_
                                             _hd1336613933_
                                             _tl1336513935_
                                             ___splice1644516446_
                                             _target1336813938_
                                             _tl1337013940_))
                                        (___match1648416485_
                                         _e1336713930_
                                         _hd1336613933_
                                         _tl1336513935_
                                         ___splice1644516446_
                                         _target1336813938_
                                         _tl1337013940_))
                                    (___match1648416485_
                                     _e1336713930_
                                     _hd1336613933_
                                     _tl1336513935_
                                     ___splice1644516446_
                                     _target1336813938_
                                     _tl1337013940_))))
                            (___match1648416485_
                             _e1336713930_
                             _hd1336613933_
                             _tl1336513935_
                             ___splice1644516446_
                             _target1336813938_
                             _tl1337013940_))))
                    (let ((_xarg1340014039_ (reverse _xarg1339914012_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1337713967_))
                          (let ((_L14042_ _xarg1340014039_)
                                (_L14043_ _hd1339013997_)
                                (_L14044_ _arg1337613959_))
                            (if (and (let ((__tmp17852
                                            (let ((__tmp17853
                                                   (lambda (_g1407214075_
                                                            _g1407314077_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1407214075_
                                                             _g1407314077_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17853
                                                      '()
                                                      _L14044_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp17852))
                                     (fx= (length (let ((__tmp17850
                                                         (lambda (_g1407914082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1408014084_)
                   (let ()
                     (declare (not safe))
                     (cons _g1407914082_ _g1408014084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17850
                                                            '()
                                                            _L14044_)))
                                          (length (let ((__tmp17851
                                                         (lambda (_g1408614089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1408714091_)
                   (let ()
                     (declare (not safe))
                     (cons _g1408614089_ _g1408714091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17851
                                                            '()
                                                            _L14042_))))
                                     (let ((__tmp17848
                                            (let ((__tmp17849
                                                   (lambda (_g1409314096_
                                                            _g1409414098_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1409314096_
                                                             _g1409414098_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17849
                                                      '()
                                                      _L14044_)))
                                           (__tmp17846
                                            (let ((__tmp17847
                                                   (lambda (_g1410014103_
                                                            _g1410114105_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1410014103_
                                                             _g1410114105_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17847
                                                      '()
                                                      _L14042_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp17848
                                                __tmp17846))
                                     (let ((__tmp17842
                                            (let ((__tmp17845
                                                   (lambda (_g1410714109_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g1410714109_
                                                        _L14043_))))
                                                  (__tmp17843
                                                   (let ((__tmp17844
                                                          (lambda (_g1411114114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1411214116_)
                    (let ()
                      (declare (not safe))
                      (cons _g1411114114_ _g1411214116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp17844
                                                             '()
                                                             _L14044_))))
                                              (declare (not safe))
                                              (find __tmp17845 __tmp17843))))
                                       (declare (not safe))
                                       (not __tmp17842)))
                                (___kont1644316444_ _L14042_ _L14043_ _L14044_)
                                (___match1648416485_
                                 _e1336713930_
                                 _hd1336613933_
                                 _tl1336513935_
                                 ___splice1644516446_
                                 _target1336813938_
                                 _tl1337013940_)))
                          (___match1648416485_
                           _e1336713930_
                           _hd1336613933_
                           _tl1336513935_
                           ___splice1644516446_
                           _target1336813938_
                           _tl1337013940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1339514007_
                                                 _target1339214002_
                                                 '())))
                                            (___match1648416485_
                                             _e1336713930_
                                             _hd1336613933_
                                             _tl1336513935_
                                             ___splice1644516446_
                                             _target1336813938_
                                             _tl1337013940_))))
                                    (___match1648416485_
                                     _e1336713930_
                                     _hd1336613933_
                                     _tl1336513935_
                                     ___splice1644516446_
                                     _target1336813938_
                                     _tl1337013940_))
                                (___match1648416485_
                                 _e1336713930_
                                 _hd1336613933_
                                 _tl1336513935_
                                 ___splice1644516446_
                                 _target1336813938_
                                 _tl1337013940_))))
                        (___match1648416485_
                         _e1336713930_
                         _hd1336613933_
                         _tl1336513935_
                         ___splice1644516446_
                         _target1336813938_
                         _tl1337013940_))
                    (___match1648416485_
                     _e1336713930_
                     _hd1336613933_
                     _tl1336513935_
                     ___splice1644516446_
                     _target1336813938_
                     _tl1337013940_))
                (___match1648416485_
                 _e1336713930_
                 _hd1336613933_
                 _tl1336513935_
                 ___splice1644516446_
                 _target1336813938_
                 _tl1337013940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1648416485_
                                                 _e1336713930_
                                                 _hd1336613933_
                                                 _tl1336513935_
                                                 ___splice1644516446_
                                                 _target1336813938_
                                                 _tl1337013940_))))
                                        (___match1648416485_
                                         _e1336713930_
                                         _hd1336613933_
                                         _tl1336513935_
                                         ___splice1644516446_
                                         _target1336813938_
                                         _tl1337013940_))
                                    (___match1648416485_
                                     _e1336713930_
                                     _hd1336613933_
                                     _tl1336513935_
                                     ___splice1644516446_
                                     _target1336813938_
                                     _tl1337013940_))
                                (___match1648416485_
                                 _e1336713930_
                                 _hd1336613933_
                                 _tl1336513935_
                                 ___splice1644516446_
                                 _target1336813938_
                                 _tl1337013940_))))
                        (___match1648416485_
                         _e1336713930_
                         _hd1336613933_
                         _tl1336513935_
                         ___splice1644516446_
                         _target1336813938_
                         _tl1337013940_))))
                (___match1648416485_
                 _e1336713930_
                 _hd1336613933_
                 _tl1336513935_
                 ___splice1644516446_
                 _target1336813938_
                 _tl1337013940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1337113943_
                                       _target1336813938_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1644116442_))
                              (let ((_e1336713930_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1644116442_))))
                                (let ((_tl1336513935_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1336713930_)))
                                      (_hd1336613933_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1336713930_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1336613933_))
                                      (let ((___splice1644516446_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1336613933_
                                                '0))))
                                        (let ((_tl1337013940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1644516446_
                                                  '1)))
                                              (_target1336813938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1644516446_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1337013940_))
                                              (___match1647216473_
                                               _e1336713930_
                                               _hd1336613933_
                                               _tl1336513935_
                                               ___splice1644516446_
                                               _target1336813938_
                                               _tl1337013940_)
                                              (___match1648416485_
                                               _e1336713930_
                                               _hd1336613933_
                                               _tl1336513935_
                                               ___splice1644516446_
                                               _target1336813938_
                                               _tl1337013940_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1336513935_))
                                          (let ((_e1348213537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1336513935_))))
                                            (let ((_tl1348013542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1348213537_)))
                                                  (_hd1348113540_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1348213537_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1348113540_))
                                                  (let ((_e1348513545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1348113540_))))
                                                    (let ((_tl1348313550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1348513545_)))
                                                          (_hd1348413548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1348513545_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd1348413548_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd1348413548_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1348313550_))
                          (let ((_e1348813553_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1348313550_))))
                            (let ((_tl1348613558_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1348813553_)))
                                  (_hd1348713556_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1348813553_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd1348713556_))
                                  (let ((_e1349113561_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd1348713556_))))
                                    (let ((_tl1348913566_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1349113561_)))
                                          (_hd1349013564_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1349113561_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd1349013564_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd1349013564_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl1348913566_))
                                                  (let ((_e1349413569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl1348913566_))))
                                                    (let ((_tl1349213574_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1349413569_)))
                                                          (_hd1349313572_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1349413569_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1349213574_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1348613558_))
                      (let ((_e1349713577_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1348613558_))))
                        (let ((_tl1349513582_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1349713577_)))
                              (_hd1349613580_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1349713577_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd1349613580_))
                              (let ((_e1350013585_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd1349613580_))))
                                (let ((_tl1349813590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1350013585_)))
                                      (_hd1349913588_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1350013585_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd1349913588_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd1349913588_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl1349813590_))
                                              (let ((_e1350313593_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl1349813590_))))
                                                (let ((_tl1350113598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1350313593_)))
                                                      (_hd1350213596_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1350313593_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1350113598_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl1349513582_))
                                                          (let ((_e1350613601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl1349513582_))))
                    (let ((_tl1350413606_
                           (let () (declare (not safe)) (##cdr _e1350613601_)))
                          (_hd1350513604_
                           (let ()
                             (declare (not safe))
                             (##car _e1350613601_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd1350513604_))
                          (let ((_e1350913609_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd1350513604_))))
                            (let ((_tl1350713614_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1350913609_)))
                                  (_hd1350813612_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1350913609_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd1350813612_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd1350813612_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1350713614_))
                                          (let ((_e1351213617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1350713614_))))
                                            (let ((_tl1351013622_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1351213617_)))
                                                  (_hd1351113620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1351213617_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl1351013622_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1350413606_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1348013542_))
                                                          (___match1658216583_
                                                           _e1336713930_
                                                           _hd1336613933_
                                                           _tl1336513935_
                                                           _e1348213537_
                                                           _hd1348113540_
                                                           _tl1348013542_
                                                           _e1348513545_
                                                           _hd1348413548_
                                                           _tl1348313550_
                                                           _e1348813553_
                                                           _hd1348713556_
                                                           _tl1348613558_
                                                           _e1349113561_
                                                           _hd1349013564_
                                                           _tl1348913566_
                                                           _e1349413569_
                                                           _hd1349313572_
                                                           _tl1349213574_
                                                           _e1349713577_
                                                           _hd1349613580_
                                                           _tl1349513582_
                                                           _e1350013585_
                                                           _hd1349913588_
                                                           _tl1349813590_
                                                           _e1350313593_
                                                           _hd1350213596_
                                                           _tl1350113598_
                                                           _e1350613601_
                                                           _hd1350513604_
                                                           _tl1350413606_
                                                           _e1350913609_
                                                           _hd1350813612_
                                                           _tl1350713614_
                                                           _e1351213617_
                                                           _hd1351113620_
                                                           _tl1351013622_)
                                                          (___kont1645716458_))
                                                      (___kont1645716458_))
                                                  (___kont1645716458_))))
                                          (___kont1645716458_))
                                      (___kont1645716458_))
                                  (___kont1645716458_))))
                          (___kont1645716458_))))
                  (___kont1645716458_))
              (___kont1645716458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1645716458_))
                                          (___kont1645716458_))
                                      (___kont1645716458_))))
                              (___kont1645716458_))))
                      (___kont1645716458_))
                  (___kont1645716458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1645716458_))
                                              (___kont1645716458_))
                                          (___kont1645716458_))))
                                  (___kont1645716458_))))
                          (___kont1645716458_))
                      (___kont1645716458_))
                  (___kont1645716458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1645716458_))))
                                          (___kont1645716458_)))))
                              (___kont1645716458_)))))))
                 (_dispatch-case-e12668_
                  (lambda (_hd12816_ _body12817_)
                    (let* ((_form12819_
                            (let ((__tmp17856
                                   (let ()
                                     (declare (not safe))
                                     (cons _body12817_ '()))))
                              (declare (not safe))
                              (cons _hd12816_ __tmp17856)))
                           (___stx1658516586_ _form12819_)
                           (_g1282312947_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1658516586_)))))
                      (let ((___kont1658716588_
                             (lambda (_L13318_ _L13319_ _L13320_)
                               (let ((__tmp17857
                                      (let ((__tmp17859
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17858
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13319_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17859 __tmp17858))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17857))))
                            (___kont1659316594_
                             (lambda (_L13166_ _L13167_ _L13168_ _L13169_)
                               (let ((__tmp17860
                                      (let ((__tmp17862
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17861
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13166_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17862 __tmp17861))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17860))))
                            (___kont1659716598_
                             (lambda (_L13032_ _L13033_ _L13034_)
                               (let ((__tmp17863
                                      (let ((__tmp17865
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17864
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13032_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17865 __tmp17864))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17863)))))
                        (let* ((___match1669416695_
                                (lambda (_e1291512952_
                                         _hd1291412955_
                                         _tl1291312957_
                                         _e1291812960_
                                         _hd1291712963_
                                         _tl1291612965_
                                         _e1292112968_
                                         _hd1292012971_
                                         _tl1291912973_
                                         _e1292412976_
                                         _hd1292312979_
                                         _tl1292212981_
                                         _e1292712984_
                                         _hd1292612987_
                                         _tl1292512989_
                                         _e1293012992_
                                         _hd1292912995_
                                         _tl1292812997_
                                         _e1293313000_
                                         _hd1293213003_
                                         _tl1293113005_
                                         _e1293613008_
                                         _hd1293513011_
                                         _tl1293413013_
                                         _e1293913016_
                                         _hd1293813019_
                                         _tl1293713021_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1293113005_))
                                      (let ((_e1294213024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1293113005_))))
                                        (let ((_tl1294013029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1294213024_)))
                                              (_hd1294113027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1294213024_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1294013029_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl1291612965_))
                                                  (___kont1659716598_
                                                   _hd1293813019_
                                                   _hd1292912995_
                                                   _hd1291412955_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1282312947_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g1282312947_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1282312947_)))))
                               (___match1662416625_
                                (lambda (_e1287613070_
                                         _hd1287513073_
                                         _tl1287413075_
                                         ___splice1659516596_
                                         _target1287713078_
                                         _tl1287913080_)
                                  (letrec ((_loop1288013083_
                                            (lambda (_hd1287813086_
                                                     _arg1288413088_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1287813086_))
                                                  (let ((_e1288113091_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1287813086_))))
                                                    (let ((_lp-tl1288313096_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1288113091_)))
                                                          (_lp-hd1288213094_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1288113091_))))
                                                      (let ((__tmp17866
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1288213094_ _arg1288413088_))))
                (declare (not safe))
                (_loop1288013083_ _lp-tl1288313096_ __tmp17866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1288513099_
                                                         (reverse _arg1288413088_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1287413075_))
                                                        (let ((_e1288813102_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1287413075_))))
                  (let ((_tl1288613107_
                         (let () (declare (not safe)) (##cdr _e1288813102_)))
                        (_hd1288713105_
                         (let () (declare (not safe)) (##car _e1288813102_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1288713105_))
                        (let ((_e1289113110_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1288713105_))))
                          (let ((_tl1288913115_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1289113110_)))
                                (_hd1289013113_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1289113110_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1289013113_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1289013113_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1288913115_))
                                        (let ((_e1289413118_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1288913115_))))
                                          (let ((_tl1289213123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1289413118_)))
                                                (_hd1289313121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1289413118_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1289313121_))
                                                (let ((_e1289713126_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1289313121_))))
                                                  (let ((_tl1289513131_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1289713126_)))
                                                        (_hd1289613129_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1289713126_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1289613129_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1289613129_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1289513131_))
                        (let ((_e1290013134_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1289513131_))))
                          (let ((_tl1289813139_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1290013134_)))
                                (_hd1289913137_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1290013134_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1289813139_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl1289213123_))
                                    (let ((_e1290313142_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl1289213123_))))
                                      (let ((_tl1290113147_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1290313142_)))
                                            (_hd1290213145_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1290313142_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd1290213145_))
                                            (let ((_e1290613150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd1290213145_))))
                                              (let ((_tl1290413155_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1290613150_)))
                                                    (_hd1290513153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1290613150_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd1290513153_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd1290513153_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1290413155_))
                                                            (let ((_e1290913158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1290413155_))))
                      (let ((_tl1290713163_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1290913158_)))
                            (_hd1290813161_
                             (let ()
                               (declare (not safe))
                               (##car _e1290913158_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1290713163_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1288613107_))
                                (___kont1659316594_
                                 _hd1290813161_
                                 _hd1289913137_
                                 _tl1287913080_
                                 _arg1288513099_)
                                (___match1669416695_
                                 _e1287613070_
                                 _hd1287513073_
                                 _tl1287413075_
                                 _e1288813102_
                                 _hd1288713105_
                                 _tl1288613107_
                                 _e1289113110_
                                 _hd1289013113_
                                 _tl1288913115_
                                 _e1289413118_
                                 _hd1289313121_
                                 _tl1289213123_
                                 _e1289713126_
                                 _hd1289613129_
                                 _tl1289513131_
                                 _e1290013134_
                                 _hd1289913137_
                                 _tl1289813139_
                                 _e1290313142_
                                 _hd1290213145_
                                 _tl1290113147_
                                 _e1290613150_
                                 _hd1290513153_
                                 _tl1290413155_
                                 _e1290913158_
                                 _hd1290813161_
                                 _tl1290713163_))
                            (let () (declare (not safe)) (_g1282312947_)))))
                    (let () (declare (not safe)) (_g1282312947_)))
                (let () (declare (not safe)) (_g1282312947_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1282312947_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1282312947_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1282312947_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1282312947_)))))
                        (let () (declare (not safe)) (_g1282312947_)))
                    (let () (declare (not safe)) (_g1282312947_)))
                (let () (declare (not safe)) (_g1282312947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1282312947_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1282312947_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g1282312947_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1282312947_)))))
                        (let () (declare (not safe)) (_g1282312947_)))))
                (let () (declare (not safe)) (_g1282312947_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1288013083_
                                       _target1287713078_
                                       '())))))
                               (___match1661216613_
                                (lambda (_e1283013206_
                                         _hd1282913209_
                                         _tl1282813211_
                                         ___splice1658916590_
                                         _target1283113214_
                                         _tl1283313216_)
                                  (letrec ((_loop1283413219_
                                            (lambda (_hd1283213222_
                                                     _arg1283813224_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1283213222_))
                                                  (let ((_e1283513227_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1283213222_))))
                                                    (let ((_lp-tl1283713232_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1283513227_)))
                                                          (_lp-hd1283613230_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1283513227_))))
                                                      (let ((__tmp17868
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1283613230_ _arg1283813224_))))
                (declare (not safe))
                (_loop1283413219_ _lp-tl1283713232_ __tmp17868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1283913235_
                                                         (reverse _arg1283813224_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1282813211_))
                                                        (let ((_e1284213238_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1282813211_))))
                  (let ((_tl1284013243_
                         (let () (declare (not safe)) (##cdr _e1284213238_)))
                        (_hd1284113241_
                         (let () (declare (not safe)) (##car _e1284213238_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1284113241_))
                        (let ((_e1284513246_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1284113241_))))
                          (let ((_tl1284313251_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1284513246_)))
                                (_hd1284413249_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1284513246_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1284413249_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1284413249_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1284313251_))
                                        (let ((_e1284813254_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1284313251_))))
                                          (let ((_tl1284613259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1284813254_)))
                                                (_hd1284713257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1284813254_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1284713257_))
                                                (let ((_e1285113262_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1284713257_))))
                                                  (let ((_tl1284913267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1285113262_)))
                                                        (_hd1285013265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1285113262_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1285013265_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1285013265_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1284913267_))
                        (let ((_e1285413270_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1284913267_))))
                          (let ((_tl1285213275_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1285413270_)))
                                (_hd1285313273_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1285413270_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1285213275_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl1284613259_))
                                    (let ((___splice1659116592_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1284613259_
                                              '0))))
                                      (let ((_tl1285713280_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1659116592_
                                                '1)))
                                            (_target1285513278_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1659116592_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl1285713280_))
                                            (letrec ((_loop1285813283_
                                                      (lambda (_hd1285613286_
                                                               _xarg1286213288_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd1285613286_))
                                                            (let ((_e1285913291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd1285613286_))))
                      (let ((_lp-tl1286113296_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1285913291_)))
                            (_lp-hd1286013294_
                             (let ()
                               (declare (not safe))
                               (##car _e1285913291_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd1286013294_))
                            (let ((_e1286613299_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd1286013294_))))
                              (let ((_tl1286413304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1286613299_)))
                                    (_hd1286513302_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1286613299_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1286513302_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd1286513302_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1286413304_))
                                            (let ((_e1286913307_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1286413304_))))
                                              (let ((_tl1286713312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1286913307_)))
                                                    (_hd1286813310_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1286913307_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl1286713312_))
                                                    (let ((__tmp17867
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd1286813310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg1286213288_))))
              (declare (not safe))
              (_loop1285813283_ _lp-tl1286113296_ __tmp17867))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1662416625_
                                                     _e1283013206_
                                                     _hd1282913209_
                                                     _tl1282813211_
                                                     ___splice1658916590_
                                                     _target1283113214_
                                                     _tl1283313216_))))
                                            (___match1662416625_
                                             _e1283013206_
                                             _hd1282913209_
                                             _tl1282813211_
                                             ___splice1658916590_
                                             _target1283113214_
                                             _tl1283313216_))
                                        (___match1662416625_
                                         _e1283013206_
                                         _hd1282913209_
                                         _tl1282813211_
                                         ___splice1658916590_
                                         _target1283113214_
                                         _tl1283313216_))
                                    (___match1662416625_
                                     _e1283013206_
                                     _hd1282913209_
                                     _tl1282813211_
                                     ___splice1658916590_
                                     _target1283113214_
                                     _tl1283313216_))))
                            (___match1662416625_
                             _e1283013206_
                             _hd1282913209_
                             _tl1282813211_
                             ___splice1658916590_
                             _target1283113214_
                             _tl1283313216_))))
                    (let ((_xarg1286313315_ (reverse _xarg1286213288_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1284013243_))
                          (___kont1658716588_
                           _xarg1286313315_
                           _hd1285313273_
                           _arg1283913235_)
                          (___match1662416625_
                           _e1283013206_
                           _hd1282913209_
                           _tl1282813211_
                           ___splice1658916590_
                           _target1283113214_
                           _tl1283313216_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1285813283_
                                                 _target1285513278_
                                                 '())))
                                            (___match1662416625_
                                             _e1283013206_
                                             _hd1282913209_
                                             _tl1282813211_
                                             ___splice1658916590_
                                             _target1283113214_
                                             _tl1283313216_))))
                                    (___match1662416625_
                                     _e1283013206_
                                     _hd1282913209_
                                     _tl1282813211_
                                     ___splice1658916590_
                                     _target1283113214_
                                     _tl1283313216_))
                                (___match1662416625_
                                 _e1283013206_
                                 _hd1282913209_
                                 _tl1282813211_
                                 ___splice1658916590_
                                 _target1283113214_
                                 _tl1283313216_))))
                        (___match1662416625_
                         _e1283013206_
                         _hd1282913209_
                         _tl1282813211_
                         ___splice1658916590_
                         _target1283113214_
                         _tl1283313216_))
                    (___match1662416625_
                     _e1283013206_
                     _hd1282913209_
                     _tl1282813211_
                     ___splice1658916590_
                     _target1283113214_
                     _tl1283313216_))
                (___match1662416625_
                 _e1283013206_
                 _hd1282913209_
                 _tl1282813211_
                 ___splice1658916590_
                 _target1283113214_
                 _tl1283313216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1662416625_
                                                 _e1283013206_
                                                 _hd1282913209_
                                                 _tl1282813211_
                                                 ___splice1658916590_
                                                 _target1283113214_
                                                 _tl1283313216_))))
                                        (___match1662416625_
                                         _e1283013206_
                                         _hd1282913209_
                                         _tl1282813211_
                                         ___splice1658916590_
                                         _target1283113214_
                                         _tl1283313216_))
                                    (___match1662416625_
                                     _e1283013206_
                                     _hd1282913209_
                                     _tl1282813211_
                                     ___splice1658916590_
                                     _target1283113214_
                                     _tl1283313216_))
                                (___match1662416625_
                                 _e1283013206_
                                 _hd1282913209_
                                 _tl1282813211_
                                 ___splice1658916590_
                                 _target1283113214_
                                 _tl1283313216_))))
                        (___match1662416625_
                         _e1283013206_
                         _hd1282913209_
                         _tl1282813211_
                         ___splice1658916590_
                         _target1283113214_
                         _tl1283313216_))))
                (___match1662416625_
                 _e1283013206_
                 _hd1282913209_
                 _tl1282813211_
                 ___splice1658916590_
                 _target1283113214_
                 _tl1283313216_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1283413219_
                                       _target1283113214_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1658516586_))
                              (let ((_e1283013206_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1658516586_))))
                                (let ((_tl1282813211_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1283013206_)))
                                      (_hd1282913209_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1283013206_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1282913209_))
                                      (let ((___splice1658916590_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1282913209_
                                                '0))))
                                        (let ((_tl1283313216_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1658916590_
                                                  '1)))
                                              (_target1283113214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1658916590_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1283313216_))
                                              (___match1661216613_
                                               _e1283013206_
                                               _hd1282913209_
                                               _tl1282813211_
                                               ___splice1658916590_
                                               _target1283113214_
                                               _tl1283313216_)
                                              (___match1662416625_
                                               _e1283013206_
                                               _hd1282913209_
                                               _tl1282813211_
                                               ___splice1658916590_
                                               _target1283113214_
                                               _tl1283313216_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1282813211_))
                                          (let ((_e1291812960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1282813211_))))
                                            (let ((_tl1291612965_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1291812960_)))
                                                  (_hd1291712963_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1291812960_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1291712963_))
                                                  (let ((_e1292112968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1291712963_))))
                                                    (let ((_tl1291912973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1292112968_)))
                                                          (_hd1292012971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1292112968_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd1292012971_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd1292012971_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1291912973_))
                          (let ((_e1292412976_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1291912973_))))
                            (let ((_tl1292212981_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1292412976_)))
                                  (_hd1292312979_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1292412976_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd1292312979_))
                                  (let ((_e1292712984_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd1292312979_))))
                                    (let ((_tl1292512989_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1292712984_)))
                                          (_hd1292612987_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1292712984_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd1292612987_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd1292612987_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl1292512989_))
                                                  (let ((_e1293012992_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl1292512989_))))
                                                    (let ((_tl1292812997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1293012992_)))
                                                          (_hd1292912995_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1293012992_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1292812997_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1292212981_))
                      (let ((_e1293313000_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1292212981_))))
                        (let ((_tl1293113005_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1293313000_)))
                              (_hd1293213003_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1293313000_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd1293213003_))
                              (let ((_e1293613008_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd1293213003_))))
                                (let ((_tl1293413013_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1293613008_)))
                                      (_hd1293513011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1293613008_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd1293513011_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd1293513011_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl1293413013_))
                                              (let ((_e1293913016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl1293413013_))))
                                                (let ((_tl1293713021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1293913016_)))
                                                      (_hd1293813019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1293913016_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1293713021_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl1293113005_))
                                                          (let ((_e1294213024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl1293113005_))))
                    (let ((_tl1294013029_
                           (let () (declare (not safe)) (##cdr _e1294213024_)))
                          (_hd1294113027_
                           (let ()
                             (declare (not safe))
                             (##car _e1294213024_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1294013029_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl1291612965_))
                              (___kont1659716598_
                               _hd1293813019_
                               _hd1292912995_
                               _hd1282913209_)
                              (let () (declare (not safe)) (_g1282312947_)))
                          (let () (declare (not safe)) (_g1282312947_)))))
                  (let () (declare (not safe)) (_g1282312947_)))
              (let () (declare (not safe)) (_g1282312947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1282312947_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g1282312947_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1282312947_)))))
                              (let () (declare (not safe)) (_g1282312947_)))))
                      (let () (declare (not safe)) (_g1282312947_)))
                  (let () (declare (not safe)) (_g1282312947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1282312947_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g1282312947_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g1282312947_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1282312947_)))))
                          (let () (declare (not safe)) (_g1282312947_)))
                      (let () (declare (not safe)) (_g1282312947_)))
                  (let () (declare (not safe)) (_g1282312947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1282312947_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1282312947_))))))
                              (let ()
                                (declare (not safe))
                                (_g1282312947_))))))))
                 (_generate112669_
                  (lambda (_args12804_ _arglen12805_ _hd12806_ _body12807_)
                    (let* ((_len12809_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd12806_)))
                           (_condition12811_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd12806_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp17883
                                           (let ((__tmp17884
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len12809_ '()))))
                                             (declare (not safe))
                                             (cons _arglen12805_ __tmp17884))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp17883))
                                    (let ((__tmp17877
                                           (let ((__tmp17878
                                                  (let ((__tmp17879
                                                         (let ((__tmp17880
                                                                (let ((__tmp17881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17882
                                      (let ()
                                        (declare (not safe))
                                        (cons _len12809_ '()))))
                                 (declare (not safe))
                                 (cons _arglen12805_ __tmp17882))))
                          (declare (not safe))
                          (cons '##fx= __tmp17881))))
                   (declare (not safe))
                   (cons __tmp17880 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp17879))))
                                             (declare (not safe))
                                             (cons '() __tmp17878))))
                                      (declare (not safe))
                                      (cons 'let __tmp17877)))
                                (if (> _len12809_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp17875
                                               (let ((__tmp17876
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len12809_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen12805_
                                                       __tmp17876))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp17875))
                                        (let ((__tmp17869
                                               (let ((__tmp17870
                                                      (let ((__tmp17871
                                                             (let ((__tmp17872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17873
                                   (let ((__tmp17874
                                          (let ()
                                            (declare (not safe))
                                            (cons _len12809_ '()))))
                                     (declare (not safe))
                                     (cons _arglen12805_ __tmp17874))))
                              (declare (not safe))
                              (cons '##fx>= __tmp17873))))
                       (declare (not safe))
                       (cons __tmp17872 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp17871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp17870))))
                                          (declare (not safe))
                                          (cons 'let __tmp17869)))
                                    '#t)))
                           (_dispatch12813_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?12667_
                                   _hd12806_
                                   _body12807_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e12668_
                                   _hd12806_
                                   _body12807_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _hd12806_
                                   _body12807_)))))
                      (let ((__tmp17885
                             (let ((__tmp17886
                                    (let ((__tmp17887
                                           (let ((__tmp17888
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args12804_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch12813_
                                                   __tmp17888))))
                                      (declare (not safe))
                                      (cons 'apply __tmp17887))))
                               (declare (not safe))
                               (cons __tmp17886 '()))))
                        (declare (not safe))
                        (cons _condition12811_ __tmp17885))))))
          (let* ((_g1267112699_
                  (lambda (_g1267212696_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1267212696_))))
                 (_g1267012801_
                  (lambda (_g1267212702_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1267212702_))
                        (let ((_e1267712704_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1267212702_))))
                          (let ((_hd1267612707_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1267712704_)))
                                (_tl1267512709_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1267712704_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl1267512709_))
                                (let ((_g17889_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl1267512709_
                                          '0))))
                                  (begin
                                    (let ((_g17890_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g17889_)
                                                 (##vector-length _g17889_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g17890_ 2)))
                                          (error "Context expects 2 values"
                                                 _g17890_)))
                                    (let ((_target1267812712_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g17889_ 0)))
                                          (_tl1268012714_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g17889_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1268012714_))
                                          (letrec ((_loop1268112717_
                                                    (lambda (_hd1267912720_
                                                             _body1268512722_
                                                             _hd1268612724_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd1267912720_))
                                                          (let ((_e1268212727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd1267912720_))))
                    (let ((_lp-hd1268312730_
                           (let () (declare (not safe)) (##car _e1268212727_)))
                          (_lp-tl1268412732_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1268212727_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd1268312730_))
                          (let ((_e1269112735_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd1268312730_))))
                            (let ((_hd1269012738_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1269112735_)))
                                  (_tl1268912740_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1269112735_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl1268912740_))
                                  (let ((_e1269412743_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl1268912740_))))
                                    (let ((_hd1269312746_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1269412743_)))
                                          (_tl1269212748_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1269412743_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1269212748_))
                                          (let ((__tmp17919
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd1269312746_
                                                         _body1268512722_)))
                                                (__tmp17918
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd1269012738_
                                                         _hd1268612724_))))
                                            (declare (not safe))
                                            (_loop1268112717_
                                             _lp-tl1268412732_
                                             __tmp17919
                                             __tmp17918))
                                          (let ()
                                            (declare (not safe))
                                            (_g1267112699_ _g1267212702_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1267112699_ _g1267212702_)))))
                          (let ()
                            (declare (not safe))
                            (_g1267112699_ _g1267212702_)))))
                  (let ((_body1268712751_ (reverse _body1268512722_))
                        (_hd1268812753_ (reverse _hd1268612724_)))
                    ((lambda (_L12756_ _L12757_)
                       (let ((_args12776_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen12777_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name12778_
                              (let ((_$e12773_
                                     (let ((__tmp17891
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (table-ref __tmp17891 _stx12665_ '#f))))
                                (if _$e12773_
                                    _$e12773_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp17892
                                (let ((__tmp17893
                                       (let ((__tmp17894
                                              (let ((__tmp17895
                                                     (let ((__tmp17908
                                                            (let ((__tmp17909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17910
                                  (let ((__tmp17911
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp17917
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args12776_ '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp17917))
                                             (let ((__tmp17912
                                                    (let ((__tmp17913
                                                           (let ((__tmp17914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp17915
                                 (let ((__tmp17916
                                        (let ()
                                          (declare (not safe))
                                          (cons _args12776_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp17916))))
                            (declare (not safe))
                            (cons __tmp17915 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp17914))))
              (declare (not safe))
              (cons '() __tmp17913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp17912)))))
                                    (declare (not safe))
                                    (cons __tmp17911 '()))))
                             (declare (not safe))
                             (cons _arglen12777_ __tmp17910))))
                      (declare (not safe))
                      (cons __tmp17909 '())))
                   (__tmp17896
                    (let ((__tmp17897
                           (let ((__tmp17898
                                  (let ((__tmp17902
                                         (let ((__tmp17903
                                                (let ((__tmp17904
                                                       (let ((__tmp17905
                                                              (let ((__tmp17906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17907
                                    (let ()
                                      (declare (not safe))
                                      (cons _args12776_ '()))))
                               (declare (not safe))
                               (cons _name12778_ __tmp17907))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp17906))))
                 (declare (not safe))
                 (cons __tmp17905 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp17904))))
                                           (declare (not safe))
                                           (cons __tmp17903 '())))
                                        (__tmp17899
                                         (map (lambda (_g1277912782_
                                                       _g1278012784_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate112669_
                                                   _args12776_
                                                   _arglen12777_
                                                   _g1277912782_
                                                   _g1278012784_)))
                                              (let ((__tmp17900
                                                     (lambda (_g1278612789_
                                                              _g1278712791_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1278612789_
                                                               _g1278712791_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17900
                                                        '()
                                                        _L12757_))
                                              (let ((__tmp17901
                                                     (lambda (_g1279312796_
                                                              _g1279412798_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1279312796_
                                                               _g1279412798_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17901
                                                        '()
                                                        _L12756_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp17902 __tmp17899))))
                             (declare (not safe))
                             (cons 'cond __tmp17898))))
                      (declare (not safe))
                      (cons __tmp17897 '()))))
               (declare (not safe))
               (cons __tmp17908 __tmp17896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp17895))))
                                         (declare (not safe))
                                         (cons __tmp17894 '()))))
                                  (declare (not safe))
                                  (cons _args12776_ __tmp17893))))
                           (declare (not safe))
                           (cons 'lambda __tmp17892))))
                     _body1268712751_
                     _hd1268812753_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop1268112717_
                                               _target1267812712_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g1267112699_ _g1267212702_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1267112699_ _g1267212702_)))))
                        (let ()
                          (declare (not safe))
                          (_g1267112699_ _g1267212702_))))))
            (declare (not safe))
            (_g1267012801_ _stx12665_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx11939_ _compiled-body?11940_)
        (letrec ((_generate-simple11942_
                  (lambda (_hd12652_ _body12653_)
                    (let ((__tmp17920
                           (let ((__tmp17921
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     'let
                                     _hd12652_
                                     _body12653_
                                     _compiled-body?11940_))))
                             (declare (not safe))
                             (_coalesce-let*11944_ __tmp17921))))
                      (declare (not safe))
                      (_coalesce-boolean11943_ __tmp17920))))
                 (_coalesce-boolean11943_
                  (lambda (_code12513_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code1251412540_ _code12513_)
                               (_else1251612548_ (lambda () _code12513_))
                               (_K1251812585_
                                (lambda (_expr212551_ _expr112552_ _id12553_)
                                  (let* ((_expr21255412562_ _expr212551_)
                                         (_else1255612570_
                                          (lambda ()
                                            (let ((__tmp17922
                                                   (let ((__tmp17923
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr212551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr112552_
                                                           __tmp17923))))
                                              (declare (not safe))
                                              (cons 'or __tmp17922))))
                                         (_K1255812575_
                                          (lambda (_exprs12573_)
                                            (let ((__tmp17924
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr112552_
                                                           _exprs12573_))))
                                              (declare (not safe))
                                              (cons 'or __tmp17924)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr21255412562_))
                                        (let ((_hd1255912578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr21255412562_)))
                                              (_tl1256012580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr21255412562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1255912578_ 'or))
                                              (let ((_exprs12583_
                                                     _tl1256012580_))
                                                (declare (not safe))
                                                (_K1255812575_ _exprs12583_))
                                              (let ()
                                                (declare (not safe))
                                                (_else1255612570_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else1255612570_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code1251412540_))
                              (let ((_hd1251912588_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code1251412540_)))
                                    (_tl1252012590_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code1251412540_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd1251912588_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl1252012590_))
                                        (let ((_hd1252112593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl1252012590_)))
                                              (_tl1252212595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl1252012590_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd1252112593_))
                                              (let ((_hd1253312598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd1252112593_)))
                                                    (_tl1253412600_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd1252112593_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd1253312598_))
                                                    (let ((_hd1253512603_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd1253312598_)))
                                                          (_tl1253612605_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd1253312598_))))
                                                      (let ((_id12608_
                                                             _hd1253512603_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl1253612605_))
                                                            (let ((_hd1253712610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl1253612605_)))
                          (_tl1253812612_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl1253612605_))))
                      (let ((_expr112615_ _hd1253712610_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl1253812612_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl1253412600_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1252212595_))
                                    (let ((_hd1252312617_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1252212595_)))
                                          (_tl1252412619_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1252212595_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1252312617_))
                                          (let ((_hd1252512622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1252312617_)))
                                                (_tl1252612624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1252312617_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1252512622_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl1252612624_))
                                                    (let ((_hd1252712627_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl1252612624_)))
                                                          (_tl1252812629_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl1252612624_))))
                                                      (if ((lambda (_g1263112633_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g1263112633_ _id12608_)))
                   _hd1252712627_)
                  (if (let () (declare (not safe)) (##pair? _tl1252812629_))
                      (let ((_hd1252912636_
                             (let ()
                               (declare (not safe))
                               (##car _tl1252812629_)))
                            (_tl1253012638_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl1252812629_))))
                        (if ((lambda (_g1264012642_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g1264012642_ _id12608_)))
                             _hd1252912636_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl1253012638_))
                                (let ((_hd1253112645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl1253012638_)))
                                      (_tl1253212647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl1253012638_))))
                                  (let ((_expr212650_ _hd1253112645_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1253212647_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl1252412619_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1251812585_
                                               _expr212650_
                                               _expr112615_
                                               _id12608_))
                                            (let ()
                                              (declare (not safe))
                                              (_else1251612548_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else1251612548_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else1251612548_)))
                            (let () (declare (not safe)) (_else1251612548_))))
                      (let () (declare (not safe)) (_else1251612548_)))
                  (let () (declare (not safe)) (_else1251612548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else1251612548_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else1251612548_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else1251612548_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1251612548_)))
                                (let ()
                                  (declare (not safe))
                                  (_else1251612548_)))
                            (let () (declare (not safe)) (_else1251612548_)))))
                    (let () (declare (not safe)) (_else1251612548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else1251612548_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else1251612548_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else1251612548_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else1251612548_))))
                              (let ()
                                (declare (not safe))
                                (_else1251612548_))))
                        _code12513_)))
                 (_coalesce-let*11944_
                  (lambda (_code12246_)
                    (let* ((_code1224712311_ _code12246_)
                           (_else1225112319_ (lambda () _code12246_)))
                      (let ((_K1229312464_
                             (lambda (_body12460_ _expr12461_ _id12462_)
                               (let ((__tmp17925
                                      (let ((__tmp17926
                                             (let ((__tmp17927
                                                    (let ((__tmp17928
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr12461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id12462_ __tmp17928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17927 '()))))
                                        (declare (not safe))
                                        (cons __tmp17926 _body12460_))))
                                 (declare (not safe))
                                 (cons 'let __tmp17925))))
                            (_K1227012389_
                             (lambda (_body12383_
                                      _expr212384_
                                      _id212385_
                                      _expr112386_
                                      _id112387_)
                               (let ((__tmp17929
                                      (let ((__tmp17930
                                             (let ((__tmp17934
                                                    (let ((__tmp17935
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr112386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id112387_ __tmp17935)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp17931
                                                    (let ((__tmp17932
                                                           (let ((__tmp17933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr212384_ '()))))
                     (declare (not safe))
                     (cons _id212385_ __tmp17933))))
              (declare (not safe))
              (cons __tmp17932 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17934 __tmp17931))))
                                        (declare (not safe))
                                        (cons __tmp17930 _body12383_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp17929))))
                            (_K1225312328_
                             (lambda (_body12323_
                                      _bind12324_
                                      _expr112325_
                                      _id112326_)
                               (let ((__tmp17936
                                      (let ((__tmp17937
                                             (let ((__tmp17938
                                                    (let ((__tmp17939
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr112325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id112326_ __tmp17939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17938 _bind12324_))))
                                        (declare (not safe))
                                        (cons __tmp17937 _body12323_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp17936)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code1224712311_))
                            (let ((_tl1229512469_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code1224712311_)))
                                  (_hd1229412467_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code1224712311_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd1229412467_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1229512469_))
                                      (let ((_tl1229712474_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1229512469_)))
                                            (_hd1229612472_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1229512469_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd1229612472_))
                                            (let ((_tl1230512479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd1229612472_)))
                                                  (_hd1230412477_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd1229612472_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd1230412477_))
                                                  (let ((_tl1230712484_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd1230412477_)))
                                                        (_hd1230612482_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd1230412477_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1230712484_))
                                                        (let ((_tl1230912491_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1230712484_)))
                      (_hd1230812489_
                       (let () (declare (not safe)) (##car _tl1230712484_))))
                  (if (let () (declare (not safe)) (##null? _tl1230912491_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl1230512479_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl1229712474_))
                              (let ((_tl1229912498_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl1229712474_)))
                                    (_hd1229812496_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl1229712474_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1229812496_))
                                    (let ((_tl1230112503_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1229812496_)))
                                          (_hd1230012501_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1229812496_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd1230012501_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl1230112503_))
                                              (let ((_tl1230312508_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl1230112503_)))
                                                    (_hd1230212506_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl1230112503_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd1230212506_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1229912498_))
                                                        (let ((_id12487_
                                                               _hd1230612482_)
                                                              (_expr12494_
                                                               _hd1230812489_)
                                                              (_body12511_
                                                               _tl1230312508_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K1229312464_
                                                             _body12511_
                                                             _expr12494_
                                                             _id12487_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else1225112319_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd1230212506_))
                                                        (let ((_tl1228212438_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd1230212506_)))
                      (_hd1228112436_
                       (let () (declare (not safe)) (##car _hd1230212506_))))
                  (if (let () (declare (not safe)) (##pair? _hd1228112436_))
                      (let ((_tl1228412443_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd1228112436_)))
                            (_hd1228312441_
                             (let ()
                               (declare (not safe))
                               (##car _hd1228112436_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1228412443_))
                            (let ((_tl1228612450_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1228412443_)))
                                  (_hd1228512448_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1228412443_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1228612450_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1228212438_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1229912498_))
                                          (let ((_id112412_ _hd1230612482_)
                                                (_expr112419_ _hd1230812489_)
                                                (_id212446_ _hd1228312441_)
                                                (_expr212453_ _hd1228512448_)
                                                (_body12455_ _tl1230312508_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1227012389_
                                               _body12455_
                                               _expr212453_
                                               _id212446_
                                               _expr112419_
                                               _id112412_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1225112319_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1225112319_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1225112319_))))
                            (let () (declare (not safe)) (_else1225112319_))))
                      (let () (declare (not safe)) (_else1225112319_))))
                (let () (declare (not safe)) (_else1225112319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else1225112319_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1230012501_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl1230112503_))
                                                  (let ((_tl1226312372_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl1230112503_)))
                                                        (_hd1226212370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl1230112503_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1229912498_))
                                                        (let ((_id112351_
                                                               _hd1230612482_)
                                                              (_expr112358_
                                                               _hd1230812489_)
                                                              (_bind12375_
                                                               _hd1226212370_)
                                                              (_body12377_
                                                               _tl1226312372_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K1225312328_
                                                             _body12377_
                                                             _bind12375_
                                                             _expr112358_
                                                             _id112351_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else1225112319_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else1225112319_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else1225112319_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1225112319_))))
                              (let () (declare (not safe)) (_else1225112319_)))
                          (let () (declare (not safe)) (_else1225112319_)))
                      (let () (declare (not safe)) (_else1225112319_))))
                (let () (declare (not safe)) (_else1225112319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else1225112319_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else1225112319_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else1225112319_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1225112319_))))
                            (let ()
                              (declare (not safe))
                              (_else1225112319_)))))))
                 (_generate-values11945_
                  (lambda (_hd12059_ _body12060_)
                    (let _lp12062_ ((_rest12064_ _hd12059_)
                                    (_bind12065_ '())
                                    (_check12066_ '())
                                    (_post12067_ '()))
                      (let* ((___stx1689616897_ _rest12064_)
                             (_g1207012081_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1689616897_)))))
                        (let ((___kont1689816899_
                               (lambda (_L12108_ _L12109_)
                                 (let* ((___stx1685216853_ _L12109_)
                                        (_g1212412149_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1685216853_)))))
                                   (let ((___kont1685416855_
                                          (lambda (_L12222_ _L12223_)
                                            (let ((_eid12237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L12223_)))
                                                  (_expr12238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L12222_))))
                                              (let ((__tmp17940
                                                     (let ((__tmp17941
                                                            (let ((__tmp17942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr12238_ '()))))
                      (declare (not safe))
                      (cons _eid12237_ __tmp17942))))
               (declare (not safe))
               (cons __tmp17941 _bind12065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp12062_
                                                 _L12108_
                                                 __tmp17940
                                                 _check12066_
                                                 _post12067_)))))
                                         (___kont1685616857_
                                          (lambda (_L12170_ _L12171_)
                                            (let* ((_vals12184_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values12186_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals12184_
                                                       _L12171_
                                                       _L12170_)))
                                                   (_refs12188_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals12184_
                                                       _L12171_)))
                                                   (_expr12190_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e
                                                       _L12170_))))
                                              (let ((__tmp17945
                                                     (let ((__tmp17946
                                                            (let ((__tmp17947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr12190_ '()))))
                      (declare (not safe))
                      (cons _vals12184_ __tmp17947))))
               (declare (not safe))
               (cons __tmp17946 _bind12065_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp17944
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values12186_
                                                             _check12066_)))
                                                    (__tmp17943
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs12188_
                                                             _post12067_))))
                                                (declare (not safe))
                                                (_lp12062_
                                                 _L12108_
                                                 __tmp17945
                                                 __tmp17944
                                                 __tmp17943))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1685216853_))
                                         (let ((_e1213012198_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1685216853_))))
                                           (let ((_tl1212812203_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1213012198_)))
                                                 (_hd1212912201_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1213012198_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd1212912201_))
                                                 (let ((_e1213312206_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd1212912201_))))
                                                   (let ((_tl1213112211_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1213312206_)))
                                                         (_hd1213212209_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1213312206_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl1213112211_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl1212812203_))
                     (let ((_e1213612214_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1212812203_))))
                       (let ((_tl1213412219_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1213612214_)))
                             (_hd1213512217_
                              (let ()
                                (declare (not safe))
                                (##car _e1213612214_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1213412219_))
                             (___kont1685416855_ _hd1213512217_ _hd1213212209_)
                             (let () (declare (not safe)) (_g1212412149_)))))
                     (let () (declare (not safe)) (_g1212412149_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl1212812203_))
                     (let ((_e1214412162_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1212812203_))))
                       (let ((_tl1214212167_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1214412162_)))
                             (_hd1214312165_
                              (let ()
                                (declare (not safe))
                                (##car _e1214412162_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1214212167_))
                             (___kont1685616857_ _hd1214312165_ _hd1212912201_)
                             (let () (declare (not safe)) (_g1212412149_)))))
                     (let () (declare (not safe)) (_g1212412149_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl1212812203_))
                                                     (let ((_e1214412162_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl1212812203_))))
                                                       (let ((_tl1214212167_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1214412162_)))
                     (_hd1214312165_
                      (let () (declare (not safe)) (##car _e1214412162_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl1214212167_))
                     (___kont1685616857_ _hd1214312165_ _hd1212912201_)
                     (let () (declare (not safe)) (_g1212412149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1212412149_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1212412149_)))))))
                              (___kont1690016901_
                               (lambda ()
                                 (let* ((_body12088_
                                         (if _compiled-body?11940_
                                             _body12060_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _body12060_))))
                                        (_body12090_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post11946_
                                            _post12067_
                                            _body12088_)))
                                        (_body12092_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check11947_
                                            _check12066_
                                            _body12090_))))
                                   (let ((__tmp17948
                                          (let ((__tmp17950
                                                 (reverse _bind12065_))
                                                (__tmp17949
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body12092_ '()))))
                                            (declare (not safe))
                                            (cons __tmp17950 __tmp17949))))
                                     (declare (not safe))
                                     (cons 'let __tmp17948))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1689616897_))
                              (let ((_e1207612100_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1689616897_))))
                                (let ((_tl1207412105_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1207612100_)))
                                      (_hd1207512103_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1207612100_))))
                                  (___kont1689816899_
                                   _tl1207412105_
                                   _hd1207512103_)))
                              (___kont1690016901_)))))))
                 (_generate-values-post11946_
                  (lambda (_post12018_ _body12019_)
                    (let _lp12021_ ((_rest12023_ _post12018_)
                                    (_body12024_ _body12019_))
                      (let* ((_rest1202512033_ _rest12023_)
                             (_else1202712041_ (lambda () _body12024_))
                             (_K1202912047_
                              (lambda (_rest12044_ _bind12045_)
                                (let ((__tmp17951
                                       (let ((__tmp17952
                                              (let ((__tmp17953
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body12024_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind12045_
                                                      __tmp17953))))
                                         (declare (not safe))
                                         (cons 'let __tmp17952))))
                                  (declare (not safe))
                                  (_lp12021_ _rest12044_ __tmp17951)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1202512033_))
                            (let ((_hd1203012050_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1202512033_)))
                                  (_tl1203112052_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1202512033_))))
                              (let* ((_bind12055_ _hd1203012050_)
                                     (_rest12057_ _tl1203112052_))
                                (declare (not safe))
                                (_K1202912047_ _rest12057_ _bind12055_)))
                            (let ()
                              (declare (not safe))
                              (_else1202712041_)))))))
                 (_generate-values-check11947_
                  (lambda (_check12015_ _body12016_)
                    (let ((__tmp17954
                           (let ((__tmp17956
                                  (let ()
                                    (declare (not safe))
                                    (cons _body12016_ '())))
                                 (__tmp17955 (reverse _check12015_)))
                             (declare (not safe))
                             (foldr1 cons __tmp17956 __tmp17955))))
                      (declare (not safe))
                      (cons 'begin __tmp17954)))))
          (let* ((_g1194911966_
                  (lambda (_g1195011963_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1195011963_))))
                 (_g1194812012_
                  (lambda (_g1195011969_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1195011969_))
                        (let ((_e1195511971_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1195011969_))))
                          (let ((_hd1195411974_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1195511971_)))
                                (_tl1195311976_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1195511971_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1195311976_))
                                (let ((_e1195811979_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1195311976_))))
                                  (let ((_hd1195711982_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1195811979_)))
                                        (_tl1195611984_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1195811979_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1195611984_))
                                        (let ((_e1196111987_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1195611984_))))
                                          (let ((_hd1196011990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1196111987_)))
                                                (_tl1195911992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1196111987_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1195911992_))
                                                ((lambda (_L11995_ _L11996_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L11996_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple11942_
                                                          _L11996_
                                                          _L11995_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values11945_
                                                          _L11996_
                                                          _L11995_))))
                                                 _hd1196011990_
                                                 _hd1195711982_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1194911966_
                                                   _g1195011969_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1194911966_ _g1195011969_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1194911966_ _g1195011969_)))))
                        (let ()
                          (declare (not safe))
                          (_g1194911966_ _g1195011969_))))))
            (declare (not safe))
            (_g1194812012_ _stx11939_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_stx12658_)
        (let ((_compiled-body?12660_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _stx12658_
           _compiled-body?12660_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g17958_
        (let ((_g17957_ (let () (declare (not safe)) (##length _g17958_))))
          (cond ((let () (declare (not safe)) (##fx= _g17957_ 1))
                 (apply (lambda (_stx12658_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0 _stx12658_)))
                        _g17958_))
                ((let () (declare (not safe)) (##fx= _g17957_ 2))
                 (apply (lambda (_stx12662_ _compiled-body?12663_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _stx12662_
                             _compiled-body?12663_)))
                        _g17958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g17958_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals11833_ _hd11834_)
        (let _lp11836_ ((_rest11838_ _hd11834_) (_k11839_ '0) (_r11840_ '()))
          (let* ((___stx1691016911_ _rest11838_)
                 (_g1184511862_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx1691016911_)))))
            (let ((___kont1691216913_
                   (lambda (_L11925_)
                     (let ((__tmp17959
                            (let () (declare (not safe)) (fx+ _k11839_ '1))))
                       (declare (not safe))
                       (_lp11836_ _L11925_ __tmp17959 _r11840_))))
                  (___kont1691416915_
                   (lambda (_L11898_ _L11899_)
                     (let ((__tmp17965
                            (let () (declare (not safe)) (fx+ _k11839_ '1)))
                           (__tmp17960
                            (let ((__tmp17961
                                   (let ((__tmp17964
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L11899_)))
                                         (__tmp17962
                                          (let ((__tmp17963
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals11833_
                                                    _k11839_
                                                    _L11898_))))
                                            (declare (not safe))
                                            (cons __tmp17963 '()))))
                                     (declare (not safe))
                                     (cons __tmp17964 __tmp17962))))
                              (declare (not safe))
                              (cons __tmp17961 _r11840_))))
                       (declare (not safe))
                       (_lp11836_ _L11898_ __tmp17965 __tmp17960))))
                  (___kont1691616917_
                   (lambda (_L11874_)
                     (let ((__tmp17966
                            (let ((__tmp17967
                                   (let ((__tmp17970
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L11874_)))
                                         (__tmp17968
                                          (let ((__tmp17969
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals11833_
                                                    _k11839_))))
                                            (declare (not safe))
                                            (cons __tmp17969 '()))))
                                     (declare (not safe))
                                     (cons __tmp17970 __tmp17968))))
                              (declare (not safe))
                              (cons __tmp17967 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp17966 _r11840_))))
                  (___kont1691816919_ (lambda () (reverse _r11840_))))
              (let ((_g1184311885_
                     (lambda ()
                       (let ((_L11874_ ___stx1691016911_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L11874_))
                             (___kont1691616917_ _L11874_)
                             (___kont1691816919_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx1691016911_))
                    (let ((_e1185011914_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx1691016911_))))
                      (let ((_tl1184811919_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1185011914_)))
                            (_hd1184911917_
                             (let ()
                               (declare (not safe))
                               (##car _e1185011914_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd1184911917_))
                            (let ((_e1185111922_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd1184911917_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e1185111922_ '#f))
                                  (___kont1691216913_ _tl1184811919_)
                                  (___kont1691416915_
                                   _tl1184811919_
                                   _hd1184911917_)))
                            (___kont1691416915_
                             _tl1184811919_
                             _hd1184911917_))))
                    (let () (declare (not safe)) (_g1184311885_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx11515_ _compiled-body?11516_)
        (letrec ((_generate-simple11518_
                  (lambda (_hd11820_ _body11821_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd11820_
                       _body11821_
                       _compiled-body?11516_))))
                 (_generate-values11519_
                  (lambda (_hd11599_ _body11600_)
                    (let _lp11602_ ((_rest11604_ _hd11599_)
                                    (_bind11605_ '())
                                    (_check11606_ '())
                                    (_post11607_ '()))
                      (let* ((___stx1698416985_ _rest11604_)
                             (_g1161011621_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1698416985_)))))
                        (let ((___kont1698616987_
                               (lambda (_L11648_ _L11649_)
                                 (let* ((___stx1694016941_ _L11649_)
                                        (_g1166411689_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1694016941_)))))
                                   (let ((___kont1694216943_
                                          (lambda (_L11796_ _L11797_)
                                            (let ((_eid11811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L11797_)))
                                                  (_expr11812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L11796_))))
                                              (let ((__tmp17971
                                                     (let ((__tmp17972
                                                            (let ((__tmp17973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr11812_ '()))))
                      (declare (not safe))
                      (cons _eid11811_ __tmp17973))))
               (declare (not safe))
               (cons __tmp17972 _bind11605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp11602_
                                                 _L11648_
                                                 __tmp17971
                                                 _check11606_
                                                 _post11607_)))))
                                         (___kont1694416945_
                                          (lambda (_L11710_ _L11711_)
                                            (let* ((_vals11724_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values11726_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals11724_
                                                       _L11711_
                                                       _L11710_)))
                                                   (_refs11728_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals11724_
                                                       _L11711_)))
                                                   (_expr11730_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e
                                                       _L11710_))))
                                              (let ((__tmp17976
                                                     (let ((__tmp17979
                                                            (let ((__tmp17980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17981
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr11730_ '()))))
                             (declare (not safe))
                             (cons _vals11724_ __tmp17981))))
                      (declare (not safe))
                      (cons __tmp17980 _bind11605_)))
                   (__tmp17977
                    (map (lambda (_e1173211734_)
                           (let* ((_g1173611745_ _e1173211734_)
                                  (_E1173811749_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g1173611745_)))
                                  (_K1173911754_
                                   (lambda (_eid11752_)
                                     (let ((__tmp17978
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid11752_ __tmp17978)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g1173611745_))
                                 (let ((_hd1174011757_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g1173611745_)))
                                       (_tl1174111759_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g1173611745_))))
                                   (let ((_eid11762_ _hd1174011757_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl1174111759_))
                                         (let ((_tl1174311764_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl1174111759_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl1174311764_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K1173911754_ _eid11762_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E1173811749_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E1173811749_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E1173811749_)))))
                         _refs11728_)))
               (declare (not safe))
               (foldl1 cons __tmp17979 __tmp17977)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp17975
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values11726_
                                                             _check11606_)))
                                                    (__tmp17974
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs11728_
                                                               _post11607_))))
                                                (declare (not safe))
                                                (_lp11602_
                                                 _L11648_
                                                 __tmp17976
                                                 __tmp17975
                                                 __tmp17974))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1694016941_))
                                         (let ((_e1167011772_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1694016941_))))
                                           (let ((_tl1166811777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1167011772_)))
                                                 (_hd1166911775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1167011772_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd1166911775_))
                                                 (let ((_e1167311780_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd1166911775_))))
                                                   (let ((_tl1167111785_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1167311780_)))
                                                         (_hd1167211783_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1167311780_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl1167111785_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl1166811777_))
                     (let ((_e1167611788_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1166811777_))))
                       (let ((_tl1167411793_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1167611788_)))
                             (_hd1167511791_
                              (let ()
                                (declare (not safe))
                                (##car _e1167611788_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1167411793_))
                             (___kont1694216943_ _hd1167511791_ _hd1167211783_)
                             (let () (declare (not safe)) (_g1166411689_)))))
                     (let () (declare (not safe)) (_g1166411689_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl1166811777_))
                     (let ((_e1168411702_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1166811777_))))
                       (let ((_tl1168211707_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1168411702_)))
                             (_hd1168311705_
                              (let ()
                                (declare (not safe))
                                (##car _e1168411702_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1168211707_))
                             (___kont1694416945_ _hd1168311705_ _hd1166911775_)
                             (let () (declare (not safe)) (_g1166411689_)))))
                     (let () (declare (not safe)) (_g1166411689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl1166811777_))
                                                     (let ((_e1168411702_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl1166811777_))))
                                                       (let ((_tl1168211707_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1168411702_)))
                     (_hd1168311705_
                      (let () (declare (not safe)) (##car _e1168411702_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl1168211707_))
                     (___kont1694416945_ _hd1168311705_ _hd1166911775_)
                     (let () (declare (not safe)) (_g1166411689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1166411689_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1166411689_)))))))
                              (___kont1698816989_
                               (lambda ()
                                 (let* ((_body11628_
                                         (if _compiled-body?11516_
                                             _body11600_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _body11600_))))
                                        (_body11630_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post11521_
                                            _post11607_
                                            _body11628_)))
                                        (_body11632_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check11520_
                                            _check11606_
                                            _body11630_))))
                                   (let ((__tmp17982
                                          (let ((__tmp17984
                                                 (reverse _bind11605_))
                                                (__tmp17983
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body11632_ '()))))
                                            (declare (not safe))
                                            (cons __tmp17984 __tmp17983))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp17982))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1698416985_))
                              (let ((_e1161611640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1698416985_))))
                                (let ((_tl1161411645_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1161611640_)))
                                      (_hd1161511643_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1161611640_))))
                                  (___kont1698616987_
                                   _tl1161411645_
                                   _hd1161511643_)))
                              (___kont1698816989_)))))))
                 (_generate-values-check11520_
                  (lambda (_check11596_ _body11597_)
                    (let ((__tmp17985
                           (let ((__tmp17987
                                  (let ()
                                    (declare (not safe))
                                    (cons _body11597_ '())))
                                 (__tmp17986 (reverse _check11596_)))
                             (declare (not safe))
                             (foldr1 cons __tmp17987 __tmp17986))))
                      (declare (not safe))
                      (cons 'begin __tmp17985))))
                 (_generate-values-post11521_
                  (lambda (_post11589_ _body11590_)
                    (let ((__tmp17988
                           (let ((__tmp17990
                                  (let ()
                                    (declare (not safe))
                                    (cons _body11590_ '())))
                                 (__tmp17989
                                  (map (lambda (_g1159111593_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g1159111593_)))
                                       (reverse _post11589_))))
                             (declare (not safe))
                             (foldr1 cons __tmp17990 __tmp17989))))
                      (declare (not safe))
                      (cons 'begin __tmp17988)))))
          (let* ((_g1152311540_
                  (lambda (_g1152411537_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1152411537_))))
                 (_g1152211586_
                  (lambda (_g1152411543_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1152411543_))
                        (let ((_e1152911545_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1152411543_))))
                          (let ((_hd1152811548_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1152911545_)))
                                (_tl1152711550_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1152911545_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1152711550_))
                                (let ((_e1153211553_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1152711550_))))
                                  (let ((_hd1153111556_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1153211553_)))
                                        (_tl1153011558_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1153211553_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1153011558_))
                                        (let ((_e1153511561_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1153011558_))))
                                          (let ((_hd1153411564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1153511561_)))
                                                (_tl1153311566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1153511561_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1153311566_))
                                                ((lambda (_L11569_ _L11570_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L11570_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple11518_
                                                          _L11570_
                                                          _L11569_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values11519_
                                                          _L11570_
                                                          _L11569_))))
                                                 _hd1153411564_
                                                 _hd1153111556_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1152311540_
                                                   _g1152411543_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1152311540_ _g1152411543_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1152311540_ _g1152411543_)))))
                        (let ()
                          (declare (not safe))
                          (_g1152311540_ _g1152411543_))))))
            (declare (not safe))
            (_g1152211586_ _stx11515_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_stx11826_)
        (let ((_compiled-body?11828_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _stx11826_
           _compiled-body?11828_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g17992_
        (let ((_g17991_ (let () (declare (not safe)) (##length _g17992_))))
          (cond ((let () (declare (not safe)) (##fx= _g17991_ 1))
                 (apply (lambda (_stx11826_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _stx11826_)))
                        _g17992_))
                ((let () (declare (not safe)) (##fx= _g17991_ 2))
                 (apply (lambda (_stx11830_ _compiled-body?11831_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _stx11830_
                             _compiled-body?11831_)))
                        _g17992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g17992_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_stx11097_)
        (letrec ((_generate-values11099_
                  (lambda (_hd11342_ _body11343_)
                    (let _lp11345_ ((_rest11347_ _hd11342_) (_bind11348_ '()))
                      (let* ((_rest1134911357_ _rest11347_)
                             (_else1135111368_
                              (lambda ()
                                (let ((_bind11365_ (reverse _bind11348_))
                                      (_body11366_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _body11343_))))
                                  (let ((__tmp17993
                                         (let ((__tmp17994
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body11366_ '()))))
                                           (declare (not safe))
                                           (cons _bind11365_ __tmp17994))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp17993)))))
                             (_K1135311502_
                              (lambda (_rest11371_ _hd-bind11372_)
                                (let* ((___stx1699816999_ _hd-bind11372_)
                                       (_g1137511400_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx1699816999_)))))
                                  (let ((___kont1700017001_
                                         (lambda (_L11481_ _L11482_)
                                           (let ((_eid11496_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L11482_)))
                                                 (_expr11497_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _L11481_))))
                                             (let ((__tmp17995
                                                    (let ((__tmp17996
                                                           (let ((__tmp17997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr11497_ '()))))
                     (declare (not safe))
                     (cons _eid11496_ __tmp17997))))
              (declare (not safe))
              (cons __tmp17996 _bind11348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp11345_
                                                _rest11371_
                                                __tmp17995)))))
                                        (___kont1700217003_
                                         (lambda (_L11421_ _L11422_)
                                           (let* ((_vals11441_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp11443_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values11445_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp11443_
                                                      _L11422_
                                                      _L11421_)))
                                                  (_refs11447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals11441_
                                                      _L11422_)))
                                                  (_expr11449_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L11421_))))
                                             (let ((__tmp17998
                                                    (let ((__tmp17999
                                                           (let ((__tmp18000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18001
                                 (let ((__tmp18002
                                        (let ((__tmp18003
                                               (let ((__tmp18006
                                                      (let ((__tmp18007
                                                             (let ((__tmp18008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr11449_ '()))))
                       (declare (not safe))
                       (cons _tmp11443_ __tmp18008))))
                (declare (not safe))
                (cons __tmp18007 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18004
                                                      (let ((__tmp18005
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp11443_ '()))))
                (declare (not safe))
                (cons _check-values11445_ __tmp18005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18006
                                                       __tmp18004))))
                                          (declare (not safe))
                                          (cons 'let __tmp18003))))
                                   (declare (not safe))
                                   (cons __tmp18002 '()))))
                            (declare (not safe))
                            (cons _vals11441_ __tmp18001))))
                     (declare (not safe))
                     (cons __tmp18000 _bind11348_))))
              (declare (not safe))
              (foldl1 cons __tmp17999 _refs11447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp11345_
                                                _rest11371_
                                                __tmp17998))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1699816999_))
                                        (let ((_e1138111457_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1699816999_))))
                                          (let ((_tl1137911462_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1138111457_)))
                                                (_hd1138011460_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1138111457_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1138011460_))
                                                (let ((_e1138411465_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1138011460_))))
                                                  (let ((_tl1138211470_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1138411465_)))
                                                        (_hd1138311468_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1138411465_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl1138211470_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1137911462_))
                                                            (let ((_e1138711473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1137911462_))))
                      (let ((_tl1138511478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1138711473_)))
                            (_hd1138611476_
                             (let ()
                               (declare (not safe))
                               (##car _e1138711473_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1138511478_))
                            (___kont1700017001_ _hd1138611476_ _hd1138311468_)
                            (let () (declare (not safe)) (_g1137511400_)))))
                    (let () (declare (not safe)) (_g1137511400_)))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl1137911462_))
                    (let ((_e1139511413_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1137911462_))))
                      (let ((_tl1139311418_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1139511413_)))
                            (_hd1139411416_
                             (let ()
                               (declare (not safe))
                               (##car _e1139511413_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1139311418_))
                            (___kont1700217003_ _hd1139411416_ _hd1138011460_)
                            (let () (declare (not safe)) (_g1137511400_)))))
                    (let () (declare (not safe)) (_g1137511400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl1137911462_))
                                                    (let ((_e1139511413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl1137911462_))))
                                                      (let ((_tl1139311418_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1139511413_)))
                    (_hd1139411416_
                     (let () (declare (not safe)) (##car _e1139511413_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl1139311418_))
                    (___kont1700217003_ _hd1139411416_ _hd1138011460_)
                    (let () (declare (not safe)) (_g1137511400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1137511400_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1137511400_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1134911357_))
                            (let ((_hd1135411505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1134911357_)))
                                  (_tl1135511507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1134911357_))))
                              (let* ((_hd-bind11510_ _hd1135411505_)
                                     (_rest11512_ _tl1135511507_))
                                (declare (not safe))
                                (_K1135311502_ _rest11512_ _hd-bind11510_)))
                            (let ()
                              (declare (not safe))
                              (_else1135111368_)))))))
                 (_generate-letrec?11100_
                  (lambda (_hd11232_)
                    (let _lp11234_ ((_rest11236_ _hd11232_))
                      (let* ((_rest1123711245_ _rest11236_)
                             (_else1123911253_ (lambda () '#t))
                             (_K1124111330_
                              (lambda (_rest11256_ _hd-bind11257_)
                                (let* ((_g1125911276_
                                        (lambda (_g1126011273_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1126011273_))))
                                       (_g1125811327_
                                        (lambda (_g1126011279_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g1126011279_))
                                              (let ((_e1126511281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g1126011279_))))
                                                (let ((_hd1126411284_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1126511281_)))
                                                      (_tl1126311286_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1126511281_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd1126411284_))
                                                      (let ((_e1126811289_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd1126411284_))))
                (let ((_hd1126711292_
                       (let () (declare (not safe)) (##car _e1126811289_)))
                      (_tl1126611294_
                       (let () (declare (not safe)) (##cdr _e1126811289_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl1126611294_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1126311286_))
                          (let ((_e1127111297_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1126311286_))))
                            (let ((_hd1127011300_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1127111297_)))
                                  (_tl1126911302_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1127111297_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl1126911302_))
                                  ((lambda (_L11305_ _L11306_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?11101_ _L11305_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp11234_ _rest11256_))
                                         '#f))
                                   _hd1127011300_
                                   _hd1126711292_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1125911276_ _g1126011279_)))))
                          (let ()
                            (declare (not safe))
                            (_g1125911276_ _g1126011279_)))
                      (let ()
                        (declare (not safe))
                        (_g1125911276_ _g1126011279_)))))
              (let () (declare (not safe)) (_g1125911276_ _g1126011279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1125911276_
                                                 _g1126011279_))))))
                                  (declare (not safe))
                                  (_g1125811327_ _hd-bind11257_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1123711245_))
                            (let ((_hd1124211333_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1123711245_)))
                                  (_tl1124311335_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1123711245_))))
                              (let* ((_hd-bind11338_ _hd1124211333_)
                                     (_rest11340_ _tl1124311335_))
                                (declare (not safe))
                                (_K1124111330_ _rest11340_ _hd-bind11338_)))
                            (let ()
                              (declare (not safe))
                              (_else1123911253_)))))))
                 (_is-lambda-expr?11101_
                  (lambda (_expr11169_)
                    (let* ((___stx1704217043_ _expr11169_)
                           (_g1117211186_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1704217043_)))))
                      (let ((___kont1704417045_
                             (lambda (_L11214_ _L11215_) '#t))
                            (___kont1704617047_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx1704217043_))
                            (let ((_e1117811198_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx1704217043_))))
                              (let ((_tl1117611203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1117811198_)))
                                    (_hd1117711201_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1117811198_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1117711201_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd1117711201_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1117611203_))
                                            (let ((_e1118111206_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1117611203_))))
                                              (let ((_tl1117911211_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1118111206_)))
                                                    (_hd1118011209_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1118111206_))))
                                                (___kont1704417045_
                                                 _tl1117911211_
                                                 _hd1118011209_)))
                                            (___kont1704617047_))
                                        (___kont1704617047_))
                                    (___kont1704617047_))))
                            (___kont1704617047_)))))))
          (let* ((_g1110311120_
                  (lambda (_g1110411117_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1110411117_))))
                 (_g1110211166_
                  (lambda (_g1110411123_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1110411123_))
                        (let ((_e1110911125_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1110411123_))))
                          (let ((_hd1110811128_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1110911125_)))
                                (_tl1110711130_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1110911125_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1110711130_))
                                (let ((_e1111211133_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1110711130_))))
                                  (let ((_hd1111111136_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1111211133_)))
                                        (_tl1111011138_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1111211133_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1111011138_))
                                        (let ((_e1111511141_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1111011138_))))
                                          (let ((_hd1111411144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1111511141_)))
                                                (_tl1111311146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1111511141_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1111311146_))
                                                ((lambda (_L11149_ _L11150_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L11150_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?11100_
                                                              _L11150_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              'letrec
                                                              _L11150_
                                                              _L11149_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              'letrec*
                                                              _L11150_
                                                              _L11149_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values11099_
                                                          _L11150_
                                                          _L11149_))))
                                                 _hd1111411144_
                                                 _hd1111111136_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1110311120_
                                                   _g1110411123_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1110311120_ _g1110411123_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1110311120_ _g1110411123_)))))
                        (let ()
                          (declare (not safe))
                          (_g1110311120_ _g1110411123_))))))
            (declare (not safe))
            (_g1110211166_ _stx11097_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd11034_)
        (let _lp11036_ ((_rest11038_ _hd11034_))
          (let* ((_rest1103911055_ _rest11038_)
                 (_else1104211063_ (lambda () '#f)))
            (let ((_K1104511076_
                   (lambda (_rest11074_)
                     (let () (declare (not safe)) (_lp11036_ _rest11074_))))
                  (_K1104411068_ (lambda () '#t)))
              (let ((_try-match1104111071_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest1103911055_))
                           (let () (declare (not safe)) (_K1104411068_))
                           (let () (declare (not safe)) (_else1104211063_))))))
                (if (let () (declare (not safe)) (##pair? _rest1103911055_))
                    (let ((_tl1104711081_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest1103911055_)))
                          (_hd1104611079_
                           (let ()
                             (declare (not safe))
                             (##car _rest1103911055_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd1104611079_))
                          (let ((_tl1104911086_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd1104611079_)))
                                (_hd1104811084_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd1104611079_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1104811084_))
                                (let ((_tl1105311089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1104811084_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1105311089_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1104911086_))
                                          (let ((_tl1105111092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1104911086_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl1105111092_))
                                                (let ((_rest11095_
                                                       _tl1104711081_))
                                                  (declare (not safe))
                                                  (_lp11036_ _rest11095_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else1104211063_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else1104211063_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1104211063_))))
                                (let ()
                                  (declare (not safe))
                                  (_else1104211063_))))
                          (let () (declare (not safe)) (_else1104211063_))))
                    (let ()
                      (declare (not safe))
                      (_try-match1104111071_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_form10946_ _hd10947_ _body10948_ _compiled-body?10949_)
        (letrec ((_generate110951_
                  (lambda (_bind10990_)
                    (let* ((_bind1099111002_ _bind10990_)
                           (_E1099311006_
                            (lambda ()
                              (error '"No clause matching" _bind1099111002_)))
                           (_K1099411012_
                            (lambda (_expr11009_ _id11010_)
                              (let ((__tmp18011
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id11010_)))
                                    (__tmp18009
                                     (let ((__tmp18010
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _expr11009_))))
                                       (declare (not safe))
                                       (cons __tmp18010 '()))))
                                (declare (not safe))
                                (cons __tmp18011 __tmp18009)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind1099111002_))
                          (let ((_hd1099511015_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind1099111002_)))
                                (_tl1099611017_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind1099111002_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1099511015_))
                                (let ((_hd1099911020_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd1099511015_)))
                                      (_tl1100011022_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1099511015_))))
                                  (let ((_id11025_ _hd1099911020_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1100011022_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl1099611017_))
                                            (let ((_hd1099711027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl1099611017_)))
                                                  (_tl1099811029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl1099611017_))))
                                              (let ((_expr11032_
                                                     _hd1099711027_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl1099811029_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K1099411012_
                                                       _expr11032_
                                                       _id11025_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E1099311006_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E1099311006_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E1099311006_)))))
                                (let () (declare (not safe)) (_E1099311006_))))
                          (let () (declare (not safe)) (_E1099311006_)))))))
          (let* ((_bind10953_ (map _generate110951_ _hd10947_))
                 (_body10955_
                  (if _compiled-body?10949_
                      _body10948_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e _body10948_))))
                 (_body10987_
                  (let* ((_body1095610964_ _body10955_)
                         (_else1095810972_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body10955_ '()))))
                         (_K1096010977_ (lambda (_exprs10975_) _exprs10975_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body1095610964_))
                        (let ((_hd1096110980_
                               (let ()
                                 (declare (not safe))
                                 (##car _body1095610964_)))
                              (_tl1096210982_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body1095610964_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd1096110980_ 'begin))
                              (let ((_exprs10985_ _tl1096210982_))
                                (declare (not safe))
                                (_K1096010977_ _exprs10985_))
                              (let ()
                                (declare (not safe))
                                (_else1095810972_))))
                        (let () (declare (not safe)) (_else1095810972_))))))
            (let ((__tmp18012
                   (let ()
                     (declare (not safe))
                     (cons _bind10953_ _body10987_))))
              (declare (not safe))
              (cons _form10946_ __tmp18012))))))
    (define gxc#generate-runtime-quote%
      (lambda (_stx10854_)
        (letrec ((_generate110856_
                  (lambda (_datum10908_)
                    (if (or (let () (declare (not safe)) (null? _datum10908_))
                            (interned-symbol? _datum10908_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum10908_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum10908_)))
                        _datum10908_
                        (if (uninterned-symbol? _datum10908_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum10908_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum10908_))
                                (let ((__tmp18017
                                       (let ((__tmp18018 (car _datum10908_)))
                                         (declare (not safe))
                                         (_generate110856_ __tmp18018)))
                                      (__tmp18015
                                       (let ((__tmp18016 (cdr _datum10908_)))
                                         (declare (not safe))
                                         (_generate110856_ __tmp18016))))
                                  (declare (not safe))
                                  (cons __tmp18017 __tmp18015))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum10908_))
                                    (let ((__tmp18013
                                           (let ((__tmp18014
                                                  (unbox _datum10908_)))
                                             (declare (not safe))
                                             (_generate110856_ __tmp18014))))
                                      (declare (not safe))
                                      (box __tmp18013))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum10908_))
                                        (vector-map
                                         _generate110856_
                                         _datum10908_)
                                        (if (or (s8vector? _datum10908_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum10908_))
                                                (s16vector? _datum10908_)
                                                (u16vector? _datum10908_)
                                                (s32vector? _datum10908_)
                                                (u32vector? _datum10908_)
                                                (s64vector? _datum10908_)
                                                (u64vector? _datum10908_)
                                                (f32vector? _datum10908_)
                                                (f64vector? _datum10908_))
                                            _datum10908_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx10854_)))))))))))
          (let* ((_g1085810871_
                  (lambda (_g1085910868_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1085910868_))))
                 (_g1085710905_
                  (lambda (_g1085910874_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1085910874_))
                        (let ((_e1086310876_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1085910874_))))
                          (let ((_hd1086210879_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1086310876_)))
                                (_tl1086110881_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1086310876_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1086110881_))
                                (let ((_e1086610884_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1086110881_))))
                                  (let ((_hd1086510887_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1086610884_)))
                                        (_tl1086410889_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1086610884_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1086410889_))
                                        ((lambda (_L10892_)
                                           (let ((__tmp18019
                                                  (let ((__tmp18020
                                                         (let ((__tmp18021
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L10892_))))
                   (declare (not safe))
                   (_generate110856_ __tmp18021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18020 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp18019)))
                                         _hd1086510887_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1085810871_ _g1085910874_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1085810871_ _g1085910874_)))))
                        (let ()
                          (declare (not safe))
                          (_g1085810871_ _g1085910874_))))))
            (declare (not safe))
            (_g1085710905_ _stx10854_)))))
    (define gxc#generate-runtime-call%
      (lambda (_stx10372_)
        (letrec ((_compile-call10374_
                  (lambda (_rator10598_ _rands10599_)
                    (let ((_rator10601_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _rator10598_)))
                          (_rands10602_ (map gxc#compile-e _rands10599_)))
                      (let* ((___stx1708917090_ _rator10601_)
                             (_g1060510657_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1708917090_)))))
                        (let ((___kont1709117092_
                               (lambda (_L10781_ _L10782_ _L10783_ _L10784_)
                                 (if (fx= (length _rands10602_)
                                          (length (let ((__tmp18026
                                                         (lambda (_g1082010823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1082110825_)
                   (let ()
                     (declare (not safe))
                     (cons _g1082010823_ _g1082110825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp18026
                                                            '()
                                                            _L10783_))))
                                     (let* ((_id10828_ _L10784_)
                                            (_args10837_
                                             (let ((__tmp18022
                                                    (lambda (_g1082910832_
                                                             _g1083010834_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1082910832_
                                                              _g1083010834_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp18022
                                                       '()
                                                       _L10783_)))
                                            (_body10846_
                                             (let ((__tmp18023
                                                    (lambda (_g1083810841_
                                                             _g1083910843_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1083810841_
                                                              _g1083910843_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp18023
                                                       '()
                                                       _L10782_)))
                                            (_init10848_
                                             (map list
                                                  _args10837_
                                                  _rands10602_)))
                                       (let ((__tmp18024
                                              (let ((__tmp18025
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init10848_
                                                             _body10846_))))
                                                (declare (not safe))
                                                (cons _id10828_ __tmp18025))))
                                         (declare (not safe))
                                         (cons 'let __tmp18024)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx10372_)))))
                              (___kont1709717098_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator10601_ _rands10602_)))))
                          (let ((___match1715617157_
                                 (lambda (_e1061310669_
                                          _hd1061210672_
                                          _tl1061110674_
                                          _e1061610677_
                                          _hd1061510680_
                                          _tl1061410682_
                                          _e1061910685_
                                          _hd1061810688_
                                          _tl1061710690_
                                          _e1062210693_
                                          _hd1062110696_
                                          _tl1062010698_
                                          _e1062510701_
                                          _hd1062410704_
                                          _tl1062310706_
                                          _e1062810709_
                                          _hd1062710712_
                                          _tl1062610714_
                                          _e1063110717_
                                          _hd1063010720_
                                          _tl1062910722_
                                          ___splice1709317094_
                                          _target1063210725_
                                          _tl1063410727_)
                                   (letrec ((_loop1063510730_
                                             (lambda (_hd1063310733_
                                                      _arg1063910735_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd1063310733_))
                                                   (let ((_e1063610738_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd1063310733_))))
                                                     (let ((_lp-tl1063810743_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1063610738_)))
                                                           (_lp-hd1063710741_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1063610738_))))
                                                       (let ((__tmp18028
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd1063710741_ _arg1063910735_))))
                 (declare (not safe))
                 (_loop1063510730_ _lp-tl1063810743_ __tmp18028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg1064010746_
                                                          (reverse _arg1063910735_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl1062910722_))
                                                         (let ((___splice1709517096_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl1062910722_ '0))))
                   (let ((_tl1064310751_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1709517096_ '1)))
                         (_target1064110749_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1709517096_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl1064310751_))
                         (letrec ((_loop1064410754_
                                   (lambda (_hd1064210757_ _body1064810759_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd1064210757_))
                                         (let ((_e1064510762_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _hd1064210757_))))
                                           (let ((_lp-tl1064710767_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1064510762_)))
                                                 (_lp-hd1064610765_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1064510762_))))
                                             (let ((__tmp18027
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd1064610765_
                                                            _body1064810759_))))
                                               (declare (not safe))
                                               (_loop1064410754_
                                                _lp-tl1064710767_
                                                __tmp18027))))
                                         (let ((_body1064910770_
                                                (reverse _body1064810759_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null? _tl1062310706_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl1061710690_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl1061410682_))
                                                       (let ((_e1065210773_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl1061410682_))))
                 (let ((_tl1065010778_
                        (let () (declare (not safe)) (##cdr _e1065210773_)))
                       (_hd1065110776_
                        (let () (declare (not safe)) (##car _e1065210773_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl1065010778_))
                       (let ((_L10781_ _hd1065110776_)
                             (_L10782_ _body1064910770_)
                             (_L10783_ _arg1064010746_)
                             (_L10784_ _hd1062110696_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L10784_ _L10781_))
                             (___kont1709117092_
                              _L10781_
                              _L10782_
                              _L10783_
                              _L10784_)
                             (___kont1709717098_)))
                       (___kont1709717098_))))
               (___kont1709717098_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1709717098_))
                                               (___kont1709717098_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop1064410754_ _target1064110749_ '())))
                         (___kont1709717098_))))
                 (___kont1709717098_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop1063510730_
                                        _target1063210725_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx1708917090_))
                                (let ((_e1061310669_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx1708917090_))))
                                  (let ((_tl1061110674_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1061310669_)))
                                        (_hd1061210672_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1061310669_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd1061210672_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd1061210672_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl1061110674_))
                                                (let ((_e1061610677_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl1061110674_))))
                                                  (let ((_tl1061410682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1061610677_)))
                                                        (_hd1061510680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1061610677_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1061510680_))
                                                        (let ((_e1061910685_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1061510680_))))
                  (let ((_tl1061710690_
                         (let () (declare (not safe)) (##cdr _e1061910685_)))
                        (_hd1061810688_
                         (let () (declare (not safe)) (##car _e1061910685_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1061810688_))
                        (let ((_e1062210693_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1061810688_))))
                          (let ((_tl1062010698_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1062210693_)))
                                (_hd1062110696_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1062210693_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1062010698_))
                                (let ((_e1062510701_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1062010698_))))
                                  (let ((_tl1062310706_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1062510701_)))
                                        (_hd1062410704_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1062510701_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd1062410704_))
                                        (let ((_e1062810709_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd1062410704_))))
                                          (let ((_tl1062610714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1062810709_)))
                                                (_hd1062710712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1062810709_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd1062710712_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd1062710712_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1062610714_))
                                                        (let ((_e1063110717_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1062610714_))))
                  (let ((_tl1062910722_
                         (let () (declare (not safe)) (##cdr _e1063110717_)))
                        (_hd1063010720_
                         (let () (declare (not safe)) (##car _e1063110717_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd1063010720_))
                        (let ((___splice1709317094_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _hd1063010720_ '0))))
                          (let ((_tl1063410727_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1709317094_ '1)))
                                (_target1063210725_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1709317094_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1063410727_))
                                (___match1715617157_
                                 _e1061310669_
                                 _hd1061210672_
                                 _tl1061110674_
                                 _e1061610677_
                                 _hd1061510680_
                                 _tl1061410682_
                                 _e1061910685_
                                 _hd1061810688_
                                 _tl1061710690_
                                 _e1062210693_
                                 _hd1062110696_
                                 _tl1062010698_
                                 _e1062510701_
                                 _hd1062410704_
                                 _tl1062310706_
                                 _e1062810709_
                                 _hd1062710712_
                                 _tl1062610714_
                                 _e1063110717_
                                 _hd1063010720_
                                 _tl1062910722_
                                 ___splice1709317094_
                                 _target1063210725_
                                 _tl1063410727_)
                                (___kont1709717098_))))
                        (___kont1709717098_))))
                (___kont1709717098_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1709717098_))
                                                (___kont1709717098_))))
                                        (___kont1709717098_))))
                                (___kont1709717098_))))
                        (___kont1709717098_))))
                (___kont1709717098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1709717098_))
                                            (___kont1709717098_))
                                        (___kont1709717098_))))
                                (___kont1709717098_)))))))))
          (let* ((_g1037610390_
                  (lambda (_g1037710387_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1037710387_))))
                 (_g1037510595_
                  (lambda (_g1037710393_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1037710393_))
                        (let ((_e1038210395_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1037710393_))))
                          (let ((_hd1038110398_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1038210395_)))
                                (_tl1038010400_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1038210395_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1038010400_))
                                (let ((_e1038510403_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1038010400_))))
                                  (let ((_hd1038410406_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1038510403_)))
                                        (_tl1038310408_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1038510403_))))
                                    ((lambda (_L10411_ _L10412_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call10374_
                                              _L10412_
                                              _L10411_))
                                           (let* ((___stx1720517206_ _L10412_)
                                                  (_g1042710439_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1720517206_)))))
                                             (let ((___kont1720717208_
                                                    (lambda ()
                                                      (let ((_f10469_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e _L10412_))))
                (if (let ((__tmp18042 (symbol->string _f10469_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp18042))
                    (let _lp10471_ ((_rest10474_ (reverse _L10411_))
                                    (_bind10476_ '())
                                    (_args10477_ '()))
                      (let* ((_rest1047810486_ _rest10474_)
                             (_else1048010494_
                              (lambda ()
                                (let ((__tmp18029
                                       (let ((__tmp18030
                                              (let ((__tmp18031
                                                     (let ((__tmp18032
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f10469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args10477_))))
               (declare (not safe))
               (cons __tmp18032 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp18031))))
                                         (declare (not safe))
                                         (cons _bind10476_ __tmp18030))))
                                  (declare (not safe))
                                  (cons 'let __tmp18029))))
                             (_K1048210580_
                              (lambda (_rest10497_ _e10498_)
                                (let* ((___stx1715917160_ _e10498_)
                                       (_g1050310521_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx1715917160_)))))
                                  (let ((___kont1716117162_
                                         (lambda ()
                                           (let ((__tmp18033
                                                  (let ((__tmp18034
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _e10498_))))
                                                    (declare (not safe))
                                                    (cons __tmp18034
                                                          _args10477_))))
                                             (declare (not safe))
                                             (_lp10471_
                                              _rest10497_
                                              _bind10476_
                                              __tmp18033))))
                                        (___kont1716317164_
                                         (lambda ()
                                           (let ((__tmp18035
                                                  (let ((__tmp18036
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _e10498_))))
                                                    (declare (not safe))
                                                    (cons __tmp18036
                                                          _args10477_))))
                                             (declare (not safe))
                                             (_lp10471_
                                              _rest10497_
                                              _bind10476_
                                              __tmp18035))))
                                        (___kont1716517166_
                                         (lambda ()
                                           (let ((_tmp10528_
                                                  (make-symbol
                                                   (gensym '__tmp))))
                                             (let ((__tmp18038
                                                    (let ((__tmp18039
                                                           (let ((__tmp18040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18041
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e _e10498_))))
                            (declare (not safe))
                            (cons __tmp18041 '()))))
                     (declare (not safe))
                     (cons _tmp10528_ __tmp18040))))
              (declare (not safe))
              (cons __tmp18039 _bind10476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp18037
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp10528_
                                                            _args10477_))))
                                               (declare (not safe))
                                               (_lp10471_
                                                _rest10497_
                                                __tmp18038
                                                __tmp18037))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1715917160_))
                                        (let ((_e1050710559_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1715917160_))))
                                          (let ((_tl1050510564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1050710559_)))
                                                (_hd1050610562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1050710559_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd1050610562_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd1050610562_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1050510564_))
                                                        (let ((_e1051010567_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1050510564_))))
                  (let ((_tl1050810572_
                         (let () (declare (not safe)) (##cdr _e1051010567_)))
                        (_hd1050910570_
                         (let () (declare (not safe)) (##car _e1051010567_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl1050810572_))
                        (___kont1716117162_)
                        (___kont1716517166_))))
                (___kont1716517166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd1050610562_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1050510564_))
                                                            (let ((_e1051610544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1050510564_))))
                      (let ((_tl1051410549_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1051610544_)))
                            (_hd1051510547_
                             (let ()
                               (declare (not safe))
                               (##car _e1051610544_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1051410549_))
                            (___kont1716317164_)
                            (___kont1716517166_))))
                    (___kont1716517166_))
                (___kont1716517166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1716517166_))))
                                        (___kont1716517166_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1047810486_))
                            (let ((_hd1048310583_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1047810486_)))
                                  (_tl1048410585_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1047810486_))))
                              (let* ((_e10588_ _hd1048310583_)
                                     (_rest10590_ _tl1048410585_))
                                (declare (not safe))
                                (_K1048210580_ _rest10590_ _e10588_)))
                            (let () (declare (not safe)) (_else1048010494_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call10374_ _L10412_ _L10411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1720917210_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call10374_
                                                         _L10412_
                                                         _L10411_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx1720517206_))
                                                   (let ((_e1043110451_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx1720517206_))))
                                                     (let ((_tl1042910456_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1043110451_)))
                                                           (_hd1043010454_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1043110451_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd1043010454_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd1043010454_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl1042910456_))
                           (let ((_e1043410459_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl1042910456_))))
                             (let ((_tl1043210464_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1043410459_)))
                                   (_hd1043310462_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1043410459_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1043210464_))
                                   (___kont1720717208_)
                                   (___kont1720917210_))))
                           (___kont1720917210_))
                       (___kont1720917210_))
                   (___kont1720917210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1720917210_))))))
                                     _tl1038310408_
                                     _hd1038410406_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1037610390_ _g1037710393_)))))
                        (let ()
                          (declare (not safe))
                          (_g1037610390_ _g1037710393_))))))
            (declare (not safe))
            (_g1037510595_ _stx10372_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_stx10160_)
        (let* ((___stx1727717278_ _stx10160_)
               (_g1016310183_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1727717278_)))))
          (let ((___kont1727917280_
                 (lambda (_L10227_ _L10228_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _stx10160_))
                       (let ((_f10246_
                              (let ((__tmp18043
                                     (let ((__tmp18045
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp18044
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10228_ '()))))
                                       (declare (not safe))
                                       (cons __tmp18045 __tmp18044))))
                                (declare (not safe))
                                (gxc#compile-e __tmp18043))))
                         (let _lp10248_ ((_rest10251_ (reverse _L10227_))
                                         (_bind10253_ '())
                                         (_args10254_ '()))
                           (let* ((_rest1025510263_ _rest10251_)
                                  (_else1025710271_
                                   (lambda ()
                                     (let ((__tmp18046
                                            (let ((__tmp18047
                                                   (let ((__tmp18048
                                                          (let ((__tmp18049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f10246_ _args10254_))))
                    (declare (not safe))
                    (cons __tmp18049 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp18048))))
                                              (declare (not safe))
                                              (cons _bind10253_ __tmp18047))))
                                       (declare (not safe))
                                       (cons 'let __tmp18046))))
                                  (_K1025910357_
                                   (lambda (_rest10274_ _e10275_)
                                     (let* ((___stx1723117232_ _e10275_)
                                            (_g1028010298_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx1723117232_)))))
                                       (let ((___kont1723317234_
                                              (lambda ()
                                                (let ((__tmp18050
                                                       (let ((__tmp18051
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e _e10275_))))
                 (declare (not safe))
                 (cons __tmp18051 _args10254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp10248_
                                                   _rest10274_
                                                   _bind10253_
                                                   __tmp18050))))
                                             (___kont1723517236_
                                              (lambda ()
                                                (let ((__tmp18052
                                                       (let ((__tmp18053
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e _e10275_))))
                 (declare (not safe))
                 (cons __tmp18053 _args10254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp10248_
                                                   _rest10274_
                                                   _bind10253_
                                                   __tmp18052))))
                                             (___kont1723717238_
                                              (lambda ()
                                                (let ((_tmp10305_
                                                       (make-symbol
                                                        (gensym '__tmp))))
                                                  (let ((__tmp18055
                                                         (let ((__tmp18056
                                                                (let ((__tmp18057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp18058
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _e10275_))))
                                 (declare (not safe))
                                 (cons __tmp18058 '()))))
                          (declare (not safe))
                          (cons _tmp10305_ __tmp18057))))
                   (declare (not safe))
                   (cons __tmp18056 _bind10253_)))
                (__tmp18054
                 (let () (declare (not safe)) (cons _tmp10305_ _args10254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp10248_
                                                     _rest10274_
                                                     __tmp18055
                                                     __tmp18054))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx1723117232_))
                                             (let ((_e1028410336_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx1723117232_))))
                                               (let ((_tl1028210341_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1028410336_)))
                                                     (_hd1028310339_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1028410336_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd1028310339_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd1028310339_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl1028210341_))
                     (let ((_e1028710344_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1028210341_))))
                       (let ((_tl1028510349_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1028710344_)))
                             (_hd1028610347_
                              (let ()
                                (declare (not safe))
                                (##car _e1028710344_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1028510349_))
                             (___kont1723317234_)
                             (___kont1723717238_))))
                     (___kont1723717238_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd1028310339_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl1028210341_))
                         (let ((_e1029310321_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl1028210341_))))
                           (let ((_tl1029110326_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1029310321_)))
                                 (_hd1029210324_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1029310321_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl1029110326_))
                                 (___kont1723517236_)
                                 (___kont1723717238_))))
                         (___kont1723717238_))
                     (___kont1723717238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1723717238_))))
                                             (___kont1723717238_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest1025510263_))
                                 (let ((_hd1026010360_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest1025510263_)))
                                       (_tl1026110362_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest1025510263_))))
                                   (let* ((_e10365_ _hd1026010360_)
                                          (_rest10367_ _tl1026110362_))
                                     (declare (not safe))
                                     (_K1025910357_ _rest10367_ _e10365_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else1025710271_)))))))))
                (___kont1728117282_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _stx10160_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx1727717278_))
                (let ((_e1016910195_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx1727717278_))))
                  (let ((_tl1016710200_
                         (let () (declare (not safe)) (##cdr _e1016910195_)))
                        (_hd1016810198_
                         (let () (declare (not safe)) (##car _e1016910195_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl1016710200_))
                        (let ((_e1017210203_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1016710200_))))
                          (let ((_tl1017010208_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1017210203_)))
                                (_hd1017110206_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1017210203_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd1017110206_))
                                (let ((_e1017510211_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd1017110206_))))
                                  (let ((_tl1017310216_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1017510211_)))
                                        (_hd1017410214_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1017510211_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd1017410214_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd1017410214_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl1017310216_))
                                                (let ((_e1017810219_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl1017310216_))))
                                                  (let ((_tl1017610224_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1017810219_)))
                                                        (_hd1017710222_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1017810219_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl1017610224_))
                                                        (___kont1727917280_
                                                         _tl1017010208_
                                                         _hd1017710222_)
                                                        (___kont1728117282_))))
                                                (___kont1728117282_))
                                            (___kont1728117282_))
                                        (___kont1728117282_))))
                                (___kont1728117282_))))
                        (___kont1728117282_))))
                (___kont1728117282_))))))
    (define gxc#generate-runtime-if%
      (lambda (_stx9973_)
        (letrec ((_simplify9975_
                  (lambda (_code10060_)
                    (let* ((_code1006110079_ _code10060_)
                           (_else1006310087_ (lambda () _code10060_))
                           (_K1006510123_
                            (lambda (_expr10090_ _test10091_)
                              (let* ((_expr1009210100_ _expr10090_)
                                     (_else1009410108_
                                      (lambda ()
                                        (let ((__tmp18059
                                               (let ((__tmp18060
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr10090_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test10091_
                                                       __tmp18060))))
                                          (declare (not safe))
                                          (cons 'and __tmp18059))))
                                     (_K1009610113_
                                      (lambda (_exprs10111_)
                                        (let ((__tmp18061
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test10091_
                                                       _exprs10111_))))
                                          (declare (not safe))
                                          (cons 'and __tmp18061)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr1009210100_))
                                    (let ((_hd1009710116_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr1009210100_)))
                                          (_tl1009810118_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr1009210100_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd1009710116_ 'and))
                                          (let ((_exprs10121_ _tl1009810118_))
                                            (declare (not safe))
                                            (_K1009610113_ _exprs10121_))
                                          (let ()
                                            (declare (not safe))
                                            (_else1009410108_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1009410108_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code1006110079_))
                          (let ((_hd1006610126_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code1006110079_)))
                                (_tl1006710128_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code1006110079_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd1006610126_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1006710128_))
                                    (let ((_hd1006810131_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1006710128_)))
                                          (_tl1006910133_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1006710128_))))
                                      (let ((_test10136_ _hd1006810131_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl1006910133_))
                                            (let ((_hd1007010138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl1006910133_)))
                                                  (_tl1007110140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl1006910133_))))
                                              (let ((_expr10143_
                                                     _hd1007010138_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl1007110140_))
                                                    (let ((_hd1007210145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl1007110140_)))
                                                          (_tl1007310147_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl1007110140_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd1007210145_))
                                                          (let ((_hd1007410150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _hd1007210145_)))
                        (_tl1007510152_
                         (let () (declare (not safe)) (##cdr _hd1007210145_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1007410150_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1007510152_))
                            (let ((_hd1007610155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1007510152_)))
                                  (_tl1007710157_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1007510152_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd1007610155_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1007710157_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1007310147_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1006510123_
                                             _expr10143_
                                             _test10136_))
                                          (let ()
                                            (declare (not safe))
                                            (_else1006310087_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1006310087_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1006310087_))))
                            (let () (declare (not safe)) (_else1006310087_)))
                        (let () (declare (not safe)) (_else1006310087_))))
                  (let () (declare (not safe)) (_else1006310087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else1006310087_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else1006310087_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1006310087_)))
                                (let ()
                                  (declare (not safe))
                                  (_else1006310087_))))
                          (let () (declare (not safe)) (_else1006310087_)))))))
          (let* ((_g99779998_
                  (lambda (_g99789995_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g99789995_))))
                 (_g997610057_
                  (lambda (_g997810001_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g997810001_))
                        (let ((_e998410003_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g997810001_))))
                          (let ((_hd998310006_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e998410003_)))
                                (_tl998210008_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e998410003_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl998210008_))
                                (let ((_e998710011_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl998210008_))))
                                  (let ((_hd998610014_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e998710011_)))
                                        (_tl998510016_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e998710011_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl998510016_))
                                        (let ((_e999010019_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl998510016_))))
                                          (let ((_hd998910022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e999010019_)))
                                                (_tl998810024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e999010019_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _tl998810024_))
                                                (let ((_e999310027_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl998810024_))))
                                                  (let ((_hd999210030_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e999310027_)))
                                                        (_tl999110032_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e999310027_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl999110032_))
                                                        ((lambda (_L10035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10036_
                          _L10037_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp18069
                              (let ((__tmp18070
                                     (let ((__tmp18075
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _L10037_)))
                                           (__tmp18071
                                            (let ((__tmp18074
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L10036_)))
                                                  (__tmp18072
                                                   (let ((__tmp18073
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _L10035_))))
                                                     (declare (not safe))
                                                     (cons __tmp18073 '()))))
                                              (declare (not safe))
                                              (cons __tmp18074 __tmp18072))))
                                       (declare (not safe))
                                       (cons __tmp18075 __tmp18071))))
                                (declare (not safe))
                                (cons 'if __tmp18070))))
                         (declare (not safe))
                         (_simplify9975_ __tmp18069))
                       (let ((__tmp18062
                              (let ((__tmp18067
                                     (let ((__tmp18068
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L10037_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp18068
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp18063
                                     (let ((__tmp18066
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _L10036_)))
                                           (__tmp18064
                                            (let ((__tmp18065
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L10035_))))
                                              (declare (not safe))
                                              (cons __tmp18065 '()))))
                                       (declare (not safe))
                                       (cons __tmp18066 __tmp18064))))
                                (declare (not safe))
                                (cons __tmp18067 __tmp18063))))
                         (declare (not safe))
                         (cons 'if __tmp18062))))
                 _hd999210030_
                 _hd998910022_
                 _hd998610014_)
                (let () (declare (not safe)) (_g99779998_ _g997810001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g99779998_
                                                   _g997810001_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g99779998_ _g997810001_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g99779998_ _g997810001_)))))
                        (let ()
                          (declare (not safe))
                          (_g99779998_ _g997810001_))))))
            (declare (not safe))
            (_g997610057_ _stx9973_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_stx9922_)
        (let* ((_g99249937_
                (lambda (_g99259934_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g99259934_))))
               (_g99239970_
                (lambda (_g99259940_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g99259940_))
                      (let ((_e99299942_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g99259940_))))
                        (let ((_hd99289945_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99299942_)))
                              (_tl99279947_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99299942_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl99279947_))
                              (let ((_e99329950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl99279947_))))
                                (let ((_hd99319953_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99329950_)))
                                      (_tl99309955_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99329950_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl99309955_))
                                      ((lambda (_L9958_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L9958_)))
                                       _hd99319953_)
                                      (let ()
                                        (declare (not safe))
                                        (_g99249937_ _g99259940_)))))
                              (let ()
                                (declare (not safe))
                                (_g99249937_ _g99259940_)))))
                      (let ()
                        (declare (not safe))
                        (_g99249937_ _g99259940_))))))
          (declare (not safe))
          (_g99239970_ _stx9922_))))
    (define gxc#generate-runtime-setq%
      (lambda (_stx9855_)
        (let* ((_g98579874_
                (lambda (_g98589871_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g98589871_))))
               (_g98569919_
                (lambda (_g98589877_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g98589877_))
                      (let ((_e98639879_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g98589877_))))
                        (let ((_hd98629882_
                               (let ()
                                 (declare (not safe))
                                 (##car _e98639879_)))
                              (_tl98619884_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e98639879_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl98619884_))
                              (let ((_e98669887_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl98619884_))))
                                (let ((_hd98659890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e98669887_)))
                                      (_tl98649892_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e98669887_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl98649892_))
                                      (let ((_e98699895_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl98649892_))))
                                        (let ((_hd98689898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e98699895_)))
                                              (_tl98679900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e98699895_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl98679900_))
                                              ((lambda (_L9903_ _L9904_)
                                                 (let ((__tmp18076
                                                        (let ((__tmp18079
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L9904_)))
                      (__tmp18077
                       (let ((__tmp18078
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _L9903_))))
                         (declare (not safe))
                         (cons __tmp18078 '()))))
                  (declare (not safe))
                  (cons __tmp18079 __tmp18077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp18076)))
                                               _hd98689898_
                                               _hd98659890_)
                                              (let ()
                                                (declare (not safe))
                                                (_g98579874_ _g98589877_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g98579874_ _g98589877_)))))
                              (let ()
                                (declare (not safe))
                                (_g98579874_ _g98589877_)))))
                      (let ()
                        (declare (not safe))
                        (_g98579874_ _g98589877_))))))
          (declare (not safe))
          (_g98569919_ _stx9855_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_stx9667_)
        (let* ((_g96699686_
                (lambda (_g96709683_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g96709683_))))
               (_g96689852_
                (lambda (_g96709689_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g96709689_))
                      (let ((_e96759691_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g96709689_))))
                        (let ((_hd96749694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e96759691_)))
                              (_tl96739696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e96759691_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl96739696_))
                              (let ((_e96789699_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl96739696_))))
                                (let ((_hd96779702_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e96789699_)))
                                      (_tl96769704_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e96789699_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl96769704_))
                                      (let ((_e96819707_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl96769704_))))
                                        (let ((_hd96809710_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e96819707_)))
                                              (_tl96799712_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e96819707_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl96799712_))
                                              ((lambda (_L9715_ _L9716_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp18094
                                                            (let ((__tmp18097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _L9715_)))
                          (__tmp18095
                           (let ((__tmp18096
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _L9716_))))
                             (declare (not safe))
                             (cons __tmp18096 '()))))
                      (declare (not safe))
                      (cons __tmp18097 __tmp18095))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp18094))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9731_ ((_rest9734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18093
                                    (let ()
                                      (declare (not safe))
                                      (cons _L9715_ '()))))
                               (declare (not safe))
                               (cons _L9716_ __tmp18093)))
                            (_bind9736_ '())
                            (_args9737_ '()))
               (let* ((_rest97389746_ _rest9734_)
                      (_else97409754_
                       (lambda ()
                         (let ((__tmp18080
                                (let ((__tmp18081
                                       (let ((__tmp18082
                                              (let ((__tmp18083
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args9737_))))
                                                (declare (not safe))
                                                (cons __tmp18083 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp18082))))
                                  (declare (not safe))
                                  (cons _bind9736_ __tmp18081))))
                           (declare (not safe))
                           (cons 'let __tmp18080))))
                      (_K97429840_
                       (lambda (_rest9757_ _e9758_)
                         (let* ((___stx1731517316_ _e9758_)
                                (_g97639781_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx1731517316_)))))
                           (let ((___kont1731717318_
                                  (lambda ()
                                    (let ((__tmp18084
                                           (let ((__tmp18085
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9758_))))
                                             (declare (not safe))
                                             (cons __tmp18085 _args9737_))))
                                      (declare (not safe))
                                      (_lp9731_
                                       _rest9757_
                                       _bind9736_
                                       __tmp18084))))
                                 (___kont1731917320_
                                  (lambda ()
                                    (let ((__tmp18086
                                           (let ((__tmp18087
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9758_))))
                                             (declare (not safe))
                                             (cons __tmp18087 _args9737_))))
                                      (declare (not safe))
                                      (_lp9731_
                                       _rest9757_
                                       _bind9736_
                                       __tmp18086))))
                                 (___kont1732117322_
                                  (lambda ()
                                    (let ((_tmp9788_
                                           (make-symbol (gensym '__tmp))))
                                      (let ((__tmp18089
                                             (let ((__tmp18090
                                                    (let ((__tmp18091
                                                           (let ((__tmp18092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e9758_))))
                     (declare (not safe))
                     (cons __tmp18092 '()))))
              (declare (not safe))
              (cons _tmp9788_ __tmp18091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18090 _bind9736_)))
                                            (__tmp18088
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp9788_ _args9737_))))
                                        (declare (not safe))
                                        (_lp9731_
                                         _rest9757_
                                         __tmp18089
                                         __tmp18088))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx1731517316_))
                                 (let ((_e97679819_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx1731517316_))))
                                   (let ((_tl97659824_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e97679819_)))
                                         (_hd97669822_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e97679819_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd97669822_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd97669822_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair? _tl97659824_))
                                                 (let ((_e97709827_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl97659824_))))
                                                   (let ((_tl97689832_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e97709827_)))
                                                         (_hd97699830_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e97709827_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl97689832_))
                                                         (___kont1731717318_)
                                                         (___kont1732117322_))))
                                                 (___kont1732117322_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd97669822_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl97659824_))
                                                     (let ((_e97769804_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl97659824_))))
                                                       (let ((_tl97749809_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e97769804_)))
                     (_hd97759807_
                      (let () (declare (not safe)) (##car _e97769804_))))
                 (if (let () (declare (not safe)) (gx#stx-null? _tl97749809_))
                     (___kont1731917320_)
                     (___kont1732117322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1732117322_))
                                                 (___kont1732117322_)))
                                         (___kont1732117322_))))
                                 (___kont1732117322_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest97389746_))
                     (let ((_hd97439843_
                            (let ()
                              (declare (not safe))
                              (##car _rest97389746_)))
                           (_tl97449845_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest97389746_))))
                       (let* ((_e9848_ _hd97439843_) (_rest9850_ _tl97449845_))
                         (declare (not safe))
                         (_K97429840_ _rest9850_ _e9848_)))
                     (let () (declare (not safe)) (_else97409754_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd96809710_
                                               _hd96779702_)
                                              (let ()
                                                (declare (not safe))
                                                (_g96699686_ _g96709689_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g96699686_ _g96709689_)))))
                              (let ()
                                (declare (not safe))
                                (_g96699686_ _g96709689_)))))
                      (let ()
                        (declare (not safe))
                        (_g96699686_ _g96709689_))))))
          (declare (not safe))
          (_g96689852_ _stx9667_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_stx9479_)
        (let* ((_g94819498_
                (lambda (_g94829495_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g94829495_))))
               (_g94809664_
                (lambda (_g94829501_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g94829501_))
                      (let ((_e94879503_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g94829501_))))
                        (let ((_hd94869506_
                               (let ()
                                 (declare (not safe))
                                 (##car _e94879503_)))
                              (_tl94859508_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e94879503_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl94859508_))
                              (let ((_e94909511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl94859508_))))
                                (let ((_hd94899514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e94909511_)))
                                      (_tl94889516_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e94909511_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl94889516_))
                                      (let ((_e94939519_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl94889516_))))
                                        (let ((_hd94929522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e94939519_)))
                                              (_tl94919524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e94939519_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl94919524_))
                                              ((lambda (_L9527_ _L9528_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp18112
                                                            (let ((__tmp18115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _L9527_)))
                          (__tmp18113
                           (let ((__tmp18114
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _L9528_))))
                             (declare (not safe))
                             (cons __tmp18114 '()))))
                      (declare (not safe))
                      (cons __tmp18115 __tmp18113))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp18112))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9543_ ((_rest9546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18111
                                    (let ()
                                      (declare (not safe))
                                      (cons _L9527_ '()))))
                               (declare (not safe))
                               (cons _L9528_ __tmp18111)))
                            (_bind9548_ '())
                            (_args9549_ '()))
               (let* ((_rest95509558_ _rest9546_)
                      (_else95529566_
                       (lambda ()
                         (let ((__tmp18098
                                (let ((__tmp18099
                                       (let ((__tmp18100
                                              (let ((__tmp18101
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args9549_))))
                                                (declare (not safe))
                                                (cons __tmp18101 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp18100))))
                                  (declare (not safe))
                                  (cons _bind9548_ __tmp18099))))
                           (declare (not safe))
                           (cons 'let __tmp18098))))
                      (_K95549652_
                       (lambda (_rest9569_ _e9570_)
                         (let* ((___stx1736117362_ _e9570_)
                                (_g95759593_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx1736117362_)))))
                           (let ((___kont1736317364_
                                  (lambda ()
                                    (let ((__tmp18102
                                           (let ((__tmp18103
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9570_))))
                                             (declare (not safe))
                                             (cons __tmp18103 _args9549_))))
                                      (declare (not safe))
                                      (_lp9543_
                                       _rest9569_
                                       _bind9548_
                                       __tmp18102))))
                                 (___kont1736517366_
                                  (lambda ()
                                    (let ((__tmp18104
                                           (let ((__tmp18105
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9570_))))
                                             (declare (not safe))
                                             (cons __tmp18105 _args9549_))))
                                      (declare (not safe))
                                      (_lp9543_
                                       _rest9569_
                                       _bind9548_
                                       __tmp18104))))
                                 (___kont1736717368_
                                  (lambda ()
                                    (let ((_tmp9600_
                                           (make-symbol (gensym '__tmp))))
                                      (let ((__tmp18107
                                             (let ((__tmp18108
                                                    (let ((__tmp18109
                                                           (let ((__tmp18110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e9570_))))
                     (declare (not safe))
                     (cons __tmp18110 '()))))
              (declare (not safe))
              (cons _tmp9600_ __tmp18109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18108 _bind9548_)))
                                            (__tmp18106
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp9600_ _args9549_))))
                                        (declare (not safe))
                                        (_lp9543_
                                         _rest9569_
                                         __tmp18107
                                         __tmp18106))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx1736117362_))
                                 (let ((_e95799631_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx1736117362_))))
                                   (let ((_tl95779636_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e95799631_)))
                                         (_hd95789634_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e95799631_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd95789634_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd95789634_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair? _tl95779636_))
                                                 (let ((_e95829639_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl95779636_))))
                                                   (let ((_tl95809644_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e95829639_)))
                                                         (_hd95819642_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e95829639_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl95809644_))
                                                         (___kont1736317364_)
                                                         (___kont1736717368_))))
                                                 (___kont1736717368_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd95789634_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl95779636_))
                                                     (let ((_e95889616_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl95779636_))))
                                                       (let ((_tl95869621_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e95889616_)))
                     (_hd95879619_
                      (let () (declare (not safe)) (##car _e95889616_))))
                 (if (let () (declare (not safe)) (gx#stx-null? _tl95869621_))
                     (___kont1736517366_)
                     (___kont1736717368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1736717368_))
                                                 (___kont1736717368_)))
                                         (___kont1736717368_))))
                                 (___kont1736717368_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest95509558_))
                     (let ((_hd95559655_
                            (let ()
                              (declare (not safe))
                              (##car _rest95509558_)))
                           (_tl95569657_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest95509558_))))
                       (let* ((_e9660_ _hd95559655_) (_rest9662_ _tl95569657_))
                         (declare (not safe))
                         (_K95549652_ _rest9662_ _e9660_)))
                     (let () (declare (not safe)) (_else95529566_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd94929522_
                                               _hd94899514_)
                                              (let ()
                                                (declare (not safe))
                                                (_g94819498_ _g94829501_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g94819498_ _g94829501_)))))
                              (let ()
                                (declare (not safe))
                                (_g94819498_ _g94829501_)))))
                      (let ()
                        (declare (not safe))
                        (_g94819498_ _g94829501_))))))
          (declare (not safe))
          (_g94809664_ _stx9479_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_stx9396_)
        (let* ((_g93989419_
                (lambda (_g93999416_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g93999416_))))
               (_g93979476_
                (lambda (_g93999422_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g93999422_))
                      (let ((_e94059424_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g93999422_))))
                        (let ((_hd94049427_
                               (let ()
                                 (declare (not safe))
                                 (##car _e94059424_)))
                              (_tl94039429_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e94059424_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl94039429_))
                              (let ((_e94089432_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl94039429_))))
                                (let ((_hd94079435_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e94089432_)))
                                      (_tl94069437_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e94089432_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl94069437_))
                                      (let ((_e94119440_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl94069437_))))
                                        (let ((_hd94109443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e94119440_)))
                                              (_tl94099445_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e94119440_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl94099445_))
                                              (let ((_e94149448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl94099445_))))
                                                (let ((_hd94139451_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e94149448_)))
                                                      (_tl94129453_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e94149448_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl94129453_))
                                                      ((lambda (_L9456_
                                                                _L9457_
                                                                _L9458_)
                                                         (let ((__tmp18116
                                                                (let ((__tmp18122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L9456_)))
                              (__tmp18117
                               (let ((__tmp18121
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _L9457_)))
                                     (__tmp18118
                                      (let ((__tmp18120
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _L9458_)))
                                            (__tmp18119
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp18120 __tmp18119))))
                                 (declare (not safe))
                                 (cons __tmp18121 __tmp18118))))
                          (declare (not safe))
                          (cons __tmp18122 __tmp18117))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp18116)))
               _hd94139451_
               _hd94109443_
               _hd94079435_)
              (let () (declare (not safe)) (_g93989419_ _g93999422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g93989419_ _g93999422_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g93989419_ _g93999422_)))))
                              (let ()
                                (declare (not safe))
                                (_g93989419_ _g93999422_)))))
                      (let ()
                        (declare (not safe))
                        (_g93989419_ _g93999422_))))))
          (declare (not safe))
          (_g93979476_ _stx9396_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_stx9297_)
        (let* ((_g92999324_
                (lambda (_g93009321_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g93009321_))))
               (_g92989393_
                (lambda (_g93009327_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g93009327_))
                      (let ((_e93079329_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g93009327_))))
                        (let ((_hd93069332_
                               (let ()
                                 (declare (not safe))
                                 (##car _e93079329_)))
                              (_tl93059334_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e93079329_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl93059334_))
                              (let ((_e93109337_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl93059334_))))
                                (let ((_hd93099340_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e93109337_)))
                                      (_tl93089342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e93109337_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl93089342_))
                                      (let ((_e93139345_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl93089342_))))
                                        (let ((_hd93129348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e93139345_)))
                                              (_tl93119350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e93139345_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl93119350_))
                                              (let ((_e93169353_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl93119350_))))
                                                (let ((_hd93159356_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e93169353_)))
                                                      (_tl93149358_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e93169353_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl93149358_))
                                                      (let ((_e93199361_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl93149358_))))
                (let ((_hd93189364_
                       (let () (declare (not safe)) (##car _e93199361_)))
                      (_tl93179366_
                       (let () (declare (not safe)) (##cdr _e93199361_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl93179366_))
                      ((lambda (_L9369_ _L9370_ _L9371_ _L9372_)
                         (let ((__tmp18123
                                (let ((__tmp18131
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _L9370_)))
                                      (__tmp18124
                                       (let ((__tmp18130
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L9369_)))
                                             (__tmp18125
                                              (let ((__tmp18129
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e
                                                        _L9371_)))
                                                    (__tmp18126
                                                     (let ((__tmp18128
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L9372_)))
                                                           (__tmp18127
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp18128 __tmp18127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18129 __tmp18126))))
                                         (declare (not safe))
                                         (cons __tmp18130 __tmp18125))))
                                  (declare (not safe))
                                  (cons __tmp18131 __tmp18124))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp18123)))
                       _hd93189364_
                       _hd93159356_
                       _hd93129348_
                       _hd93099340_)
                      (let ()
                        (declare (not safe))
                        (_g92999324_ _g93009327_)))))
              (let () (declare (not safe)) (_g92999324_ _g93009327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g92999324_ _g93009327_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g92999324_ _g93009327_)))))
                              (let ()
                                (declare (not safe))
                                (_g92999324_ _g93009327_)))))
                      (let ()
                        (declare (not safe))
                        (_g92999324_ _g93009327_))))))
          (declare (not safe))
          (_g92989393_ _stx9297_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_stx9214_)
        (let* ((_g92169237_
                (lambda (_g92179234_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g92179234_))))
               (_g92159294_
                (lambda (_g92179240_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g92179240_))
                      (let ((_e92239242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g92179240_))))
                        (let ((_hd92229245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e92239242_)))
                              (_tl92219247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e92239242_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl92219247_))
                              (let ((_e92269250_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl92219247_))))
                                (let ((_hd92259253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e92269250_)))
                                      (_tl92249255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e92269250_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl92249255_))
                                      (let ((_e92299258_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl92249255_))))
                                        (let ((_hd92289261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e92299258_)))
                                              (_tl92279263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e92299258_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl92279263_))
                                              (let ((_e92329266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl92279263_))))
                                                (let ((_hd92319269_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e92329266_)))
                                                      (_tl92309271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e92329266_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl92309271_))
                                                      ((lambda (_L9274_
                                                                _L9275_
                                                                _L9276_)
                                                         (let ((__tmp18132
                                                                (let ((__tmp18138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L9274_)))
                              (__tmp18133
                               (let ((__tmp18137
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _L9275_)))
                                     (__tmp18134
                                      (let ((__tmp18136
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _L9276_)))
                                            (__tmp18135
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp18136 __tmp18135))))
                                 (declare (not safe))
                                 (cons __tmp18137 __tmp18134))))
                          (declare (not safe))
                          (cons __tmp18138 __tmp18133))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp18132)))
               _hd92319269_
               _hd92289261_
               _hd92259253_)
              (let () (declare (not safe)) (_g92169237_ _g92179240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g92169237_ _g92179240_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g92169237_ _g92179240_)))))
                              (let ()
                                (declare (not safe))
                                (_g92169237_ _g92179240_)))))
                      (let ()
                        (declare (not safe))
                        (_g92169237_ _g92179240_))))))
          (declare (not safe))
          (_g92159294_ _stx9214_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_stx9115_)
        (let* ((_g91179142_
                (lambda (_g91189139_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g91189139_))))
               (_g91169211_
                (lambda (_g91189145_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g91189145_))
                      (let ((_e91259147_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g91189145_))))
                        (let ((_hd91249150_
                               (let ()
                                 (declare (not safe))
                                 (##car _e91259147_)))
                              (_tl91239152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e91259147_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl91239152_))
                              (let ((_e91289155_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl91239152_))))
                                (let ((_hd91279158_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e91289155_)))
                                      (_tl91269160_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e91289155_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl91269160_))
                                      (let ((_e91319163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl91269160_))))
                                        (let ((_hd91309166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e91319163_)))
                                              (_tl91299168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e91319163_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl91299168_))
                                              (let ((_e91349171_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl91299168_))))
                                                (let ((_hd91339174_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e91349171_)))
                                                      (_tl91329176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e91349171_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl91329176_))
                                                      (let ((_e91379179_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl91329176_))))
                (let ((_hd91369182_
                       (let () (declare (not safe)) (##car _e91379179_)))
                      (_tl91359184_
                       (let () (declare (not safe)) (##cdr _e91379179_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl91359184_))
                      ((lambda (_L9187_ _L9188_ _L9189_ _L9190_)
                         (let ((__tmp18139
                                (let ((__tmp18147
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _L9188_)))
                                      (__tmp18140
                                       (let ((__tmp18146
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L9187_)))
                                             (__tmp18141
                                              (let ((__tmp18145
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e
                                                        _L9189_)))
                                                    (__tmp18142
                                                     (let ((__tmp18144
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L9190_)))
                                                           (__tmp18143
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp18144 __tmp18143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18145 __tmp18142))))
                                         (declare (not safe))
                                         (cons __tmp18146 __tmp18141))))
                                  (declare (not safe))
                                  (cons __tmp18147 __tmp18140))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp18139)))
                       _hd91369182_
                       _hd91339174_
                       _hd91309166_
                       _hd91279158_)
                      (let ()
                        (declare (not safe))
                        (_g91179142_ _g91189145_)))))
              (let () (declare (not safe)) (_g91179142_ _g91189145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g91179142_ _g91189145_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g91179142_ _g91189145_)))))
                              (let ()
                                (declare (not safe))
                                (_g91179142_ _g91189145_)))))
                      (let ()
                        (declare (not safe))
                        (_g91179142_ _g91189145_))))))
          (declare (not safe))
          (_g91169211_ _stx9115_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_stx8911_)
        (let* ((_g89138934_
                (lambda (_g89148931_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g89148931_))))
               (_g89129112_
                (lambda (_g89148937_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g89148937_))
                      (let ((_e89208939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g89148937_))))
                        (let ((_hd89198942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e89208939_)))
                              (_tl89188944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e89208939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl89188944_))
                              (let ((_e89238947_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl89188944_))))
                                (let ((_hd89228950_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e89238947_)))
                                      (_tl89218952_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e89238947_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl89218952_))
                                      (let ((_e89268955_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl89218952_))))
                                        (let ((_hd89258958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e89268955_)))
                                              (_tl89248960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e89268955_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl89248960_))
                                              (let ((_e89298963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl89248960_))))
                                                (let ((_hd89288966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e89298963_)))
                                                      (_tl89278968_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e89298963_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl89278968_))
                                                      ((lambda (_L8971_
                                                                _L8972_
                                                                _L8973_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp18165
                            (let ((__tmp18171
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e _L8971_)))
                                  (__tmp18166
                                   (let ((__tmp18170
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e _L8972_)))
                                         (__tmp18167
                                          (let ((__tmp18169
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L8973_)))
                                                (__tmp18168
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp18169 __tmp18168))))
                                     (declare (not safe))
                                     (cons __tmp18170 __tmp18167))))
                              (declare (not safe))
                              (cons __tmp18171 __tmp18166))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp18165))
                     (let _lp8991_ ((_rest8994_
                                     (let ((__tmp18163
                                            (let ((__tmp18164
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L8971_ '()))))
                                              (declare (not safe))
                                              (cons _L8972_ __tmp18164))))
                                       (declare (not safe))
                                       (cons _L8973_ __tmp18163)))
                                    (_bind8996_ '())
                                    (_args8997_ '()))
                       (let* ((_rest89989006_ _rest8994_)
                              (_else90009014_
                               (lambda ()
                                 (let ((__tmp18148
                                        (let ((__tmp18149
                                               (let ((__tmp18150
                                                      (let ((__tmp18151
                                                             (let ((__tmp18152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18153
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp18153 _args8997_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp18152))))
                (declare (not safe))
                (cons __tmp18151 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp18150))))
                                          (declare (not safe))
                                          (cons _bind8996_ __tmp18149))))
                                   (declare (not safe))
                                   (cons 'let __tmp18148))))
                              (_K90029100_
                               (lambda (_rest9017_ _e9018_)
                                 (let* ((___stx1740717408_ _e9018_)
                                        (_g90239041_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1740717408_)))))
                                   (let ((___kont1740917410_
                                          (lambda ()
                                            (let ((__tmp18154
                                                   (let ((__tmp18155
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _e9018_))))
                                                     (declare (not safe))
                                                     (cons __tmp18155
                                                           _args8997_))))
                                              (declare (not safe))
                                              (_lp8991_
                                               _rest9017_
                                               _bind8996_
                                               __tmp18154))))
                                         (___kont1741117412_
                                          (lambda ()
                                            (let ((__tmp18156
                                                   (let ((__tmp18157
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _e9018_))))
                                                     (declare (not safe))
                                                     (cons __tmp18157
                                                           _args8997_))))
                                              (declare (not safe))
                                              (_lp8991_
                                               _rest9017_
                                               _bind8996_
                                               __tmp18156))))
                                         (___kont1741317414_
                                          (lambda ()
                                            (let ((_tmp9048_
                                                   (make-symbol
                                                    (gensym '__tmp))))
                                              (let ((__tmp18159
                                                     (let ((__tmp18160
                                                            (let ((__tmp18161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp18162
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _e9018_))))
                             (declare (not safe))
                             (cons __tmp18162 '()))))
                      (declare (not safe))
                      (cons _tmp9048_ __tmp18161))))
               (declare (not safe))
               (cons __tmp18160 _bind8996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp18158
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp9048_
                                                             _args8997_))))
                                                (declare (not safe))
                                                (_lp8991_
                                                 _rest9017_
                                                 __tmp18159
                                                 __tmp18158))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1740717408_))
                                         (let ((_e90279079_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1740717408_))))
                                           (let ((_tl90259084_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e90279079_)))
                                                 (_hd90269082_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e90279079_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd90269082_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd90269082_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl90259084_))
                                                         (let ((_e90309087_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl90259084_))))
                   (let ((_tl90289092_
                          (let () (declare (not safe)) (##cdr _e90309087_)))
                         (_hd90299090_
                          (let () (declare (not safe)) (##car _e90309087_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl90289092_))
                         (___kont1740917410_)
                         (___kont1741317414_))))
                 (___kont1741317414_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd90269082_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl90259084_))
                     (let ((_e90369064_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl90259084_))))
                       (let ((_tl90349069_
                              (let ()
                                (declare (not safe))
                                (##cdr _e90369064_)))
                             (_hd90359067_
                              (let ()
                                (declare (not safe))
                                (##car _e90369064_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl90349069_))
                             (___kont1741117412_)
                             (___kont1741317414_))))
                     (___kont1741317414_))
                 (___kont1741317414_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1741317414_))))
                                         (___kont1741317414_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest89989006_))
                             (let ((_hd90039103_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest89989006_)))
                                   (_tl90049105_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest89989006_))))
                               (let* ((_e9108_ _hd90039103_)
                                      (_rest9110_ _tl90049105_))
                                 (declare (not safe))
                                 (_K90029100_ _rest9110_ _e9108_)))
                             (let ()
                               (declare (not safe))
                               (_else90009014_)))))))
               _hd89288966_
               _hd89258958_
               _hd89228950_)
              (let () (declare (not safe)) (_g89138934_ _g89148937_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g89138934_ _g89148937_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g89138934_ _g89148937_)))))
                              (let ()
                                (declare (not safe))
                                (_g89138934_ _g89148937_)))))
                      (let ()
                        (declare (not safe))
                        (_g89138934_ _g89148937_))))))
          (declare (not safe))
          (_g89129112_ _stx8911_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_stx8691_)
        (let* ((_g86938718_
                (lambda (_g86948715_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86948715_))))
               (_g86928908_
                (lambda (_g86948721_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g86948721_))
                      (let ((_e87018723_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g86948721_))))
                        (let ((_hd87008726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87018723_)))
                              (_tl86998728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87018723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl86998728_))
                              (let ((_e87048731_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl86998728_))))
                                (let ((_hd87038734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87048731_)))
                                      (_tl87028736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87048731_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl87028736_))
                                      (let ((_e87078739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl87028736_))))
                                        (let ((_hd87068742_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e87078739_)))
                                              (_tl87058744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e87078739_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl87058744_))
                                              (let ((_e87108747_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl87058744_))))
                                                (let ((_hd87098750_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e87108747_)))
                                                      (_tl87088752_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e87108747_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl87088752_))
                                                      (let ((_e87138755_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl87088752_))))
                (let ((_hd87128758_
                       (let () (declare (not safe)) (##car _e87138755_)))
                      (_tl87118760_
                       (let () (declare (not safe)) (##cdr _e87138755_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl87118760_))
                      ((lambda (_L8763_ _L8764_ _L8765_ _L8766_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp18190
                                    (let ((__tmp18198
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e _L8764_)))
                                          (__tmp18191
                                           (let ((__tmp18197
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _L8763_)))
                                                 (__tmp18192
                                                  (let ((__tmp18196
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _L8765_)))
                                                        (__tmp18193
                                                         (let ((__tmp18195
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e _L8766_)))
                       (__tmp18194
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp18195 __tmp18194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18196
                                                          __tmp18193))))
                                             (declare (not safe))
                                             (cons __tmp18197 __tmp18192))))
                                      (declare (not safe))
                                      (cons __tmp18198 __tmp18191))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp18190))
                             (let _lp8787_ ((_rest8790_
                                             (let ((__tmp18187
                                                    (let ((__tmp18188
                                                           (let ((__tmp18189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L8764_ '()))))
                     (declare (not safe))
                     (cons _L8763_ __tmp18189))))
              (declare (not safe))
              (cons _L8765_ __tmp18188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L8766_ __tmp18187)))
                                            (_bind8792_ '())
                                            (_args8793_ '()))
                               (let* ((_rest87948802_ _rest8790_)
                                      (_else87968810_
                                       (lambda ()
                                         (let ((__tmp18172
                                                (let ((__tmp18173
                                                       (let ((__tmp18174
                                                              (let ((__tmp18175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18176
                                    (let ((__tmp18177
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp18177 _args8793_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp18176))))
                        (declare (not safe))
                        (cons __tmp18175 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp18174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind8792_
                                                        __tmp18173))))
                                           (declare (not safe))
                                           (cons 'let __tmp18172))))
                                      (_K87988896_
                                       (lambda (_rest8813_ _e8814_)
                                         (let* ((___stx1745317454_ _e8814_)
                                                (_g88198837_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx1745317454_)))))
                                           (let ((___kont1745517456_
                                                  (lambda ()
                                                    (let ((__tmp18178
                                                           (let ((__tmp18179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8814_))))
                     (declare (not safe))
                     (cons __tmp18179 _args8793_))))
              (declare (not safe))
              (_lp8787_ _rest8813_ _bind8792_ __tmp18178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1745717458_
                                                  (lambda ()
                                                    (let ((__tmp18180
                                                           (let ((__tmp18181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8814_))))
                     (declare (not safe))
                     (cons __tmp18181 _args8793_))))
              (declare (not safe))
              (_lp8787_ _rest8813_ _bind8792_ __tmp18180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1745917460_
                                                  (lambda ()
                                                    (let ((_tmp8844_
                                                           (make-symbol
                                                            (gensym '__tmp))))
                                                      (let ((__tmp18183
                                                             (let ((__tmp18184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18185
                                   (let ((__tmp18186
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e _e8814_))))
                                     (declare (not safe))
                                     (cons __tmp18186 '()))))
                              (declare (not safe))
                              (cons _tmp8844_ __tmp18185))))
                       (declare (not safe))
                       (cons __tmp18184 _bind8792_)))
                    (__tmp18182
                     (let ()
                       (declare (not safe))
                       (cons _tmp8844_ _args8793_))))
                (declare (not safe))
                (_lp8787_ _rest8813_ __tmp18183 __tmp18182))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx1745317454_))
                                                 (let ((_e88238875_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx1745317454_))))
                                                   (let ((_tl88218880_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e88238875_)))
                                                         (_hd88228878_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e88238875_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd88228878_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd88228878_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl88218880_))
                         (let ((_e88268883_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl88218880_))))
                           (let ((_tl88248888_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e88268883_)))
                                 (_hd88258886_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e88268883_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl88248888_))
                                 (___kont1745517456_)
                                 (___kont1745917460_))))
                         (___kont1745917460_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd88228878_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl88218880_))
                             (let ((_e88328860_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl88218880_))))
                               (let ((_tl88308865_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e88328860_)))
                                     (_hd88318863_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e88328860_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl88308865_))
                                     (___kont1745717458_)
                                     (___kont1745917460_))))
                             (___kont1745917460_))
                         (___kont1745917460_)))
                 (___kont1745917460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1745917460_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest87948802_))
                                     (let ((_hd87998899_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest87948802_)))
                                           (_tl88008901_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest87948802_))))
                                       (let* ((_e8904_ _hd87998899_)
                                              (_rest8906_ _tl88008901_))
                                         (declare (not safe))
                                         (_K87988896_ _rest8906_ _e8904_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else87968810_)))))))
                       _hd87128758_
                       _hd87098750_
                       _hd87068742_
                       _hd87038734_)
                      (let ()
                        (declare (not safe))
                        (_g86938718_ _g86948721_)))))
              (let () (declare (not safe)) (_g86938718_ _g86948721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g86938718_ _g86948721_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g86938718_ _g86948721_)))))
                              (let ()
                                (declare (not safe))
                                (_g86938718_ _g86948721_)))))
                      (let ()
                        (declare (not safe))
                        (_g86938718_ _g86948721_))))))
          (declare (not safe))
          (_g86928908_ _stx8691_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_stx8545_)
        (letrec ((_import-set-template8547_
                  (lambda (_in8643_ _phi8644_)
                    (let ((_iphi8646_
                           (fx+ _phi8644_
                                (##direct-structure-ref
                                 _in8643_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports8647_
                           (##structure-ref
                            (##direct-structure-ref
                             _in8643_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp8649_ ((_rest8651_ _imports8647_) (_r8652_ '()))
                        (let* ((_rest86538661_ _rest8651_)
                               (_else86558669_ (lambda () _r8652_))
                               (_K86578679_
                                (lambda (_rest8672_ _in8673_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in8673_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi8646_))
                                          (let ((__tmp18205
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in8673_ _r8652_))))
                                            (declare (not safe))
                                            (_lp8649_ _rest8672_ __tmp18205))
                                          (let ()
                                            (declare (not safe))
                                            (_lp8649_ _rest8672_ _r8652_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in8673_
                                             'gx#module-import::t))
                                          (let ((_iphi8675_
                                                 (fx+ _phi8644_
                                                      (##direct-structure-ref
                                                       _in8673_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi8675_))
                                                (let ((__tmp18203
                                                       (let ((__tmp18204
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in8673_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp18204
                                                               _r8652_))))
                                                  (declare (not safe))
                                                  (_lp8649_
                                                   _rest8672_
                                                   __tmp18203))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp8649_
                                                   _rest8672_
                                                   _r8652_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in8673_
                                                 'gx#import-set::t))
                                              (let ((_xphi8677_
                                                     (fx+ _iphi8646_
                                                          (##direct-structure-ref
                                                           _in8673_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi8677_))
                                                    (let ((__tmp18201
                                                           (let ((__tmp18202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in8673_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp18202 _r8652_))))
              (declare (not safe))
              (_lp8649_ _rest8672_ __tmp18201))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi8677_)
                                                        (let ((__tmp18199
                                                               (let ((__tmp18200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template8547_
                                 _in8673_
                                 _iphi8646_))))
                         (declare (not safe))
                         (foldl1 cons _r8652_ __tmp18200))))
                  (declare (not safe))
                  (_lp8649_ _rest8672_ __tmp18199))
                (let () (declare (not safe)) (_lp8649_ _rest8672_ _r8652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp8649_
                                                 _rest8672_
                                                 _r8652_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest86538661_))
                              (let ((_hd86588682_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest86538661_)))
                                    (_tl86598684_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest86538661_))))
                                (let* ((_in8687_ _hd86588682_)
                                       (_rest8689_ _tl86598684_))
                                  (declare (not safe))
                                  (_K86578679_ _rest8689_ _in8687_)))
                              (let ()
                                (declare (not safe))
                                (_else86558669_)))))))))
          (let* ((_g85498559_
                  (lambda (_g85508556_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g85508556_))))
                 (_g85488640_
                  (lambda (_g85508562_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g85508562_))
                        (let ((_e85548564_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g85508562_))))
                          (let ((_hd85538567_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e85548564_)))
                                (_tl85528569_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e85548564_))))
                            ((lambda (_L8572_)
                               (let ((_ht8583_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let _lp8585_ ((_rest8587_ _L8572_)
                                                (_loads8588_ '()))
                                   (letrec ((_K8590_ (lambda (_ctx8633_
                                                              _rest8634_)
                                                       (let ((_id8636_
                                                              (##structure-ref
                                                               _ctx8633_
                                                               '1
                                                               gx#expander-context::t
                                                               '#f)))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (table-ref _ht8583_ _id8636_ '#f))
                     (let ()
                       (declare (not safe))
                       (_lp8585_ _rest8634_ _loads8588_))
                     (let ((_rt8638_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id8636_))
                             '"__rt")))
                       (let ()
                         (declare (not safe))
                         (table-set! _ht8583_ _id8636_ _rt8638_))
                       (let ((__tmp18206
                              (let ()
                                (declare (not safe))
                                (cons _rt8638_ _loads8588_))))
                         (declare (not safe))
                         (_lp8585_ _rest8634_ __tmp18206))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest85918599_ _rest8587_)
                                            (_else85938611_
                                             (lambda ()
                                               (let ((__tmp18207
                                                      (map (lambda (_g86068608_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g86068608_))
                   (reverse _loads8588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp18207))))
                                            (_K85958621_
                                             (lambda (_rest8614_ _in8615_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in8615_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K8590_ _in8615_
                                                              _rest8614_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in8615_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp18211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in8615_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp18211))
                   (let ((__tmp18210
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in8615_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K8590_ __tmp18210 _rest8614_))
                   (let ()
                     (declare (not safe))
                     (_lp8585_ _rest8614_ _loads8588_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in8615_
                      'gx#import-set::t))
                   (let ((_phi8617_
                          (##direct-structure-ref
                           _in8615_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi8617_))
                         (let ((__tmp18209
                                (##direct-structure-ref
                                 _in8615_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K8590_ __tmp18209 _rest8614_))
                         (if (fxpositive? _phi8617_)
                             (let* ((_deps8619_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template8547_
                                        _in8615_
                                        '0)))
                                    (__tmp18208
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons _rest8614_ _deps8619_))))
                               (declare (not safe))
                               (_lp8585_ __tmp18208 _loads8588_))
                             (let ()
                               (declare (not safe))
                               (_lp8585_ _rest8614_ _loads8588_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx8545_
                      _in8615_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest85918599_))
                                           (let ((_hd85968624_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest85918599_)))
                                                 (_tl85978626_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest85918599_))))
                                             (let* ((_in8629_ _hd85968624_)
                                                    (_rest8631_ _tl85978626_))
                                               (declare (not safe))
                                               (_K85958621_
                                                _rest8631_
                                                _in8629_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else85938611_))))))))
                             _tl85528569_)))
                        (let ()
                          (declare (not safe))
                          (_g85498559_ _g85508562_))))))
            (declare (not safe))
            (_g85488640_ _stx8545_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_stx8361_)
        (letrec ((_add-lift!8363_
                  (lambda (_expr8543_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp18212 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr8543_ __tmp18212)))))
                 (_generate-syntax-quote8364_
                  (lambda (_id8540_ _marks8541_)
                    (let ((__tmp18213
                           (let ((__tmp18214
                                  (let ((__tmp18218
                                         (let ((__tmp18219
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id8540_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp18219)))
                                        (__tmp18215
                                         (let ((__tmp18216
                                                (let ((__tmp18217
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks8541_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp18217))))
                                           (declare (not safe))
                                           (cons '#f __tmp18216))))
                                    (declare (not safe))
                                    (cons __tmp18218 __tmp18215))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp18214))))
                      (declare (not safe))
                      (cons '##structure __tmp18213))))
                 (_generate-simple8365_
                  (lambda (_stxq8535_)
                    (let ((_gid8537_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid8538_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq8535_))))
                      (let ((__tmp18220
                             (let ((__tmp18221
                                    (let ((__tmp18222
                                           (let ((__tmp18223
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote8364_
                                                     _qid8538_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp18223 '()))))
                                      (declare (not safe))
                                      (cons _gid8537_ __tmp18222))))
                               (declare (not safe))
                               (cons 'define __tmp18221))))
                        (declare (not safe))
                        (_add-lift!8363_ __tmp18220))
                      (let ((__tmp18224 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (table-set! __tmp18224 _stxq8535_ _gid8537_))
                      _gid8537_)))
                 (_generate-serialized8366_
                  (lambda (_stxq8525_ _marks8526_)
                    (let* ((_mark-refs8528_
                            (map _generate-mark8367_ _marks8526_))
                           (_gid8530_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid8532_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq8525_))))
                      (let ((__tmp18225
                             (let ((__tmp18226
                                    (let ((__tmp18227
                                           (let ((__tmp18228
                                                  (let ((__tmp18229
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs8528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote8364_
                                                     _qid8532_
                                                     __tmp18229))))
                                             (declare (not safe))
                                             (cons __tmp18228 '()))))
                                      (declare (not safe))
                                      (cons _gid8530_ __tmp18227))))
                               (declare (not safe))
                               (cons 'define __tmp18226))))
                        (declare (not safe))
                        (_add-lift!8363_ __tmp18225))
                      (let ((__tmp18230 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (table-set! __tmp18230 _stxq8525_ _gid8530_))
                      _gid8530_)))
                 (_generate-mark8367_
                  (lambda (_mark8511_)
                    (let ((_$e8513_
                           (let ((__tmp18231 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (table-ref __tmp18231 _mark8511_ '#f))))
                      (if _$e8513_
                          (values _$e8513_)
                          (let* ((_gid8516_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr8518_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark8368_ _mark8511_)))
                                 (_ctx8520_
                                  (let ((__tmp18232
                                         (##structure-ref
                                          _mark8511_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp18232)))
                                 (_ctx-ref8522_
                                  (if (let ((__tmp18237
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx8520_ __tmp18237))
                                      '(gx#current-expander-context)
                                      (let ((__tmp18233
                                             (let ((__tmp18234
                                                    (let ((__tmp18235
                                                           (let ((__tmp18236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref8369_ _ctx8520_))))
                     (declare (not safe))
                     (cons __tmp18236 '()))))
              (declare (not safe))
              (cons 'quote __tmp18235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18234 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module __tmp18233)))))
                            (let ((__tmp18238 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (table-set! __tmp18238 _mark8511_ _gid8516_))
                            (let ((__tmp18239
                                   (let ((__tmp18240
                                          (let ((__tmp18241
                                                 (let ((__tmp18242
                                                        (let ((__tmp18243
                                                               (let ((__tmp18245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp18246
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr8518_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp18246)))
                             (__tmp18244
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref8522_ '()))))
                         (declare (not safe))
                         (cons __tmp18245 __tmp18244))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp18243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18242 '()))))
                                            (declare (not safe))
                                            (cons _gid8516_ __tmp18241))))
                                     (declare (not safe))
                                     (cons 'define __tmp18240))))
                              (declare (not safe))
                              (_add-lift!8363_ __tmp18239))
                            _gid8516_)))))
                 (_serialize-mark8368_
                  (lambda (_mark8458_)
                    (letrec ((_quote-e8460_
                              (lambda (_sym8509_)
                                (if (interned-symbol? _sym8509_)
                                    _sym8509_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym8509_))))))
                      (let* ((_mark84618470_ _mark8458_)
                             (_E84638474_
                              (lambda ()
                                (error '"No clause matching" _mark84618470_)))
                             (_K84648486_
                              (lambda (_trace8477_
                                       _phi8478_
                                       _ctx8479_
                                       _subst8480_)
                                (let* ((_subs8482_
                                        (if _subst8480_
                                            (let ()
                                              (declare (not safe))
                                              (table->list _subst8480_))
                                            '()))
                                       (__tmp18247
                                        (map (lambda (_pair8484_)
                                               (let ((__tmp18250
                                                      (let ((__tmp18251
                                                             (car _pair8484_)))
                                                        (declare (not safe))
                                                        (_quote-e8460_
                                                         __tmp18251)))
                                                     (__tmp18248
                                                      (let ((__tmp18249
                                                             (cdr _pair8484_)))
                                                        (declare (not safe))
                                                        (_quote-e8460_
                                                         __tmp18249))))
                                                 (declare (not safe))
                                                 (cons __tmp18250 __tmp18248)))
                                             _subs8482_)))
                                  (declare (not safe))
                                  (cons _phi8478_ __tmp18247)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark84618470_
                               'gx#expander-mark::t))
                            (let* ((_e84658489_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark84618470_ '1)))
                                   (_subst8492_ _e84658489_)
                                   (_e84668494_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark84618470_ '2)))
                                   (_ctx8497_ _e84668494_)
                                   (_e84678499_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark84618470_ '3)))
                                   (_phi8502_ _e84678499_)
                                   (_e84688504_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark84618470_ '4)))
                                   (_trace8507_ _e84688504_))
                              (declare (not safe))
                              (_K84648486_
                               _trace8507_
                               _phi8502_
                               _ctx8497_
                               _subst8492_))
                            (let () (declare (not safe)) (_E84638474_)))))))
                 (_context-ref8369_
                  (lambda (_ctx8445_)
                    (if (let ((__tmp18258
                               (##structure-ref
                                _ctx8445_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp18258
                           'gx#module-context::t))
                        (let ((_ctx-ref8447_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested8371_ _ctx8445_)))
                              (_ctx-origin8448_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin8370_ _ctx8445_)))
                              (_origin8449_
                               (let ((__tmp18252
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin8370_ __tmp18252))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin8449_ _ctx-origin8448_))
                              (let ((_ref8451_
                                     (let ((__tmp18253
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested8371_ __tmp18253))))
                                (let _lp8453_ ((_ref8455_ (cdr _ref8451_))
                                               (_ctx-ref8456_
                                                (cdr _ctx-ref8447_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref8455_))
                                           (let ((__tmp18257 (car _ref8455_))
                                                 (__tmp18256
                                                  (car _ctx-ref8456_)))
                                             (declare (not safe))
                                             (eq? __tmp18257 __tmp18256)))
                                      (let ((__tmp18255 (cdr _ref8455_))
                                            (__tmp18254 (cdr _ctx-ref8456_)))
                                        (declare (not safe))
                                        (_lp8453_ __tmp18255 __tmp18254))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref8456_)))))
                              _ctx-ref8447_))
                        (make-symbol
                         '":"
                         (##structure-ref
                          _ctx8445_
                          '1
                          gx#expander-context::t
                          '#f)))))
                 (_context-ref-origin8370_
                  (lambda (_ctx8437_)
                    (let _lp8439_ ((_ctx8441_ _ctx8437_))
                      (let ((_super8443_
                             (##structure-ref
                              _ctx8441_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super8443_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp8439_ _super8443_))
                            _ctx8441_)))))
                 (_context-ref-nested8371_
                  (lambda (_ctx8428_)
                    (let _lp8430_ ((_ctx8432_ _ctx8428_) (_r8433_ '()))
                      (let ((_super8435_
                             (##structure-ref
                              _ctx8432_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super8435_
                               'gx#module-context::t))
                            (let ((__tmp18260
                                   (let ((__tmp18261
                                          (car (##structure-ref
                                                _ctx8432_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp18261 _r8433_))))
                              (declare (not safe))
                              (_lp8430_ _super8435_ __tmp18260))
                            (let ((__tmp18259
                                   (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx8432_
                                     '1
                                     gx#expander-context::t
                                     '#f))))
                              (declare (not safe))
                              (cons __tmp18259 _r8433_))))))))
          (let* ((_g83738386_
                  (lambda (_g83748383_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g83748383_))))
                 (_g83728425_
                  (lambda (_g83748389_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g83748389_))
                        (let ((_e83788391_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g83748389_))))
                          (let ((_hd83778394_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e83788391_)))
                                (_tl83768396_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e83788391_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl83768396_))
                                (let ((_e83818399_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl83768396_))))
                                  (let ((_hd83808402_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e83818399_)))
                                        (_tl83798404_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e83818399_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl83798404_))
                                        ((lambda (_L8407_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L8407_))
                                               (let ((_$e8420_
                                                      (let ((__tmp18262
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (table-ref
                                                         __tmp18262
                                                         _L8407_
                                                         '#f))))
                                                 (if _$e8420_
                                                     (values _$e8420_)
                                                     (let ((_marks8423_
                                                            (##direct-structure-ref
                                                             _L8407_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks8423_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple8365_
                                                              _L8407_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized8366_
                                                              _L8407_
                                                              _marks8423_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L8407_))))
                                         _hd83808402_)
                                        (let ()
                                          (declare (not safe))
                                          (_g83738386_ _g83748389_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g83738386_ _g83748389_)))))
                        (let ()
                          (declare (not safe))
                          (_g83738386_ _g83748389_))))))
            (declare (not safe))
            (_g83728425_ _stx8361_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_stx8294_)
        (let* ((_g82968313_
                (lambda (_g82978310_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82978310_))))
               (_g82958358_
                (lambda (_g82978316_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g82978316_))
                      (let ((_e83028318_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g82978316_))))
                        (let ((_hd83018321_
                               (let ()
                                 (declare (not safe))
                                 (##car _e83028318_)))
                              (_tl83008323_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e83028318_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl83008323_))
                              (let ((_e83058326_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl83008323_))))
                                (let ((_hd83048329_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e83058326_)))
                                      (_tl83038331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e83058326_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl83038331_))
                                      (let ((_e83088334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl83038331_))))
                                        (let ((_hd83078337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e83088334_)))
                                              (_tl83068339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e83088334_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl83068339_))
                                              ((lambda (_L8342_ _L8343_)
                                                 (let ((__tmp18263
                                                        (let ((__tmp18266
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L8343_)))
                      (__tmp18264
                       (let ((__tmp18265
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _L8342_))))
                         (declare (not safe))
                         (cons __tmp18265 '()))))
                  (declare (not safe))
                  (cons __tmp18266 __tmp18264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp18263)))
                                               _hd83078337_
                                               _hd83048329_)
                                              (let ()
                                                (declare (not safe))
                                                (_g82968313_ _g82978316_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g82968313_ _g82978316_)))))
                              (let ()
                                (declare (not safe))
                                (_g82968313_ _g82978316_)))))
                      (let ()
                        (declare (not safe))
                        (_g82968313_ _g82978316_))))))
          (declare (not safe))
          (_g82958358_ _stx8294_))))
    (define gxc#generate-meta-begin%
      (lambda (_stx8243_ _state8244_)
        (let* ((_g82468256_
                (lambda (_g82478253_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82478253_))))
               (_g82458291_
                (lambda (_g82478259_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g82478259_))
                      (let ((_e82518261_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g82478259_))))
                        (let ((_hd82508264_
                               (let ()
                                 (declare (not safe))
                                 (##car _e82518261_)))
                              (_tl82498266_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e82518261_))))
                          ((lambda (_L8269_)
                             (let* ((_c-body8283_
                                     (map (lambda (_g82788280_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e
                                               _g82788280_
                                               _state8244_)))
                                          _L8269_))
                                    (_c-body8288_
                                     (filter (lambda (_$obj8285_)
                                               (let ((__tmp18267
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj8285_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp18267)))
                                             _c-body8283_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body8288_))))
                           _tl82498266_)))
                      (let ()
                        (declare (not safe))
                        (_g82468256_ _g82478259_))))))
          (declare (not safe))
          (_g82458291_ _stx8243_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_stx8151_ _state8152_)
        (let* ((_g81548164_
                (lambda (_g81558161_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g81558161_))))
               (_g81538240_
                (lambda (_g81558167_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g81558167_))
                      (let ((_e81598169_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g81558167_))))
                        (let ((_hd81588172_
                               (let ()
                                 (declare (not safe))
                                 (##car _e81598169_)))
                              (_tl81578174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e81598169_))))
                          ((lambda (_L8177_)
                             (let* ((_phi8187_
                                     (let ((__tmp18268
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp18268 '1)))
                                    (_block8189_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        _state8152_
                                        _phi8187_)))
                                    (_compiled8192_
                                     (let ((__tmp18269
                                            (lambda ()
                                              (let ((__tmp18270
                                                     (let ((__tmp18271
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp18271
                                                             _L8177_))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp18270
                                                 _state8152_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp18269
                                        gx#current-expander-phi
                                        _phi8187_))))
                               (let* ((_g81958205_
                                       (lambda (_g81968202_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g81968202_))))
                                      (_g81948237_
                                       (lambda (_g81968208_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g81968208_))
                                             (let ((_e82008210_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e _g81968208_))))
                                               (let ((_hd81998213_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e82008210_)))
                                                     (_tl81988215_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e82008210_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd81998213_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd81998213_))
                                                         ((lambda (_L8218_)
                                                            (let ((_c-body8235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj8232_)
                                     (let ((__tmp18272
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj8232_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp18272)))
                                   _L8218_)))
                      (if _block8189_
                          (let ((__tmp18273
                                 (let ((__tmp18274
                                        (let ((__tmp18275
                                               (let ((__tmp18279
                                                      (let ((__tmp18280
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp18280)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18276
                                                      (let ((__tmp18277
                                                             (let ((__tmp18278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block8189_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp18278))))
                (declare (not safe))
                (cons __tmp18277 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18279
                                                       __tmp18276))))
                                          (declare (not safe))
                                          (cons '%#call __tmp18275))))
                                   (declare (not safe))
                                   (cons __tmp18274 _c-body8235_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp18273))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body8235_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body8235_))))))
                  _tl81988215_)
                 (let () (declare (not safe)) (_g81958205_ _g81968208_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g81958205_
                                                        _g81968208_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g81958205_ _g81968208_))))))
                                 (declare (not safe))
                                 (_g81948237_ _compiled8192_))))
                           _tl81578174_)))
                      (let ()
                        (declare (not safe))
                        (_g81548164_ _g81558167_))))))
          (declare (not safe))
          (_g81538240_ _stx8151_))))
    (define gxc#generate-meta-module%
      (lambda (_stx8082_ _state8083_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state8083_))
        (let* ((_g80858099_
                (lambda (_g80868096_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g80868096_))))
               (_g80848148_
                (lambda (_g80868102_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g80868102_))
                      (let ((_e80918104_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g80868102_))))
                        (let ((_hd80908107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e80918104_)))
                              (_tl80898109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e80918104_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl80898109_))
                              (let ((_e80948112_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl80898109_))))
                                (let ((_hd80938115_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80948112_)))
                                      (_tl80928117_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80948112_))))
                                  ((lambda (_L8120_ _L8121_)
                                     (let ((_key8134_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L8121_))))
                                       (if (interned-symbol? _key8134_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx8082_
                                              _L8121_
                                              _key8134_)))
                                       (let* ((_ctx8136_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L8121_)))
                                              (_code8139_
                                               (let ((__tmp18281
                                                      (lambda ()
                                                        (let ((__tmp18282
                                                               (##structure-ref
                                                                _ctx8136_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           __tmp18282
                                                           _state8083_)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp18281
                                                  gx#current-expander-context
                                                  _ctx8136_)))
                                              (_rt8141_
                                               (let ((__tmp18283
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __tmp18283
                                                  _ctx8136_
                                                  '#f)))
                                              (_loader8143_
                                               (if _rt8141_
                                                   (let ((__tmp18284
                                                          (let ((__tmp18285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp18289
                                (let ((__tmp18290
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp18290)))
                               (__tmp18286
                                (let ((__tmp18287
                                       (let ((__tmp18288
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt8141_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp18288))))
                                  (declare (not safe))
                                  (cons __tmp18287 '()))))
                           (declare (not safe))
                           (cons __tmp18289 __tmp18286))))
                    (declare (not safe))
                    (cons '%#call __tmp18285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18284 '()))
                                                   '()))
                                              (_modid8145_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L8121_))))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            _state8083_))
                                         (let ((__tmp18291
                                                (let ((__tmp18292
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code8139_
                                                               _loader8143_))))
                                                  (declare (not safe))
                                                  (cons _modid8145_
                                                        __tmp18292))))
                                           (declare (not safe))
                                           (cons '%#module __tmp18291)))))
                                   _tl80928117_
                                   _hd80938115_)))
                              (let ()
                                (declare (not safe))
                                (_g80858099_ _g80868102_)))))
                      (let ()
                        (declare (not safe))
                        (_g80858099_ _g80868102_))))))
          (declare (not safe))
          (_g80848148_ _stx8082_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx8072_ _context-chain8073_)
        (let _lp8075_ ((_ctx8077_ _ctx8072_) (_path8078_ '()))
          (let ((_super8080_
                 (##structure-ref _ctx8077_ '3 gx#phi-context::t '#f)))
            (if (memq _super8080_ _context-chain8073_)
                (let ((__tmp18296
                       (let ((__tmp18297
                              (car (##structure-ref
                                    _ctx8077_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp18297 _path8078_))))
                  (declare (not safe))
                  (cons '#f __tmp18296))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super8080_
                       'gx#module-context::t))
                    (let ((__tmp18294
                           (let ((__tmp18295
                                  (car (##structure-ref
                                        _ctx8077_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp18295 _path8078_))))
                      (declare (not safe))
                      (_lp8075_ _super8080_ __tmp18294))
                    (let ((__tmp18293
                           (make-symbol
                            '":"
                            (##structure-ref
                             _ctx8077_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (declare (not safe))
                      (cons __tmp18293 _path8078_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp8067_ ((_ctx8069_ (gx#current-expander-context)) (_r8070_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx8069_ 'gx#module-context::t))
              (let ((__tmp18299
                     (##structure-ref _ctx8069_ '3 gx#phi-context::t '#f))
                    (__tmp18298
                     (let () (declare (not safe)) (cons _ctx8069_ _r8070_))))
                (declare (not safe))
                (_lp8067_ __tmp18299 __tmp18298))
              _r8070_))))
    (define gxc#generate-meta-import%
      (lambda (_stx7836_ _state7837_)
        (letrec* ((_context-chain7839_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec7840_
                   (lambda (_in8003_)
                     (let* ((_in80048016_ _in8003_)
                            (_E80068020_
                             (lambda ()
                               (error '"No clause matching" _in80048016_)))
                            (_K80078030_
                             (lambda (_phi8023_
                                      _name8024_
                                      _src-name8025_
                                      _src-phi8026_
                                      _src-key8027_
                                      _src-ctx8028_)
                               (let ((__tmp18300
                                      (let ((__tmp18304
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name8024_)))
                                            (__tmp18301
                                             (let ((__tmp18302
                                                    (let ((__tmp18303
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name8025_))))
                                                      (declare (not safe))
                                                      (cons __tmp18303 '()))))
                                               (declare (not safe))
                                               (cons _src-phi8026_
                                                     __tmp18302))))
                                        (declare (not safe))
                                        (cons __tmp18304 __tmp18301))))
                                 (declare (not safe))
                                 (cons _phi8023_ __tmp18300)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in80048016_
                              'gx#module-import::t))
                           (let ((_e80088033_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _in80048016_ '1))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e80088033_
                                    'gx#module-export::t))
                                 (let* ((_e80118036_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e80088033_ '1)))
                                        (_src-ctx8039_ _e80118036_)
                                        (_e80128041_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e80088033_ '2)))
                                        (_src-key8044_ _e80128041_)
                                        (_e80138046_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e80088033_ '3)))
                                        (_src-phi8049_ _e80138046_)
                                        (_e80148051_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e80088033_ '4)))
                                        (_src-name8054_ _e80148051_)
                                        (_e80098056_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in80048016_ '2)))
                                        (_name8059_ _e80098056_)
                                        (_e80108061_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in80048016_ '3)))
                                        (_phi8064_ _e80108061_))
                                   (declare (not safe))
                                   (_K80078030_
                                    _phi8064_
                                    _name8059_
                                    _src-name8054_
                                    _src-phi8049_
                                    _src-key8044_
                                    _src-ctx8039_))
                                 (let () (declare (not safe)) (_E80068020_))))
                           (let () (declare (not safe)) (_E80068020_))))))
                  (_make-import-path7841_
                   (lambda (_ctx8001_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx8001_
                        _context-chain7839_))))
                  (_make-import-spec-in7842_
                   (lambda (_ctx7998_ _in7999_)
                     (let ((__tmp18305
                            (let ((__tmp18307
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path7841_ _ctx7998_)))
                                  (__tmp18306 (reverse _in7999_)))
                              (declare (not safe))
                              (cons __tmp18307 __tmp18306))))
                       (declare (not safe))
                       (cons 'spec: __tmp18305)))))
          (let () (declare (not safe)) (gxc#meta-state-end-phi! _state7837_))
          (let* ((_g78447854_
                  (lambda (_g78457851_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g78457851_))))
                 (_g78437995_
                  (lambda (_g78457857_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g78457857_))
                        (let ((_e78497859_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g78457857_))))
                          (let ((_hd78487862_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e78497859_)))
                                (_tl78477864_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e78497859_))))
                            ((lambda (_L7867_)
                               (let _lp7878_ ((_rest7880_ _L7867_)
                                              (_current-src7881_ '#f)
                                              (_current-in7882_ '())
                                              (_r7883_ '()))
                                 (let* ((_rest78847892_ _rest7880_)
                                        (_else78867902_
                                         (lambda ()
                                           (let* ((_r7900_ (if _current-src7881_
                                                               (let ((__tmp18308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in7842_
                                 _current-src7881_
                                 _current-in7882_))))
                         (declare (not safe))
                         (cons __tmp18308 _r7883_))
                       _r7883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp18309
                                                   (reverse _r7900_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp18309))))
                                        (_K78887983_
                                         (lambda (_rest7905_ _in7906_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in7906_
                                                  'gx#module-import::t))
                                               (let* ((_in79077914_ _in7906_)
                                                      (_E79097918_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in79077914_)))
                                                      (_K79107923_
                                                       (lambda (_src-ctx7921_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _current-src7881_ _src-ctx7921_))
                     (let ((__tmp18325
                            (let ((__tmp18326
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec7840_ _in7906_))))
                              (declare (not safe))
                              (cons __tmp18326 _current-in7882_))))
                       (declare (not safe))
                       (_lp7878_
                        _rest7905_
                        _current-src7881_
                        __tmp18325
                        _r7883_))
                     (if _current-src7881_
                         (let ((__tmp18323
                                (let ((__tmp18324
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec7840_ _in7906_))))
                                  (declare (not safe))
                                  (cons __tmp18324 '())))
                               (__tmp18321
                                (let ((__tmp18322
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in7842_
                                          _current-src7881_
                                          _current-in7882_))))
                                  (declare (not safe))
                                  (cons __tmp18322 _r7883_))))
                           (declare (not safe))
                           (_lp7878_
                            _rest7905_
                            _src-ctx7921_
                            __tmp18323
                            __tmp18321))
                         (let ((__tmp18319
                                (let ((__tmp18320
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec7840_ _in7906_))))
                                  (declare (not safe))
                                  (cons __tmp18320 '()))))
                           (declare (not safe))
                           (_lp7878_
                            _rest7905_
                            _src-ctx7921_
                            __tmp18319
                            _r7883_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in79077914_
                                                        'gx#module-import::t))
                                                     (let ((_e79117926_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _in79077914_
                                                               '1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e79117926_
                                                              'gx#module-export::t))
                                                           (let* ((_e79127929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##vector-ref _e79117926_ '1)))
                          (_src-ctx7932_ _e79127929_))
                     (declare (not safe))
                     (_K79107923_ _src-ctx7932_))
                   (let () (declare (not safe)) (_E79097918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E79097918_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in7906_
                                                      'gx#import-set::t))
                                                   (let* ((_phi7934_
                                                           (##direct-structure-ref
                                                            _in7906_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src7936_
                                                           (##direct-structure-ref
                                                            _in7906_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in7976_
                                                           (let* ((_g79377946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path7841_ _src7936_)))
                          (_E79407950_
                           (lambda ()
                             (error '"No clause matching" _g79377946_))))
                     (let ((_K79427966_ (lambda (_path7964_) _path7964_))
                           (_K79417956_
                            (lambda (_path7954_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path7954_)))))
                       (if (let () (declare (not safe)) (##pair? _g79377946_))
                           (let ((_tl79447971_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g79377946_)))
                                 (_hd79437969_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g79377946_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl79447971_))
                                 (let ((_path7974_ _hd79437969_))
                                   (declare (not safe))
                                   (_K79427966_ _path7974_))
                                 (let ((_path7959_ _g79377946_))
                                   (declare (not safe))
                                   (_K79417956_ _path7959_))))
                           (let ((_path7959_ _g79377946_))
                             (declare (not safe))
                             (_K79417956_ _path7959_))))))
                  (_r7978_ (if _current-src7881_
                               (let ((__tmp18314
                                      (let ()
                                        (declare (not safe))
                                        (_make-import-spec-in7842_
                                         _current-src7881_
                                         _current-in7882_))))
                                 (declare (not safe))
                                 (cons __tmp18314 _r7883_))
                               _r7883_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp18315
                                                            (let ((__tmp18316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi7934_))
                               _src-in7976_
                               (let ((__tmp18317
                                      (let ((__tmp18318
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in7976_ '()))))
                                        (declare (not safe))
                                        (cons _phi7934_ __tmp18318))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp18317)))))
                      (declare (not safe))
                      (cons __tmp18316 _r7978_))))
               (declare (not safe))
               (_lp7878_ _rest7905_ '#f '() __tmp18315)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in7906_
                                                          'gx#module-context::t))
                                                       (let* ((_r7981_ (if _current-src7881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp18310
                                          (let ()
                                            (declare (not safe))
                                            (_make-import-spec-in7842_
                                             _current-src7881_
                                             _current-in7882_))))
                                     (declare (not safe))
                                     (cons __tmp18310 _r7883_))
                                   _r7883_))
                      (__tmp18311
                       (let ((__tmp18312
                              (let ((__tmp18313
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path7841_ _in7906_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp18313))))
                         (declare (not safe))
                         (cons __tmp18312 _r7981_))))
                 (declare (not safe))
                 (_lp7878_ _rest7905_ '#f '() __tmp18311))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest78847892_))
                                       (let ((_hd78897986_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest78847892_)))
                                             (_tl78907988_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest78847892_))))
                                         (let* ((_in7991_ _hd78897986_)
                                                (_rest7993_ _tl78907988_))
                                           (declare (not safe))
                                           (_K78887983_ _rest7993_ _in7991_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else78867902_))))))
                             _tl78477864_)))
                        (let ()
                          (declare (not safe))
                          (_g78447854_ _g78457857_))))))
            (declare (not safe))
            (_g78437995_ _stx7836_)))))
    (define gxc#generate-meta-export%
      (lambda (_stx7646_ _state7647_)
        (letrec* ((_context-chain7649_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path7650_
                   (lambda (_ctx7834_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx7834_
                        _context-chain7649_)))))
          (let* ((_g76527662_
                  (lambda (_g76537659_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g76537659_))))
                 (_g76517831_
                  (lambda (_g76537665_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g76537665_))
                        (let ((_e76577667_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g76537665_))))
                          (let ((_hd76567670_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e76577667_)))
                                (_tl76557672_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e76577667_))))
                            ((lambda (_L7675_)
                               (let _lp7686_ ((_rest7688_ _L7675_)
                                              (_r7689_ '()))
                                 (let* ((_rest76907698_ _rest7688_)
                                        (_else76927706_
                                         (lambda ()
                                           (let ((__tmp18327
                                                  (reverse _r7689_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp18327))))
                                        (_K76947819_
                                         (lambda (_rest7709_ _out7710_)
                                           (let* ((_out77117724_ _out7710_)
                                                  (_E77147728_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _out77117724_))))
                                             (let ((_K77187798_
                                                    (lambda (_name7794_
                                                             _phi7795_
                                                             _key7796_)
                                                      (let ((__tmp18328
                                                             (let ((__tmp18329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18330
                                   (let ((__tmp18331
                                          (let ((__tmp18334
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key7796_)))
                                                (__tmp18332
                                                 (let ((__tmp18333
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name7794_))))
                                                   (declare (not safe))
                                                   (cons __tmp18333 '()))))
                                            (declare (not safe))
                                            (cons __tmp18334 __tmp18332))))
                                     (declare (not safe))
                                     (cons _phi7795_ __tmp18331))))
                              (declare (not safe))
                              (cons 'spec: __tmp18330))))
                       (declare (not safe))
                       (cons __tmp18329 _r7689_))))
                (declare (not safe))
                (_lp7686_ _rest7709_ __tmp18328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K77157778_
                                                    (lambda (_phi7732_
                                                             _src7733_)
                                                      (let* ((_out7773_
                                                              (if _src7733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18335
                                 (let ((__tmp18336
                                        (let* ((_g77347743_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path7650_
                                                   _src7733_)))
                                               (_E77377747_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g77347743_))))
                                          (let ((_K77397763_
                                                 (lambda (_path7761_)
                                                   _path7761_))
                                                (_K77387753_
                                                 (lambda (_path7751_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in: _path7751_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g77347743_))
                                                (let ((_tl77417768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g77347743_)))
                                                      (_hd77407766_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g77347743_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl77417768_))
                                                      (let ((_path7771_
                                                             _hd77407766_))
                                                        (declare (not safe))
                                                        (_K77397763_
                                                         _path7771_))
                                                      (let ((_path7756_
                                                             _g77347743_))
                                                        (declare (not safe))
                                                        (_K77387753_
                                                         _path7756_))))
                                                (let ((_path7756_ _g77347743_))
                                                  (declare (not safe))
                                                  (_K77387753_
                                                   _path7756_)))))))
                                   (declare (not safe))
                                   (cons __tmp18336 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp18335))
                          '#t))
                     (_out7775_
                      (if (let () (declare (not safe)) (fxzero? _phi7732_))
                          _out7773_
                          (let ((__tmp18337
                                 (let ((__tmp18338
                                        (let ()
                                          (declare (not safe))
                                          (cons _out7773_ '()))))
                                   (declare (not safe))
                                   (cons _phi7732_ __tmp18338))))
                            (declare (not safe))
                            (cons 'phi: __tmp18337)))))
                (let ((__tmp18339
                       (let () (declare (not safe)) (cons _out7775_ _r7689_))))
                  (declare (not safe))
                  (_lp7686_ _rest7709_ __tmp18339))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match77137791_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out77117724_
                                                               'gx#export-set::t))
                                                            (let* ((_e77167781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out77117724_ '1)))
                           (_e77177786_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out77117724_ '2))))
                      (let ((_src7784_ _e77167781_) (_phi7789_ _e77177786_))
                        (let ()
                          (declare (not safe))
                          (_K77157778_ _phi7789_ _src7784_))))
                    (let () (declare (not safe)) (_E77147728_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out77117724_
                                                        'gx#module-export::t))
                                                     (let* ((_e77197801_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _out77117724_ '1)))
                    (_e77207804_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out77117724_ '2)))
                    (_e77217809_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out77117724_ '3)))
                    (_e77227814_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out77117724_ '4))))
               (let ((_key7807_ _e77207804_)
                     (_phi7812_ _e77217809_)
                     (_name7817_ _e77227814_))
                 (let ()
                   (declare (not safe))
                   (_K77187798_ _name7817_ _phi7812_ _key7807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match77137791_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest76907698_))
                                       (let ((_hd76957822_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest76907698_)))
                                             (_tl76967824_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest76907698_))))
                                         (let* ((_out7827_ _hd76957822_)
                                                (_rest7829_ _tl76967824_))
                                           (declare (not safe))
                                           (_K76947819_ _rest7829_ _out7827_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else76927706_))))))
                             _tl76557672_)))
                        (let ()
                          (declare (not safe))
                          (_g76527662_ _g76537665_))))))
            (declare (not safe))
            (_g76517831_ _stx7646_)))))
    (define gxc#generate-meta-provide%
      (lambda (_stx7607_ _state7608_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state7608_))
        (let* ((_g76107620_
                (lambda (_g76117617_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g76117617_))))
               (_g76097643_
                (lambda (_g76117623_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g76117623_))
                      (let ((_e76157625_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g76117623_))))
                        (let ((_hd76147628_
                               (let ()
                                 (declare (not safe))
                                 (##car _e76157625_)))
                              (_tl76137630_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e76157625_))))
                          ((lambda (_L7633_)
                             (let ((__tmp18340
                                    (map gxc#generate-runtime-identifier
                                         _L7633_)))
                               (declare (not safe))
                               (cons '%#provide __tmp18340)))
                           _tl76137630_)))
                      (let ()
                        (declare (not safe))
                        (_g76107620_ _g76117623_))))))
          (declare (not safe))
          (_g76097643_ _stx7607_))))
    (define gxc#generate-meta-extern%
      (lambda (_stx7478_ _state7479_)
        (letrec ((_generate17481_
                  (lambda (_id7602_ _eid7603_)
                    (let ((_eid7605_
                           (let () (declare (not safe)) (gx#stx-e _eid7603_))))
                      (if (interned-symbol? _eid7605_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx7478_
                             _eid7605_)))
                      (let ((__tmp18342
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id7602_)))
                            (__tmp18341
                             (let ()
                               (declare (not safe))
                               (cons _eid7605_ '()))))
                        (declare (not safe))
                        (cons __tmp18342 __tmp18341))))))
          (let* ((_g74837511_
                  (lambda (_g74847508_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g74847508_))))
                 (_g74827599_
                  (lambda (_g74847514_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g74847514_))
                        (let ((_e74897516_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g74847514_))))
                          (let ((_hd74887519_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e74897516_)))
                                (_tl74877521_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e74897516_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl74877521_))
                                (let ((_g18343_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl74877521_
                                          '0))))
                                  (begin
                                    (let ((_g18344_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g18343_)
                                                 (##vector-length _g18343_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g18344_ 2)))
                                          (error "Context expects 2 values"
                                                 _g18344_)))
                                    (let ((_target74907524_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g18343_ 0)))
                                          (_tl74927526_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g18343_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl74927526_))
                                          (letrec ((_loop74937529_
                                                    (lambda (_hd74917532_
                                                             _eid74977534_
                                                             _id74987536_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd74917532_))
                                                          (let ((_e74947539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd74917532_))))
                    (let ((_lp-hd74957542_
                           (let () (declare (not safe)) (##car _e74947539_)))
                          (_lp-tl74967544_
                           (let () (declare (not safe)) (##cdr _e74947539_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd74957542_))
                          (let ((_e75037547_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd74957542_))))
                            (let ((_hd75027550_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e75037547_)))
                                  (_tl75017552_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e75037547_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl75017552_))
                                  (let ((_e75067555_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl75017552_))))
                                    (let ((_hd75057558_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e75067555_)))
                                          (_tl75047560_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e75067555_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl75047560_))
                                          (let ((__tmp18349
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd75057558_
                                                         _eid74977534_)))
                                                (__tmp18348
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd75027550_
                                                         _id74987536_))))
                                            (declare (not safe))
                                            (_loop74937529_
                                             _lp-tl74967544_
                                             __tmp18349
                                             __tmp18348))
                                          (let ()
                                            (declare (not safe))
                                            (_g74837511_ _g74847514_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g74837511_ _g74847514_)))))
                          (let ()
                            (declare (not safe))
                            (_g74837511_ _g74847514_)))))
                  (let ((_eid74997563_ (reverse _eid74977534_))
                        (_id75007565_ (reverse _id74987536_)))
                    ((lambda (_L7568_ _L7569_)
                       (let ((__tmp18345
                              (map _generate17481_
                                   (let ((__tmp18346
                                          (lambda (_g75847587_ _g75857589_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g75847587_
                                                    _g75857589_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18346 '() _L7569_))
                                   (let ((__tmp18347
                                          (lambda (_g75917594_ _g75927596_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g75917594_
                                                    _g75927596_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18347 '() _L7568_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp18345)))
                     _eid74997563_
                     _id75007565_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop74937529_
                                               _target74907524_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g74837511_ _g74847514_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g74837511_ _g74847514_)))))
                        (let ()
                          (declare (not safe))
                          (_g74837511_ _g74847514_))))))
            (declare (not safe))
            (_g74827599_ _stx7478_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_stx7268_ _state7269_)
        (letrec ((_generate17271_
                  (lambda (_id7473_)
                    (let ((_eid7475_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id7473_)))
                          (_ident7476_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id7473_))))
                      (let ((__tmp18350
                             (let ((__tmp18351
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid7475_ '()))))
                               (declare (not safe))
                               (cons _ident7476_ __tmp18351))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp18350)))))
                 (_generate*7272_
                  (lambda (_all7441_)
                    (let* ((_all74427450_ _all7441_)
                           (_else74447458_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all7441_))))
                           (_K74467463_ (lambda (_one7461_) _one7461_)))
                      (if (let () (declare (not safe)) (##pair? _all74427450_))
                          (let ((_hd74477466_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all74427450_)))
                                (_tl74487468_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all74427450_))))
                            (let ((_one7471_ _hd74477466_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl74487468_))
                                  (let ()
                                    (declare (not safe))
                                    (_K74467463_ _one7471_))
                                  (let ()
                                    (declare (not safe))
                                    (_else74447458_)))))
                          (let () (declare (not safe)) (_else74447458_)))))))
          (let* ((_g72747291_
                  (lambda (_g72757288_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g72757288_))))
                 (_g72737438_
                  (lambda (_g72757294_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g72757294_))
                        (let ((_e72807296_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g72757294_))))
                          (let ((_hd72797299_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e72807296_)))
                                (_tl72787301_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e72807296_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl72787301_))
                                (let ((_e72837304_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl72787301_))))
                                  (let ((_hd72827307_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e72837304_)))
                                        (_tl72817309_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e72837304_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl72817309_))
                                        (let ((_e72867312_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl72817309_))))
                                          (let ((_hd72857315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e72867312_)))
                                                (_tl72847317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e72867312_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null? _tl72847317_))
                                                ((lambda (_L7320_ _L7321_)
                                                   (let _lp7337_ ((_rest7339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7321_)
                          (_r7340_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx1753017531_
                                                             _rest7339_)
                                                            (_g73457362_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          ___stx1753017531_)))))
               (let ((___kont1753217533_
                      (lambda (_L7425_)
                        (let ()
                          (declare (not safe))
                          (_lp7337_ _L7425_ _r7340_))))
                     (___kont1753417535_
                      (lambda (_L7398_ _L7399_)
                        (let ((__tmp18352
                               (let ((__tmp18353
                                      (let ()
                                        (declare (not safe))
                                        (_generate17271_ _L7399_))))
                                 (declare (not safe))
                                 (cons __tmp18353 _r7340_))))
                          (declare (not safe))
                          (_lp7337_ _L7398_ __tmp18352))))
                     (___kont1753617537_
                      (lambda (_L7374_)
                        (let ((__tmp18354
                               (let ((__tmp18355
                                      (let ((__tmp18356
                                             (let ()
                                               (declare (not safe))
                                               (_generate17271_ _L7374_))))
                                        (declare (not safe))
                                        (cons __tmp18356 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp18355 _r7340_))))
                          (declare (not safe))
                          (_generate*7272_ __tmp18354))))
                     (___kont1753817539_
                      (lambda ()
                        (let ((__tmp18357 (reverse _r7340_)))
                          (declare (not safe))
                          (_generate*7272_ __tmp18357)))))
                 (let ((_g73437385_
                        (lambda ()
                          (let ((_L7374_ ___stx1753017531_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L7374_))
                                (___kont1753617537_ _L7374_)
                                (___kont1753817539_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx1753017531_))
                       (let ((_e73507414_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx1753017531_))))
                         (let ((_tl73487419_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e73507414_)))
                               (_hd73497417_
                                (let ()
                                  (declare (not safe))
                                  (##car _e73507414_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd73497417_))
                               (let ((_e73517422_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd73497417_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e73517422_ '#f))
                                     (___kont1753217533_ _tl73487419_)
                                     (___kont1753417535_
                                      _tl73487419_
                                      _hd73497417_)))
                               (___kont1753417535_
                                _tl73487419_
                                _hd73497417_))))
                       (let () (declare (not safe)) (_g73437385_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd72857315_
                                                 _hd72827307_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g72747291_ _g72757294_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g72747291_ _g72757294_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g72747291_ _g72757294_)))))
                        (let ()
                          (declare (not safe))
                          (_g72747291_ _g72757294_))))))
            (declare (not safe))
            (_g72737438_ _stx7268_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_stx7165_ _state7166_)
        (let* ((_g71687185_
                (lambda (_g71697182_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g71697182_))))
               (_g71677265_
                (lambda (_g71697188_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g71697188_))
                      (let ((_e71747190_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g71697188_))))
                        (let ((_hd71737193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e71747190_)))
                              (_tl71727195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e71747190_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl71727195_))
                              (let ((_e71777198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl71727195_))))
                                (let ((_hd71767201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e71777198_)))
                                      (_tl71757203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e71777198_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl71757203_))
                                      (let ((_e71807206_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl71757203_))))
                                        (let ((_hd71797209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e71807206_)))
                                              (_tl71787211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e71807206_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl71787211_))
                                              ((lambda (_L7214_ _L7215_)
                                                 (let* ((_eid7230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L7215_)))
                                                        (_phi7232_
                                                         (let ((__tmp18358
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp18358
                                                                '1)))
                                                        (_block7234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#meta-state-begin-phi!
                                                            _state7166_
                                                            _phi7232_))))
                                                   (let* ((_g72377244_
                                                           (lambda (_g72387241_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error '#f '"Bad syntax" _g72387241_))))
                  (_g72367262_
                   (lambda (_g72387247_)
                     ((lambda (_L7249_)
                        (let ()
                          (let ((__tmp18359
                                 (let ((__tmp18362
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp18360
                                        (let ((__tmp18361
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L7214_ '()))))
                                          (declare (not safe))
                                          (cons _L7249_ __tmp18361))))
                                   (declare (not safe))
                                   (cons __tmp18362 __tmp18360))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             _state7166_
                             _phi7232_
                             __tmp18359))))
                      _g72387247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g72367262_ _eid7230_))
                                                   (if _block7234_
                                                       (let ((__tmp18366
                                                              (let ((__tmp18372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18373
                                    (let ((__tmp18374
                                           (let ((__tmp18375
                                                  (let ((__tmp18379
                                                         (let ((__tmp18380
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp18380)))
                (__tmp18376
                 (let ((__tmp18377
                        (let ((__tmp18378
                               (let ()
                                 (declare (not safe))
                                 (cons _block7234_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp18378))))
                   (declare (not safe))
                   (cons __tmp18377 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18379
                                                          __tmp18376))))
                                             (declare (not safe))
                                             (cons '%#call __tmp18375))))
                                      (declare (not safe))
                                      (cons __tmp18374 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp18373)))
                            (__tmp18367
                             (let ((__tmp18368
                                    (let ((__tmp18369
                                           (let ((__tmp18371
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L7215_)))
                                                 (__tmp18370
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid7230_ '()))))
                                             (declare (not safe))
                                             (cons __tmp18371 __tmp18370))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp18369))))
                               (declare (not safe))
                               (cons __tmp18368 '()))))
                        (declare (not safe))
                        (cons __tmp18372 __tmp18367))))
                 (declare (not safe))
                 (cons '%#begin __tmp18366))
               (let ((__tmp18363
                      (let ((__tmp18365
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L7215_)))
                            (__tmp18364
                             (let ()
                               (declare (not safe))
                               (cons _eid7230_ '()))))
                        (declare (not safe))
                        (cons __tmp18365 __tmp18364))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp18363)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd71797209_
                                               _hd71767201_)
                                              (let ()
                                                (declare (not safe))
                                                (_g71687185_ _g71697188_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g71687185_ _g71697188_)))))
                              (let ()
                                (declare (not safe))
                                (_g71687185_ _g71697188_)))))
                      (let ()
                        (declare (not safe))
                        (_g71687185_ _g71697188_))))))
          (declare (not safe))
          (_g71677265_ _stx7165_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_stx7097_ _state7098_)
        (let* ((_g71007117_
                (lambda (_g71017114_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g71017114_))))
               (_g70997162_
                (lambda (_g71017120_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g71017120_))
                      (let ((_e71067122_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g71017120_))))
                        (let ((_hd71057125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e71067122_)))
                              (_tl71047127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e71067122_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl71047127_))
                              (let ((_e71097130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl71047127_))))
                                (let ((_hd71087133_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e71097130_)))
                                      (_tl71077135_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e71097130_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl71077135_))
                                      (let ((_e71127138_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl71077135_))))
                                        (let ((_hd71117141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e71127138_)))
                                              (_tl71107143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e71127138_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl71107143_))
                                              ((lambda (_L7146_ _L7147_)
                                                 (let ((__tmp18381
                                                        (let ((__tmp18384
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L7147_)))
                      (__tmp18382
                       (let ((__tmp18383
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L7146_))))
                         (declare (not safe))
                         (cons __tmp18383 '()))))
                  (declare (not safe))
                  (cons __tmp18384 __tmp18382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp18381)))
                                               _hd71117141_
                                               _hd71087133_)
                                              (let ()
                                                (declare (not safe))
                                                (_g71007117_ _g71017120_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g71007117_ _g71017120_)))))
                              (let ()
                                (declare (not safe))
                                (_g71007117_ _g71017120_)))))
                      (let ()
                        (declare (not safe))
                        (_g71007117_ _g71017120_))))))
          (declare (not safe))
          (_g70997162_ _stx7097_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_stx7094_ _state7095_)
        (let ((__tmp18385 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! _state7095_ __tmp18385 _stx7094_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _stx7094_ _state7095_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_stx7091_ _state7092_)
        (let ((__tmp18386 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! _state7092_ __tmp18386 _stx7091_))
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
      (lambda _$args7088_
        (apply make-struct-instance gxc#meta-state::t _$args7088_)))
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
      (lambda (_self7085_ _ctx7086_)
        (if (let ((__tmp18390
                   (let () (declare (not safe)) (##vector-length _self7085_))))
              (declare (not safe))
              (##fx< '4 __tmp18390))
            (begin
              (let ((__tmp18387
                     (let ((__tmp18388
                            (##structure-ref
                             _ctx7086_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp18388))))
                (declare (not safe))
                (##vector-set! _self7085_ '1 __tmp18387))
              (let () (declare (not safe)) (##vector-set! _self7085_ '2 '1))
              (let ((__tmp18389
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self7085_ '3 __tmp18389))
              (let () (declare (not safe)) (##vector-set! _self7085_ '4 '())))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7085_))))
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
      (lambda _$args6960_
        (apply make-struct-instance gxc#meta-state-block::t _$args6960_)))
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
      (lambda (_state6919_ _phi6920_)
        (let* ((_state69216929_ _state6919_)
               (_E69236933_
                (lambda () (error '"No clause matching" _state69216929_)))
               (_K69246942_
                (lambda (_open6936_ _n6937_ _src6938_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _open6936_ _phi6920_ '#f))
                      '#f
                      (let ((_block-ref6940_
                             (string-append
                              _src6938_
                              '"__"
                              (number->string _n6937_))))
                        (##structure-set!
                         _state6919_
                         (let () (declare (not safe)) (fx+ _n6937_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp18391
                               (let ((__tmp18392
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp18392
                                  _phi6920_
                                  _n6937_
                                  '()))))
                          (declare (not safe))
                          (table-set! _open6936_ _phi6920_ __tmp18391))
                        _block-ref6940_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _state69216929_ 'gxc#meta-state::t))
              (let* ((_e69256945_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state69216929_ '1)))
                     (_src6948_ _e69256945_)
                     (_e69266950_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state69216929_ '2)))
                     (_n6953_ _e69266950_)
                     (_e69276955_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state69216929_ '3)))
                     (_open6958_ _e69276955_))
                (declare (not safe))
                (_K69246942_ _open6958_ _n6953_ _src6948_))
              (let () (declare (not safe)) (_E69236933_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state6913_ _phi6914_ _stx6915_)
        (let ((_block6917_
               (let ((__tmp18393
                      (##structure-ref _state6913_ '3 gxc#meta-state::t '#f)))
                 (declare (not safe))
                 (table-ref __tmp18393 _phi6914_ '#f))))
          (##structure-set!
           _block6917_
           (let ((__tmp18394
                  (##structure-ref
                   _block6917_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx6915_ __tmp18394))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state6908_)
        (##structure-set!
         _state6908_
         (let ((__tmp18397
                (lambda (_g18398_ _block6910_ _r6911_)
                  (let () (declare (not safe)) (cons _block6910_ _r6911_))))
               (__tmp18396
                (##structure-ref _state6908_ '4 gxc#meta-state::t '#f))
               (__tmp18395
                (##structure-ref _state6908_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp18397 __tmp18396 __tmp18395))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state6908_
         (let () (declare (not safe)) (make-table 'test: eq?))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state6860_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state6860_))
        (let ((__tmp18400
               (lambda (_block6862_ _r6863_)
                 (let* ((_block68646873_ _block6862_)
                        (_E68666877_
                         (lambda ()
                           (error '"No clause matching" _block68646873_)))
                        (_K68676885_
                         (lambda (_code6880_ _n6881_ _phi6882_ _ctx6883_)
                           (if (let () (declare (not safe)) (null? _code6880_))
                               _r6863_
                               (let ((__tmp18401
                                      (let ((__tmp18402
                                             (let ((__tmp18403
                                                    (let ((__tmp18404
                                                           (let ((__tmp18405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18406 (reverse _code6880_)))
                            (declare (not safe))
                            (cons '%#begin __tmp18406))))
                     (declare (not safe))
                     (cons __tmp18405 '()))))
              (declare (not safe))
              (cons _n6881_ __tmp18404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi6882_ __tmp18403))))
                                        (declare (not safe))
                                        (cons _ctx6883_ __tmp18402))))
                                 (declare (not safe))
                                 (cons __tmp18401 _r6863_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block68646873_
                          'gxc#meta-state-block::t))
                       (let* ((_e68686888_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block68646873_ '1)))
                              (_ctx6891_ _e68686888_)
                              (_e68696893_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block68646873_ '2)))
                              (_phi6896_ _e68696893_)
                              (_e68706898_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block68646873_ '3)))
                              (_n6901_ _e68706898_)
                              (_e68716903_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block68646873_ '4)))
                              (_code6906_ _e68716903_))
                         (declare (not safe))
                         (_K68676885_ _code6906_ _n6901_ _phi6896_ _ctx6891_))
                       (let () (declare (not safe)) (_E68666877_))))))
              (__tmp18399
               (##structure-ref _state6860_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp18400 '() __tmp18399))))
    (define gxc#collect-expression-refs
      (lambda (_stx6856_)
        (let ((_ht6858_ (let () (declare (not safe)) (make-table 'test: eq?))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx6856_ _ht6858_))
          _ht6858_)))
    (define gxc#collect-refs-ref%
      (lambda (_stx6799_ _ht6800_)
        (let* ((_g68026815_
                (lambda (_g68036812_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g68036812_))))
               (_g68016853_
                (lambda (_g68036818_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g68036818_))
                      (let ((_e68076820_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g68036818_))))
                        (let ((_hd68066823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e68076820_)))
                              (_tl68056825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e68076820_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl68056825_))
                              (let ((_e68106828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl68056825_))))
                                (let ((_hd68096831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e68106828_)))
                                      (_tl68086833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e68106828_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl68086833_))
                                      ((lambda (_L6836_)
                                         (let* ((_bind6848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L6836_)))
                                                (_eid6850_
                                                 (if _bind6848_
                                                     (##structure-ref
                                                      _bind6848_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L6836_)))))
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _ht6800_
                                              _eid6850_
                                              _eid6850_))))
                                       _hd68096831_)
                                      (let ()
                                        (declare (not safe))
                                        (_g68026815_ _g68036818_)))))
                              (let ()
                                (declare (not safe))
                                (_g68026815_ _g68036818_)))))
                      (let ()
                        (declare (not safe))
                        (_g68026815_ _g68036818_))))))
          (declare (not safe))
          (_g68016853_ _stx6799_))))
    (define gxc#collect-refs-setq%
      (lambda (_stx6726_ _ht6727_)
        (let* ((_g67296746_
                (lambda (_g67306743_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g67306743_))))
               (_g67286796_
                (lambda (_g67306749_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g67306749_))
                      (let ((_e67356751_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g67306749_))))
                        (let ((_hd67346754_
                               (let ()
                                 (declare (not safe))
                                 (##car _e67356751_)))
                              (_tl67336756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e67356751_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl67336756_))
                              (let ((_e67386759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl67336756_))))
                                (let ((_hd67376762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e67386759_)))
                                      (_tl67366764_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e67386759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl67366764_))
                                      (let ((_e67416767_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl67366764_))))
                                        (let ((_hd67406770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e67416767_)))
                                              (_tl67396772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e67416767_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl67396772_))
                                              ((lambda (_L6775_ _L6776_)
                                                 (let* ((_bind6791_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L6776_)))
                                                        (_eid6793_
                                                         (if _bind6791_
                                                             (##structure-ref
                                                              _bind6791_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L6776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (table-set!
                                                      _ht6727_
                                                      _eid6793_
                                                      _eid6793_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L6775_
                                                      _ht6727_))))
                                               _hd67406770_
                                               _hd67376762_)
                                              (let ()
                                                (declare (not safe))
                                                (_g67296746_ _g67306749_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g67296746_ _g67306749_)))))
                              (let ()
                                (declare (not safe))
                                (_g67296746_ _g67306749_)))))
                      (let ()
                        (declare (not safe))
                        (_g67296746_ _g67306749_))))))
          (declare (not safe))
          (_g67286796_ _stx6726_))))
    (define gxc#find-runtime-begin%
      (lambda (_stx6688_)
        (let* ((_g66906700_
                (lambda (_g66916697_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g66916697_))))
               (_g66896723_
                (lambda (_g66916703_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g66916703_))
                      (let ((_e66956705_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g66916703_))))
                        (let ((_hd66946708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e66956705_)))
                              (_tl66936710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e66956705_))))
                          ((lambda (_L6713_)
                             (let ()
                               (declare (not safe))
                               (ormap1 gxc#compile-e _L6713_)))
                           _tl66936710_)))
                      (let ()
                        (declare (not safe))
                        (_g66906700_ _g66916703_))))))
          (declare (not safe))
          (_g66896723_ _stx6688_))))
    (define gxc#find-lambda-expression-begin%
      (lambda (_stx6650_)
        (let* ((_g66526662_
                (lambda (_g66536659_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g66536659_))))
               (_g66516685_
                (lambda (_g66536665_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g66536665_))
                      (let ((_e66576667_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g66536665_))))
                        (let ((_hd66566670_
                               (let ()
                                 (declare (not safe))
                                 (##car _e66576667_)))
                              (_tl66556672_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e66576667_))))
                          ((lambda (_L6675_)
                             (let ((__tmp18407
                                    (let ()
                                      (declare (not safe))
                                      (last _L6675_))))
                               (declare (not safe))
                               (gxc#compile-e __tmp18407)))
                           _tl66556672_)))
                      (let ()
                        (declare (not safe))
                        (_g66526662_ _g66536665_))))))
          (declare (not safe))
          (_g66516685_ _stx6650_))))
    (define gxc#find-lambda-expression-begin-annotation%
      (lambda (_stx6583_)
        (let* ((_g65856602_
                (lambda (_g65866599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g65866599_))))
               (_g65846647_
                (lambda (_g65866605_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g65866605_))
                      (let ((_e65916607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g65866605_))))
                        (let ((_hd65906610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65916607_)))
                              (_tl65896612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65916607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl65896612_))
                              (let ((_e65946615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl65896612_))))
                                (let ((_hd65936618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65946615_)))
                                      (_tl65926620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65946615_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl65926620_))
                                      (let ((_e65976623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl65926620_))))
                                        (let ((_hd65966626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65976623_)))
                                              (_tl65956628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65976623_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl65956628_))
                                              ((lambda (_L6631_ _L6632_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6631_)))
                                               _hd65966626_
                                               _hd65936618_)
                                              (let ()
                                                (declare (not safe))
                                                (_g65856602_ _g65866605_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g65856602_ _g65866605_)))))
                              (let ()
                                (declare (not safe))
                                (_g65856602_ _g65866605_)))))
                      (let ()
                        (declare (not safe))
                        (_g65856602_ _g65866605_))))))
          (declare (not safe))
          (_g65846647_ _stx6583_))))
    (define gxc#find-lambda-expression-let-values%
      (lambda (_stx6516_)
        (let* ((_g65186535_
                (lambda (_g65196532_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g65196532_))))
               (_g65176580_
                (lambda (_g65196538_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g65196538_))
                      (let ((_e65246540_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g65196538_))))
                        (let ((_hd65236543_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65246540_)))
                              (_tl65226545_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65246540_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl65226545_))
                              (let ((_e65276548_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl65226545_))))
                                (let ((_hd65266551_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65276548_)))
                                      (_tl65256553_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65276548_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl65256553_))
                                      (let ((_e65306556_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl65256553_))))
                                        (let ((_hd65296559_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65306556_)))
                                              (_tl65286561_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65306556_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl65286561_))
                                              ((lambda (_L6564_ _L6565_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6564_)))
                                               _hd65296559_
                                               _hd65266551_)
                                              (let ()
                                                (declare (not safe))
                                                (_g65186535_ _g65196538_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g65186535_ _g65196538_)))))
                              (let ()
                                (declare (not safe))
                                (_g65186535_ _g65196538_)))))
                      (let ()
                        (declare (not safe))
                        (_g65186535_ _g65196538_))))))
          (declare (not safe))
          (_g65176580_ _stx6516_))))
    (define gxc#count-values-single% (lambda (_stx6514_) '1))
    (define gxc#count-values-begin%
      (lambda (_stx6432_)
        (let* ((_g64346453_
                (lambda (_g64356450_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g64356450_))))
               (_g64336511_
                (lambda (_g64356456_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g64356456_))
                      (let ((_e64396458_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g64356456_))))
                        (let ((_hd64386461_
                               (let ()
                                 (declare (not safe))
                                 (##car _e64396458_)))
                              (_tl64376463_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e64396458_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl64376463_))
                              (let ((_g18408_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl64376463_
                                        '0))))
                                (begin
                                  (let ((_g18409_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g18408_)
                                               (##vector-length _g18408_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g18409_ 2)))
                                        (error "Context expects 2 values"
                                               _g18409_)))
                                  (let ((_target64406466_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g18408_ 0)))
                                        (_tl64426468_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g18408_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl64426468_))
                                        (letrec ((_loop64436471_
                                                  (lambda (_hd64416474_
                                                           _expr64476476_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd64416474_))
                                                        (let ((_e64446479_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd64416474_))))
                  (let ((_lp-hd64456482_
                         (let () (declare (not safe)) (##car _e64446479_)))
                        (_lp-tl64466484_
                         (let () (declare (not safe)) (##cdr _e64446479_))))
                    (let ((__tmp18413
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd64456482_ _expr64476476_))))
                      (declare (not safe))
                      (_loop64436471_ _lp-tl64466484_ __tmp18413))))
                (let ((_expr64486487_ (reverse _expr64476476_)))
                  ((lambda (_L6490_)
                     (let ((__tmp18410
                            (let ((__tmp18411
                                   (let ((__tmp18412
                                          (lambda (_g65036506_ _g65046508_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g65036506_
                                                    _g65046508_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18412 '() _L6490_))))
                              (declare (not safe))
                              (last __tmp18411))))
                       (declare (not safe))
                       (gxc#compile-e __tmp18410)))
                   _expr64486487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop64436471_
                                             _target64406466_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g64346453_ _g64356456_))))))
                              (let ()
                                (declare (not safe))
                                (_g64346453_ _g64356456_)))))
                      (let ()
                        (declare (not safe))
                        (_g64346453_ _g64356456_))))))
          (declare (not safe))
          (_g64336511_ _stx6432_))))
    (define gxc#count-values-begin-annotation%
      (lambda (_stx6365_)
        (let* ((_g63676384_
                (lambda (_g63686381_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g63686381_))))
               (_g63666429_
                (lambda (_g63686387_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g63686387_))
                      (let ((_e63736389_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g63686387_))))
                        (let ((_hd63726392_
                               (let ()
                                 (declare (not safe))
                                 (##car _e63736389_)))
                              (_tl63716394_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e63736389_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl63716394_))
                              (let ((_e63766397_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl63716394_))))
                                (let ((_hd63756400_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e63766397_)))
                                      (_tl63746402_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e63766397_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl63746402_))
                                      (let ((_e63796405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl63746402_))))
                                        (let ((_hd63786408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e63796405_)))
                                              (_tl63776410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e63796405_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl63776410_))
                                              ((lambda (_L6413_ _L6414_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6413_)))
                                               _hd63786408_
                                               _hd63756400_)
                                              (let ()
                                                (declare (not safe))
                                                (_g63676384_ _g63686387_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g63676384_ _g63686387_)))))
                              (let ()
                                (declare (not safe))
                                (_g63676384_ _g63686387_)))))
                      (let ()
                        (declare (not safe))
                        (_g63676384_ _g63686387_))))))
          (declare (not safe))
          (_g63666429_ _stx6365_))))
    (define gxc#count-values-let-values%
      (lambda (_stx6298_)
        (let* ((_g63006317_
                (lambda (_g63016314_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g63016314_))))
               (_g62996362_
                (lambda (_g63016320_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g63016320_))
                      (let ((_e63066322_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g63016320_))))
                        (let ((_hd63056325_
                               (let ()
                                 (declare (not safe))
                                 (##car _e63066322_)))
                              (_tl63046327_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e63066322_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl63046327_))
                              (let ((_e63096330_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl63046327_))))
                                (let ((_hd63086333_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e63096330_)))
                                      (_tl63076335_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e63096330_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl63076335_))
                                      (let ((_e63126338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl63076335_))))
                                        (let ((_hd63116341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e63126338_)))
                                              (_tl63106343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e63126338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl63106343_))
                                              ((lambda (_L6346_ _L6347_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6346_)))
                                               _hd63116341_
                                               _hd63086333_)
                                              (let ()
                                                (declare (not safe))
                                                (_g63006317_ _g63016320_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g63006317_ _g63016320_)))))
                              (let ()
                                (declare (not safe))
                                (_g63006317_ _g63016320_)))))
                      (let ()
                        (declare (not safe))
                        (_g63006317_ _g63016320_))))))
          (declare (not safe))
          (_g62996362_ _stx6298_))))
    (define gxc#count-values-call%
      (lambda (_stx6165_)
        (let* ((___stx1756017561_ _stx6165_)
               (_g61686197_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1756017561_)))))
          (let ((___kont1756217563_
                 (lambda (_L6265_ _L6266_)
                   (length (let ((__tmp18414
                                  (lambda (_g62876290_ _g62886292_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g62876290_ _g62886292_)))))
                             (declare (not safe))
                             (foldr1 __tmp18414 '() _L6265_)))))
                (___kont1756617567_ (lambda () '#f)))
            (let ((___match1760517606_
                   (lambda (_e61746209_
                            _hd61736212_
                            _tl61726214_
                            _e61776217_
                            _hd61766220_
                            _tl61756222_
                            _e61806225_
                            _hd61796228_
                            _tl61786230_
                            _e61836233_
                            _hd61826236_
                            _tl61816238_
                            ___splice1756417565_
                            _target61846241_
                            _tl61866243_)
                     (letrec ((_loop61876246_
                               (lambda (_hd61856249_ _rand61916251_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd61856249_))
                                     (let ((_e61886254_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd61856249_))))
                                       (let ((_lp-tl61906259_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e61886254_)))
                                             (_lp-hd61896257_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e61886254_))))
                                         (let ((__tmp18415
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd61896257_
                                                        _rand61916251_))))
                                           (declare (not safe))
                                           (_loop61876246_
                                            _lp-tl61906259_
                                            __tmp18415))))
                                     (let ((_rand61926262_
                                            (reverse _rand61916251_)))
                                       (let ((_L6265_ _rand61926262_)
                                             (_L6266_ _hd61826236_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L6266_
                                                'values))
                                             (___kont1756217563_
                                              _L6265_
                                              _L6266_)
                                             (___kont1756617567_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop61876246_ _target61846241_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1756017561_))
                  (let ((_e61746209_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx1756017561_))))
                    (let ((_tl61726214_
                           (let () (declare (not safe)) (##cdr _e61746209_)))
                          (_hd61736212_
                           (let () (declare (not safe)) (##car _e61746209_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl61726214_))
                          (let ((_e61776217_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl61726214_))))
                            (let ((_tl61756222_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e61776217_)))
                                  (_hd61766220_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e61776217_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd61766220_))
                                  (let ((_e61806225_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd61766220_))))
                                    (let ((_tl61786230_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e61806225_)))
                                          (_hd61796228_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e61806225_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd61796228_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd61796228_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl61786230_))
                                                  (let ((_e61836233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl61786230_))))
                                                    (let ((_tl61816238_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e61836233_)))
                                                          (_hd61826236_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e61836233_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl61816238_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl61756222_))
                      (let ((___splice1756417565_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl61756222_ '0))))
                        (let ((_tl61866243_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1756417565_ '1)))
                              (_target61846241_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1756417565_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl61866243_))
                              (___match1760517606_
                               _e61746209_
                               _hd61736212_
                               _tl61726214_
                               _e61776217_
                               _hd61766220_
                               _tl61756222_
                               _e61806225_
                               _hd61796228_
                               _tl61786230_
                               _e61836233_
                               _hd61826236_
                               _tl61816238_
                               ___splice1756417565_
                               _target61846241_
                               _tl61866243_)
                              (___kont1756617567_))))
                      (___kont1756617567_))
                  (___kont1756617567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1756617567_))
                                              (___kont1756617567_))
                                          (___kont1756617567_))))
                                  (___kont1756617567_))))
                          (___kont1756617567_))))
                  (___kont1756617567_)))))))
    (define gxc#count-values-if%
      (lambda (_stx6069_)
        (let* ((_g60716092_
                (lambda (_g60726089_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g60726089_))))
               (_g60706162_
                (lambda (_g60726095_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g60726095_))
                      (let ((_e60786097_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g60726095_))))
                        (let ((_hd60776100_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60786097_)))
                              (_tl60766102_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60786097_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl60766102_))
                              (let ((_e60816105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl60766102_))))
                                (let ((_hd60806108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e60816105_)))
                                      (_tl60796110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e60816105_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl60796110_))
                                      (let ((_e60846113_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl60796110_))))
                                        (let ((_hd60836116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60846113_)))
                                              (_tl60826118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60846113_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl60826118_))
                                              (let ((_e60876121_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl60826118_))))
                                                (let ((_hd60866124_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e60876121_)))
                                                      (_tl60856126_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e60876121_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl60856126_))
                                                      ((lambda (_L6129_
                                                                _L6130_
                                                                _L6131_)
                                                         (let ((_c161486150_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e _L6130_))))
                   (if _c161486150_
                       (let* ((_c16153_ _c161486150_)
                              (_c261546156_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L6129_))))
                         (if _c261546156_
                             (let ((_c26159_ _c261546156_))
                               (if (fx= _c16153_ _c26159_) _c16153_ '#f))
                             '#f))
                       '#f)))
               _hd60866124_
               _hd60836116_
               _hd60806108_)
              (let () (declare (not safe)) (_g60716092_ _g60726095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g60716092_ _g60726095_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g60716092_ _g60726095_)))))
                              (let ()
                                (declare (not safe))
                                (_g60716092_ _g60726095_)))))
                      (let ()
                        (declare (not safe))
                        (_g60716092_ _g60726095_))))))
          (declare (not safe))
          (_g60706162_ _stx6069_))))))
