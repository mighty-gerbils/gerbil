(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710617603)
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
      (let ((__tmp96575 (list))
            (__tmp96573
             (let ((__tmp96574
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96574 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp96575
         '(gensyms bindings)
         __tmp96573
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args96526_
        (apply make-instance gxc#symbol-table::t _$args96526_)))
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
      (lambda (_self96524_)
        (if (let ((__tmp96576
                   (let ()
                     (declare (not safe))
                     (##structure-length _self96524_))))
              (declare (not safe))
              (##fx< '2 __tmp96576))
            (begin
              (let ((__tmp96578
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp96577
                     (let ()
                       (declare (not safe))
                       (##structure-type _self96524_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self96524_
                 __tmp96578
                 '1
                 __tmp96577
                 '#f))
              (let ((__tmp96580
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp96579
                     (let ()
                       (declare (not safe))
                       (##structure-type _self96524_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self96524_
                 __tmp96580
                 '2
                 __tmp96579
                 '#f)))
            (let ((__tmp96581
                   (let ()
                     (declare (not safe))
                     (##vector-length _self96524_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self96524_
                     '2
                     __tmp96581)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message96393_ _stx96394_ . _details96395_)
        (let ((_ctx96400_
               (let ((_$e96397_ (gxc#current-compile-context)))
                 (if _$e96397_ _$e96397_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx96400_
                 _message96393_
                 _stx96394_
                 _details96395_))))
    (define gxc#verbose
      (lambda _args96390_
        (if (gxc#current-compile-verbose)
            (let ((__tmp96582 (lambda () (apply displayln _args96390_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp96582))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id96372_)
        (let* ((_str96374_
                (if (let () (declare (not safe)) (symbol? _id96372_))
                    (symbol->string _id96372_)
                    _id96372_))
               (_len96376_ (string-length _str96374_))
               (_res96378_ (make-string _len96376_)))
          (let _lp96381_ ((_i96383_ '0))
            (if (fx< _i96383_ _len96376_)
                (let* ((_char96385_ (string-ref _str96374_ _i96383_))
                       (_xchar96387_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char96385_))
                            '#\_
                            _char96385_)))
                  (string-set! _res96378_ _i96383_ _xchar96387_)
                  (let ((__tmp96583
                         (let () (declare (not safe)) (fx+ _i96383_ '1))))
                    (declare (not safe))
                    (_lp96381_ __tmp96583)))
                _res96378_)))))))
