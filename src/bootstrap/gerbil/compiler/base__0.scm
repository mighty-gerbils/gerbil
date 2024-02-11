(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707610215)
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
      (let ((__tmp192792
             (let ((__tmp192793
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp192793 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#symbol-table::t
         'symbol-table
         '#f
         '(gensyms bindings)
         __tmp192792
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args188277_
        (apply make-struct-instance gxc#symbol-table::t _$args188277_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_self188275_)
        (if (let ((__tmp192798
                   (let ()
                     (declare (not safe))
                     (##structure-length _self188275_))))
              (declare (not safe))
              (##fx< '2 __tmp192798))
            (begin
              (let ((__tmp192795
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192794
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188275_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188275_
                 __tmp192795
                 '1
                 __tmp192794
                 '#f))
              (let ((__tmp192797
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192796
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188275_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188275_
                 __tmp192797
                 '2
                 __tmp192796
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self188275_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self188275_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message188144_ _stx188145_ . _details188146_)
        (let ((_ctx188151_
               (let ((_$e188148_ (gxc#current-compile-context)))
                 (if _$e188148_ _$e188148_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx188151_
                 _message188144_
                 _stx188145_
                 _details188146_))))
    (define gxc#verbose
      (lambda _args188141_
        (if (gxc#current-compile-verbose)
            (let ((__tmp192799 (lambda () (apply displayln _args188141_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp192799))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id188123_)
        (let* ((_str188125_
                (if (let () (declare (not safe)) (symbol? _id188123_))
                    (symbol->string _id188123_)
                    _id188123_))
               (_len188127_ (string-length _str188125_))
               (_res188129_ (make-string _len188127_)))
          (let _lp188132_ ((_i188134_ '0))
            (if (fx< _i188134_ _len188127_)
                (let* ((_char188136_ (string-ref _str188125_ _i188134_))
                       (_xchar188138_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char188136_))
                            '#\_
                            _char188136_)))
                  (string-set! _res188129_ _i188134_ _xchar188138_)
                  (let ((__tmp192800
                         (let () (declare (not safe)) (fx+ _i188134_ '1))))
                    (declare (not safe))
                    (_lp188132_ __tmp192800)))
                _res188129_)))))))
