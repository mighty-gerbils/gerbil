(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710943026)
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
      (let ((__tmp99565 (list))
            (__tmp99563
             (let ((__tmp99564
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99564 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99565
         '(gensyms bindings)
         __tmp99563
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99516_
        (apply make-instance gxc#symbol-table::t _$args99516_)))
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
      (lambda (_self99514_)
        (if (let ((__tmp99571
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99514_))))
              (declare (not safe))
              (##fx< '2 __tmp99571))
            (begin
              (let ((__tmp99568
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99567
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99514_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99514_
                 __tmp99568
                 '1
                 __tmp99567
                 '#f))
              (let ((__tmp99570
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99569
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99514_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99514_
                 __tmp99570
                 '2
                 __tmp99569
                 '#f)))
            (let ((__tmp99566
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99514_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99514_
                     '2
                     __tmp99566)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99383_ _stx99384_ . _details99385_)
        (let ((_ctx99390_
               (let ((_$e99387_ (gxc#current-compile-context)))
                 (if _$e99387_ _$e99387_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99390_
                 _message99383_
                 _stx99384_
                 _details99385_))))
    (define gxc#verbose
      (lambda _args99380_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99572 (lambda () (apply displayln _args99380_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99572))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id99362_)
        (let* ((_str99364_
                (if (let () (declare (not safe)) (symbol? _id99362_))
                    (symbol->string _id99362_)
                    _id99362_))
               (_len99366_ (string-length _str99364_))
               (_res99368_ (make-string _len99366_)))
          (let _lp99371_ ((_i99373_ '0))
            (if (fx< _i99373_ _len99366_)
                (let* ((_char99375_ (string-ref _str99364_ _i99373_))
                       (_xchar99377_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char99375_))
                            '#\_
                            _char99375_)))
                  (string-set! _res99368_ _i99373_ _xchar99377_)
                  (let ((__tmp99573
                         (let () (declare (not safe)) (fx+ _i99373_ '1))))
                    (declare (not safe))
                    (_lp99371_ __tmp99573)))
                _res99368_)))))))
