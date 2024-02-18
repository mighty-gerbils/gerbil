(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708280335)
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
      (let ((__tmp202747 (list))
            (__tmp202745
             (let ((__tmp202746
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp202746 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp202747
         '(gensyms bindings)
         __tmp202745
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args198631_
        (apply make-instance gxc#symbol-table::t _$args198631_)))
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
      (lambda (_self198629_)
        (if (let ((__tmp202752
                   (let ()
                     (declare (not safe))
                     (##structure-length _self198629_))))
              (declare (not safe))
              (##fx< '2 __tmp202752))
            (begin
              (let ((__tmp202749
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp202748
                     (let ()
                       (declare (not safe))
                       (##structure-type _self198629_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self198629_
                 __tmp202749
                 '1
                 __tmp202748
                 '#f))
              (let ((__tmp202751
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp202750
                     (let ()
                       (declare (not safe))
                       (##structure-type _self198629_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self198629_
                 __tmp202751
                 '2
                 __tmp202750
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self198629_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self198629_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message198498_ _stx198499_ . _details198500_)
        (let ((_ctx198505_
               (let ((_$e198502_ (gxc#current-compile-context)))
                 (if _$e198502_ _$e198502_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx198505_
                 _message198498_
                 _stx198499_
                 _details198500_))))
    (define gxc#verbose
      (lambda _args198495_
        (if (gxc#current-compile-verbose)
            (let ((__tmp202753 (lambda () (apply displayln _args198495_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp202753))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id198477_)
        (let* ((_str198479_
                (if (let () (declare (not safe)) (symbol? _id198477_))
                    (symbol->string _id198477_)
                    _id198477_))
               (_len198481_ (string-length _str198479_))
               (_res198483_ (make-string _len198481_)))
          (let _lp198486_ ((_i198488_ '0))
            (if (fx< _i198488_ _len198481_)
                (let* ((_char198490_ (string-ref _str198479_ _i198488_))
                       (_xchar198492_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char198490_))
                            '#\_
                            _char198490_)))
                  (string-set! _res198483_ _i198488_ _xchar198492_)
                  (let ((__tmp202754
                         (let () (declare (not safe)) (fx+ _i198488_ '1))))
                    (declare (not safe))
                    (_lp198486_ __tmp202754)))
                _res198483_)))))))
