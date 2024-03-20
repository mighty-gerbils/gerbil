(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710954837)
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
      (let ((__tmp99546 (list))
            (__tmp99544
             (let ((__tmp99545
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99545 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99546
         '(gensyms bindings)
         __tmp99544
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99497_
        (apply make-instance gxc#symbol-table::t _$args99497_)))
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
      (lambda (_self99495_)
        (if (let ((__tmp99552
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99495_))))
              (declare (not safe))
              (##fx< '2 __tmp99552))
            (begin
              (let ((__tmp99549
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99548
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99495_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99495_
                 __tmp99549
                 '1
                 __tmp99548
                 '#f))
              (let ((__tmp99551
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99550
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99495_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99495_
                 __tmp99551
                 '2
                 __tmp99550
                 '#f)))
            (let ((__tmp99547
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99495_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99495_
                     '2
                     __tmp99547)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99364_ _stx99365_ . _details99366_)
        (let ((_ctx99371_
               (let ((_$e99368_ (gxc#current-compile-context)))
                 (if _$e99368_ _$e99368_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99371_
                 _message99364_
                 _stx99365_
                 _details99366_))))
    (define gxc#verbose
      (lambda _args99361_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99553 (lambda () (apply displayln _args99361_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99553))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id99343_)
        (let* ((_str99345_
                (if (let () (declare (not safe)) (symbol? _id99343_))
                    (symbol->string _id99343_)
                    _id99343_))
               (_len99347_ (string-length _str99345_))
               (_res99349_ (make-string _len99347_)))
          (let _lp99352_ ((_i99354_ '0))
            (if (fx< _i99354_ _len99347_)
                (let* ((_char99356_ (string-ref _str99345_ _i99354_))
                       (_xchar99358_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char99356_))
                            '#\_
                            _char99356_)))
                  (string-set! _res99349_ _i99354_ _xchar99358_)
                  (let ((__tmp99554
                         (let () (declare (not safe)) (fx+ _i99354_ '1))))
                    (declare (not safe))
                    (_lp99352_ __tmp99554)))
                _res99349_)))))))
