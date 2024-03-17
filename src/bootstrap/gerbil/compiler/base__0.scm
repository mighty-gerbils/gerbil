(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710694204)
  (begin
    (define gxc#current-compile-symbol-table (make-parameter '#f))
    (define gxc#current-compile-runtime-sections (make-parameter '#f))
    (define gxc#current-compile-runtime-names (make-parameter '#f))
    (define gxc#current-compile-output-dir (make-parameter '#f))
    (define gxc#current-compile-invoke-gsc (make-parameter '#f))
    (define gxc#current-compile-gsc-options (make-parameter '#f))
    (define gxc#current-compile-keep-scm (make-parameter '#f))
    (define gxc#current-compile-verbose (make-parameter '#f))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#symbol-table::t
      (let ((__tmp96527 (list))
            (__tmp96525
             (let ((__tmp96526
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96526 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp96527
         '(gensyms bindings)
         __tmp96525
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args96478_
        (apply make-instance gxc#symbol-table::t _$args96478_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_self96476_)
        (if (let ((__tmp96528
                   (let ()
                     (declare (not safe))
                     (##structure-length _self96476_))))
              (declare (not safe))
              (##fx< '2 __tmp96528))
            (begin
              (let ((__tmp96530
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp96529
                     (let ()
                       (declare (not safe))
                       (##structure-type _self96476_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self96476_
                 __tmp96530
                 '1
                 __tmp96529
                 '#f))
              (let ((__tmp96532
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp96531
                     (let ()
                       (declare (not safe))
                       (##structure-type _self96476_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self96476_
                 __tmp96532
                 '2
                 __tmp96531
                 '#f)))
            (let ((__tmp96533
                   (let ()
                     (declare (not safe))
                     (##vector-length _self96476_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self96476_
                     '2
                     __tmp96533)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message96345_ _stx96346_ . _details96347_)
        (let ((_ctx96352_
               (let ((_$e96349_ (gxc#current-compile-context)))
                 (if _$e96349_ _$e96349_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx96352_
                 _message96345_
                 _stx96346_
                 _details96347_))))
    (define gxc#verbose
      (lambda _args96342_
        (if (gxc#current-compile-verbose)
            (let ((__tmp96534 (lambda () (apply displayln _args96342_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp96534))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id96324_)
        (let* ((_str96326_
                (if (let () (declare (not safe)) (symbol? _id96324_))
                    (symbol->string _id96324_)
                    _id96324_))
               (_len96328_ (string-length _str96326_))
               (_res96330_ (make-string _len96328_)))
          (let _lp96333_ ((_i96335_ '0))
            (if (fx< _i96335_ _len96328_)
                (let* ((_char96337_ (string-ref _str96326_ _i96335_))
                       (_xchar96339_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char96337_))
                            '#\_
                            _char96337_)))
                  (string-set! _res96330_ _i96335_ _xchar96339_)
                  (let ((__tmp96535
                         (let () (declare (not safe)) (fx+ _i96335_ '1))))
                    (declare (not safe))
                    (_lp96333_ __tmp96535)))
                _res96330_)))))))
