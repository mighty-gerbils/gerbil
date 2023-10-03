(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1696371936)
  (begin
    (define gxc#gambit-annotations
      '(not gambit-scheme
            ieee-scheme
            r4rs-scheme
            r5rs-scheme
            block
            separate
            core
            inline
            inline-primitives
            inlining-limit
            constant-fold
            lambda-lift
            standard-bindings
            extended-bindings
            run-time-bindings
            safe
            interrupts-enabled
            poll-on-return
            proper-tail-calls
            generative-lambda
            optimize-dead-local-variables
            optimize-dead-definitions
            generic
            fixnum
            flonum
            mostly-fixnum
            mostly-flonum
            mostly-fixnum-flonum
            debug
            debug-location
            debug-source
            debug-environments))
    (define gxc#current-compile-methods (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e16318_
                  (lambda (_id16320_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id16320_))))))
          (let ()
            (declare (not safe))
            (make-table 'test: gx#bound-identifier=? 'hash: _hash-e16318_)))))
    (define gxc#compile-e
      (lambda (_stx16273_ . _args16274_)
        (let* ((_g1627616286_
                (lambda (_g1627716283_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1627716283_))))
               (_g1627516314_
                (lambda (_g1627716289_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1627716289_))
                      (let ((_e1628116291_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1627716289_))))
                        (let ((_hd1628016294_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1628116291_)))
                              (_tl1627916296_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1628116291_))))
                          ((lambda (_L16299_)
                             (let ((_$e16309_
                                    (let ((__tmp17746
                                           (gxc#current-compile-methods))
                                          (__tmp17745
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _L16299_))))
                                      (declare (not safe))
                                      (table-ref __tmp17746 __tmp17745 '#f))))
                               (if _$e16309_
                                   ((lambda (_method16312_)
                                      (apply _method16312_
                                             _stx16273_
                                             _args16274_))
                                    _$e16309_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#raise-compile-error
                                      '"Cannot compile; missing method"
                                      _stx16273_
                                      _L16299_)))))
                           _hd1628016294_)))
                      (let ()
                        (declare (not safe))
                        (_g1627616286_ _g1627716289_))))))
          (declare (not safe))
          (_g1627516314_ _stx16273_))))
    (define gxc#&void-expression
      (make-promise
       (lambda ()
         (let ((_tbl16270_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#begin-annotation void))
           (let () (declare (not safe)) (table-set! _tbl16270_ '%#lambda void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#case-lambda void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#let-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#letrec-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#letrec*-values void))
           (let () (declare (not safe)) (table-set! _tbl16270_ '%#quote void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#quote-syntax void))
           (let () (declare (not safe)) (table-set! _tbl16270_ '%#call void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#call-unchecked void))
           (let () (declare (not safe)) (table-set! _tbl16270_ '%#if void))
           (let () (declare (not safe)) (table-set! _tbl16270_ '%#ref void))
           (let () (declare (not safe)) (table-set! _tbl16270_ '%#set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#struct-instance? void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#struct-direct-instance? void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#struct-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#struct-set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#struct-direct-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#struct-direct-set! void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#struct-unchecked-ref void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16270_ '%#struct-unchecked-set! void))
           _tbl16270_))))
    (define gxc#&void-special-form
      (make-promise
       (lambda ()
         (let ((_tbl16266_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let () (declare (not safe)) (table-set! _tbl16266_ '%#begin void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16266_ '%#begin-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16266_ '%#begin-foreign void))
           (let () (declare (not safe)) (table-set! _tbl16266_ '%#module void))
           (let () (declare (not safe)) (table-set! _tbl16266_ '%#import void))
           (let () (declare (not safe)) (table-set! _tbl16266_ '%#export void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16266_ '%#provide void))
           (let () (declare (not safe)) (table-set! _tbl16266_ '%#extern void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16266_ '%#define-values void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16266_ '%#define-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16266_ '%#define-alias void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16266_ '%#declare void))
           _tbl16266_))))
    (define gxc#&void
      (make-promise
       (lambda ()
         (let ((_tbl16262_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17747 (force gxc#&void-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16262_ __tmp17747))
           (let ((__tmp17748 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16262_ __tmp17748))
           _tbl16262_))))
    (define gxc#&false-expression
      (make-promise
       (lambda ()
         (let ((_tbl16258_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#begin-annotation false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#lambda false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#case-lambda false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#let-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#letrec-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#letrec*-values false))
           (let () (declare (not safe)) (table-set! _tbl16258_ '%#quote false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#quote-syntax false))
           (let () (declare (not safe)) (table-set! _tbl16258_ '%#call false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#call-unchecked false))
           (let () (declare (not safe)) (table-set! _tbl16258_ '%#if false))
           (let () (declare (not safe)) (table-set! _tbl16258_ '%#ref false))
           (let () (declare (not safe)) (table-set! _tbl16258_ '%#set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#struct-instance? false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#struct-direct-instance? false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#struct-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#struct-set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#struct-direct-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#struct-direct-set! false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#struct-unchecked-ref false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16258_ '%#struct-unchecked-set! false))
           _tbl16258_))))
    (define gxc#&false-special-form
      (make-promise
       (lambda ()
         (let ((_tbl16254_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let () (declare (not safe)) (table-set! _tbl16254_ '%#begin false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#begin-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#begin-foreign false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#module false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#import false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#export false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#provide false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#extern false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#define-values false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#define-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#define-alias false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16254_ '%#declare false))
           _tbl16254_))))
    (define gxc#&false
      (make-promise
       (lambda ()
         (let ((_tbl16250_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17749 (force gxc#&false-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16250_ __tmp17749))
           (let ((__tmp17750 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl16250_ __tmp17750))
           _tbl16250_))))
    (define gxc#&collect-bindings
      (make-promise
       (lambda ()
         (let ((_tbl16246_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17751 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16246_ __tmp17751))
           (let ((__tmp17752 (force gxc#&void-special-form)))
             (declare (not safe))
             (hash-copy! _tbl16246_ __tmp17752))
           (let ()
             (declare (not safe))
             (table-set! _tbl16246_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16246_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16246_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16246_
              '%#define-values
              gxc#collect-bindings-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16246_
              '%#define-syntax
              gxc#collect-bindings-define-syntax%))
           _tbl16246_))))
    (define gxc#apply-collect-bindings
      (lambda (_stx16239_ . _args16241_)
        (let ((__tmp17754
               (lambda () (apply gxc#compile-e _stx16239_ _args16241_)))
              (__tmp17753 (force gxc#&collect-bindings)))
          (declare (not safe))
          (call-with-parameters
           __tmp17754
           gxc#current-compile-methods
           __tmp17753))))
    (define gxc#&lift-modules
      (make-promise
       (lambda ()
         (let ((_tbl16236_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17755 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl16236_ __tmp17755))
           (let ()
             (declare (not safe))
             (table-set! _tbl16236_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16236_ '%#module gxc#lift-modules-module%))
           _tbl16236_))))
    (define gxc#apply-lift-modules
      (lambda (_stx16229_ . _args16231_)
        (let ((__tmp17757
               (lambda () (apply gxc#compile-e _stx16229_ _args16231_)))
              (__tmp17756 (force gxc#&lift-modules)))
          (declare (not safe))
          (call-with-parameters
           __tmp17757
           gxc#current-compile-methods
           __tmp17756))))
    (define gxc#&find-runtime-code
      (make-promise
       (lambda ()
         (let ((_tbl16226_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#begin gxc#find-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#begin-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#begin-foreign true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#begin-annotation true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#module false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#import false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#export false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#provide false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#extern false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#define-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#define-syntax false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#define-alias false))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#declare false))
           (let () (declare (not safe)) (table-set! _tbl16226_ '%#lambda true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#case-lambda true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#let-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#letrec-values true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#letrec*-values true))
           (let () (declare (not safe)) (table-set! _tbl16226_ '%#quote true))
           (let () (declare (not safe)) (table-set! _tbl16226_ '%#call true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#call-unchecked true))
           (let () (declare (not safe)) (table-set! _tbl16226_ '%#if true))
           (let () (declare (not safe)) (table-set! _tbl16226_ '%#ref true))
           (let () (declare (not safe)) (table-set! _tbl16226_ '%#set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#struct-instance? true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#struct-direct-instance? true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#struct-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#struct-set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#struct-direct-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#struct-direct-set! true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#struct-unchecked-ref true))
           (let ()
             (declare (not safe))
             (table-set! _tbl16226_ '%#struct-unchecked-set! true))
           _tbl16226_))))
    (define gxc#apply-find-runtime-code
      (lambda (_stx16219_ . _args16221_)
        (let ((__tmp17759
               (lambda () (apply gxc#compile-e _stx16219_ _args16221_)))
              (__tmp17758 (force gxc#&find-runtime-code)))
          (declare (not safe))
          (call-with-parameters
           __tmp17759
           gxc#current-compile-methods
           __tmp17758))))
    (define gxc#&find-lambda-expression
      (make-promise
       (lambda ()
         (let ((_tbl16216_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17760 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl16216_ __tmp17760))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16216_
              '%#begin
              gxc#find-lambda-expression-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16216_
              '%#begin-annotation
              gxc#find-lambda-expression-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16216_ '%#lambda values))
           (let ()
             (declare (not safe))
             (table-set! _tbl16216_ '%#case-lambda values))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16216_
              '%#let-values
              gxc#find-lambda-expression-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16216_
              '%#letrec-values
              gxc#find-lambda-expression-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16216_
              '%#letrec*-values
              gxc#find-lambda-expression-let-values%))
           _tbl16216_))))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx16209_ . _args16211_)
        (let ((__tmp17762
               (lambda () (apply gxc#compile-e _stx16209_ _args16211_)))
              (__tmp17761 (force gxc#&find-lambda-expression)))
          (declare (not safe))
          (call-with-parameters
           __tmp17762
           gxc#current-compile-methods
           __tmp17761))))
    (define gxc#&count-values
      (make-promise
       (lambda ()
         (let ((_tbl16206_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17763 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl16206_ __tmp17763))
           (let ()
             (declare (not safe))
             (table-set! _tbl16206_ '%#begin gxc#count-values-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16206_
              '%#begin-annotation
              gxc#count-values-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16206_ '%#lambda gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16206_ '%#case-lambda gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16206_
              '%#let-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16206_
              '%#letrec-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16206_
              '%#letrec*-values
              gxc#count-values-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16206_ '%#quote gxc#count-values-single%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16206_ '%#call gxc#count-values-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16206_ '%#call-unchecked gxc#count-values-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16206_ '%#if gxc#count-values-if%))
           _tbl16206_))))
    (define gxc#apply-count-values
      (lambda (_stx16199_ . _args16201_)
        (let ((__tmp17765
               (lambda () (apply gxc#compile-e _stx16199_ _args16201_)))
              (__tmp17764 (force gxc#&count-values)))
          (declare (not safe))
          (call-with-parameters
           __tmp17765
           gxc#current-compile-methods
           __tmp17764))))
    (define gxc#&generate-runtime-empty
      (make-promise
       (lambda ()
         (let ((_tbl16196_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#begin gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#begin-syntax
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#begin-foreign
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#begin-annotation
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#module gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#import gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#export gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#provide gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#extern gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#define-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#define-syntax
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#define-alias
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#declare gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#lambda gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#case-lambda gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#let-values gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#letrec-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#letrec*-values
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#quote gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#call gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#call-unchecked
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#if gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#ref gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#set! gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#struct-instance?
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#struct-direct-instance?
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#struct-ref gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set! _tbl16196_ '%#struct-set! gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#struct-direct-ref
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#struct-direct-set!
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#struct-unchecked-ref
              gxc#generate-runtime-empty))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16196_
              '%#struct-unchecked-set!
              gxc#generate-runtime-empty))
           _tbl16196_))))
    (define gxc#&generate-loader
      (make-promise
       (lambda ()
         (let ((_tbl16192_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17766 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl16192_ __tmp17766))
           (let ()
             (declare (not safe))
             (table-set! _tbl16192_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16192_
              '%#import
              gxc#generate-runtime-loader-import%))
           _tbl16192_))))
    (define gxc#apply-generate-loader
      (lambda (_stx16185_ . _args16187_)
        (let ((__tmp17768
               (lambda () (apply gxc#compile-e _stx16185_ _args16187_)))
              (__tmp17767 (force gxc#&generate-loader)))
          (declare (not safe))
          (call-with-parameters
           __tmp17768
           gxc#current-compile-methods
           __tmp17767))))
    (define gxc#&generate-runtime
      (make-promise
       (lambda ()
         (let ((_tbl16182_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17769 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl16182_ __tmp17769))
           (let ()
             (declare (not safe))
             (table-set! _tbl16182_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#begin-foreign
              gxc#generate-runtime-begin-foreign%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#begin-annotation
              gxc#generate-runtime-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#define-values
              gxc#generate-runtime-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16182_ '%#declare gxc#generate-runtime-declare%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16182_ '%#lambda gxc#generate-runtime-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#case-lambda
              gxc#generate-runtime-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#let-values
              gxc#generate-runtime-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#letrec-values
              gxc#generate-runtime-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#letrec*-values
              gxc#generate-runtime-letrec*-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16182_ '%#quote gxc#generate-runtime-quote%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#quote-syntax
              gxc#generate-runtime-quote-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16182_ '%#call gxc#generate-runtime-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#call-unchecked
              gxc#generate-runtime-call-unchecked%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16182_ '%#if gxc#generate-runtime-if%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16182_ '%#ref gxc#generate-runtime-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16182_ '%#set! gxc#generate-runtime-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#struct-instance?
              gxc#generate-runtime-struct-instancep%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#struct-direct-instance?
              gxc#generate-runtime-struct-direct-instancep%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#struct-ref
              gxc#generate-runtime-struct-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#struct-set!
              gxc#generate-runtime-struct-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#struct-direct-ref
              gxc#generate-runtime-struct-direct-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#struct-direct-set!
              gxc#generate-runtime-struct-direct-setq%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#struct-unchecked-ref
              gxc#generate-runtime-struct-unchecked-ref%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16182_
              '%#struct-unchecked-set!
              gxc#generate-runtime-struct-unchecked-setq%))
           _tbl16182_))))
    (define gxc#apply-generate-runtime
      (lambda (_stx16175_ . _args16177_)
        (let ((__tmp17771
               (lambda () (apply gxc#compile-e _stx16175_ _args16177_)))
              (__tmp17770 (force gxc#&generate-runtime)))
          (declare (not safe))
          (call-with-parameters
           __tmp17771
           gxc#current-compile-methods
           __tmp17770))))
    (define gxc#&generate-runtime-phi
      (make-promise
       (lambda ()
         (let ((_tbl16172_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17772 (force gxc#&generate-runtime)))
             (declare (not safe))
             (hash-copy! _tbl16172_ __tmp17772))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16172_
              '%#define-runtime
              gxc#generate-runtime-phi-define-runtime%))
           _tbl16172_))))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx16165_ . _args16167_)
        (let ((__tmp17774
               (lambda () (apply gxc#compile-e _stx16165_ _args16167_)))
              (__tmp17773 (force gxc#&generate-runtime-phi)))
          (declare (not safe))
          (call-with-parameters
           __tmp17774
           gxc#current-compile-methods
           __tmp17773))))
    (define gxc#&collect-expression-refs
      (make-promise
       (lambda ()
         (let ((_tbl16162_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let () (declare (not safe)) (table-set! _tbl16162_ '%#quote void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#quote-syntax void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#ref gxc#collect-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#set! gxc#collect-refs-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl16162_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16162_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl16162_))))
    (define gxc#apply-collect-expression-refs
      (lambda (_stx16155_ . _args16157_)
        (let ((__tmp17776
               (lambda () (apply gxc#compile-e _stx16155_ _args16157_)))
              (__tmp17775 (force gxc#&collect-expression-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp17776
           gxc#current-compile-methods
           __tmp17775))))
    (define gxc#&generate-meta
      (make-promise
       (lambda ()
         (let ((_tbl16152_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp17777 (force gxc#&void-expression)))
             (declare (not safe))
             (hash-copy! _tbl16152_ __tmp17777))
           (let ()
             (declare (not safe))
             (table-set! _tbl16152_ '%#begin gxc#generate-meta-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16152_
              '%#begin-syntax
              gxc#generate-meta-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16152_ '%#module gxc#generate-meta-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16152_ '%#import gxc#generate-meta-import%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16152_ '%#export gxc#generate-meta-export%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16152_ '%#provide gxc#generate-meta-provide%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16152_ '%#extern gxc#generate-meta-extern%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16152_
              '%#define-values
              gxc#generate-meta-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16152_
              '%#define-syntax
              gxc#generate-meta-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16152_
              '%#define-alias
              gxc#generate-meta-define-alias%))
           (let ()
             (declare (not safe))
             (table-set! _tbl16152_ '%#begin-foreign void))
           (let ()
             (declare (not safe))
             (table-set! _tbl16152_ '%#declare void))
           _tbl16152_))))
    (define gxc#apply-generate-meta
      (lambda (_stx16145_ . _args16147_)
        (let ((__tmp17779
               (lambda () (apply gxc#compile-e _stx16145_ _args16147_)))
              (__tmp17778 (force gxc#&generate-meta)))
          (declare (not safe))
          (call-with-parameters
           __tmp17779
           gxc#current-compile-methods
           __tmp17778))))
    (define gxc#&generate-meta-phi
      (make-promise
       (lambda ()
         (let ((_tbl16142_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#begin gxc#generate-meta-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#begin-syntax
              gxc#generate-meta-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#define-syntax
              gxc#generate-meta-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#define-alias
              gxc#generate-meta-define-alias%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#define-values
              gxc#generate-meta-phi-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#begin-annotation
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#lambda gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#case-lambda gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#let-values gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#letrec-values
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#letrec*-values
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#quote gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#quote-syntax
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#call gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#call-unchecked
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#if gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#ref gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#set! gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#struct-instance?
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#struct-direct-instance?
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#struct-ref gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#struct-set! gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#struct-direct-ref
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#struct-direct-set!
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#struct-unchecked-ref
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl16142_
              '%#struct-unchecked-set!
              gxc#generate-meta-phi-expr))
           (let ()
             (declare (not safe))
             (table-set! _tbl16142_ '%#declare void))
           _tbl16142_))))
    (define gxc#apply-generate-meta-phi
      (lambda (_stx16135_ . _args16137_)
        (let ((__tmp17781
               (lambda () (apply gxc#compile-e _stx16135_ _args16137_)))
              (__tmp17780 (force gxc#&generate-meta-phi)))
          (declare (not safe))
          (call-with-parameters
           __tmp17781
           gxc#current-compile-methods
           __tmp17780))))
    (define gxc#collect-begin%
      (lambda (_stx16092_ . _args16093_)
        (let* ((_g1609516105_
                (lambda (_g1609616102_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1609616102_))))
               (_g1609416132_
                (lambda (_g1609616108_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1609616108_))
                      (let ((_e1610016110_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1609616108_))))
                        (let ((_hd1609916113_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1610016110_)))
                              (_tl1609816115_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1610016110_))))
                          ((lambda (_L16118_)
                             (for-each
                              (lambda (_g1612716129_)
                                (apply gxc#compile-e
                                       _g1612716129_
                                       _args16093_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L16118_))))
                           _tl1609816115_)))
                      (let ()
                        (declare (not safe))
                        (_g1609516105_ _g1609616108_))))))
          (declare (not safe))
          (_g1609416132_ _stx16092_))))
    (define gxc#collect-begin-syntax%
      (lambda (_stx16088_ . _args16089_)
        (let ((__tmp17784
               (lambda () (apply gxc#collect-begin% _stx16088_ _args16089_)))
              (__tmp17782
               (let ((__tmp17783 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp17783 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp17784
           gx#current-expander-phi
           __tmp17782))))
    (define gxc#collect-module%
      (lambda (_stx16030_ . _args16031_)
        (let* ((_g1603316047_
                (lambda (_g1603416044_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1603416044_))))
               (_g1603216085_
                (lambda (_g1603416050_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1603416050_))
                      (let ((_e1603916052_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1603416050_))))
                        (let ((_hd1603816055_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1603916052_)))
                              (_tl1603716057_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1603916052_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1603716057_))
                              (let ((_e1604216060_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1603716057_))))
                                (let ((_hd1604116063_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1604216060_)))
                                      (_tl1604016065_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1604216060_))))
                                  ((lambda (_L16068_ _L16069_)
                                     (let* ((_ctx16082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L16069_)))
                                            (__tmp17785
                                             (lambda ()
                                               (apply gxc#compile-e
                                                      (##structure-ref
                                                       _ctx16082_
                                                       '11
                                                       gx#module-context::t
                                                       '#f)
                                                      _args16031_))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp17785
                                        gx#current-expander-context
                                        _ctx16082_)))
                                   _tl1604016065_
                                   _hd1604116063_)))
                              (let ()
                                (declare (not safe))
                                (_g1603316047_ _g1603416050_)))))
                      (let ()
                        (declare (not safe))
                        (_g1603316047_ _g1603416050_))))))
          (declare (not safe))
          (_g1603216085_ _stx16030_))))
    (define gxc#collect-begin-annotation%
      (lambda (_stx15962_ . _args15963_)
        (let* ((_g1596515982_
                (lambda (_g1596615979_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1596615979_))))
               (_g1596416027_
                (lambda (_g1596615985_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1596615985_))
                      (let ((_e1597115987_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1596615985_))))
                        (let ((_hd1597015990_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1597115987_)))
                              (_tl1596915992_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1597115987_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1596915992_))
                              (let ((_e1597415995_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1596915992_))))
                                (let ((_hd1597315998_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1597415995_)))
                                      (_tl1597216000_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1597415995_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1597216000_))
                                      (let ((_e1597716003_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1597216000_))))
                                        (let ((_hd1597616006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1597716003_)))
                                              (_tl1597516008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1597716003_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1597516008_))
                                              ((lambda (_L16011_ _L16012_)
                                                 (apply gxc#compile-e
                                                        _L16011_
                                                        _args15963_))
                                               _hd1597616006_
                                               _hd1597315998_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1596515982_
                                                 _g1596615985_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1596515982_ _g1596615985_)))))
                              (let ()
                                (declare (not safe))
                                (_g1596515982_ _g1596615985_)))))
                      (let ()
                        (declare (not safe))
                        (_g1596515982_ _g1596615985_))))))
          (declare (not safe))
          (_g1596416027_ _stx15962_))))
    (define gxc#collect-define-values%
      (lambda (_stx15894_ . _args15895_)
        (let* ((_g1589715914_
                (lambda (_g1589815911_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1589815911_))))
               (_g1589615959_
                (lambda (_g1589815917_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1589815917_))
                      (let ((_e1590315919_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1589815917_))))
                        (let ((_hd1590215922_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1590315919_)))
                              (_tl1590115924_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1590315919_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1590115924_))
                              (let ((_e1590615927_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1590115924_))))
                                (let ((_hd1590515930_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1590615927_)))
                                      (_tl1590415932_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1590615927_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1590415932_))
                                      (let ((_e1590915935_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1590415932_))))
                                        (let ((_hd1590815938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1590915935_)))
                                              (_tl1590715940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1590915935_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1590715940_))
                                              ((lambda (_L15943_ _L15944_)
                                                 (apply gxc#compile-e
                                                        _L15943_
                                                        _args15895_))
                                               _hd1590815938_
                                               _hd1590515930_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1589715914_
                                                 _g1589815917_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1589715914_ _g1589815917_)))))
                              (let ()
                                (declare (not safe))
                                (_g1589715914_ _g1589815917_)))))
                      (let ()
                        (declare (not safe))
                        (_g1589715914_ _g1589815917_))))))
          (declare (not safe))
          (_g1589615959_ _stx15894_))))
    (define gxc#collect-define-syntax%
      (lambda (_stx15825_ . _args15826_)
        (let* ((_g1582815845_
                (lambda (_g1582915842_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1582915842_))))
               (_g1582715891_
                (lambda (_g1582915848_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1582915848_))
                      (let ((_e1583415850_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1582915848_))))
                        (let ((_hd1583315853_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1583415850_)))
                              (_tl1583215855_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1583415850_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1583215855_))
                              (let ((_e1583715858_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1583215855_))))
                                (let ((_hd1583615861_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1583715858_)))
                                      (_tl1583515863_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1583715858_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1583515863_))
                                      (let ((_e1584015866_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1583515863_))))
                                        (let ((_hd1583915869_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1584015866_)))
                                              (_tl1583815871_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1584015866_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1583815871_))
                                              ((lambda (_L15874_ _L15875_)
                                                 (let ((__tmp17788
                                                        (lambda ()
                                                          (apply gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15874_
                         _args15826_)))
               (__tmp17786
                (let ((__tmp17787 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp17787 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp17788
                                                    gx#current-expander-phi
                                                    __tmp17786)))
                                               _hd1583915869_
                                               _hd1583615861_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1582815845_
                                                 _g1582915848_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1582815845_ _g1582915848_)))))
                              (let ()
                                (declare (not safe))
                                (_g1582815845_ _g1582915848_)))))
                      (let ()
                        (declare (not safe))
                        (_g1582815845_ _g1582915848_))))))
          (declare (not safe))
          (_g1582715891_ _stx15825_))))
    (define gxc#collect-body-lambda%
      (lambda (_stx15757_ . _args15758_)
        (let* ((_g1576015777_
                (lambda (_g1576115774_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1576115774_))))
               (_g1575915822_
                (lambda (_g1576115780_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1576115780_))
                      (let ((_e1576615782_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1576115780_))))
                        (let ((_hd1576515785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1576615782_)))
                              (_tl1576415787_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1576615782_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1576415787_))
                              (let ((_e1576915790_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1576415787_))))
                                (let ((_hd1576815793_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1576915790_)))
                                      (_tl1576715795_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1576915790_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1576715795_))
                                      (let ((_e1577215798_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1576715795_))))
                                        (let ((_hd1577115801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1577215798_)))
                                              (_tl1577015803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1577215798_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1577015803_))
                                              ((lambda (_L15806_ _L15807_)
                                                 (apply gxc#compile-e
                                                        _L15806_
                                                        _args15758_))
                                               _hd1577115801_
                                               _hd1576815793_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1576015777_
                                                 _g1576115780_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1576015777_ _g1576115780_)))))
                              (let ()
                                (declare (not safe))
                                (_g1576015777_ _g1576115780_)))))
                      (let ()
                        (declare (not safe))
                        (_g1576015777_ _g1576115780_))))))
          (declare (not safe))
          (_g1575915822_ _stx15757_))))
    (define gxc#collect-body-case-lambda%
      (lambda (_stx15639_ . _args15640_)
        (let* ((_g1564215670_
                (lambda (_g1564315667_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1564315667_))))
               (_g1564115754_
                (lambda (_g1564315673_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1564315673_))
                      (let ((_e1564815675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1564315673_))))
                        (let ((_hd1564715678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1564815675_)))
                              (_tl1564615680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1564815675_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1564615680_))
                              (let ((_g17789_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1564615680_
                                        '0))))
                                (begin
                                  (let ((_g17790_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17789_)
                                               (##vector-length _g17789_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17790_ 2)))
                                        (error "Context expects 2 values"
                                               _g17790_)))
                                  (let ((_target1564915683_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17789_ 0)))
                                        (_tl1565115685_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17789_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1565115685_))
                                        (letrec ((_loop1565215688_
                                                  (lambda (_hd1565015691_
                                                           _body1565615693_
                                                           _hd1565715695_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1565015691_))
                                                        (let ((_e1565315698_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1565015691_))))
                  (let ((_lp-hd1565415701_
                         (let () (declare (not safe)) (##car _e1565315698_)))
                        (_lp-tl1565515703_
                         (let () (declare (not safe)) (##cdr _e1565315698_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd1565415701_))
                        (let ((_e1566215706_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd1565415701_))))
                          (let ((_hd1566115709_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1566215706_)))
                                (_tl1566015711_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1566215706_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1566015711_))
                                (let ((_e1566515714_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl1566015711_))))
                                  (let ((_hd1566415717_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1566515714_)))
                                        (_tl1566315719_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1566515714_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1566315719_))
                                        (let ((__tmp17793
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd1566415717_
                                                       _body1565615693_)))
                                              (__tmp17792
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd1566115709_
                                                       _hd1565715695_))))
                                          (declare (not safe))
                                          (_loop1565215688_
                                           _lp-tl1565515703_
                                           __tmp17793
                                           __tmp17792))
                                        (let ()
                                          (declare (not safe))
                                          (_g1564215670_ _g1564315673_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1564215670_ _g1564315673_)))))
                        (let ()
                          (declare (not safe))
                          (_g1564215670_ _g1564315673_)))))
                (let ((_body1565815722_ (reverse _body1565615693_))
                      (_hd1565915724_ (reverse _hd1565715695_)))
                  ((lambda (_L15727_ _L15728_)
                     (for-each
                      (lambda (_g1574215744_)
                        (apply gxc#compile-e _g1574215744_ _args15640_))
                      (let ((__tmp17791
                             (lambda (_g1574615749_ _g1574715751_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g1574615749_ _g1574715751_)))))
                        (declare (not safe))
                        (foldr1 __tmp17791 '() _L15727_))))
                   _body1565815722_
                   _hd1565915724_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1565215688_
                                             _target1564915683_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1564215670_ _g1564315673_))))))
                              (let ()
                                (declare (not safe))
                                (_g1564215670_ _g1564315673_)))))
                      (let ()
                        (declare (not safe))
                        (_g1564215670_ _g1564315673_))))))
          (declare (not safe))
          (_g1564115754_ _stx15639_))))
    (define gxc#collect-body-let-values%
      (lambda (_stx15492_ . _args15493_)
        (let* ((_g1549515530_
                (lambda (_g1549615527_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1549615527_))))
               (_g1549415636_
                (lambda (_g1549615533_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1549615533_))
                      (let ((_e1550215535_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1549615533_))))
                        (let ((_hd1550115538_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1550215535_)))
                              (_tl1550015540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1550215535_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1550015540_))
                              (let ((_e1550515543_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1550015540_))))
                                (let ((_hd1550415546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1550515543_)))
                                      (_tl1550315548_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1550515543_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1550415546_))
                                      (let ((_g17794_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1550415546_
                                                '0))))
                                        (begin
                                          (let ((_g17795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17794_)
                                                       (##vector-length
                                                        _g17794_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17795_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17795_)))
                                          (let ((_target1550615551_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g17794_ 0)))
                                                (_tl1550815553_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g17794_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1550815553_))
                                                (letrec ((_loop1550915556_
                                                          (lambda (_hd1550715559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1551315561_
                           _hd1551415563_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1550715559_))
                        (let ((_e1551015566_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1550715559_))))
                          (let ((_lp-hd1551115569_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1551015566_)))
                                (_lp-tl1551215571_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1551015566_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd1551115569_))
                                (let ((_e1551915574_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd1551115569_))))
                                  (let ((_hd1551815577_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1551915574_)))
                                        (_tl1551715579_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1551915574_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1551715579_))
                                        (let ((_e1552215582_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1551715579_))))
                                          (let ((_hd1552115585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1552215582_)))
                                                (_tl1552015587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1552215582_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1552015587_))
                                                (let ((__tmp17799
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1552115585_
                                                               _expr1551315561_)))
                                                      (__tmp17798
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1551815577_
                                                               _hd1551415563_))))
                                                  (declare (not safe))
                                                  (_loop1550915556_
                                                   _lp-tl1551215571_
                                                   __tmp17799
                                                   __tmp17798))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1549515530_
                                                   _g1549615533_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1549515530_ _g1549615533_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1549515530_ _g1549615533_)))))
                        (let ((_expr1551515590_ (reverse _expr1551315561_))
                              (_hd1551615592_ (reverse _hd1551415563_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1550315548_))
                              (let ((_e1552515595_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1550315548_))))
                                (let ((_hd1552415598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1552515595_)))
                                      (_tl1552315600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1552515595_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1552315600_))
                                      ((lambda (_L15603_ _L15604_ _L15605_)
                                         (for-each
                                          (lambda (_g1562415626_)
                                            (apply gxc#compile-e
                                                   _g1562415626_
                                                   _args15493_))
                                          (let ((__tmp17797
                                                 (lambda (_g1562815631_
                                                          _g1562915633_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1562815631_
                                                           _g1562915633_))))
                                                (__tmp17796
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L15603_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp17797
                                                    __tmp17796
                                                    _L15604_))))
                                       _hd1552415598_
                                       _expr1551515590_
                                       _hd1551615592_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1549515530_ _g1549615533_)))))
                              (let ()
                                (declare (not safe))
                                (_g1549515530_ _g1549615533_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop1550915556_
                                                     _target1550615551_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1549515530_
                                                   _g1549615533_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1549515530_ _g1549615533_)))))
                              (let ()
                                (declare (not safe))
                                (_g1549515530_ _g1549615533_)))))
                      (let ()
                        (declare (not safe))
                        (_g1549515530_ _g1549615533_))))))
          (declare (not safe))
          (_g1549415636_ _stx15492_))))
    (define gxc#collect-body-setq%
      (lambda (_stx15424_ . _args15425_)
        (let* ((_g1542715444_
                (lambda (_g1542815441_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1542815441_))))
               (_g1542615489_
                (lambda (_g1542815447_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1542815447_))
                      (let ((_e1543315449_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1542815447_))))
                        (let ((_hd1543215452_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1543315449_)))
                              (_tl1543115454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1543315449_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1543115454_))
                              (let ((_e1543615457_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1543115454_))))
                                (let ((_hd1543515460_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1543615457_)))
                                      (_tl1543415462_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1543615457_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1543415462_))
                                      (let ((_e1543915465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1543415462_))))
                                        (let ((_hd1543815468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1543915465_)))
                                              (_tl1543715470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1543915465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1543715470_))
                                              ((lambda (_L15473_ _L15474_)
                                                 (apply gxc#compile-e
                                                        _L15473_
                                                        _args15425_))
                                               _hd1543815468_
                                               _hd1543515460_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1542715444_
                                                 _g1542815447_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1542715444_ _g1542815447_)))))
                              (let ()
                                (declare (not safe))
                                (_g1542715444_ _g1542815447_)))))
                      (let ()
                        (declare (not safe))
                        (_g1542715444_ _g1542815447_))))))
          (declare (not safe))
          (_g1542615489_ _stx15424_))))
    (define gxc#collect-operands
      (lambda (_stx15337_ . _args15338_)
        (let* ((_g1534015359_
                (lambda (_g1534115356_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1534115356_))))
               (_g1533915421_
                (lambda (_g1534115362_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1534115362_))
                      (let ((_e1534515364_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1534115362_))))
                        (let ((_hd1534415367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1534515364_)))
                              (_tl1534315369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1534515364_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1534315369_))
                              (let ((_g17800_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1534315369_
                                        '0))))
                                (begin
                                  (let ((_g17801_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17800_)
                                               (##vector-length _g17800_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17801_ 2)))
                                        (error "Context expects 2 values"
                                               _g17801_)))
                                  (let ((_target1534615372_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17800_ 0)))
                                        (_tl1534815374_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g17800_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1534815374_))
                                        (letrec ((_loop1534915377_
                                                  (lambda (_hd1534715380_
                                                           _rands1535315382_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1534715380_))
                                                        (let ((_e1535015385_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1534715380_))))
                  (let ((_lp-hd1535115388_
                         (let () (declare (not safe)) (##car _e1535015385_)))
                        (_lp-tl1535215390_
                         (let () (declare (not safe)) (##cdr _e1535015385_))))
                    (let ((__tmp17803
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1535115388_ _rands1535315382_))))
                      (declare (not safe))
                      (_loop1534915377_ _lp-tl1535215390_ __tmp17803))))
                (let ((_rands1535415393_ (reverse _rands1535315382_)))
                  ((lambda (_L15396_)
                     (for-each
                      (lambda (_g1540915411_)
                        (apply gxc#compile-e _g1540915411_ _args15338_))
                      (let ((__tmp17802
                             (lambda (_g1541315416_ _g1541415418_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g1541315416_ _g1541415418_)))))
                        (declare (not safe))
                        (foldr1 __tmp17802 '() _L15396_))))
                   _rands1535415393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop1534915377_
                                             _target1534615372_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1534015359_ _g1534115362_))))))
                              (let ()
                                (declare (not safe))
                                (_g1534015359_ _g1534115362_)))))
                      (let ()
                        (declare (not safe))
                        (_g1534015359_ _g1534115362_))))))
          (declare (not safe))
          (_g1533915421_ _stx15337_))))
    (define gxc#collect-bindings-define-values%
      (lambda (_stx15268_)
        (let* ((_g1527015287_
                (lambda (_g1527115284_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1527115284_))))
               (_g1526915334_
                (lambda (_g1527115290_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1527115290_))
                      (let ((_e1527615292_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1527115290_))))
                        (let ((_hd1527515295_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1527615292_)))
                              (_tl1527415297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1527615292_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1527415297_))
                              (let ((_e1527915300_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1527415297_))))
                                (let ((_hd1527815303_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1527915300_)))
                                      (_tl1527715305_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1527915300_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1527715305_))
                                      (let ((_e1528215308_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1527715305_))))
                                        (let ((_hd1528115311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1528215308_)))
                                              (_tl1528015313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1528215308_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1528015313_))
                                              ((lambda (_L15316_ _L15317_)
                                                 (let ((__tmp17804
                                                        (lambda (_bind15332_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind15332_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind15332_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp17804
                                                    _L15317_)))
                                               _hd1528115311_
                                               _hd1527815303_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1527015287_
                                                 _g1527115290_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1527015287_ _g1527115290_)))))
                              (let ()
                                (declare (not safe))
                                (_g1527015287_ _g1527115290_)))))
                      (let ()
                        (declare (not safe))
                        (_g1527015287_ _g1527115290_))))))
          (declare (not safe))
          (_g1526915334_ _stx15268_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_stx15201_)
        (let* ((_g1520315220_
                (lambda (_g1520415217_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1520415217_))))
               (_g1520215265_
                (lambda (_g1520415223_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1520415223_))
                      (let ((_e1520915225_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1520415223_))))
                        (let ((_hd1520815228_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1520915225_)))
                              (_tl1520715230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1520915225_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1520715230_))
                              (let ((_e1521215233_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1520715230_))))
                                (let ((_hd1521115236_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1521215233_)))
                                      (_tl1521015238_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1521215233_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1521015238_))
                                      (let ((_e1521515241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1521015238_))))
                                        (let ((_hd1521415244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1521515241_)))
                                              (_tl1521315246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1521515241_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1521315246_))
                                              ((lambda (_L15249_ _L15250_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L15250_
                                                    '#t)))
                                               _hd1521415244_
                                               _hd1521115236_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1520315220_
                                                 _g1520415223_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1520315220_ _g1520415223_)))))
                              (let ()
                                (declare (not safe))
                                (_g1520315220_ _g1520415223_)))))
                      (let ()
                        (declare (not safe))
                        (_g1520315220_ _g1520415223_))))))
          (declare (not safe))
          (_g1520215265_ _stx15201_))))
    (define gxc#lift-modules-module%
      (lambda (_stx15143_ _modules15144_)
        (let* ((_g1514615160_
                (lambda (_g1514715157_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1514715157_))))
               (_g1514515198_
                (lambda (_g1514715163_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1514715163_))
                      (let ((_e1515215165_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1514715163_))))
                        (let ((_hd1515115168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1515215165_)))
                              (_tl1515015170_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1515215165_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1515015170_))
                              (let ((_e1515515173_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1515015170_))))
                                (let ((_hd1515415176_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1515515173_)))
                                      (_tl1515315178_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1515515173_))))
                                  ((lambda (_L15181_ _L15182_)
                                     (let ((_ctx15195_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L15182_))))
                                       (set-box!
                                        _modules15144_
                                        (let ((__tmp17805
                                               (unbox _modules15144_)))
                                          (declare (not safe))
                                          (cons _ctx15195_ __tmp17805)))
                                       (let ((__tmp17806
                                              (lambda ()
                                                (let ((__tmp17807
                                                       (##structure-ref
                                                        _ctx15195_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e
                                                   __tmp17807
                                                   _modules15144_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp17806
                                          gx#current-expander-context
                                          _ctx15195_))))
                                   _tl1515315178_
                                   _hd1515415176_)))
                              (let ()
                                (declare (not safe))
                                (_g1514615160_ _g1514715163_)))))
                      (let ()
                        (declare (not safe))
                        (_g1514615160_ _g1514715163_))))))
          (declare (not safe))
          (_g1514515198_ _stx15143_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls1509915101_ (gxc#current-compile-decls)))
          (if _decls1509915101_
              (let ((_decls15104_ _decls1509915101_))
                (let _lp15106_ ((_rest15108_ _decls15104_))
                  (let* ((_rest1510915117_ _rest15108_)
                         (_else1511115125_ (lambda () '#f))
                         (_K1511315131_
                          (lambda (_decls15128_ _decl15129_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl15129_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl15129_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp15106_ _decls15128_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1510915117_))
                        (let ((_hd1511415134_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1510915117_)))
                              (_tl1511515136_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1510915117_))))
                          (let* ((_decl15139_ _hd1511415134_)
                                 (_decls15141_ _tl1511515136_))
                            (declare (not safe))
                            (_K1511315131_ _decls15141_ _decl15139_)))
                        (let () (declare (not safe)) (_else1511115125_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id15093_ _syntax?15094_)
        (let ((_eid15096_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id15093_))
                '1
                gx#binding::t
                '#f))
              (_ht15097_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid15096_)
              '#!void
              (let ((__tmp17808
                     (let ((__tmp17809
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid15096_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp17809 _syntax?15094_))))
                (declare (not safe))
                (table-set! _ht15097_ _eid15096_ __tmp17808))))))
    (define gxc#runtime-identifier=?
      (lambda (_id115086_ _id215087_)
        (letrec ((_symbol-e15089_
                  (lambda (_id15091_)
                    (if (let () (declare (not safe)) (symbol? _id15091_))
                        _id15091_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id15091_))))))
          (let ((__tmp17811
                 (let () (declare (not safe)) (_symbol-e15089_ _id115086_)))
                (__tmp17810
                 (let () (declare (not safe)) (_symbol-e15089_ _id215087_))))
            (declare (not safe))
            (eq? __tmp17811 __tmp17810)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id15064_)
        (let ((_$e15066_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id15064_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id15064_))
                   '#f)))
          (if _$e15066_
              ((lambda (_bind15069_)
                 (let ((_eid15071_
                        (##structure-ref _bind15069_ '1 gx#binding::t '#f))
                       (_ht15072_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid15071_)
                       _eid15071_
                       (let ((_$e15074_
                              (let ()
                                (declare (not safe))
                                (table-ref _ht15072_ _eid15071_ '#f))))
                         (if _$e15074_
                             (values _$e15074_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind15069_
                                    'gx#local-binding::t))
                                 (let ((_gid15077_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid15071_))))
                                   (let ()
                                     (declare (not safe))
                                     (table-set!
                                      _ht15072_
                                      _eid15071_
                                      _gid15077_))
                                   _gid15077_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind15069_
                                        'gx#module-binding::t))
                                     (let ((_gid15084_
                                            (let ((_$e15079_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind15069_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e15079_
                                                  ((lambda (_ns15082_)
                                                     (make-symbol
                                                      _ns15082_
                                                      '"#"
                                                      _eid15071_))
                                                   _$e15079_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid15071_))))))
                                       (let ()
                                         (declare (not safe))
                                         (table-set!
                                          _ht15072_
                                          _eid15071_
                                          _gid15084_))
                                       _gid15084_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id15064_
                                        _eid15071_
                                        _bind15069_)))))))))
               _$e15066_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id15064_)))
                  (let () (declare (not safe)) (gx#stx-e _id15064_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id15064_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id15062_)
        (if (let () (declare (not safe)) (gx#identifier? _id15062_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id15062_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym15042_ _quote?15043_)
        (let* ((_ht15045_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e15047_
                (let ()
                  (declare (not safe))
                  (table-ref _ht15045_ _sym15042_ '#f))))
          (if _$e15047_
              (values _$e15047_)
              (let ((_g15050_
                     (if _quote?15043_
                         (make-symbol
                          '"__"
                          _sym15042_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym15042_ '"_"))))
                (let ()
                  (declare (not safe))
                  (table-set! _ht15045_ _sym15042_ _g15050_))
                _g15050_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym15055_)
        (let ((_quote?15057_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym15055_
           _quote?15057_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g17813_
        (let ((_g17812_ (let () (declare (not safe)) (##length _g17813_))))
          (cond ((let () (declare (not safe)) (##fx= _g17812_ 1))
                 (apply (lambda (_sym15055_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym15055_)))
                        _g17813_))
                ((let () (declare (not safe)) (##fx= _g17812_ 2))
                 (apply (lambda (_sym15059_ _quote?15060_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym15059_
                             _quote?15060_)))
                        _g17813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g17813_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id15039_)
        (let ((__tmp17814
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id15039_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp17814))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key14999_)
        (if (interned-symbol? _key14999_)
            _key14999_
            (if (uninterned-symbol? _key14999_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key14999_))
                (let* ((_key1500015007_ _key14999_)
                       (_E1500215011_
                        (lambda ()
                          (error '"No clause matching" _key1500015007_)))
                       (_K1500315027_
                        (lambda (_mark15014_ _eid15015_)
                          (let ((_$e15017_
                                 (##structure-ref
                                  _mark15014_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e15017_
                                ((lambda (_ht15020_)
                                   (let ((_$e15022_
                                          (let ()
                                            (declare (not safe))
                                            (table-ref
                                             _ht15020_
                                             _eid15015_
                                             '#f))))
                                     (if _$e15022_
                                         ((lambda (_id15025_)
                                            (if (interned-symbol? _id15025_)
                                                _id15025_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id15025_))))
                                          _$e15022_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid15015_)))))
                                 _$e15017_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid15015_)))))))
                  (if (let () (declare (not safe)) (##pair? _key1500015007_))
                      (let ((_hd1500415030_
                             (let ()
                               (declare (not safe))
                               (##car _key1500015007_)))
                            (_tl1500515032_
                             (let ()
                               (declare (not safe))
                               (##cdr _key1500015007_))))
                        (let* ((_eid15035_ _hd1500415030_)
                               (_mark15037_ _tl1500515032_))
                          (declare (not safe))
                          (_K1500315027_ _mark15037_ _eid15035_)))
                      (let () (declare (not safe)) (_E1500215011_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top14986_)
        (if _top14986_
            (let ((_ns14988_
                   (##structure-ref
                    (let ((__tmp17815 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp17815))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi14989_ (gx#current-expander-phi)))
              (if _ns14988_
                  (if (fxpositive? _phi14989_)
                      (make-symbol
                       _ns14988_
                       '"["
                       (number->string _phi14989_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol _ns14988_ '"#_" (gensym) '"_"))
                  (if (fxpositive? _phi14989_)
                      (make-symbol
                       '"["
                       (number->string _phi14989_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol '"_" (gensym) '"_"))))
            (make-symbol '"_" (gensym) '"_"))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top14995_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top14995_))))
    (define gxc#generate-runtime-temporary
      (lambda _g17817_
        (let ((_g17816_ (let () (declare (not safe)) (##length _g17817_))))
          (cond ((let () (declare (not safe)) (##fx= _g17816_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g17817_))
                ((let () (declare (not safe)) (##fx= _g17816_ 1))
                 (apply (lambda (_top14997_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top14997_)))
                        _g17817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g17817_))))))
    (define gxc#generate-runtime-empty (lambda (_stx14983_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_stx14835_)
        (letrec ((_simplify14837_
                  (lambda (_body14881_)
                    (let _lp14883_ ((_rest14885_ _body14881_) (_r14886_ '()))
                      (let* ((_rest1488714895_ _rest14885_)
                             (_else1488914903_ (lambda () (reverse _r14886_)))
                             (_K1489114971_
                              (lambda (_rest14906_ _hd14907_)
                                (let* ((_hd1490814924_ _hd14907_)
                                       (_else1491214932_
                                        (lambda ()
                                          (let ((__tmp17818
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd14907_ _r14886_))))
                                            (declare (not safe))
                                            (_lp14883_
                                             _rest14906_
                                             __tmp17818)))))
                                  (let ((_K1492014961_
                                         (lambda (_exprs14959_)
                                           (let ((__tmp17819
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest14906_
                                                            _exprs14959_))))
                                             (declare (not safe))
                                             (_lp14883_ __tmp17819 _r14886_))))
                                        (_K1491514945_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest14906_))
                                               (let ((__tmp17820
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd14907_
                                                              _r14886_))))
                                                 (declare (not safe))
                                                 (_lp14883_
                                                  _rest14906_
                                                  __tmp17820))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp14883_
                                                  _rest14906_
                                                  _r14886_)))))
                                        (_K1491414937_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest14906_))
                                               (let ((__tmp17821
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd14907_
                                                              _r14886_))))
                                                 (declare (not safe))
                                                 (_lp14883_
                                                  _rest14906_
                                                  __tmp17821))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp14883_
                                                  _rest14906_
                                                  _r14886_))))))
                                    (let ((_try-match1491114940_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd1490814924_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K1491414937_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else1491214932_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1490814924_))
                                          (let ((_tl1492214966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1490814924_)))
                                                (_hd1492114964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1490814924_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1492114964_
                                                         'begin))
                                                (let ((_exprs14969_
                                                       _tl1492214966_))
                                                  (declare (not safe))
                                                  (_K1492014961_ _exprs14969_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd1492114964_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1492214966_))
                                                        (let ((_tl1491914953_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1492214966_))))
                  (if (let () (declare (not safe)) (##null? _tl1491914953_))
                      (let () (declare (not safe)) (_K1491514945_))
                      (let () (declare (not safe)) (_try-match1491114940_))))
                (let () (declare (not safe)) (_try-match1491114940_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match1491114940_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match1491114940_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1488714895_))
                            (let ((_hd1489214974_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1488714895_)))
                                  (_tl1489314976_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1488714895_))))
                              (let* ((_hd14979_ _hd1489214974_)
                                     (_rest14981_ _tl1489314976_))
                                (declare (not safe))
                                (_K1489114971_ _rest14981_ _hd14979_)))
                            (let ()
                              (declare (not safe))
                              (_else1488914903_))))))))
          (let* ((_g1483914849_
                  (lambda (_g1484014846_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g1484014846_))))
                 (_g1483814878_
                  (lambda (_g1484014852_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g1484014852_))
                        (let ((_e1484414854_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g1484014852_))))
                          (let ((_hd1484314857_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1484414854_)))
                                (_tl1484214859_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1484414854_))))
                            ((lambda (_L14862_)
                               (let* ((_body14873_
                                       (map gxc#compile-e _L14862_))
                                      (_body14875_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify14837_ _body14873_))))
                                 (if (fx= (length _body14875_) '1)
                                     (car _body14875_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body14875_)))))
                             _tl1484214859_)))
                        (let ()
                          (declare (not safe))
                          (_g1483914849_ _g1484014852_))))))
            (declare (not safe))
            (_g1483814878_ _stx14835_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_stx14797_)
        (let* ((_g1479914809_
                (lambda (_g1480014806_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1480014806_))))
               (_g1479814832_
                (lambda (_g1480014812_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1480014812_))
                      (let ((_e1480414814_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1480014812_))))
                        (let ((_hd1480314817_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1480414814_)))
                              (_tl1480214819_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1480414814_))))
                          ((lambda (_L14822_)
                             (let ((__tmp17822
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L14822_))))
                               (declare (not safe))
                               (cons 'begin __tmp17822)))
                           _tl1480214819_)))
                      (let ()
                        (declare (not safe))
                        (_g1479914809_ _g1480014812_))))))
          (declare (not safe))
          (_g1479814832_ _stx14797_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_stx14562_)
        (let* ((___stx1643916440_ _stx14562_)
               (_g1456614618_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1643916440_)))))
          (let ((___kont1644116442_
                 (lambda (_L14779_ _L14780_)
                   (let () (declare (not safe)) (gxc#compile-e _L14779_))))
                (___kont1644316444_
                 (lambda (_L14727_ _L14728_ _L14729_)
                   (let () (declare (not safe)) (gxc#compile-e _L14727_))))
                (___kont1644716448_
                 (lambda (_L14647_ _L14648_)
                   (let ((_decls14663_ (map gx#syntax->datum _L14648_)))
                     (let ((__tmp17825
                            (lambda ()
                              (let ((__tmp17826
                                     (let ((__tmp17829
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls14663_)))
                                           (__tmp17827
                                            (let ((__tmp17828
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L14647_))))
                                              (declare (not safe))
                                              (cons __tmp17828 '()))))
                                       (declare (not safe))
                                       (cons __tmp17829 __tmp17827))))
                                (declare (not safe))
                                (cons 'begin __tmp17826))))
                           (__tmp17823
                            (let ((__tmp17824 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp17824 _decls14663_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp17825
                        gxc#current-compile-decls
                        __tmp17823))))))
            (let* ((___match1649416495_
                    (lambda (_e1458414671_
                             _hd1458314674_
                             _tl1458214676_
                             _e1458714679_
                             _hd1458614682_
                             _tl1458514684_
                             _e1459014687_
                             _hd1458914690_
                             _tl1458814692_
                             ___splice1644516446_
                             _target1459114695_
                             _tl1459314697_)
                      (letrec ((_loop1459414700_
                                (lambda (_hd1459214703_ _param1459814705_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd1459214703_))
                                      (let ((_e1459514708_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd1459214703_))))
                                        (let ((_lp-tl1459714713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1459514708_)))
                                              (_lp-hd1459614711_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1459514708_))))
                                          (let ((__tmp17831
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd1459614711_
                                                         _param1459814705_))))
                                            (declare (not safe))
                                            (_loop1459414700_
                                             _lp-tl1459714713_
                                             __tmp17831))))
                                      (let ((_param1459914716_
                                             (reverse _param1459814705_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl1458514684_))
                                            (let ((_e1460214719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl1458514684_))))
                                              (let ((_tl1460014724_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1460214719_)))
                                                    (_hd1460114722_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1460214719_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl1460014724_))
                                                    (let ((_L14727_
                                                           _hd1460114722_)
                                                          (_L14728_
                                                           _param1459914716_)
                                                          (_L14729_
                                                           _hd1458914690_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L14729_))
                       (let ((__tmp17830
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L14729_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp17830)))
                  (___kont1644316444_ _L14727_ _L14728_ _L14729_)
                  (___kont1644716448_ _hd1460114722_ _hd1458614682_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1456614618_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1456614618_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop1459414700_ _target1459114695_ '())))))
                   (___match1646816469_
                    (lambda (_e1457214755_
                             _hd1457114758_
                             _tl1457014760_
                             _e1457514763_
                             _hd1457414766_
                             _tl1457314768_
                             _e1457814771_
                             _hd1457714774_
                             _tl1457614776_)
                      (let ((_L14779_ _hd1457714774_)
                            (_L14780_ _hd1457414766_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L14780_))
                            (___kont1644116442_ _L14779_ _L14780_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd1457414766_))
                                (let ((_e1459014687_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd1457414766_))))
                                  (let ((_tl1458814692_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1459014687_)))
                                        (_hd1458914690_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1459014687_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl1458814692_))
                                        (let ((___splice1644516446_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl1458814692_
                                                  '0))))
                                          (let ((_tl1459314697_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice1644516446_
                                                    '1)))
                                                (_target1459114695_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice1644516446_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1459314697_))
                                                (___match1649416495_
                                                 _e1457214755_
                                                 _hd1457114758_
                                                 _tl1457014760_
                                                 _e1457514763_
                                                 _hd1457414766_
                                                 _tl1457314768_
                                                 _e1459014687_
                                                 _hd1458914690_
                                                 _tl1458814692_
                                                 ___splice1644516446_
                                                 _target1459114695_
                                                 _tl1459314697_)
                                                (___kont1644716448_
                                                 _hd1457714774_
                                                 _hd1457414766_))))
                                        (___kont1644716448_
                                         _hd1457714774_
                                         _hd1457414766_))))
                                (___kont1644716448_
                                 _hd1457714774_
                                 _hd1457414766_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1643916440_))
                  (let ((_e1457214755_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx1643916440_))))
                    (let ((_tl1457014760_
                           (let () (declare (not safe)) (##cdr _e1457214755_)))
                          (_hd1457114758_
                           (let ()
                             (declare (not safe))
                             (##car _e1457214755_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl1457014760_))
                          (let ((_e1457514763_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl1457014760_))))
                            (let ((_tl1457314768_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1457514763_)))
                                  (_hd1457414766_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1457514763_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl1457314768_))
                                  (let ((_e1457814771_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl1457314768_))))
                                    (let ((_tl1457614776_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1457814771_)))
                                          (_hd1457714774_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1457814771_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1457614776_))
                                          (___match1646816469_
                                           _e1457214755_
                                           _hd1457114758_
                                           _tl1457014760_
                                           _e1457514763_
                                           _hd1457414766_
                                           _tl1457314768_
                                           _e1457814771_
                                           _hd1457714774_
                                           _tl1457614776_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd1457414766_))
                                              (let ((_e1459014687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd1457414766_))))
                                                (let ((_tl1458814692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1459014687_)))
                                                      (_hd1458914690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1459014687_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl1458814692_))
                                                      (let ((___splice1644516446_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl1458814692_ '0))))
                (let ((_tl1459314697_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice1644516446_ '1)))
                      (_target1459114695_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice1644516446_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl1459314697_))
                      (___match1649416495_
                       _e1457214755_
                       _hd1457114758_
                       _tl1457014760_
                       _e1457514763_
                       _hd1457414766_
                       _tl1457314768_
                       _e1459014687_
                       _hd1458914690_
                       _tl1458814692_
                       ___splice1644516446_
                       _target1459114695_
                       _tl1459314697_)
                      (let () (declare (not safe)) (_g1456614618_)))))
              (let () (declare (not safe)) (_g1456614618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1456614618_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd1457414766_))
                                      (let ((_e1459014687_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd1457414766_))))
                                        (let ((_tl1458814692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1459014687_)))
                                              (_hd1458914690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1459014687_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl1458814692_))
                                              (let ((___splice1644516446_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl1458814692_
                                                        '0))))
                                                (let ((_tl1459314697_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1644516446_
                                                          '1)))
                                                      (_target1459114695_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1644516446_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl1459314697_))
                                                      (___match1649416495_
                                                       _e1457214755_
                                                       _hd1457114758_
                                                       _tl1457014760_
                                                       _e1457514763_
                                                       _hd1457414766_
                                                       _tl1457314768_
                                                       _e1459014687_
                                                       _hd1458914690_
                                                       _tl1458814692_
                                                       ___splice1644516446_
                                                       _target1459114695_
                                                       _tl1459314697_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1456614618_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1456614618_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1456614618_))))))
                          (let () (declare (not safe)) (_g1456614618_)))))
                  (let () (declare (not safe)) (_g1456614618_))))))))
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
                                (let ((__tmp17832 (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp17832 _decls14557_)))
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
                                                 (let* ((___stx1654716548_
                                                         _L14318_)
                                                        (_g1433514349_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1654716548_)))))
                                                   (let ((___kont1654916550_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L14317_))))
                                                         (___kont1655116552_
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
                                   (__tmp17833
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (table-set!
                               __tmp17833
                               _lambda-expr14496_
                               _eid14490_))
                            '#f))
                      (let ((__tmp17834
                             (let ((__tmp17835
                                    (let ((__tmp17836
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e _L14317_))))
                                      (declare (not safe))
                                      (cons __tmp17836 '()))))
                               (declare (not safe))
                               (cons _eid14490_ __tmp17835))))
                        (declare (not safe))
                        (cons 'define __tmp17834)))))
                 (___kont1655316554_
                  (lambda ()
                    (let* ((_tmp14356_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body14465_
                            (let _lp14358_ ((_rest14360_ _L14318_)
                                            (_k14361_ '0)
                                            (_r14362_ '()))
                              (let* ((___stx1651716518_ _rest14360_)
                                     (_g1436714384_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1651716518_)))))
                                (let ((___kont1651916520_
                                       (lambda (_L14452_)
                                         (let ((__tmp17837
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k14361_ '1))))
                                           (declare (not safe))
                                           (_lp14358_
                                            _L14452_
                                            __tmp17837
                                            _r14362_))))
                                      (___kont1652116522_
                                       (lambda (_L14425_ _L14426_)
                                         (let ((__tmp17844
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k14361_ '1)))
                                               (__tmp17838
                                                (let ((__tmp17839
                                                       (let ((__tmp17840
                                                              (let ((__tmp17843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L14426_)))
                            (__tmp17841
                             (let ((__tmp17842
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp14356_
                                       _k14361_
                                       _L14425_))))
                               (declare (not safe))
                               (cons __tmp17842 '()))))
                        (declare (not safe))
                        (cons __tmp17843 __tmp17841))))
                 (declare (not safe))
                 (cons 'define __tmp17840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17839 _r14362_))))
                                           (declare (not safe))
                                           (_lp14358_
                                            _L14425_
                                            __tmp17844
                                            __tmp17838))))
                                      (___kont1652316524_
                                       (lambda (_L14396_)
                                         (let ((__tmp17845
                                                (let ((__tmp17846
                                                       (let ((__tmp17847
                                                              (let ((__tmp17850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L14396_)))
                            (__tmp17848
                             (let ((__tmp17849
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp14356_
                                       _k14361_))))
                               (declare (not safe))
                               (cons __tmp17849 '()))))
                        (declare (not safe))
                        (cons __tmp17850 __tmp17848))))
                 (declare (not safe))
                 (cons 'define __tmp17847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17846 '()))))
                                           (declare (not safe))
                                           (foldl1 cons __tmp17845 _r14362_))))
                                      (___kont1652516526_
                                       (lambda () (reverse _r14362_))))
                                  (let ((_g1436514412_
                                         (lambda ()
                                           (let ((_L14396_ ___stx1651716518_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L14396_))
                                                 (___kont1652316524_ _L14396_)
                                                 (___kont1652516526_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1651716518_))
                                        (let ((_e1437214441_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1651716518_))))
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
                                                      (___kont1651916520_
                                                       _tl1437014446_)
                                                      (___kont1652116522_
                                                       _tl1437014446_
                                                       _hd1437114444_)))
                                                (___kont1652116522_
                                                 _tl1437014446_
                                                 _hd1437114444_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1436514412_)))))))))
                      (let ((__tmp17851
                             (let ((__tmp17854
                                    (let ((__tmp17855
                                           (let ((__tmp17856
                                                  (let ((__tmp17857
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _L14317_))))
                                                    (declare (not safe))
                                                    (cons __tmp17857 '()))))
                                             (declare (not safe))
                                             (cons _tmp14356_ __tmp17856))))
                                      (declare (not safe))
                                      (cons 'define __tmp17855)))
                                   (__tmp17852
                                    (let ((__tmp17853
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp14356_
                                              _L14318_
                                              _L14317_))))
                                      (declare (not safe))
                                      (cons __tmp17853 _body14465_))))
                               (declare (not safe))
                               (cons __tmp17854 __tmp17852))))
                        (declare (not safe))
                        (cons 'begin __tmp17851))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx1654716548_))
                                                         (let ((_e1433914503_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx1654716548_))))
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
                                   (___kont1654916550_)
                                   (___kont1655316554_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl1433714508_))
                                   (___kont1655116552_ _hd1433814506_)
                                   (___kont1655316554_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl1433714508_))
                             (___kont1655116552_ _hd1433814506_)
                             (___kont1655316554_)))))
                 (___kont1655316554_)))))
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
                (if (and (let ((__tmp17881
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd14246_))))
                           (declare (not safe))
                           (not __tmp17881))
                         (fx= _len14260_ '0))
                    '#!void
                    (let ((__tmp17858
                           (let ((__tmp17877
                                  (let ((__tmp17878
                                         (let ((__tmp17879
                                                (let ((__tmp17880
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals14245_))))
                                                  (declare (not safe))
                                                  (cons __tmp17880 '()))))
                                           (declare (not safe))
                                           (cons _count14266_ __tmp17879))))
                                    (declare (not safe))
                                    (cons __tmp17878 '())))
                                 (__tmp17859
                                  (let ((__tmp17860
                                         (let ((__tmp17861
                                                (let ((__tmp17866
                                                       (let ((__tmp17867
                                                              (let ((__tmp17868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp17875
                                        (let ((__tmp17876
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len14260_ '()))))
                                          (declare (not safe))
                                          (cons _count14266_ __tmp17876))))
                                   (declare (not safe))
                                   (cons _cmp14262_ __tmp17875))
                                 (let ((__tmp17869
                                        (let ((__tmp17870
                                               (let ((__tmp17871
                                                      (let ((__tmp17872
                                                             (let ((__tmp17873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17874
                                   (let ()
                                     (declare (not safe))
                                     (cons _len14260_ '()))))
                              (declare (not safe))
                              (cons _count14266_ __tmp17874))))
                       (declare (not safe))
                       (cons _cmp14262_ __tmp17873))))
                (declare (not safe))
                (cons __tmp17872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp17871))))
                                          (declare (not safe))
                                          (cons '() __tmp17870))))
                                   (declare (not safe))
                                   (cons 'let __tmp17869)))))
                        (declare (not safe))
                        (cons __tmp17868 '()))))
                 (declare (not safe))
                 (cons 'not __tmp17867)))
              (__tmp17862
               (let ((__tmp17863
                      (let ((__tmp17864
                             (let ((__tmp17865
                                    (let ()
                                      (declare (not safe))
                                      (cons _count14266_ '()))))
                               (declare (not safe))
                               (cons _errmsg14264_ __tmp17865))))
                        (declare (not safe))
                        (cons 'error __tmp17864))))
                 (declare (not safe))
                 (cons __tmp17863 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17866
                                                        __tmp17862))))
                                           (declare (not safe))
                                           (cons 'if __tmp17861))))
                                    (declare (not safe))
                                    (cons __tmp17860 '()))))
                             (declare (not safe))
                             (cons __tmp17877 __tmp17859))))
                      (declare (not safe))
                      (cons 'let __tmp17858))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var14240_)
        (letrec ((_generate-inline14242_
                  (lambda ()
                    (let ((__tmp17882
                           (let ((__tmp17887
                                  (let ((__tmp17888
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14240_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp17888)))
                                 (__tmp17883
                                  (let ((__tmp17885
                                         (let ((__tmp17886
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var14240_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length __tmp17886)))
                                        (__tmp17884
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp17885 __tmp17884))))
                             (declare (not safe))
                             (cons __tmp17887 __tmp17883))))
                      (declare (not safe))
                      (cons 'if __tmp17882)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline14242_))
              (let ((__tmp17889
                     (let ((__tmp17890
                            (let ((__tmp17891
                                   (let ((__tmp17892
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline14242_))))
                                     (declare (not safe))
                                     (cons __tmp17892 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp17891))))
                       (declare (not safe))
                       (cons '() __tmp17890))))
                (declare (not safe))
                (cons 'let __tmp17889))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var14233_ _i14234_ _rest14235_)
        (letrec ((_generate-inline14237_
                  (lambda ()
                    (if (and (fx= _i14234_ '0)
                             (let ((__tmp17903
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest14235_))))
                               (declare (not safe))
                               (not __tmp17903)))
                        (let ((__tmp17895
                               (let ((__tmp17901
                                      (let ((__tmp17902
                                             (let ()
                                               (declare (not safe))
                                               (cons _var14233_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp17902)))
                                     (__tmp17896
                                      (let ((__tmp17898
                                             (let ((__tmp17899
                                                    (let ((__tmp17900
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var14233_
                                                            __tmp17900))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp17899)))
                                            (__tmp17897
                                             (let ()
                                               (declare (not safe))
                                               (cons _var14233_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17898 __tmp17897))))
                                 (declare (not safe))
                                 (cons __tmp17901 __tmp17896))))
                          (declare (not safe))
                          (cons 'if __tmp17895))
                        (let ((__tmp17893
                               (let ((__tmp17894
                                      (let ()
                                        (declare (not safe))
                                        (cons _i14234_ '()))))
                                 (declare (not safe))
                                 (cons _var14233_ __tmp17894))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp17893))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline14237_))
              (let ((__tmp17904
                     (let ((__tmp17905
                            (let ((__tmp17906
                                   (let ((__tmp17907
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline14237_))))
                                     (declare (not safe))
                                     (cons __tmp17907 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp17906))))
                       (declare (not safe))
                       (cons '() __tmp17905))))
                (declare (not safe))
                (cons 'let __tmp17904))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var14230_ _i14231_)
        (if (fx= _i14231_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp17955
                       (let ((__tmp17962
                              (let ((__tmp17963
                                     (let ()
                                       (declare (not safe))
                                       (cons _var14230_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp17963)))
                             (__tmp17956
                              (let ((__tmp17960
                                     (let ((__tmp17961
                                            (let ()
                                              (declare (not safe))
                                              (cons _var14230_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp17961)))
                                    (__tmp17957
                                     (let ((__tmp17958
                                            (let ((__tmp17959
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var14230_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp17959))))
                                       (declare (not safe))
                                       (cons __tmp17958 '()))))
                                (declare (not safe))
                                (cons __tmp17960 __tmp17957))))
                         (declare (not safe))
                         (cons __tmp17962 __tmp17956))))
                  (declare (not safe))
                  (cons 'if __tmp17955))
                (let ((__tmp17942
                       (let ((__tmp17943
                              (let ((__tmp17944
                                     (let ((__tmp17945
                                            (let ((__tmp17946
                                                   (let ((__tmp17953
                                                          (let ((__tmp17954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var14230_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp17954)))
                 (__tmp17947
                  (let ((__tmp17951
                         (let ((__tmp17952
                                (let ()
                                  (declare (not safe))
                                  (cons _var14230_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp17952)))
                        (__tmp17948
                         (let ((__tmp17949
                                (let ((__tmp17950
                                       (let ()
                                         (declare (not safe))
                                         (cons _var14230_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp17950))))
                           (declare (not safe))
                           (cons __tmp17949 '()))))
                    (declare (not safe))
                    (cons __tmp17951 __tmp17948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17953
                                                           __tmp17947))))
                                              (declare (not safe))
                                              (cons 'if __tmp17946))))
                                       (declare (not safe))
                                       (cons __tmp17945 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp17944))))
                         (declare (not safe))
                         (cons '() __tmp17943))))
                  (declare (not safe))
                  (cons 'let __tmp17942)))
            (if (fx= _i14231_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp17933
                           (let ((__tmp17940
                                  (let ((__tmp17941
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14230_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp17941)))
                                 (__tmp17934
                                  (let ((__tmp17936
                                         (let ((__tmp17937
                                                (let ((__tmp17938
                                                       (let ((__tmp17939
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var14230_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp17939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17938 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp17937)))
                                        (__tmp17935
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp17936 __tmp17935))))
                             (declare (not safe))
                             (cons __tmp17940 __tmp17934))))
                      (declare (not safe))
                      (cons 'if __tmp17933))
                    (let ((__tmp17920
                           (let ((__tmp17921
                                  (let ((__tmp17922
                                         (let ((__tmp17923
                                                (let ((__tmp17924
                                                       (let ((__tmp17931
                                                              (let ((__tmp17932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var14230_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp17932)))
                     (__tmp17925
                      (let ((__tmp17927
                             (let ((__tmp17928
                                    (let ((__tmp17929
                                           (let ((__tmp17930
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var14230_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp17930))))
                                      (declare (not safe))
                                      (cons __tmp17929 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp17928)))
                            (__tmp17926
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp17927 __tmp17926))))
                 (declare (not safe))
                 (cons __tmp17931 __tmp17925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp17924))))
                                           (declare (not safe))
                                           (cons __tmp17923 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp17922))))
                             (declare (not safe))
                             (cons '() __tmp17921))))
                      (declare (not safe))
                      (cons 'let __tmp17920)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp17916
                           (let ((__tmp17918
                                  (let ((__tmp17919
                                         (let ()
                                           (declare (not safe))
                                           (cons _var14230_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp17919)))
                                 (__tmp17917
                                  (let ()
                                    (declare (not safe))
                                    (cons _i14231_ '()))))
                             (declare (not safe))
                             (cons __tmp17918 __tmp17917))))
                      (declare (not safe))
                      (cons '##list-tail __tmp17916))
                    (let ((__tmp17908
                           (let ((__tmp17909
                                  (let ((__tmp17910
                                         (let ((__tmp17911
                                                (let ((__tmp17912
                                                       (let ((__tmp17914
                                                              (let ((__tmp17915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var14230_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp17915)))
                     (__tmp17913
                      (let () (declare (not safe)) (cons _i14231_ '()))))
                 (declare (not safe))
                 (cons __tmp17914 __tmp17913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp17912))))
                                           (declare (not safe))
                                           (cons __tmp17911 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp17910))))
                             (declare (not safe))
                             (cons '() __tmp17909))))
                      (declare (not safe))
                      (cons 'let __tmp17908)))))))
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
          (let ((__tmp17964
                 (let () (declare (not safe)) (cons _hd14126_ _body14160_))))
            (declare (not safe))
            (cons 'lambda __tmp17964)))))
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
                            (let ((__tmp17965
                                   (let ()
                                     (declare (not safe))
                                     (cons _body13352_ '()))))
                              (declare (not safe))
                              (cons _hd13351_ __tmp17965)))
                           (___stx1657916580_ _form13354_)
                           (_g1335913516_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1657916580_)))))
                      (let ((___kont1658116582_
                             (lambda (_L14041_ _L14042_ _L14043_) '#t))
                            (___kont1658716588_
                             (lambda (_L13829_
                                      _L13830_
                                      _L13831_
                                      _L13832_
                                      _L13833_
                                      _L13834_)
                               '#t))
                            (___kont1659316594_
                             (lambda (_L13624_ _L13625_ _L13626_ _L13627_)
                               '#t))
                            (___kont1659516596_ (lambda () '#f)))
                        (let* ((___match1672016721_
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
                                             (let ((__tmp17966
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L13625_
                                                       _L13627_))))
                                               (declare (not safe))
                                               (not __tmp17966)))
                                        (___kont1659316594_
                                         _L13624_
                                         _L13625_
                                         _L13626_
                                         _L13627_)
                                        (___kont1659516596_)))))
                               (___match1669216693_
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
                                      (___match1672016721_
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
                                      (___kont1659516596_))
                                  (___kont1659516596_))
                              (___kont1659516596_))))
                      (___kont1659516596_))
                  (___kont1659516596_))
              (___kont1659516596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1659516596_))))
                                      (___kont1659516596_))))
                               (___match1662216623_
                                (lambda (_e1341413669_
                                         _hd1341313672_
                                         _tl1341213674_
                                         ___splice1658916590_
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
                                                      (let ((__tmp17981
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1342013693_ _arg1342213687_))))
                (declare (not safe))
                (_loop1341813682_ _lp-tl1342113695_ __tmp17981))))
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
                                    (let ((___splice1659116592_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1343913746_
                                              '1))))
                                      (let ((_tl1345013767_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1659116592_
                                                '1)))
                                            (_target1344813765_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1659116592_
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
                                                (let ((__tmp17980
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1347013821_
                                                               _xarg1345513799_))))
                                                  (declare (not safe))
                                                  (_loop1345113794_
                                                   _lp-tl1345413807_
                                                   __tmp17980))
                                                (___match1669216693_
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
                                        (___match1669216693_
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
                                    (___match1669216693_
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
                                (___match1669216693_
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
                        (___match1669216693_
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
                        (if (and (let ((__tmp17978
                                        (let ((__tmp17979
                                               (lambda (_g1387713880_
                                                        _g1387813882_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1387713880_
                                                         _g1387813882_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17979 '() _L13834_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp17978))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L13833_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L13832_ 'apply))
                                 (fx= (length (let ((__tmp17976
                                                     (lambda (_g1388413887_
                                                              _g1388513889_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1388413887_
                                                               _g1388513889_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17976
                                                        '()
                                                        _L13834_)))
                                      (length (let ((__tmp17977
                                                     (lambda (_g1389113894_
                                                              _g1389213896_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1389113894_
                                                               _g1389213896_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp17977
                                                        '()
                                                        _L13830_))))
                                 (let ((__tmp17974
                                        (let ((__tmp17975
                                               (lambda (_g1389813901_
                                                        _g1389913903_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1389813901_
                                                         _g1389913903_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17975 '() _L13834_)))
                                       (__tmp17972
                                        (let ((__tmp17973
                                               (lambda (_g1390513908_
                                                        _g1390613910_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1390513908_
                                                         _g1390613910_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17973 '() _L13830_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp17974
                                            __tmp17972))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L13833_ _L13829_))
                                 (let ((__tmp17967
                                        (let ((__tmp17971
                                               (lambda (_g1391213914_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g1391213914_
                                                    _L13831_))))
                                              (__tmp17968
                                               (let ((__tmp17970
                                                      (lambda (_g1391613919_
                                                               _g1391713921_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g1391613919_
                                                                _g1391713921_))))
                                                     (__tmp17969
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L13833_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp17970
                                                         __tmp17969
                                                         _L13834_))))
                                          (declare (not safe))
                                          (find __tmp17971 __tmp17968))))
                                   (declare (not safe))
                                   (not __tmp17967)))
                            (___kont1658716588_
                             _L13829_
                             _L13830_
                             _L13831_
                             _L13832_
                             _L13833_
                             _L13834_)
                            (___match1669216693_
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
                      (___match1669216693_
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
                                        (___match1669216693_
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
                                    (___match1669216693_
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
                            (___match1669216693_
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
                        (___match1669216693_
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
                    (___match1669216693_
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
                                                    (___match1669216693_
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
                                            (___match1669216693_
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
                                    (___match1669216693_
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
                                (___match1669216693_
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
                            (___kont1659516596_))))
                    (___kont1659516596_))
                (___kont1659516596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1659516596_))))
                                            (___kont1659516596_))))
                                    (___kont1659516596_))
                                (___kont1659516596_))))
                        (___kont1659516596_))
                    (___kont1659516596_))
                (___kont1659516596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1659516596_))))
                                        (___kont1659516596_))
                                    (___kont1659516596_))
                                (___kont1659516596_))))
                        (___kont1659516596_))))
                (___kont1659516596_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop1341813682_
                                       _target1341513677_
                                       '())))))
                               (___match1661016611_
                                (lambda (_e1336613929_
                                         _hd1336513932_
                                         _tl1336413934_
                                         ___splice1658316584_
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
                                                      (let ((__tmp17995
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1337213953_ _arg1337413947_))))
                (declare (not safe))
                (_loop1337013942_ _lp-tl1337313955_ __tmp17995))))
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
                                    (let ((___splice1658516586_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1338213982_
                                              '0))))
                                      (let ((_tl1339314003_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1658516586_
                                                '1)))
                                            (_target1339114001_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1658516586_
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
                                                    (let ((__tmp17994
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd1340414033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg1339814011_))))
              (declare (not safe))
              (_loop1339414006_ _lp-tl1339714019_ __tmp17994))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1662216623_
                                                     _e1336613929_
                                                     _hd1336513932_
                                                     _tl1336413934_
                                                     ___splice1658316584_
                                                     _target1336713937_
                                                     _tl1336913939_))))
                                            (___match1662216623_
                                             _e1336613929_
                                             _hd1336513932_
                                             _tl1336413934_
                                             ___splice1658316584_
                                             _target1336713937_
                                             _tl1336913939_))
                                        (___match1662216623_
                                         _e1336613929_
                                         _hd1336513932_
                                         _tl1336413934_
                                         ___splice1658316584_
                                         _target1336713937_
                                         _tl1336913939_))
                                    (___match1662216623_
                                     _e1336613929_
                                     _hd1336513932_
                                     _tl1336413934_
                                     ___splice1658316584_
                                     _target1336713937_
                                     _tl1336913939_))))
                            (___match1662216623_
                             _e1336613929_
                             _hd1336513932_
                             _tl1336413934_
                             ___splice1658316584_
                             _target1336713937_
                             _tl1336913939_))))
                    (let ((_xarg1339914038_ (reverse _xarg1339814011_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1337613966_))
                          (let ((_L14041_ _xarg1339914038_)
                                (_L14042_ _hd1338913996_)
                                (_L14043_ _arg1337513958_))
                            (if (and (let ((__tmp17992
                                            (let ((__tmp17993
                                                   (lambda (_g1407114074_
                                                            _g1407214076_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1407114074_
                                                             _g1407214076_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17993
                                                      '()
                                                      _L14043_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp17992))
                                     (fx= (length (let ((__tmp17990
                                                         (lambda (_g1407814081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1407914083_)
                   (let ()
                     (declare (not safe))
                     (cons _g1407814081_ _g1407914083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17990
                                                            '()
                                                            _L14043_)))
                                          (length (let ((__tmp17991
                                                         (lambda (_g1408514088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1408614090_)
                   (let ()
                     (declare (not safe))
                     (cons _g1408514088_ _g1408614090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp17991
                                                            '()
                                                            _L14041_))))
                                     (let ((__tmp17988
                                            (let ((__tmp17989
                                                   (lambda (_g1409214095_
                                                            _g1409314097_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1409214095_
                                                             _g1409314097_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17989
                                                      '()
                                                      _L14043_)))
                                           (__tmp17986
                                            (let ((__tmp17987
                                                   (lambda (_g1409914102_
                                                            _g1410014104_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1409914102_
                                                             _g1410014104_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp17987
                                                      '()
                                                      _L14041_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp17988
                                                __tmp17986))
                                     (let ((__tmp17982
                                            (let ((__tmp17985
                                                   (lambda (_g1410614108_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g1410614108_
                                                        _L14042_))))
                                                  (__tmp17983
                                                   (let ((__tmp17984
                                                          (lambda (_g1411014113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1411114115_)
                    (let ()
                      (declare (not safe))
                      (cons _g1411014113_ _g1411114115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp17984
                                                             '()
                                                             _L14043_))))
                                              (declare (not safe))
                                              (find __tmp17985 __tmp17983))))
                                       (declare (not safe))
                                       (not __tmp17982)))
                                (___kont1658116582_ _L14041_ _L14042_ _L14043_)
                                (___match1662216623_
                                 _e1336613929_
                                 _hd1336513932_
                                 _tl1336413934_
                                 ___splice1658316584_
                                 _target1336713937_
                                 _tl1336913939_)))
                          (___match1662216623_
                           _e1336613929_
                           _hd1336513932_
                           _tl1336413934_
                           ___splice1658316584_
                           _target1336713937_
                           _tl1336913939_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1339414006_
                                                 _target1339114001_
                                                 '())))
                                            (___match1662216623_
                                             _e1336613929_
                                             _hd1336513932_
                                             _tl1336413934_
                                             ___splice1658316584_
                                             _target1336713937_
                                             _tl1336913939_))))
                                    (___match1662216623_
                                     _e1336613929_
                                     _hd1336513932_
                                     _tl1336413934_
                                     ___splice1658316584_
                                     _target1336713937_
                                     _tl1336913939_))
                                (___match1662216623_
                                 _e1336613929_
                                 _hd1336513932_
                                 _tl1336413934_
                                 ___splice1658316584_
                                 _target1336713937_
                                 _tl1336913939_))))
                        (___match1662216623_
                         _e1336613929_
                         _hd1336513932_
                         _tl1336413934_
                         ___splice1658316584_
                         _target1336713937_
                         _tl1336913939_))
                    (___match1662216623_
                     _e1336613929_
                     _hd1336513932_
                     _tl1336413934_
                     ___splice1658316584_
                     _target1336713937_
                     _tl1336913939_))
                (___match1662216623_
                 _e1336613929_
                 _hd1336513932_
                 _tl1336413934_
                 ___splice1658316584_
                 _target1336713937_
                 _tl1336913939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1662216623_
                                                 _e1336613929_
                                                 _hd1336513932_
                                                 _tl1336413934_
                                                 ___splice1658316584_
                                                 _target1336713937_
                                                 _tl1336913939_))))
                                        (___match1662216623_
                                         _e1336613929_
                                         _hd1336513932_
                                         _tl1336413934_
                                         ___splice1658316584_
                                         _target1336713937_
                                         _tl1336913939_))
                                    (___match1662216623_
                                     _e1336613929_
                                     _hd1336513932_
                                     _tl1336413934_
                                     ___splice1658316584_
                                     _target1336713937_
                                     _tl1336913939_))
                                (___match1662216623_
                                 _e1336613929_
                                 _hd1336513932_
                                 _tl1336413934_
                                 ___splice1658316584_
                                 _target1336713937_
                                 _tl1336913939_))))
                        (___match1662216623_
                         _e1336613929_
                         _hd1336513932_
                         _tl1336413934_
                         ___splice1658316584_
                         _target1336713937_
                         _tl1336913939_))))
                (___match1662216623_
                 _e1336613929_
                 _hd1336513932_
                 _tl1336413934_
                 ___splice1658316584_
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
                                (gx#stx-pair? ___stx1657916580_))
                              (let ((_e1336613929_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1657916580_))))
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
                                      (let ((___splice1658316584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1336513932_
                                                '0))))
                                        (let ((_tl1336913939_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1658316584_
                                                  '1)))
                                              (_target1336713937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1658316584_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1336913939_))
                                              (___match1661016611_
                                               _e1336613929_
                                               _hd1336513932_
                                               _tl1336413934_
                                               ___splice1658316584_
                                               _target1336713937_
                                               _tl1336913939_)
                                              (___match1662216623_
                                               _e1336613929_
                                               _hd1336513932_
                                               _tl1336413934_
                                               ___splice1658316584_
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
                                                          (___match1672016721_
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
                                                          (___kont1659516596_))
                                                      (___kont1659516596_))
                                                  (___kont1659516596_))))
                                          (___kont1659516596_))
                                      (___kont1659516596_))
                                  (___kont1659516596_))))
                          (___kont1659516596_))))
                  (___kont1659516596_))
              (___kont1659516596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1659516596_))
                                          (___kont1659516596_))
                                      (___kont1659516596_))))
                              (___kont1659516596_))))
                      (___kont1659516596_))
                  (___kont1659516596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1659516596_))
                                              (___kont1659516596_))
                                          (___kont1659516596_))))
                                  (___kont1659516596_))))
                          (___kont1659516596_))
                      (___kont1659516596_))
                  (___kont1659516596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1659516596_))))
                                          (___kont1659516596_)))))
                              (___kont1659516596_)))))))
                 (_dispatch-case-e12667_
                  (lambda (_hd12815_ _body12816_)
                    (let* ((_form12818_
                            (let ((__tmp17996
                                   (let ()
                                     (declare (not safe))
                                     (cons _body12816_ '()))))
                              (declare (not safe))
                              (cons _hd12815_ __tmp17996)))
                           (___stx1672316724_ _form12818_)
                           (_g1282212946_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1672316724_)))))
                      (let ((___kont1672516726_
                             (lambda (_L13317_ _L13318_ _L13319_)
                               (let ((__tmp17997
                                      (let ((__tmp17999
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp17998
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13318_ '()))))
                                        (declare (not safe))
                                        (cons __tmp17999 __tmp17998))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp17997))))
                            (___kont1673116732_
                             (lambda (_L13165_ _L13166_ _L13167_ _L13168_)
                               (let ((__tmp18000
                                      (let ((__tmp18002
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp18001
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13165_ '()))))
                                        (declare (not safe))
                                        (cons __tmp18002 __tmp18001))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp18000))))
                            (___kont1673516736_
                             (lambda (_L13031_ _L13032_ _L13033_)
                               (let ((__tmp18003
                                      (let ((__tmp18005
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp18004
                                             (let ()
                                               (declare (not safe))
                                               (cons _L13031_ '()))))
                                        (declare (not safe))
                                        (cons __tmp18005 __tmp18004))))
                                 (declare (not safe))
                                 (gxc#compile-e __tmp18003)))))
                        (let* ((___match1683216833_
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
                                                  (___kont1673516736_
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
                               (___match1676216763_
                                (lambda (_e1287513069_
                                         _hd1287413072_
                                         _tl1287313074_
                                         ___splice1673316734_
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
                                                      (let ((__tmp18006
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1288113093_ _arg1288313087_))))
                (declare (not safe))
                (_loop1287913082_ _lp-tl1288213095_ __tmp18006))))
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
                                (___kont1673116732_
                                 _hd1290713160_
                                 _hd1289813136_
                                 _tl1287813079_
                                 _arg1288413098_)
                                (___match1683216833_
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
                               (___match1675016751_
                                (lambda (_e1282913205_
                                         _hd1282813208_
                                         _tl1282713210_
                                         ___splice1672716728_
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
                                                      (let ((__tmp18008
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd1283513229_ _arg1283713223_))))
                (declare (not safe))
                (_loop1283313218_ _lp-tl1283613231_ __tmp18008))))
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
                                    (let ((___splice1672916730_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl1284513258_
                                              '0))))
                                      (let ((_tl1285613279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1672916730_
                                                '1)))
                                            (_target1285413277_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1672916730_
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
                                                    (let ((__tmp18007
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd1286713309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg1286113287_))))
              (declare (not safe))
              (_loop1285713282_ _lp-tl1286013295_ __tmp18007))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1676216763_
                                                     _e1282913205_
                                                     _hd1282813208_
                                                     _tl1282713210_
                                                     ___splice1672716728_
                                                     _target1283013213_
                                                     _tl1283213215_))))
                                            (___match1676216763_
                                             _e1282913205_
                                             _hd1282813208_
                                             _tl1282713210_
                                             ___splice1672716728_
                                             _target1283013213_
                                             _tl1283213215_))
                                        (___match1676216763_
                                         _e1282913205_
                                         _hd1282813208_
                                         _tl1282713210_
                                         ___splice1672716728_
                                         _target1283013213_
                                         _tl1283213215_))
                                    (___match1676216763_
                                     _e1282913205_
                                     _hd1282813208_
                                     _tl1282713210_
                                     ___splice1672716728_
                                     _target1283013213_
                                     _tl1283213215_))))
                            (___match1676216763_
                             _e1282913205_
                             _hd1282813208_
                             _tl1282713210_
                             ___splice1672716728_
                             _target1283013213_
                             _tl1283213215_))))
                    (let ((_xarg1286213314_ (reverse _xarg1286113287_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1283913242_))
                          (___kont1672516726_
                           _xarg1286213314_
                           _hd1285213272_
                           _arg1283813234_)
                          (___match1676216763_
                           _e1282913205_
                           _hd1282813208_
                           _tl1282713210_
                           ___splice1672716728_
                           _target1283013213_
                           _tl1283213215_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1285713282_
                                                 _target1285413277_
                                                 '())))
                                            (___match1676216763_
                                             _e1282913205_
                                             _hd1282813208_
                                             _tl1282713210_
                                             ___splice1672716728_
                                             _target1283013213_
                                             _tl1283213215_))))
                                    (___match1676216763_
                                     _e1282913205_
                                     _hd1282813208_
                                     _tl1282713210_
                                     ___splice1672716728_
                                     _target1283013213_
                                     _tl1283213215_))
                                (___match1676216763_
                                 _e1282913205_
                                 _hd1282813208_
                                 _tl1282713210_
                                 ___splice1672716728_
                                 _target1283013213_
                                 _tl1283213215_))))
                        (___match1676216763_
                         _e1282913205_
                         _hd1282813208_
                         _tl1282713210_
                         ___splice1672716728_
                         _target1283013213_
                         _tl1283213215_))
                    (___match1676216763_
                     _e1282913205_
                     _hd1282813208_
                     _tl1282713210_
                     ___splice1672716728_
                     _target1283013213_
                     _tl1283213215_))
                (___match1676216763_
                 _e1282913205_
                 _hd1282813208_
                 _tl1282713210_
                 ___splice1672716728_
                 _target1283013213_
                 _tl1283213215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1676216763_
                                                 _e1282913205_
                                                 _hd1282813208_
                                                 _tl1282713210_
                                                 ___splice1672716728_
                                                 _target1283013213_
                                                 _tl1283213215_))))
                                        (___match1676216763_
                                         _e1282913205_
                                         _hd1282813208_
                                         _tl1282713210_
                                         ___splice1672716728_
                                         _target1283013213_
                                         _tl1283213215_))
                                    (___match1676216763_
                                     _e1282913205_
                                     _hd1282813208_
                                     _tl1282713210_
                                     ___splice1672716728_
                                     _target1283013213_
                                     _tl1283213215_))
                                (___match1676216763_
                                 _e1282913205_
                                 _hd1282813208_
                                 _tl1282713210_
                                 ___splice1672716728_
                                 _target1283013213_
                                 _tl1283213215_))))
                        (___match1676216763_
                         _e1282913205_
                         _hd1282813208_
                         _tl1282713210_
                         ___splice1672716728_
                         _target1283013213_
                         _tl1283213215_))))
                (___match1676216763_
                 _e1282913205_
                 _hd1282813208_
                 _tl1282713210_
                 ___splice1672716728_
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
                                (gx#stx-pair? ___stx1672316724_))
                              (let ((_e1282913205_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1672316724_))))
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
                                      (let ((___splice1672716728_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1282813208_
                                                '0))))
                                        (let ((_tl1283213215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1672716728_
                                                  '1)))
                                              (_target1283013213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1672716728_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1283213215_))
                                              (___match1675016751_
                                               _e1282913205_
                                               _hd1282813208_
                                               _tl1282713210_
                                               ___splice1672716728_
                                               _target1283013213_
                                               _tl1283213215_)
                                              (___match1676216763_
                                               _e1282913205_
                                               _hd1282813208_
                                               _tl1282713210_
                                               ___splice1672716728_
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
                              (___kont1673516736_
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
                                    (let ((__tmp18023
                                           (let ((__tmp18024
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len12808_ '()))))
                                             (declare (not safe))
                                             (cons _arglen12804_ __tmp18024))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp18023))
                                    (let ((__tmp18017
                                           (let ((__tmp18018
                                                  (let ((__tmp18019
                                                         (let ((__tmp18020
                                                                (let ((__tmp18021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp18022
                                      (let ()
                                        (declare (not safe))
                                        (cons _len12808_ '()))))
                                 (declare (not safe))
                                 (cons _arglen12804_ __tmp18022))))
                          (declare (not safe))
                          (cons '##fx= __tmp18021))))
                   (declare (not safe))
                   (cons __tmp18020 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp18019))))
                                             (declare (not safe))
                                             (cons '() __tmp18018))))
                                      (declare (not safe))
                                      (cons 'let __tmp18017)))
                                (if (> _len12808_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp18015
                                               (let ((__tmp18016
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len12808_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen12804_
                                                       __tmp18016))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp18015))
                                        (let ((__tmp18009
                                               (let ((__tmp18010
                                                      (let ((__tmp18011
                                                             (let ((__tmp18012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18013
                                   (let ((__tmp18014
                                          (let ()
                                            (declare (not safe))
                                            (cons _len12808_ '()))))
                                     (declare (not safe))
                                     (cons _arglen12804_ __tmp18014))))
                              (declare (not safe))
                              (cons '##fx>= __tmp18013))))
                       (declare (not safe))
                       (cons __tmp18012 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp18011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp18010))))
                                          (declare (not safe))
                                          (cons 'let __tmp18009)))
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
                      (let ((__tmp18025
                             (let ((__tmp18026
                                    (let ((__tmp18027
                                           (let ((__tmp18028
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args12803_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch12812_
                                                   __tmp18028))))
                                      (declare (not safe))
                                      (cons 'apply __tmp18027))))
                               (declare (not safe))
                               (cons __tmp18026 '()))))
                        (declare (not safe))
                        (cons _condition12810_ __tmp18025))))))
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
                                (let ((_g18029_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl1267412708_
                                          '0))))
                                  (begin
                                    (let ((_g18030_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g18029_)
                                                 (##vector-length _g18029_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g18030_ 2)))
                                          (error "Context expects 2 values"
                                                 _g18030_)))
                                    (let ((_target1267712711_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g18029_ 0)))
                                          (_tl1267912713_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g18029_ 1))))
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
                                          (let ((__tmp18059
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd1269212745_
                                                         _body1268412721_)))
                                                (__tmp18058
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd1268912737_
                                                         _hd1268512723_))))
                                            (declare (not safe))
                                            (_loop1268012716_
                                             _lp-tl1268312731_
                                             __tmp18059
                                             __tmp18058))
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
                                     (let ((__tmp18031
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (table-ref __tmp18031 _stx12664_ '#f))))
                                (if _$e12772_
                                    _$e12772_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp18032
                                (let ((__tmp18033
                                       (let ((__tmp18034
                                              (let ((__tmp18035
                                                     (let ((__tmp18048
                                                            (let ((__tmp18049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp18050
                                  (let ((__tmp18051
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp18057
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args12775_ '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp18057))
                                             (let ((__tmp18052
                                                    (let ((__tmp18053
                                                           (let ((__tmp18054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18055
                                 (let ((__tmp18056
                                        (let ()
                                          (declare (not safe))
                                          (cons _args12775_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp18056))))
                            (declare (not safe))
                            (cons __tmp18055 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp18054))))
              (declare (not safe))
              (cons '() __tmp18053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp18052)))))
                                    (declare (not safe))
                                    (cons __tmp18051 '()))))
                             (declare (not safe))
                             (cons _arglen12776_ __tmp18050))))
                      (declare (not safe))
                      (cons __tmp18049 '())))
                   (__tmp18036
                    (let ((__tmp18037
                           (let ((__tmp18038
                                  (let ((__tmp18042
                                         (let ((__tmp18043
                                                (let ((__tmp18044
                                                       (let ((__tmp18045
                                                              (let ((__tmp18046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18047
                                    (let ()
                                      (declare (not safe))
                                      (cons _args12775_ '()))))
                               (declare (not safe))
                               (cons _name12777_ __tmp18047))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp18046))))
                 (declare (not safe))
                 (cons __tmp18045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp18044))))
                                           (declare (not safe))
                                           (cons __tmp18043 '())))
                                        (__tmp18039
                                         (map (lambda (_g1277812781_
                                                       _g1277912783_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate112668_
                                                   _args12775_
                                                   _arglen12776_
                                                   _g1277812781_
                                                   _g1277912783_)))
                                              (let ((__tmp18040
                                                     (lambda (_g1278512788_
                                                              _g1278612790_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1278512788_
                                                               _g1278612790_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp18040
                                                        '()
                                                        _L12756_))
                                              (let ((__tmp18041
                                                     (lambda (_g1279212795_
                                                              _g1279312797_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g1279212795_
                                                               _g1279312797_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp18041
                                                        '()
                                                        _L12755_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp18042 __tmp18039))))
                             (declare (not safe))
                             (cons 'cond __tmp18038))))
                      (declare (not safe))
                      (cons __tmp18037 '()))))
               (declare (not safe))
               (cons __tmp18048 __tmp18036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp18035))))
                                         (declare (not safe))
                                         (cons __tmp18034 '()))))
                                  (declare (not safe))
                                  (cons _args12775_ __tmp18033))))
                           (declare (not safe))
                           (cons 'lambda __tmp18032))))
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
                    (let ((__tmp18060
                           (let ((__tmp18061
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     'let
                                     _hd12651_
                                     _body12652_
                                     _compiled-body?11939_))))
                             (declare (not safe))
                             (_coalesce-let*11943_ __tmp18061))))
                      (declare (not safe))
                      (_coalesce-boolean11942_ __tmp18060))))
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
                                            (let ((__tmp18062
                                                   (let ((__tmp18063
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr212550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr112551_
                                                           __tmp18063))))
                                              (declare (not safe))
                                              (cons 'or __tmp18062))))
                                         (_K1255712574_
                                          (lambda (_exprs12572_)
                                            (let ((__tmp18064
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr112551_
                                                           _exprs12572_))))
                                              (declare (not safe))
                                              (cons 'or __tmp18064)))))
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
                               (let ((__tmp18065
                                      (let ((__tmp18066
                                             (let ((__tmp18067
                                                    (let ((__tmp18068
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr12460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id12461_ __tmp18068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18067 '()))))
                                        (declare (not safe))
                                        (cons __tmp18066 _body12459_))))
                                 (declare (not safe))
                                 (cons 'let __tmp18065))))
                            (_K1226912388_
                             (lambda (_body12382_
                                      _expr212383_
                                      _id212384_
                                      _expr112385_
                                      _id112386_)
                               (let ((__tmp18069
                                      (let ((__tmp18070
                                             (let ((__tmp18074
                                                    (let ((__tmp18075
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr112385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id112386_ __tmp18075)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp18071
                                                    (let ((__tmp18072
                                                           (let ((__tmp18073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr212383_ '()))))
                     (declare (not safe))
                     (cons _id212384_ __tmp18073))))
              (declare (not safe))
              (cons __tmp18072 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18074 __tmp18071))))
                                        (declare (not safe))
                                        (cons __tmp18070 _body12382_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp18069))))
                            (_K1225212327_
                             (lambda (_body12322_
                                      _bind12323_
                                      _expr112324_
                                      _id112325_)
                               (let ((__tmp18076
                                      (let ((__tmp18077
                                             (let ((__tmp18078
                                                    (let ((__tmp18079
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr112324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id112325_ __tmp18079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18078 _bind12323_))))
                                        (declare (not safe))
                                        (cons __tmp18077 _body12322_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp18076)))))
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
                      (let* ((___stx1703417035_ _rest12063_)
                             (_g1206912080_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1703417035_)))))
                        (let ((___kont1703617037_
                               (lambda (_L12107_ _L12108_)
                                 (let* ((___stx1699016991_ _L12108_)
                                        (_g1212312148_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1699016991_)))))
                                   (let ((___kont1699216993_
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
                                              (let ((__tmp18080
                                                     (let ((__tmp18081
                                                            (let ((__tmp18082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr12237_ '()))))
                      (declare (not safe))
                      (cons _eid12236_ __tmp18082))))
               (declare (not safe))
               (cons __tmp18081 _bind12064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp12061_
                                                 _L12107_
                                                 __tmp18080
                                                 _check12065_
                                                 _post12066_)))))
                                         (___kont1699416995_
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
                                              (let ((__tmp18085
                                                     (let ((__tmp18086
                                                            (let ((__tmp18087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr12189_ '()))))
                      (declare (not safe))
                      (cons _vals12183_ __tmp18087))))
               (declare (not safe))
               (cons __tmp18086 _bind12064_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp18084
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values12185_
                                                             _check12065_)))
                                                    (__tmp18083
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs12187_
                                                             _post12066_))))
                                                (declare (not safe))
                                                (_lp12061_
                                                 _L12107_
                                                 __tmp18085
                                                 __tmp18084
                                                 __tmp18083))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1699016991_))
                                         (let ((_e1212912197_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1699016991_))))
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
                             (___kont1699216993_ _hd1213412216_ _hd1213112208_)
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
                             (___kont1699416995_ _hd1214212164_ _hd1212812200_)
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
                     (___kont1699416995_ _hd1214212164_ _hd1212812200_)
                     (let () (declare (not safe)) (_g1212312148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1212312148_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1212312148_)))))))
                              (___kont1703817039_
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
                                   (let ((__tmp18088
                                          (let ((__tmp18090
                                                 (reverse _bind12064_))
                                                (__tmp18089
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body12091_ '()))))
                                            (declare (not safe))
                                            (cons __tmp18090 __tmp18089))))
                                     (declare (not safe))
                                     (cons 'let __tmp18088))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1703417035_))
                              (let ((_e1207512099_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1703417035_))))
                                (let ((_tl1207312104_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1207512099_)))
                                      (_hd1207412102_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1207512099_))))
                                  (___kont1703617037_
                                   _tl1207312104_
                                   _hd1207412102_)))
                              (___kont1703817039_)))))))
                 (_generate-values-post11945_
                  (lambda (_post12017_ _body12018_)
                    (let _lp12020_ ((_rest12022_ _post12017_)
                                    (_body12023_ _body12018_))
                      (let* ((_rest1202412032_ _rest12022_)
                             (_else1202612040_ (lambda () _body12023_))
                             (_K1202812046_
                              (lambda (_rest12043_ _bind12044_)
                                (let ((__tmp18091
                                       (let ((__tmp18092
                                              (let ((__tmp18093
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body12023_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind12044_
                                                      __tmp18093))))
                                         (declare (not safe))
                                         (cons 'let __tmp18092))))
                                  (declare (not safe))
                                  (_lp12020_ _rest12043_ __tmp18091)))))
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
                    (let ((__tmp18094
                           (let ((__tmp18096
                                  (let ()
                                    (declare (not safe))
                                    (cons _body12015_ '())))
                                 (__tmp18095 (reverse _check12014_)))
                             (declare (not safe))
                             (foldr1 cons __tmp18096 __tmp18095))))
                      (declare (not safe))
                      (cons 'begin __tmp18094)))))
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
      (lambda _g18098_
        (let ((_g18097_ (let () (declare (not safe)) (##length _g18098_))))
          (cond ((let () (declare (not safe)) (##fx= _g18097_ 1))
                 (apply (lambda (_stx12657_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0 _stx12657_)))
                        _g18098_))
                ((let () (declare (not safe)) (##fx= _g18097_ 2))
                 (apply (lambda (_stx12661_ _compiled-body?12662_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _stx12661_
                             _compiled-body?12662_)))
                        _g18098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g18098_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals11832_ _hd11833_)
        (let _lp11835_ ((_rest11837_ _hd11833_) (_k11838_ '0) (_r11839_ '()))
          (let* ((___stx1704817049_ _rest11837_)
                 (_g1184411861_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx1704817049_)))))
            (let ((___kont1705017051_
                   (lambda (_L11924_)
                     (let ((__tmp18099
                            (let () (declare (not safe)) (fx+ _k11838_ '1))))
                       (declare (not safe))
                       (_lp11835_ _L11924_ __tmp18099 _r11839_))))
                  (___kont1705217053_
                   (lambda (_L11897_ _L11898_)
                     (let ((__tmp18105
                            (let () (declare (not safe)) (fx+ _k11838_ '1)))
                           (__tmp18100
                            (let ((__tmp18101
                                   (let ((__tmp18104
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L11898_)))
                                         (__tmp18102
                                          (let ((__tmp18103
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals11832_
                                                    _k11838_
                                                    _L11897_))))
                                            (declare (not safe))
                                            (cons __tmp18103 '()))))
                                     (declare (not safe))
                                     (cons __tmp18104 __tmp18102))))
                              (declare (not safe))
                              (cons __tmp18101 _r11839_))))
                       (declare (not safe))
                       (_lp11835_ _L11897_ __tmp18105 __tmp18100))))
                  (___kont1705417055_
                   (lambda (_L11873_)
                     (let ((__tmp18106
                            (let ((__tmp18107
                                   (let ((__tmp18110
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L11873_)))
                                         (__tmp18108
                                          (let ((__tmp18109
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals11832_
                                                    _k11838_))))
                                            (declare (not safe))
                                            (cons __tmp18109 '()))))
                                     (declare (not safe))
                                     (cons __tmp18110 __tmp18108))))
                              (declare (not safe))
                              (cons __tmp18107 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp18106 _r11839_))))
                  (___kont1705617057_ (lambda () (reverse _r11839_))))
              (let ((_g1184211884_
                     (lambda ()
                       (let ((_L11873_ ___stx1704817049_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L11873_))
                             (___kont1705417055_ _L11873_)
                             (___kont1705617057_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx1704817049_))
                    (let ((_e1184911913_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx1704817049_))))
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
                                  (___kont1705017051_ _tl1184711918_)
                                  (___kont1705217053_
                                   _tl1184711918_
                                   _hd1184811916_)))
                            (___kont1705217053_
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
                      (let* ((___stx1712217123_ _rest11603_)
                             (_g1160911620_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1712217123_)))))
                        (let ((___kont1712417125_
                               (lambda (_L11647_ _L11648_)
                                 (let* ((___stx1707817079_ _L11648_)
                                        (_g1166311688_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1707817079_)))))
                                   (let ((___kont1708017081_
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
                                              (let ((__tmp18111
                                                     (let ((__tmp18112
                                                            (let ((__tmp18113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr11811_ '()))))
                      (declare (not safe))
                      (cons _eid11810_ __tmp18113))))
               (declare (not safe))
               (cons __tmp18112 _bind11604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp11601_
                                                 _L11647_
                                                 __tmp18111
                                                 _check11605_
                                                 _post11606_)))))
                                         (___kont1708217083_
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
                                              (let ((__tmp18116
                                                     (let ((__tmp18119
                                                            (let ((__tmp18120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp18121
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr11729_ '()))))
                             (declare (not safe))
                             (cons _vals11723_ __tmp18121))))
                      (declare (not safe))
                      (cons __tmp18120 _bind11604_)))
                   (__tmp18117
                    (map (lambda (_e1173111733_)
                           (let* ((_g1173511744_ _e1173111733_)
                                  (_E1173711748_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _g1173511744_)))
                                  (_K1173811753_
                                   (lambda (_eid11751_)
                                     (let ((__tmp18118
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid11751_ __tmp18118)))))
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
               (foldl1 cons __tmp18119 __tmp18117)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp18115
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values11725_
                                                             _check11605_)))
                                                    (__tmp18114
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs11727_
                                                               _post11606_))))
                                                (declare (not safe))
                                                (_lp11601_
                                                 _L11647_
                                                 __tmp18116
                                                 __tmp18115
                                                 __tmp18114))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1707817079_))
                                         (let ((_e1166911771_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1707817079_))))
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
                             (___kont1708017081_ _hd1167411790_ _hd1167111782_)
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
                             (___kont1708217083_ _hd1168211704_ _hd1166811774_)
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
                     (___kont1708217083_ _hd1168211704_ _hd1166811774_)
                     (let () (declare (not safe)) (_g1166311688_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1166311688_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1166311688_)))))))
                              (___kont1712617127_
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
                                   (let ((__tmp18122
                                          (let ((__tmp18124
                                                 (reverse _bind11604_))
                                                (__tmp18123
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body11631_ '()))))
                                            (declare (not safe))
                                            (cons __tmp18124 __tmp18123))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp18122))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx1712217123_))
                              (let ((_e1161511639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx1712217123_))))
                                (let ((_tl1161311644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1161511639_)))
                                      (_hd1161411642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1161511639_))))
                                  (___kont1712417125_
                                   _tl1161311644_
                                   _hd1161411642_)))
                              (___kont1712617127_)))))))
                 (_generate-values-check11519_
                  (lambda (_check11595_ _body11596_)
                    (let ((__tmp18125
                           (let ((__tmp18127
                                  (let ()
                                    (declare (not safe))
                                    (cons _body11596_ '())))
                                 (__tmp18126 (reverse _check11595_)))
                             (declare (not safe))
                             (foldr1 cons __tmp18127 __tmp18126))))
                      (declare (not safe))
                      (cons 'begin __tmp18125))))
                 (_generate-values-post11520_
                  (lambda (_post11588_ _body11589_)
                    (let ((__tmp18128
                           (let ((__tmp18130
                                  (let ()
                                    (declare (not safe))
                                    (cons _body11589_ '())))
                                 (__tmp18129
                                  (map (lambda (_g1159011592_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g1159011592_)))
                                       (reverse _post11588_))))
                             (declare (not safe))
                             (foldr1 cons __tmp18130 __tmp18129))))
                      (declare (not safe))
                      (cons 'begin __tmp18128)))))
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
      (lambda _g18132_
        (let ((_g18131_ (let () (declare (not safe)) (##length _g18132_))))
          (cond ((let () (declare (not safe)) (##fx= _g18131_ 1))
                 (apply (lambda (_stx11825_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _stx11825_)))
                        _g18132_))
                ((let () (declare (not safe)) (##fx= _g18131_ 2))
                 (apply (lambda (_stx11829_ _compiled-body?11830_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _stx11829_
                             _compiled-body?11830_)))
                        _g18132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g18132_))))))
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
                                  (let ((__tmp18133
                                         (let ((__tmp18134
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body11365_ '()))))
                                           (declare (not safe))
                                           (cons _bind11364_ __tmp18134))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp18133)))))
                             (_K1135211501_
                              (lambda (_rest11370_ _hd-bind11371_)
                                (let* ((___stx1713617137_ _hd-bind11371_)
                                       (_g1137411399_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx1713617137_)))))
                                  (let ((___kont1713817139_
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
                                             (let ((__tmp18135
                                                    (let ((__tmp18136
                                                           (let ((__tmp18137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr11496_ '()))))
                     (declare (not safe))
                     (cons _eid11495_ __tmp18137))))
              (declare (not safe))
              (cons __tmp18136 _bind11347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp11344_
                                                _rest11370_
                                                __tmp18135)))))
                                        (___kont1714017141_
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
                                             (let ((__tmp18138
                                                    (let ((__tmp18139
                                                           (let ((__tmp18140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18141
                                 (let ((__tmp18142
                                        (let ((__tmp18143
                                               (let ((__tmp18146
                                                      (let ((__tmp18147
                                                             (let ((__tmp18148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr11448_ '()))))
                       (declare (not safe))
                       (cons _tmp11442_ __tmp18148))))
                (declare (not safe))
                (cons __tmp18147 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18144
                                                      (let ((__tmp18145
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp11442_ '()))))
                (declare (not safe))
                (cons _check-values11444_ __tmp18145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18146
                                                       __tmp18144))))
                                          (declare (not safe))
                                          (cons 'let __tmp18143))))
                                   (declare (not safe))
                                   (cons __tmp18142 '()))))
                            (declare (not safe))
                            (cons _vals11440_ __tmp18141))))
                     (declare (not safe))
                     (cons __tmp18140 _bind11347_))))
              (declare (not safe))
              (foldl1 cons __tmp18139 _refs11446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp11344_
                                                _rest11370_
                                                __tmp18138))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1713617137_))
                                        (let ((_e1138011456_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1713617137_))))
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
                            (___kont1713817139_ _hd1138511475_ _hd1138211467_)
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
                            (___kont1714017141_ _hd1139311415_ _hd1137911459_)
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
                    (___kont1714017141_ _hd1139311415_ _hd1137911459_)
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
                    (let* ((___stx1718017181_ _expr11168_)
                           (_g1117111185_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1718017181_)))))
                      (let ((___kont1718217183_
                             (lambda (_L11213_ _L11214_) '#t))
                            (___kont1718417185_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx1718017181_))
                            (let ((_e1117711197_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx1718017181_))))
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
                                                (___kont1718217183_
                                                 _tl1117811210_
                                                 _hd1117911208_)))
                                            (___kont1718417185_))
                                        (___kont1718417185_))
                                    (___kont1718417185_))))
                            (___kont1718417185_)))))))
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
                              (let ((__tmp18151
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id11009_)))
                                    (__tmp18149
                                     (let ((__tmp18150
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _expr11008_))))
                                       (declare (not safe))
                                       (cons __tmp18150 '()))))
                                (declare (not safe))
                                (cons __tmp18151 __tmp18149)))))
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
            (let ((__tmp18152
                   (let ()
                     (declare (not safe))
                     (cons _bind10952_ _body10986_))))
              (declare (not safe))
              (cons _form10945_ __tmp18152))))))
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
                                (let ((__tmp18157
                                       (let ((__tmp18158 (car _datum10907_)))
                                         (declare (not safe))
                                         (_generate110855_ __tmp18158)))
                                      (__tmp18155
                                       (let ((__tmp18156 (cdr _datum10907_)))
                                         (declare (not safe))
                                         (_generate110855_ __tmp18156))))
                                  (declare (not safe))
                                  (cons __tmp18157 __tmp18155))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum10907_))
                                    (let ((__tmp18153
                                           (let ((__tmp18154
                                                  (unbox _datum10907_)))
                                             (declare (not safe))
                                             (_generate110855_ __tmp18154))))
                                      (declare (not safe))
                                      (box __tmp18153))
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
                                           (let ((__tmp18159
                                                  (let ((__tmp18160
                                                         (let ((__tmp18161
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L10891_))))
                   (declare (not safe))
                   (_generate110855_ __tmp18161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18160 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp18159)))
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
                      (let* ((___stx1722717228_ _rator10600_)
                             (_g1060410656_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx1722717228_)))))
                        (let ((___kont1722917230_
                               (lambda (_L10780_ _L10781_ _L10782_ _L10783_)
                                 (if (fx= (length _rands10601_)
                                          (length (let ((__tmp18166
                                                         (lambda (_g1081910822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1082010824_)
                   (let ()
                     (declare (not safe))
                     (cons _g1081910822_ _g1082010824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp18166
                                                            '()
                                                            _L10782_))))
                                     (let* ((_id10827_ _L10783_)
                                            (_args10836_
                                             (let ((__tmp18162
                                                    (lambda (_g1082810831_
                                                             _g1082910833_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1082810831_
                                                              _g1082910833_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp18162
                                                       '()
                                                       _L10782_)))
                                            (_body10845_
                                             (let ((__tmp18163
                                                    (lambda (_g1083710840_
                                                             _g1083810842_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1083710840_
                                                              _g1083810842_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp18163
                                                       '()
                                                       _L10781_)))
                                            (_init10847_
                                             (map list
                                                  _args10836_
                                                  _rands10601_)))
                                       (let ((__tmp18164
                                              (let ((__tmp18165
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init10847_
                                                             _body10845_))))
                                                (declare (not safe))
                                                (cons _id10827_ __tmp18165))))
                                         (declare (not safe))
                                         (cons 'let __tmp18164)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx10371_)))))
                              (___kont1723517236_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator10600_ _rands10601_)))))
                          (let ((___match1729417295_
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
                                          ___splice1723117232_
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
                                                       (let ((__tmp18168
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd1063610740_ _arg1063810734_))))
                 (declare (not safe))
                 (_loop1063410729_ _lp-tl1063710742_ __tmp18168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg1063910745_
                                                          (reverse _arg1063810734_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl1062810721_))
                                                         (let ((___splice1723317234_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl1062810721_ '0))))
                   (let ((_tl1064210750_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1723317234_ '1)))
                         (_target1064010748_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1723317234_ '0))))
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
                                             (let ((__tmp18167
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd1064510764_
                                                            _body1064710758_))))
                                               (declare (not safe))
                                               (_loop1064310753_
                                                _lp-tl1064610766_
                                                __tmp18167))))
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
                             (___kont1722917230_
                              _L10780_
                              _L10781_
                              _L10782_
                              _L10783_)
                             (___kont1723517236_)))
                       (___kont1723517236_))))
               (___kont1723517236_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1723517236_))
                                               (___kont1723517236_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop1064310753_ _target1064010748_ '())))
                         (___kont1723517236_))))
                 (___kont1723517236_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop1063410729_
                                        _target1063110724_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx1722717228_))
                                (let ((_e1061210668_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx1722717228_))))
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
                        (let ((___splice1723117232_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _hd1062910719_ '0))))
                          (let ((_tl1063310726_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1723117232_ '1)))
                                (_target1063110724_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1723117232_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl1063310726_))
                                (___match1729417295_
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
                                 ___splice1723117232_
                                 _target1063110724_
                                 _tl1063310726_)
                                (___kont1723517236_))))
                        (___kont1723517236_))))
                (___kont1723517236_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1723517236_))
                                                (___kont1723517236_))))
                                        (___kont1723517236_))))
                                (___kont1723517236_))))
                        (___kont1723517236_))))
                (___kont1723517236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1723517236_))
                                            (___kont1723517236_))
                                        (___kont1723517236_))))
                                (___kont1723517236_)))))))))
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
                                           (let* ((___stx1734317344_ _L10411_)
                                                  (_g1042610438_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1734317344_)))))
                                             (let ((___kont1734517346_
                                                    (lambda ()
                                                      (let ((_f10468_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e _L10411_))))
                (if (let ((__tmp18182 (symbol->string _f10468_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp18182))
                    (let _lp10470_ ((_rest10473_ (reverse _L10410_))
                                    (_bind10475_ '())
                                    (_args10476_ '()))
                      (let* ((_rest1047710485_ _rest10473_)
                             (_else1047910493_
                              (lambda ()
                                (let ((__tmp18169
                                       (let ((__tmp18170
                                              (let ((__tmp18171
                                                     (let ((__tmp18172
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f10468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args10476_))))
               (declare (not safe))
               (cons __tmp18172 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp18171))))
                                         (declare (not safe))
                                         (cons _bind10475_ __tmp18170))))
                                  (declare (not safe))
                                  (cons 'let __tmp18169))))
                             (_K1048110579_
                              (lambda (_rest10496_ _e10497_)
                                (let* ((___stx1729717298_ _e10497_)
                                       (_g1050210520_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx1729717298_)))))
                                  (let ((___kont1729917300_
                                         (lambda ()
                                           (let ((__tmp18173
                                                  (let ((__tmp18174
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _e10497_))))
                                                    (declare (not safe))
                                                    (cons __tmp18174
                                                          _args10476_))))
                                             (declare (not safe))
                                             (_lp10470_
                                              _rest10496_
                                              _bind10475_
                                              __tmp18173))))
                                        (___kont1730117302_
                                         (lambda ()
                                           (let ((__tmp18175
                                                  (let ((__tmp18176
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _e10497_))))
                                                    (declare (not safe))
                                                    (cons __tmp18176
                                                          _args10476_))))
                                             (declare (not safe))
                                             (_lp10470_
                                              _rest10496_
                                              _bind10475_
                                              __tmp18175))))
                                        (___kont1730317304_
                                         (lambda ()
                                           (let ((_tmp10527_
                                                  (make-symbol
                                                   (gensym '__tmp))))
                                             (let ((__tmp18178
                                                    (let ((__tmp18179
                                                           (let ((__tmp18180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18181
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e _e10497_))))
                            (declare (not safe))
                            (cons __tmp18181 '()))))
                     (declare (not safe))
                     (cons _tmp10527_ __tmp18180))))
              (declare (not safe))
              (cons __tmp18179 _bind10475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp18177
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp10527_
                                                            _args10476_))))
                                               (declare (not safe))
                                               (_lp10470_
                                                _rest10496_
                                                __tmp18178
                                                __tmp18177))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx1729717298_))
                                        (let ((_e1050610558_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx1729717298_))))
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
                        (___kont1729917300_)
                        (___kont1730317304_))))
                (___kont1730317304_))
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
                            (___kont1730117302_)
                            (___kont1730317304_))))
                    (___kont1730317304_))
                (___kont1730317304_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1730317304_))))
                                        (___kont1730317304_)))))))
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
                                                   (___kont1734717348_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call10373_
                                                         _L10411_
                                                         _L10410_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx1734317344_))
                                                   (let ((_e1043010450_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx1734317344_))))
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
                                   (___kont1734517346_)
                                   (___kont1734717348_))))
                           (___kont1734717348_))
                       (___kont1734717348_))
                   (___kont1734717348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1734717348_))))))
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
        (let* ((___stx1741517416_ _stx10159_)
               (_g1016210182_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1741517416_)))))
          (let ((___kont1741717418_
                 (lambda (_L10226_ _L10227_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _stx10159_))
                       (let ((_f10245_
                              (let ((__tmp18183
                                     (let ((__tmp18185
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp18184
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10227_ '()))))
                                       (declare (not safe))
                                       (cons __tmp18185 __tmp18184))))
                                (declare (not safe))
                                (gxc#compile-e __tmp18183))))
                         (let _lp10247_ ((_rest10250_ (reverse _L10226_))
                                         (_bind10252_ '())
                                         (_args10253_ '()))
                           (let* ((_rest1025410262_ _rest10250_)
                                  (_else1025610270_
                                   (lambda ()
                                     (let ((__tmp18186
                                            (let ((__tmp18187
                                                   (let ((__tmp18188
                                                          (let ((__tmp18189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f10245_ _args10253_))))
                    (declare (not safe))
                    (cons __tmp18189 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp18188))))
                                              (declare (not safe))
                                              (cons _bind10252_ __tmp18187))))
                                       (declare (not safe))
                                       (cons 'let __tmp18186))))
                                  (_K1025810356_
                                   (lambda (_rest10273_ _e10274_)
                                     (let* ((___stx1736917370_ _e10274_)
                                            (_g1027910297_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx1736917370_)))))
                                       (let ((___kont1737117372_
                                              (lambda ()
                                                (let ((__tmp18190
                                                       (let ((__tmp18191
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e _e10274_))))
                 (declare (not safe))
                 (cons __tmp18191 _args10253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp10247_
                                                   _rest10273_
                                                   _bind10252_
                                                   __tmp18190))))
                                             (___kont1737317374_
                                              (lambda ()
                                                (let ((__tmp18192
                                                       (let ((__tmp18193
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e _e10274_))))
                 (declare (not safe))
                 (cons __tmp18193 _args10253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp10247_
                                                   _rest10273_
                                                   _bind10252_
                                                   __tmp18192))))
                                             (___kont1737517376_
                                              (lambda ()
                                                (let ((_tmp10304_
                                                       (make-symbol
                                                        (gensym '__tmp))))
                                                  (let ((__tmp18195
                                                         (let ((__tmp18196
                                                                (let ((__tmp18197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp18198
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _e10274_))))
                                 (declare (not safe))
                                 (cons __tmp18198 '()))))
                          (declare (not safe))
                          (cons _tmp10304_ __tmp18197))))
                   (declare (not safe))
                   (cons __tmp18196 _bind10252_)))
                (__tmp18194
                 (let () (declare (not safe)) (cons _tmp10304_ _args10253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp10247_
                                                     _rest10273_
                                                     __tmp18195
                                                     __tmp18194))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx1736917370_))
                                             (let ((_e1028310335_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx1736917370_))))
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
                             (___kont1737117372_)
                             (___kont1737517376_))))
                     (___kont1737517376_))
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
                                 (___kont1737317374_)
                                 (___kont1737517376_))))
                         (___kont1737517376_))
                     (___kont1737517376_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1737517376_))))
                                             (___kont1737517376_)))))))
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
                (___kont1741917420_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _stx10159_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx1741517416_))
                (let ((_e1016810194_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx1741517416_))))
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
                                                        (___kont1741717418_
                                                         _tl1016910207_
                                                         _hd1017610221_)
                                                        (___kont1741917420_))))
                                                (___kont1741917420_))
                                            (___kont1741917420_))
                                        (___kont1741917420_))))
                                (___kont1741917420_))))
                        (___kont1741917420_))))
                (___kont1741917420_))))))
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
                                        (let ((__tmp18199
                                               (let ((__tmp18200
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr10089_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test10090_
                                                       __tmp18200))))
                                          (declare (not safe))
                                          (cons 'and __tmp18199))))
                                     (_K1009510112_
                                      (lambda (_exprs10110_)
                                        (let ((__tmp18201
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test10090_
                                                       _exprs10110_))))
                                          (declare (not safe))
                                          (cons 'and __tmp18201)))))
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
                       (let ((__tmp18209
                              (let ((__tmp18210
                                     (let ((__tmp18215
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _L10036_)))
                                           (__tmp18211
                                            (let ((__tmp18214
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L10035_)))
                                                  (__tmp18212
                                                   (let ((__tmp18213
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _L10034_))))
                                                     (declare (not safe))
                                                     (cons __tmp18213 '()))))
                                              (declare (not safe))
                                              (cons __tmp18214 __tmp18212))))
                                       (declare (not safe))
                                       (cons __tmp18215 __tmp18211))))
                                (declare (not safe))
                                (cons 'if __tmp18210))))
                         (declare (not safe))
                         (_simplify9974_ __tmp18209))
                       (let ((__tmp18202
                              (let ((__tmp18207
                                     (let ((__tmp18208
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L10036_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp18208
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp18203
                                     (let ((__tmp18206
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e _L10035_)))
                                           (__tmp18204
                                            (let ((__tmp18205
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L10034_))))
                                              (declare (not safe))
                                              (cons __tmp18205 '()))))
                                       (declare (not safe))
                                       (cons __tmp18206 __tmp18204))))
                                (declare (not safe))
                                (cons __tmp18207 __tmp18203))))
                         (declare (not safe))
                         (cons 'if __tmp18202))))
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
                                                 (let ((__tmp18216
                                                        (let ((__tmp18219
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L9903_)))
                      (__tmp18217
                       (let ((__tmp18218
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _L9902_))))
                         (declare (not safe))
                         (cons __tmp18218 '()))))
                  (declare (not safe))
                  (cons __tmp18219 __tmp18217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp18216)))
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
                                                     (let ((__tmp18234
                                                            (let ((__tmp18237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _L9714_)))
                          (__tmp18235
                           (let ((__tmp18236
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _L9715_))))
                             (declare (not safe))
                             (cons __tmp18236 '()))))
                      (declare (not safe))
                      (cons __tmp18237 __tmp18235))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp18234))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9730_ ((_rest9733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18233
                                    (let ()
                                      (declare (not safe))
                                      (cons _L9714_ '()))))
                               (declare (not safe))
                               (cons _L9715_ __tmp18233)))
                            (_bind9735_ '())
                            (_args9736_ '()))
               (let* ((_rest97379745_ _rest9733_)
                      (_else97399753_
                       (lambda ()
                         (let ((__tmp18220
                                (let ((__tmp18221
                                       (let ((__tmp18222
                                              (let ((__tmp18223
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args9736_))))
                                                (declare (not safe))
                                                (cons __tmp18223 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp18222))))
                                  (declare (not safe))
                                  (cons _bind9735_ __tmp18221))))
                           (declare (not safe))
                           (cons 'let __tmp18220))))
                      (_K97419839_
                       (lambda (_rest9756_ _e9757_)
                         (let* ((___stx1745317454_ _e9757_)
                                (_g97629780_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx1745317454_)))))
                           (let ((___kont1745517456_
                                  (lambda ()
                                    (let ((__tmp18224
                                           (let ((__tmp18225
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9757_))))
                                             (declare (not safe))
                                             (cons __tmp18225 _args9736_))))
                                      (declare (not safe))
                                      (_lp9730_
                                       _rest9756_
                                       _bind9735_
                                       __tmp18224))))
                                 (___kont1745717458_
                                  (lambda ()
                                    (let ((__tmp18226
                                           (let ((__tmp18227
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9757_))))
                                             (declare (not safe))
                                             (cons __tmp18227 _args9736_))))
                                      (declare (not safe))
                                      (_lp9730_
                                       _rest9756_
                                       _bind9735_
                                       __tmp18226))))
                                 (___kont1745917460_
                                  (lambda ()
                                    (let ((_tmp9787_
                                           (make-symbol (gensym '__tmp))))
                                      (let ((__tmp18229
                                             (let ((__tmp18230
                                                    (let ((__tmp18231
                                                           (let ((__tmp18232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e9757_))))
                     (declare (not safe))
                     (cons __tmp18232 '()))))
              (declare (not safe))
              (cons _tmp9787_ __tmp18231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18230 _bind9735_)))
                                            (__tmp18228
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp9787_ _args9736_))))
                                        (declare (not safe))
                                        (_lp9730_
                                         _rest9756_
                                         __tmp18229
                                         __tmp18228))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx1745317454_))
                                 (let ((_e97669818_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx1745317454_))))
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
                                                         (___kont1745517456_)
                                                         (___kont1745917460_))))
                                                 (___kont1745917460_))
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
                     (___kont1745717458_)
                     (___kont1745917460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1745917460_))
                                                 (___kont1745917460_)))
                                         (___kont1745917460_))))
                                 (___kont1745917460_)))))))
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
                                                     (let ((__tmp18252
                                                            (let ((__tmp18255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e _L9526_)))
                          (__tmp18253
                           (let ((__tmp18254
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _L9527_))))
                             (declare (not safe))
                             (cons __tmp18254 '()))))
                      (declare (not safe))
                      (cons __tmp18255 __tmp18253))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp18252))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9542_ ((_rest9545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18251
                                    (let ()
                                      (declare (not safe))
                                      (cons _L9526_ '()))))
                               (declare (not safe))
                               (cons _L9527_ __tmp18251)))
                            (_bind9547_ '())
                            (_args9548_ '()))
               (let* ((_rest95499557_ _rest9545_)
                      (_else95519565_
                       (lambda ()
                         (let ((__tmp18238
                                (let ((__tmp18239
                                       (let ((__tmp18240
                                              (let ((__tmp18241
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args9548_))))
                                                (declare (not safe))
                                                (cons __tmp18241 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp18240))))
                                  (declare (not safe))
                                  (cons _bind9547_ __tmp18239))))
                           (declare (not safe))
                           (cons 'let __tmp18238))))
                      (_K95539651_
                       (lambda (_rest9568_ _e9569_)
                         (let* ((___stx1749917500_ _e9569_)
                                (_g95749592_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx1749917500_)))))
                           (let ((___kont1750117502_
                                  (lambda ()
                                    (let ((__tmp18242
                                           (let ((__tmp18243
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9569_))))
                                             (declare (not safe))
                                             (cons __tmp18243 _args9548_))))
                                      (declare (not safe))
                                      (_lp9542_
                                       _rest9568_
                                       _bind9547_
                                       __tmp18242))))
                                 (___kont1750317504_
                                  (lambda ()
                                    (let ((__tmp18244
                                           (let ((__tmp18245
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _e9569_))))
                                             (declare (not safe))
                                             (cons __tmp18245 _args9548_))))
                                      (declare (not safe))
                                      (_lp9542_
                                       _rest9568_
                                       _bind9547_
                                       __tmp18244))))
                                 (___kont1750517506_
                                  (lambda ()
                                    (let ((_tmp9599_
                                           (make-symbol (gensym '__tmp))))
                                      (let ((__tmp18247
                                             (let ((__tmp18248
                                                    (let ((__tmp18249
                                                           (let ((__tmp18250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e9569_))))
                     (declare (not safe))
                     (cons __tmp18250 '()))))
              (declare (not safe))
              (cons _tmp9599_ __tmp18249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18248 _bind9547_)))
                                            (__tmp18246
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp9599_ _args9548_))))
                                        (declare (not safe))
                                        (_lp9542_
                                         _rest9568_
                                         __tmp18247
                                         __tmp18246))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx1749917500_))
                                 (let ((_e95789630_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx1749917500_))))
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
                                                         (___kont1750117502_)
                                                         (___kont1750517506_))))
                                                 (___kont1750517506_))
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
                     (___kont1750317504_)
                     (___kont1750517506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1750517506_))
                                                 (___kont1750517506_)))
                                         (___kont1750517506_))))
                                 (___kont1750517506_)))))))
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
                                                         (let ((__tmp18256
                                                                (let ((__tmp18262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L9455_)))
                              (__tmp18257
                               (let ((__tmp18261
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _L9456_)))
                                     (__tmp18258
                                      (let ((__tmp18260
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _L9457_)))
                                            (__tmp18259
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp18260 __tmp18259))))
                                 (declare (not safe))
                                 (cons __tmp18261 __tmp18258))))
                          (declare (not safe))
                          (cons __tmp18262 __tmp18257))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp18256)))
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
                         (let ((__tmp18263
                                (let ((__tmp18271
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _L9369_)))
                                      (__tmp18264
                                       (let ((__tmp18270
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L9368_)))
                                             (__tmp18265
                                              (let ((__tmp18269
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e
                                                        _L9370_)))
                                                    (__tmp18266
                                                     (let ((__tmp18268
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L9371_)))
                                                           (__tmp18267
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp18268 __tmp18267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18269 __tmp18266))))
                                         (declare (not safe))
                                         (cons __tmp18270 __tmp18265))))
                                  (declare (not safe))
                                  (cons __tmp18271 __tmp18264))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp18263)))
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
                                                         (let ((__tmp18272
                                                                (let ((__tmp18278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e _L9273_)))
                              (__tmp18273
                               (let ((__tmp18277
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e _L9274_)))
                                     (__tmp18274
                                      (let ((__tmp18276
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e _L9275_)))
                                            (__tmp18275
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp18276 __tmp18275))))
                                 (declare (not safe))
                                 (cons __tmp18277 __tmp18274))))
                          (declare (not safe))
                          (cons __tmp18278 __tmp18273))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp18272)))
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
                         (let ((__tmp18279
                                (let ((__tmp18287
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e _L9187_)))
                                      (__tmp18280
                                       (let ((__tmp18286
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e _L9186_)))
                                             (__tmp18281
                                              (let ((__tmp18285
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e
                                                        _L9188_)))
                                                    (__tmp18282
                                                     (let ((__tmp18284
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e
                                                               _L9189_)))
                                                           (__tmp18283
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp18284 __tmp18283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp18285 __tmp18282))))
                                         (declare (not safe))
                                         (cons __tmp18286 __tmp18281))))
                                  (declare (not safe))
                                  (cons __tmp18287 __tmp18280))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp18279)))
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
                     (let ((__tmp18305
                            (let ((__tmp18311
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e _L8970_)))
                                  (__tmp18306
                                   (let ((__tmp18310
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e _L8971_)))
                                         (__tmp18307
                                          (let ((__tmp18309
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e _L8972_)))
                                                (__tmp18308
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp18309 __tmp18308))))
                                     (declare (not safe))
                                     (cons __tmp18310 __tmp18307))))
                              (declare (not safe))
                              (cons __tmp18311 __tmp18306))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp18305))
                     (let _lp8990_ ((_rest8993_
                                     (let ((__tmp18303
                                            (let ((__tmp18304
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L8970_ '()))))
                                              (declare (not safe))
                                              (cons _L8971_ __tmp18304))))
                                       (declare (not safe))
                                       (cons _L8972_ __tmp18303)))
                                    (_bind8995_ '())
                                    (_args8996_ '()))
                       (let* ((_rest89979005_ _rest8993_)
                              (_else89999013_
                               (lambda ()
                                 (let ((__tmp18288
                                        (let ((__tmp18289
                                               (let ((__tmp18290
                                                      (let ((__tmp18291
                                                             (let ((__tmp18292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18293
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp18293 _args8996_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp18292))))
                (declare (not safe))
                (cons __tmp18291 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp18290))))
                                          (declare (not safe))
                                          (cons _bind8995_ __tmp18289))))
                                   (declare (not safe))
                                   (cons 'let __tmp18288))))
                              (_K90019099_
                               (lambda (_rest9016_ _e9017_)
                                 (let* ((___stx1754517546_ _e9017_)
                                        (_g90229040_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1754517546_)))))
                                   (let ((___kont1754717548_
                                          (lambda ()
                                            (let ((__tmp18294
                                                   (let ((__tmp18295
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _e9017_))))
                                                     (declare (not safe))
                                                     (cons __tmp18295
                                                           _args8996_))))
                                              (declare (not safe))
                                              (_lp8990_
                                               _rest9016_
                                               _bind8995_
                                               __tmp18294))))
                                         (___kont1754917550_
                                          (lambda ()
                                            (let ((__tmp18296
                                                   (let ((__tmp18297
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e
                                                             _e9017_))))
                                                     (declare (not safe))
                                                     (cons __tmp18297
                                                           _args8996_))))
                                              (declare (not safe))
                                              (_lp8990_
                                               _rest9016_
                                               _bind8995_
                                               __tmp18296))))
                                         (___kont1755117552_
                                          (lambda ()
                                            (let ((_tmp9047_
                                                   (make-symbol
                                                    (gensym '__tmp))))
                                              (let ((__tmp18299
                                                     (let ((__tmp18300
                                                            (let ((__tmp18301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp18302
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e _e9017_))))
                             (declare (not safe))
                             (cons __tmp18302 '()))))
                      (declare (not safe))
                      (cons _tmp9047_ __tmp18301))))
               (declare (not safe))
               (cons __tmp18300 _bind8995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp18298
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp9047_
                                                             _args8996_))))
                                                (declare (not safe))
                                                (_lp8990_
                                                 _rest9016_
                                                 __tmp18299
                                                 __tmp18298))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx1754517546_))
                                         (let ((_e90269078_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx1754517546_))))
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
                         (___kont1754717548_)
                         (___kont1755117552_))))
                 (___kont1755117552_))
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
                             (___kont1754917550_)
                             (___kont1755117552_))))
                     (___kont1755117552_))
                 (___kont1755117552_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1755117552_))))
                                         (___kont1755117552_)))))))
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
                             (let ((__tmp18330
                                    (let ((__tmp18338
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e _L8763_)))
                                          (__tmp18331
                                           (let ((__tmp18337
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e _L8762_)))
                                                 (__tmp18332
                                                  (let ((__tmp18336
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _L8764_)))
                                                        (__tmp18333
                                                         (let ((__tmp18335
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e _L8765_)))
                       (__tmp18334
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp18335 __tmp18334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18336
                                                          __tmp18333))))
                                             (declare (not safe))
                                             (cons __tmp18337 __tmp18332))))
                                      (declare (not safe))
                                      (cons __tmp18338 __tmp18331))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp18330))
                             (let _lp8786_ ((_rest8789_
                                             (let ((__tmp18327
                                                    (let ((__tmp18328
                                                           (let ((__tmp18329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L8763_ '()))))
                     (declare (not safe))
                     (cons _L8762_ __tmp18329))))
              (declare (not safe))
              (cons _L8764_ __tmp18328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L8765_ __tmp18327)))
                                            (_bind8791_ '())
                                            (_args8792_ '()))
                               (let* ((_rest87938801_ _rest8789_)
                                      (_else87958809_
                                       (lambda ()
                                         (let ((__tmp18312
                                                (let ((__tmp18313
                                                       (let ((__tmp18314
                                                              (let ((__tmp18315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18316
                                    (let ((__tmp18317
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp18317 _args8792_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp18316))))
                        (declare (not safe))
                        (cons __tmp18315 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp18314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind8791_
                                                        __tmp18313))))
                                           (declare (not safe))
                                           (cons 'let __tmp18312))))
                                      (_K87978895_
                                       (lambda (_rest8812_ _e8813_)
                                         (let* ((___stx1759117592_ _e8813_)
                                                (_g88188836_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx1759117592_)))))
                                           (let ((___kont1759317594_
                                                  (lambda ()
                                                    (let ((__tmp18318
                                                           (let ((__tmp18319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8813_))))
                     (declare (not safe))
                     (cons __tmp18319 _args8792_))))
              (declare (not safe))
              (_lp8786_ _rest8812_ _bind8791_ __tmp18318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1759517596_
                                                  (lambda ()
                                                    (let ((__tmp18320
                                                           (let ((__tmp18321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e _e8813_))))
                     (declare (not safe))
                     (cons __tmp18321 _args8792_))))
              (declare (not safe))
              (_lp8786_ _rest8812_ _bind8791_ __tmp18320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1759717598_
                                                  (lambda ()
                                                    (let ((_tmp8843_
                                                           (make-symbol
                                                            (gensym '__tmp))))
                                                      (let ((__tmp18323
                                                             (let ((__tmp18324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18325
                                   (let ((__tmp18326
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e _e8813_))))
                                     (declare (not safe))
                                     (cons __tmp18326 '()))))
                              (declare (not safe))
                              (cons _tmp8843_ __tmp18325))))
                       (declare (not safe))
                       (cons __tmp18324 _bind8791_)))
                    (__tmp18322
                     (let ()
                       (declare (not safe))
                       (cons _tmp8843_ _args8792_))))
                (declare (not safe))
                (_lp8786_ _rest8812_ __tmp18323 __tmp18322))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx1759117592_))
                                                 (let ((_e88228874_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx1759117592_))))
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
                                 (___kont1759317594_)
                                 (___kont1759717598_))))
                         (___kont1759717598_))
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
                                     (___kont1759517596_)
                                     (___kont1759717598_))))
                             (___kont1759717598_))
                         (___kont1759717598_)))
                 (___kont1759717598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1759717598_)))))))
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
                                          (let ((__tmp18345
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in8672_ _r8651_))))
                                            (declare (not safe))
                                            (_lp8648_ _rest8671_ __tmp18345))
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
                                                (let ((__tmp18343
                                                       (let ((__tmp18344
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
                                                         (cons __tmp18344
                                                               _r8651_))))
                                                  (declare (not safe))
                                                  (_lp8648_
                                                   _rest8671_
                                                   __tmp18343))
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
                                                    (let ((__tmp18341
                                                           (let ((__tmp18342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in8672_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp18342 _r8651_))))
              (declare (not safe))
              (_lp8648_ _rest8671_ __tmp18341))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi8676_)
                                                        (let ((__tmp18339
                                                               (let ((__tmp18340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template8546_
                                 _in8672_
                                 _iphi8645_))))
                         (declare (not safe))
                         (foldl1 cons _r8651_ __tmp18340))))
                  (declare (not safe))
                  (_lp8648_ _rest8671_ __tmp18339))
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
                       (let ((__tmp18346
                              (let ()
                                (declare (not safe))
                                (cons _rt8637_ _loads8587_))))
                         (declare (not safe))
                         (_lp8584_ _rest8633_ __tmp18346))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest85908598_ _rest8586_)
                                            (_else85928610_
                                             (lambda ()
                                               (let ((__tmp18347
                                                      (map (lambda (_g86058607_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g86058607_))
                   (reverse _loads8587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp18347))))
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
                                                       (if (let ((__tmp18351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in8614_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp18351))
                   (let ((__tmp18350
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
                     (_K8589_ __tmp18350 _rest8613_))
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
                         (let ((__tmp18349
                                (##direct-structure-ref
                                 _in8614_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K8589_ __tmp18349 _rest8613_))
                         (if (fxpositive? _phi8616_)
                             (let* ((_deps8618_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template8546_
                                        _in8614_
                                        '0)))
                                    (__tmp18348
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons _rest8613_ _deps8618_))))
                               (declare (not safe))
                               (_lp8584_ __tmp18348 _loads8587_))
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
                     (let ((__tmp18352 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr8542_ __tmp18352)))))
                 (_generate-syntax-quote8363_
                  (lambda (_id8539_ _marks8540_)
                    (let ((__tmp18353
                           (let ((__tmp18354
                                  (let ((__tmp18358
                                         (let ((__tmp18359
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id8539_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp18359)))
                                        (__tmp18355
                                         (let ((__tmp18356
                                                (let ((__tmp18357
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks8540_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp18357))))
                                           (declare (not safe))
                                           (cons '#f __tmp18356))))
                                    (declare (not safe))
                                    (cons __tmp18358 __tmp18355))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp18354))))
                      (declare (not safe))
                      (cons '##structure __tmp18353))))
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
                      (let ((__tmp18360
                             (let ((__tmp18361
                                    (let ((__tmp18362
                                           (let ((__tmp18363
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote8363_
                                                     _qid8537_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp18363 '()))))
                                      (declare (not safe))
                                      (cons _gid8536_ __tmp18362))))
                               (declare (not safe))
                               (cons 'define __tmp18361))))
                        (declare (not safe))
                        (_add-lift!8362_ __tmp18360))
                      (let ((__tmp18364 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (table-set! __tmp18364 _stxq8534_ _gid8536_))
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
                      (let ((__tmp18365
                             (let ((__tmp18366
                                    (let ((__tmp18367
                                           (let ((__tmp18368
                                                  (let ((__tmp18369
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs8527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote8363_
                                                     _qid8531_
                                                     __tmp18369))))
                                             (declare (not safe))
                                             (cons __tmp18368 '()))))
                                      (declare (not safe))
                                      (cons _gid8529_ __tmp18367))))
                               (declare (not safe))
                               (cons 'define __tmp18366))))
                        (declare (not safe))
                        (_add-lift!8362_ __tmp18365))
                      (let ((__tmp18370 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (table-set! __tmp18370 _stxq8524_ _gid8529_))
                      _gid8529_)))
                 (_generate-mark8366_
                  (lambda (_mark8510_)
                    (let ((_$e8512_
                           (let ((__tmp18371 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (table-ref __tmp18371 _mark8510_ '#f))))
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
                                  (let ((__tmp18372
                                         (##structure-ref
                                          _mark8510_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp18372)))
                                 (_ctx-ref8521_
                                  (if (let ((__tmp18377
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx8519_ __tmp18377))
                                      '(gx#current-expander-context)
                                      (let ((__tmp18373
                                             (let ((__tmp18374
                                                    (let ((__tmp18375
                                                           (let ((__tmp18376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref8368_ _ctx8519_))))
                     (declare (not safe))
                     (cons __tmp18376 '()))))
              (declare (not safe))
              (cons 'quote __tmp18375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18374 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module __tmp18373)))))
                            (let ((__tmp18378 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (table-set! __tmp18378 _mark8510_ _gid8515_))
                            (let ((__tmp18379
                                   (let ((__tmp18380
                                          (let ((__tmp18381
                                                 (let ((__tmp18382
                                                        (let ((__tmp18383
                                                               (let ((__tmp18385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp18386
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr8517_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp18386)))
                             (__tmp18384
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref8521_ '()))))
                         (declare (not safe))
                         (cons __tmp18385 __tmp18384))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp18383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18382 '()))))
                                            (declare (not safe))
                                            (cons _gid8515_ __tmp18381))))
                                     (declare (not safe))
                                     (cons 'define __tmp18380))))
                              (declare (not safe))
                              (_add-lift!8362_ __tmp18379))
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
                                       (__tmp18387
                                        (map (lambda (_pair8483_)
                                               (let ((__tmp18390
                                                      (let ((__tmp18391
                                                             (car _pair8483_)))
                                                        (declare (not safe))
                                                        (_quote-e8459_
                                                         __tmp18391)))
                                                     (__tmp18388
                                                      (let ((__tmp18389
                                                             (cdr _pair8483_)))
                                                        (declare (not safe))
                                                        (_quote-e8459_
                                                         __tmp18389))))
                                                 (declare (not safe))
                                                 (cons __tmp18390 __tmp18388)))
                                             _subs8481_)))
                                  (declare (not safe))
                                  (cons _phi8477_ __tmp18387)))))
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
                    (if (let ((__tmp18398
                               (##structure-ref
                                _ctx8444_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp18398
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
                               (let ((__tmp18392
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin8369_ __tmp18392))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin8448_ _ctx-origin8447_))
                              (let ((_ref8450_
                                     (let ((__tmp18393
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested8370_ __tmp18393))))
                                (let _lp8452_ ((_ref8454_ (cdr _ref8450_))
                                               (_ctx-ref8455_
                                                (cdr _ctx-ref8446_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref8454_))
                                           (let ((__tmp18397 (car _ref8454_))
                                                 (__tmp18396
                                                  (car _ctx-ref8455_)))
                                             (declare (not safe))
                                             (eq? __tmp18397 __tmp18396)))
                                      (let ((__tmp18395 (cdr _ref8454_))
                                            (__tmp18394 (cdr _ctx-ref8455_)))
                                        (declare (not safe))
                                        (_lp8452_ __tmp18395 __tmp18394))
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
                            (let ((__tmp18400
                                   (let ((__tmp18401
                                          (car (##structure-ref
                                                _ctx8431_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp18401 _r8432_))))
                              (declare (not safe))
                              (_lp8429_ _super8434_ __tmp18400))
                            (let ((__tmp18399
                                   (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx8431_
                                     '1
                                     gx#expander-context::t
                                     '#f))))
                              (declare (not safe))
                              (cons __tmp18399 _r8432_))))))))
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
                                                      (let ((__tmp18402
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (table-ref
                                                         __tmp18402
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
                                                 (let ((__tmp18403
                                                        (let ((__tmp18406
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L8342_)))
                      (__tmp18404
                       (let ((__tmp18405
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _L8341_))))
                         (declare (not safe))
                         (cons __tmp18405 '()))))
                  (declare (not safe))
                  (cons __tmp18406 __tmp18404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp18403)))
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
                                               (let ((__tmp18407
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj8284_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp18407)))
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
                                     (let ((__tmp18408
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp18408 '1)))
                                    (_block8188_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        _state8151_
                                        _phi8186_)))
                                    (_compiled8191_
                                     (let ((__tmp18409
                                            (lambda ()
                                              (let ((__tmp18410
                                                     (let ((__tmp18411
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp18411
                                                             _L8176_))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp18410
                                                 _state8151_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp18409
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
                                     (let ((__tmp18412
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj8231_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp18412)))
                                   _L8217_)))
                      (if _block8188_
                          (let ((__tmp18413
                                 (let ((__tmp18414
                                        (let ((__tmp18415
                                               (let ((__tmp18419
                                                      (let ((__tmp18420
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp18420)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp18416
                                                      (let ((__tmp18417
                                                             (let ((__tmp18418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block8188_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp18418))))
                (declare (not safe))
                (cons __tmp18417 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18419
                                                       __tmp18416))))
                                          (declare (not safe))
                                          (cons '%#call __tmp18415))))
                                   (declare (not safe))
                                   (cons __tmp18414 _c-body8234_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp18413))
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
                                               (let ((__tmp18421
                                                      (lambda ()
                                                        (let ((__tmp18422
                                                               (##structure-ref
                                                                _ctx8135_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           __tmp18422
                                                           _state8082_)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp18421
                                                  gx#current-expander-context
                                                  _ctx8135_)))
                                              (_rt8140_
                                               (let ((__tmp18423
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __tmp18423
                                                  _ctx8135_
                                                  '#f)))
                                              (_loader8142_
                                               (if _rt8140_
                                                   (let ((__tmp18424
                                                          (let ((__tmp18425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp18429
                                (let ((__tmp18430
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp18430)))
                               (__tmp18426
                                (let ((__tmp18427
                                       (let ((__tmp18428
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt8140_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp18428))))
                                  (declare (not safe))
                                  (cons __tmp18427 '()))))
                           (declare (not safe))
                           (cons __tmp18429 __tmp18426))))
                    (declare (not safe))
                    (cons '%#call __tmp18425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18424 '()))
                                                   '()))
                                              (_modid8144_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L8120_))))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            _state8082_))
                                         (let ((__tmp18431
                                                (let ((__tmp18432
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code8138_
                                                               _loader8142_))))
                                                  (declare (not safe))
                                                  (cons _modid8144_
                                                        __tmp18432))))
                                           (declare (not safe))
                                           (cons '%#module __tmp18431)))))
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
                (let ((__tmp18436
                       (let ((__tmp18437
                              (car (##structure-ref
                                    _ctx8076_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp18437 _path8077_))))
                  (declare (not safe))
                  (cons '#f __tmp18436))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super8079_
                       'gx#module-context::t))
                    (let ((__tmp18434
                           (let ((__tmp18435
                                  (car (##structure-ref
                                        _ctx8076_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp18435 _path8077_))))
                      (declare (not safe))
                      (_lp8074_ _super8079_ __tmp18434))
                    (let ((__tmp18433
                           (make-symbol
                            '":"
                            (##structure-ref
                             _ctx8076_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (declare (not safe))
                      (cons __tmp18433 _path8077_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp8066_ ((_ctx8068_ (gx#current-expander-context)) (_r8069_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx8068_ 'gx#module-context::t))
              (let ((__tmp18439
                     (##structure-ref _ctx8068_ '3 gx#phi-context::t '#f))
                    (__tmp18438
                     (let () (declare (not safe)) (cons _ctx8068_ _r8069_))))
                (declare (not safe))
                (_lp8066_ __tmp18439 __tmp18438))
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
                               (let ((__tmp18440
                                      (let ((__tmp18444
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name8023_)))
                                            (__tmp18441
                                             (let ((__tmp18442
                                                    (let ((__tmp18443
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name8024_))))
                                                      (declare (not safe))
                                                      (cons __tmp18443 '()))))
                                               (declare (not safe))
                                               (cons _src-phi8025_
                                                     __tmp18442))))
                                        (declare (not safe))
                                        (cons __tmp18444 __tmp18441))))
                                 (declare (not safe))
                                 (cons _phi8022_ __tmp18440)))))
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
                     (let ((__tmp18445
                            (let ((__tmp18447
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path7840_ _ctx7997_)))
                                  (__tmp18446 (reverse _in7998_)))
                              (declare (not safe))
                              (cons __tmp18447 __tmp18446))))
                       (declare (not safe))
                       (cons 'spec: __tmp18445)))))
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
                                                               (let ((__tmp18448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in7841_
                                 _current-src7880_
                                 _current-in7881_))))
                         (declare (not safe))
                         (cons __tmp18448 _r7882_))
                       _r7882_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp18449
                                                   (reverse _r7899_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp18449))))
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
                     (let ((__tmp18465
                            (let ((__tmp18466
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec7839_ _in7905_))))
                              (declare (not safe))
                              (cons __tmp18466 _current-in7881_))))
                       (declare (not safe))
                       (_lp7877_
                        _rest7904_
                        _current-src7880_
                        __tmp18465
                        _r7882_))
                     (if _current-src7880_
                         (let ((__tmp18463
                                (let ((__tmp18464
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec7839_ _in7905_))))
                                  (declare (not safe))
                                  (cons __tmp18464 '())))
                               (__tmp18461
                                (let ((__tmp18462
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in7841_
                                          _current-src7880_
                                          _current-in7881_))))
                                  (declare (not safe))
                                  (cons __tmp18462 _r7882_))))
                           (declare (not safe))
                           (_lp7877_
                            _rest7904_
                            _src-ctx7920_
                            __tmp18463
                            __tmp18461))
                         (let ((__tmp18459
                                (let ((__tmp18460
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec7839_ _in7905_))))
                                  (declare (not safe))
                                  (cons __tmp18460 '()))))
                           (declare (not safe))
                           (_lp7877_
                            _rest7904_
                            _src-ctx7920_
                            __tmp18459
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
                               (let ((__tmp18454
                                      (let ()
                                        (declare (not safe))
                                        (_make-import-spec-in7841_
                                         _current-src7880_
                                         _current-in7881_))))
                                 (declare (not safe))
                                 (cons __tmp18454 _r7882_))
                               _r7882_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp18455
                                                            (let ((__tmp18456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi7933_))
                               _src-in7975_
                               (let ((__tmp18457
                                      (let ((__tmp18458
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in7975_ '()))))
                                        (declare (not safe))
                                        (cons _phi7933_ __tmp18458))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp18457)))))
                      (declare (not safe))
                      (cons __tmp18456 _r7977_))))
               (declare (not safe))
               (_lp7877_ _rest7904_ '#f '() __tmp18455)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in7905_
                                                          'gx#module-context::t))
                                                       (let* ((_r7980_ (if _current-src7880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp18450
                                          (let ()
                                            (declare (not safe))
                                            (_make-import-spec-in7841_
                                             _current-src7880_
                                             _current-in7881_))))
                                     (declare (not safe))
                                     (cons __tmp18450 _r7882_))
                                   _r7882_))
                      (__tmp18451
                       (let ((__tmp18452
                              (let ((__tmp18453
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path7840_ _in7905_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp18453))))
                         (declare (not safe))
                         (cons __tmp18452 _r7980_))))
                 (declare (not safe))
                 (_lp7877_ _rest7904_ '#f '() __tmp18451))
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
                                           (let ((__tmp18467
                                                  (reverse _r7688_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp18467))))
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
                                                      (let ((__tmp18468
                                                             (let ((__tmp18469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp18470
                                   (let ((__tmp18471
                                          (let ((__tmp18474
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key7795_)))
                                                (__tmp18472
                                                 (let ((__tmp18473
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name7793_))))
                                                   (declare (not safe))
                                                   (cons __tmp18473 '()))))
                                            (declare (not safe))
                                            (cons __tmp18474 __tmp18472))))
                                     (declare (not safe))
                                     (cons _phi7794_ __tmp18471))))
                              (declare (not safe))
                              (cons 'spec: __tmp18470))))
                       (declare (not safe))
                       (cons __tmp18469 _r7688_))))
                (declare (not safe))
                (_lp7685_ _rest7708_ __tmp18468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K77147777_
                                                    (lambda (_phi7731_
                                                             _src7732_)
                                                      (let* ((_out7772_
                                                              (if _src7732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18475
                                 (let ((__tmp18476
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
                                   (cons __tmp18476 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp18475))
                          '#t))
                     (_out7774_
                      (if (let () (declare (not safe)) (fxzero? _phi7731_))
                          _out7772_
                          (let ((__tmp18477
                                 (let ((__tmp18478
                                        (let ()
                                          (declare (not safe))
                                          (cons _out7772_ '()))))
                                   (declare (not safe))
                                   (cons _phi7731_ __tmp18478))))
                            (declare (not safe))
                            (cons 'phi: __tmp18477)))))
                (let ((__tmp18479
                       (let () (declare (not safe)) (cons _out7774_ _r7688_))))
                  (declare (not safe))
                  (_lp7685_ _rest7708_ __tmp18479))))))
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
                             (let ((__tmp18480
                                    (map gxc#generate-runtime-identifier
                                         _L7632_)))
                               (declare (not safe))
                               (cons '%#provide __tmp18480)))
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
                      (let ((__tmp18482
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id7601_)))
                            (__tmp18481
                             (let ()
                               (declare (not safe))
                               (cons _eid7604_ '()))))
                        (declare (not safe))
                        (cons __tmp18482 __tmp18481))))))
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
                                (let ((_g18483_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl74867520_
                                          '0))))
                                  (begin
                                    (let ((_g18484_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g18483_)
                                                 (##vector-length _g18483_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g18484_ 2)))
                                          (error "Context expects 2 values"
                                                 _g18484_)))
                                    (let ((_target74897523_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g18483_ 0)))
                                          (_tl74917525_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g18483_ 1))))
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
                                          (let ((__tmp18489
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd75047557_
                                                         _eid74967533_)))
                                                (__tmp18488
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd75017549_
                                                         _id74977535_))))
                                            (declare (not safe))
                                            (_loop74927528_
                                             _lp-tl74957543_
                                             __tmp18489
                                             __tmp18488))
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
                       (let ((__tmp18485
                              (map _generate17480_
                                   (let ((__tmp18486
                                          (lambda (_g75837586_ _g75847588_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g75837586_
                                                    _g75847588_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18486 '() _L7568_))
                                   (let ((__tmp18487
                                          (lambda (_g75907593_ _g75917595_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g75907593_
                                                    _g75917595_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18487 '() _L7567_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp18485)))
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
                      (let ((__tmp18490
                             (let ((__tmp18491
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid7474_ '()))))
                               (declare (not safe))
                               (cons _ident7475_ __tmp18491))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp18490)))))
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
                                                     (let* ((___stx1766817669_
                                                             _rest7338_)
                                                            (_g73447361_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          ___stx1766817669_)))))
               (let ((___kont1767017671_
                      (lambda (_L7424_)
                        (let ()
                          (declare (not safe))
                          (_lp7336_ _L7424_ _r7339_))))
                     (___kont1767217673_
                      (lambda (_L7397_ _L7398_)
                        (let ((__tmp18492
                               (let ((__tmp18493
                                      (let ()
                                        (declare (not safe))
                                        (_generate17270_ _L7398_))))
                                 (declare (not safe))
                                 (cons __tmp18493 _r7339_))))
                          (declare (not safe))
                          (_lp7336_ _L7397_ __tmp18492))))
                     (___kont1767417675_
                      (lambda (_L7373_)
                        (let ((__tmp18494
                               (let ((__tmp18495
                                      (let ((__tmp18496
                                             (let ()
                                               (declare (not safe))
                                               (_generate17270_ _L7373_))))
                                        (declare (not safe))
                                        (cons __tmp18496 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp18495 _r7339_))))
                          (declare (not safe))
                          (_generate*7271_ __tmp18494))))
                     (___kont1767617677_
                      (lambda ()
                        (let ((__tmp18497 (reverse _r7339_)))
                          (declare (not safe))
                          (_generate*7271_ __tmp18497)))))
                 (let ((_g73427384_
                        (lambda ()
                          (let ((_L7373_ ___stx1766817669_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L7373_))
                                (___kont1767417675_ _L7373_)
                                (___kont1767617677_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx1766817669_))
                       (let ((_e73497413_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx1766817669_))))
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
                                     (___kont1767017671_ _tl73477418_)
                                     (___kont1767217673_
                                      _tl73477418_
                                      _hd73487416_)))
                               (___kont1767217673_
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
                                                         (let ((__tmp18498
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp18498
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
                          (let ((__tmp18499
                                 (let ((__tmp18502
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp18500
                                        (let ((__tmp18501
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L7213_ '()))))
                                          (declare (not safe))
                                          (cons _L7248_ __tmp18501))))
                                   (declare (not safe))
                                   (cons __tmp18502 __tmp18500))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             _state7165_
                             _phi7231_
                             __tmp18499))))
                      _g72377246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g72357261_ _eid7229_))
                                                   (if _block7233_
                                                       (let ((__tmp18506
                                                              (let ((__tmp18512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp18513
                                    (let ((__tmp18514
                                           (let ((__tmp18515
                                                  (let ((__tmp18519
                                                         (let ((__tmp18520
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp18520)))
                (__tmp18516
                 (let ((__tmp18517
                        (let ((__tmp18518
                               (let ()
                                 (declare (not safe))
                                 (cons _block7233_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp18518))))
                   (declare (not safe))
                   (cons __tmp18517 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp18519
                                                          __tmp18516))))
                                             (declare (not safe))
                                             (cons '%#call __tmp18515))))
                                      (declare (not safe))
                                      (cons __tmp18514 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp18513)))
                            (__tmp18507
                             (let ((__tmp18508
                                    (let ((__tmp18509
                                           (let ((__tmp18511
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L7214_)))
                                                 (__tmp18510
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid7229_ '()))))
                                             (declare (not safe))
                                             (cons __tmp18511 __tmp18510))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp18509))))
                               (declare (not safe))
                               (cons __tmp18508 '()))))
                        (declare (not safe))
                        (cons __tmp18512 __tmp18507))))
                 (declare (not safe))
                 (cons '%#begin __tmp18506))
               (let ((__tmp18503
                      (let ((__tmp18505
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L7214_)))
                            (__tmp18504
                             (let ()
                               (declare (not safe))
                               (cons _eid7229_ '()))))
                        (declare (not safe))
                        (cons __tmp18505 __tmp18504))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp18503)))))
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
                                                 (let ((__tmp18521
                                                        (let ((__tmp18524
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L7146_)))
                      (__tmp18522
                       (let ((__tmp18523
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L7145_))))
                         (declare (not safe))
                         (cons __tmp18523 '()))))
                  (declare (not safe))
                  (cons __tmp18524 __tmp18522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp18521)))
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
        (let ((__tmp18525 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! _state7094_ __tmp18525 _stx7093_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _stx7093_ _state7094_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_stx7090_ _state7091_)
        (let ((__tmp18526 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! _state7091_ __tmp18526 _stx7090_))
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
    (define gxc#&meta-state-src
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#meta-state::t '0)))
    (define gxc#&meta-state-n
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#meta-state::t '1)))
    (define gxc#&meta-state-open
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#meta-state::t '2)))
    (define gxc#&meta-state-blocks
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#meta-state::t '3)))
    (define gxc#&meta-state-src-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#meta-state::t '0)))
    (define gxc#&meta-state-n-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#meta-state::t '1)))
    (define gxc#&meta-state-open-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#meta-state::t '2)))
    (define gxc#&meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#meta-state::t '3)))
    (define gxc#meta-state:::init!
      (lambda (_self7084_ _ctx7085_)
        (if (let ((__tmp18530
                   (let () (declare (not safe)) (##vector-length _self7084_))))
              (declare (not safe))
              (##fx< '4 __tmp18530))
            (begin
              (let ((__tmp18527
                     (let ((__tmp18528
                            (##structure-ref
                             _ctx7085_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp18528))))
                (declare (not safe))
                (##vector-set! _self7084_ '1 __tmp18527))
              (let () (declare (not safe)) (##vector-set! _self7084_ '2 '1))
              (let ((__tmp18529
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self7084_ '3 __tmp18529))
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
    (define gxc#&meta-state-block-ctx
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#meta-state-block::t '0)))
    (define gxc#&meta-state-block-phi
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#meta-state-block::t '1)))
    (define gxc#&meta-state-block-n
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#meta-state-block::t '2)))
    (define gxc#&meta-state-block-code
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#meta-state-block::t '3)))
    (define gxc#&meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#meta-state-block::t '0)))
    (define gxc#&meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#meta-state-block::t '1)))
    (define gxc#&meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#meta-state-block::t '2)))
    (define gxc#&meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#meta-state-block::t '3)))
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
                        (let ((__tmp18531
                               (let ((__tmp18532
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp18532
                                  _phi6919_
                                  _n6936_
                                  '()))))
                          (declare (not safe))
                          (table-set! _open6935_ _phi6919_ __tmp18531))
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
               (let ((__tmp18533
                      (##structure-ref _state6912_ '3 gxc#meta-state::t '#f)))
                 (declare (not safe))
                 (table-ref __tmp18533 _phi6913_ '#f))))
          (##structure-set!
           _block6916_
           (let ((__tmp18534
                  (##structure-ref
                   _block6916_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx6914_ __tmp18534))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state6907_)
        (##structure-set!
         _state6907_
         (let ((__tmp18537
                (lambda (_g18538_ _block6909_ _r6910_)
                  (let () (declare (not safe)) (cons _block6909_ _r6910_))))
               (__tmp18536
                (##structure-ref _state6907_ '4 gxc#meta-state::t '#f))
               (__tmp18535
                (##structure-ref _state6907_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp18537 __tmp18536 __tmp18535))
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
        (let ((__tmp18540
               (lambda (_block6861_ _r6862_)
                 (let* ((_block68636872_ _block6861_)
                        (_E68656876_
                         (lambda ()
                           (error '"No clause matching" _block68636872_)))
                        (_K68666884_
                         (lambda (_code6879_ _n6880_ _phi6881_ _ctx6882_)
                           (if (let () (declare (not safe)) (null? _code6879_))
                               _r6862_
                               (let ((__tmp18541
                                      (let ((__tmp18542
                                             (let ((__tmp18543
                                                    (let ((__tmp18544
                                                           (let ((__tmp18545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18546 (reverse _code6879_)))
                            (declare (not safe))
                            (cons '%#begin __tmp18546))))
                     (declare (not safe))
                     (cons __tmp18545 '()))))
              (declare (not safe))
              (cons _n6880_ __tmp18544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi6881_ __tmp18543))))
                                        (declare (not safe))
                                        (cons _ctx6882_ __tmp18542))))
                                 (declare (not safe))
                                 (cons __tmp18541 _r6862_))))))
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
              (__tmp18539
               (##structure-ref _state6859_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp18540 '() __tmp18539))))
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
                             (let ((__tmp18547
                                    (let ()
                                      (declare (not safe))
                                      (last _L6674_))))
                               (declare (not safe))
                               (gxc#compile-e __tmp18547)))
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
                              (let ((_g18548_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl64366462_
                                        '0))))
                                (begin
                                  (let ((_g18549_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g18548_)
                                               (##vector-length _g18548_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g18549_ 2)))
                                        (error "Context expects 2 values"
                                               _g18549_)))
                                  (let ((_target64396465_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g18548_ 0)))
                                        (_tl64416467_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g18548_ 1))))
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
                    (let ((__tmp18553
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd64446481_ _expr64466475_))))
                      (declare (not safe))
                      (_loop64426470_ _lp-tl64456483_ __tmp18553))))
                (let ((_expr64476486_ (reverse _expr64466475_)))
                  ((lambda (_L6489_)
                     (let ((__tmp18550
                            (let ((__tmp18551
                                   (let ((__tmp18552
                                          (lambda (_g65026505_ _g65036507_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g65026505_
                                                    _g65036507_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp18552 '() _L6489_))))
                              (declare (not safe))
                              (last __tmp18551))))
                       (declare (not safe))
                       (gxc#compile-e __tmp18550)))
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
        (let* ((___stx1769817699_ _stx6164_)
               (_g61676196_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1769817699_)))))
          (let ((___kont1770017701_
                 (lambda (_L6264_ _L6265_)
                   (length (let ((__tmp18554
                                  (lambda (_g62866289_ _g62876291_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g62866289_ _g62876291_)))))
                             (declare (not safe))
                             (foldr1 __tmp18554 '() _L6264_)))))
                (___kont1770417705_ (lambda () '#f)))
            (let ((___match1774317744_
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
                            ___splice1770217703_
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
                                         (let ((__tmp18555
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd61886256_
                                                        _rand61906250_))))
                                           (declare (not safe))
                                           (_loop61866245_
                                            _lp-tl61896258_
                                            __tmp18555))))
                                     (let ((_rand61916261_
                                            (reverse _rand61906250_)))
                                       (let ((_L6264_ _rand61916261_)
                                             (_L6265_ _hd61816235_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L6265_
                                                'values))
                                             (___kont1770017701_
                                              _L6264_
                                              _L6265_)
                                             (___kont1770417705_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop61866245_ _target61836240_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1769817699_))
                  (let ((_e61736208_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx1769817699_))))
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
                      (let ((___splice1770217703_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl61746221_ '0))))
                        (let ((_tl61856242_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1770217703_ '1)))
                              (_target61836240_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1770217703_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl61856242_))
                              (___match1774317744_
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
                               ___splice1770217703_
                               _target61836240_
                               _tl61856242_)
                              (___kont1770417705_))))
                      (___kont1770417705_))
                  (___kont1770417705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1770417705_))
                                              (___kont1770417705_))
                                          (___kont1770417705_))))
                                  (___kont1770417705_))))
                          (___kont1770417705_))))
                  (___kont1770417705_)))))))
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
