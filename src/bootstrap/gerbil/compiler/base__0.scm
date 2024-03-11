(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710140930)
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
      (let ((__tmp97765 (list))
            (__tmp97763
             (let ((__tmp97764
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97764 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp97765
         '(gensyms bindings)
         __tmp97763
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args97716_
        (apply make-instance gxc#symbol-table::t _$args97716_)))
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
      (lambda (_self97714_)
        (if (let ((__tmp97771
                   (let ()
                     (declare (not safe))
                     (##structure-length _self97714_))))
              (declare (not safe))
              (##fx< '2 __tmp97771))
            (begin
              (let ((__tmp97768
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97767
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97714_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97714_
                 __tmp97768
                 '1
                 __tmp97767
                 '#f))
              (let ((__tmp97770
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97769
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97714_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97714_
                 __tmp97770
                 '2
                 __tmp97769
                 '#f)))
            (let ((__tmp97766
                   (let ()
                     (declare (not safe))
                     (##vector-length _self97714_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97714_
                     '2
                     __tmp97766)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message97583_ _stx97584_ . _details97585_)
        (let ((_ctx97590_
               (let ((_$e97587_ (gxc#current-compile-context)))
                 (if _$e97587_ _$e97587_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx97590_
                 _message97583_
                 _stx97584_
                 _details97585_))))
    (define gxc#verbose
      (lambda _args97580_
        (if (gxc#current-compile-verbose)
            (let ((__tmp97772 (lambda () (apply displayln _args97580_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp97772))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id97562_)
        (let* ((_str97564_
                (if (let () (declare (not safe)) (symbol? _id97562_))
                    (symbol->string _id97562_)
                    _id97562_))
               (_len97566_ (string-length _str97564_))
               (_res97568_ (make-string _len97566_)))
          (let _lp97571_ ((_i97573_ '0))
            (if (fx< _i97573_ _len97566_)
                (let* ((_char97575_ (string-ref _str97564_ _i97573_))
                       (_xchar97577_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char97575_))
                            '#\_
                            _char97575_)))
                  (string-set! _res97568_ _i97573_ _xchar97577_)
                  (let ((__tmp97773
                         (let () (declare (not safe)) (fx+ _i97573_ '1))))
                    (declare (not safe))
                    (_lp97571_ __tmp97773)))
                _res97568_)))))))
