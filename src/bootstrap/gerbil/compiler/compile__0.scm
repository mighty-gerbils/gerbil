(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1695337519)
  (begin
    (define gxc#current-compile-methods (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e16209_
                  (lambda (_id16211_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id16211_))))))
          (let ()
            (declare (not safe))
            (make-table 'test: gx#bound-identifier=? 'hash: _hash-e16209_)))))
    (define gxc#compile-e
      (lambda (_stx16164_ . _args16165_)
        (let* ((_g1616716177_
                (lambda (_g1616816174_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1616816174_))))
               (_g1616616205_
                (lambda (_g1616816180_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1616816180_))
                      (let ((_e1617216182_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1616816180_))))
                        (let ((_hd1617116185_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1617216182_)))
                              (_tl1617016187_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1617216182_))))
                          ((lambda (_L16190_)
                             (let ((_$e16200_
                                    (let ((__tmp17607
                                           (gxc#current-compile-methods))
                                          (__tmp17606
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _L16190_))))
                                      (declare (not safe))
                                      (table-ref __tmp17607 __tmp17606 '#f))))
                               (if _$e16200_
                                   ((lambda (_method16203_)
                                      (apply _method16203_
                                             _stx16164_
                                             _args16165_))
                                    _$e16200_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#raise-compile-error
                                      '"Cannot compile; missing method"
                                      _stx16164_
                                      _L16190_)))))
                           _hd1617116185_)))
                      (let ()
                        (declare (not safe))
                        (_g1616716177_ _g1616816180_))))))
          (declare (not safe))
          (_g1616616205_ _stx16164_))))
    (define gxc#&void-expression
      (make-promise
       (lambda ()
         (let ((_tbl16161_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#begin-annotation void))
           (let () (declare (not safe)) (table-set! _tbl16161_ '%#lambda void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#case-lambda void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#let-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#letrec-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#letrec*-values void))
           (let () (declare (not safe)) (table-set! _tbl16161_ '%#quote void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#quote-syntax void))
           (let () (declare (not safe)) (table-set! _tbl16161_ '%#call void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#call-unchecked void))
           (let () (declare (not safe)) (table-set! _tbl16161_ '%#if void))
           (let () (declare (not safe)) (table-set! _tbl16161_ '%#ref void))
           (let () (declare (not safe)) (table-set! _tbl16161_ '%#set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#struct-instance? void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#struct-direct-instance? void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#struct-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#struct-set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#struct-direct-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#struct-direct-set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#struct-unchecked-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16161_ '%#struct-unchecked-set! void))
           _tbl16161_))))
    (define gxc#&void-special-form
      (make-promise
       (lambda ()
         (let ((_tbl16157_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let () (declare (not safe)) (table-set! _tbl16157_ '%#begin void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16157_ '%#begin-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16157_ '%#begin-foreign void))
           (let () (declare (not safe)) (table-set! _tbl16157_ '%#module void))
           (let () (declare (not safe)) (table-set! _tbl16157_ '%#import void))
           (let () (declare (not safe)) (table-set! _tbl16157_ '%#export void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16157_ '%#provide void))
           (let () (declare (not safe)) (table-set! _tbl16157_ '%#extern void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16157_ '%#define-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16157_ '%#define-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16157_ '%#define-alias void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16157_ '%#declare void))
           _tbl16157_))))
    (define gxc#&void
      (make-promise
       (lambda ()
         (let ((_tbl16153_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17608 (force gxc#&void-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16153_ __tmp17608))
           (let ((__tmp17609 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16153_ __tmp17609))
           _tbl16153_))))
    (define gxc#&false-expression
      (make-promise
       (lambda ()
         (let ((_tbl16149_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#begin-annotation false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#lambda false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#case-lambda false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#let-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#letrec-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#letrec*-values false))
           (let () (declare (not safe)) (table-set! _tbl16149_ '%#quote false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#quote-syntax false))
           (let () (declare (not safe)) (table-set! _tbl16149_ '%#call false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#call-unchecked false))
           (let () (declare (not safe)) (table-set! _tbl16149_ '%#if false))
           (let () (declare (not safe)) (table-set! _tbl16149_ '%#ref false))
           (let () (declare (not safe)) (table-set! _tbl16149_ '%#set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#struct-instance? false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#struct-direct-instance? false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#struct-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#struct-set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#struct-direct-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#struct-direct-set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#struct-unchecked-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16149_ '%#struct-unchecked-set! false))
           _tbl16149_))))
    (define gxc#&false-special-form
      (make-promise
       (lambda ()
         (let ((_tbl16145_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let () (declare (not safe)) (table-set! _tbl16145_ '%#begin false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#begin-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#begin-foreign false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#module false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#import false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#export false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#provide false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#extern false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#define-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#define-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#define-alias false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16145_ '%#declare false))
           _tbl16145_))))
    (define gxc#&false
      (make-promise
       (lambda ()
         (let ((_tbl16141_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17610 (force gxc#&false-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16141_ __tmp17610))
           (let ((__tmp17611 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl16141_ __tmp17611))
           _tbl16141_))))
    (define gxc#&collect-bindings
      (make-promise
       (lambda ()
         (let ((_tbl16137_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17612 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16137_ __tmp17612))
           (let ((__tmp17613 (force gxc#&void-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16137_ __tmp17613))
           (let ()
             (declare (not safe))
             (table-set! _tbl16137_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16137_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16137_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16137_
              '%#define-values
              gxc#collect-bindings-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16137_
              '%#define-syntax
              gxc#collect-bindings-define-syntax%))
           _tbl16137_))))
    (define gxc#apply-collect-bindings
      (lambda (_stx16130_ . _args16132_)
        (let ((__tmp17615
               (lambda () (apply gxc#compile-e _stx16130_ _args16132_)))
              (__tmp17614 (force gxc#&collect-bindings)))
          (declare (not safe))
          (call-with-parameters
           __tmp17615
           gxc#current-compile-methods
           __tmp17614))))
    (define gxc#&lift-modules
      (make-promise
       (lambda ()
         (let ((_tbl16127_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17616 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl16127_ __tmp17616))
           (let ()
             (declare (not safe))
             (table-set! _tbl16127_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16127_ '%#module gxc#lift-modules-module%))
           _tbl16127_))))
    (define gxc#apply-lift-modules
      (lambda (_stx16120_ . _args16122_)
        (let ((__tmp17618
               (lambda () (apply gxc#compile-e _stx16120_ _args16122_)))
              (__tmp17617 (force gxc#&lift-modules)))
          (declare (not safe))
          (call-with-parameters
           __tmp17618
           gxc#current-compile-methods
           __tmp17617))))
    (define gxc#&find-runtime-code
      (make-promise
       (lambda ()
         (let ((_tbl16117_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#begin gxc#find-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#begin-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#begin-foreign true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#begin-annotation true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#module false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#import false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#export false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#provide false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#extern false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#define-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#define-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#define-alias false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#declare false))
           (let () (declare (not safe)) (table-set! _tbl16117_ '%#lambda true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#case-lambda true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#let-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#letrec-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#letrec*-values true))
           (let () (declare (not safe)) (table-set! _tbl16117_ '%#quote true))
           (let () (declare (not safe)) (table-set! _tbl16117_ '%#call true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#call-unchecked true))
           (let () (declare (not safe)) (table-set! _tbl16117_ '%#if true))
           (let () (declare (not safe)) (table-set! _tbl16117_ '%#ref true))
           (let () (declare (not safe)) (table-set! _tbl16117_ '%#set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#struct-instance? true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#struct-direct-instance? true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#struct-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#struct-set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#struct-direct-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#struct-direct-set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#struct-unchecked-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16117_ '%#struct-unchecked-set! true))
           _tbl16117_))))
    (define gxc#apply-find-runtime-code
      (lambda (_stx16110_ . _args16112_)
        (let ((__tmp17620
               (lambda () (apply gxc#compile-e _stx16110_ _args16112_)))
              (__tmp17619 (force gxc#&find-runtime-code)))
          (declare (not safe))
          (call-with-parameters
           __tmp17620
           gxc#current-compile-methods
           __tmp17619))))
    (define gxc#&find-lambda-expression
      (make-promise
       (lambda ()
         (let ((_tbl16107_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17621 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl16107_ __tmp17621))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16107_
              '%#begin
              gxc#find-lambda-expression-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16107_
              '%#begin-annotation
              gxc#find-lambda-expression-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16107_ '%#lambda values))
           (let ()
             (declare (not safe))
             (table-set! _tbl16107_ '%#case-lambda values))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16107_
              '%#let-values
              gxc#find-lambda-expression-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16107_
              '%#letrec-values
              gxc#find-lambda-expression-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16107_
              '%#letrec*-values
              gxc#find-lambda-expression-let-values%))
           _tbl16107_))))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx16100_ . _args16102_)
        (let ((__tmp17623
               (lambda () (apply gxc#compile-e _stx16100_ _args16102_)))
              (__tmp17622 (force gxc#&find-lambda-expression)))
          (declare (not safe))
          (call-with-parameters
           __tmp17623
           gxc#current-compile-methods
           __tmp17622))))
    (define gxc#&count-values
      (make-promise
       (lambda ()
         (let ((_tbl16097_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17624 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl16097_ __tmp17624))
           (let ()
             (declare (not safe))
             (table-set! _tbl16097_ '%#begin gxc#count-values-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16097_
              '%#begin-annotation
              gxc#count-values-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16097_ '%#lambda gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16097_ '%#case-lambda gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16097_
              '%#let-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16097_
              '%#letrec-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16097_
              '%#letrec*-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16097_ '%#quote gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16097_ '%#call gxc#count-values-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16097_ '%#call-unchecked gxc#count-values-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16097_ '%#if gxc#count-values-if%))
           _tbl16097_))))
    (define gxc#apply-count-values
      (lambda (_stx16090_ . _args16092_)
        (let ((__tmp17626
               (lambda () (apply gxc#compile-e _stx16090_ _args16092_)))
              (__tmp17625 (force gxc#&count-values)))
          (declare (not safe))
          (call-with-parameters
           __tmp17626
           gxc#current-compile-methods
           __tmp17625))))
    (define gxc#&generate-runtime-empty
      (make-promise
       (lambda ()
         (let ((_tbl16087_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#begin gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#begin-syntax
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#begin-foreign
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#begin-annotation
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#module gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#import gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#export gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#provide gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#extern gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#define-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#define-syntax
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#define-alias
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#declare gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#lambda gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#case-lambda gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#let-values gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#letrec-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#letrec*-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#quote gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#call gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#call-unchecked
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#if gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#ref gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#set! gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#struct-instance?
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#struct-direct-instance?
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#struct-ref gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16087_ '%#struct-set! gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#struct-direct-ref
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#struct-direct-set!
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#struct-unchecked-ref
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16087_
              '%#struct-unchecked-set!
              gxc#generate-runtime-empty))
           _tbl16087_))))
    (define gxc#&generate-loader
      (make-promise
       (lambda ()
         (let ((_tbl16083_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17627 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl16083_ __tmp17627))
           (let ()
             (declare (not safe))
             (table-set! _tbl16083_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16083_
              '%#import
              gxc#generate-runtime-loader-import%))
           _tbl16083_))))
    (define gxc#apply-generate-loader
      (lambda (_stx16076_ . _args16078_)
        (let ((__tmp17629
               (lambda () (apply gxc#compile-e _stx16076_ _args16078_)))
              (__tmp17628 (force gxc#&generate-loader)))
          (declare (not safe))
          (call-with-parameters
           __tmp17629
           gxc#current-compile-methods
           __tmp17628))))
    (define gxc#&generate-runtime
      (make-promise
       (lambda ()
         (let ((_tbl16073_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17630 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl16073_ __tmp17630))
           (let ()
             (declare (not safe))
             (table-set! _tbl16073_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#begin-foreign
              gxc#generate-runtime-begin-foreign%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#begin-annotation
              gxc#generate-runtime-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#define-values
              gxc#generate-runtime-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16073_ '%#declare gxc#generate-runtime-declare%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16073_ '%#lambda gxc#generate-runtime-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#case-lambda
              gxc#generate-runtime-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#let-values
              gxc#generate-runtime-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#letrec-values
              gxc#generate-runtime-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#letrec*-values
              gxc#generate-runtime-letrec*-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16073_ '%#quote gxc#generate-runtime-quote%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#quote-syntax
              gxc#generate-runtime-quote-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16073_ '%#call gxc#generate-runtime-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#call-unchecked
              gxc#generate-runtime-call-unchecked%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16073_ '%#if gxc#generate-runtime-if%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16073_ '%#ref gxc#generate-runtime-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16073_ '%#set! gxc#generate-runtime-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#struct-instance?
              gxc#generate-runtime-struct-instancep%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#struct-direct-instance?
              gxc#generate-runtime-struct-direct-instancep%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#struct-ref
              gxc#generate-runtime-struct-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#struct-set!
              gxc#generate-runtime-struct-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#struct-direct-ref
              gxc#generate-runtime-struct-direct-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#struct-direct-set!
              gxc#generate-runtime-struct-direct-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#struct-unchecked-ref
              gxc#generate-runtime-struct-unchecked-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16073_
              '%#struct-unchecked-set!
              gxc#generate-runtime-struct-unchecked-setq%))
           _tbl16073_))))
    (define gxc#apply-generate-runtime
      (lambda (_stx16066_ . _args16068_)
        (let ((__tmp17632
               (lambda () (apply gxc#compile-e _stx16066_ _args16068_)))
              (__tmp17631 (force gxc#&generate-runtime)))
          (declare (not safe))
          (call-with-parameters
           __tmp17632
           gxc#current-compile-methods
           __tmp17631))))
    (define gxc#&generate-runtime-phi
      (make-promise
       (lambda ()
         (let ((_tbl16063_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17633 (force gxc#&generate-runtime)))
             (declare (not safe))
             (hash-copy! _tbl16063_ __tmp17633))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16063_
              '%#define-runtime
              gxc#generate-runtime-phi-define-runtime%))
           _tbl16063_))))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx16056_ . _args16058_)
        (let ((__tmp17635
               (lambda () (apply gxc#compile-e _stx16056_ _args16058_)))
              (__tmp17634 (force gxc#&generate-runtime-phi)))
          (declare (not safe))
          (call-with-parameters
           __tmp17635
           gxc#current-compile-methods
           __tmp17634))))
    (define gxc#&collect-expression-refs
      (make-promise
       (lambda ()
         (let ((_tbl16053_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let () (declare (not safe)) (table-set! _tbl16053_ '%#quote void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#quote-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#ref gxc#collect-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#set! gxc#collect-refs-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16053_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16053_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl16053_))))
    (define gxc#apply-collect-expression-refs
      (lambda (_stx16046_ . _args16048_)
        (let ((__tmp17637
               (lambda () (apply gxc#compile-e _stx16046_ _args16048_)))
              (__tmp17636 (force gxc#&collect-expression-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp17637
           gxc#current-compile-methods
           __tmp17636))))
    (define gxc#&generate-meta
      (make-promise
       (lambda ()
         (let ((_tbl16043_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17638 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16043_ __tmp17638))
           (let ()
             (declare (not safe))
             (table-set! _tbl16043_ '%#begin gxc#generate-meta-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16043_
              '%#begin-syntax
              gxc#generate-meta-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16043_ '%#module gxc#generate-meta-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16043_ '%#import gxc#generate-meta-import%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16043_ '%#export gxc#generate-meta-export%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16043_ '%#provide gxc#generate-meta-provide%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16043_ '%#extern gxc#generate-meta-extern%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16043_
              '%#define-values
              gxc#generate-meta-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16043_
              '%#define-syntax
              gxc#generate-meta-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16043_
              '%#define-alias
              gxc#generate-meta-define-alias%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16043_ '%#begin-foreign void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16043_ '%#declare void))
           _tbl16043_))))
    (define gxc#apply-generate-meta
      (lambda (_stx16036_ . _args16038_)
        (let ((__tmp17640
               (lambda () (apply gxc#compile-e _stx16036_ _args16038_)))
              (__tmp17639 (force gxc#&generate-meta)))
          (declare (not safe))
          (call-with-parameters
           __tmp17640
           gxc#current-compile-methods
           __tmp17639))))
    (define gxc#&generate-meta-phi
      (make-promise
       (lambda ()
         (let ((_tbl16033_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#begin gxc#generate-meta-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#begin-syntax
              gxc#generate-meta-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#define-syntax
              gxc#generate-meta-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#define-alias
              gxc#generate-meta-define-alias%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#define-values
              gxc#generate-meta-phi-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#begin-annotation
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#lambda gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#case-lambda gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#let-values gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#letrec-values
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#letrec*-values
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#quote gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#quote-syntax
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#call gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#call-unchecked
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#if gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#ref gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#set! gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#struct-instance?
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#struct-direct-instance?
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#struct-ref gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#struct-set! gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#struct-direct-ref
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#struct-direct-set!
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#struct-unchecked-ref
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16033_
              '%#struct-unchecked-set!
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16033_ '%#declare void))
           _tbl16033_))))
    (define gxc#apply-generate-meta-phi
      (lambda (_stx16026_ . _args16028_)
        (let ((__tmp17642
               (lambda () (apply gxc#compile-e _stx16026_ _args16028_)))
              (__tmp17641 (force gxc#&generate-meta-phi)))
          (declare (not safe))
          (call-with-parameters
           __tmp17642
           gxc#current-compile-methods
           __tmp17641))))
    (define gxc#collect-begin%
      (lambda (_stx15983_ . _args15984_)
        (let* ((_g1598615996_
                (lambda (_g1598715993_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1598715993_))))
               (_g1598516023_
                (lambda (_g1598715999_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1598715999_))
                      (let ((_e1599116001_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1598715999_))))
                        (let ((_hd1599016004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1599116001_)))
                              (_tl1598916006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1599116001_))))
                          ((lambda (_L16009_)
                             (for-each
                              (lambda (_g1601816020_)
                                (apply gxc#compile-e
                                       _g1601816020_
                                       _args15984_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L16009_))))
                           _tl1598916006_)))
                      (let ()
                        (declare (not safe))
                        (_g1598615996_ _g1598715999_))))))
          (declare (not safe))
          (_g1598516023_ _stx15983_))))
    (define gxc#collect-begin-syntax%
      (lambda (_stx15979_ . _args15980_)
        (let ((__tmp17645
               (lambda () (apply gxc#collect-begin% _stx15979_ _args15980_)))
              (__tmp17643
               (let ((__tmp17644 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp17644 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp17645
           gx#current-expander-phi
           __tmp17643))))
    (define gxc#collect-module%
      (lambda (_stx15921_ . _args15922_)
        (let* ((_g1592415938_
                (lambda (_g1592515935_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1592515935_))))
               (_g1592315976_
                (lambda (_g1592515941_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1592515941_))
                      (let ((_e1593015943_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1592515941_))))
                        (let ((_hd1592915946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1593015943_)))
                              (_tl1592815948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1593015943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1592815948_))
                              (let ((_e1593315951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1592815948_))))
                                (let ((_hd1593215954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1593315951_)))
                                      (_tl1593115956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1593315951_))))
                                  ((lambda (_L15959_ _L15960_)
                                     (let* ((_ctx15973_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L15960_)))
                                            (__tmp17646
                                             (lambda ()
                                               (apply gxc#compile-e
                                                      (##structure-ref
                                                       _ctx15973_
                                                       '11
                                                       gx#module-context::t
                                                       '#f)
                                                      _args15922_))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp17646
                                        gx#current-expander-context
                                        _ctx15973_)))
                                   _tl1593115956_
                                   _hd1593215954_)))
                              (let ()
                                (declare (not safe))
                                (_g1592415938_ _g1592515941_)))))
                      (let ()
                        (declare (not safe))
                        (_g1592415938_ _g1592515941_))))))
          (declare (not safe))
          (_g1592315976_ _stx15921_))))
    (define gxc#collect-begin-annotation%
      (lambda (_stx15853_ . _args15854_)
        (let* ((_g1585615873_
                (lambda (_g1585715870_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1585715870_))))
               (_g1585515918_
                (lambda (_g1585715876_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1585715876_))
                      (let ((_e1586215878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1585715876_))))
                        (let ((_hd1586115881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1586215878_)))
                              (_tl1586015883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1586215878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1586015883_))
                              (let ((_e1586515886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1586015883_))))
                                (let ((_hd1586415889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1586515886_)))
                                      (_tl1586315891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1586515886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1586315891_))
                                      (let ((_e1586815894_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1586315891_))))
                                        (let ((_hd1586715897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1586815894_)))
                                              (_tl1586615899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1586815894_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1586615899_))
                                              ((lambda (_L15902_ _L15903_)
                                                 (apply gxc#compile-e
                                                        _L15902_
                                                        _args15854_))
                                               _hd1586715897_
                                               _hd1586415889_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1585615873_
                                                 _g1585715876_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1585615873_ _g1585715876_)))))
                              (let ()
                                (declare (not safe))
                                (_g1585615873_ _g1585715876_)))))
                      (let ()
                        (declare (not safe))
                        (_g1585615873_ _g1585715876_))))))
          (declare (not safe))
          (_g1585515918_ _stx15853_))))
    (define gxc#collect-define-values%
      (lambda (_stx15785_ . _args15786_)
        (let* ((_g1578815805_
                (lambda (_g1578915802_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1578915802_))))
               (_g1578715850_
                (lambda (_g1578915808_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1578915808_))
                      (let ((_e1579415810_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1578915808_))))
                        (let ((_hd1579315813_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1579415810_)))
                              (_tl1579215815_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1579415810_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1579215815_))
                              (let ((_e1579715818_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1579215815_))))
                                (let ((_hd1579615821_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1579715818_)))
                                      (_tl1579515823_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1579715818_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1579515823_))
                                      (let ((_e1580015826_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1579515823_))))
                                        (let ((_hd1579915829_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1580015826_)))
                                              (_tl1579815831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1580015826_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1579815831_))
                                              ((lambda (_L15834_ _L15835_)
                                                 (apply gxc#compile-e
                                                        _L15834_
                                                        _args15786_))
                                               _hd1579915829_
                                               _hd1579615821_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1578815805_
                                                 _g1578915808_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1578815805_ _g1578915808_)))))
                              (let ()
                                (declare (not safe))
                                (_g1578815805_ _g1578915808_)))))
                      (let ()
                        (declare (not safe))
                        (_g1578815805_ _g1578915808_))))))
          (declare (not safe))
          (_g1578715850_ _stx15785_))))
    (define gxc#collect-define-syntax%
      (lambda (_stx15716_ . _args15717_)
        (let* ((_g1571915736_
                (lambda (_g1572015733_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1572015733_))))
               (_g1571815782_
                (lambda (_g1572015739_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1572015739_))
                      (let ((_e1572515741_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1572015739_))))
                        (let ((_hd1572415744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1572515741_)))
                              (_tl1572315746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1572515741_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1572315746_))
                              (let ((_e1572815749_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1572315746_))))
                                (let ((_hd1572715752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1572815749_)))
                                      (_tl1572615754_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1572815749_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1572615754_))
                                      (let ((_e1573115757_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1572615754_))))
                                        (let ((_hd1573015760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1573115757_)))
                                              (_tl1572915762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1573115757_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1572915762_))
                                              ((lambda (_L15765_ _L15766_)
                                                 (let ((__tmp17649
                                                        (lambda ()
                                                          (apply gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15765_
                         _args15717_)))
               (__tmp17647
                (let ((__tmp17648 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp17648 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp17649
                                                    gx#current-expander-phi
                                                    __tmp17647)))
                                               _hd1573015760_
                                               _hd1572715752_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1571915736_
                                                 _g1572015739_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1571915736_ _g1572015739_)))))
                              (let ()
                                (declare (not safe))
                                (_g1571915736_ _g1572015739_)))))
                      (let ()
                        (declare (not safe))
                        (_g1571915736_ _g1572015739_))))))
          (declare (not safe))
          (_g1571815782_ _stx15716_))))
    (define gxc#collect-body-lambda%
      (lambda (_stx15648_ . _args15649_)
        (let* ((_g1565115668_
                (lambda (_g1565215665_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1565215665_))))
               (_g1565015713_
                (lambda (_g1565215671_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1565215671_))
                      (let ((_e1565715673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1565215671_))))
                        (let ((_hd1565615676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1565715673_)))
                              (_tl1565515678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1565715673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1565515678_))
                              (let ((_e1566015681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1565515678_))))
                                (let ((_hd1565915684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1566015681_)))
                                      (_tl1565815686_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1566015681_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1565815686_))
                                      (let ((_e1566315689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1565815686_))))
                                        (let ((_hd1566215692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1566315689_)))
                                              (_tl1566115694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1566315689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1566115694_))
                                              ((lambda (_L15697_ _L15698_)
                                                 (apply gxc#compile-e
                                                        _L15697_
                                                        _args15649_))
                                               _hd1566215692_
                                               _hd1565915684_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1565115668_
                                                 _g1565215671_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1565115668_ _g1565215671_)))))
                              (let ()
                                (declare (not safe))
                                (_g1565115668_ _g1565215671_)))))
                      (let ()
                        (declare (not safe))
                        (_g1565115668_ _g1565215671_))))))
          (declare (not safe))
          (_g1565015713_ _stx15648_))))
    (define gxc#collect-body-case-lambda%
      (lambda (_stx15530_ . _args15531_)
        (let* ((_g1553315561_
                (lambda (_g1553415558_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1553415558_))))
               (_g1553215645_
                (lambda (_g1553415564_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1553415564_))
                      (let ((_e1553915566_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1553415564_))))
                        (let ((_hd1553815569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1553915566_)))
                              (_tl1553715571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1553915566_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1553715571_))
                              (let ((_g17650_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1553715571_
                                        '0))))
                                (begin
                                  (let ((_g17651_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17650_)
                                               (##vector-length _g17650_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17651_ 2)))
                                        (error "Context expects 2 values"
                                               _g17651_)))
                                  (let ((_target1554015574_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17650_ 0)))
                                        (_tl1554215576_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17650_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1554215576_))
                                        (letrec ((_loop1554315579_
                                                  (lambda (_hd1554115582_
                                                           _body1554715584_
                                                           _hd1554815586_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1554115582_))
                                                        (let ((_e1554415589_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1554115582_))))
                  (let ((_lp-hd1554515592_
                         (let () (declare (not safe)) (##car _e1554415589_)))
                        (_lp-tl1554615594_
                         (let () (declare (not safe)) (##cdr _e1554415589_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd1554515592_))
                        (let ((_e1555315597_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd1554515592_))))
                          (let ((_hd1555215600_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1555315597_)))
                                (_tl1555115602_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1555315597_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1555115602_))
                                (let ((_e1555615605_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1555115602_))))
                                  (let ((_hd1555515608_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1555615605_)))
                                        (_tl1555415610_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1555615605_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1555415610_))
                                        (let ((__tmp17654
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd1555515608_
                                                       _body1554715584_)))
                                              (__tmp17653
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd1555215600_
                                                       _hd1554815586_))))
                                          (declare (not safe))
                                          (_loop1554315579_
                                           _lp-tl1554615594_
                                           __tmp17654
                                           __tmp17653))
                                        (let ()
                                          (declare (not safe))
                                          (_g1553315561_ _g1553415564_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1553315561_ _g1553415564_)))))
                        (let ()
                          (declare (not safe))
                          (_g1553315561_ _g1553415564_)))))
                (let ((_body1554915613_ (reverse _body1554715584_))
                      (_hd1555015615_ (reverse _hd1554815586_)))
                  ((lambda (_L15618_ _L15619_)
                     (for-each
                      (lambda (_g1563315635_)
                        (apply gxc#compile-e _g1563315635_ _args15531_))
                      (let ((__tmp17652
                             (lambda (_g1563715640_ _g1563815642_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g1563715640_ _g1563815642_)))))
                        (declare (not safe))
                        (foldr1 __tmp17652 '() _L15618_))))
                   _body1554915613_
                   _hd1555015615_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1554315579_
                                             _target1554015574_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1553315561_ _g1553415564_))))))
                              (let ()
                                (declare (not safe))
                                (_g1553315561_ _g1553415564_)))))
                      (let ()
                        (declare (not safe))
                        (_g1553315561_ _g1553415564_))))))
          (declare (not safe))
          (_g1553215645_ _stx15530_))))
    (define gxc#collect-body-let-values%
      (lambda (_stx15383_ . _args15384_)
        (let* ((_g1538615421_
                (lambda (_g1538715418_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1538715418_))))
               (_g1538515527_
                (lambda (_g1538715424_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1538715424_))
                      (let ((_e1539315426_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1538715424_))))
                        (let ((_hd1539215429_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1539315426_)))
                              (_tl1539115431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1539315426_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1539115431_))
                              (let ((_e1539615434_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1539115431_))))
                                (let ((_hd1539515437_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1539615434_)))
                                      (_tl1539415439_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1539615434_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1539515437_))
                                      (let ((_g17655_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1539515437_
                                                '0))))
                                        (begin
                                          (let ((_g17656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17655_)
                                                       (##vector-length
                                                        _g17655_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17656_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17656_)))
                                          (let ((_target1539715442_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g17655_ 0)))
                                                (_tl1539915444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g17655_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1539915444_))
                                                (letrec ((_loop1540015447_
                                                          (lambda (_hd1539815450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1540415452_
                           _hd1540515454_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1539815450_))
                        (let ((_e1540115457_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1539815450_))))
                          (let ((_lp-hd1540215460_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1540115457_)))
                                (_lp-tl1540315462_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1540115457_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd1540215460_))
                                (let ((_e1541015465_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd1540215460_))))
                                  (let ((_hd1540915468_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1541015465_)))
                                        (_tl1540815470_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1541015465_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1540815470_))
                                        (let ((_e1541315473_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1540815470_))))
                                          (let ((_hd1541215476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1541315473_)))
                                                (_tl1541115478_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1541315473_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1541115478_))
                                                (let ((__tmp17660
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1541215476_
                                                               _expr1540415452_)))
                                                      (__tmp17659
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1540915468_
                                                               _hd1540515454_))))
                                                  (declare (not safe))
                                                  (_loop1540015447_
                                                   _lp-tl1540315462_
                                                   __tmp17660
                                                   __tmp17659))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1538615421_
                                                   _g1538715424_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1538615421_ _g1538715424_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1538615421_ _g1538715424_)))))
                        (let ((_expr1540615481_ (reverse _expr1540415452_))
                              (_hd1540715483_ (reverse _hd1540515454_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1539415439_))
                              (let ((_e1541615486_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1539415439_))))
                                (let ((_hd1541515489_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1541615486_)))
                                      (_tl1541415491_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1541615486_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1541415491_))
                                      ((lambda (_L15494_ _L15495_ _L15496_)
                                         (for-each
                                          (lambda (_g1551515517_)
                                            (apply gxc#compile-e
                                                   _g1551515517_
                                                   _args15384_))
                                          (let ((__tmp17658
                                                 (lambda (_g1551915522_
                                                          _g1552015524_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1551915522_
                                                           _g1552015524_))))
                                                (__tmp17657
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L15494_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp17658
                                                    __tmp17657
                                                    _L15495_))))
                                       _hd1541515489_
                                       _expr1540615481_
                                       _hd1540715483_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1538615421_ _g1538715424_)))))
                              (let ()
                                (declare (not safe))
                                (_g1538615421_ _g1538715424_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop1540015447_
                                                     _target1539715442_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1538615421_
                                                   _g1538715424_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1538615421_ _g1538715424_)))))
                              (let ()
                                (declare (not safe))
                                (_g1538615421_ _g1538715424_)))))
                      (let ()
                        (declare (not safe))
                        (_g1538615421_ _g1538715424_))))))
          (declare (not safe))
          (_g1538515527_ _stx15383_))))
    (define gxc#collect-body-setq%
      (lambda (_stx15315_ . _args15316_)
        (let* ((_g1531815335_
                (lambda (_g1531915332_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1531915332_))))
               (_g1531715380_
                (lambda (_g1531915338_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1531915338_))
                      (let ((_e1532415340_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1531915338_))))
                        (let ((_hd1532315343_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1532415340_)))
                              (_tl1532215345_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1532415340_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1532215345_))
                              (let ((_e1532715348_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1532215345_))))
                                (let ((_hd1532615351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1532715348_)))
                                      (_tl1532515353_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1532715348_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1532515353_))
                                      (let ((_e1533015356_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1532515353_))))
                                        (let ((_hd1532915359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1533015356_)))
                                              (_tl1532815361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1533015356_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1532815361_))
                                              ((lambda (_L15364_ _L15365_)
                                                 (apply gxc#compile-e
                                                        _L15364_
                                                        _args15316_))
                                               _hd1532915359_
                                               _hd1532615351_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1531815335_
                                                 _g1531915338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1531815335_ _g1531915338_)))))
                              (let ()
                                (declare (not safe))
                                (_g1531815335_ _g1531915338_)))))
                      (let ()
                        (declare (not safe))
                        (_g1531815335_ _g1531915338_))))))
          (declare (not safe))
          (_g1531715380_ _stx15315_))))
    (define gxc#collect-operands
      (lambda (_stx15228_ . _args15229_)
        (let* ((_g1523115250_
                (lambda (_g1523215247_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1523215247_))))
               (_g1523015312_
                (lambda (_g1523215253_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1523215253_))
                      (let ((_e1523615255_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1523215253_))))
                        (let ((_hd1523515258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1523615255_)))
                              (_tl1523415260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1523615255_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1523415260_))
                              (let ((_g17661_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1523415260_
                                        '0))))
                                (begin
                                  (let ((_g17662_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17661_)
                                               (##vector-length _g17661_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17662_ 2)))
                                        (error "Context expects 2 values"
                                               _g17662_)))
                                  (let ((_target1523715263_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17661_ 0)))
                                        (_tl1523915265_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17661_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1523915265_))
                                        (letrec ((_loop1524015268_
                                                  (lambda (_hd1523815271_
                                                           _rands1524415273_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1523815271_))
                                                        (let ((_e1524115276_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1523815271_))))
                  (let ((_lp-hd1524215279_
                         (let () (declare (not safe)) (##car _e1524115276_)))
                        (_lp-tl1524315281_
                         (let () (declare (not safe)) (##cdr _e1524115276_))))
                    (let ((__tmp17664
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1524215279_ _rands1524415273_))))
                      (declare (not safe))
                      (_loop1524015268_ _lp-tl1524315281_ __tmp17664))))
                (let ((_rands1524515284_ (reverse _rands1524415273_)))
                  ((lambda (_L15287_)
                     (for-each
                      (lambda (_g1530015302_)
                        (apply gxc#compile-e _g1530015302_ _args15229_))
                      (let ((__tmp17663
                             (lambda (_g1530415307_ _g1530515309_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g1530415307_ _g1530515309_)))))
                        (declare (not safe))
                        (foldr1 __tmp17663 '() _L15287_))))
                   _rands1524515284_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1524015268_
                                             _target1523715263_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1523115250_ _g1523215253_))))))
                              (let ()
                                (declare (not safe))
                                (_g1523115250_ _g1523215253_)))))
                      (let ()
                        (declare (not safe))
                        (_g1523115250_ _g1523215253_))))))
          (declare (not safe))
          (_g1523015312_ _stx15228_))))
    (define gxc#collect-bindings-define-values%
      (lambda (_stx15159_)
        (let* ((_g1516115178_
                (lambda (_g1516215175_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1516215175_))))
               (_g1516015225_
                (lambda (_g1516215181_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1516215181_))
                      (let ((_e1516715183_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1516215181_))))
                        (let ((_hd1516615186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1516715183_)))
                              (_tl1516515188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1516715183_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1516515188_))
                              (let ((_e1517015191_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1516515188_))))
                                (let ((_hd1516915194_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1517015191_)))
                                      (_tl1516815196_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1517015191_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1516815196_))
                                      (let ((_e1517315199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1516815196_))))
                                        (let ((_hd1517215202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1517315199_)))
                                              (_tl1517115204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1517315199_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1517115204_))
                                              ((lambda (_L15207_ _L15208_)
                                                 (let ((__tmp17665
                                                        (lambda (_bind15223_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind15223_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind15223_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp17665
                                                    _L15208_)))
                                               _hd1517215202_
                                               _hd1516915194_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1516115178_
                                                 _g1516215181_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1516115178_ _g1516215181_)))))
                              (let ()
                                (declare (not safe))
                                (_g1516115178_ _g1516215181_)))))
                      (let ()
                        (declare (not safe))
                        (_g1516115178_ _g1516215181_))))))
          (declare (not safe))
          (_g1516015225_ _stx15159_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_stx15092_)
        (let* ((_g1509415111_
                (lambda (_g1509515108_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1509515108_))))
               (_g1509315156_
                (lambda (_g1509515114_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1509515114_))
                      (let ((_e1510015116_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1509515114_))))
                        (let ((_hd1509915119_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1510015116_)))
                              (_tl1509815121_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1510015116_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1509815121_))
                              (let ((_e1510315124_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1509815121_))))
                                (let ((_hd1510215127_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1510315124_)))
                                      (_tl1510115129_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1510315124_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1510115129_))
                                      (let ((_e1510615132_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1510115129_))))
                                        (let ((_hd1510515135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1510615132_)))
                                              (_tl1510415137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1510615132_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1510415137_))
                                              ((lambda (_L15140_ _L15141_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L15141_
                                                    '#t)))
                                               _hd1510515135_
                                               _hd1510215127_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1509415111_
                                                 _g1509515114_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1509415111_ _g1509515114_)))))
                              (let ()
                                (declare (not safe))
                                (_g1509415111_ _g1509515114_)))))
                      (let ()
                        (declare (not safe))
                        (_g1509415111_ _g1509515114_))))))
          (declare (not safe))
          (_g1509315156_ _stx15092_))))
    (define gxc#lift-modules-module%
      (lambda (_stx15034_ _modules15035_)
        (let* ((_g1503715051_
                (lambda (_g1503815048_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1503815048_))))
               (_g1503615089_
                (lambda (_g1503815054_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1503815054_))
                      (let ((_e1504315056_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1503815054_))))
                        (let ((_hd1504215059_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1504315056_)))
                              (_tl1504115061_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1504315056_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1504115061_))
                              (let ((_e1504615064_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1504115061_))))
                                (let ((_hd1504515067_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1504615064_)))
                                      (_tl1504415069_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1504615064_))))
                                  ((lambda (_L15072_ _L15073_)
                                     (let ((_ctx15086_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L15073_))))
                                       (set-box!
                                        _modules15035_
                                        (let ((__tmp17666
                                               (unbox _modules15035_)))
                                          (declare (not safe))
                                          (cons _ctx15086_ __tmp17666)))
                                       (let ((__tmp17667
                                              (lambda ()
                                                (let ((__tmp17668
                                                       (##structure-ref
                                                        _ctx15086_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e
                                                   __tmp17668
                                                   _modules15035_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp17667
                                          gx#current-expander-context
                                          _ctx15086_))))
                                   _tl1504415069_
                                   _hd1504515067_)))
                              (let ()
                                (declare (not safe))
                                (_g1503715051_ _g1503815054_)))))
                      (let ()
                        (declare (not safe))
                        (_g1503715051_ _g1503815054_))))))
          (declare (not safe))
          (_g1503615089_ _stx15034_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls1499014992_ (gxc#current-compile-decls)))
          (if _decls1499014992_
              (let ((_decls14995_ _decls1499014992_))
                (let _lp14997_ ((_rest14999_ _decls14995_))
                  (let* ((_rest1500015008_ _rest14999_)
                         (_else1500215016_ (lambda () '#f))
                         (_K1500415022_
                          (lambda (_decls15019_ _decl15020_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl15020_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl15020_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp14997_ _decls15019_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1500015008_))
                        (let ((_hd1500515025_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1500015008_)))
                              (_tl1500615027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1500015008_))))
                          (let* ((_decl15030_ _hd1500515025_)
                                 (_decls15032_ _tl1500615027_))
                            (declare (not safe))
                            (_K1500415022_ _decls15032_ _decl15030_)))
                        (let () (declare (not safe)) (_else1500215016_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id14984_ _syntax?14985_)
        (let ((_eid14987_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id14984_))
                '1
                gx#binding::t
                '#f))
              (_ht14988_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid14987_)
              '#!void
              (let ((__tmp17669
                     (let ((__tmp17670
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid14987_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp17670 _syntax?14985_))))
                (declare (not safe))
                (table-set! _ht14988_ _eid14987_ __tmp17669))))))
    (define gxc#runtime-identifier=?
      (lambda (_id114977_ _id214978_)
        (letrec ((_symbol-e14980_
                  (lambda (_id14982_)
                    (if (let () (declare (not safe)) (symbol? _id14982_))
                        _id14982_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id14982_))))))
          (let ((__tmp17672
                 (let () (declare (not safe)) (_symbol-e14980_ _id114977_)))
                (__tmp17671
                 (let () (declare (not safe)) (_symbol-e14980_ _id214978_))))
            (declare (not safe))
            (eq? __tmp17672 __tmp17671)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id14955_)
        (let ((_$e14957_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id14955_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id14955_))
                   '#f)))
          (if _$e14957_
              ((lambda (_bind14960_)
                 (let ((_eid14962_
                        (##structure-ref _bind14960_ '1 gx#binding::t '#f))
                       (_ht14963_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid14962_)
                       _eid14962_
                       (let ((_$e14965_
                              (let ()
                                (declare (not safe))
                                (table-ref _ht14963_ _eid14962_ '#f))))
                         (if _$e14965_
                             (values _$e14965_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind14960_
                                    'gx#local-binding::t))
                                 (let ((_gid14968_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid14962_))))
                                   (let ()
                                     (declare (not safe))
                                     (table-set!
                                      _ht14963_
                                      _eid14962_
                                      _gid14968_))
                                   _gid14968_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind14960_
                                        'gx#module-binding::t))
                                     (let ((_gid14975_
                                            (let ((_$e14970_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind14960_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e14970_
                                                  ((lambda (_ns14973_)
                                                     (make-symbol
                                                      _ns14973_
                                                      '"#"
                                                      _eid14962_))
                                                   _$e14970_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid14962_))))))
                                       (let ()
                                         (declare (not safe))
                                         (table-set!
                                          _ht14963_
                                          _eid14962_
                                          _gid14975_))
                                       _gid14975_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id14955_
                                        _eid14962_
                                        _bind14960_)))))))))
               _$e14957_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id14955_)))
                  (let () (declare (not safe)) (gx#stx-e _id14955_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id14955_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id14953_)
        (if (let () (declare (not safe)) (gx#identifier? _id14953_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id14953_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym14933_ _quote?14934_)
        (let* ((_ht14936_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e14938_
                (let ()
                  (declare (not safe))
                  (table-ref _ht14936_ _sym14933_ '#f))))
          (if _$e14938_
              (values _$e14938_)
              (let ((_g14941_
                     (if _quote?14934_
                         (make-symbol
                          '"__"
                          _sym14933_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym14933_ '"_"))))
                (let ()
                  (declare (not safe))
                  (table-set! _ht14936_ _sym14933_ _g14941_))
                _g14941_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym14946_)
        (let ((_quote?14948_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym14946_
           _quote?14948_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g17674_
        (let ((_g17673_ (let () (declare (not safe)) (##length _g17674_))))
          (cond ((let () (declare (not safe)) (##fx= _g17673_ 1))
                 (apply (lambda (_sym14946_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym14946_)))
                        _g17674_))
                ((let () (declare (not safe)) (##fx= _g17673_ 2))
                 (apply (lambda (_sym14950_ _quote?14951_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym14950_
                             _quote?14951_)))
                        _g17674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g17674_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id14930_)
        (let ((__tmp17675
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id14930_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp17675))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key14890_)
        (if (interned-symbol? _key14890_)
            _key14890_
            (if (uninterned-symbol? _key14890_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key14890_))
                (let* ((_key1489114898_ _key14890_)
                       (_E1489314902_
                        (lambda ()
                          (error '"No clause matching" _key1489114898_)))
                       (_K1489414918_
                        (lambda (_mark14905_ _eid14906_)
                          (let ((_$e14908_
                                 (##structure-ref
                                  _mark14905_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e14908_
                                ((lambda (_ht14911_)
                                   (let ((_$e14913_
                                          (let ()
                                            (declare (not safe))
                                            (table-ref
                                             _ht14911_
                                             _eid14906_
                                             '#f))))
                                     (if _$e14913_
                                         ((lambda (_id14916_)
                                            (if (interned-symbol? _id14916_)
                                                _id14916_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id14916_))))
                                          _$e14913_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid14906_)))))
                                 _$e14908_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid14906_)))))))
                  (if (let () (declare (not safe)) (##pair? _key1489114898_))
                      (let ((_hd1489514921_
                             (let ()
                               (declare (not safe))
                               (##car _key1489114898_)))
                            (_tl1489614923_
                             (let ()
                               (declare (not safe))
                               (##cdr _key1489114898_))))
                        (let* ((_eid14926_ _hd1489514921_)
                               (_mark14928_ _tl1489614923_))
                          (declare (not safe))
                          (_K1489414918_ _mark14928_ _eid14926_)))
                      (let () (declare (not safe)) (_E1489314902_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top14877_)
        (if _top14877_
            (let ((_ns14879_
                   (##structure-ref
                    (let ((__tmp17676 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp17676))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi14880_ (gx#current-expander-phi)))
              (if _ns14879_
                  (if (fxpositive? _phi14880_)
                      (make-symbol
                       _ns14879_
                       '"["
                       (number->string _phi14880_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol _ns14879_ '"#_" (gensym) '"_"))
                  (if (fxpositive? _phi14880_)
                      (make-symbol
                       '"["
                       (number->string _phi14880_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol '"_" (gensym) '"_"))))
            (make-symbol '"_" (gensym) '"_"))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top14886_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top14886_))))
    (define gxc#generate-runtime-temporary
      (lambda _g17678_
        (let ((_g17677_ (let () (declare (not safe)) (##length _g17678_))))
          (cond ((let () (declare (not safe)) (##fx= _g17677_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g17678_))
                ((let () (declare (not safe)) (##fx= _g17677_ 1))
                 (apply (lambda (_top14888_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top14888_)))
                        _g17678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g17678_))))))
    (define gxc#generate-runtime-empty (lambda (_stx14874_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_stx14726_)
        (letrec ((_simplify14728_
                  (lambda (_body14772_)
                    (let _lp14774_ ((_rest14776_ _body14772_) (_r14777_ '()))
                      (let* ((_rest1477814786_ _rest14776_)
                             (_else1478014794_ (lambda () (reverse _r14777_)))
                             (_K1478214862_
                              (lambda (_rest14797_ _hd14798_)
                                (let* ((_hd1479914815_ _hd14798_)
                                       (_else1480314823_
                                        (lambda ()
                                          (let ((__tmp17679
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd14798_ _r14777_))))
                                            (declare (not safe))
                                            (_lp14774_
                                             _rest14797_
                                             __tmp17679)))))
                                  (let ((_K1481114852_
                                         (lambda (_exprs14850_)
                                           (let ((__tmp17680
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest14797_
                                                            _exprs14850_))))
                                             (declare (not safe))
                                             (_lp14774_ __tmp17680 _r14777_))))
                                        (_K1480614836_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest14797_))
                                               (let ((__tmp17681
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd14798_
                                                              _r14777_))))
                                                 (declare (not safe))
                                                 (_lp14774_
                                                  _rest14797_
                                                  __tmp17681))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp14774_
                                                  _rest14797_
                                                  _r14777_)))))
                                        (_K1480514828_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest14797_))
                                               (let ((__tmp17682
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd14798_
                                                              _r14777_))))
                                                 (declare (not safe))
                                                 (_lp14774_
                                                  _rest14797_
                                                  __tmp17682))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp14774_
                                                  _rest14797_
                                                  _r14777_))))))
                                    (let ((_try-match1480214831_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd1479914815_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K1480514828_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else1480314823_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1479914815_))
                                          (let ((_tl1481314857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1479914815_)))
                                                (_hd1481214855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1479914815_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1481214855_
                                                         'begin))
                                                (let ((_exprs14860_
                                                       _tl1481314857_))
                                                  (declare (not safe))
                                                  (_K1481114852_ _exprs14860_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd1481214855_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1481314857_))
                                                        (let ((_tl1481014844_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1481314857_))))
                  (if (let () (declare (not safe)) (##null? _tl1481014844_))
                      (let () (declare (not safe)) (_K1480614836_))
                      (let () (declare (not safe)) (_try-match1480214831_))))
                (let () (declare (not safe)) (_try-match1480214831_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match1480214831_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match1480214831_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1477814786_))
                            (let ((_hd1478314865_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1477814786_)))
                                  (_tl1478414867_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1477814786_))))
                              (let* ((_hd14870_ _hd1478314865_)
                                     (_rest14872_ _tl1478414867_))
                                (declare (not safe))
                                (_K1478214862_ _rest14872_ _hd14870_)))
                            (let ()
                              (declare (not safe))
                              (_else1478014794_))))))))
          (let* ((_g1473014740_
                  (lambda (_g1473114737_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1473114737_))))
                 (_g1472914769_
                  (lambda (_g1473114743_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1473114743_))
                        (let ((_e1473514745_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1473114743_))))
                          (let ((_hd1473414748_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1473514745_)))
                                (_tl1473314750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1473514745_))))
                            ((lambda (_L14753_)
                               (let* ((_body14764_
                                       (map gxc#compile-e _L14753_))
                                      (_body14766_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify14728_ _body14764_))))
                                 (if (fx= (length _body14766_) '1)
                                     (car _body14766_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body14766_)))))
                             _tl1473314750_)))
                        (let ()
                          (declare (not safe))
                          (_g1473014740_ _g1473114743_))))))
            (declare (not safe))
            (_g1472914769_ _stx14726_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_stx14688_)
        (let* ((_g1469014700_
                (lambda (_g1469114697_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1469114697_))))
               (_g1468914723_
                (lambda (_g1469114703_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1469114703_))
                      (let ((_e1469514705_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1469114703_))))
                        (let ((_hd1469414708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1469514705_)))
                              (_tl1469314710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1469514705_))))
                          ((lambda (_L14713_)
                             (let ((__tmp17683
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L14713_))))
                               (declare (not safe))
                               (cons 'begin __tmp17683)))
                           _tl1469314710_)))
                      (let ()
                        (declare (not safe))
                        (_g1469014700_ _g1469114703_))))))
          (declare (not safe))
          (_g1468914723_ _stx14688_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_stx14562_)
        (let* ((___stx1633016331_ _stx14562_)
               (_g1456514593_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1633016331_)))))
          (let ((___kont1633216333_
                 (lambda (_L14670_ _L14671_)
                   (let () (declare (not safe)) (gxc#compile-e _L14670_))))
                (___kont1633416335_
                 (lambda (_L14622_ _L14623_)
                   (let ((_decls14638_ (map gx#syntax->datum _L14623_)))
                     (let ((__tmp17686
                            (lambda ()
                              (let ((__tmp17687
                                     (let ((__tmp17690
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls14638_)))
                                           (__tmp17688
                                            (let ((__tmp17689
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L14622_))))
                                              (declare (not safe))
                                              (cons __tmp17689 '()))))
                                       (declare (not safe))
                                       (cons __tmp17690 __tmp17688))))
                                (declare (not safe))
                                (cons 'begin __tmp17687))))
                           (__tmp17684
                            (let ((__tmp17685 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp17685 _decls14638_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp17686
                        gxc#current-compile-decls
                        __tmp17684))))))
            (let ((___match1635516356_
                   (lambda (_e1457114646_
                            _hd1457014649_
                            _tl1456914651_
                            _e1457414654_
                            _hd1457314657_
                            _tl1457214659_
                            _e1457714662_
                            _hd1457614665_
                            _tl1457514667_)
                     (let ((_L14670_ _hd1457614665_) (_L14671_ _hd1457314657_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L14671_))
                           (___kont1633216333_ _L14670_ _L14671_)
                           (___kont1633416335_
                            _hd1457614665_
                            _hd1457314657_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1633016331_))
                  (let ((_e1457114646_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx1633016331_))))
                    (let ((_tl1456914651_
                           (let () (declare (not safe)) (##cdr _e1457114646_)))
                          (_hd1457014649_
                           (let ()
                             (declare (not safe))
                             (##car _e1457114646_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1456914651_))
                          (let ((_e1457414654_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1456914651_))))
                            (let ((_tl1457214659_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1457414654_)))
                                  (_hd1457314657_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1457414654_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl1457214659_))
                                  (let ((_e1457714662_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl1457214659_))))
                                    (let ((_tl1457514667_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1457714662_)))
                                          (_hd1457614665_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1457714662_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1457514667_))
                                          (___match1635516356_
                                           _e1457114646_
                                           _hd1457014649_
                                           _tl1456914651_
                                           _e1457414654_
                                           _hd1457314657_
                                           _tl1457214659_
                                           _e1457714662_
                                           _hd1457614665_
                                           _tl1457514667_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1456514593_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1456514593_)))))
                          (let () (declare (not safe)) (_g1456514593_)))))
                  (let () (declare (not safe)) (_g1456514593_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_stx14522_)
        (let* ((_g1452414534_
                (lambda (_g1452514531_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1452514531_))))
               (_g1452314559_
                (lambda (_g1452514537_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1452514537_))
                      (let ((_e1452914539_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1452514537_))))
                        (let ((_hd1452814542_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1452914539_)))
                              (_tl1452714544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1452914539_))))
                          ((lambda (_L14547_)
                             (let ((_decls14557_
                                    (map gx#syntax->datum _L14547_)))
                               (gxc#current-compile-decls
                                (let ((__tmp17691 (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp17691 _decls14557_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls14557_))))
                           _tl1452714544_)))
                      (let ()
                        (declare (not safe))
                        (_g1452414534_ _g1452514537_))))))
          (declare (not safe))
          (_g1452314559_ _stx14522_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_stx14269_)
        (let* ((_g1427114288_
                (lambda (_g1427214285_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1427214285_))))
               (_g1427014519_
                (lambda (_g1427214291_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1427214291_))
                      (let ((_e1427714293_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1427214291_))))
                        (let ((_hd1427614296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1427714293_)))
                              (_tl1427514298_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1427714293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1427514298_))
                              (let ((_e1428014301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1427514298_))))
                                (let ((_hd1427914304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1428014301_)))
                                      (_tl1427814306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1428014301_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1427814306_))
                                      (let ((_e1428314309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1427814306_))))
                                        (let ((_hd1428214312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1428314309_)))
                                              (_tl1428114314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1428314309_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1428114314_))
                                              ((lambda (_L14317_ _L14318_)
                                                 (let* ((___stx1640816409_
                                                         _L14318_)
                                                        (_g1433514349_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1640816409_)))))
                                                   (let ((___kont1641016411_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L14317_))))
                                                         (___kont1641216413_
                                                          (lambda (_L14481_)
                                                            (let ((_eid14490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L14481_))))
                      (let ((_lambda-expr1449114493_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L14317_))))
                        (if _lambda-expr1449114493_
                            (let* ((_lambda-expr14496_ _lambda-expr1449114493_)
                                   (__tmp17692
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (table-set!
                               __tmp17692
                               _lambda-expr14496_
                               _eid14490_))
                            '#f))
                      (let ((__tmp17693
                             (let ((__tmp17694
                                    (let ((__tmp17695
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e _L14317_))))
                                      (declare (not safe))
                                      (cons __tmp17695 '()))))
                               (declare (not safe))
                               (cons _eid14490_ __tmp17694))))
                        (declare (not safe))
                        (cons 'define __tmp17693)))))
                 (___kont1641416415_
                  (lambda ()
                    (let* ((_tmp14356_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body14465_
                            (let _lp14358_ ((_rest14360_ _L14318_)
                                            (_k14361_ '0)
                                            (_r14362_ '()))
                              (let* ((___stx1637816379_ _rest14360_)
                                     (_g1436714384_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1637816379_)))))
                                (let ((___kont1638016381_
                                       (lambda (_L14452_)
                                         (let ((__tmp17696
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k14361_ '1))))
                                           (declare (not safe))
                                           (_lp14358_
                                            _L14452_
                                            __tmp17696
                                            _r14362_))))
                                      (___kont1638216383_
                                       (lambda (_L14425_ _L14426_)
                                         (let ((__tmp17703
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k14361_ '1)))
                                               (__tmp17697
                                                (let ((__tmp17698
                                                       (let ((__tmp17699
                                                              (let ((__tmp17702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L14426_)))
                            (__tmp17700
                             (let ((__tmp17701
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp14356_
                                       _k14361_
                                       _L14425_))))
                               (declare (not safe))
                               (cons __tmp17701 '()))))
                        (declare (not safe))
                        (cons __tmp17702 __tmp17700))))
                 (declare (not safe))
                 (cons 'define __tmp17699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17698 _r14362_))))
                                           (declare (not safe))
                                           (_lp14358_
                                            _L14425_
                                            __tmp17703
                                            __tmp17697))))
                                      (___kont1638416385_
                                       (lambda (_L14396_)
                                         (let ((__tmp17704
                                                (let ((__tmp17705
                                                       (let ((__tmp17706
                                                              (let ((__tmp17709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L14396_)))
                            (__tmp17707
                             (let ((__tmp17708
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp14356_
                                       _k14361_))))
                               (declare (not safe))
                               (cons __tmp17708 '()))))
                        (declare (not safe))
                        (cons __tmp17709 __tmp17707))))
                 (declare (not safe))
                 (cons 'define __tmp17706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17705 '()))))
                                           (declare (not safe))
                                           (foldl1 cons __tmp17704 _r14362_))))
                                      (___kont1638616387_
                                       (lambda () (reverse _r14362_))))
                                  (let ((_g1436514412_
                                         (lambda ()
                                           (let ((_L14396_ ___stx1637816379_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L14396_))
                                                 (___kont1638416385_ _L14396_)
                                                 (___kont1638616387_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1637816379_))
                                        (let ((_e1437214441_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1637816379_))))
                                          (let ((_tl1437014446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1437214441_)))
                                                (_hd1437114444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1437214441_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd1437114444_))
                                                (let ((_e1437314449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1437114444_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e1437314449_
                                                                '#f))
                                                      (___kont1638016381_
                                                       _tl1437014446_)
                                                      (___kont1638216383_
                                                       _tl1437014446_
                                                       _hd1437114444_)))
                                                (___kont1638216383_
                                                 _tl1437014446_
                                                 _hd1437114444_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1436514412_)))))))))
                      (let ((__tmp17710
                             (let ((__tmp17713
                                    (let ((__tmp17714
                                           (let ((__tmp17715
                                                  (let ((__tmp17716
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _L14317_))))
                                                    (declare (not safe))
                                                    (cons __tmp17716 '()))))
                                             (declare (not safe))
                                             (cons _tmp14356_ __tmp17715))))
                                      (declare (not safe))
                                      (cons 'define __tmp17714)))
                                   (__tmp17711
                                    (let ((__tmp17712
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp14356_
                                              _L14318_
                                              _L14317_))))
                                      (declare (not safe))
                                      (cons __tmp17712 _body14465_))))
                               (declare (not safe))
                               (cons __tmp17713 __tmp17711))))
                        (declare (not safe))
                        (cons 'begin __tmp17710))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx1640816409_))
                                                         (let ((_e1433914503_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx1640816409_))))
                   (let ((_tl1433714508_
                          (let () (declare (not safe)) (##cdr _e1433914503_)))
                         (_hd1433814506_
                          (let () (declare (not safe)) (##car _e1433914503_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd1433814506_))
                         (let ((_e1434014511_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd1433814506_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e1434014511_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1433714508_))
                                   (___kont1641016411_)
                                   (___kont1641416415_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1433714508_))
                                   (___kont1641216413_ _hd1433814506_)
                                   (___kont1641416415_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1433714508_))
                             (___kont1641216413_ _hd1433814506_)
                             (___kont1641416415_)))))
                 (___kont1641416415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1428214312_
                                               _hd1427914304_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1427114288_
                                                 _g1427214291_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1427114288_ _g1427214291_)))))
                              (let ()
                                (declare (not safe))
                                (_g1427114288_ _g1427214291_)))))
                      (let ()
                        (declare (not safe))
                        (_g1427114288_ _g1427214291_))))))
          (declare (not safe))
          (_g1427014519_ _stx14269_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals14245_ _hd14246_ _expr14247_)
        (let ((_$e14249_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr14247_))))
          (if _$e14249_
              ((lambda (_count14252_)
                 (let ((_len14254_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd14246_)))
                       (_cmp14255_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd14246_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len14254_ '0)
                           (_cmp14255_ _count14252_ _len14254_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr14247_
                          _hd14246_)))))
               _$e14249_)
              (let* ((_len14260_
                      (let () (declare (not safe)) (gx#stx-length _hd14246_)))
                     (_cmp14262_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd14246_))
                          '##fx=
                          '##fx>=))
                     (_errmsg14264_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd14246_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len14260_)
                       '" values"))
                     (_count14266_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp17740
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd14246_))))
                           (declare (not safe))
                           (not __tmp17740))
                         (fx= _len14260_ '0))
                    '#!void
                    (let ((__tmp17717
                           (let ((__tmp17736
                                  (let ((__tmp17737
                                         (let ((__tmp17738
                                                (let ((__tmp17739
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals14245_))))
                                                  (declare (not safe))
                                                  (cons __tmp17739 '()))))
                                           (declare (not safe))
                                           (cons _count14266_ __tmp17738))))
                                    (declare (not safe))
                                    (cons __tmp17737 '())))
                                 (__tmp17718
                                  (let ((__tmp17719
                                         (let ((__tmp17720
                                                (let ((__tmp17725
                                                       (let ((__tmp17726
                                                              (let ((__tmp17727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp17734
                                        (let ((__tmp17735
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len14260_ '()))))
                                          (declare (not safe))
                                          (cons _count14266_ __tmp17735))))
                                   (declare (not safe))
                                   (cons _cmp14262_ __tmp17734))
                                 (let ((__tmp17728
                                        (let ((__tmp17729
                                               (let ((__tmp17730
                                                      (let ((__tmp17731
                                                             (let ((__tmp17732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17733
                                   (let ()
                                     (declare (not safe))
                                     (cons _len14260_ '()))))
                              (declare (not safe))
                              (cons _count14266_ __tmp17733))))
                       (declare (not safe))
                       (cons _cmp14262_ __tmp17732))))
                (declare (not safe))
                (cons __tmp17731 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp17730))))
                                          (declare (not safe))
                                          (cons '() __tmp17729))))
                                   (declare (not safe))
                                   (cons 'let __tmp17728)))))
                        (declare (not safe))
                        (cons __tmp17727 '()))))
                 (declare (not safe))
                 (cons 'not __tmp17726)))
              (__tmp17721
               (let ((__tmp17722
                      (let ((__tmp17723
                             (let ((__tmp17724
                                    (let ()
                                      (declare (not safe))
                                      (cons _count14266_ '()))))
                               (declare (not safe))
                               (cons _errmsg14264_ __tmp17724))))
                        (declare (not safe))
                        (cons 'error __tmp17723))))
                 (declare (not safe))
                 (cons __tmp17722 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17725
                                                        __tmp17721))))
                                           (declare (not safe))
                                           (cons 'if __tmp17720))))
                                    (declare (not safe))
                                    (cons __tmp17719 '()))))
                             (declare (not safe))
                             (cons __tmp17736 __tmp17718))))
                      (declare (not safe))
                      (cons 'let __tmp17717))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var14240_)
        (letrec ((_generate-inline14242_
                  (lambda ()
                    (let ((__tmp17741
                           (let ((__tmp17746
                                  (let ((__tmp17747
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14240_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp17747)))
                                 (__tmp17742
                                  (let ((__tmp17744
                                         (let ((__tmp17745
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var14240_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length __tmp17745)))
                                        (__tmp17743
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp17744 __tmp17743))))
                             (declare (not safe))
                             (cons __tmp17746 __tmp17742))))
                      (declare (not safe))
                      (cons 'if __tmp17741)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline14242_))
              (let ((__tmp17748
                     (let ((__tmp17749
                            (let ((__tmp17750
                                   (let ((__tmp17751
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline14242_))))
                                     (declare (not safe))
                                     (cons __tmp17751 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp17750))))
                       (declare (not safe))
                       (cons '() __tmp17749))))
                (declare (not safe))
                (cons 'let __tmp17748))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var14233_ _i14234_ _rest14235_)
        (letrec ((_generate-inline14237_
                  (lambda ()
                    (if (and (fx= _i14234_ '0)
                             (let ((__tmp17762
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest14235_))))
                               (declare (not safe))
                               (not __tmp17762)))
                        (let ((__tmp17754
                               (let ((__tmp17760
                                      (let ((__tmp17761
                                             (let ()
                                               (declare (not safe))
                                               (cons _var14233_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp17761)))
                                     (__tmp17755
                                      (let ((__tmp17757
                                             (let ((__tmp17758
                                                    (let ((__tmp17759
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var14233_
                                                            __tmp17759))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp17758)))
                                            (__tmp17756
                                             (let ()
                                               (declare (not safe))
                                               (cons _var14233_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17757 __tmp17756))))
                                 (declare (not safe))
                                 (cons __tmp17760 __tmp17755))))
                          (declare (not safe))
                          (cons 'if __tmp17754))
                        (let ((__tmp17752
                               (let ((__tmp17753
                                      (let ()
                                        (declare (not safe))
                                        (cons _i14234_ '()))))
                                 (declare (not safe))
                                 (cons _var14233_ __tmp17753))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp17752))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline14237_))
              (let ((__tmp17763
                     (let ((__tmp17764
                            (let ((__tmp17765
                                   (let ((__tmp17766
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline14237_))))
                                     (declare (not safe))
                                     (cons __tmp17766 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp17765))))
                       (declare (not safe))
                       (cons '() __tmp17764))))
                (declare (not safe))
                (cons 'let __tmp17763))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var14230_ _i14231_)
        (if (fx= _i14231_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp17814
                       (let ((__tmp17821
                              (let ((__tmp17822
                                     (let ()
                                       (declare (not safe))
                                       (cons _var14230_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp17822)))
                             (__tmp17815
                              (let ((__tmp17819
                                     (let ((__tmp17820
                                            (let ()
                                              (declare (not safe))
                                              (cons _var14230_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp17820)))
                                    (__tmp17816
                                     (let ((__tmp17817
                                            (let ((__tmp17818
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var14230_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp17818))))
                                       (declare (not safe))
                                       (cons __tmp17817 '()))))
                                (declare (not safe))
                                (cons __tmp17819 __tmp17816))))
                         (declare (not safe))
                         (cons __tmp17821 __tmp17815))))
                  (declare (not safe))
                  (cons 'if __tmp17814))
                (let ((__tmp17801
                       (let ((__tmp17802
                              (let ((__tmp17803
                                     (let ((__tmp17804
                                            (let ((__tmp17805
                                                   (let ((__tmp17812
                                                          (let ((__tmp17813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var14230_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp17813)))
                 (__tmp17806
                  (let ((__tmp17810
                         (let ((__tmp17811
                                (let ()
                                  (declare (not safe))
                                  (cons _var14230_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp17811)))
                        (__tmp17807
                         (let ((__tmp17808
                                (let ((__tmp17809
                                       (let ()
                                         (declare (not safe))
                                         (cons _var14230_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp17809))))
                           (declare (not safe))
                           (cons __tmp17808 '()))))
                    (declare (not safe))
                    (cons __tmp17810 __tmp17807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17812
                                                           __tmp17806))))
                                              (declare (not safe))
                                              (cons 'if __tmp17805))))
                                       (declare (not safe))
                                       (cons __tmp17804 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp17803))))
                         (declare (not safe))
                         (cons '() __tmp17802))))
                  (declare (not safe))
                  (cons 'let __tmp17801)))
            (if (fx= _i14231_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp17792
                           (let ((__tmp17799
                                  (let ((__tmp17800
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14230_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp17800)))
                                 (__tmp17793
                                  (let ((__tmp17795
                                         (let ((__tmp17796
                                                (let ((__tmp17797
                                                       (let ((__tmp17798
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var14230_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp17798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17797 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp17796)))
                                        (__tmp17794
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp17795 __tmp17794))))
                             (declare (not safe))
                             (cons __tmp17799 __tmp17793))))
                      (declare (not safe))
                      (cons 'if __tmp17792))
                    (let ((__tmp17779
                           (let ((__tmp17780
                                  (let ((__tmp17781
                                         (let ((__tmp17782
                                                (let ((__tmp17783
                                                       (let ((__tmp17790
                                                              (let ((__tmp17791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var14230_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp17791)))
                     (__tmp17784
                      (let ((__tmp17786
                             (let ((__tmp17787
                                    (let ((__tmp17788
                                           (let ((__tmp17789
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var14230_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp17789))))
                                      (declare (not safe))
                                      (cons __tmp17788 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp17787)))
                            (__tmp17785
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp17786 __tmp17785))))
                 (declare (not safe))
                 (cons __tmp17790 __tmp17784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp17783))))
                                           (declare (not safe))
                                           (cons __tmp17782 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp17781))))
                             (declare (not safe))
                             (cons '() __tmp17780))))
                      (declare (not safe))
                      (cons 'let __tmp17779)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp17775
                           (let ((__tmp17777
                                  (let ((__tmp17778
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14230_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp17778)))
                                 (__tmp17776
                                  (let ()
                                    (declare (not safe))
                                    (cons _i14231_ '()))))
                             (declare (not safe))
                             (cons __tmp17777 __tmp17776))))
                      (declare (not safe))
                      (cons '##list-tail __tmp17775))
                    (let ((__tmp17767
                           (let ((__tmp17768
                                  (let ((__tmp17769
                                         (let ((__tmp17770
                                                (let ((__tmp17771
                                                       (let ((__tmp17773
                                                              (let ((__tmp17774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var14230_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp17774)))
                     (__tmp17772
                      (let () (declare (not safe)) (cons _i14231_ '()))))
                 (declare (not safe))
                 (cons __tmp17773 __tmp17772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp17771))))
                                           (declare (not safe))
                                           (cons __tmp17770 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp17769))))
                             (declare (not safe))
                             (cons '() __tmp17768))))
                      (declare (not safe))
                      (cons 'let __tmp17767)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_stx14163_)
        (let* ((_g1416514182_
                (lambda (_g1416614179_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1416614179_))))
               (_g1416414227_
                (lambda (_g1416614185_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1416614185_))
                      (let ((_e1417114187_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1416614185_))))
                        (let ((_hd1417014190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1417114187_)))
                              (_tl1416914192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1417114187_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1416914192_))
                              (let ((_e1417414195_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1416914192_))))
                                (let ((_hd1417314198_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1417414195_)))
                                      (_tl1417214200_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1417414195_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1417214200_))
                                      (let ((_e1417714203_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1417214200_))))
                                        (let ((_hd1417614206_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1417714203_)))
                                              (_tl1417514208_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1417714203_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1417514208_))
                                              ((lambda (_L14211_ _L14212_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _L14212_
                                                    _L14211_)))
                                               _hd1417614206_
                                               _hd1417314198_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1416514182_
                                                 _g1416614185_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1416514182_ _g1416614185_)))))
                              (let ()
                                (declare (not safe))
                                (_g1416514182_ _g1416614185_)))))
                      (let ()
                        (declare (not safe))
                        (_g1416514182_ _g1416614185_))))))
          (declare (not safe))
          (_g1416414227_ _stx14163_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_hd14123_ _body14124_)
        (let* ((_hd14126_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd14123_)))
               (_body14128_
                (let () (declare (not safe)) (gxc#compile-e _body14124_)))
               (_body14160_
                (let* ((_body1412914137_ _body14128_)
                       (_else1413114145_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body14128_ '()))))
                       (_K1413314150_ (lambda (_exprs14148_) _exprs14148_)))
                  (if (let () (declare (not safe)) (##pair? _body1412914137_))
                      (let ((_hd1413414153_
                             (let ()
                               (declare (not safe))
                               (##car _body1412914137_)))
                            (_tl1413514155_
                             (let ()
                               (declare (not safe))
                               (##cdr _body1412914137_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd1413414153_ 'begin))
                            (let ((_exprs14158_ _tl1413514155_))
                              (declare (not safe))
                              (_K1413314150_ _exprs14158_))
                            (let () (declare (not safe)) (_else1413114145_))))
                      (let () (declare (not safe)) (_else1413114145_))))))
          (let ((__tmp17823
                 (let () (declare (not safe)) (cons _hd14126_ _body14160_))))
            (declare (not safe))
            (cons 'lambda __tmp17823)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd14121_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd14121_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_stx12664_)
        (letrec ((_dispatch-case?12666_
                  (lambda (_hd13351_ _body13352_)
                    (let* ((_form13354_
                            (let ((__tmp17824
                                   (let ()
                                     (declare (not safe))
                                     (cons _body13352_ '()))))
                              (declare (not safe))
                              (cons _hd13351_ __tmp17824)))
                           (___stx1644016441_ _form13354_)
                           (_g1335913516_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1644016441_)))))
                      (let ((___kont1644216443_
                             (lambda (_L14041_ _L14042_ _L14043_) '#t))
                            (___kont1644816449_
                             (lambda (_L13829_
                                      _L13830_
                                      _L13831_
                                      _L13832_
                                      _L13833_
                                      _L13834_)
                               '#t))
                            (___kont1645416455_
                             (lambda (_L13624_ _L13625_ _L13626_ _L13627_)
                               '#t))
                            (___kont1645616457_ (lambda () '#f)))
                        (let* ((___match1658116582_
                                (lambda (_e1347813528_
                                         _hd1347713531_
                                         _tl1347613533_
                                         _e1348113536_
                                         _hd1348013539_
                                         _tl1347913541_
                                         _e1348413544_
                                         _hd1348313547_
                                         _tl1348213549_
                                         _e1348713552_
                                         _hd1348613555_
                                         _tl1348513557_
                                         _e1349013560_
                                         _hd1348913563_
                                         _tl1348813565_
                                         _e1349313568_
                                         _hd1349213571_
                                         _tl1349113573_
                                         _e1349613576_
                                         _hd1349513579_
                                         _tl1349413581_
                                         _e1349913584_
                                         _hd1349813587_
                                         _tl1349713589_
                                         _e1350213592_
                                         _hd1350113595_
                                         _tl1350013597_
                                         _e1350513600_
                                         _hd1350413603_
                                         _tl1350313605_
                                         _e1350813608_
                                         _hd1350713611_
                                         _tl1350613613_
                                         _e1351113616_
                                         _hd1351013619_
                                         _tl1350913621_)
                                  (let ((_L13624_ _hd1351013619_)
                                        (_L13625_ _hd1350113595_)
                                        (_L13626_ _hd1349213571_)
                                        (_L13627_ _hd1347713531_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L13627_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L13626_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L13627_
                                                _L13624_))
                                             (let ((__tmp17825
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L13625_
                                                       _L13627_))))
                                               (declare (not safe))
                                               (not __tmp17825)))
                                        (___kont1645416455_
                                         _L13624_
                                         _L13625_
                                         _L13626_
                                         _L13627_)
                                        (___kont1645616457_)))))
                               (___match1655316554_
                                (lambda (_e1347813528_
                                         _hd1347713531_
                                         _tl1347613533_
                                         _e1348113536_
                                         _hd1348013539_
                                         _tl1347913541_
                                         _e1348413544_
                                         _hd1348313547_
                                         _tl1348213549_
                                         _e1348713552_
                                         _hd1348613555_
                                         _tl1348513557_
                                         _e1349013560_
                                         _hd1348913563_
                                         _tl1348813565_
                                         _e1349313568_
                                         _hd1349213571_
                                         _tl1349113573_
                                         _e1349613576_
                                         _hd1349513579_
                                         _tl1349413581_
                                         _e1349913584_
                                         _hd1349813587_
                                         _tl1349713589_
                                         _e1350213592_
                                         _hd1350113595_
                                         _tl1350013597_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1349413581_))
                                      (let ((_e1350513600_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1349413581_))))
                                        (let ((_tl1350313605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1350513600_)))
                                              (_hd1350413603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1350513600_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd1350413603_))
                                              (let ((_e1350813608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd1350413603_))))
                                                (let ((_tl1350613613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1350813608_)))
                                                      (_hd1350713611_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1350813608_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd1350713611_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd1350713611_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1350613613_))
                      (let ((_e1351113616_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1350613613_))))
                        (let ((_tl1350913621_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1351113616_)))
                              (_hd1351013619_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1351113616_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl1350913621_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl1350313605_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1347913541_))
                                      (___match1658116582_
                                       _e1347813528_
                                       _hd1347713531_
                                       _tl1347613533_
                                       _e1348113536_
                                       _hd1348013539_
                                       _tl1347913541_
                                       _e1348413544_
                                       _hd1348313547_
                                       _tl1348213549_
                                       _e1348713552_
                                       _hd1348613555_
                                       _tl1348513557_
                                       _e1349013560_
                                       _hd1348913563_
                                       _tl1348813565_
                                       _e1349313568_
                                       _hd1349213571_
                                       _tl1349113573_
                                       _e1349613576_
                                       _hd1349513579_
                                       _tl1349413581_
                                       _e1349913584_
                                       _hd1349813587_
                                       _tl1349713589_
                                       _e1350213592_
                                       _hd1350113595_
                                       _tl1350013597_
                                       _e1350513600_
                                       _hd1350413603_
                                       _tl1350313605_
                                       _e1350813608_
                                       _hd1350713611_
                                       _tl1350613613_
                                       _e1351113616_
                                       _hd1351013619_
                                       _tl1350913621_)
                                      (___kont1645616457_))
                                  (___kont1645616457_))
                              (___kont1645616457_))))
                      (___kont1645616457_))
                  (___kont1645616457_))
              (___kont1645616457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1645616457_))))
                                      (___kont1645616457_))))
                               (___match1648316484_
                                (lambda (_e1341413669_
                                         _hd1341313672_
                                         _tl1341213674_
                                         ___splice1645016451_
                                         _target1341513677_
                                         _tl1341713679_)
                                  (letrec ((_loop1341813682_
                                            (lambda (_hd1341613685_
                                                     _arg1342213687_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1341613685_))
                                                  (let ((_e1341913690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1341613685_))))
                                                    (let ((_lp-tl1342113695_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1341913690_)))
                                                          (_lp-hd1342013693_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1341913690_))))
                                                      (let ((__tmp17840
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1342013693_ _arg1342213687_))))
                (declare (not safe))
                (_loop1341813682_ _lp-tl1342113695_ __tmp17840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1342313698_
                                                         (reverse _arg1342213687_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1341213674_))
                                                        (let ((_e1342613701_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1341213674_))))
                  (let ((_tl1342413706_
                         (let () (declare (not safe)) (##cdr _e1342613701_)))
                        (_hd1342513704_
                         (let () (declare (not safe)) (##car _e1342613701_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1342513704_))
                        (let ((_e1342913709_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1342513704_))))
                          (let ((_tl1342713714_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1342913709_)))
                                (_hd1342813712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1342913709_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1342813712_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1342813712_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1342713714_))
                                        (let ((_e1343213717_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1342713714_))))
                                          (let ((_tl1343013722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1343213717_)))
                                                (_hd1343113720_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1343213717_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1343113720_))
                                                (let ((_e1343513725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1343113720_))))
                                                  (let ((_tl1343313730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1343513725_)))
                                                        (_hd1343413728_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1343513725_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1343413728_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1343413728_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1343313730_))
                        (let ((_e1343813733_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1343313730_))))
                          (let ((_tl1343613738_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1343813733_)))
                                (_hd1343713736_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1343813733_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1343613738_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl1343013722_))
                                    (let ((_e1344113741_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl1343013722_))))
                                      (let ((_tl1343913746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1344113741_)))
                                            (_hd1344013744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1344113741_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd1344013744_))
                                            (let ((_e1344413749_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd1344013744_))))
                                              (let ((_tl1344213754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1344413749_)))
                                                    (_hd1344313752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1344413749_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd1344313752_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd1344313752_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1344213754_))
                                                            (let ((_e1344713757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1344213754_))))
                      (let ((_tl1344513762_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1344713757_)))
                            (_hd1344613760_
                             (let ()
                               (declare (not safe))
                               (##car _e1344713757_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1344513762_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl1343913746_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl1343913746_))
                                          '1)
                                    (let ((___splice1645216453_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1343913746_
                                              '1))))
                                      (let ((_tl1345013767_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1645216453_
                                                '1)))
                                            (_target1344813765_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1645216453_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1345013767_))
                                            (let ((_e1345913770_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1345013767_))))
                                              (let ((_tl1345713775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1345913770_)))
                                                    (_hd1345813773_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1345913770_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd1345813773_))
                                                    (let ((_e1346213778_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd1345813773_))))
                                                      (let ((_tl1346013783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1346213778_)))
                    (_hd1346113781_
                     (let () (declare (not safe)) (##car _e1346213778_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd1346113781_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd1346113781_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl1346013783_))
                            (let ((_e1346513786_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl1346013783_))))
                              (let ((_tl1346313791_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1346513786_)))
                                    (_hd1346413789_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1346513786_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl1346313791_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1345713775_))
                                        (letrec ((_loop1345113794_
                                                  (lambda (_hd1344913797_
                                                           _xarg1345513799_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1344913797_))
                                                        (let ((_e1345213802_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1344913797_))))
                  (let ((_lp-tl1345413807_
                         (let () (declare (not safe)) (##cdr _e1345213802_)))
                        (_lp-hd1345313805_
                         (let () (declare (not safe)) (##car _e1345213802_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd1345313805_))
                        (let ((_e1346813810_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd1345313805_))))
                          (let ((_tl1346613815_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1346813810_)))
                                (_hd1346713813_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1346813810_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1346713813_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd1346713813_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1346613815_))
                                        (let ((_e1347113818_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1346613815_))))
                                          (let ((_tl1346913823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1347113818_)))
                                                (_hd1347013821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1347113818_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1346913823_))
                                                (let ((__tmp17839
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1347013821_
                                                               _xarg1345513799_))))
                                                  (declare (not safe))
                                                  (_loop1345113794_
                                                   _lp-tl1345413807_
                                                   __tmp17839))
                                                (___match1655316554_
                                                 _e1341413669_
                                                 _hd1341313672_
                                                 _tl1341213674_
                                                 _e1342613701_
                                                 _hd1342513704_
                                                 _tl1342413706_
                                                 _e1342913709_
                                                 _hd1342813712_
                                                 _tl1342713714_
                                                 _e1343213717_
                                                 _hd1343113720_
                                                 _tl1343013722_
                                                 _e1343513725_
                                                 _hd1343413728_
                                                 _tl1343313730_
                                                 _e1343813733_
                                                 _hd1343713736_
                                                 _tl1343613738_
                                                 _e1344113741_
                                                 _hd1344013744_
                                                 _tl1343913746_
                                                 _e1344413749_
                                                 _hd1344313752_
                                                 _tl1344213754_
                                                 _e1344713757_
                                                 _hd1344613760_
                                                 _tl1344513762_))))
                                        (___match1655316554_
                                         _e1341413669_
                                         _hd1341313672_
                                         _tl1341213674_
                                         _e1342613701_
                                         _hd1342513704_
                                         _tl1342413706_
                                         _e1342913709_
                                         _hd1342813712_
                                         _tl1342713714_
                                         _e1343213717_
                                         _hd1343113720_
                                         _tl1343013722_
                                         _e1343513725_
                                         _hd1343413728_
                                         _tl1343313730_
                                         _e1343813733_
                                         _hd1343713736_
                                         _tl1343613738_
                                         _e1344113741_
                                         _hd1344013744_
                                         _tl1343913746_
                                         _e1344413749_
                                         _hd1344313752_
                                         _tl1344213754_
                                         _e1344713757_
                                         _hd1344613760_
                                         _tl1344513762_))
                                    (___match1655316554_
                                     _e1341413669_
                                     _hd1341313672_
                                     _tl1341213674_
                                     _e1342613701_
                                     _hd1342513704_
                                     _tl1342413706_
                                     _e1342913709_
                                     _hd1342813712_
                                     _tl1342713714_
                                     _e1343213717_
                                     _hd1343113720_
                                     _tl1343013722_
                                     _e1343513725_
                                     _hd1343413728_
                                     _tl1343313730_
                                     _e1343813733_
                                     _hd1343713736_
                                     _tl1343613738_
                                     _e1344113741_
                                     _hd1344013744_
                                     _tl1343913746_
                                     _e1344413749_
                                     _hd1344313752_
                                     _tl1344213754_
                                     _e1344713757_
                                     _hd1344613760_
                                     _tl1344513762_))
                                (___match1655316554_
                                 _e1341413669_
                                 _hd1341313672_
                                 _tl1341213674_
                                 _e1342613701_
                                 _hd1342513704_
                                 _tl1342413706_
                                 _e1342913709_
                                 _hd1342813712_
                                 _tl1342713714_
                                 _e1343213717_
                                 _hd1343113720_
                                 _tl1343013722_
                                 _e1343513725_
                                 _hd1343413728_
                                 _tl1343313730_
                                 _e1343813733_
                                 _hd1343713736_
                                 _tl1343613738_
                                 _e1344113741_
                                 _hd1344013744_
                                 _tl1343913746_
                                 _e1344413749_
                                 _hd1344313752_
                                 _tl1344213754_
                                 _e1344713757_
                                 _hd1344613760_
                                 _tl1344513762_))))
                        (___match1655316554_
                         _e1341413669_
                         _hd1341313672_
                         _tl1341213674_
                         _e1342613701_
                         _hd1342513704_
                         _tl1342413706_
                         _e1342913709_
                         _hd1342813712_
                         _tl1342713714_
                         _e1343213717_
                         _hd1343113720_
                         _tl1343013722_
                         _e1343513725_
                         _hd1343413728_
                         _tl1343313730_
                         _e1343813733_
                         _hd1343713736_
                         _tl1343613738_
                         _e1344113741_
                         _hd1344013744_
                         _tl1343913746_
                         _e1344413749_
                         _hd1344313752_
                         _tl1344213754_
                         _e1344713757_
                         _hd1344613760_
                         _tl1344513762_))))
                (let ((_xarg1345613826_ (reverse _xarg1345513799_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl1342413706_))
                      (let ((_L13829_ _hd1346413789_)
                            (_L13830_ _xarg1345613826_)
                            (_L13831_ _hd1344613760_)
                            (_L13832_ _hd1343713736_)
                            (_L13833_ _tl1341713679_)
                            (_L13834_ _arg1342313698_))
                        (if (and (let ((__tmp17837
                                        (let ((__tmp17838
                                               (lambda (_g1387713880_
                                                        _g1387813882_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1387713880_
                                                         _g1387813882_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17838 '() _L13834_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp17837))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L13833_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L13832_ 'apply))
                                 (fx= (length (let ((__tmp17835
                                                     (lambda (_g1388413887_
                                                              _g1388513889_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1388413887_
                                                               _g1388513889_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17835
                                                        '()
                                                        _L13834_)))
                                      (length (let ((__tmp17836
                                                     (lambda (_g1389113894_
                                                              _g1389213896_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1389113894_
                                                               _g1389213896_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17836
                                                        '()
                                                        _L13830_))))
                                 (let ((__tmp17833
                                        (let ((__tmp17834
                                               (lambda (_g1389813901_
                                                        _g1389913903_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1389813901_
                                                         _g1389913903_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17834 '() _L13834_)))
                                       (__tmp17831
                                        (let ((__tmp17832
                                               (lambda (_g1390513908_
                                                        _g1390613910_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1390513908_
                                                         _g1390613910_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17832 '() _L13830_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp17833
                                            __tmp17831))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L13833_ _L13829_))
                                 (let ((__tmp17826
                                        (let ((__tmp17830
                                               (lambda (_g1391213914_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g1391213914_
                                                    _L13831_))))
                                              (__tmp17827
                                               (let ((__tmp17829
                                                      (lambda (_g1391613919_
                                                               _g1391713921_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g1391613919_
                                                                _g1391713921_))))
                                                     (__tmp17828
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L13833_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp17829
                                                         __tmp17828
                                                         _L13834_))))
                                          (declare (not safe))
                                          (find __tmp17830 __tmp17827))))
                                   (declare (not safe))
                                   (not __tmp17826)))
                            (___kont1644816449_
                             _L13829_
                             _L13830_
                             _L13831_
                             _L13832_
                             _L13833_
                             _L13834_)
                            (___match1655316554_
                             _e1341413669_
                             _hd1341313672_
                             _tl1341213674_
                             _e1342613701_
                             _hd1342513704_
                             _tl1342413706_
                             _e1342913709_
                             _hd1342813712_
                             _tl1342713714_
                             _e1343213717_
                             _hd1343113720_
                             _tl1343013722_
                             _e1343513725_
                             _hd1343413728_
                             _tl1343313730_
                             _e1343813733_
                             _hd1343713736_
                             _tl1343613738_
                             _e1344113741_
                             _hd1344013744_
                             _tl1343913746_
                             _e1344413749_
                             _hd1344313752_
                             _tl1344213754_
                             _e1344713757_
                             _hd1344613760_
                             _tl1344513762_)))
                      (___match1655316554_
                       _e1341413669_
                       _hd1341313672_
                       _tl1341213674_
                       _e1342613701_
                       _hd1342513704_
                       _tl1342413706_
                       _e1342913709_
                       _hd1342813712_
                       _tl1342713714_
                       _e1343213717_
                       _hd1343113720_
                       _tl1343013722_
                       _e1343513725_
                       _hd1343413728_
                       _tl1343313730_
                       _e1343813733_
                       _hd1343713736_
                       _tl1343613738_
                       _e1344113741_
                       _hd1344013744_
                       _tl1343913746_
                       _e1344413749_
                       _hd1344313752_
                       _tl1344213754_
                       _e1344713757_
                       _hd1344613760_
                       _tl1344513762_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1345113794_
                                             _target1344813765_
                                             '())))
                                        (___match1655316554_
                                         _e1341413669_
                                         _hd1341313672_
                                         _tl1341213674_
                                         _e1342613701_
                                         _hd1342513704_
                                         _tl1342413706_
                                         _e1342913709_
                                         _hd1342813712_
                                         _tl1342713714_
                                         _e1343213717_
                                         _hd1343113720_
                                         _tl1343013722_
                                         _e1343513725_
                                         _hd1343413728_
                                         _tl1343313730_
                                         _e1343813733_
                                         _hd1343713736_
                                         _tl1343613738_
                                         _e1344113741_
                                         _hd1344013744_
                                         _tl1343913746_
                                         _e1344413749_
                                         _hd1344313752_
                                         _tl1344213754_
                                         _e1344713757_
                                         _hd1344613760_
                                         _tl1344513762_))
                                    (___match1655316554_
                                     _e1341413669_
                                     _hd1341313672_
                                     _tl1341213674_
                                     _e1342613701_
                                     _hd1342513704_
                                     _tl1342413706_
                                     _e1342913709_
                                     _hd1342813712_
                                     _tl1342713714_
                                     _e1343213717_
                                     _hd1343113720_
                                     _tl1343013722_
                                     _e1343513725_
                                     _hd1343413728_
                                     _tl1343313730_
                                     _e1343813733_
                                     _hd1343713736_
                                     _tl1343613738_
                                     _e1344113741_
                                     _hd1344013744_
                                     _tl1343913746_
                                     _e1344413749_
                                     _hd1344313752_
                                     _tl1344213754_
                                     _e1344713757_
                                     _hd1344613760_
                                     _tl1344513762_))))
                            (___match1655316554_
                             _e1341413669_
                             _hd1341313672_
                             _tl1341213674_
                             _e1342613701_
                             _hd1342513704_
                             _tl1342413706_
                             _e1342913709_
                             _hd1342813712_
                             _tl1342713714_
                             _e1343213717_
                             _hd1343113720_
                             _tl1343013722_
                             _e1343513725_
                             _hd1343413728_
                             _tl1343313730_
                             _e1343813733_
                             _hd1343713736_
                             _tl1343613738_
                             _e1344113741_
                             _hd1344013744_
                             _tl1343913746_
                             _e1344413749_
                             _hd1344313752_
                             _tl1344213754_
                             _e1344713757_
                             _hd1344613760_
                             _tl1344513762_))
                        (___match1655316554_
                         _e1341413669_
                         _hd1341313672_
                         _tl1341213674_
                         _e1342613701_
                         _hd1342513704_
                         _tl1342413706_
                         _e1342913709_
                         _hd1342813712_
                         _tl1342713714_
                         _e1343213717_
                         _hd1343113720_
                         _tl1343013722_
                         _e1343513725_
                         _hd1343413728_
                         _tl1343313730_
                         _e1343813733_
                         _hd1343713736_
                         _tl1343613738_
                         _e1344113741_
                         _hd1344013744_
                         _tl1343913746_
                         _e1344413749_
                         _hd1344313752_
                         _tl1344213754_
                         _e1344713757_
                         _hd1344613760_
                         _tl1344513762_))
                    (___match1655316554_
                     _e1341413669_
                     _hd1341313672_
                     _tl1341213674_
                     _e1342613701_
                     _hd1342513704_
                     _tl1342413706_
                     _e1342913709_
                     _hd1342813712_
                     _tl1342713714_
                     _e1343213717_
                     _hd1343113720_
                     _tl1343013722_
                     _e1343513725_
                     _hd1343413728_
                     _tl1343313730_
                     _e1343813733_
                     _hd1343713736_
                     _tl1343613738_
                     _e1344113741_
                     _hd1344013744_
                     _tl1343913746_
                     _e1344413749_
                     _hd1344313752_
                     _tl1344213754_
                     _e1344713757_
                     _hd1344613760_
                     _tl1344513762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1655316554_
                                                     _e1341413669_
                                                     _hd1341313672_
                                                     _tl1341213674_
                                                     _e1342613701_
                                                     _hd1342513704_
                                                     _tl1342413706_
                                                     _e1342913709_
                                                     _hd1342813712_
                                                     _tl1342713714_
                                                     _e1343213717_
                                                     _hd1343113720_
                                                     _tl1343013722_
                                                     _e1343513725_
                                                     _hd1343413728_
                                                     _tl1343313730_
                                                     _e1343813733_
                                                     _hd1343713736_
                                                     _tl1343613738_
                                                     _e1344113741_
                                                     _hd1344013744_
                                                     _tl1343913746_
                                                     _e1344413749_
                                                     _hd1344313752_
                                                     _tl1344213754_
                                                     _e1344713757_
                                                     _hd1344613760_
                                                     _tl1344513762_))))
                                            (___match1655316554_
                                             _e1341413669_
                                             _hd1341313672_
                                             _tl1341213674_
                                             _e1342613701_
                                             _hd1342513704_
                                             _tl1342413706_
                                             _e1342913709_
                                             _hd1342813712_
                                             _tl1342713714_
                                             _e1343213717_
                                             _hd1343113720_
                                             _tl1343013722_
                                             _e1343513725_
                                             _hd1343413728_
                                             _tl1343313730_
                                             _e1343813733_
                                             _hd1343713736_
                                             _tl1343613738_
                                             _e1344113741_
                                             _hd1344013744_
                                             _tl1343913746_
                                             _e1344413749_
                                             _hd1344313752_
                                             _tl1344213754_
                                             _e1344713757_
                                             _hd1344613760_
                                             _tl1344513762_))))
                                    (___match1655316554_
                                     _e1341413669_
                                     _hd1341313672_
                                     _tl1341213674_
                                     _e1342613701_
                                     _hd1342513704_
                                     _tl1342413706_
                                     _e1342913709_
                                     _hd1342813712_
                                     _tl1342713714_
                                     _e1343213717_
                                     _hd1343113720_
                                     _tl1343013722_
                                     _e1343513725_
                                     _hd1343413728_
                                     _tl1343313730_
                                     _e1343813733_
                                     _hd1343713736_
                                     _tl1343613738_
                                     _e1344113741_
                                     _hd1344013744_
                                     _tl1343913746_
                                     _e1344413749_
                                     _hd1344313752_
                                     _tl1344213754_
                                     _e1344713757_
                                     _hd1344613760_
                                     _tl1344513762_))
                                (___match1655316554_
                                 _e1341413669_
                                 _hd1341313672_
                                 _tl1341213674_
                                 _e1342613701_
                                 _hd1342513704_
                                 _tl1342413706_
                                 _e1342913709_
                                 _hd1342813712_
                                 _tl1342713714_
                                 _e1343213717_
                                 _hd1343113720_
                                 _tl1343013722_
                                 _e1343513725_
                                 _hd1343413728_
                                 _tl1343313730_
                                 _e1343813733_
                                 _hd1343713736_
                                 _tl1343613738_
                                 _e1344113741_
                                 _hd1344013744_
                                 _tl1343913746_
                                 _e1344413749_
                                 _hd1344313752_
                                 _tl1344213754_
                                 _e1344713757_
                                 _hd1344613760_
                                 _tl1344513762_))
                            (___kont1645616457_))))
                    (___kont1645616457_))
                (___kont1645616457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1645616457_))))
                                            (___kont1645616457_))))
                                    (___kont1645616457_))
                                (___kont1645616457_))))
                        (___kont1645616457_))
                    (___kont1645616457_))
                (___kont1645616457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1645616457_))))
                                        (___kont1645616457_))
                                    (___kont1645616457_))
                                (___kont1645616457_))))
                        (___kont1645616457_))))
                (___kont1645616457_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1341813682_
                                       _target1341513677_
                                       '())))))
                               (___match1647116472_
                                (lambda (_e1336613929_
                                         _hd1336513932_
                                         _tl1336413934_
                                         ___splice1644416445_
                                         _target1336713937_
                                         _tl1336913939_)
                                  (letrec ((_loop1337013942_
                                            (lambda (_hd1336813945_
                                                     _arg1337413947_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1336813945_))
                                                  (let ((_e1337113950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1336813945_))))
                                                    (let ((_lp-tl1337313955_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1337113950_)))
                                                          (_lp-hd1337213953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1337113950_))))
                                                      (let ((__tmp17854
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1337213953_ _arg1337413947_))))
                (declare (not safe))
                (_loop1337013942_ _lp-tl1337313955_ __tmp17854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1337513958_
                                                         (reverse _arg1337413947_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1336413934_))
                                                        (let ((_e1337813961_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1336413934_))))
                  (let ((_tl1337613966_
                         (let () (declare (not safe)) (##cdr _e1337813961_)))
                        (_hd1337713964_
                         (let () (declare (not safe)) (##car _e1337813961_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1337713964_))
                        (let ((_e1338113969_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1337713964_))))
                          (let ((_tl1337913974_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1338113969_)))
                                (_hd1338013972_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1338113969_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1338013972_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1338013972_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1337913974_))
                                        (let ((_e1338413977_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1337913974_))))
                                          (let ((_tl1338213982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1338413977_)))
                                                (_hd1338313980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1338413977_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1338313980_))
                                                (let ((_e1338713985_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1338313980_))))
                                                  (let ((_tl1338513990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1338713985_)))
                                                        (_hd1338613988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1338713985_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1338613988_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1338613988_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1338513990_))
                        (let ((_e1339013993_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1338513990_))))
                          (let ((_tl1338813998_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1339013993_)))
                                (_hd1338913996_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1339013993_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1338813998_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl1338213982_))
                                    (let ((___splice1644616447_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1338213982_
                                              '0))))
                                      (let ((_tl1339314003_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1644616447_
                                                '1)))
                                            (_target1339114001_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1644616447_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl1339314003_))
                                            (letrec ((_loop1339414006_
                                                      (lambda (_hd1339214009_
                                                               _xarg1339814011_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd1339214009_))
                                                            (let ((_e1339514014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd1339214009_))))
                      (let ((_lp-tl1339714019_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1339514014_)))
                            (_lp-hd1339614017_
                             (let ()
                               (declare (not safe))
                               (##car _e1339514014_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd1339614017_))
                            (let ((_e1340214022_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd1339614017_))))
                              (let ((_tl1340014027_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1340214022_)))
                                    (_hd1340114025_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1340214022_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1340114025_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd1340114025_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1340014027_))
                                            (let ((_e1340514030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1340014027_))))
                                              (let ((_tl1340314035_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1340514030_)))
                                                    (_hd1340414033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1340514030_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl1340314035_))
                                                    (let ((__tmp17853
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd1340414033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg1339814011_))))
              (declare (not safe))
              (_loop1339414006_ _lp-tl1339714019_ __tmp17853))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1648316484_
                                                     _e1336613929_
                                                     _hd1336513932_
                                                     _tl1336413934_
                                                     ___splice1644416445_
                                                     _target1336713937_
                                                     _tl1336913939_))))
                                            (___match1648316484_
                                             _e1336613929_
                                             _hd1336513932_
                                             _tl1336413934_
                                             ___splice1644416445_
                                             _target1336713937_
                                             _tl1336913939_))
                                        (___match1648316484_
                                         _e1336613929_
                                         _hd1336513932_
                                         _tl1336413934_
                                         ___splice1644416445_
                                         _target1336713937_
                                         _tl1336913939_))
                                    (___match1648316484_
                                     _e1336613929_
                                     _hd1336513932_
                                     _tl1336413934_
                                     ___splice1644416445_
                                     _target1336713937_
                                     _tl1336913939_))))
                            (___match1648316484_
                             _e1336613929_
                             _hd1336513932_
                             _tl1336413934_
                             ___splice1644416445_
                             _target1336713937_
                             _tl1336913939_))))
                    (let ((_xarg1339914038_ (reverse _xarg1339814011_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1337613966_))
                          (let ((_L14041_ _xarg1339914038_)
                                (_L14042_ _hd1338913996_)
                                (_L14043_ _arg1337513958_))
                            (if (and (let ((__tmp17851
                                            (let ((__tmp17852
                                                   (lambda (_g1407114074_
                                                            _g1407214076_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1407114074_
                                                             _g1407214076_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17852
                                                      '()
                                                      _L14043_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp17851))
                                     (fx= (length (let ((__tmp17849
                                                         (lambda (_g1407814081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1407914083_)
                   (let ()
                     (declare (not safe))
                     (cons _g1407814081_ _g1407914083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17849
                                                            '()
                                                            _L14043_)))
                                          (length (let ((__tmp17850
                                                         (lambda (_g1408514088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1408614090_)
                   (let ()
                     (declare (not safe))
                     (cons _g1408514088_ _g1408614090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17850
                                                            '()
                                                            _L14041_))))
                                     (let ((__tmp17847
                                            (let ((__tmp17848
                                                   (lambda (_g1409214095_
                                                            _g1409314097_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1409214095_
                                                             _g1409314097_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17848
                                                      '()
                                                      _L14043_)))
                                           (__tmp17845
                                            (let ((__tmp17846
                                                   (lambda (_g1409914102_
                                                            _g1410014104_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1409914102_
                                                             _g1410014104_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17846
                                                      '()
                                                      _L14041_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp17847
                                                __tmp17845))
                                     (let ((__tmp17841
                                            (let ((__tmp17844
                                                   (lambda (_g1410614108_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g1410614108_
                                                        _L14042_))))
                                                  (__tmp17842
                                                   (let ((__tmp17843
                                                          (lambda (_g1411014113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1411114115_)
                    (let ()
                      (declare (not safe))
                      (cons _g1411014113_ _g1411114115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp17843
                                                             '()
                                                             _L14043_))))
                                              (declare (not safe))
                                              (find __tmp17844 __tmp17842))))
                                       (declare (not safe))
                                       (not __tmp17841)))
                                (___kont1644216443_ _L14041_ _L14042_ _L14043_)
                                (___match1648316484_
                                 _e1336613929_
                                 _hd1336513932_
                                 _tl1336413934_
                                 ___splice1644416445_
                                 _target1336713937_
                                 _tl1336913939_)))
                          (___match1648316484_
                           _e1336613929_
                           _hd1336513932_
                           _tl1336413934_
                           ___splice1644416445_
                           _target1336713937_
                           _tl1336913939_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1339414006_
                                                 _target1339114001_
                                                 '())))
                                            (___match1648316484_
                                             _e1336613929_
                                             _hd1336513932_
                                             _tl1336413934_
                                             ___splice1644416445_
                                             _target1336713937_
                                             _tl1336913939_))))
                                    (___match1648316484_
                                     _e1336613929_
                                     _hd1336513932_
                                     _tl1336413934_
                                     ___splice1644416445_
                                     _target1336713937_
                                     _tl1336913939_))
                                (___match1648316484_
                                 _e1336613929_
                                 _hd1336513932_
                                 _tl1336413934_
                                 ___splice1644416445_
                                 _target1336713937_
                                 _tl1336913939_))))
                        (___match1648316484_
                         _e1336613929_
                         _hd1336513932_
                         _tl1336413934_
                         ___splice1644416445_
                         _target1336713937_
                         _tl1336913939_))
                    (___match1648316484_
                     _e1336613929_
                     _hd1336513932_
                     _tl1336413934_
                     ___splice1644416445_
                     _target1336713937_
                     _tl1336913939_))
                (___match1648316484_
                 _e1336613929_
                 _hd1336513932_
                 _tl1336413934_
                 ___splice1644416445_
                 _target1336713937_
                 _tl1336913939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1648316484_
                                                 _e1336613929_
                                                 _hd1336513932_
                                                 _tl1336413934_
                                                 ___splice1644416445_
                                                 _target1336713937_
                                                 _tl1336913939_))))
                                        (___match1648316484_
                                         _e1336613929_
                                         _hd1336513932_
                                         _tl1336413934_
                                         ___splice1644416445_
                                         _target1336713937_
                                         _tl1336913939_))
                                    (___match1648316484_
                                     _e1336613929_
                                     _hd1336513932_
                                     _tl1336413934_
                                     ___splice1644416445_
                                     _target1336713937_
                                     _tl1336913939_))
                                (___match1648316484_
                                 _e1336613929_
                                 _hd1336513932_
                                 _tl1336413934_
                                 ___splice1644416445_
                                 _target1336713937_
                                 _tl1336913939_))))
                        (___match1648316484_
                         _e1336613929_
                         _hd1336513932_
                         _tl1336413934_
                         ___splice1644416445_
                         _target1336713937_
                         _tl1336913939_))))
                (___match1648316484_
                 _e1336613929_
                 _hd1336513932_
                 _tl1336413934_
                 ___splice1644416445_
                 _target1336713937_
                 _tl1336913939_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1337013942_
                                       _target1336713937_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1644016441_))
                              (let ((_e1336613929_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1644016441_))))
                                (let ((_tl1336413934_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1336613929_)))
                                      (_hd1336513932_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1336613929_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1336513932_))
                                      (let ((___splice1644416445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1336513932_
                                                '0))))
                                        (let ((_tl1336913939_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1644416445_
                                                  '1)))
                                              (_target1336713937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1644416445_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1336913939_))
                                              (___match1647116472_
                                               _e1336613929_
                                               _hd1336513932_
                                               _tl1336413934_
                                               ___splice1644416445_
                                               _target1336713937_
                                               _tl1336913939_)
                                              (___match1648316484_
                                               _e1336613929_
                                               _hd1336513932_
                                               _tl1336413934_
                                               ___splice1644416445_
                                               _target1336713937_
                                               _tl1336913939_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1336413934_))
                                          (let ((_e1348113536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1336413934_))))
                                            (let ((_tl1347913541_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1348113536_)))
                                                  (_hd1348013539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1348113536_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1348013539_))
                                                  (let ((_e1348413544_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1348013539_))))
                                                    (let ((_tl1348213549_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1348413544_)))
                                                          (_hd1348313547_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1348413544_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd1348313547_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd1348313547_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1348213549_))
                          (let ((_e1348713552_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1348213549_))))
                            (let ((_tl1348513557_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1348713552_)))
                                  (_hd1348613555_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1348713552_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd1348613555_))
                                  (let ((_e1349013560_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd1348613555_))))
                                    (let ((_tl1348813565_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1349013560_)))
                                          (_hd1348913563_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1349013560_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd1348913563_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd1348913563_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl1348813565_))
                                                  (let ((_e1349313568_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl1348813565_))))
                                                    (let ((_tl1349113573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1349313568_)))
                                                          (_hd1349213571_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1349313568_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1349113573_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1348513557_))
                      (let ((_e1349613576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1348513557_))))
                        (let ((_tl1349413581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1349613576_)))
                              (_hd1349513579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1349613576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd1349513579_))
                              (let ((_e1349913584_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd1349513579_))))
                                (let ((_tl1349713589_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1349913584_)))
                                      (_hd1349813587_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1349913584_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd1349813587_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd1349813587_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl1349713589_))
                                              (let ((_e1350213592_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl1349713589_))))
                                                (let ((_tl1350013597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1350213592_)))
                                                      (_hd1350113595_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1350213592_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1350013597_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl1349413581_))
                                                          (let ((_e1350513600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl1349413581_))))
                    (let ((_tl1350313605_
                           (let () (declare (not safe)) (##cdr _e1350513600_)))
                          (_hd1350413603_
                           (let ()
                             (declare (not safe))
                             (##car _e1350513600_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd1350413603_))
                          (let ((_e1350813608_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd1350413603_))))
                            (let ((_tl1350613613_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1350813608_)))
                                  (_hd1350713611_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1350813608_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd1350713611_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd1350713611_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1350613613_))
                                          (let ((_e1351113616_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1350613613_))))
                                            (let ((_tl1350913621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1351113616_)))
                                                  (_hd1351013619_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1351113616_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl1350913621_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1350313605_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1347913541_))
                                                          (___match1658116582_
                                                           _e1336613929_
                                                           _hd1336513932_
                                                           _tl1336413934_
                                                           _e1348113536_
                                                           _hd1348013539_
                                                           _tl1347913541_
                                                           _e1348413544_
                                                           _hd1348313547_
                                                           _tl1348213549_
                                                           _e1348713552_
                                                           _hd1348613555_
                                                           _tl1348513557_
                                                           _e1349013560_
                                                           _hd1348913563_
                                                           _tl1348813565_
                                                           _e1349313568_
                                                           _hd1349213571_
                                                           _tl1349113573_
                                                           _e1349613576_
                                                           _hd1349513579_
                                                           _tl1349413581_
                                                           _e1349913584_
                                                           _hd1349813587_
                                                           _tl1349713589_
                                                           _e1350213592_
                                                           _hd1350113595_
                                                           _tl1350013597_
                                                           _e1350513600_
                                                           _hd1350413603_
                                                           _tl1350313605_
                                                           _e1350813608_
                                                           _hd1350713611_
                                                           _tl1350613613_
                                                           _e1351113616_
                                                           _hd1351013619_
                                                           _tl1350913621_)
                                                          (___kont1645616457_))
                                                      (___kont1645616457_))
                                                  (___kont1645616457_))))
                                          (___kont1645616457_))
                                      (___kont1645616457_))
                                  (___kont1645616457_))))
                          (___kont1645616457_))))
                  (___kont1645616457_))
              (___kont1645616457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1645616457_))
                                          (___kont1645616457_))
                                      (___kont1645616457_))))
                              (___kont1645616457_))))
                      (___kont1645616457_))
                  (___kont1645616457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1645616457_))
                                              (___kont1645616457_))
                                          (___kont1645616457_))))
                                  (___kont1645616457_))))
                          (___kont1645616457_))
                      (___kont1645616457_))
                  (___kont1645616457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1645616457_))))
                                          (___kont1645616457_)))))
                              (___kont1645616457_)))))))
                 (_dispatch-case-e12667_
                  (lambda (_hd12815_ _body12816_)
                    (let* ((_form12818_
                            (let ((__tmp17855
                                   (let ()
                                     (declare (not safe))
                                     (cons _body12816_ '()))))
                              (declare (not safe))
                              (cons _hd12815_ __tmp17855)))
                           (___stx1658416585_ _form12818_)
                           (_g1282212946_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1658416585_)))))
                      (let ((___kont1658616587_
                             (lambda (_L13317_ _L13318_ _L13319_)
                               (let ((__tmp17856
                                      (let ((__tmp17858
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17857
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13318_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17858 __tmp17857))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17856))))
                            (___kont1659216593_
                             (lambda (_L13165_ _L13166_ _L13167_ _L13168_)
                               (let ((__tmp17859
                                      (let ((__tmp17861
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17860
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13165_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17861 __tmp17860))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17859))))
                            (___kont1659616597_
                             (lambda (_L13031_ _L13032_ _L13033_)
                               (let ((__tmp17862
                                      (let ((__tmp17864
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17863
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13031_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17864 __tmp17863))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17862)))))
                        (let* ((___match1669316694_
                                (lambda (_e1291412951_
                                         _hd1291312954_
                                         _tl1291212956_
                                         _e1291712959_
                                         _hd1291612962_
                                         _tl1291512964_
                                         _e1292012967_
                                         _hd1291912970_
                                         _tl1291812972_
                                         _e1292312975_
                                         _hd1292212978_
                                         _tl1292112980_
                                         _e1292612983_
                                         _hd1292512986_
                                         _tl1292412988_
                                         _e1292912991_
                                         _hd1292812994_
                                         _tl1292712996_
                                         _e1293212999_
                                         _hd1293113002_
                                         _tl1293013004_
                                         _e1293513007_
                                         _hd1293413010_
                                         _tl1293313012_
                                         _e1293813015_
                                         _hd1293713018_
                                         _tl1293613020_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1293013004_))
                                      (let ((_e1294113023_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1293013004_))))
                                        (let ((_tl1293913028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1294113023_)))
                                              (_hd1294013026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1294113023_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1293913028_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl1291512964_))
                                                  (___kont1659616597_
                                                   _hd1293713018_
                                                   _hd1292812994_
                                                   _hd1291312954_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1282212946_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g1282212946_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1282212946_)))))
                               (___match1662316624_
                                (lambda (_e1287513069_
                                         _hd1287413072_
                                         _tl1287313074_
                                         ___splice1659416595_
                                         _target1287613077_
                                         _tl1287813079_)
                                  (letrec ((_loop1287913082_
                                            (lambda (_hd1287713085_
                                                     _arg1288313087_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1287713085_))
                                                  (let ((_e1288013090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1287713085_))))
                                                    (let ((_lp-tl1288213095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1288013090_)))
                                                          (_lp-hd1288113093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1288013090_))))
                                                      (let ((__tmp17865
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1288113093_ _arg1288313087_))))
                (declare (not safe))
                (_loop1287913082_ _lp-tl1288213095_ __tmp17865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1288413098_
                                                         (reverse _arg1288313087_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1287313074_))
                                                        (let ((_e1288713101_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1287313074_))))
                  (let ((_tl1288513106_
                         (let () (declare (not safe)) (##cdr _e1288713101_)))
                        (_hd1288613104_
                         (let () (declare (not safe)) (##car _e1288713101_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1288613104_))
                        (let ((_e1289013109_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1288613104_))))
                          (let ((_tl1288813114_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1289013109_)))
                                (_hd1288913112_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1289013109_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1288913112_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1288913112_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1288813114_))
                                        (let ((_e1289313117_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1288813114_))))
                                          (let ((_tl1289113122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1289313117_)))
                                                (_hd1289213120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1289313117_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1289213120_))
                                                (let ((_e1289613125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1289213120_))))
                                                  (let ((_tl1289413130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1289613125_)))
                                                        (_hd1289513128_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1289613125_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1289513128_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1289513128_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1289413130_))
                        (let ((_e1289913133_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1289413130_))))
                          (let ((_tl1289713138_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1289913133_)))
                                (_hd1289813136_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1289913133_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1289713138_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl1289113122_))
                                    (let ((_e1290213141_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl1289113122_))))
                                      (let ((_tl1290013146_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1290213141_)))
                                            (_hd1290113144_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1290213141_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd1290113144_))
                                            (let ((_e1290513149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd1290113144_))))
                                              (let ((_tl1290313154_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1290513149_)))
                                                    (_hd1290413152_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1290513149_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd1290413152_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd1290413152_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1290313154_))
                                                            (let ((_e1290813157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1290313154_))))
                      (let ((_tl1290613162_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1290813157_)))
                            (_hd1290713160_
                             (let ()
                               (declare (not safe))
                               (##car _e1290813157_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1290613162_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1288513106_))
                                (___kont1659216593_
                                 _hd1290713160_
                                 _hd1289813136_
                                 _tl1287813079_
                                 _arg1288413098_)
                                (___match1669316694_
                                 _e1287513069_
                                 _hd1287413072_
                                 _tl1287313074_
                                 _e1288713101_
                                 _hd1288613104_
                                 _tl1288513106_
                                 _e1289013109_
                                 _hd1288913112_
                                 _tl1288813114_
                                 _e1289313117_
                                 _hd1289213120_
                                 _tl1289113122_
                                 _e1289613125_
                                 _hd1289513128_
                                 _tl1289413130_
                                 _e1289913133_
                                 _hd1289813136_
                                 _tl1289713138_
                                 _e1290213141_
                                 _hd1290113144_
                                 _tl1290013146_
                                 _e1290513149_
                                 _hd1290413152_
                                 _tl1290313154_
                                 _e1290813157_
                                 _hd1290713160_
                                 _tl1290613162_))
                            (let () (declare (not safe)) (_g1282212946_)))))
                    (let () (declare (not safe)) (_g1282212946_)))
                (let () (declare (not safe)) (_g1282212946_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1282212946_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1282212946_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1282212946_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1282212946_)))))
                        (let () (declare (not safe)) (_g1282212946_)))
                    (let () (declare (not safe)) (_g1282212946_)))
                (let () (declare (not safe)) (_g1282212946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1282212946_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1282212946_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g1282212946_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1282212946_)))))
                        (let () (declare (not safe)) (_g1282212946_)))))
                (let () (declare (not safe)) (_g1282212946_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1287913082_
                                       _target1287613077_
                                       '())))))
                               (___match1661116612_
                                (lambda (_e1282913205_
                                         _hd1282813208_
                                         _tl1282713210_
                                         ___splice1658816589_
                                         _target1283013213_
                                         _tl1283213215_)
                                  (letrec ((_loop1283313218_
                                            (lambda (_hd1283113221_
                                                     _arg1283713223_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1283113221_))
                                                  (let ((_e1283413226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1283113221_))))
                                                    (let ((_lp-tl1283613231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1283413226_)))
                                                          (_lp-hd1283513229_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1283413226_))))
                                                      (let ((__tmp17867
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1283513229_ _arg1283713223_))))
                (declare (not safe))
                (_loop1283313218_ _lp-tl1283613231_ __tmp17867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg1283813234_
                                                         (reverse _arg1283713223_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1282713210_))
                                                        (let ((_e1284113237_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1282713210_))))
                  (let ((_tl1283913242_
                         (let () (declare (not safe)) (##cdr _e1284113237_)))
                        (_hd1284013240_
                         (let () (declare (not safe)) (##car _e1284113237_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1284013240_))
                        (let ((_e1284413245_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1284013240_))))
                          (let ((_tl1284213250_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1284413245_)))
                                (_hd1284313248_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1284413245_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd1284313248_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd1284313248_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1284213250_))
                                        (let ((_e1284713253_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1284213250_))))
                                          (let ((_tl1284513258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1284713253_)))
                                                (_hd1284613256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1284713253_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1284613256_))
                                                (let ((_e1285013261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1284613256_))))
                                                  (let ((_tl1284813266_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1285013261_)))
                                                        (_hd1284913264_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1285013261_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd1284913264_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd1284913264_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl1284813266_))
                        (let ((_e1285313269_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1284813266_))))
                          (let ((_tl1285113274_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1285313269_)))
                                (_hd1285213272_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1285313269_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1285113274_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl1284513258_))
                                    (let ((___splice1659016591_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1284513258_
                                              '0))))
                                      (let ((_tl1285613279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1659016591_
                                                '1)))
                                            (_target1285413277_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1659016591_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl1285613279_))
                                            (letrec ((_loop1285713282_
                                                      (lambda (_hd1285513285_
                                                               _xarg1286113287_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd1285513285_))
                                                            (let ((_e1285813290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd1285513285_))))
                      (let ((_lp-tl1286013295_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1285813290_)))
                            (_lp-hd1285913293_
                             (let ()
                               (declare (not safe))
                               (##car _e1285813290_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd1285913293_))
                            (let ((_e1286513298_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd1285913293_))))
                              (let ((_tl1286313303_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1286513298_)))
                                    (_hd1286413301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1286513298_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1286413301_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd1286413301_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1286313303_))
                                            (let ((_e1286813306_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1286313303_))))
                                              (let ((_tl1286613311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1286813306_)))
                                                    (_hd1286713309_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1286813306_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl1286613311_))
                                                    (let ((__tmp17866
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd1286713309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg1286113287_))))
              (declare (not safe))
              (_loop1285713282_ _lp-tl1286013295_ __tmp17866))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1662316624_
                                                     _e1282913205_
                                                     _hd1282813208_
                                                     _tl1282713210_
                                                     ___splice1658816589_
                                                     _target1283013213_
                                                     _tl1283213215_))))
                                            (___match1662316624_
                                             _e1282913205_
                                             _hd1282813208_
                                             _tl1282713210_
                                             ___splice1658816589_
                                             _target1283013213_
                                             _tl1283213215_))
                                        (___match1662316624_
                                         _e1282913205_
                                         _hd1282813208_
                                         _tl1282713210_
                                         ___splice1658816589_
                                         _target1283013213_
                                         _tl1283213215_))
                                    (___match1662316624_
                                     _e1282913205_
                                     _hd1282813208_
                                     _tl1282713210_
                                     ___splice1658816589_
                                     _target1283013213_
                                     _tl1283213215_))))
                            (___match1662316624_
                             _e1282913205_
                             _hd1282813208_
                             _tl1282713210_
                             ___splice1658816589_
                             _target1283013213_
                             _tl1283213215_))))
                    (let ((_xarg1286213314_ (reverse _xarg1286113287_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1283913242_))
                          (___kont1658616587_
                           _xarg1286213314_
                           _hd1285213272_
                           _arg1283813234_)
                          (___match1662316624_
                           _e1282913205_
                           _hd1282813208_
                           _tl1282713210_
                           ___splice1658816589_
                           _target1283013213_
                           _tl1283213215_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1285713282_
                                                 _target1285413277_
                                                 '())))
                                            (___match1662316624_
                                             _e1282913205_
                                             _hd1282813208_
                                             _tl1282713210_
                                             ___splice1658816589_
                                             _target1283013213_
                                             _tl1283213215_))))
                                    (___match1662316624_
                                     _e1282913205_
                                     _hd1282813208_
                                     _tl1282713210_
                                     ___splice1658816589_
                                     _target1283013213_
                                     _tl1283213215_))
                                (___match1662316624_
                                 _e1282913205_
                                 _hd1282813208_
                                 _tl1282713210_
                                 ___splice1658816589_
                                 _target1283013213_
                                 _tl1283213215_))))
                        (___match1662316624_
                         _e1282913205_
                         _hd1282813208_
                         _tl1282713210_
                         ___splice1658816589_
                         _target1283013213_
                         _tl1283213215_))
                    (___match1662316624_
                     _e1282913205_
                     _hd1282813208_
                     _tl1282713210_
                     ___splice1658816589_
                     _target1283013213_
                     _tl1283213215_))
                (___match1662316624_
                 _e1282913205_
                 _hd1282813208_
                 _tl1282713210_
                 ___splice1658816589_
                 _target1283013213_
                 _tl1283213215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1662316624_
                                                 _e1282913205_
                                                 _hd1282813208_
                                                 _tl1282713210_
                                                 ___splice1658816589_
                                                 _target1283013213_
                                                 _tl1283213215_))))
                                        (___match1662316624_
                                         _e1282913205_
                                         _hd1282813208_
                                         _tl1282713210_
                                         ___splice1658816589_
                                         _target1283013213_
                                         _tl1283213215_))
                                    (___match1662316624_
                                     _e1282913205_
                                     _hd1282813208_
                                     _tl1282713210_
                                     ___splice1658816589_
                                     _target1283013213_
                                     _tl1283213215_))
                                (___match1662316624_
                                 _e1282913205_
                                 _hd1282813208_
                                 _tl1282713210_
                                 ___splice1658816589_
                                 _target1283013213_
                                 _tl1283213215_))))
                        (___match1662316624_
                         _e1282913205_
                         _hd1282813208_
                         _tl1282713210_
                         ___splice1658816589_
                         _target1283013213_
                         _tl1283213215_))))
                (___match1662316624_
                 _e1282913205_
                 _hd1282813208_
                 _tl1282713210_
                 ___splice1658816589_
                 _target1283013213_
                 _tl1283213215_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1283313218_
                                       _target1283013213_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1658416585_))
                              (let ((_e1282913205_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1658416585_))))
                                (let ((_tl1282713210_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1282913205_)))
                                      (_hd1282813208_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1282913205_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1282813208_))
                                      (let ((___splice1658816589_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1282813208_
                                                '0))))
                                        (let ((_tl1283213215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1658816589_
                                                  '1)))
                                              (_target1283013213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1658816589_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1283213215_))
                                              (___match1661116612_
                                               _e1282913205_
                                               _hd1282813208_
                                               _tl1282713210_
                                               ___splice1658816589_
                                               _target1283013213_
                                               _tl1283213215_)
                                              (___match1662316624_
                                               _e1282913205_
                                               _hd1282813208_
                                               _tl1282713210_
                                               ___splice1658816589_
                                               _target1283013213_
                                               _tl1283213215_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1282713210_))
                                          (let ((_e1291712959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl1282713210_))))
                                            (let ((_tl1291512964_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1291712959_)))
                                                  (_hd1291612962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1291712959_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd1291612962_))
                                                  (let ((_e1292012967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd1291612962_))))
                                                    (let ((_tl1291812972_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1292012967_)))
                                                          (_hd1291912970_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1292012967_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd1291912970_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd1291912970_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1291812972_))
                          (let ((_e1292312975_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1291812972_))))
                            (let ((_tl1292112980_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1292312975_)))
                                  (_hd1292212978_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1292312975_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd1292212978_))
                                  (let ((_e1292612983_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd1292212978_))))
                                    (let ((_tl1292412988_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1292612983_)))
                                          (_hd1292512986_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1292612983_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd1292512986_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd1292512986_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl1292412988_))
                                                  (let ((_e1292912991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl1292412988_))))
                                                    (let ((_tl1292712996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1292912991_)))
                                                          (_hd1292812994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1292912991_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl1292712996_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl1292112980_))
                      (let ((_e1293212999_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl1292112980_))))
                        (let ((_tl1293013004_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1293212999_)))
                              (_hd1293113002_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1293212999_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd1293113002_))
                              (let ((_e1293513007_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd1293113002_))))
                                (let ((_tl1293313012_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1293513007_)))
                                      (_hd1293413010_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1293513007_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd1293413010_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd1293413010_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl1293313012_))
                                              (let ((_e1293813015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl1293313012_))))
                                                (let ((_tl1293613020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1293813015_)))
                                                      (_hd1293713018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1293813015_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1293613020_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl1293013004_))
                                                          (let ((_e1294113023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl1293013004_))))
                    (let ((_tl1293913028_
                           (let () (declare (not safe)) (##cdr _e1294113023_)))
                          (_hd1294013026_
                           (let ()
                             (declare (not safe))
                             (##car _e1294113023_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1293913028_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl1291512964_))
                              (___kont1659616597_
                               _hd1293713018_
                               _hd1292812994_
                               _hd1282813208_)
                              (let () (declare (not safe)) (_g1282212946_)))
                          (let () (declare (not safe)) (_g1282212946_)))))
                  (let () (declare (not safe)) (_g1282212946_)))
              (let () (declare (not safe)) (_g1282212946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1282212946_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g1282212946_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1282212946_)))))
                              (let () (declare (not safe)) (_g1282212946_)))))
                      (let () (declare (not safe)) (_g1282212946_)))
                  (let () (declare (not safe)) (_g1282212946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1282212946_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g1282212946_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g1282212946_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1282212946_)))))
                          (let () (declare (not safe)) (_g1282212946_)))
                      (let () (declare (not safe)) (_g1282212946_)))
                  (let () (declare (not safe)) (_g1282212946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1282212946_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1282212946_))))))
                              (let ()
                                (declare (not safe))
                                (_g1282212946_))))))))
                 (_generate112668_
                  (lambda (_args12803_ _arglen12804_ _hd12805_ _body12806_)
                    (let* ((_len12808_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd12805_)))
                           (_condition12810_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd12805_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp17882
                                           (let ((__tmp17883
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len12808_ '()))))
                                             (declare (not safe))
                                             (cons _arglen12804_ __tmp17883))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp17882))
                                    (let ((__tmp17876
                                           (let ((__tmp17877
                                                  (let ((__tmp17878
                                                         (let ((__tmp17879
                                                                (let ((__tmp17880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17881
                                      (let ()
                                        (declare (not safe))
                                        (cons _len12808_ '()))))
                                 (declare (not safe))
                                 (cons _arglen12804_ __tmp17881))))
                          (declare (not safe))
                          (cons '##fx= __tmp17880))))
                   (declare (not safe))
                   (cons __tmp17879 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp17878))))
                                             (declare (not safe))
                                             (cons '() __tmp17877))))
                                      (declare (not safe))
                                      (cons 'let __tmp17876)))
                                (if (> _len12808_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp17874
                                               (let ((__tmp17875
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len12808_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen12804_
                                                       __tmp17875))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp17874))
                                        (let ((__tmp17868
                                               (let ((__tmp17869
                                                      (let ((__tmp17870
                                                             (let ((__tmp17871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17872
                                   (let ((__tmp17873
                                          (let ()
                                            (declare (not safe))
                                            (cons _len12808_ '()))))
                                     (declare (not safe))
                                     (cons _arglen12804_ __tmp17873))))
                              (declare (not safe))
                              (cons '##fx>= __tmp17872))))
                       (declare (not safe))
                       (cons __tmp17871 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp17870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp17869))))
                                          (declare (not safe))
                                          (cons 'let __tmp17868)))
                                    '#t)))
                           (_dispatch12812_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?12666_
                                   _hd12805_
                                   _body12806_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e12667_
                                   _hd12805_
                                   _body12806_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _hd12805_
                                   _body12806_)))))
                      (let ((__tmp17884
                             (let ((__tmp17885
                                    (let ((__tmp17886
                                           (let ((__tmp17887
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args12803_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch12812_
                                                   __tmp17887))))
                                      (declare (not safe))
                                      (cons 'apply __tmp17886))))
                               (declare (not safe))
                               (cons __tmp17885 '()))))
                        (declare (not safe))
                        (cons _condition12810_ __tmp17884))))))
          (let* ((_g1267012698_
                  (lambda (_g1267112695_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1267112695_))))
                 (_g1266912800_
                  (lambda (_g1267112701_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1267112701_))
                        (let ((_e1267612703_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1267112701_))))
                          (let ((_hd1267512706_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1267612703_)))
                                (_tl1267412708_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1267612703_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl1267412708_))
                                (let ((_g17888_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl1267412708_
                                          '0))))
                                  (begin
                                    (let ((_g17889_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g17888_)
                                                 (##vector-length _g17888_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g17889_ 2)))
                                          (error "Context expects 2 values"
                                                 _g17889_)))
                                    (let ((_target1267712711_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g17888_ 0)))
                                          (_tl1267912713_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g17888_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1267912713_))
                                          (letrec ((_loop1268012716_
                                                    (lambda (_hd1267812719_
                                                             _body1268412721_
                                                             _hd1268512723_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd1267812719_))
                                                          (let ((_e1268112726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd1267812719_))))
                    (let ((_lp-hd1268212729_
                           (let () (declare (not safe)) (##car _e1268112726_)))
                          (_lp-tl1268312731_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1268112726_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd1268212729_))
                          (let ((_e1269012734_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd1268212729_))))
                            (let ((_hd1268912737_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1269012734_)))
                                  (_tl1268812739_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1269012734_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl1268812739_))
                                  (let ((_e1269312742_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl1268812739_))))
                                    (let ((_hd1269212745_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1269312742_)))
                                          (_tl1269112747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1269312742_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1269112747_))
                                          (let ((__tmp17918
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd1269212745_
                                                         _body1268412721_)))
                                                (__tmp17917
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd1268912737_
                                                         _hd1268512723_))))
                                            (declare (not safe))
                                            (_loop1268012716_
                                             _lp-tl1268312731_
                                             __tmp17918
                                             __tmp17917))
                                          (let ()
                                            (declare (not safe))
                                            (_g1267012698_ _g1267112701_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1267012698_ _g1267112701_)))))
                          (let ()
                            (declare (not safe))
                            (_g1267012698_ _g1267112701_)))))
                  (let ((_body1268612750_ (reverse _body1268412721_))
                        (_hd1268712752_ (reverse _hd1268512723_)))
                    ((lambda (_L12755_ _L12756_)
                       (let ((_args12775_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen12776_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name12777_
                              (let ((_$e12772_
                                     (let ((__tmp17890
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (table-ref __tmp17890 _stx12664_ '#f))))
                                (if _$e12772_
                                    _$e12772_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp17891
                                (let ((__tmp17892
                                       (let ((__tmp17893
                                              (let ((__tmp17894
                                                     (let ((__tmp17907
                                                            (let ((__tmp17908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17909
                                  (let ((__tmp17910
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp17916
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args12775_ '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp17916))
                                             (let ((__tmp17911
                                                    (let ((__tmp17912
                                                           (let ((__tmp17913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp17914
                                 (let ((__tmp17915
                                        (let ()
                                          (declare (not safe))
                                          (cons _args12775_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp17915))))
                            (declare (not safe))
                            (cons __tmp17914 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp17913))))
              (declare (not safe))
              (cons '() __tmp17912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp17911)))))
                                    (declare (not safe))
                                    (cons __tmp17910 '()))))
                             (declare (not safe))
                             (cons _arglen12776_ __tmp17909))))
                      (declare (not safe))
                      (cons __tmp17908 '())))
                   (__tmp17895
                    (let ((__tmp17896
                           (let ((__tmp17897
                                  (let ((__tmp17901
                                         (let ((__tmp17902
                                                (let ((__tmp17903
                                                       (let ((__tmp17904
                                                              (let ((__tmp17905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17906
                                    (let ()
                                      (declare (not safe))
                                      (cons _args12775_ '()))))
                               (declare (not safe))
                               (cons _name12777_ __tmp17906))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp17905))))
                 (declare (not safe))
                 (cons __tmp17904 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp17903))))
                                           (declare (not safe))
                                           (cons __tmp17902 '())))
                                        (__tmp17898
                                         (map (lambda (_g1277812781_
                                                       _g1277912783_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate112668_
                                                   _args12775_
                                                   _arglen12776_
                                                   _g1277812781_
                                                   _g1277912783_)))
                                              (let ((__tmp17899
                                                     (lambda (_g1278512788_
                                                              _g1278612790_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1278512788_
                                                               _g1278612790_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17899
                                                        '()
                                                        _L12756_))
                                              (let ((__tmp17900
                                                     (lambda (_g1279212795_
                                                              _g1279312797_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1279212795_
                                                               _g1279312797_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17900
                                                        '()
                                                        _L12755_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp17901 __tmp17898))))
                             (declare (not safe))
                             (cons 'cond __tmp17897))))
                      (declare (not safe))
                      (cons __tmp17896 '()))))
               (declare (not safe))
               (cons __tmp17907 __tmp17895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp17894))))
                                         (declare (not safe))
                                         (cons __tmp17893 '()))))
                                  (declare (not safe))
                                  (cons _args12775_ __tmp17892))))
                           (declare (not safe))
                           (cons 'lambda __tmp17891))))
                     _body1268612750_
                     _hd1268712752_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop1268012716_
                                               _target1267712711_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g1267012698_ _g1267112701_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1267012698_ _g1267112701_)))))
                        (let ()
                          (declare (not safe))
                          (_g1267012698_ _g1267112701_))))))
            (declare (not safe))
            (_g1266912800_ _stx12664_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx11938_ _compiled-body?11939_)
        (letrec ((_generate-simple11941_
                  (lambda (_hd12651_ _body12652_)
                    (let ((__tmp17919
                           (let ((__tmp17920
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     'let
                                     _hd12651_
                                     _body12652_
                                     _compiled-body?11939_))))
                             (declare (not safe))
                             (_coalesce-let*11943_ __tmp17920))))
                      (declare (not safe))
                      (_coalesce-boolean11942_ __tmp17919))))
                 (_coalesce-boolean11942_
                  (lambda (_code12512_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code1251312539_ _code12512_)
                               (_else1251512547_ (lambda () _code12512_))
                               (_K1251712584_
                                (lambda (_expr212550_ _expr112551_ _id12552_)
                                  (let* ((_expr21255312561_ _expr212550_)
                                         (_else1255512569_
                                          (lambda ()
                                            (let ((__tmp17921
                                                   (let ((__tmp17922
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr212550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr112551_
                                                           __tmp17922))))
                                              (declare (not safe))
                                              (cons 'or __tmp17921))))
                                         (_K1255712574_
                                          (lambda (_exprs12572_)
                                            (let ((__tmp17923
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr112551_
                                                           _exprs12572_))))
                                              (declare (not safe))
                                              (cons 'or __tmp17923)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr21255312561_))
                                        (let ((_hd1255812577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr21255312561_)))
                                              (_tl1255912579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr21255312561_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1255812577_ 'or))
                                              (let ((_exprs12582_
                                                     _tl1255912579_))
                                                (declare (not safe))
                                                (_K1255712574_ _exprs12582_))
                                              (let ()
                                                (declare (not safe))
                                                (_else1255512569_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else1255512569_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code1251312539_))
                              (let ((_hd1251812587_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code1251312539_)))
                                    (_tl1251912589_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code1251312539_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd1251812587_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl1251912589_))
                                        (let ((_hd1252012592_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl1251912589_)))
                                              (_tl1252112594_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl1251912589_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd1252012592_))
                                              (let ((_hd1253212597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd1252012592_)))
                                                    (_tl1253312599_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd1252012592_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd1253212597_))
                                                    (let ((_hd1253412602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd1253212597_)))
                                                          (_tl1253512604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd1253212597_))))
                                                      (let ((_id12607_
                                                             _hd1253412602_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl1253512604_))
                                                            (let ((_hd1253612609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl1253512604_)))
                          (_tl1253712611_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl1253512604_))))
                      (let ((_expr112614_ _hd1253612609_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl1253712611_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl1253312599_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1252112594_))
                                    (let ((_hd1252212616_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1252112594_)))
                                          (_tl1252312618_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1252112594_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1252212616_))
                                          (let ((_hd1252412621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1252212616_)))
                                                (_tl1252512623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1252212616_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1252412621_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl1252512623_))
                                                    (let ((_hd1252612626_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl1252512623_)))
                                                          (_tl1252712628_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl1252512623_))))
                                                      (if ((lambda (_g1263012632_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g1263012632_ _id12607_)))
                   _hd1252612626_)
                  (if (let () (declare (not safe)) (##pair? _tl1252712628_))
                      (let ((_hd1252812635_
                             (let ()
                               (declare (not safe))
                               (##car _tl1252712628_)))
                            (_tl1252912637_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl1252712628_))))
                        (if ((lambda (_g1263912641_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g1263912641_ _id12607_)))
                             _hd1252812635_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl1252912637_))
                                (let ((_hd1253012644_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl1252912637_)))
                                      (_tl1253112646_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl1252912637_))))
                                  (let ((_expr212649_ _hd1253012644_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1253112646_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl1252312618_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1251712584_
                                               _expr212649_
                                               _expr112614_
                                               _id12607_))
                                            (let ()
                                              (declare (not safe))
                                              (_else1251512547_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else1251512547_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else1251512547_)))
                            (let () (declare (not safe)) (_else1251512547_))))
                      (let () (declare (not safe)) (_else1251512547_)))
                  (let () (declare (not safe)) (_else1251512547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else1251512547_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else1251512547_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else1251512547_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1251512547_)))
                                (let ()
                                  (declare (not safe))
                                  (_else1251512547_)))
                            (let () (declare (not safe)) (_else1251512547_)))))
                    (let () (declare (not safe)) (_else1251512547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else1251512547_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else1251512547_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else1251512547_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else1251512547_))))
                              (let ()
                                (declare (not safe))
                                (_else1251512547_))))
                        _code12512_)))
                 (_coalesce-let*11943_
                  (lambda (_code12245_)
                    (let* ((_code1224612310_ _code12245_)
                           (_else1225012318_ (lambda () _code12245_)))
                      (let ((_K1229212463_
                             (lambda (_body12459_ _expr12460_ _id12461_)
                               (let ((__tmp17924
                                      (let ((__tmp17925
                                             (let ((__tmp17926
                                                    (let ((__tmp17927
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr12460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id12461_ __tmp17927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17926 '()))))
                                        (declare (not safe))
                                        (cons __tmp17925 _body12459_))))
                                 (declare (not safe))
                                 (cons 'let __tmp17924))))
                            (_K1226912388_
                             (lambda (_body12382_
                                      _expr212383_
                                      _id212384_
                                      _expr112385_
                                      _id112386_)
                               (let ((__tmp17928
                                      (let ((__tmp17929
                                             (let ((__tmp17933
                                                    (let ((__tmp17934
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr112385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id112386_ __tmp17934)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp17930
                                                    (let ((__tmp17931
                                                           (let ((__tmp17932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr212383_ '()))))
                     (declare (not safe))
                     (cons _id212384_ __tmp17932))))
              (declare (not safe))
              (cons __tmp17931 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17933 __tmp17930))))
                                        (declare (not safe))
                                        (cons __tmp17929 _body12382_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp17928))))
                            (_K1225212327_
                             (lambda (_body12322_
                                      _bind12323_
                                      _expr112324_
                                      _id112325_)
                               (let ((__tmp17935
                                      (let ((__tmp17936
                                             (let ((__tmp17937
                                                    (let ((__tmp17938
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr112324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id112325_ __tmp17938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp17937 _bind12323_))))
                                        (declare (not safe))
                                        (cons __tmp17936 _body12322_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp17935)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code1224612310_))
                            (let ((_tl1229412468_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code1224612310_)))
                                  (_hd1229312466_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code1224612310_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd1229312466_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1229412468_))
                                      (let ((_tl1229612473_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1229412468_)))
                                            (_hd1229512471_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1229412468_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd1229512471_))
                                            (let ((_tl1230412478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd1229512471_)))
                                                  (_hd1230312476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd1229512471_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd1230312476_))
                                                  (let ((_tl1230612483_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd1230312476_)))
                                                        (_hd1230512481_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd1230312476_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1230612483_))
                                                        (let ((_tl1230812490_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1230612483_)))
                      (_hd1230712488_
                       (let () (declare (not safe)) (##car _tl1230612483_))))
                  (if (let () (declare (not safe)) (##null? _tl1230812490_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl1230412478_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl1229612473_))
                              (let ((_tl1229812497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl1229612473_)))
                                    (_hd1229712495_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl1229612473_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1229712495_))
                                    (let ((_tl1230012502_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1229712495_)))
                                          (_hd1229912500_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1229712495_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd1229912500_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl1230012502_))
                                              (let ((_tl1230212507_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl1230012502_)))
                                                    (_hd1230112505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl1230012502_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd1230112505_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1229812497_))
                                                        (let ((_id12486_
                                                               _hd1230512481_)
                                                              (_expr12493_
                                                               _hd1230712488_)
                                                              (_body12510_
                                                               _tl1230212507_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K1229212463_
                                                             _body12510_
                                                             _expr12493_
                                                             _id12486_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else1225012318_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd1230112505_))
                                                        (let ((_tl1228112437_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd1230112505_)))
                      (_hd1228012435_
                       (let () (declare (not safe)) (##car _hd1230112505_))))
                  (if (let () (declare (not safe)) (##pair? _hd1228012435_))
                      (let ((_tl1228312442_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd1228012435_)))
                            (_hd1228212440_
                             (let ()
                               (declare (not safe))
                               (##car _hd1228012435_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1228312442_))
                            (let ((_tl1228512449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1228312442_)))
                                  (_hd1228412447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1228312442_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1228512449_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1228112437_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1229812497_))
                                          (let ((_id112411_ _hd1230512481_)
                                                (_expr112418_ _hd1230712488_)
                                                (_id212445_ _hd1228212440_)
                                                (_expr212452_ _hd1228412447_)
                                                (_body12454_ _tl1230212507_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1226912388_
                                               _body12454_
                                               _expr212452_
                                               _id212445_
                                               _expr112418_
                                               _id112411_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1225012318_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1225012318_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1225012318_))))
                            (let () (declare (not safe)) (_else1225012318_))))
                      (let () (declare (not safe)) (_else1225012318_))))
                (let () (declare (not safe)) (_else1225012318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else1225012318_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1229912500_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl1230012502_))
                                                  (let ((_tl1226212371_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl1230012502_)))
                                                        (_hd1226112369_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl1230012502_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1229812497_))
                                                        (let ((_id112350_
                                                               _hd1230512481_)
                                                              (_expr112357_
                                                               _hd1230712488_)
                                                              (_bind12374_
                                                               _hd1226112369_)
                                                              (_body12376_
                                                               _tl1226212371_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K1225212327_
                                                             _body12376_
                                                             _bind12374_
                                                             _expr112357_
                                                             _id112350_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else1225012318_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else1225012318_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else1225012318_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1225012318_))))
                              (let () (declare (not safe)) (_else1225012318_)))
                          (let () (declare (not safe)) (_else1225012318_)))
                      (let () (declare (not safe)) (_else1225012318_))))
                (let () (declare (not safe)) (_else1225012318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else1225012318_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else1225012318_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else1225012318_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1225012318_))))
                            (let ()
                              (declare (not safe))
                              (_else1225012318_)))))))
                 (_generate-values11944_
                  (lambda (_hd12058_ _body12059_)
                    (let _lp12061_ ((_rest12063_ _hd12058_)
                                    (_bind12064_ '())
                                    (_check12065_ '())
                                    (_post12066_ '()))
                      (let* ((___stx1689516896_ _rest12063_)
                             (_g1206912080_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1689516896_)))))
                        (let ((___kont1689716898_
                               (lambda (_L12107_ _L12108_)
                                 (let* ((___stx1685116852_ _L12108_)
                                        (_g1212312148_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1685116852_)))))
                                   (let ((___kont1685316854_
                                          (lambda (_L12221_ _L12222_)
                                            (let ((_eid12236_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L12222_)))
                                                  (_expr12237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L12221_))))
                                              (let ((__tmp17939
                                                     (let ((__tmp17940
                                                            (let ((__tmp17941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr12237_ '()))))
                      (declare (not safe))
                      (cons _eid12236_ __tmp17941))))
               (declare (not safe))
               (cons __tmp17940 _bind12064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp12061_
                                                 _L12107_
                                                 __tmp17939
                                                 _check12065_
                                                 _post12066_)))))
                                         (___kont1685516856_
                                          (lambda (_L12169_ _L12170_)
                                            (let* ((_vals12183_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values12185_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals12183_
                                                       _L12170_
                                                       _L12169_)))
                                                   (_refs12187_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals12183_
                                                       _L12170_)))
                                                   (_expr12189_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e
                                                       _L12169_))))
                                              (let ((__tmp17944
                                                     (let ((__tmp17945
                                                            (let ((__tmp17946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr12189_ '()))))
                      (declare (not safe))
                      (cons _vals12183_ __tmp17946))))
               (declare (not safe))
               (cons __tmp17945 _bind12064_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp17943
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values12185_
                                                             _check12065_)))
                                                    (__tmp17942
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs12187_
                                                             _post12066_))))
                                                (declare (not safe))
                                                (_lp12061_
                                                 _L12107_
                                                 __tmp17944
                                                 __tmp17943
                                                 __tmp17942))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1685116852_))
                                         (let ((_e1212912197_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1685116852_))))
                                           (let ((_tl1212712202_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1212912197_)))
                                                 (_hd1212812200_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1212912197_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd1212812200_))
                                                 (let ((_e1213212205_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd1212812200_))))
                                                   (let ((_tl1213012210_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1213212205_)))
                                                         (_hd1213112208_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1213212205_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl1213012210_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl1212712202_))
                     (let ((_e1213512213_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1212712202_))))
                       (let ((_tl1213312218_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1213512213_)))
                             (_hd1213412216_
                              (let ()
                                (declare (not safe))
                                (##car _e1213512213_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1213312218_))
                             (___kont1685316854_ _hd1213412216_ _hd1213112208_)
                             (let () (declare (not safe)) (_g1212312148_)))))
                     (let () (declare (not safe)) (_g1212312148_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl1212712202_))
                     (let ((_e1214312161_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1212712202_))))
                       (let ((_tl1214112166_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1214312161_)))
                             (_hd1214212164_
                              (let ()
                                (declare (not safe))
                                (##car _e1214312161_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1214112166_))
                             (___kont1685516856_ _hd1214212164_ _hd1212812200_)
                             (let () (declare (not safe)) (_g1212312148_)))))
                     (let () (declare (not safe)) (_g1212312148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl1212712202_))
                                                     (let ((_e1214312161_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl1212712202_))))
                                                       (let ((_tl1214112166_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1214312161_)))
                     (_hd1214212164_
                      (let () (declare (not safe)) (##car _e1214312161_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl1214112166_))
                     (___kont1685516856_ _hd1214212164_ _hd1212812200_)
                     (let () (declare (not safe)) (_g1212312148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1212312148_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1212312148_)))))))
                              (___kont1689916900_
                               (lambda ()
                                 (let* ((_body12087_
                                         (if _compiled-body?11939_
                                             _body12059_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _body12059_))))
                                        (_body12089_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post11945_
                                            _post12066_
                                            _body12087_)))
                                        (_body12091_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check11946_
                                            _check12065_
                                            _body12089_))))
                                   (let ((__tmp17947
                                          (let ((__tmp17949
                                                 (reverse _bind12064_))
                                                (__tmp17948
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body12091_ '()))))
                                            (declare (not safe))
                                            (cons __tmp17949 __tmp17948))))
                                     (declare (not safe))
                                     (cons 'let __tmp17947))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1689516896_))
                              (let ((_e1207512099_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1689516896_))))
                                (let ((_tl1207312104_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1207512099_)))
                                      (_hd1207412102_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1207512099_))))
                                  (___kont1689716898_
                                   _tl1207312104_
                                   _hd1207412102_)))
                              (___kont1689916900_)))))))
                 (_generate-values-post11945_
                  (lambda (_post12017_ _body12018_)
                    (let _lp12020_ ((_rest12022_ _post12017_)
                                    (_body12023_ _body12018_))
                      (let* ((_rest1202412032_ _rest12022_)
                             (_else1202612040_ (lambda () _body12023_))
                             (_K1202812046_
                              (lambda (_rest12043_ _bind12044_)
                                (let ((__tmp17950
                                       (let ((__tmp17951
                                              (let ((__tmp17952
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body12023_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind12044_
                                                      __tmp17952))))
                                         (declare (not safe))
                                         (cons 'let __tmp17951))))
                                  (declare (not safe))
                                  (_lp12020_ _rest12043_ __tmp17950)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1202412032_))
                            (let ((_hd1202912049_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1202412032_)))
                                  (_tl1203012051_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1202412032_))))
                              (let* ((_bind12054_ _hd1202912049_)
                                     (_rest12056_ _tl1203012051_))
                                (declare (not safe))
                                (_K1202812046_ _rest12056_ _bind12054_)))
                            (let ()
                              (declare (not safe))
                              (_else1202612040_)))))))
                 (_generate-values-check11946_
                  (lambda (_check12014_ _body12015_)
                    (let ((__tmp17953
                           (let ((__tmp17955
                                  (let ()
                                    (declare (not safe))
                                    (cons _body12015_ '())))
                                 (__tmp17954 (reverse _check12014_)))
                             (declare (not safe))
                             (foldr1 cons __tmp17955 __tmp17954))))
                      (declare (not safe))
                      (cons 'begin __tmp17953)))))
          (let* ((_g1194811965_
                  (lambda (_g1194911962_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1194911962_))))
                 (_g1194712011_
                  (lambda (_g1194911968_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1194911968_))
                        (let ((_e1195411970_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1194911968_))))
                          (let ((_hd1195311973_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1195411970_)))
                                (_tl1195211975_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1195411970_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1195211975_))
                                (let ((_e1195711978_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1195211975_))))
                                  (let ((_hd1195611981_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1195711978_)))
                                        (_tl1195511983_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1195711978_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1195511983_))
                                        (let ((_e1196011986_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1195511983_))))
                                          (let ((_hd1195911989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1196011986_)))
                                                (_tl1195811991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1196011986_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1195811991_))
                                                ((lambda (_L11994_ _L11995_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L11995_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple11941_
                                                          _L11995_
                                                          _L11994_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values11944_
                                                          _L11995_
                                                          _L11994_))))
                                                 _hd1195911989_
                                                 _hd1195611981_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1194811965_
                                                   _g1194911968_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1194811965_ _g1194911968_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1194811965_ _g1194911968_)))))
                        (let ()
                          (declare (not safe))
                          (_g1194811965_ _g1194911968_))))))
            (declare (not safe))
            (_g1194712011_ _stx11938_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_stx12657_)
        (let ((_compiled-body?12659_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _stx12657_
           _compiled-body?12659_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g17957_
        (let ((_g17956_ (let () (declare (not safe)) (##length _g17957_))))
          (cond ((let () (declare (not safe)) (##fx= _g17956_ 1))
                 (apply (lambda (_stx12657_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0 _stx12657_)))
                        _g17957_))
                ((let () (declare (not safe)) (##fx= _g17956_ 2))
                 (apply (lambda (_stx12661_ _compiled-body?12662_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _stx12661_
                             _compiled-body?12662_)))
                        _g17957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g17957_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals11832_ _hd11833_)
        (let _lp11835_ ((_rest11837_ _hd11833_) (_k11838_ '0) (_r11839_ '()))
          (let* ((___stx1690916910_ _rest11837_)
                 (_g1184411861_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx1690916910_)))))
            (let ((___kont1691116912_
                   (lambda (_L11924_)
                     (let ((__tmp17958
                            (let () (declare (not safe)) (fx+ _k11838_ '1))))
                       (declare (not safe))
                       (_lp11835_ _L11924_ __tmp17958 _r11839_))))
                  (___kont1691316914_
                   (lambda (_L11897_ _L11898_)
                     (let ((__tmp17964
                            (let () (declare (not safe)) (fx+ _k11838_ '1)))
                           (__tmp17959
                            (let ((__tmp17960
                                   (let ((__tmp17963
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L11898_)))
                                         (__tmp17961
                                          (let ((__tmp17962
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals11832_
                                                    _k11838_
                                                    _L11897_))))
                                            (declare (not safe))
                                            (cons __tmp17962 '()))))
                                     (declare (not safe))
                                     (cons __tmp17963 __tmp17961))))
                              (declare (not safe))
                              (cons __tmp17960 _r11839_))))
                       (declare (not safe))
                       (_lp11835_ _L11897_ __tmp17964 __tmp17959))))
                  (___kont1691516916_
                   (lambda (_L11873_)
                     (let ((__tmp17965
                            (let ((__tmp17966
                                   (let ((__tmp17969
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L11873_)))
                                         (__tmp17967
                                          (let ((__tmp17968
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals11832_
                                                    _k11838_))))
                                            (declare (not safe))
                                            (cons __tmp17968 '()))))
                                     (declare (not safe))
                                     (cons __tmp17969 __tmp17967))))
                              (declare (not safe))
                              (cons __tmp17966 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp17965 _r11839_))))
                  (___kont1691716918_ (lambda () (reverse _r11839_))))
              (let ((_g1184211884_
                     (lambda ()
                       (let ((_L11873_ ___stx1690916910_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L11873_))
                             (___kont1691516916_ _L11873_)
                             (___kont1691716918_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx1690916910_))
                    (let ((_e1184911913_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx1690916910_))))
                      (let ((_tl1184711918_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1184911913_)))
                            (_hd1184811916_
                             (let ()
                               (declare (not safe))
                               (##car _e1184911913_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd1184811916_))
                            (let ((_e1185011921_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd1184811916_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e1185011921_ '#f))
                                  (___kont1691116912_ _tl1184711918_)
                                  (___kont1691316914_
                                   _tl1184711918_
                                   _hd1184811916_)))
                            (___kont1691316914_
                             _tl1184711918_
                             _hd1184811916_))))
                    (let () (declare (not safe)) (_g1184211884_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx11514_ _compiled-body?11515_)
        (letrec ((_generate-simple11517_
                  (lambda (_hd11819_ _body11820_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd11819_
                       _body11820_
                       _compiled-body?11515_))))
                 (_generate-values11518_
                  (lambda (_hd11598_ _body11599_)
                    (let _lp11601_ ((_rest11603_ _hd11598_)
                                    (_bind11604_ '())
                                    (_check11605_ '())
                                    (_post11606_ '()))
                      (let* ((___stx1698316984_ _rest11603_)
                             (_g1160911620_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1698316984_)))))
                        (let ((___kont1698516986_
                               (lambda (_L11647_ _L11648_)
                                 (let* ((___stx1693916940_ _L11648_)
                                        (_g1166311688_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1693916940_)))))
                                   (let ((___kont1694116942_
                                          (lambda (_L11795_ _L11796_)
                                            (let ((_eid11810_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L11796_)))
                                                  (_expr11811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L11795_))))
                                              (let ((__tmp17970
                                                     (let ((__tmp17971
                                                            (let ((__tmp17972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr11811_ '()))))
                      (declare (not safe))
                      (cons _eid11810_ __tmp17972))))
               (declare (not safe))
               (cons __tmp17971 _bind11604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp11601_
                                                 _L11647_
                                                 __tmp17970
                                                 _check11605_
                                                 _post11606_)))))
                                         (___kont1694316944_
                                          (lambda (_L11709_ _L11710_)
                                            (let* ((_vals11723_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values11725_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals11723_
                                                       _L11710_
                                                       _L11709_)))
                                                   (_refs11727_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals11723_
                                                       _L11710_)))
                                                   (_expr11729_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e
                                                       _L11709_))))
                                              (let ((__tmp17975
                                                     (let ((__tmp17978
                                                            (let ((__tmp17979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17980
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr11729_ '()))))
                             (declare (not safe))
                             (cons _vals11723_ __tmp17980))))
                      (declare (not safe))
                      (cons __tmp17979 _bind11604_)))
                   (__tmp17976
                    (map (lambda (_e1173111733_)
                           (let* ((_g1173511744_ _e1173111733_)
                                  (_E1173711748_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g1173511744_)))
                                  (_K1173811753_
                                   (lambda (_eid11751_)
                                     (let ((__tmp17977
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid11751_ __tmp17977)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g1173511744_))
                                 (let ((_hd1173911756_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g1173511744_)))
                                       (_tl1174011758_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g1173511744_))))
                                   (let ((_eid11761_ _hd1173911756_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl1174011758_))
                                         (let ((_tl1174211763_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl1174011758_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl1174211763_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K1173811753_ _eid11761_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E1173711748_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E1173711748_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E1173711748_)))))
                         _refs11727_)))
               (declare (not safe))
               (foldl1 cons __tmp17978 __tmp17976)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp17974
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values11725_
                                                             _check11605_)))
                                                    (__tmp17973
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs11727_
                                                               _post11606_))))
                                                (declare (not safe))
                                                (_lp11601_
                                                 _L11647_
                                                 __tmp17975
                                                 __tmp17974
                                                 __tmp17973))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1693916940_))
                                         (let ((_e1166911771_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1693916940_))))
                                           (let ((_tl1166711776_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1166911771_)))
                                                 (_hd1166811774_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1166911771_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd1166811774_))
                                                 (let ((_e1167211779_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd1166811774_))))
                                                   (let ((_tl1167011784_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1167211779_)))
                                                         (_hd1167111782_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1167211779_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl1167011784_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl1166711776_))
                     (let ((_e1167511787_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1166711776_))))
                       (let ((_tl1167311792_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1167511787_)))
                             (_hd1167411790_
                              (let ()
                                (declare (not safe))
                                (##car _e1167511787_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1167311792_))
                             (___kont1694116942_ _hd1167411790_ _hd1167111782_)
                             (let () (declare (not safe)) (_g1166311688_)))))
                     (let () (declare (not safe)) (_g1166311688_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl1166711776_))
                     (let ((_e1168311701_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1166711776_))))
                       (let ((_tl1168111706_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1168311701_)))
                             (_hd1168211704_
                              (let ()
                                (declare (not safe))
                                (##car _e1168311701_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1168111706_))
                             (___kont1694316944_ _hd1168211704_ _hd1166811774_)
                             (let () (declare (not safe)) (_g1166311688_)))))
                     (let () (declare (not safe)) (_g1166311688_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl1166711776_))
                                                     (let ((_e1168311701_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl1166711776_))))
                                                       (let ((_tl1168111706_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1168311701_)))
                     (_hd1168211704_
                      (let () (declare (not safe)) (##car _e1168311701_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl1168111706_))
                     (___kont1694316944_ _hd1168211704_ _hd1166811774_)
                     (let () (declare (not safe)) (_g1166311688_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1166311688_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1166311688_)))))))
                              (___kont1698716988_
                               (lambda ()
                                 (let* ((_body11627_
                                         (if _compiled-body?11515_
                                             _body11599_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _body11599_))))
                                        (_body11629_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post11520_
                                            _post11606_
                                            _body11627_)))
                                        (_body11631_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check11519_
                                            _check11605_
                                            _body11629_))))
                                   (let ((__tmp17981
                                          (let ((__tmp17983
                                                 (reverse _bind11604_))
                                                (__tmp17982
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body11631_ '()))))
                                            (declare (not safe))
                                            (cons __tmp17983 __tmp17982))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp17981))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1698316984_))
                              (let ((_e1161511639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1698316984_))))
                                (let ((_tl1161311644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1161511639_)))
                                      (_hd1161411642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1161511639_))))
                                  (___kont1698516986_
                                   _tl1161311644_
                                   _hd1161411642_)))
                              (___kont1698716988_)))))))
                 (_generate-values-check11519_
                  (lambda (_check11595_ _body11596_)
                    (let ((__tmp17984
                           (let ((__tmp17986
                                  (let ()
                                    (declare (not safe))
                                    (cons _body11596_ '())))
                                 (__tmp17985 (reverse _check11595_)))
                             (declare (not safe))
                             (foldr1 cons __tmp17986 __tmp17985))))
                      (declare (not safe))
                      (cons 'begin __tmp17984))))
                 (_generate-values-post11520_
                  (lambda (_post11588_ _body11589_)
                    (let ((__tmp17987
                           (let ((__tmp17989
                                  (let ()
                                    (declare (not safe))
                                    (cons _body11589_ '())))
                                 (__tmp17988
                                  (map (lambda (_g1159011592_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g1159011592_)))
                                       (reverse _post11588_))))
                             (declare (not safe))
                             (foldr1 cons __tmp17989 __tmp17988))))
                      (declare (not safe))
                      (cons 'begin __tmp17987)))))
          (let* ((_g1152211539_
                  (lambda (_g1152311536_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1152311536_))))
                 (_g1152111585_
                  (lambda (_g1152311542_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1152311542_))
                        (let ((_e1152811544_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1152311542_))))
                          (let ((_hd1152711547_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1152811544_)))
                                (_tl1152611549_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1152811544_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1152611549_))
                                (let ((_e1153111552_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1152611549_))))
                                  (let ((_hd1153011555_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1153111552_)))
                                        (_tl1152911557_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1153111552_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1152911557_))
                                        (let ((_e1153411560_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1152911557_))))
                                          (let ((_hd1153311563_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1153411560_)))
                                                (_tl1153211565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1153411560_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1153211565_))
                                                ((lambda (_L11568_ _L11569_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L11569_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple11517_
                                                          _L11569_
                                                          _L11568_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values11518_
                                                          _L11569_
                                                          _L11568_))))
                                                 _hd1153311563_
                                                 _hd1153011555_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1152211539_
                                                   _g1152311542_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1152211539_ _g1152311542_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1152211539_ _g1152311542_)))))
                        (let ()
                          (declare (not safe))
                          (_g1152211539_ _g1152311542_))))))
            (declare (not safe))
            (_g1152111585_ _stx11514_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_stx11825_)
        (let ((_compiled-body?11827_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _stx11825_
           _compiled-body?11827_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g17991_
        (let ((_g17990_ (let () (declare (not safe)) (##length _g17991_))))
          (cond ((let () (declare (not safe)) (##fx= _g17990_ 1))
                 (apply (lambda (_stx11825_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _stx11825_)))
                        _g17991_))
                ((let () (declare (not safe)) (##fx= _g17990_ 2))
                 (apply (lambda (_stx11829_ _compiled-body?11830_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _stx11829_
                             _compiled-body?11830_)))
                        _g17991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g17991_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_stx11096_)
        (letrec ((_generate-values11098_
                  (lambda (_hd11341_ _body11342_)
                    (let _lp11344_ ((_rest11346_ _hd11341_) (_bind11347_ '()))
                      (let* ((_rest1134811356_ _rest11346_)
                             (_else1135011367_
                              (lambda ()
                                (let ((_bind11364_ (reverse _bind11347_))
                                      (_body11365_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _body11342_))))
                                  (let ((__tmp17992
                                         (let ((__tmp17993
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body11365_ '()))))
                                           (declare (not safe))
                                           (cons _bind11364_ __tmp17993))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp17992)))))
                             (_K1135211501_
                              (lambda (_rest11370_ _hd-bind11371_)
                                (let* ((___stx1699716998_ _hd-bind11371_)
                                       (_g1137411399_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx1699716998_)))))
                                  (let ((___kont1699917000_
                                         (lambda (_L11480_ _L11481_)
                                           (let ((_eid11495_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L11481_)))
                                                 (_expr11496_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _L11480_))))
                                             (let ((__tmp17994
                                                    (let ((__tmp17995
                                                           (let ((__tmp17996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr11496_ '()))))
                     (declare (not safe))
                     (cons _eid11495_ __tmp17996))))
              (declare (not safe))
              (cons __tmp17995 _bind11347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp11344_
                                                _rest11370_
                                                __tmp17994)))))
                                        (___kont1700117002_
                                         (lambda (_L11420_ _L11421_)
                                           (let* ((_vals11440_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp11442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values11444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp11442_
                                                      _L11421_
                                                      _L11420_)))
                                                  (_refs11446_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals11440_
                                                      _L11421_)))
                                                  (_expr11448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L11420_))))
                                             (let ((__tmp17997
                                                    (let ((__tmp17998
                                                           (let ((__tmp17999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18000
                                 (let ((__tmp18001
                                        (let ((__tmp18002
                                               (let ((__tmp18005
                                                      (let ((__tmp18006
                                                             (let ((__tmp18007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr11448_ '()))))
                       (declare (not safe))
                       (cons _tmp11442_ __tmp18007))))
                (declare (not safe))
                (cons __tmp18006 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18003
                                                      (let ((__tmp18004
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp11442_ '()))))
                (declare (not safe))
                (cons _check-values11444_ __tmp18004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18005
                                                       __tmp18003))))
                                          (declare (not safe))
                                          (cons 'let __tmp18002))))
                                   (declare (not safe))
                                   (cons __tmp18001 '()))))
                            (declare (not safe))
                            (cons _vals11440_ __tmp18000))))
                     (declare (not safe))
                     (cons __tmp17999 _bind11347_))))
              (declare (not safe))
              (foldl1 cons __tmp17998 _refs11446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp11344_
                                                _rest11370_
                                                __tmp17997))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1699716998_))
                                        (let ((_e1138011456_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1699716998_))))
                                          (let ((_tl1137811461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1138011456_)))
                                                (_hd1137911459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1138011456_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd1137911459_))
                                                (let ((_e1138311464_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd1137911459_))))
                                                  (let ((_tl1138111469_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1138311464_)))
                                                        (_hd1138211467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1138311464_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl1138111469_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1137811461_))
                                                            (let ((_e1138611472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1137811461_))))
                      (let ((_tl1138411477_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1138611472_)))
                            (_hd1138511475_
                             (let ()
                               (declare (not safe))
                               (##car _e1138611472_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1138411477_))
                            (___kont1699917000_ _hd1138511475_ _hd1138211467_)
                            (let () (declare (not safe)) (_g1137411399_)))))
                    (let () (declare (not safe)) (_g1137411399_)))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl1137811461_))
                    (let ((_e1139411412_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1137811461_))))
                      (let ((_tl1139211417_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1139411412_)))
                            (_hd1139311415_
                             (let ()
                               (declare (not safe))
                               (##car _e1139411412_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1139211417_))
                            (___kont1700117002_ _hd1139311415_ _hd1137911459_)
                            (let () (declare (not safe)) (_g1137411399_)))))
                    (let () (declare (not safe)) (_g1137411399_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl1137811461_))
                                                    (let ((_e1139411412_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl1137811461_))))
                                                      (let ((_tl1139211417_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1139411412_)))
                    (_hd1139311415_
                     (let () (declare (not safe)) (##car _e1139411412_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl1139211417_))
                    (___kont1700117002_ _hd1139311415_ _hd1137911459_)
                    (let () (declare (not safe)) (_g1137411399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1137411399_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1137411399_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1134811356_))
                            (let ((_hd1135311504_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1134811356_)))
                                  (_tl1135411506_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1134811356_))))
                              (let* ((_hd-bind11509_ _hd1135311504_)
                                     (_rest11511_ _tl1135411506_))
                                (declare (not safe))
                                (_K1135211501_ _rest11511_ _hd-bind11509_)))
                            (let ()
                              (declare (not safe))
                              (_else1135011367_)))))))
                 (_generate-letrec?11099_
                  (lambda (_hd11231_)
                    (let _lp11233_ ((_rest11235_ _hd11231_))
                      (let* ((_rest1123611244_ _rest11235_)
                             (_else1123811252_ (lambda () '#t))
                             (_K1124011329_
                              (lambda (_rest11255_ _hd-bind11256_)
                                (let* ((_g1125811275_
                                        (lambda (_g1125911272_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1125911272_))))
                                       (_g1125711326_
                                        (lambda (_g1125911278_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g1125911278_))
                                              (let ((_e1126411280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g1125911278_))))
                                                (let ((_hd1126311283_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1126411280_)))
                                                      (_tl1126211285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1126411280_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd1126311283_))
                                                      (let ((_e1126711288_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd1126311283_))))
                (let ((_hd1126611291_
                       (let () (declare (not safe)) (##car _e1126711288_)))
                      (_tl1126511293_
                       (let () (declare (not safe)) (##cdr _e1126711288_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl1126511293_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1126211285_))
                          (let ((_e1127011296_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1126211285_))))
                            (let ((_hd1126911299_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1127011296_)))
                                  (_tl1126811301_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1127011296_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl1126811301_))
                                  ((lambda (_L11304_ _L11305_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?11100_ _L11304_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp11233_ _rest11255_))
                                         '#f))
                                   _hd1126911299_
                                   _hd1126611291_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1125811275_ _g1125911278_)))))
                          (let ()
                            (declare (not safe))
                            (_g1125811275_ _g1125911278_)))
                      (let ()
                        (declare (not safe))
                        (_g1125811275_ _g1125911278_)))))
              (let () (declare (not safe)) (_g1125811275_ _g1125911278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1125811275_
                                                 _g1125911278_))))))
                                  (declare (not safe))
                                  (_g1125711326_ _hd-bind11256_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1123611244_))
                            (let ((_hd1124111332_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1123611244_)))
                                  (_tl1124211334_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1123611244_))))
                              (let* ((_hd-bind11337_ _hd1124111332_)
                                     (_rest11339_ _tl1124211334_))
                                (declare (not safe))
                                (_K1124011329_ _rest11339_ _hd-bind11337_)))
                            (let ()
                              (declare (not safe))
                              (_else1123811252_)))))))
                 (_is-lambda-expr?11100_
                  (lambda (_expr11168_)
                    (let* ((___stx1704117042_ _expr11168_)
                           (_g1117111185_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1704117042_)))))
                      (let ((___kont1704317044_
                             (lambda (_L11213_ _L11214_) '#t))
                            (___kont1704517046_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx1704117042_))
                            (let ((_e1117711197_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx1704117042_))))
                              (let ((_tl1117511202_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1117711197_)))
                                    (_hd1117611200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1117711197_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd1117611200_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd1117611200_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1117511202_))
                                            (let ((_e1118011205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1117511202_))))
                                              (let ((_tl1117811210_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1118011205_)))
                                                    (_hd1117911208_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1118011205_))))
                                                (___kont1704317044_
                                                 _tl1117811210_
                                                 _hd1117911208_)))
                                            (___kont1704517046_))
                                        (___kont1704517046_))
                                    (___kont1704517046_))))
                            (___kont1704517046_)))))))
          (let* ((_g1110211119_
                  (lambda (_g1110311116_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1110311116_))))
                 (_g1110111165_
                  (lambda (_g1110311122_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1110311122_))
                        (let ((_e1110811124_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1110311122_))))
                          (let ((_hd1110711127_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1110811124_)))
                                (_tl1110611129_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1110811124_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1110611129_))
                                (let ((_e1111111132_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1110611129_))))
                                  (let ((_hd1111011135_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1111111132_)))
                                        (_tl1110911137_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1111111132_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1110911137_))
                                        (let ((_e1111411140_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1110911137_))))
                                          (let ((_hd1111311143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1111411140_)))
                                                (_tl1111211145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1111411140_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1111211145_))
                                                ((lambda (_L11148_ _L11149_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L11149_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?11099_
                                                              _L11149_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              'letrec
                                                              _L11149_
                                                              _L11148_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              'letrec*
                                                              _L11149_
                                                              _L11148_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values11098_
                                                          _L11149_
                                                          _L11148_))))
                                                 _hd1111311143_
                                                 _hd1111011135_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1110211119_
                                                   _g1110311122_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1110211119_ _g1110311122_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1110211119_ _g1110311122_)))))
                        (let ()
                          (declare (not safe))
                          (_g1110211119_ _g1110311122_))))))
            (declare (not safe))
            (_g1110111165_ _stx11096_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd11033_)
        (let _lp11035_ ((_rest11037_ _hd11033_))
          (let* ((_rest1103811054_ _rest11037_)
                 (_else1104111062_ (lambda () '#f)))
            (let ((_K1104411075_
                   (lambda (_rest11073_)
                     (let () (declare (not safe)) (_lp11035_ _rest11073_))))
                  (_K1104311067_ (lambda () '#t)))
              (let ((_try-match1104011070_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest1103811054_))
                           (let () (declare (not safe)) (_K1104311067_))
                           (let () (declare (not safe)) (_else1104111062_))))))
                (if (let () (declare (not safe)) (##pair? _rest1103811054_))
                    (let ((_tl1104611080_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest1103811054_)))
                          (_hd1104511078_
                           (let ()
                             (declare (not safe))
                             (##car _rest1103811054_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd1104511078_))
                          (let ((_tl1104811085_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd1104511078_)))
                                (_hd1104711083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd1104511078_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1104711083_))
                                (let ((_tl1105211088_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1104711083_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1105211088_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1104811085_))
                                          (let ((_tl1105011091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1104811085_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl1105011091_))
                                                (let ((_rest11094_
                                                       _tl1104611080_))
                                                  (declare (not safe))
                                                  (_lp11035_ _rest11094_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else1104111062_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else1104111062_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1104111062_))))
                                (let ()
                                  (declare (not safe))
                                  (_else1104111062_))))
                          (let () (declare (not safe)) (_else1104111062_))))
                    (let ()
                      (declare (not safe))
                      (_try-match1104011070_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_form10945_ _hd10946_ _body10947_ _compiled-body?10948_)
        (letrec ((_generate110950_
                  (lambda (_bind10989_)
                    (let* ((_bind1099011001_ _bind10989_)
                           (_E1099211005_
                            (lambda ()
                              (error '"No clause matching" _bind1099011001_)))
                           (_K1099311011_
                            (lambda (_expr11008_ _id11009_)
                              (let ((__tmp18010
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id11009_)))
                                    (__tmp18008
                                     (let ((__tmp18009
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _expr11008_))))
                                       (declare (not safe))
                                       (cons __tmp18009 '()))))
                                (declare (not safe))
                                (cons __tmp18010 __tmp18008)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind1099011001_))
                          (let ((_hd1099411014_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind1099011001_)))
                                (_tl1099511016_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind1099011001_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1099411014_))
                                (let ((_hd1099811019_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd1099411014_)))
                                      (_tl1099911021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1099411014_))))
                                  (let ((_id11024_ _hd1099811019_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1099911021_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl1099511016_))
                                            (let ((_hd1099611026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl1099511016_)))
                                                  (_tl1099711028_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl1099511016_))))
                                              (let ((_expr11031_
                                                     _hd1099611026_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl1099711028_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K1099311011_
                                                       _expr11031_
                                                       _id11024_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E1099211005_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E1099211005_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E1099211005_)))))
                                (let () (declare (not safe)) (_E1099211005_))))
                          (let () (declare (not safe)) (_E1099211005_)))))))
          (let* ((_bind10952_ (map _generate110950_ _hd10946_))
                 (_body10954_
                  (if _compiled-body?10948_
                      _body10947_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e _body10947_))))
                 (_body10986_
                  (let* ((_body1095510963_ _body10954_)
                         (_else1095710971_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body10954_ '()))))
                         (_K1095910976_ (lambda (_exprs10974_) _exprs10974_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body1095510963_))
                        (let ((_hd1096010979_
                               (let ()
                                 (declare (not safe))
                                 (##car _body1095510963_)))
                              (_tl1096110981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body1095510963_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd1096010979_ 'begin))
                              (let ((_exprs10984_ _tl1096110981_))
                                (declare (not safe))
                                (_K1095910976_ _exprs10984_))
                              (let ()
                                (declare (not safe))
                                (_else1095710971_))))
                        (let () (declare (not safe)) (_else1095710971_))))))
            (let ((__tmp18011
                   (let ()
                     (declare (not safe))
                     (cons _bind10952_ _body10986_))))
              (declare (not safe))
              (cons _form10945_ __tmp18011))))))
    (define gxc#generate-runtime-quote%
      (lambda (_stx10853_)
        (letrec ((_generate110855_
                  (lambda (_datum10907_)
                    (if (or (let () (declare (not safe)) (null? _datum10907_))
                            (interned-symbol? _datum10907_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum10907_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum10907_)))
                        _datum10907_
                        (if (uninterned-symbol? _datum10907_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum10907_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum10907_))
                                (let ((__tmp18016
                                       (let ((__tmp18017 (car _datum10907_)))
                                         (declare (not safe))
                                         (_generate110855_ __tmp18017)))
                                      (__tmp18014
                                       (let ((__tmp18015 (cdr _datum10907_)))
                                         (declare (not safe))
                                         (_generate110855_ __tmp18015))))
                                  (declare (not safe))
                                  (cons __tmp18016 __tmp18014))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum10907_))
                                    (let ((__tmp18012
                                           (let ((__tmp18013
                                                  (unbox _datum10907_)))
                                             (declare (not safe))
                                             (_generate110855_ __tmp18013))))
                                      (declare (not safe))
                                      (box __tmp18012))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum10907_))
                                        (vector-map
                                         _generate110855_
                                         _datum10907_)
                                        (if (or (s8vector? _datum10907_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum10907_))
                                                (s16vector? _datum10907_)
                                                (u16vector? _datum10907_)
                                                (s32vector? _datum10907_)
                                                (u32vector? _datum10907_)
                                                (s64vector? _datum10907_)
                                                (u64vector? _datum10907_)
                                                (f32vector? _datum10907_)
                                                (f64vector? _datum10907_))
                                            _datum10907_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx10853_)))))))))))
          (let* ((_g1085710870_
                  (lambda (_g1085810867_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1085810867_))))
                 (_g1085610904_
                  (lambda (_g1085810873_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1085810873_))
                        (let ((_e1086210875_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1085810873_))))
                          (let ((_hd1086110878_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1086210875_)))
                                (_tl1086010880_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1086210875_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1086010880_))
                                (let ((_e1086510883_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1086010880_))))
                                  (let ((_hd1086410886_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1086510883_)))
                                        (_tl1086310888_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1086510883_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1086310888_))
                                        ((lambda (_L10891_)
                                           (let ((__tmp18018
                                                  (let ((__tmp18019
                                                         (let ((__tmp18020
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L10891_))))
                   (declare (not safe))
                   (_generate110855_ __tmp18020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18019 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp18018)))
                                         _hd1086410886_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1085710870_ _g1085810873_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1085710870_ _g1085810873_)))))
                        (let ()
                          (declare (not safe))
                          (_g1085710870_ _g1085810873_))))))
            (declare (not safe))
            (_g1085610904_ _stx10853_)))))
    (define gxc#generate-runtime-call%
      (lambda (_stx10371_)
        (letrec ((_compile-call10373_
                  (lambda (_rator10597_ _rands10598_)
                    (let ((_rator10600_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _rator10597_)))
                          (_rands10601_ (map gxc#compile-e _rands10598_)))
                      (let* ((___stx1708817089_ _rator10600_)
                             (_g1060410656_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1708817089_)))))
                        (let ((___kont1709017091_
                               (lambda (_L10780_ _L10781_ _L10782_ _L10783_)
                                 (if (fx= (length _rands10601_)
                                          (length (let ((__tmp18025
                                                         (lambda (_g1081910822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1082010824_)
                   (let ()
                     (declare (not safe))
                     (cons _g1081910822_ _g1082010824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp18025
                                                            '()
                                                            _L10782_))))
                                     (let* ((_id10827_ _L10783_)
                                            (_args10836_
                                             (let ((__tmp18021
                                                    (lambda (_g1082810831_
                                                             _g1082910833_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1082810831_
                                                              _g1082910833_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp18021
                                                       '()
                                                       _L10782_)))
                                            (_body10845_
                                             (let ((__tmp18022
                                                    (lambda (_g1083710840_
                                                             _g1083810842_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1083710840_
                                                              _g1083810842_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp18022
                                                       '()
                                                       _L10781_)))
                                            (_init10847_
                                             (map list
                                                  _args10836_
                                                  _rands10601_)))
                                       (let ((__tmp18023
                                              (let ((__tmp18024
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init10847_
                                                             _body10845_))))
                                                (declare (not safe))
                                                (cons _id10827_ __tmp18024))))
                                         (declare (not safe))
                                         (cons 'let __tmp18023)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx10371_)))))
                              (___kont1709617097_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator10600_ _rands10601_)))))
                          (let ((___match1715517156_
                                 (lambda (_e1061210668_
                                          _hd1061110671_
                                          _tl1061010673_
                                          _e1061510676_
                                          _hd1061410679_
                                          _tl1061310681_
                                          _e1061810684_
                                          _hd1061710687_
                                          _tl1061610689_
                                          _e1062110692_
                                          _hd1062010695_
                                          _tl1061910697_
                                          _e1062410700_
                                          _hd1062310703_
                                          _tl1062210705_
                                          _e1062710708_
                                          _hd1062610711_
                                          _tl1062510713_
                                          _e1063010716_
                                          _hd1062910719_
                                          _tl1062810721_
                                          ___splice1709217093_
                                          _target1063110724_
                                          _tl1063310726_)
                                   (letrec ((_loop1063410729_
                                             (lambda (_hd1063210732_
                                                      _arg1063810734_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd1063210732_))
                                                   (let ((_e1063510737_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd1063210732_))))
                                                     (let ((_lp-tl1063710742_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1063510737_)))
                                                           (_lp-hd1063610740_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1063510737_))))
                                                       (let ((__tmp18027
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd1063610740_ _arg1063810734_))))
                 (declare (not safe))
                 (_loop1063410729_ _lp-tl1063710742_ __tmp18027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg1063910745_
                                                          (reverse _arg1063810734_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl1062810721_))
                                                         (let ((___splice1709417095_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl1062810721_ '0))))
                   (let ((_tl1064210750_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1709417095_ '1)))
                         (_target1064010748_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1709417095_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl1064210750_))
                         (letrec ((_loop1064310753_
                                   (lambda (_hd1064110756_ _body1064710758_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd1064110756_))
                                         (let ((_e1064410761_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _hd1064110756_))))
                                           (let ((_lp-tl1064610766_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1064410761_)))
                                                 (_lp-hd1064510764_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1064410761_))))
                                             (let ((__tmp18026
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd1064510764_
                                                            _body1064710758_))))
                                               (declare (not safe))
                                               (_loop1064310753_
                                                _lp-tl1064610766_
                                                __tmp18026))))
                                         (let ((_body1064810769_
                                                (reverse _body1064710758_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null? _tl1062210705_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl1061610689_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl1061310681_))
                                                       (let ((_e1065110772_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl1061310681_))))
                 (let ((_tl1064910777_
                        (let () (declare (not safe)) (##cdr _e1065110772_)))
                       (_hd1065010775_
                        (let () (declare (not safe)) (##car _e1065110772_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl1064910777_))
                       (let ((_L10780_ _hd1065010775_)
                             (_L10781_ _body1064810769_)
                             (_L10782_ _arg1063910745_)
                             (_L10783_ _hd1062010695_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L10783_ _L10780_))
                             (___kont1709017091_
                              _L10780_
                              _L10781_
                              _L10782_
                              _L10783_)
                             (___kont1709617097_)))
                       (___kont1709617097_))))
               (___kont1709617097_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1709617097_))
                                               (___kont1709617097_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop1064310753_ _target1064010748_ '())))
                         (___kont1709617097_))))
                 (___kont1709617097_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop1063410729_
                                        _target1063110724_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx1708817089_))
                                (let ((_e1061210668_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx1708817089_))))
                                  (let ((_tl1061010673_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1061210668_)))
                                        (_hd1061110671_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1061210668_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd1061110671_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd1061110671_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl1061010673_))
                                                (let ((_e1061510676_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl1061010673_))))
                                                  (let ((_tl1061310681_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1061510676_)))
                                                        (_hd1061410679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1061510676_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1061410679_))
                                                        (let ((_e1061810684_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1061410679_))))
                  (let ((_tl1061610689_
                         (let () (declare (not safe)) (##cdr _e1061810684_)))
                        (_hd1061710687_
                         (let () (declare (not safe)) (##car _e1061810684_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1061710687_))
                        (let ((_e1062110692_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1061710687_))))
                          (let ((_tl1061910697_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1062110692_)))
                                (_hd1062010695_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1062110692_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1061910697_))
                                (let ((_e1062410700_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1061910697_))))
                                  (let ((_tl1062210705_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1062410700_)))
                                        (_hd1062310703_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1062410700_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd1062310703_))
                                        (let ((_e1062710708_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd1062310703_))))
                                          (let ((_tl1062510713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1062710708_)))
                                                (_hd1062610711_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1062710708_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd1062610711_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd1062610711_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1062510713_))
                                                        (let ((_e1063010716_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1062510713_))))
                  (let ((_tl1062810721_
                         (let () (declare (not safe)) (##cdr _e1063010716_)))
                        (_hd1062910719_
                         (let () (declare (not safe)) (##car _e1063010716_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd1062910719_))
                        (let ((___splice1709217093_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _hd1062910719_ '0))))
                          (let ((_tl1063310726_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1709217093_ '1)))
                                (_target1063110724_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1709217093_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1063310726_))
                                (___match1715517156_
                                 _e1061210668_
                                 _hd1061110671_
                                 _tl1061010673_
                                 _e1061510676_
                                 _hd1061410679_
                                 _tl1061310681_
                                 _e1061810684_
                                 _hd1061710687_
                                 _tl1061610689_
                                 _e1062110692_
                                 _hd1062010695_
                                 _tl1061910697_
                                 _e1062410700_
                                 _hd1062310703_
                                 _tl1062210705_
                                 _e1062710708_
                                 _hd1062610711_
                                 _tl1062510713_
                                 _e1063010716_
                                 _hd1062910719_
                                 _tl1062810721_
                                 ___splice1709217093_
                                 _target1063110724_
                                 _tl1063310726_)
                                (___kont1709617097_))))
                        (___kont1709617097_))))
                (___kont1709617097_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1709617097_))
                                                (___kont1709617097_))))
                                        (___kont1709617097_))))
                                (___kont1709617097_))))
                        (___kont1709617097_))))
                (___kont1709617097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1709617097_))
                                            (___kont1709617097_))
                                        (___kont1709617097_))))
                                (___kont1709617097_)))))))))
          (let* ((_g1037510389_
                  (lambda (_g1037610386_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1037610386_))))
                 (_g1037410594_
                  (lambda (_g1037610392_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1037610392_))
                        (let ((_e1038110394_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1037610392_))))
                          (let ((_hd1038010397_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1038110394_)))
                                (_tl1037910399_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1038110394_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1037910399_))
                                (let ((_e1038410402_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1037910399_))))
                                  (let ((_hd1038310405_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1038410402_)))
                                        (_tl1038210407_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1038410402_))))
                                    ((lambda (_L10410_ _L10411_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call10373_
                                              _L10411_
                                              _L10410_))
                                           (let* ((___stx1720417205_ _L10411_)
                                                  (_g1042610438_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1720417205_)))))
                                             (let ((___kont1720617207_
                                                    (lambda ()
                                                      (let ((_f10468_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e _L10411_))))
                (if (let ((__tmp18041 (symbol->string _f10468_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp18041))
                    (let _lp10470_ ((_rest10473_ (reverse _L10410_))
                                    (_bind10475_ '())
                                    (_args10476_ '()))
                      (let* ((_rest1047710485_ _rest10473_)
                             (_else1047910493_
                              (lambda ()
                                (let ((__tmp18028
                                       (let ((__tmp18029
                                              (let ((__tmp18030
                                                     (let ((__tmp18031
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f10468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args10476_))))
               (declare (not safe))
               (cons __tmp18031 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp18030))))
                                         (declare (not safe))
                                         (cons _bind10475_ __tmp18029))))
                                  (declare (not safe))
                                  (cons 'let __tmp18028))))
                             (_K1048110579_
                              (lambda (_rest10496_ _e10497_)
                                (let* ((___stx1715817159_ _e10497_)
                                       (_g1050210520_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx1715817159_)))))
                                  (let ((___kont1716017161_
                                         (lambda ()
                                           (let ((__tmp18032
                                                  (let ((__tmp18033
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _e10497_))))
                                                    (declare (not safe))
                                                    (cons __tmp18033
                                                          _args10476_))))
                                             (declare (not safe))
                                             (_lp10470_
                                              _rest10496_
                                              _bind10475_
                                              __tmp18032))))
                                        (___kont1716217163_
                                         (lambda ()
                                           (let ((__tmp18034
                                                  (let ((__tmp18035
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _e10497_))))
                                                    (declare (not safe))
                                                    (cons __tmp18035
                                                          _args10476_))))
                                             (declare (not safe))
                                             (_lp10470_
                                              _rest10496_
                                              _bind10475_
                                              __tmp18034))))
                                        (___kont1716417165_
                                         (lambda ()
                                           (let ((_tmp10527_
                                                  (make-symbol
                                                   (gensym '__tmp))))
                                             (let ((__tmp18037
                                                    (let ((__tmp18038
                                                           (let ((__tmp18039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18040
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e _e10497_))))
                            (declare (not safe))
                            (cons __tmp18040 '()))))
                     (declare (not safe))
                     (cons _tmp10527_ __tmp18039))))
              (declare (not safe))
              (cons __tmp18038 _bind10475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp18036
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp10527_
                                                            _args10476_))))
                                               (declare (not safe))
                                               (_lp10470_
                                                _rest10496_
                                                __tmp18037
                                                __tmp18036))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1715817159_))
                                        (let ((_e1050610558_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1715817159_))))
                                          (let ((_tl1050410563_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1050610558_)))
                                                (_hd1050510561_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1050610558_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd1050510561_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd1050510561_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1050410563_))
                                                        (let ((_e1050910566_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl1050410563_))))
                  (let ((_tl1050710571_
                         (let () (declare (not safe)) (##cdr _e1050910566_)))
                        (_hd1050810569_
                         (let () (declare (not safe)) (##car _e1050910566_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl1050710571_))
                        (___kont1716017161_)
                        (___kont1716417165_))))
                (___kont1716417165_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd1050510561_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl1050410563_))
                                                            (let ((_e1051510543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl1050410563_))))
                      (let ((_tl1051310548_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1051510543_)))
                            (_hd1051410546_
                             (let ()
                               (declare (not safe))
                               (##car _e1051510543_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl1051310548_))
                            (___kont1716217163_)
                            (___kont1716417165_))))
                    (___kont1716417165_))
                (___kont1716417165_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1716417165_))))
                                        (___kont1716417165_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1047710485_))
                            (let ((_hd1048210582_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1047710485_)))
                                  (_tl1048310584_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1047710485_))))
                              (let* ((_e10587_ _hd1048210582_)
                                     (_rest10589_ _tl1048310584_))
                                (declare (not safe))
                                (_K1048110579_ _rest10589_ _e10587_)))
                            (let () (declare (not safe)) (_else1047910493_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call10373_ _L10411_ _L10410_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1720817209_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call10373_
                                                         _L10411_
                                                         _L10410_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx1720417205_))
                                                   (let ((_e1043010450_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx1720417205_))))
                                                     (let ((_tl1042810455_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1043010450_)))
                                                           (_hd1042910453_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1043010450_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd1042910453_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd1042910453_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl1042810455_))
                           (let ((_e1043310458_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl1042810455_))))
                             (let ((_tl1043110463_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1043310458_)))
                                   (_hd1043210461_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1043310458_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1043110463_))
                                   (___kont1720617207_)
                                   (___kont1720817209_))))
                           (___kont1720817209_))
                       (___kont1720817209_))
                   (___kont1720817209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1720817209_))))))
                                     _tl1038210407_
                                     _hd1038310405_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1037510389_ _g1037610392_)))))
                        (let ()
                          (declare (not safe))
                          (_g1037510389_ _g1037610392_))))))
            (declare (not safe))
            (_g1037410594_ _stx10371_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_stx10159_)
        (let* ((___stx1727617277_ _stx10159_)
               (_g1016210182_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1727617277_)))))
          (let ((___kont1727817279_
                 (lambda (_L10226_ _L10227_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _stx10159_))
                       (let ((_f10245_
                              (let ((__tmp18042
                                     (let ((__tmp18044
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp18043
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10227_ '()))))
                                       (declare (not safe))
                                       (cons __tmp18044 __tmp18043))))
                                (declare (not safe))
                                (gxc#compile-e __tmp18042))))
                         (let _lp10247_ ((_rest10250_ (reverse _L10226_))
                                         (_bind10252_ '())
                                         (_args10253_ '()))
                           (let* ((_rest1025410262_ _rest10250_)
                                  (_else1025610270_
                                   (lambda ()
                                     (let ((__tmp18045
                                            (let ((__tmp18046
                                                   (let ((__tmp18047
                                                          (let ((__tmp18048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f10245_ _args10253_))))
                    (declare (not safe))
                    (cons __tmp18048 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp18047))))
                                              (declare (not safe))
                                              (cons _bind10252_ __tmp18046))))
                                       (declare (not safe))
                                       (cons 'let __tmp18045))))
                                  (_K1025810356_
                                   (lambda (_rest10273_ _e10274_)
                                     (let* ((___stx1723017231_ _e10274_)
                                            (_g1027910297_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx1723017231_)))))
                                       (let ((___kont1723217233_
                                              (lambda ()
                                                (let ((__tmp18049
                                                       (let ((__tmp18050
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e _e10274_))))
                 (declare (not safe))
                 (cons __tmp18050 _args10253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp10247_
                                                   _rest10273_
                                                   _bind10252_
                                                   __tmp18049))))
                                             (___kont1723417235_
                                              (lambda ()
                                                (let ((__tmp18051
                                                       (let ((__tmp18052
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e _e10274_))))
                 (declare (not safe))
                 (cons __tmp18052 _args10253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp10247_
                                                   _rest10273_
                                                   _bind10252_
                                                   __tmp18051))))
                                             (___kont1723617237_
                                              (lambda ()
                                                (let ((_tmp10304_
                                                       (make-symbol
                                                        (gensym '__tmp))))
                                                  (let ((__tmp18054
                                                         (let ((__tmp18055
                                                                (let ((__tmp18056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp18057
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _e10274_))))
                                 (declare (not safe))
                                 (cons __tmp18057 '()))))
                          (declare (not safe))
                          (cons _tmp10304_ __tmp18056))))
                   (declare (not safe))
                   (cons __tmp18055 _bind10252_)))
                (__tmp18053
                 (let () (declare (not safe)) (cons _tmp10304_ _args10253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp10247_
                                                     _rest10273_
                                                     __tmp18054
                                                     __tmp18053))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx1723017231_))
                                             (let ((_e1028310335_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx1723017231_))))
                                               (let ((_tl1028110340_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1028310335_)))
                                                     (_hd1028210338_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1028310335_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd1028210338_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd1028210338_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl1028110340_))
                     (let ((_e1028610343_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl1028110340_))))
                       (let ((_tl1028410348_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1028610343_)))
                             (_hd1028510346_
                              (let ()
                                (declare (not safe))
                                (##car _e1028610343_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1028410348_))
                             (___kont1723217233_)
                             (___kont1723617237_))))
                     (___kont1723617237_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd1028210338_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl1028110340_))
                         (let ((_e1029210320_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl1028110340_))))
                           (let ((_tl1029010325_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1029210320_)))
                                 (_hd1029110323_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1029210320_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl1029010325_))
                                 (___kont1723417235_)
                                 (___kont1723617237_))))
                         (___kont1723617237_))
                     (___kont1723617237_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1723617237_))))
                                             (___kont1723617237_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest1025410262_))
                                 (let ((_hd1025910359_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest1025410262_)))
                                       (_tl1026010361_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest1025410262_))))
                                   (let* ((_e10364_ _hd1025910359_)
                                          (_rest10366_ _tl1026010361_))
                                     (declare (not safe))
                                     (_K1025810356_ _rest10366_ _e10364_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else1025610270_)))))))))
                (___kont1728017281_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _stx10159_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx1727617277_))
                (let ((_e1016810194_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx1727617277_))))
                  (let ((_tl1016610199_
                         (let () (declare (not safe)) (##cdr _e1016810194_)))
                        (_hd1016710197_
                         (let () (declare (not safe)) (##car _e1016810194_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl1016610199_))
                        (let ((_e1017110202_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl1016610199_))))
                          (let ((_tl1016910207_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1017110202_)))
                                (_hd1017010205_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1017110202_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd1017010205_))
                                (let ((_e1017410210_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd1017010205_))))
                                  (let ((_tl1017210215_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1017410210_)))
                                        (_hd1017310213_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1017410210_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd1017310213_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd1017310213_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl1017210215_))
                                                (let ((_e1017710218_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl1017210215_))))
                                                  (let ((_tl1017510223_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1017710218_)))
                                                        (_hd1017610221_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1017710218_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl1017510223_))
                                                        (___kont1727817279_
                                                         _tl1016910207_
                                                         _hd1017610221_)
                                                        (___kont1728017281_))))
                                                (___kont1728017281_))
                                            (___kont1728017281_))
                                        (___kont1728017281_))))
                                (___kont1728017281_))))
                        (___kont1728017281_))))
                (___kont1728017281_))))))
    (define gxc#generate-runtime-if%
      (lambda (_stx9972_)
        (letrec ((_simplify9974_
                  (lambda (_code10059_)
                    (let* ((_code1006010078_ _code10059_)
                           (_else1006210086_ (lambda () _code10059_))
                           (_K1006410122_
                            (lambda (_expr10089_ _test10090_)
                              (let* ((_expr1009110099_ _expr10089_)
                                     (_else1009310107_
                                      (lambda ()
                                        (let ((__tmp18058
                                               (let ((__tmp18059
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr10089_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test10090_
                                                       __tmp18059))))
                                          (declare (not safe))
                                          (cons 'and __tmp18058))))
                                     (_K1009510112_
                                      (lambda (_exprs10110_)
                                        (let ((__tmp18060
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test10090_
                                                       _exprs10110_))))
                                          (declare (not safe))
                                          (cons 'and __tmp18060)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr1009110099_))
                                    (let ((_hd1009610115_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr1009110099_)))
                                          (_tl1009710117_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr1009110099_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd1009610115_ 'and))
                                          (let ((_exprs10120_ _tl1009710117_))
                                            (declare (not safe))
                                            (_K1009510112_ _exprs10120_))
                                          (let ()
                                            (declare (not safe))
                                            (_else1009310107_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1009310107_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code1006010078_))
                          (let ((_hd1006510125_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code1006010078_)))
                                (_tl1006610127_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code1006010078_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd1006510125_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1006610127_))
                                    (let ((_hd1006710130_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1006610127_)))
                                          (_tl1006810132_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1006610127_))))
                                      (let ((_test10135_ _hd1006710130_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl1006810132_))
                                            (let ((_hd1006910137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl1006810132_)))
                                                  (_tl1007010139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl1006810132_))))
                                              (let ((_expr10142_
                                                     _hd1006910137_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl1007010139_))
                                                    (let ((_hd1007110144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl1007010139_)))
                                                          (_tl1007210146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl1007010139_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd1007110144_))
                                                          (let ((_hd1007310149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _hd1007110144_)))
                        (_tl1007410151_
                         (let () (declare (not safe)) (##cdr _hd1007110144_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1007310149_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1007410151_))
                            (let ((_hd1007510154_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1007410151_)))
                                  (_tl1007610156_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1007410151_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd1007510154_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1007610156_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1007210146_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1006410122_
                                             _expr10142_
                                             _test10135_))
                                          (let ()
                                            (declare (not safe))
                                            (_else1006210086_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1006210086_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1006210086_))))
                            (let () (declare (not safe)) (_else1006210086_)))
                        (let () (declare (not safe)) (_else1006210086_))))
                  (let () (declare (not safe)) (_else1006210086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else1006210086_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else1006210086_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else1006210086_)))
                                (let ()
                                  (declare (not safe))
                                  (_else1006210086_))))
                          (let () (declare (not safe)) (_else1006210086_)))))))
          (let* ((_g99769997_
                  (lambda (_g99779994_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g99779994_))))
                 (_g997510056_
                  (lambda (_g997710000_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g997710000_))
                        (let ((_e998310002_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g997710000_))))
                          (let ((_hd998210005_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e998310002_)))
                                (_tl998110007_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e998310002_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl998110007_))
                                (let ((_e998610010_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl998110007_))))
                                  (let ((_hd998510013_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e998610010_)))
                                        (_tl998410015_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e998610010_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl998410015_))
                                        (let ((_e998910018_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl998410015_))))
                                          (let ((_hd998810021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e998910018_)))
                                                (_tl998710023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e998910018_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _tl998710023_))
                                                (let ((_e999210026_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl998710023_))))
                                                  (let ((_hd999110029_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e999210026_)))
                                                        (_tl999010031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e999210026_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl999010031_))
                                                        ((lambda (_L10034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10035_
                          _L10036_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp18068
                              (let ((__tmp18069
                                     (let ((__tmp18074
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _L10036_)))
                                           (__tmp18070
                                            (let ((__tmp18073
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L10035_)))
                                                  (__tmp18071
                                                   (let ((__tmp18072
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _L10034_))))
                                                     (declare (not safe))
                                                     (cons __tmp18072 '()))))
                                              (declare (not safe))
                                              (cons __tmp18073 __tmp18071))))
                                       (declare (not safe))
                                       (cons __tmp18074 __tmp18070))))
                                (declare (not safe))
                                (cons 'if __tmp18069))))
                         (declare (not safe))
                         (_simplify9974_ __tmp18068))
                       (let ((__tmp18061
                              (let ((__tmp18066
                                     (let ((__tmp18067
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L10036_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp18067
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp18062
                                     (let ((__tmp18065
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _L10035_)))
                                           (__tmp18063
                                            (let ((__tmp18064
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L10034_))))
                                              (declare (not safe))
                                              (cons __tmp18064 '()))))
                                       (declare (not safe))
                                       (cons __tmp18065 __tmp18063))))
                                (declare (not safe))
                                (cons __tmp18066 __tmp18062))))
                         (declare (not safe))
                         (cons 'if __tmp18061))))
                 _hd999110029_
                 _hd998810021_
                 _hd998510013_)
                (let () (declare (not safe)) (_g99769997_ _g997710000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g99769997_
                                                   _g997710000_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g99769997_ _g997710000_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g99769997_ _g997710000_)))))
                        (let ()
                          (declare (not safe))
                          (_g99769997_ _g997710000_))))))
            (declare (not safe))
            (_g997510056_ _stx9972_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_stx9921_)
        (let* ((_g99239936_
                (lambda (_g99249933_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g99249933_))))
               (_g99229969_
                (lambda (_g99249939_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g99249939_))
                      (let ((_e99289941_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g99249939_))))
                        (let ((_hd99279944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99289941_)))
                              (_tl99269946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99289941_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl99269946_))
                              (let ((_e99319949_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl99269946_))))
                                (let ((_hd99309952_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99319949_)))
                                      (_tl99299954_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99319949_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl99299954_))
                                      ((lambda (_L9957_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L9957_)))
                                       _hd99309952_)
                                      (let ()
                                        (declare (not safe))
                                        (_g99239936_ _g99249939_)))))
                              (let ()
                                (declare (not safe))
                                (_g99239936_ _g99249939_)))))
                      (let ()
                        (declare (not safe))
                        (_g99239936_ _g99249939_))))))
          (declare (not safe))
          (_g99229969_ _stx9921_))))
    (define gxc#generate-runtime-setq%
      (lambda (_stx9854_)
        (let* ((_g98569873_
                (lambda (_g98579870_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g98579870_))))
               (_g98559918_
                (lambda (_g98579876_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g98579876_))
                      (let ((_e98629878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g98579876_))))
                        (let ((_hd98619881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e98629878_)))
                              (_tl98609883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e98629878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl98609883_))
                              (let ((_e98659886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl98609883_))))
                                (let ((_hd98649889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e98659886_)))
                                      (_tl98639891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e98659886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl98639891_))
                                      (let ((_e98689894_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl98639891_))))
                                        (let ((_hd98679897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e98689894_)))
                                              (_tl98669899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e98689894_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl98669899_))
                                              ((lambda (_L9902_ _L9903_)
                                                 (let ((__tmp18075
                                                        (let ((__tmp18078
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L9903_)))
                      (__tmp18076
                       (let ((__tmp18077
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _L9902_))))
                         (declare (not safe))
                         (cons __tmp18077 '()))))
                  (declare (not safe))
                  (cons __tmp18078 __tmp18076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp18075)))
                                               _hd98679897_
                                               _hd98649889_)
                                              (let ()
                                                (declare (not safe))
                                                (_g98569873_ _g98579876_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g98569873_ _g98579876_)))))
                              (let ()
                                (declare (not safe))
                                (_g98569873_ _g98579876_)))))
                      (let ()
                        (declare (not safe))
                        (_g98569873_ _g98579876_))))))
          (declare (not safe))
          (_g98559918_ _stx9854_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_stx9666_)
        (let* ((_g96689685_
                (lambda (_g96699682_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g96699682_))))
               (_g96679851_
                (lambda (_g96699688_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g96699688_))
                      (let ((_e96749690_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g96699688_))))
                        (let ((_hd96739693_
                               (let ()
                                 (declare (not safe))
                                 (##car _e96749690_)))
                              (_tl96729695_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e96749690_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl96729695_))
                              (let ((_e96779698_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl96729695_))))
                                (let ((_hd96769701_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e96779698_)))
                                      (_tl96759703_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e96779698_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl96759703_))
                                      (let ((_e96809706_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl96759703_))))
                                        (let ((_hd96799709_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e96809706_)))
                                              (_tl96789711_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e96809706_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl96789711_))
                                              ((lambda (_L9714_ _L9715_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp18093
                                                            (let ((__tmp18096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _L9714_)))
                          (__tmp18094
                           (let ((__tmp18095
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _L9715_))))
                             (declare (not safe))
                             (cons __tmp18095 '()))))
                      (declare (not safe))
                      (cons __tmp18096 __tmp18094))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp18093))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9730_ ((_rest9733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18092
                                    (let ()
                                      (declare (not safe))
                                      (cons _L9714_ '()))))
                               (declare (not safe))
                               (cons _L9715_ __tmp18092)))
                            (_bind9735_ '())
                            (_args9736_ '()))
               (let* ((_rest97379745_ _rest9733_)
                      (_else97399753_
                       (lambda ()
                         (let ((__tmp18079
                                (let ((__tmp18080
                                       (let ((__tmp18081
                                              (let ((__tmp18082
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args9736_))))
                                                (declare (not safe))
                                                (cons __tmp18082 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp18081))))
                                  (declare (not safe))
                                  (cons _bind9735_ __tmp18080))))
                           (declare (not safe))
                           (cons 'let __tmp18079))))
                      (_K97419839_
                       (lambda (_rest9756_ _e9757_)
                         (let* ((___stx1731417315_ _e9757_)
                                (_g97629780_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx1731417315_)))))
                           (let ((___kont1731617317_
                                  (lambda ()
                                    (let ((__tmp18083
                                           (let ((__tmp18084
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9757_))))
                                             (declare (not safe))
                                             (cons __tmp18084 _args9736_))))
                                      (declare (not safe))
                                      (_lp9730_
                                       _rest9756_
                                       _bind9735_
                                       __tmp18083))))
                                 (___kont1731817319_
                                  (lambda ()
                                    (let ((__tmp18085
                                           (let ((__tmp18086
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9757_))))
                                             (declare (not safe))
                                             (cons __tmp18086 _args9736_))))
                                      (declare (not safe))
                                      (_lp9730_
                                       _rest9756_
                                       _bind9735_
                                       __tmp18085))))
                                 (___kont1732017321_
                                  (lambda ()
                                    (let ((_tmp9787_
                                           (make-symbol (gensym '__tmp))))
                                      (let ((__tmp18088
                                             (let ((__tmp18089
                                                    (let ((__tmp18090
                                                           (let ((__tmp18091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e9757_))))
                     (declare (not safe))
                     (cons __tmp18091 '()))))
              (declare (not safe))
              (cons _tmp9787_ __tmp18090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18089 _bind9735_)))
                                            (__tmp18087
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp9787_ _args9736_))))
                                        (declare (not safe))
                                        (_lp9730_
                                         _rest9756_
                                         __tmp18088
                                         __tmp18087))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx1731417315_))
                                 (let ((_e97669818_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx1731417315_))))
                                   (let ((_tl97649823_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e97669818_)))
                                         (_hd97659821_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e97669818_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd97659821_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd97659821_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair? _tl97649823_))
                                                 (let ((_e97699826_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl97649823_))))
                                                   (let ((_tl97679831_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e97699826_)))
                                                         (_hd97689829_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e97699826_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl97679831_))
                                                         (___kont1731617317_)
                                                         (___kont1732017321_))))
                                                 (___kont1732017321_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd97659821_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl97649823_))
                                                     (let ((_e97759803_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl97649823_))))
                                                       (let ((_tl97739808_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e97759803_)))
                     (_hd97749806_
                      (let () (declare (not safe)) (##car _e97759803_))))
                 (if (let () (declare (not safe)) (gx#stx-null? _tl97739808_))
                     (___kont1731817319_)
                     (___kont1732017321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1732017321_))
                                                 (___kont1732017321_)))
                                         (___kont1732017321_))))
                                 (___kont1732017321_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest97379745_))
                     (let ((_hd97429842_
                            (let ()
                              (declare (not safe))
                              (##car _rest97379745_)))
                           (_tl97439844_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest97379745_))))
                       (let* ((_e9847_ _hd97429842_) (_rest9849_ _tl97439844_))
                         (declare (not safe))
                         (_K97419839_ _rest9849_ _e9847_)))
                     (let () (declare (not safe)) (_else97399753_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd96799709_
                                               _hd96769701_)
                                              (let ()
                                                (declare (not safe))
                                                (_g96689685_ _g96699688_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g96689685_ _g96699688_)))))
                              (let ()
                                (declare (not safe))
                                (_g96689685_ _g96699688_)))))
                      (let ()
                        (declare (not safe))
                        (_g96689685_ _g96699688_))))))
          (declare (not safe))
          (_g96679851_ _stx9666_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_stx9478_)
        (let* ((_g94809497_
                (lambda (_g94819494_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g94819494_))))
               (_g94799663_
                (lambda (_g94819500_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g94819500_))
                      (let ((_e94869502_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g94819500_))))
                        (let ((_hd94859505_
                               (let ()
                                 (declare (not safe))
                                 (##car _e94869502_)))
                              (_tl94849507_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e94869502_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl94849507_))
                              (let ((_e94899510_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl94849507_))))
                                (let ((_hd94889513_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e94899510_)))
                                      (_tl94879515_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e94899510_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl94879515_))
                                      (let ((_e94929518_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl94879515_))))
                                        (let ((_hd94919521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e94929518_)))
                                              (_tl94909523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e94929518_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl94909523_))
                                              ((lambda (_L9526_ _L9527_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp18111
                                                            (let ((__tmp18114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _L9526_)))
                          (__tmp18112
                           (let ((__tmp18113
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _L9527_))))
                             (declare (not safe))
                             (cons __tmp18113 '()))))
                      (declare (not safe))
                      (cons __tmp18114 __tmp18112))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp18111))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9542_ ((_rest9545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18110
                                    (let ()
                                      (declare (not safe))
                                      (cons _L9526_ '()))))
                               (declare (not safe))
                               (cons _L9527_ __tmp18110)))
                            (_bind9547_ '())
                            (_args9548_ '()))
               (let* ((_rest95499557_ _rest9545_)
                      (_else95519565_
                       (lambda ()
                         (let ((__tmp18097
                                (let ((__tmp18098
                                       (let ((__tmp18099
                                              (let ((__tmp18100
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args9548_))))
                                                (declare (not safe))
                                                (cons __tmp18100 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp18099))))
                                  (declare (not safe))
                                  (cons _bind9547_ __tmp18098))))
                           (declare (not safe))
                           (cons 'let __tmp18097))))
                      (_K95539651_
                       (lambda (_rest9568_ _e9569_)
                         (let* ((___stx1736017361_ _e9569_)
                                (_g95749592_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx1736017361_)))))
                           (let ((___kont1736217363_
                                  (lambda ()
                                    (let ((__tmp18101
                                           (let ((__tmp18102
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9569_))))
                                             (declare (not safe))
                                             (cons __tmp18102 _args9548_))))
                                      (declare (not safe))
                                      (_lp9542_
                                       _rest9568_
                                       _bind9547_
                                       __tmp18101))))
                                 (___kont1736417365_
                                  (lambda ()
                                    (let ((__tmp18103
                                           (let ((__tmp18104
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9569_))))
                                             (declare (not safe))
                                             (cons __tmp18104 _args9548_))))
                                      (declare (not safe))
                                      (_lp9542_
                                       _rest9568_
                                       _bind9547_
                                       __tmp18103))))
                                 (___kont1736617367_
                                  (lambda ()
                                    (let ((_tmp9599_
                                           (make-symbol (gensym '__tmp))))
                                      (let ((__tmp18106
                                             (let ((__tmp18107
                                                    (let ((__tmp18108
                                                           (let ((__tmp18109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e9569_))))
                     (declare (not safe))
                     (cons __tmp18109 '()))))
              (declare (not safe))
              (cons _tmp9599_ __tmp18108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18107 _bind9547_)))
                                            (__tmp18105
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp9599_ _args9548_))))
                                        (declare (not safe))
                                        (_lp9542_
                                         _rest9568_
                                         __tmp18106
                                         __tmp18105))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx1736017361_))
                                 (let ((_e95789630_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx1736017361_))))
                                   (let ((_tl95769635_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e95789630_)))
                                         (_hd95779633_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e95789630_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd95779633_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd95779633_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair? _tl95769635_))
                                                 (let ((_e95819638_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl95769635_))))
                                                   (let ((_tl95799643_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e95819638_)))
                                                         (_hd95809641_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e95819638_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl95799643_))
                                                         (___kont1736217363_)
                                                         (___kont1736617367_))))
                                                 (___kont1736617367_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd95779633_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl95769635_))
                                                     (let ((_e95879615_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl95769635_))))
                                                       (let ((_tl95859620_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e95879615_)))
                     (_hd95869618_
                      (let () (declare (not safe)) (##car _e95879615_))))
                 (if (let () (declare (not safe)) (gx#stx-null? _tl95859620_))
                     (___kont1736417365_)
                     (___kont1736617367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1736617367_))
                                                 (___kont1736617367_)))
                                         (___kont1736617367_))))
                                 (___kont1736617367_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest95499557_))
                     (let ((_hd95549654_
                            (let ()
                              (declare (not safe))
                              (##car _rest95499557_)))
                           (_tl95559656_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest95499557_))))
                       (let* ((_e9659_ _hd95549654_) (_rest9661_ _tl95559656_))
                         (declare (not safe))
                         (_K95539651_ _rest9661_ _e9659_)))
                     (let () (declare (not safe)) (_else95519565_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd94919521_
                                               _hd94889513_)
                                              (let ()
                                                (declare (not safe))
                                                (_g94809497_ _g94819500_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g94809497_ _g94819500_)))))
                              (let ()
                                (declare (not safe))
                                (_g94809497_ _g94819500_)))))
                      (let ()
                        (declare (not safe))
                        (_g94809497_ _g94819500_))))))
          (declare (not safe))
          (_g94799663_ _stx9478_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_stx9395_)
        (let* ((_g93979418_
                (lambda (_g93989415_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g93989415_))))
               (_g93969475_
                (lambda (_g93989421_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g93989421_))
                      (let ((_e94049423_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g93989421_))))
                        (let ((_hd94039426_
                               (let ()
                                 (declare (not safe))
                                 (##car _e94049423_)))
                              (_tl94029428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e94049423_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl94029428_))
                              (let ((_e94079431_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl94029428_))))
                                (let ((_hd94069434_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e94079431_)))
                                      (_tl94059436_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e94079431_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl94059436_))
                                      (let ((_e94109439_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl94059436_))))
                                        (let ((_hd94099442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e94109439_)))
                                              (_tl94089444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e94109439_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl94089444_))
                                              (let ((_e94139447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl94089444_))))
                                                (let ((_hd94129450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e94139447_)))
                                                      (_tl94119452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e94139447_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl94119452_))
                                                      ((lambda (_L9455_
                                                                _L9456_
                                                                _L9457_)
                                                         (let ((__tmp18115
                                                                (let ((__tmp18121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L9455_)))
                              (__tmp18116
                               (let ((__tmp18120
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _L9456_)))
                                     (__tmp18117
                                      (let ((__tmp18119
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _L9457_)))
                                            (__tmp18118
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp18119 __tmp18118))))
                                 (declare (not safe))
                                 (cons __tmp18120 __tmp18117))))
                          (declare (not safe))
                          (cons __tmp18121 __tmp18116))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp18115)))
               _hd94129450_
               _hd94099442_
               _hd94069434_)
              (let () (declare (not safe)) (_g93979418_ _g93989421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g93979418_ _g93989421_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g93979418_ _g93989421_)))))
                              (let ()
                                (declare (not safe))
                                (_g93979418_ _g93989421_)))))
                      (let ()
                        (declare (not safe))
                        (_g93979418_ _g93989421_))))))
          (declare (not safe))
          (_g93969475_ _stx9395_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_stx9296_)
        (let* ((_g92989323_
                (lambda (_g92999320_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g92999320_))))
               (_g92979392_
                (lambda (_g92999326_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g92999326_))
                      (let ((_e93069328_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g92999326_))))
                        (let ((_hd93059331_
                               (let ()
                                 (declare (not safe))
                                 (##car _e93069328_)))
                              (_tl93049333_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e93069328_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl93049333_))
                              (let ((_e93099336_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl93049333_))))
                                (let ((_hd93089339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e93099336_)))
                                      (_tl93079341_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e93099336_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl93079341_))
                                      (let ((_e93129344_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl93079341_))))
                                        (let ((_hd93119347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e93129344_)))
                                              (_tl93109349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e93129344_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl93109349_))
                                              (let ((_e93159352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl93109349_))))
                                                (let ((_hd93149355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e93159352_)))
                                                      (_tl93139357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e93159352_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl93139357_))
                                                      (let ((_e93189360_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl93139357_))))
                (let ((_hd93179363_
                       (let () (declare (not safe)) (##car _e93189360_)))
                      (_tl93169365_
                       (let () (declare (not safe)) (##cdr _e93189360_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl93169365_))
                      ((lambda (_L9368_ _L9369_ _L9370_ _L9371_)
                         (let ((__tmp18122
                                (let ((__tmp18130
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _L9369_)))
                                      (__tmp18123
                                       (let ((__tmp18129
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L9368_)))
                                             (__tmp18124
                                              (let ((__tmp18128
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e
                                                        _L9370_)))
                                                    (__tmp18125
                                                     (let ((__tmp18127
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L9371_)))
                                                           (__tmp18126
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp18127 __tmp18126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18128 __tmp18125))))
                                         (declare (not safe))
                                         (cons __tmp18129 __tmp18124))))
                                  (declare (not safe))
                                  (cons __tmp18130 __tmp18123))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp18122)))
                       _hd93179363_
                       _hd93149355_
                       _hd93119347_
                       _hd93089339_)
                      (let ()
                        (declare (not safe))
                        (_g92989323_ _g92999326_)))))
              (let () (declare (not safe)) (_g92989323_ _g92999326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g92989323_ _g92999326_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g92989323_ _g92999326_)))))
                              (let ()
                                (declare (not safe))
                                (_g92989323_ _g92999326_)))))
                      (let ()
                        (declare (not safe))
                        (_g92989323_ _g92999326_))))))
          (declare (not safe))
          (_g92979392_ _stx9296_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_stx9213_)
        (let* ((_g92159236_
                (lambda (_g92169233_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g92169233_))))
               (_g92149293_
                (lambda (_g92169239_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g92169239_))
                      (let ((_e92229241_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g92169239_))))
                        (let ((_hd92219244_
                               (let ()
                                 (declare (not safe))
                                 (##car _e92229241_)))
                              (_tl92209246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e92229241_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl92209246_))
                              (let ((_e92259249_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl92209246_))))
                                (let ((_hd92249252_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e92259249_)))
                                      (_tl92239254_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e92259249_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl92239254_))
                                      (let ((_e92289257_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl92239254_))))
                                        (let ((_hd92279260_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e92289257_)))
                                              (_tl92269262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e92289257_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl92269262_))
                                              (let ((_e92319265_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl92269262_))))
                                                (let ((_hd92309268_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e92319265_)))
                                                      (_tl92299270_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e92319265_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl92299270_))
                                                      ((lambda (_L9273_
                                                                _L9274_
                                                                _L9275_)
                                                         (let ((__tmp18131
                                                                (let ((__tmp18137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L9273_)))
                              (__tmp18132
                               (let ((__tmp18136
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _L9274_)))
                                     (__tmp18133
                                      (let ((__tmp18135
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _L9275_)))
                                            (__tmp18134
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp18135 __tmp18134))))
                                 (declare (not safe))
                                 (cons __tmp18136 __tmp18133))))
                          (declare (not safe))
                          (cons __tmp18137 __tmp18132))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp18131)))
               _hd92309268_
               _hd92279260_
               _hd92249252_)
              (let () (declare (not safe)) (_g92159236_ _g92169239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g92159236_ _g92169239_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g92159236_ _g92169239_)))))
                              (let ()
                                (declare (not safe))
                                (_g92159236_ _g92169239_)))))
                      (let ()
                        (declare (not safe))
                        (_g92159236_ _g92169239_))))))
          (declare (not safe))
          (_g92149293_ _stx9213_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_stx9114_)
        (let* ((_g91169141_
                (lambda (_g91179138_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g91179138_))))
               (_g91159210_
                (lambda (_g91179144_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g91179144_))
                      (let ((_e91249146_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g91179144_))))
                        (let ((_hd91239149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e91249146_)))
                              (_tl91229151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e91249146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl91229151_))
                              (let ((_e91279154_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl91229151_))))
                                (let ((_hd91269157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e91279154_)))
                                      (_tl91259159_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e91279154_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl91259159_))
                                      (let ((_e91309162_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl91259159_))))
                                        (let ((_hd91299165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e91309162_)))
                                              (_tl91289167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e91309162_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl91289167_))
                                              (let ((_e91339170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl91289167_))))
                                                (let ((_hd91329173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e91339170_)))
                                                      (_tl91319175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e91339170_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl91319175_))
                                                      (let ((_e91369178_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl91319175_))))
                (let ((_hd91359181_
                       (let () (declare (not safe)) (##car _e91369178_)))
                      (_tl91349183_
                       (let () (declare (not safe)) (##cdr _e91369178_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl91349183_))
                      ((lambda (_L9186_ _L9187_ _L9188_ _L9189_)
                         (let ((__tmp18138
                                (let ((__tmp18146
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _L9187_)))
                                      (__tmp18139
                                       (let ((__tmp18145
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L9186_)))
                                             (__tmp18140
                                              (let ((__tmp18144
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e
                                                        _L9188_)))
                                                    (__tmp18141
                                                     (let ((__tmp18143
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L9189_)))
                                                           (__tmp18142
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp18143 __tmp18142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18144 __tmp18141))))
                                         (declare (not safe))
                                         (cons __tmp18145 __tmp18140))))
                                  (declare (not safe))
                                  (cons __tmp18146 __tmp18139))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp18138)))
                       _hd91359181_
                       _hd91329173_
                       _hd91299165_
                       _hd91269157_)
                      (let ()
                        (declare (not safe))
                        (_g91169141_ _g91179144_)))))
              (let () (declare (not safe)) (_g91169141_ _g91179144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g91169141_ _g91179144_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g91169141_ _g91179144_)))))
                              (let ()
                                (declare (not safe))
                                (_g91169141_ _g91179144_)))))
                      (let ()
                        (declare (not safe))
                        (_g91169141_ _g91179144_))))))
          (declare (not safe))
          (_g91159210_ _stx9114_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_stx8910_)
        (let* ((_g89128933_
                (lambda (_g89138930_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g89138930_))))
               (_g89119111_
                (lambda (_g89138936_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g89138936_))
                      (let ((_e89198938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g89138936_))))
                        (let ((_hd89188941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e89198938_)))
                              (_tl89178943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e89198938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl89178943_))
                              (let ((_e89228946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl89178943_))))
                                (let ((_hd89218949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e89228946_)))
                                      (_tl89208951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e89228946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl89208951_))
                                      (let ((_e89258954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl89208951_))))
                                        (let ((_hd89248957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e89258954_)))
                                              (_tl89238959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e89258954_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl89238959_))
                                              (let ((_e89288962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl89238959_))))
                                                (let ((_hd89278965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e89288962_)))
                                                      (_tl89268967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e89288962_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl89268967_))
                                                      ((lambda (_L8970_
                                                                _L8971_
                                                                _L8972_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp18164
                            (let ((__tmp18170
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e _L8970_)))
                                  (__tmp18165
                                   (let ((__tmp18169
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e _L8971_)))
                                         (__tmp18166
                                          (let ((__tmp18168
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L8972_)))
                                                (__tmp18167
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp18168 __tmp18167))))
                                     (declare (not safe))
                                     (cons __tmp18169 __tmp18166))))
                              (declare (not safe))
                              (cons __tmp18170 __tmp18165))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp18164))
                     (let _lp8990_ ((_rest8993_
                                     (let ((__tmp18162
                                            (let ((__tmp18163
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L8970_ '()))))
                                              (declare (not safe))
                                              (cons _L8971_ __tmp18163))))
                                       (declare (not safe))
                                       (cons _L8972_ __tmp18162)))
                                    (_bind8995_ '())
                                    (_args8996_ '()))
                       (let* ((_rest89979005_ _rest8993_)
                              (_else89999013_
                               (lambda ()
                                 (let ((__tmp18147
                                        (let ((__tmp18148
                                               (let ((__tmp18149
                                                      (let ((__tmp18150
                                                             (let ((__tmp18151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18152
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp18152 _args8996_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp18151))))
                (declare (not safe))
                (cons __tmp18150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp18149))))
                                          (declare (not safe))
                                          (cons _bind8995_ __tmp18148))))
                                   (declare (not safe))
                                   (cons 'let __tmp18147))))
                              (_K90019099_
                               (lambda (_rest9016_ _e9017_)
                                 (let* ((___stx1740617407_ _e9017_)
                                        (_g90229040_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1740617407_)))))
                                   (let ((___kont1740817409_
                                          (lambda ()
                                            (let ((__tmp18153
                                                   (let ((__tmp18154
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _e9017_))))
                                                     (declare (not safe))
                                                     (cons __tmp18154
                                                           _args8996_))))
                                              (declare (not safe))
                                              (_lp8990_
                                               _rest9016_
                                               _bind8995_
                                               __tmp18153))))
                                         (___kont1741017411_
                                          (lambda ()
                                            (let ((__tmp18155
                                                   (let ((__tmp18156
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _e9017_))))
                                                     (declare (not safe))
                                                     (cons __tmp18156
                                                           _args8996_))))
                                              (declare (not safe))
                                              (_lp8990_
                                               _rest9016_
                                               _bind8995_
                                               __tmp18155))))
                                         (___kont1741217413_
                                          (lambda ()
                                            (let ((_tmp9047_
                                                   (make-symbol
                                                    (gensym '__tmp))))
                                              (let ((__tmp18158
                                                     (let ((__tmp18159
                                                            (let ((__tmp18160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp18161
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _e9017_))))
                             (declare (not safe))
                             (cons __tmp18161 '()))))
                      (declare (not safe))
                      (cons _tmp9047_ __tmp18160))))
               (declare (not safe))
               (cons __tmp18159 _bind8995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp18157
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp9047_
                                                             _args8996_))))
                                                (declare (not safe))
                                                (_lp8990_
                                                 _rest9016_
                                                 __tmp18158
                                                 __tmp18157))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1740617407_))
                                         (let ((_e90269078_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1740617407_))))
                                           (let ((_tl90249083_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e90269078_)))
                                                 (_hd90259081_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e90269078_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd90259081_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd90259081_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl90249083_))
                                                         (let ((_e90299086_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl90249083_))))
                   (let ((_tl90279091_
                          (let () (declare (not safe)) (##cdr _e90299086_)))
                         (_hd90289089_
                          (let () (declare (not safe)) (##car _e90299086_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl90279091_))
                         (___kont1740817409_)
                         (___kont1741217413_))))
                 (___kont1741217413_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd90259081_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl90249083_))
                     (let ((_e90359063_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl90249083_))))
                       (let ((_tl90339068_
                              (let ()
                                (declare (not safe))
                                (##cdr _e90359063_)))
                             (_hd90349066_
                              (let ()
                                (declare (not safe))
                                (##car _e90359063_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl90339068_))
                             (___kont1741017411_)
                             (___kont1741217413_))))
                     (___kont1741217413_))
                 (___kont1741217413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1741217413_))))
                                         (___kont1741217413_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest89979005_))
                             (let ((_hd90029102_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest89979005_)))
                                   (_tl90039104_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest89979005_))))
                               (let* ((_e9107_ _hd90029102_)
                                      (_rest9109_ _tl90039104_))
                                 (declare (not safe))
                                 (_K90019099_ _rest9109_ _e9107_)))
                             (let ()
                               (declare (not safe))
                               (_else89999013_)))))))
               _hd89278965_
               _hd89248957_
               _hd89218949_)
              (let () (declare (not safe)) (_g89128933_ _g89138936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g89128933_ _g89138936_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g89128933_ _g89138936_)))))
                              (let ()
                                (declare (not safe))
                                (_g89128933_ _g89138936_)))))
                      (let ()
                        (declare (not safe))
                        (_g89128933_ _g89138936_))))))
          (declare (not safe))
          (_g89119111_ _stx8910_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_stx8690_)
        (let* ((_g86928717_
                (lambda (_g86938714_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86938714_))))
               (_g86918907_
                (lambda (_g86938720_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g86938720_))
                      (let ((_e87008722_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g86938720_))))
                        (let ((_hd86998725_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87008722_)))
                              (_tl86988727_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87008722_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl86988727_))
                              (let ((_e87038730_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl86988727_))))
                                (let ((_hd87028733_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87038730_)))
                                      (_tl87018735_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87038730_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl87018735_))
                                      (let ((_e87068738_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl87018735_))))
                                        (let ((_hd87058741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e87068738_)))
                                              (_tl87048743_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e87068738_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl87048743_))
                                              (let ((_e87098746_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl87048743_))))
                                                (let ((_hd87088749_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e87098746_)))
                                                      (_tl87078751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e87098746_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl87078751_))
                                                      (let ((_e87128754_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl87078751_))))
                (let ((_hd87118757_
                       (let () (declare (not safe)) (##car _e87128754_)))
                      (_tl87108759_
                       (let () (declare (not safe)) (##cdr _e87128754_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl87108759_))
                      ((lambda (_L8762_ _L8763_ _L8764_ _L8765_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp18189
                                    (let ((__tmp18197
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e _L8763_)))
                                          (__tmp18190
                                           (let ((__tmp18196
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _L8762_)))
                                                 (__tmp18191
                                                  (let ((__tmp18195
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _L8764_)))
                                                        (__tmp18192
                                                         (let ((__tmp18194
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e _L8765_)))
                       (__tmp18193
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp18194 __tmp18193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18195
                                                          __tmp18192))))
                                             (declare (not safe))
                                             (cons __tmp18196 __tmp18191))))
                                      (declare (not safe))
                                      (cons __tmp18197 __tmp18190))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp18189))
                             (let _lp8786_ ((_rest8789_
                                             (let ((__tmp18186
                                                    (let ((__tmp18187
                                                           (let ((__tmp18188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L8763_ '()))))
                     (declare (not safe))
                     (cons _L8762_ __tmp18188))))
              (declare (not safe))
              (cons _L8764_ __tmp18187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L8765_ __tmp18186)))
                                            (_bind8791_ '())
                                            (_args8792_ '()))
                               (let* ((_rest87938801_ _rest8789_)
                                      (_else87958809_
                                       (lambda ()
                                         (let ((__tmp18171
                                                (let ((__tmp18172
                                                       (let ((__tmp18173
                                                              (let ((__tmp18174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18175
                                    (let ((__tmp18176
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp18176 _args8792_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp18175))))
                        (declare (not safe))
                        (cons __tmp18174 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp18173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind8791_
                                                        __tmp18172))))
                                           (declare (not safe))
                                           (cons 'let __tmp18171))))
                                      (_K87978895_
                                       (lambda (_rest8812_ _e8813_)
                                         (let* ((___stx1745217453_ _e8813_)
                                                (_g88188836_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx1745217453_)))))
                                           (let ((___kont1745417455_
                                                  (lambda ()
                                                    (let ((__tmp18177
                                                           (let ((__tmp18178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8813_))))
                     (declare (not safe))
                     (cons __tmp18178 _args8792_))))
              (declare (not safe))
              (_lp8786_ _rest8812_ _bind8791_ __tmp18177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1745617457_
                                                  (lambda ()
                                                    (let ((__tmp18179
                                                           (let ((__tmp18180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8813_))))
                     (declare (not safe))
                     (cons __tmp18180 _args8792_))))
              (declare (not safe))
              (_lp8786_ _rest8812_ _bind8791_ __tmp18179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1745817459_
                                                  (lambda ()
                                                    (let ((_tmp8843_
                                                           (make-symbol
                                                            (gensym '__tmp))))
                                                      (let ((__tmp18182
                                                             (let ((__tmp18183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18184
                                   (let ((__tmp18185
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e _e8813_))))
                                     (declare (not safe))
                                     (cons __tmp18185 '()))))
                              (declare (not safe))
                              (cons _tmp8843_ __tmp18184))))
                       (declare (not safe))
                       (cons __tmp18183 _bind8791_)))
                    (__tmp18181
                     (let ()
                       (declare (not safe))
                       (cons _tmp8843_ _args8792_))))
                (declare (not safe))
                (_lp8786_ _rest8812_ __tmp18182 __tmp18181))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx1745217453_))
                                                 (let ((_e88228874_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx1745217453_))))
                                                   (let ((_tl88208879_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e88228874_)))
                                                         (_hd88218877_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e88228874_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd88218877_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd88218877_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl88208879_))
                         (let ((_e88258882_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl88208879_))))
                           (let ((_tl88238887_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e88258882_)))
                                 (_hd88248885_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e88258882_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl88238887_))
                                 (___kont1745417455_)
                                 (___kont1745817459_))))
                         (___kont1745817459_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd88218877_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl88208879_))
                             (let ((_e88318859_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl88208879_))))
                               (let ((_tl88298864_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e88318859_)))
                                     (_hd88308862_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e88318859_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl88298864_))
                                     (___kont1745617457_)
                                     (___kont1745817459_))))
                             (___kont1745817459_))
                         (___kont1745817459_)))
                 (___kont1745817459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1745817459_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest87938801_))
                                     (let ((_hd87988898_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest87938801_)))
                                           (_tl87998900_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest87938801_))))
                                       (let* ((_e8903_ _hd87988898_)
                                              (_rest8905_ _tl87998900_))
                                         (declare (not safe))
                                         (_K87978895_ _rest8905_ _e8903_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else87958809_)))))))
                       _hd87118757_
                       _hd87088749_
                       _hd87058741_
                       _hd87028733_)
                      (let ()
                        (declare (not safe))
                        (_g86928717_ _g86938720_)))))
              (let () (declare (not safe)) (_g86928717_ _g86938720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g86928717_ _g86938720_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g86928717_ _g86938720_)))))
                              (let ()
                                (declare (not safe))
                                (_g86928717_ _g86938720_)))))
                      (let ()
                        (declare (not safe))
                        (_g86928717_ _g86938720_))))))
          (declare (not safe))
          (_g86918907_ _stx8690_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_stx8544_)
        (letrec ((_import-set-template8546_
                  (lambda (_in8642_ _phi8643_)
                    (let ((_iphi8645_
                           (fx+ _phi8643_
                                (##direct-structure-ref
                                 _in8642_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports8646_
                           (##structure-ref
                            (##direct-structure-ref
                             _in8642_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp8648_ ((_rest8650_ _imports8646_) (_r8651_ '()))
                        (let* ((_rest86528660_ _rest8650_)
                               (_else86548668_ (lambda () _r8651_))
                               (_K86568678_
                                (lambda (_rest8671_ _in8672_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in8672_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi8645_))
                                          (let ((__tmp18204
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in8672_ _r8651_))))
                                            (declare (not safe))
                                            (_lp8648_ _rest8671_ __tmp18204))
                                          (let ()
                                            (declare (not safe))
                                            (_lp8648_ _rest8671_ _r8651_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in8672_
                                             'gx#module-import::t))
                                          (let ((_iphi8674_
                                                 (fx+ _phi8643_
                                                      (##direct-structure-ref
                                                       _in8672_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi8674_))
                                                (let ((__tmp18202
                                                       (let ((__tmp18203
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in8672_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp18203
                                                               _r8651_))))
                                                  (declare (not safe))
                                                  (_lp8648_
                                                   _rest8671_
                                                   __tmp18202))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp8648_
                                                   _rest8671_
                                                   _r8651_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in8672_
                                                 'gx#import-set::t))
                                              (let ((_xphi8676_
                                                     (fx+ _iphi8645_
                                                          (##direct-structure-ref
                                                           _in8672_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi8676_))
                                                    (let ((__tmp18200
                                                           (let ((__tmp18201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in8672_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp18201 _r8651_))))
              (declare (not safe))
              (_lp8648_ _rest8671_ __tmp18200))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi8676_)
                                                        (let ((__tmp18198
                                                               (let ((__tmp18199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template8546_
                                 _in8672_
                                 _iphi8645_))))
                         (declare (not safe))
                         (foldl1 cons _r8651_ __tmp18199))))
                  (declare (not safe))
                  (_lp8648_ _rest8671_ __tmp18198))
                (let () (declare (not safe)) (_lp8648_ _rest8671_ _r8651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp8648_
                                                 _rest8671_
                                                 _r8651_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest86528660_))
                              (let ((_hd86578681_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest86528660_)))
                                    (_tl86588683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest86528660_))))
                                (let* ((_in8686_ _hd86578681_)
                                       (_rest8688_ _tl86588683_))
                                  (declare (not safe))
                                  (_K86568678_ _rest8688_ _in8686_)))
                              (let ()
                                (declare (not safe))
                                (_else86548668_)))))))))
          (let* ((_g85488558_
                  (lambda (_g85498555_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g85498555_))))
                 (_g85478639_
                  (lambda (_g85498561_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g85498561_))
                        (let ((_e85538563_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g85498561_))))
                          (let ((_hd85528566_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e85538563_)))
                                (_tl85518568_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e85538563_))))
                            ((lambda (_L8571_)
                               (let ((_ht8582_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let _lp8584_ ((_rest8586_ _L8571_)
                                                (_loads8587_ '()))
                                   (letrec ((_K8589_ (lambda (_ctx8632_
                                                              _rest8633_)
                                                       (let ((_id8635_
                                                              (##structure-ref
                                                               _ctx8632_
                                                               '1
                                                               gx#expander-context::t
                                                               '#f)))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (table-ref _ht8582_ _id8635_ '#f))
                     (let ()
                       (declare (not safe))
                       (_lp8584_ _rest8633_ _loads8587_))
                     (let ((_rt8637_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id8635_))
                             '"__rt")))
                       (let ()
                         (declare (not safe))
                         (table-set! _ht8582_ _id8635_ _rt8637_))
                       (let ((__tmp18205
                              (let ()
                                (declare (not safe))
                                (cons _rt8637_ _loads8587_))))
                         (declare (not safe))
                         (_lp8584_ _rest8633_ __tmp18205))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest85908598_ _rest8586_)
                                            (_else85928610_
                                             (lambda ()
                                               (let ((__tmp18206
                                                      (map (lambda (_g86058607_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g86058607_))
                   (reverse _loads8587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp18206))))
                                            (_K85948620_
                                             (lambda (_rest8613_ _in8614_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in8614_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K8589_ _in8614_
                                                              _rest8613_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in8614_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp18210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in8614_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp18210))
                   (let ((__tmp18209
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in8614_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K8589_ __tmp18209 _rest8613_))
                   (let ()
                     (declare (not safe))
                     (_lp8584_ _rest8613_ _loads8587_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in8614_
                      'gx#import-set::t))
                   (let ((_phi8616_
                          (##direct-structure-ref
                           _in8614_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi8616_))
                         (let ((__tmp18208
                                (##direct-structure-ref
                                 _in8614_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K8589_ __tmp18208 _rest8613_))
                         (if (fxpositive? _phi8616_)
                             (let* ((_deps8618_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template8546_
                                        _in8614_
                                        '0)))
                                    (__tmp18207
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons _rest8613_ _deps8618_))))
                               (declare (not safe))
                               (_lp8584_ __tmp18207 _loads8587_))
                             (let ()
                               (declare (not safe))
                               (_lp8584_ _rest8613_ _loads8587_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx8544_
                      _in8614_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest85908598_))
                                           (let ((_hd85958623_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest85908598_)))
                                                 (_tl85968625_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest85908598_))))
                                             (let* ((_in8628_ _hd85958623_)
                                                    (_rest8630_ _tl85968625_))
                                               (declare (not safe))
                                               (_K85948620_
                                                _rest8630_
                                                _in8628_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else85928610_))))))))
                             _tl85518568_)))
                        (let ()
                          (declare (not safe))
                          (_g85488558_ _g85498561_))))))
            (declare (not safe))
            (_g85478639_ _stx8544_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_stx8360_)
        (letrec ((_add-lift!8362_
                  (lambda (_expr8542_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp18211 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr8542_ __tmp18211)))))
                 (_generate-syntax-quote8363_
                  (lambda (_id8539_ _marks8540_)
                    (let ((__tmp18212
                           (let ((__tmp18213
                                  (let ((__tmp18217
                                         (let ((__tmp18218
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id8539_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp18218)))
                                        (__tmp18214
                                         (let ((__tmp18215
                                                (let ((__tmp18216
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks8540_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp18216))))
                                           (declare (not safe))
                                           (cons '#f __tmp18215))))
                                    (declare (not safe))
                                    (cons __tmp18217 __tmp18214))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp18213))))
                      (declare (not safe))
                      (cons '##structure __tmp18212))))
                 (_generate-simple8364_
                  (lambda (_stxq8534_)
                    (let ((_gid8536_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid8537_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq8534_))))
                      (let ((__tmp18219
                             (let ((__tmp18220
                                    (let ((__tmp18221
                                           (let ((__tmp18222
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote8363_
                                                     _qid8537_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp18222 '()))))
                                      (declare (not safe))
                                      (cons _gid8536_ __tmp18221))))
                               (declare (not safe))
                               (cons 'define __tmp18220))))
                        (declare (not safe))
                        (_add-lift!8362_ __tmp18219))
                      (let ((__tmp18223 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (table-set! __tmp18223 _stxq8534_ _gid8536_))
                      _gid8536_)))
                 (_generate-serialized8365_
                  (lambda (_stxq8524_ _marks8525_)
                    (let* ((_mark-refs8527_
                            (map _generate-mark8366_ _marks8525_))
                           (_gid8529_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid8531_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq8524_))))
                      (let ((__tmp18224
                             (let ((__tmp18225
                                    (let ((__tmp18226
                                           (let ((__tmp18227
                                                  (let ((__tmp18228
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs8527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote8363_
                                                     _qid8531_
                                                     __tmp18228))))
                                             (declare (not safe))
                                             (cons __tmp18227 '()))))
                                      (declare (not safe))
                                      (cons _gid8529_ __tmp18226))))
                               (declare (not safe))
                               (cons 'define __tmp18225))))
                        (declare (not safe))
                        (_add-lift!8362_ __tmp18224))
                      (let ((__tmp18229 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (table-set! __tmp18229 _stxq8524_ _gid8529_))
                      _gid8529_)))
                 (_generate-mark8366_
                  (lambda (_mark8510_)
                    (let ((_$e8512_
                           (let ((__tmp18230 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (table-ref __tmp18230 _mark8510_ '#f))))
                      (if _$e8512_
                          (values _$e8512_)
                          (let* ((_gid8515_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr8517_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark8367_ _mark8510_)))
                                 (_ctx8519_
                                  (let ((__tmp18231
                                         (##structure-ref
                                          _mark8510_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp18231)))
                                 (_ctx-ref8521_
                                  (if (let ((__tmp18236
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx8519_ __tmp18236))
                                      '(gx#current-expander-context)
                                      (let ((__tmp18232
                                             (let ((__tmp18233
                                                    (let ((__tmp18234
                                                           (let ((__tmp18235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref8368_ _ctx8519_))))
                     (declare (not safe))
                     (cons __tmp18235 '()))))
              (declare (not safe))
              (cons 'quote __tmp18234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18233 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module __tmp18232)))))
                            (let ((__tmp18237 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (table-set! __tmp18237 _mark8510_ _gid8515_))
                            (let ((__tmp18238
                                   (let ((__tmp18239
                                          (let ((__tmp18240
                                                 (let ((__tmp18241
                                                        (let ((__tmp18242
                                                               (let ((__tmp18244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp18245
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr8517_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp18245)))
                             (__tmp18243
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref8521_ '()))))
                         (declare (not safe))
                         (cons __tmp18244 __tmp18243))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp18242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18241 '()))))
                                            (declare (not safe))
                                            (cons _gid8515_ __tmp18240))))
                                     (declare (not safe))
                                     (cons 'define __tmp18239))))
                              (declare (not safe))
                              (_add-lift!8362_ __tmp18238))
                            _gid8515_)))))
                 (_serialize-mark8367_
                  (lambda (_mark8457_)
                    (letrec ((_quote-e8459_
                              (lambda (_sym8508_)
                                (if (interned-symbol? _sym8508_)
                                    _sym8508_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym8508_))))))
                      (let* ((_mark84608469_ _mark8457_)
                             (_E84628473_
                              (lambda ()
                                (error '"No clause matching" _mark84608469_)))
                             (_K84638485_
                              (lambda (_trace8476_
                                       _phi8477_
                                       _ctx8478_
                                       _subst8479_)
                                (let* ((_subs8481_
                                        (if _subst8479_
                                            (let ()
                                              (declare (not safe))
                                              (table->list _subst8479_))
                                            '()))
                                       (__tmp18246
                                        (map (lambda (_pair8483_)
                                               (let ((__tmp18249
                                                      (let ((__tmp18250
                                                             (car _pair8483_)))
                                                        (declare (not safe))
                                                        (_quote-e8459_
                                                         __tmp18250)))
                                                     (__tmp18247
                                                      (let ((__tmp18248
                                                             (cdr _pair8483_)))
                                                        (declare (not safe))
                                                        (_quote-e8459_
                                                         __tmp18248))))
                                                 (declare (not safe))
                                                 (cons __tmp18249 __tmp18247)))
                                             _subs8481_)))
                                  (declare (not safe))
                                  (cons _phi8477_ __tmp18246)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark84608469_
                               'gx#expander-mark::t))
                            (let* ((_e84648488_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark84608469_ '1)))
                                   (_subst8491_ _e84648488_)
                                   (_e84658493_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark84608469_ '2)))
                                   (_ctx8496_ _e84658493_)
                                   (_e84668498_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark84608469_ '3)))
                                   (_phi8501_ _e84668498_)
                                   (_e84678503_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark84608469_ '4)))
                                   (_trace8506_ _e84678503_))
                              (declare (not safe))
                              (_K84638485_
                               _trace8506_
                               _phi8501_
                               _ctx8496_
                               _subst8491_))
                            (let () (declare (not safe)) (_E84628473_)))))))
                 (_context-ref8368_
                  (lambda (_ctx8444_)
                    (if (let ((__tmp18257
                               (##structure-ref
                                _ctx8444_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp18257
                           'gx#module-context::t))
                        (let ((_ctx-ref8446_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested8370_ _ctx8444_)))
                              (_ctx-origin8447_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin8369_ _ctx8444_)))
                              (_origin8448_
                               (let ((__tmp18251
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin8369_ __tmp18251))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin8448_ _ctx-origin8447_))
                              (let ((_ref8450_
                                     (let ((__tmp18252
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested8370_ __tmp18252))))
                                (let _lp8452_ ((_ref8454_ (cdr _ref8450_))
                                               (_ctx-ref8455_
                                                (cdr _ctx-ref8446_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref8454_))
                                           (let ((__tmp18256 (car _ref8454_))
                                                 (__tmp18255
                                                  (car _ctx-ref8455_)))
                                             (declare (not safe))
                                             (eq? __tmp18256 __tmp18255)))
                                      (let ((__tmp18254 (cdr _ref8454_))
                                            (__tmp18253 (cdr _ctx-ref8455_)))
                                        (declare (not safe))
                                        (_lp8452_ __tmp18254 __tmp18253))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref8455_)))))
                              _ctx-ref8446_))
                        (make-symbol
                         '":"
                         (##structure-ref
                          _ctx8444_
                          '1
                          gx#expander-context::t
                          '#f)))))
                 (_context-ref-origin8369_
                  (lambda (_ctx8436_)
                    (let _lp8438_ ((_ctx8440_ _ctx8436_))
                      (let ((_super8442_
                             (##structure-ref
                              _ctx8440_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super8442_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp8438_ _super8442_))
                            _ctx8440_)))))
                 (_context-ref-nested8370_
                  (lambda (_ctx8427_)
                    (let _lp8429_ ((_ctx8431_ _ctx8427_) (_r8432_ '()))
                      (let ((_super8434_
                             (##structure-ref
                              _ctx8431_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super8434_
                               'gx#module-context::t))
                            (let ((__tmp18259
                                   (let ((__tmp18260
                                          (car (##structure-ref
                                                _ctx8431_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp18260 _r8432_))))
                              (declare (not safe))
                              (_lp8429_ _super8434_ __tmp18259))
                            (let ((__tmp18258
                                   (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx8431_
                                     '1
                                     gx#expander-context::t
                                     '#f))))
                              (declare (not safe))
                              (cons __tmp18258 _r8432_))))))))
          (let* ((_g83728385_
                  (lambda (_g83738382_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g83738382_))))
                 (_g83718424_
                  (lambda (_g83738388_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g83738388_))
                        (let ((_e83778390_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g83738388_))))
                          (let ((_hd83768393_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e83778390_)))
                                (_tl83758395_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e83778390_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl83758395_))
                                (let ((_e83808398_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl83758395_))))
                                  (let ((_hd83798401_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e83808398_)))
                                        (_tl83788403_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e83808398_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl83788403_))
                                        ((lambda (_L8406_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L8406_))
                                               (let ((_$e8419_
                                                      (let ((__tmp18261
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (table-ref
                                                         __tmp18261
                                                         _L8406_
                                                         '#f))))
                                                 (if _$e8419_
                                                     (values _$e8419_)
                                                     (let ((_marks8422_
                                                            (##direct-structure-ref
                                                             _L8406_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks8422_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple8364_
                                                              _L8406_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized8365_
                                                              _L8406_
                                                              _marks8422_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L8406_))))
                                         _hd83798401_)
                                        (let ()
                                          (declare (not safe))
                                          (_g83728385_ _g83738388_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g83728385_ _g83738388_)))))
                        (let ()
                          (declare (not safe))
                          (_g83728385_ _g83738388_))))))
            (declare (not safe))
            (_g83718424_ _stx8360_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_stx8293_)
        (let* ((_g82958312_
                (lambda (_g82968309_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82968309_))))
               (_g82948357_
                (lambda (_g82968315_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g82968315_))
                      (let ((_e83018317_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g82968315_))))
                        (let ((_hd83008320_
                               (let ()
                                 (declare (not safe))
                                 (##car _e83018317_)))
                              (_tl82998322_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e83018317_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl82998322_))
                              (let ((_e83048325_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl82998322_))))
                                (let ((_hd83038328_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e83048325_)))
                                      (_tl83028330_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e83048325_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl83028330_))
                                      (let ((_e83078333_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl83028330_))))
                                        (let ((_hd83068336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e83078333_)))
                                              (_tl83058338_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e83078333_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl83058338_))
                                              ((lambda (_L8341_ _L8342_)
                                                 (let ((__tmp18262
                                                        (let ((__tmp18265
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L8342_)))
                      (__tmp18263
                       (let ((__tmp18264
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _L8341_))))
                         (declare (not safe))
                         (cons __tmp18264 '()))))
                  (declare (not safe))
                  (cons __tmp18265 __tmp18263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp18262)))
                                               _hd83068336_
                                               _hd83038328_)
                                              (let ()
                                                (declare (not safe))
                                                (_g82958312_ _g82968315_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g82958312_ _g82968315_)))))
                              (let ()
                                (declare (not safe))
                                (_g82958312_ _g82968315_)))))
                      (let ()
                        (declare (not safe))
                        (_g82958312_ _g82968315_))))))
          (declare (not safe))
          (_g82948357_ _stx8293_))))
    (define gxc#generate-meta-begin%
      (lambda (_stx8242_ _state8243_)
        (let* ((_g82458255_
                (lambda (_g82468252_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82468252_))))
               (_g82448290_
                (lambda (_g82468258_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g82468258_))
                      (let ((_e82508260_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g82468258_))))
                        (let ((_hd82498263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e82508260_)))
                              (_tl82488265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e82508260_))))
                          ((lambda (_L8268_)
                             (let* ((_c-body8282_
                                     (map (lambda (_g82778279_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e
                                               _g82778279_
                                               _state8243_)))
                                          _L8268_))
                                    (_c-body8287_
                                     (filter (lambda (_$obj8284_)
                                               (let ((__tmp18266
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj8284_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp18266)))
                                             _c-body8282_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body8287_))))
                           _tl82488265_)))
                      (let ()
                        (declare (not safe))
                        (_g82458255_ _g82468258_))))))
          (declare (not safe))
          (_g82448290_ _stx8242_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_stx8150_ _state8151_)
        (let* ((_g81538163_
                (lambda (_g81548160_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g81548160_))))
               (_g81528239_
                (lambda (_g81548166_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g81548166_))
                      (let ((_e81588168_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g81548166_))))
                        (let ((_hd81578171_
                               (let ()
                                 (declare (not safe))
                                 (##car _e81588168_)))
                              (_tl81568173_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e81588168_))))
                          ((lambda (_L8176_)
                             (let* ((_phi8186_
                                     (let ((__tmp18267
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp18267 '1)))
                                    (_block8188_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        _state8151_
                                        _phi8186_)))
                                    (_compiled8191_
                                     (let ((__tmp18268
                                            (lambda ()
                                              (let ((__tmp18269
                                                     (let ((__tmp18270
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp18270
                                                             _L8176_))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp18269
                                                 _state8151_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp18268
                                        gx#current-expander-phi
                                        _phi8186_))))
                               (let* ((_g81948204_
                                       (lambda (_g81958201_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g81958201_))))
                                      (_g81938236_
                                       (lambda (_g81958207_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g81958207_))
                                             (let ((_e81998209_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e _g81958207_))))
                                               (let ((_hd81988212_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e81998209_)))
                                                     (_tl81978214_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e81998209_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd81988212_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd81988212_))
                                                         ((lambda (_L8217_)
                                                            (let ((_c-body8234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj8231_)
                                     (let ((__tmp18271
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj8231_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp18271)))
                                   _L8217_)))
                      (if _block8188_
                          (let ((__tmp18272
                                 (let ((__tmp18273
                                        (let ((__tmp18274
                                               (let ((__tmp18278
                                                      (let ((__tmp18279
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp18279)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18275
                                                      (let ((__tmp18276
                                                             (let ((__tmp18277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block8188_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp18277))))
                (declare (not safe))
                (cons __tmp18276 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18278
                                                       __tmp18275))))
                                          (declare (not safe))
                                          (cons '%#call __tmp18274))))
                                   (declare (not safe))
                                   (cons __tmp18273 _c-body8234_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp18272))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body8234_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body8234_))))))
                  _tl81978214_)
                 (let () (declare (not safe)) (_g81948204_ _g81958207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g81948204_
                                                        _g81958207_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g81948204_ _g81958207_))))))
                                 (declare (not safe))
                                 (_g81938236_ _compiled8191_))))
                           _tl81568173_)))
                      (let ()
                        (declare (not safe))
                        (_g81538163_ _g81548166_))))))
          (declare (not safe))
          (_g81528239_ _stx8150_))))
    (define gxc#generate-meta-module%
      (lambda (_stx8081_ _state8082_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state8082_))
        (let* ((_g80848098_
                (lambda (_g80858095_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g80858095_))))
               (_g80838147_
                (lambda (_g80858101_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g80858101_))
                      (let ((_e80908103_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g80858101_))))
                        (let ((_hd80898106_
                               (let ()
                                 (declare (not safe))
                                 (##car _e80908103_)))
                              (_tl80888108_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e80908103_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl80888108_))
                              (let ((_e80938111_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl80888108_))))
                                (let ((_hd80928114_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80938111_)))
                                      (_tl80918116_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80938111_))))
                                  ((lambda (_L8119_ _L8120_)
                                     (let ((_key8133_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L8120_))))
                                       (if (interned-symbol? _key8133_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx8081_
                                              _L8120_
                                              _key8133_)))
                                       (let* ((_ctx8135_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L8120_)))
                                              (_code8138_
                                               (let ((__tmp18280
                                                      (lambda ()
                                                        (let ((__tmp18281
                                                               (##structure-ref
                                                                _ctx8135_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           __tmp18281
                                                           _state8082_)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp18280
                                                  gx#current-expander-context
                                                  _ctx8135_)))
                                              (_rt8140_
                                               (let ((__tmp18282
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __tmp18282
                                                  _ctx8135_
                                                  '#f)))
                                              (_loader8142_
                                               (if _rt8140_
                                                   (let ((__tmp18283
                                                          (let ((__tmp18284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp18288
                                (let ((__tmp18289
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp18289)))
                               (__tmp18285
                                (let ((__tmp18286
                                       (let ((__tmp18287
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt8140_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp18287))))
                                  (declare (not safe))
                                  (cons __tmp18286 '()))))
                           (declare (not safe))
                           (cons __tmp18288 __tmp18285))))
                    (declare (not safe))
                    (cons '%#call __tmp18284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18283 '()))
                                                   '()))
                                              (_modid8144_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L8120_))))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            _state8082_))
                                         (let ((__tmp18290
                                                (let ((__tmp18291
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code8138_
                                                               _loader8142_))))
                                                  (declare (not safe))
                                                  (cons _modid8144_
                                                        __tmp18291))))
                                           (declare (not safe))
                                           (cons '%#module __tmp18290)))))
                                   _tl80918116_
                                   _hd80928114_)))
                              (let ()
                                (declare (not safe))
                                (_g80848098_ _g80858101_)))))
                      (let ()
                        (declare (not safe))
                        (_g80848098_ _g80858101_))))))
          (declare (not safe))
          (_g80838147_ _stx8081_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx8071_ _context-chain8072_)
        (let _lp8074_ ((_ctx8076_ _ctx8071_) (_path8077_ '()))
          (let ((_super8079_
                 (##structure-ref _ctx8076_ '3 gx#phi-context::t '#f)))
            (if (memq _super8079_ _context-chain8072_)
                (let ((__tmp18295
                       (let ((__tmp18296
                              (car (##structure-ref
                                    _ctx8076_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp18296 _path8077_))))
                  (declare (not safe))
                  (cons '#f __tmp18295))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super8079_
                       'gx#module-context::t))
                    (let ((__tmp18293
                           (let ((__tmp18294
                                  (car (##structure-ref
                                        _ctx8076_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp18294 _path8077_))))
                      (declare (not safe))
                      (_lp8074_ _super8079_ __tmp18293))
                    (let ((__tmp18292
                           (make-symbol
                            '":"
                            (##structure-ref
                             _ctx8076_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (declare (not safe))
                      (cons __tmp18292 _path8077_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp8066_ ((_ctx8068_ (gx#current-expander-context)) (_r8069_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx8068_ 'gx#module-context::t))
              (let ((__tmp18298
                     (##structure-ref _ctx8068_ '3 gx#phi-context::t '#f))
                    (__tmp18297
                     (let () (declare (not safe)) (cons _ctx8068_ _r8069_))))
                (declare (not safe))
                (_lp8066_ __tmp18298 __tmp18297))
              _r8069_))))
    (define gxc#generate-meta-import%
      (lambda (_stx7835_ _state7836_)
        (letrec* ((_context-chain7838_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec7839_
                   (lambda (_in8002_)
                     (let* ((_in80038015_ _in8002_)
                            (_E80058019_
                             (lambda ()
                               (error '"No clause matching" _in80038015_)))
                            (_K80068029_
                             (lambda (_phi8022_
                                      _name8023_
                                      _src-name8024_
                                      _src-phi8025_
                                      _src-key8026_
                                      _src-ctx8027_)
                               (let ((__tmp18299
                                      (let ((__tmp18303
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name8023_)))
                                            (__tmp18300
                                             (let ((__tmp18301
                                                    (let ((__tmp18302
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name8024_))))
                                                      (declare (not safe))
                                                      (cons __tmp18302 '()))))
                                               (declare (not safe))
                                               (cons _src-phi8025_
                                                     __tmp18301))))
                                        (declare (not safe))
                                        (cons __tmp18303 __tmp18300))))
                                 (declare (not safe))
                                 (cons _phi8022_ __tmp18299)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in80038015_
                              'gx#module-import::t))
                           (let ((_e80078032_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _in80038015_ '1))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e80078032_
                                    'gx#module-export::t))
                                 (let* ((_e80108035_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e80078032_ '1)))
                                        (_src-ctx8038_ _e80108035_)
                                        (_e80118040_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e80078032_ '2)))
                                        (_src-key8043_ _e80118040_)
                                        (_e80128045_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e80078032_ '3)))
                                        (_src-phi8048_ _e80128045_)
                                        (_e80138050_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e80078032_ '4)))
                                        (_src-name8053_ _e80138050_)
                                        (_e80088055_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in80038015_ '2)))
                                        (_name8058_ _e80088055_)
                                        (_e80098060_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in80038015_ '3)))
                                        (_phi8063_ _e80098060_))
                                   (declare (not safe))
                                   (_K80068029_
                                    _phi8063_
                                    _name8058_
                                    _src-name8053_
                                    _src-phi8048_
                                    _src-key8043_
                                    _src-ctx8038_))
                                 (let () (declare (not safe)) (_E80058019_))))
                           (let () (declare (not safe)) (_E80058019_))))))
                  (_make-import-path7840_
                   (lambda (_ctx8000_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx8000_
                        _context-chain7838_))))
                  (_make-import-spec-in7841_
                   (lambda (_ctx7997_ _in7998_)
                     (let ((__tmp18304
                            (let ((__tmp18306
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path7840_ _ctx7997_)))
                                  (__tmp18305 (reverse _in7998_)))
                              (declare (not safe))
                              (cons __tmp18306 __tmp18305))))
                       (declare (not safe))
                       (cons 'spec: __tmp18304)))))
          (let () (declare (not safe)) (gxc#meta-state-end-phi! _state7836_))
          (let* ((_g78437853_
                  (lambda (_g78447850_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g78447850_))))
                 (_g78427994_
                  (lambda (_g78447856_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g78447856_))
                        (let ((_e78487858_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g78447856_))))
                          (let ((_hd78477861_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e78487858_)))
                                (_tl78467863_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e78487858_))))
                            ((lambda (_L7866_)
                               (let _lp7877_ ((_rest7879_ _L7866_)
                                              (_current-src7880_ '#f)
                                              (_current-in7881_ '())
                                              (_r7882_ '()))
                                 (let* ((_rest78837891_ _rest7879_)
                                        (_else78857901_
                                         (lambda ()
                                           (let* ((_r7899_ (if _current-src7880_
                                                               (let ((__tmp18307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in7841_
                                 _current-src7880_
                                 _current-in7881_))))
                         (declare (not safe))
                         (cons __tmp18307 _r7882_))
                       _r7882_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp18308
                                                   (reverse _r7899_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp18308))))
                                        (_K78877982_
                                         (lambda (_rest7904_ _in7905_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in7905_
                                                  'gx#module-import::t))
                                               (let* ((_in79067913_ _in7905_)
                                                      (_E79087917_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in79067913_)))
                                                      (_K79097922_
                                                       (lambda (_src-ctx7920_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _current-src7880_ _src-ctx7920_))
                     (let ((__tmp18324
                            (let ((__tmp18325
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec7839_ _in7905_))))
                              (declare (not safe))
                              (cons __tmp18325 _current-in7881_))))
                       (declare (not safe))
                       (_lp7877_
                        _rest7904_
                        _current-src7880_
                        __tmp18324
                        _r7882_))
                     (if _current-src7880_
                         (let ((__tmp18322
                                (let ((__tmp18323
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec7839_ _in7905_))))
                                  (declare (not safe))
                                  (cons __tmp18323 '())))
                               (__tmp18320
                                (let ((__tmp18321
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in7841_
                                          _current-src7880_
                                          _current-in7881_))))
                                  (declare (not safe))
                                  (cons __tmp18321 _r7882_))))
                           (declare (not safe))
                           (_lp7877_
                            _rest7904_
                            _src-ctx7920_
                            __tmp18322
                            __tmp18320))
                         (let ((__tmp18318
                                (let ((__tmp18319
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec7839_ _in7905_))))
                                  (declare (not safe))
                                  (cons __tmp18319 '()))))
                           (declare (not safe))
                           (_lp7877_
                            _rest7904_
                            _src-ctx7920_
                            __tmp18318
                            _r7882_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in79067913_
                                                        'gx#module-import::t))
                                                     (let ((_e79107925_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _in79067913_
                                                               '1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e79107925_
                                                              'gx#module-export::t))
                                                           (let* ((_e79117928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##vector-ref _e79107925_ '1)))
                          (_src-ctx7931_ _e79117928_))
                     (declare (not safe))
                     (_K79097922_ _src-ctx7931_))
                   (let () (declare (not safe)) (_E79087917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E79087917_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in7905_
                                                      'gx#import-set::t))
                                                   (let* ((_phi7933_
                                                           (##direct-structure-ref
                                                            _in7905_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src7935_
                                                           (##direct-structure-ref
                                                            _in7905_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in7975_
                                                           (let* ((_g79367945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path7840_ _src7935_)))
                          (_E79397949_
                           (lambda ()
                             (error '"No clause matching" _g79367945_))))
                     (let ((_K79417965_ (lambda (_path7963_) _path7963_))
                           (_K79407955_
                            (lambda (_path7953_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path7953_)))))
                       (if (let () (declare (not safe)) (##pair? _g79367945_))
                           (let ((_tl79437970_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g79367945_)))
                                 (_hd79427968_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g79367945_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl79437970_))
                                 (let ((_path7973_ _hd79427968_))
                                   (declare (not safe))
                                   (_K79417965_ _path7973_))
                                 (let ((_path7958_ _g79367945_))
                                   (declare (not safe))
                                   (_K79407955_ _path7958_))))
                           (let ((_path7958_ _g79367945_))
                             (declare (not safe))
                             (_K79407955_ _path7958_))))))
                  (_r7977_ (if _current-src7880_
                               (let ((__tmp18313
                                      (let ()
                                        (declare (not safe))
                                        (_make-import-spec-in7841_
                                         _current-src7880_
                                         _current-in7881_))))
                                 (declare (not safe))
                                 (cons __tmp18313 _r7882_))
                               _r7882_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp18314
                                                            (let ((__tmp18315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi7933_))
                               _src-in7975_
                               (let ((__tmp18316
                                      (let ((__tmp18317
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in7975_ '()))))
                                        (declare (not safe))
                                        (cons _phi7933_ __tmp18317))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp18316)))))
                      (declare (not safe))
                      (cons __tmp18315 _r7977_))))
               (declare (not safe))
               (_lp7877_ _rest7904_ '#f '() __tmp18314)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in7905_
                                                          'gx#module-context::t))
                                                       (let* ((_r7980_ (if _current-src7880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp18309
                                          (let ()
                                            (declare (not safe))
                                            (_make-import-spec-in7841_
                                             _current-src7880_
                                             _current-in7881_))))
                                     (declare (not safe))
                                     (cons __tmp18309 _r7882_))
                                   _r7882_))
                      (__tmp18310
                       (let ((__tmp18311
                              (let ((__tmp18312
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path7840_ _in7905_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp18312))))
                         (declare (not safe))
                         (cons __tmp18311 _r7980_))))
                 (declare (not safe))
                 (_lp7877_ _rest7904_ '#f '() __tmp18310))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest78837891_))
                                       (let ((_hd78887985_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest78837891_)))
                                             (_tl78897987_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest78837891_))))
                                         (let* ((_in7990_ _hd78887985_)
                                                (_rest7992_ _tl78897987_))
                                           (declare (not safe))
                                           (_K78877982_ _rest7992_ _in7990_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else78857901_))))))
                             _tl78467863_)))
                        (let ()
                          (declare (not safe))
                          (_g78437853_ _g78447856_))))))
            (declare (not safe))
            (_g78427994_ _stx7835_)))))
    (define gxc#generate-meta-export%
      (lambda (_stx7645_ _state7646_)
        (letrec* ((_context-chain7648_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path7649_
                   (lambda (_ctx7833_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx7833_
                        _context-chain7648_)))))
          (let* ((_g76517661_
                  (lambda (_g76527658_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g76527658_))))
                 (_g76507830_
                  (lambda (_g76527664_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g76527664_))
                        (let ((_e76567666_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g76527664_))))
                          (let ((_hd76557669_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e76567666_)))
                                (_tl76547671_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e76567666_))))
                            ((lambda (_L7674_)
                               (let _lp7685_ ((_rest7687_ _L7674_)
                                              (_r7688_ '()))
                                 (let* ((_rest76897697_ _rest7687_)
                                        (_else76917705_
                                         (lambda ()
                                           (let ((__tmp18326
                                                  (reverse _r7688_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp18326))))
                                        (_K76937818_
                                         (lambda (_rest7708_ _out7709_)
                                           (let* ((_out77107723_ _out7709_)
                                                  (_E77137727_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _out77107723_))))
                                             (let ((_K77177797_
                                                    (lambda (_name7793_
                                                             _phi7794_
                                                             _key7795_)
                                                      (let ((__tmp18327
                                                             (let ((__tmp18328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18329
                                   (let ((__tmp18330
                                          (let ((__tmp18333
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key7795_)))
                                                (__tmp18331
                                                 (let ((__tmp18332
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name7793_))))
                                                   (declare (not safe))
                                                   (cons __tmp18332 '()))))
                                            (declare (not safe))
                                            (cons __tmp18333 __tmp18331))))
                                     (declare (not safe))
                                     (cons _phi7794_ __tmp18330))))
                              (declare (not safe))
                              (cons 'spec: __tmp18329))))
                       (declare (not safe))
                       (cons __tmp18328 _r7688_))))
                (declare (not safe))
                (_lp7685_ _rest7708_ __tmp18327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K77147777_
                                                    (lambda (_phi7731_
                                                             _src7732_)
                                                      (let* ((_out7772_
                                                              (if _src7732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18334
                                 (let ((__tmp18335
                                        (let* ((_g77337742_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path7649_
                                                   _src7732_)))
                                               (_E77367746_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g77337742_))))
                                          (let ((_K77387762_
                                                 (lambda (_path7760_)
                                                   _path7760_))
                                                (_K77377752_
                                                 (lambda (_path7750_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in: _path7750_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g77337742_))
                                                (let ((_tl77407767_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g77337742_)))
                                                      (_hd77397765_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g77337742_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl77407767_))
                                                      (let ((_path7770_
                                                             _hd77397765_))
                                                        (declare (not safe))
                                                        (_K77387762_
                                                         _path7770_))
                                                      (let ((_path7755_
                                                             _g77337742_))
                                                        (declare (not safe))
                                                        (_K77377752_
                                                         _path7755_))))
                                                (let ((_path7755_ _g77337742_))
                                                  (declare (not safe))
                                                  (_K77377752_
                                                   _path7755_)))))))
                                   (declare (not safe))
                                   (cons __tmp18335 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp18334))
                          '#t))
                     (_out7774_
                      (if (let () (declare (not safe)) (fxzero? _phi7731_))
                          _out7772_
                          (let ((__tmp18336
                                 (let ((__tmp18337
                                        (let ()
                                          (declare (not safe))
                                          (cons _out7772_ '()))))
                                   (declare (not safe))
                                   (cons _phi7731_ __tmp18337))))
                            (declare (not safe))
                            (cons 'phi: __tmp18336)))))
                (let ((__tmp18338
                       (let () (declare (not safe)) (cons _out7774_ _r7688_))))
                  (declare (not safe))
                  (_lp7685_ _rest7708_ __tmp18338))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match77127790_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out77107723_
                                                               'gx#export-set::t))
                                                            (let* ((_e77157780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out77107723_ '1)))
                           (_e77167785_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out77107723_ '2))))
                      (let ((_src7783_ _e77157780_) (_phi7788_ _e77167785_))
                        (let ()
                          (declare (not safe))
                          (_K77147777_ _phi7788_ _src7783_))))
                    (let () (declare (not safe)) (_E77137727_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out77107723_
                                                        'gx#module-export::t))
                                                     (let* ((_e77187800_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _out77107723_ '1)))
                    (_e77197803_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out77107723_ '2)))
                    (_e77207808_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out77107723_ '3)))
                    (_e77217813_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out77107723_ '4))))
               (let ((_key7806_ _e77197803_)
                     (_phi7811_ _e77207808_)
                     (_name7816_ _e77217813_))
                 (let ()
                   (declare (not safe))
                   (_K77177797_ _name7816_ _phi7811_ _key7806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match77127790_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest76897697_))
                                       (let ((_hd76947821_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest76897697_)))
                                             (_tl76957823_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest76897697_))))
                                         (let* ((_out7826_ _hd76947821_)
                                                (_rest7828_ _tl76957823_))
                                           (declare (not safe))
                                           (_K76937818_ _rest7828_ _out7826_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else76917705_))))))
                             _tl76547671_)))
                        (let ()
                          (declare (not safe))
                          (_g76517661_ _g76527664_))))))
            (declare (not safe))
            (_g76507830_ _stx7645_)))))
    (define gxc#generate-meta-provide%
      (lambda (_stx7606_ _state7607_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state7607_))
        (let* ((_g76097619_
                (lambda (_g76107616_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g76107616_))))
               (_g76087642_
                (lambda (_g76107622_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g76107622_))
                      (let ((_e76147624_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g76107622_))))
                        (let ((_hd76137627_
                               (let ()
                                 (declare (not safe))
                                 (##car _e76147624_)))
                              (_tl76127629_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e76147624_))))
                          ((lambda (_L7632_)
                             (let ((__tmp18339
                                    (map gxc#generate-runtime-identifier
                                         _L7632_)))
                               (declare (not safe))
                               (cons '%#provide __tmp18339)))
                           _tl76127629_)))
                      (let ()
                        (declare (not safe))
                        (_g76097619_ _g76107622_))))))
          (declare (not safe))
          (_g76087642_ _stx7606_))))
    (define gxc#generate-meta-extern%
      (lambda (_stx7477_ _state7478_)
        (letrec ((_generate17480_
                  (lambda (_id7601_ _eid7602_)
                    (let ((_eid7604_
                           (let () (declare (not safe)) (gx#stx-e _eid7602_))))
                      (if (interned-symbol? _eid7604_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx7477_
                             _eid7604_)))
                      (let ((__tmp18341
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id7601_)))
                            (__tmp18340
                             (let ()
                               (declare (not safe))
                               (cons _eid7604_ '()))))
                        (declare (not safe))
                        (cons __tmp18341 __tmp18340))))))
          (let* ((_g74827510_
                  (lambda (_g74837507_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g74837507_))))
                 (_g74817598_
                  (lambda (_g74837513_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g74837513_))
                        (let ((_e74887515_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g74837513_))))
                          (let ((_hd74877518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e74887515_)))
                                (_tl74867520_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e74887515_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl74867520_))
                                (let ((_g18342_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl74867520_
                                          '0))))
                                  (begin
                                    (let ((_g18343_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g18342_)
                                                 (##vector-length _g18342_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g18343_ 2)))
                                          (error "Context expects 2 values"
                                                 _g18343_)))
                                    (let ((_target74897523_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g18342_ 0)))
                                          (_tl74917525_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g18342_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl74917525_))
                                          (letrec ((_loop74927528_
                                                    (lambda (_hd74907531_
                                                             _eid74967533_
                                                             _id74977535_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd74907531_))
                                                          (let ((_e74937538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd74907531_))))
                    (let ((_lp-hd74947541_
                           (let () (declare (not safe)) (##car _e74937538_)))
                          (_lp-tl74957543_
                           (let () (declare (not safe)) (##cdr _e74937538_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd74947541_))
                          (let ((_e75027546_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd74947541_))))
                            (let ((_hd75017549_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e75027546_)))
                                  (_tl75007551_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e75027546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl75007551_))
                                  (let ((_e75057554_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl75007551_))))
                                    (let ((_hd75047557_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e75057554_)))
                                          (_tl75037559_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e75057554_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl75037559_))
                                          (let ((__tmp18348
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd75047557_
                                                         _eid74967533_)))
                                                (__tmp18347
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd75017549_
                                                         _id74977535_))))
                                            (declare (not safe))
                                            (_loop74927528_
                                             _lp-tl74957543_
                                             __tmp18348
                                             __tmp18347))
                                          (let ()
                                            (declare (not safe))
                                            (_g74827510_ _g74837513_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g74827510_ _g74837513_)))))
                          (let ()
                            (declare (not safe))
                            (_g74827510_ _g74837513_)))))
                  (let ((_eid74987562_ (reverse _eid74967533_))
                        (_id74997564_ (reverse _id74977535_)))
                    ((lambda (_L7567_ _L7568_)
                       (let ((__tmp18344
                              (map _generate17480_
                                   (let ((__tmp18345
                                          (lambda (_g75837586_ _g75847588_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g75837586_
                                                    _g75847588_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18345 '() _L7568_))
                                   (let ((__tmp18346
                                          (lambda (_g75907593_ _g75917595_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g75907593_
                                                    _g75917595_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18346 '() _L7567_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp18344)))
                     _eid74987562_
                     _id74997564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop74927528_
                                               _target74897523_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g74827510_ _g74837513_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g74827510_ _g74837513_)))))
                        (let ()
                          (declare (not safe))
                          (_g74827510_ _g74837513_))))))
            (declare (not safe))
            (_g74817598_ _stx7477_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_stx7267_ _state7268_)
        (letrec ((_generate17270_
                  (lambda (_id7472_)
                    (let ((_eid7474_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id7472_)))
                          (_ident7475_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id7472_))))
                      (let ((__tmp18349
                             (let ((__tmp18350
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid7474_ '()))))
                               (declare (not safe))
                               (cons _ident7475_ __tmp18350))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp18349)))))
                 (_generate*7271_
                  (lambda (_all7440_)
                    (let* ((_all74417449_ _all7440_)
                           (_else74437457_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all7440_))))
                           (_K74457462_ (lambda (_one7460_) _one7460_)))
                      (if (let () (declare (not safe)) (##pair? _all74417449_))
                          (let ((_hd74467465_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all74417449_)))
                                (_tl74477467_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all74417449_))))
                            (let ((_one7470_ _hd74467465_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl74477467_))
                                  (let ()
                                    (declare (not safe))
                                    (_K74457462_ _one7470_))
                                  (let ()
                                    (declare (not safe))
                                    (_else74437457_)))))
                          (let () (declare (not safe)) (_else74437457_)))))))
          (let* ((_g72737290_
                  (lambda (_g72747287_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _g72747287_))))
                 (_g72727437_
                  (lambda (_g72747293_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g72747293_))
                        (let ((_e72797295_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g72747293_))))
                          (let ((_hd72787298_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e72797295_)))
                                (_tl72777300_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e72797295_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl72777300_))
                                (let ((_e72827303_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl72777300_))))
                                  (let ((_hd72817306_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e72827303_)))
                                        (_tl72807308_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e72827303_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl72807308_))
                                        (let ((_e72857311_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl72807308_))))
                                          (let ((_hd72847314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e72857311_)))
                                                (_tl72837316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e72857311_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null? _tl72837316_))
                                                ((lambda (_L7319_ _L7320_)
                                                   (let _lp7336_ ((_rest7338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7320_)
                          (_r7339_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx1752917530_
                                                             _rest7338_)
                                                            (_g73447361_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          ___stx1752917530_)))))
               (let ((___kont1753117532_
                      (lambda (_L7424_)
                        (let ()
                          (declare (not safe))
                          (_lp7336_ _L7424_ _r7339_))))
                     (___kont1753317534_
                      (lambda (_L7397_ _L7398_)
                        (let ((__tmp18351
                               (let ((__tmp18352
                                      (let ()
                                        (declare (not safe))
                                        (_generate17270_ _L7398_))))
                                 (declare (not safe))
                                 (cons __tmp18352 _r7339_))))
                          (declare (not safe))
                          (_lp7336_ _L7397_ __tmp18351))))
                     (___kont1753517536_
                      (lambda (_L7373_)
                        (let ((__tmp18353
                               (let ((__tmp18354
                                      (let ((__tmp18355
                                             (let ()
                                               (declare (not safe))
                                               (_generate17270_ _L7373_))))
                                        (declare (not safe))
                                        (cons __tmp18355 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp18354 _r7339_))))
                          (declare (not safe))
                          (_generate*7271_ __tmp18353))))
                     (___kont1753717538_
                      (lambda ()
                        (let ((__tmp18356 (reverse _r7339_)))
                          (declare (not safe))
                          (_generate*7271_ __tmp18356)))))
                 (let ((_g73427384_
                        (lambda ()
                          (let ((_L7373_ ___stx1752917530_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L7373_))
                                (___kont1753517536_ _L7373_)
                                (___kont1753717538_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx1752917530_))
                       (let ((_e73497413_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx1752917530_))))
                         (let ((_tl73477418_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e73497413_)))
                               (_hd73487416_
                                (let ()
                                  (declare (not safe))
                                  (##car _e73497413_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd73487416_))
                               (let ((_e73507421_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd73487416_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e73507421_ '#f))
                                     (___kont1753117532_ _tl73477418_)
                                     (___kont1753317534_
                                      _tl73477418_
                                      _hd73487416_)))
                               (___kont1753317534_
                                _tl73477418_
                                _hd73487416_))))
                       (let () (declare (not safe)) (_g73427384_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd72847314_
                                                 _hd72817306_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g72737290_ _g72747293_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g72737290_ _g72747293_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g72737290_ _g72747293_)))))
                        (let ()
                          (declare (not safe))
                          (_g72737290_ _g72747293_))))))
            (declare (not safe))
            (_g72727437_ _stx7267_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_stx7164_ _state7165_)
        (let* ((_g71677184_
                (lambda (_g71687181_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g71687181_))))
               (_g71667264_
                (lambda (_g71687187_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g71687187_))
                      (let ((_e71737189_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g71687187_))))
                        (let ((_hd71727192_
                               (let ()
                                 (declare (not safe))
                                 (##car _e71737189_)))
                              (_tl71717194_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e71737189_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl71717194_))
                              (let ((_e71767197_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl71717194_))))
                                (let ((_hd71757200_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e71767197_)))
                                      (_tl71747202_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e71767197_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl71747202_))
                                      (let ((_e71797205_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl71747202_))))
                                        (let ((_hd71787208_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e71797205_)))
                                              (_tl71777210_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e71797205_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl71777210_))
                                              ((lambda (_L7213_ _L7214_)
                                                 (let* ((_eid7229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L7214_)))
                                                        (_phi7231_
                                                         (let ((__tmp18357
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp18357
                                                                '1)))
                                                        (_block7233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#meta-state-begin-phi!
                                                            _state7165_
                                                            _phi7231_))))
                                                   (let* ((_g72367243_
                                                           (lambda (_g72377240_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error '#f '"Bad syntax" _g72377240_))))
                  (_g72357261_
                   (lambda (_g72377246_)
                     ((lambda (_L7248_)
                        (let ()
                          (let ((__tmp18358
                                 (let ((__tmp18361
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp18359
                                        (let ((__tmp18360
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L7213_ '()))))
                                          (declare (not safe))
                                          (cons _L7248_ __tmp18360))))
                                   (declare (not safe))
                                   (cons __tmp18361 __tmp18359))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             _state7165_
                             _phi7231_
                             __tmp18358))))
                      _g72377246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g72357261_ _eid7229_))
                                                   (if _block7233_
                                                       (let ((__tmp18365
                                                              (let ((__tmp18371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18372
                                    (let ((__tmp18373
                                           (let ((__tmp18374
                                                  (let ((__tmp18378
                                                         (let ((__tmp18379
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp18379)))
                (__tmp18375
                 (let ((__tmp18376
                        (let ((__tmp18377
                               (let ()
                                 (declare (not safe))
                                 (cons _block7233_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp18377))))
                   (declare (not safe))
                   (cons __tmp18376 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18378
                                                          __tmp18375))))
                                             (declare (not safe))
                                             (cons '%#call __tmp18374))))
                                      (declare (not safe))
                                      (cons __tmp18373 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp18372)))
                            (__tmp18366
                             (let ((__tmp18367
                                    (let ((__tmp18368
                                           (let ((__tmp18370
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L7214_)))
                                                 (__tmp18369
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid7229_ '()))))
                                             (declare (not safe))
                                             (cons __tmp18370 __tmp18369))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp18368))))
                               (declare (not safe))
                               (cons __tmp18367 '()))))
                        (declare (not safe))
                        (cons __tmp18371 __tmp18366))))
                 (declare (not safe))
                 (cons '%#begin __tmp18365))
               (let ((__tmp18362
                      (let ((__tmp18364
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L7214_)))
                            (__tmp18363
                             (let ()
                               (declare (not safe))
                               (cons _eid7229_ '()))))
                        (declare (not safe))
                        (cons __tmp18364 __tmp18363))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp18362)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd71787208_
                                               _hd71757200_)
                                              (let ()
                                                (declare (not safe))
                                                (_g71677184_ _g71687187_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g71677184_ _g71687187_)))))
                              (let ()
                                (declare (not safe))
                                (_g71677184_ _g71687187_)))))
                      (let ()
                        (declare (not safe))
                        (_g71677184_ _g71687187_))))))
          (declare (not safe))
          (_g71667264_ _stx7164_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_stx7096_ _state7097_)
        (let* ((_g70997116_
                (lambda (_g71007113_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g71007113_))))
               (_g70987161_
                (lambda (_g71007119_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g71007119_))
                      (let ((_e71057121_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g71007119_))))
                        (let ((_hd71047124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e71057121_)))
                              (_tl71037126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e71057121_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl71037126_))
                              (let ((_e71087129_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl71037126_))))
                                (let ((_hd71077132_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e71087129_)))
                                      (_tl71067134_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e71087129_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl71067134_))
                                      (let ((_e71117137_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl71067134_))))
                                        (let ((_hd71107140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e71117137_)))
                                              (_tl71097142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e71117137_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl71097142_))
                                              ((lambda (_L7145_ _L7146_)
                                                 (let ((__tmp18380
                                                        (let ((__tmp18383
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L7146_)))
                      (__tmp18381
                       (let ((__tmp18382
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L7145_))))
                         (declare (not safe))
                         (cons __tmp18382 '()))))
                  (declare (not safe))
                  (cons __tmp18383 __tmp18381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp18380)))
                                               _hd71107140_
                                               _hd71077132_)
                                              (let ()
                                                (declare (not safe))
                                                (_g70997116_ _g71007119_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g70997116_ _g71007119_)))))
                              (let ()
                                (declare (not safe))
                                (_g70997116_ _g71007119_)))))
                      (let ()
                        (declare (not safe))
                        (_g70997116_ _g71007119_))))))
          (declare (not safe))
          (_g70987161_ _stx7096_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_stx7093_ _state7094_)
        (let ((__tmp18384 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! _state7094_ __tmp18384 _stx7093_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _stx7093_ _state7094_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_stx7090_ _state7091_)
        (let ((__tmp18385 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! _state7091_ __tmp18385 _stx7090_))
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
      (lambda _$args7087_
        (apply make-struct-instance gxc#meta-state::t _$args7087_)))
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
      (lambda (_self7084_ _ctx7085_)
        (if (let ((__tmp18389
                   (let () (declare (not safe)) (##vector-length _self7084_))))
              (declare (not safe))
              (##fx< '4 __tmp18389))
            (begin
              (let ((__tmp18386
                     (let ((__tmp18387
                            (##structure-ref
                             _ctx7085_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp18387))))
                (declare (not safe))
                (##vector-set! _self7084_ '1 __tmp18386))
              (let () (declare (not safe)) (##vector-set! _self7084_ '2 '1))
              (let ((__tmp18388
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self7084_ '3 __tmp18388))
              (let () (declare (not safe)) (##vector-set! _self7084_ '4 '())))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7084_))))
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
      (lambda _$args6959_
        (apply make-struct-instance gxc#meta-state-block::t _$args6959_)))
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
      (lambda (_state6918_ _phi6919_)
        (let* ((_state69206928_ _state6918_)
               (_E69226932_
                (lambda () (error '"No clause matching" _state69206928_)))
               (_K69236941_
                (lambda (_open6935_ _n6936_ _src6937_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _open6935_ _phi6919_ '#f))
                      '#f
                      (let ((_block-ref6939_
                             (string-append
                              _src6937_
                              '"__"
                              (number->string _n6936_))))
                        (##structure-set!
                         _state6918_
                         (let () (declare (not safe)) (fx+ _n6936_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp18390
                               (let ((__tmp18391
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp18391
                                  _phi6919_
                                  _n6936_
                                  '()))))
                          (declare (not safe))
                          (table-set! _open6935_ _phi6919_ __tmp18390))
                        _block-ref6939_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _state69206928_ 'gxc#meta-state::t))
              (let* ((_e69246944_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state69206928_ '1)))
                     (_src6947_ _e69246944_)
                     (_e69256949_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state69206928_ '2)))
                     (_n6952_ _e69256949_)
                     (_e69266954_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state69206928_ '3)))
                     (_open6957_ _e69266954_))
                (declare (not safe))
                (_K69236941_ _open6957_ _n6952_ _src6947_))
              (let () (declare (not safe)) (_E69226932_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state6912_ _phi6913_ _stx6914_)
        (let ((_block6916_
               (let ((__tmp18392
                      (##structure-ref _state6912_ '3 gxc#meta-state::t '#f)))
                 (declare (not safe))
                 (table-ref __tmp18392 _phi6913_ '#f))))
          (##structure-set!
           _block6916_
           (let ((__tmp18393
                  (##structure-ref
                   _block6916_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx6914_ __tmp18393))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state6907_)
        (##structure-set!
         _state6907_
         (let ((__tmp18396
                (lambda (_g18397_ _block6909_ _r6910_)
                  (let () (declare (not safe)) (cons _block6909_ _r6910_))))
               (__tmp18395
                (##structure-ref _state6907_ '4 gxc#meta-state::t '#f))
               (__tmp18394
                (##structure-ref _state6907_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp18396 __tmp18395 __tmp18394))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state6907_
         (let () (declare (not safe)) (make-table 'test: eq?))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state6859_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state6859_))
        (let ((__tmp18399
               (lambda (_block6861_ _r6862_)
                 (let* ((_block68636872_ _block6861_)
                        (_E68656876_
                         (lambda ()
                           (error '"No clause matching" _block68636872_)))
                        (_K68666884_
                         (lambda (_code6879_ _n6880_ _phi6881_ _ctx6882_)
                           (if (let () (declare (not safe)) (null? _code6879_))
                               _r6862_
                               (let ((__tmp18400
                                      (let ((__tmp18401
                                             (let ((__tmp18402
                                                    (let ((__tmp18403
                                                           (let ((__tmp18404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18405 (reverse _code6879_)))
                            (declare (not safe))
                            (cons '%#begin __tmp18405))))
                     (declare (not safe))
                     (cons __tmp18404 '()))))
              (declare (not safe))
              (cons _n6880_ __tmp18403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi6881_ __tmp18402))))
                                        (declare (not safe))
                                        (cons _ctx6882_ __tmp18401))))
                                 (declare (not safe))
                                 (cons __tmp18400 _r6862_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block68636872_
                          'gxc#meta-state-block::t))
                       (let* ((_e68676887_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block68636872_ '1)))
                              (_ctx6890_ _e68676887_)
                              (_e68686892_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block68636872_ '2)))
                              (_phi6895_ _e68686892_)
                              (_e68696897_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block68636872_ '3)))
                              (_n6900_ _e68696897_)
                              (_e68706902_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _block68636872_ '4)))
                              (_code6905_ _e68706902_))
                         (declare (not safe))
                         (_K68666884_ _code6905_ _n6900_ _phi6895_ _ctx6890_))
                       (let () (declare (not safe)) (_E68656876_))))))
              (__tmp18398
               (##structure-ref _state6859_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp18399 '() __tmp18398))))
    (define gxc#collect-expression-refs
      (lambda (_stx6855_)
        (let ((_ht6857_ (let () (declare (not safe)) (make-table 'test: eq?))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx6855_ _ht6857_))
          _ht6857_)))
    (define gxc#collect-refs-ref%
      (lambda (_stx6798_ _ht6799_)
        (let* ((_g68016814_
                (lambda (_g68026811_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g68026811_))))
               (_g68006852_
                (lambda (_g68026817_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g68026817_))
                      (let ((_e68066819_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g68026817_))))
                        (let ((_hd68056822_
                               (let ()
                                 (declare (not safe))
                                 (##car _e68066819_)))
                              (_tl68046824_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e68066819_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl68046824_))
                              (let ((_e68096827_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl68046824_))))
                                (let ((_hd68086830_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e68096827_)))
                                      (_tl68076832_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e68096827_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl68076832_))
                                      ((lambda (_L6835_)
                                         (let* ((_bind6847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L6835_)))
                                                (_eid6849_
                                                 (if _bind6847_
                                                     (##structure-ref
                                                      _bind6847_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L6835_)))))
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _ht6799_
                                              _eid6849_
                                              _eid6849_))))
                                       _hd68086830_)
                                      (let ()
                                        (declare (not safe))
                                        (_g68016814_ _g68026817_)))))
                              (let ()
                                (declare (not safe))
                                (_g68016814_ _g68026817_)))))
                      (let ()
                        (declare (not safe))
                        (_g68016814_ _g68026817_))))))
          (declare (not safe))
          (_g68006852_ _stx6798_))))
    (define gxc#collect-refs-setq%
      (lambda (_stx6725_ _ht6726_)
        (let* ((_g67286745_
                (lambda (_g67296742_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g67296742_))))
               (_g67276795_
                (lambda (_g67296748_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g67296748_))
                      (let ((_e67346750_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g67296748_))))
                        (let ((_hd67336753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e67346750_)))
                              (_tl67326755_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e67346750_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl67326755_))
                              (let ((_e67376758_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl67326755_))))
                                (let ((_hd67366761_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e67376758_)))
                                      (_tl67356763_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e67376758_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl67356763_))
                                      (let ((_e67406766_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl67356763_))))
                                        (let ((_hd67396769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e67406766_)))
                                              (_tl67386771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e67406766_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl67386771_))
                                              ((lambda (_L6774_ _L6775_)
                                                 (let* ((_bind6790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L6775_)))
                                                        (_eid6792_
                                                         (if _bind6790_
                                                             (##structure-ref
                                                              _bind6790_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L6775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (table-set!
                                                      _ht6726_
                                                      _eid6792_
                                                      _eid6792_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L6774_
                                                      _ht6726_))))
                                               _hd67396769_
                                               _hd67366761_)
                                              (let ()
                                                (declare (not safe))
                                                (_g67286745_ _g67296748_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g67286745_ _g67296748_)))))
                              (let ()
                                (declare (not safe))
                                (_g67286745_ _g67296748_)))))
                      (let ()
                        (declare (not safe))
                        (_g67286745_ _g67296748_))))))
          (declare (not safe))
          (_g67276795_ _stx6725_))))
    (define gxc#find-runtime-begin%
      (lambda (_stx6687_)
        (let* ((_g66896699_
                (lambda (_g66906696_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g66906696_))))
               (_g66886722_
                (lambda (_g66906702_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g66906702_))
                      (let ((_e66946704_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g66906702_))))
                        (let ((_hd66936707_
                               (let ()
                                 (declare (not safe))
                                 (##car _e66946704_)))
                              (_tl66926709_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e66946704_))))
                          ((lambda (_L6712_)
                             (let ()
                               (declare (not safe))
                               (ormap1 gxc#compile-e _L6712_)))
                           _tl66926709_)))
                      (let ()
                        (declare (not safe))
                        (_g66896699_ _g66906702_))))))
          (declare (not safe))
          (_g66886722_ _stx6687_))))
    (define gxc#find-lambda-expression-begin%
      (lambda (_stx6649_)
        (let* ((_g66516661_
                (lambda (_g66526658_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g66526658_))))
               (_g66506684_
                (lambda (_g66526664_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g66526664_))
                      (let ((_e66566666_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g66526664_))))
                        (let ((_hd66556669_
                               (let ()
                                 (declare (not safe))
                                 (##car _e66566666_)))
                              (_tl66546671_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e66566666_))))
                          ((lambda (_L6674_)
                             (let ((__tmp18406
                                    (let ()
                                      (declare (not safe))
                                      (last _L6674_))))
                               (declare (not safe))
                               (gxc#compile-e __tmp18406)))
                           _tl66546671_)))
                      (let ()
                        (declare (not safe))
                        (_g66516661_ _g66526664_))))))
          (declare (not safe))
          (_g66506684_ _stx6649_))))
    (define gxc#find-lambda-expression-begin-annotation%
      (lambda (_stx6582_)
        (let* ((_g65846601_
                (lambda (_g65856598_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g65856598_))))
               (_g65836646_
                (lambda (_g65856604_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g65856604_))
                      (let ((_e65906606_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g65856604_))))
                        (let ((_hd65896609_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65906606_)))
                              (_tl65886611_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65906606_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl65886611_))
                              (let ((_e65936614_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl65886611_))))
                                (let ((_hd65926617_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65936614_)))
                                      (_tl65916619_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65936614_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl65916619_))
                                      (let ((_e65966622_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl65916619_))))
                                        (let ((_hd65956625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65966622_)))
                                              (_tl65946627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65966622_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl65946627_))
                                              ((lambda (_L6630_ _L6631_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6630_)))
                                               _hd65956625_
                                               _hd65926617_)
                                              (let ()
                                                (declare (not safe))
                                                (_g65846601_ _g65856604_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g65846601_ _g65856604_)))))
                              (let ()
                                (declare (not safe))
                                (_g65846601_ _g65856604_)))))
                      (let ()
                        (declare (not safe))
                        (_g65846601_ _g65856604_))))))
          (declare (not safe))
          (_g65836646_ _stx6582_))))
    (define gxc#find-lambda-expression-let-values%
      (lambda (_stx6515_)
        (let* ((_g65176534_
                (lambda (_g65186531_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g65186531_))))
               (_g65166579_
                (lambda (_g65186537_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g65186537_))
                      (let ((_e65236539_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g65186537_))))
                        (let ((_hd65226542_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65236539_)))
                              (_tl65216544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65236539_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl65216544_))
                              (let ((_e65266547_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl65216544_))))
                                (let ((_hd65256550_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65266547_)))
                                      (_tl65246552_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65266547_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl65246552_))
                                      (let ((_e65296555_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl65246552_))))
                                        (let ((_hd65286558_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65296555_)))
                                              (_tl65276560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65296555_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl65276560_))
                                              ((lambda (_L6563_ _L6564_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6563_)))
                                               _hd65286558_
                                               _hd65256550_)
                                              (let ()
                                                (declare (not safe))
                                                (_g65176534_ _g65186537_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g65176534_ _g65186537_)))))
                              (let ()
                                (declare (not safe))
                                (_g65176534_ _g65186537_)))))
                      (let ()
                        (declare (not safe))
                        (_g65176534_ _g65186537_))))))
          (declare (not safe))
          (_g65166579_ _stx6515_))))
    (define gxc#count-values-single% (lambda (_stx6513_) '1))
    (define gxc#count-values-begin%
      (lambda (_stx6431_)
        (let* ((_g64336452_
                (lambda (_g64346449_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g64346449_))))
               (_g64326510_
                (lambda (_g64346455_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g64346455_))
                      (let ((_e64386457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g64346455_))))
                        (let ((_hd64376460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e64386457_)))
                              (_tl64366462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e64386457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl64366462_))
                              (let ((_g18407_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl64366462_
                                        '0))))
                                (begin
                                  (let ((_g18408_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g18407_)
                                               (##vector-length _g18407_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g18408_ 2)))
                                        (error "Context expects 2 values"
                                               _g18408_)))
                                  (let ((_target64396465_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g18407_ 0)))
                                        (_tl64416467_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g18407_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl64416467_))
                                        (letrec ((_loop64426470_
                                                  (lambda (_hd64406473_
                                                           _expr64466475_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd64406473_))
                                                        (let ((_e64436478_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd64406473_))))
                  (let ((_lp-hd64446481_
                         (let () (declare (not safe)) (##car _e64436478_)))
                        (_lp-tl64456483_
                         (let () (declare (not safe)) (##cdr _e64436478_))))
                    (let ((__tmp18412
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd64446481_ _expr64466475_))))
                      (declare (not safe))
                      (_loop64426470_ _lp-tl64456483_ __tmp18412))))
                (let ((_expr64476486_ (reverse _expr64466475_)))
                  ((lambda (_L6489_)
                     (let ((__tmp18409
                            (let ((__tmp18410
                                   (let ((__tmp18411
                                          (lambda (_g65026505_ _g65036507_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g65026505_
                                                    _g65036507_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18411 '() _L6489_))))
                              (declare (not safe))
                              (last __tmp18410))))
                       (declare (not safe))
                       (gxc#compile-e __tmp18409)))
                   _expr64476486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop64426470_
                                             _target64396465_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g64336452_ _g64346455_))))))
                              (let ()
                                (declare (not safe))
                                (_g64336452_ _g64346455_)))))
                      (let ()
                        (declare (not safe))
                        (_g64336452_ _g64346455_))))))
          (declare (not safe))
          (_g64326510_ _stx6431_))))
    (define gxc#count-values-begin-annotation%
      (lambda (_stx6364_)
        (let* ((_g63666383_
                (lambda (_g63676380_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g63676380_))))
               (_g63656428_
                (lambda (_g63676386_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g63676386_))
                      (let ((_e63726388_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g63676386_))))
                        (let ((_hd63716391_
                               (let ()
                                 (declare (not safe))
                                 (##car _e63726388_)))
                              (_tl63706393_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e63726388_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl63706393_))
                              (let ((_e63756396_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl63706393_))))
                                (let ((_hd63746399_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e63756396_)))
                                      (_tl63736401_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e63756396_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl63736401_))
                                      (let ((_e63786404_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl63736401_))))
                                        (let ((_hd63776407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e63786404_)))
                                              (_tl63766409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e63786404_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl63766409_))
                                              ((lambda (_L6412_ _L6413_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6412_)))
                                               _hd63776407_
                                               _hd63746399_)
                                              (let ()
                                                (declare (not safe))
                                                (_g63666383_ _g63676386_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g63666383_ _g63676386_)))))
                              (let ()
                                (declare (not safe))
                                (_g63666383_ _g63676386_)))))
                      (let ()
                        (declare (not safe))
                        (_g63666383_ _g63676386_))))))
          (declare (not safe))
          (_g63656428_ _stx6364_))))
    (define gxc#count-values-let-values%
      (lambda (_stx6297_)
        (let* ((_g62996316_
                (lambda (_g63006313_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g63006313_))))
               (_g62986361_
                (lambda (_g63006319_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g63006319_))
                      (let ((_e63056321_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g63006319_))))
                        (let ((_hd63046324_
                               (let ()
                                 (declare (not safe))
                                 (##car _e63056321_)))
                              (_tl63036326_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e63056321_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl63036326_))
                              (let ((_e63086329_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl63036326_))))
                                (let ((_hd63076332_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e63086329_)))
                                      (_tl63066334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e63086329_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl63066334_))
                                      (let ((_e63116337_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl63066334_))))
                                        (let ((_hd63106340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e63116337_)))
                                              (_tl63096342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e63116337_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl63096342_))
                                              ((lambda (_L6345_ _L6346_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L6345_)))
                                               _hd63106340_
                                               _hd63076332_)
                                              (let ()
                                                (declare (not safe))
                                                (_g62996316_ _g63006319_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g62996316_ _g63006319_)))))
                              (let ()
                                (declare (not safe))
                                (_g62996316_ _g63006319_)))))
                      (let ()
                        (declare (not safe))
                        (_g62996316_ _g63006319_))))))
          (declare (not safe))
          (_g62986361_ _stx6297_))))
    (define gxc#count-values-call%
      (lambda (_stx6164_)
        (let* ((___stx1755917560_ _stx6164_)
               (_g61676196_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1755917560_)))))
          (let ((___kont1756117562_
                 (lambda (_L6264_ _L6265_)
                   (length (let ((__tmp18413
                                  (lambda (_g62866289_ _g62876291_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g62866289_ _g62876291_)))))
                             (declare (not safe))
                             (foldr1 __tmp18413 '() _L6264_)))))
                (___kont1756517566_ (lambda () '#f)))
            (let ((___match1760417605_
                   (lambda (_e61736208_
                            _hd61726211_
                            _tl61716213_
                            _e61766216_
                            _hd61756219_
                            _tl61746221_
                            _e61796224_
                            _hd61786227_
                            _tl61776229_
                            _e61826232_
                            _hd61816235_
                            _tl61806237_
                            ___splice1756317564_
                            _target61836240_
                            _tl61856242_)
                     (letrec ((_loop61866245_
                               (lambda (_hd61846248_ _rand61906250_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd61846248_))
                                     (let ((_e61876253_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd61846248_))))
                                       (let ((_lp-tl61896258_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e61876253_)))
                                             (_lp-hd61886256_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e61876253_))))
                                         (let ((__tmp18414
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd61886256_
                                                        _rand61906250_))))
                                           (declare (not safe))
                                           (_loop61866245_
                                            _lp-tl61896258_
                                            __tmp18414))))
                                     (let ((_rand61916261_
                                            (reverse _rand61906250_)))
                                       (let ((_L6264_ _rand61916261_)
                                             (_L6265_ _hd61816235_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L6265_
                                                'values))
                                             (___kont1756117562_
                                              _L6264_
                                              _L6265_)
                                             (___kont1756517566_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop61866245_ _target61836240_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1755917560_))
                  (let ((_e61736208_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx1755917560_))))
                    (let ((_tl61716213_
                           (let () (declare (not safe)) (##cdr _e61736208_)))
                          (_hd61726211_
                           (let () (declare (not safe)) (##car _e61736208_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl61716213_))
                          (let ((_e61766216_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl61716213_))))
                            (let ((_tl61746221_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e61766216_)))
                                  (_hd61756219_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e61766216_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd61756219_))
                                  (let ((_e61796224_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd61756219_))))
                                    (let ((_tl61776229_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e61796224_)))
                                          (_hd61786227_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e61796224_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd61786227_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd61786227_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl61776229_))
                                                  (let ((_e61826232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl61776229_))))
                                                    (let ((_tl61806237_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e61826232_)))
                                                          (_hd61816235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e61826232_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl61806237_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl61746221_))
                      (let ((___splice1756317564_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl61746221_ '0))))
                        (let ((_tl61856242_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1756317564_ '1)))
                              (_target61836240_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1756317564_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl61856242_))
                              (___match1760417605_
                               _e61736208_
                               _hd61726211_
                               _tl61716213_
                               _e61766216_
                               _hd61756219_
                               _tl61746221_
                               _e61796224_
                               _hd61786227_
                               _tl61776229_
                               _e61826232_
                               _hd61816235_
                               _tl61806237_
                               ___splice1756317564_
                               _target61836240_
                               _tl61856242_)
                              (___kont1756517566_))))
                      (___kont1756517566_))
                  (___kont1756517566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1756517566_))
                                              (___kont1756517566_))
                                          (___kont1756517566_))))
                                  (___kont1756517566_))))
                          (___kont1756517566_))))
                  (___kont1756517566_)))))))
    (define gxc#count-values-if%
      (lambda (_stx6068_)
        (let* ((_g60706091_
                (lambda (_g60716088_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g60716088_))))
               (_g60696161_
                (lambda (_g60716094_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g60716094_))
                      (let ((_e60776096_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g60716094_))))
                        (let ((_hd60766099_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60776096_)))
                              (_tl60756101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60776096_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl60756101_))
                              (let ((_e60806104_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl60756101_))))
                                (let ((_hd60796107_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e60806104_)))
                                      (_tl60786109_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e60806104_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl60786109_))
                                      (let ((_e60836112_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl60786109_))))
                                        (let ((_hd60826115_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60836112_)))
                                              (_tl60816117_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60836112_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl60816117_))
                                              (let ((_e60866120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl60816117_))))
                                                (let ((_hd60856123_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e60866120_)))
                                                      (_tl60846125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e60866120_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl60846125_))
                                                      ((lambda (_L6128_
                                                                _L6129_
                                                                _L6130_)
                                                         (let ((_c161476149_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e _L6129_))))
                   (if _c161476149_
                       (let* ((_c16152_ _c161476149_)
                              (_c261536155_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L6128_))))
                         (if _c261536155_
                             (let ((_c26158_ _c261536155_))
                               (if (fx= _c16152_ _c26158_) _c16152_ '#f))
                             '#f))
                       '#f)))
               _hd60856123_
               _hd60826115_
               _hd60796107_)
              (let () (declare (not safe)) (_g60706091_ _g60716094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g60706091_ _g60716094_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g60706091_ _g60716094_)))))
                              (let ()
                                (declare (not safe))
                                (_g60706091_ _g60716094_)))))
                      (let ()
                        (declare (not safe))
                        (_g60706091_ _g60716094_))))))
          (declare (not safe))
          (_g60696161_ _stx6068_))))))
