(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1709111636)
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
      (let ((__tmp97821 (list))
            (__tmp97819
             (let ((__tmp97820
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97820 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp97821
         '(gensyms bindings)
         __tmp97819
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args97772_
        (apply make-instance gxc#symbol-table::t _$args97772_)))
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
      (lambda (_self97770_)
        (if (let ((__tmp97827
                   (let ()
                     (declare (not safe))
                     (##structure-length _self97770_))))
              (declare (not safe))
              (##fx< '2 __tmp97827))
            (begin
              (let ((__tmp97824
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97823
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97770_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97770_
                 __tmp97824
                 '1
                 __tmp97823
                 '#f))
              (let ((__tmp97826
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97825
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97770_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97770_
                 __tmp97826
                 '2
                 __tmp97825
                 '#f)))
            (let ((__tmp97822
                   (let ()
                     (declare (not safe))
                     (##vector-length _self97770_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97770_
                     '2
                     __tmp97822)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message97639_ _stx97640_ . _details97641_)
        (let ((_ctx97646_
               (let ((_$e97643_ (gxc#current-compile-context)))
                 (if _$e97643_ _$e97643_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx97646_
                 _message97639_
                 _stx97640_
                 _details97641_))))
    (define gxc#verbose
      (lambda _args97636_
        (if (gxc#current-compile-verbose)
            (let ((__tmp97828 (lambda () (apply displayln _args97636_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp97828))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id97618_)
        (let* ((_str97620_
                (if (let () (declare (not safe)) (symbol? _id97618_))
                    (symbol->string _id97618_)
                    _id97618_))
               (_len97622_ (string-length _str97620_))
               (_res97624_ (make-string _len97622_)))
          (let _lp97627_ ((_i97629_ '0))
            (if (fx< _i97629_ _len97622_)
                (let* ((_char97631_ (string-ref _str97620_ _i97629_))
                       (_xchar97633_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char97631_))
                            '#\_
                            _char97631_)))
                  (string-set! _res97624_ _i97629_ _xchar97633_)
                  (let ((__tmp97829
                         (let () (declare (not safe)) (fx+ _i97629_ '1))))
                    (declare (not safe))
                    (_lp97627_ __tmp97829)))
                _res97624_)))))))
