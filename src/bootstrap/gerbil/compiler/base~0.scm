(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1711108655)
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
      (let ((__tmp99555 (list))
            (__tmp99553
             (let ((__tmp99554
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99554 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99555
         '(gensyms bindings)
         __tmp99553
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99506_
        (apply make-instance gxc#symbol-table::t _$args99506_)))
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
      (lambda (_self99504_)
        (if (let ((__tmp99561
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99504_))))
              (declare (not safe))
              (##fx< '2 __tmp99561))
            (begin
              (let ((__tmp99558
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99557
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99504_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99504_
                 __tmp99558
                 '1
                 __tmp99557
                 '#f))
              (let ((__tmp99560
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99559
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99504_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99504_
                 __tmp99560
                 '2
                 __tmp99559
                 '#f)))
            (let ((__tmp99556
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99504_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99504_
                     '2
                     __tmp99556)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99373_ _stx99374_ . _details99375_)
        (let ((_ctx99380_
               (let ((_$e99377_ (gxc#current-compile-context)))
                 (if _$e99377_ _$e99377_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99380_
                 _message99373_
                 _stx99374_
                 _details99375_))))
    (define gxc#verbose
      (lambda _args99370_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99562 (lambda () (apply displayln _args99370_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99562))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id99352_)
        (let* ((_str99354_
                (if (let () (declare (not safe)) (symbol? _id99352_))
                    (symbol->string _id99352_)
                    _id99352_))
               (_len99356_ (string-length _str99354_))
               (_res99358_ (make-string _len99356_)))
          (let _lp99361_ ((_i99363_ '0))
            (if (fx< _i99363_ _len99356_)
                (let* ((_char99365_ (string-ref _str99354_ _i99363_))
                       (_xchar99367_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char99365_))
                            '#\_
                            _char99365_)))
                  (string-set! _res99358_ _i99363_ _xchar99367_)
                  (let ((__tmp99563
                         (let () (declare (not safe)) (fx+ _i99363_ '1))))
                    (declare (not safe))
                    (_lp99361_ __tmp99563)))
                _res99358_)))))))
