(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708352924)
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
      (let ((__tmp97169 (list))
            (__tmp97167
             (let ((__tmp97168
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97168 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp97169
         '(gensyms bindings)
         __tmp97167
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args97120_
        (apply make-instance gxc#symbol-table::t _$args97120_)))
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
      (lambda (_self97118_)
        (if (let ((__tmp97175
                   (let ()
                     (declare (not safe))
                     (##structure-length _self97118_))))
              (declare (not safe))
              (##fx< '2 __tmp97175))
            (begin
              (let ((__tmp97172
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97171
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97118_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97118_
                 __tmp97172
                 '1
                 __tmp97171
                 '#f))
              (let ((__tmp97174
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97173
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97118_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97118_
                 __tmp97174
                 '2
                 __tmp97173
                 '#f)))
            (let ((__tmp97170
                   (let ()
                     (declare (not safe))
                     (##vector-length _self97118_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97118_
                     '2
                     __tmp97170)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message96987_ _stx96988_ . _details96989_)
        (let ((_ctx96994_
               (let ((_$e96991_ (gxc#current-compile-context)))
                 (if _$e96991_ _$e96991_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx96994_
                 _message96987_
                 _stx96988_
                 _details96989_))))
    (define gxc#verbose
      (lambda _args96984_
        (if (gxc#current-compile-verbose)
            (let ((__tmp97176 (lambda () (apply displayln _args96984_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp97176))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id96966_)
        (let* ((_str96968_
                (if (let () (declare (not safe)) (symbol? _id96966_))
                    (symbol->string _id96966_)
                    _id96966_))
               (_len96970_ (string-length _str96968_))
               (_res96972_ (make-string _len96970_)))
          (let _lp96975_ ((_i96977_ '0))
            (if (fx< _i96977_ _len96970_)
                (let* ((_char96979_ (string-ref _str96968_ _i96977_))
                       (_xchar96981_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char96979_))
                            '#\_
                            _char96979_)))
                  (string-set! _res96972_ _i96977_ _xchar96981_)
                  (let ((__tmp97177
                         (let () (declare (not safe)) (fx+ _i96977_ '1))))
                    (declare (not safe))
                    (_lp96975_ __tmp97177)))
                _res96972_)))))))
